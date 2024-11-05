/*---------------------------------------------------------------------------------------------------------*/
/*                                                                                                         */
/* SPDX-License-Identifier: Apache-2.0                                                                     */
/* Copyright(c) 2020 Nuvoton Technology Corp. All rights reserved.                                         */
/*                                                                                                         */
/*---------------------------------------------------------------------------------------------------------*/

/************************************************************************************************************/
/*  File Function: MS51 DEMO project                                                                        */
/************************************************************************************************************/

#include "ms51_16k_sdcc.h"
#include "stdbool.h"

/*********************************
 * CONSTANTS
 *********************************/

/*
 * COMPILE OPTIONS
 */
#define REAL_BOARD
//#define ENABLE_LOG
// 전시회 용 밝기
#define INTERNATIONAL_MODE
//#define GERMAN_MODE

/*
 * Pin numbers
 */
#define BUTTON_PIN P02
#define BUTTON_INPUT_MODE P02_INPUT_MODE
#define CLR_BUTTON_PIN CLR_BIT2

#define	BUTTON_INITIALIZE_EDGE_TRIGGER PICON = 0x00; PICON |= 0x10; PINEN |= 0x04; PIPEN |= 0x04;

#define ENABLE_ADC_LED1 ENABLE_ADC_CH6
#define ENABLE_ADC_LED2 ENABLE_ADC_CH5

#define NTC_PIN P06
#define NTC_INPUT_MODE P06_INPUT_MODE

#define ENABLE_ADC_NTC ENABLE_ADC_CH3

// 실보드와 테스트보드는 uart out과  ntc en을 공유하고 있음
#ifdef REAL_BOARD
#	define NTC_EN_PUSHPULL_MODE P16_PUSHPULL_MODE
#   define NTC_EN_PIN P16
#endif

/*
 * Physical values
 */

// 제어 루프 주기
#define PERIOD_MIN 100
#define PERIOD_MULT 10
#define PERIOD_UNIT (PERIOD_MULT * PERIOD_MIN)

// 버튼 눌림 길이 (단위 제어 루프 주기)
#define LONG_PRESS (4000 / PERIOD_MULT)
#define LONGER_PRESS (50000 / PERIOD_MULT)
#define LONGEST_PRESS (100000 / PERIOD_MULT)

#if 0
# define AMP_0_4 33
# define AMP_0_5 40
# define AMP_0_8 75
# define AMP_1_0 85     /* 0.88 ~ 0.95 A  240717 80'C */
# define AMP_1_2 105
# define AMP_1_5 130
#else
# define AMP_0_3 27
# define AMP_0_4 36
# define AMP_0_5 45
# define AMP_0_6 54
# define AMP_0_8 72
# define AMP_1_0 90     /* 0.88 ~ 0.95 A  240717 80'C */
# define AMP_1_2 108
# define AMP_1_5 135
#endif


//#define MAX_TEMP 3350

//#define ABS_MAX_TEMP 3600

#define MAX_TEMP 3200

#define ABS_MAX_TEMP 3350

/*
 * LED 번호
 */
#define NUM_LEDS 2

#define LED1_IDX 0
#define LED2_IDX 1

/*
 * MACROS
 */

#ifdef ENABLE_LOG
#	define LS_LOG(c) uart_log(c)
#	define LS_LOGN(n) uart_logn(n)
#else
#	define LS_LOG(c)
#	define LS_LOGN(c)
#endif

/*
 * 제어 관련 상수
 */

// PWM은 0에서 255까지 값을 조절한다.
#define MAX_PWM 255

#define MIN_PWM_ON 60

#define MAX_SAMPLE_COUNT 150
#define FLASHING_ON_COUNT 135

#define MAX_UART_COUNTER (50000 / PERIOD_MULT)
#define MAX_UART_INIT_COUNTER (5000 / PERIOD_MULT)


#define AMP_MARGIN 2
/*
 * LIGHT Mode 관련 상수
 */

#define LIGHT_OFF 0
#define LIGHT_MODE_MAX 9

/*
 * LIGHT CONTROL MODE
 */
#define MODE_STABLE        0
#define MODE_CHANGING_OFF  1
#define MODE_CHANGING_UP   2
#define MODE_CHANGING_DOWN 3


/**************************************
 *  전역변수
 **************************************/
uint8_t light_mode = LIGHT_OFF;
bool is_uart_mode = false;

/*
 * PWM lock 관련 변수들
 */

const uint8_t max_amp[LIGHT_MODE_MAX + 1][NUM_LEDS] = {
		{0, 0}, // OFF
		{0, AMP_1_5}, // i1
		{AMP_0_6, AMP_1_0}, // i2
		{AMP_1_0, 0}, // i3
		{AMP_0_6, 0}, // i4
		{0, 0}, // i5 없음
		{0, AMP_0_5}, // i6
		{0, AMP_1_5}, // s1 (7)
		{0, AMP_0_5}, // s2 (8)
		{AMP_0_5, 0}, // s3 (9)
};

const uint8_t min_amp[NUM_LEDS] = {AMP_0_5, AMP_0_5};

const uint8_t flashing[LIGHT_MODE_MAX + 1] = {
		0, 0, 0, 1, 1, 0, 1, 0, 0, 0
};

const uint8_t temp_controlling[LIGHT_MODE_MAX + 1] = {
		0, 1, 1, 0, 0, 0, 0, 1, 0, 1
};

bool flashing_on = true;
uint16_t flashing_count = 0;

// next_mode는 각 모드의 다음 모드를 정한다. 만일 다음 mode가 0이면 uart에서도 금지되며, 0보다 크면 uart에서도 허가된다.
// 만일 uart에서만 허가된 모드라면 다음모드를 스위치의 첫 모드로 둔다.
#ifdef GERMAN_MODE
const uint8_t next_mode[LIGHT_MODE_MAX + 1] = { 7, 0, 0, 0, 0, 0, 0, 8, 7, 0};
#elif (defined GERMAN_TEST_MODE)
const uint8_t next_mode[LIGHT_MODE_MAX + 1] = { 7, 0, 0, 0, 0, 0, 0, 8, 9, 7};
#elif (defined INTERNATIONAL_MODE)
const uint8_t next_mode[LIGHT_MODE_MAX + 1] = { 1, 8, 1, 1, 1, 0, 9, 1, 6, 2};
#else
#error MODE MUST BE DEFINED
#endif


uint16_t pwm[NUM_LEDS] = {0, 0};
int8_t light_control_mode[NUM_LEDS] = {MODE_STABLE, MODE_STABLE};
uint8_t sample_count = 0;
uint32_t acc_amp[NUM_LEDS] = {0, 0};
uint32_t acc_temp = 0;
uint16_t cur_amp[NUM_LEDS] = {0, 0};
uint16_t cur_temp = 0;
uint8_t good_amp_count[NUM_LEDS] = {0, 0};

/*********************
 * PROGRAM CODE
 *********************/

/*
 * Log
 */

#ifdef ENABLE_LOG
void uart_log(char c)
{
	UART_Send_Data(UART1,c);
	Timer0_Delay(24000000, 10, 10);

}

void uart_logn(uint32_t n)
{
	if( n == 0 ) {
		uart_log('0');
		return;
	}

	uint32_t e = 10;

	while( e <= n ) e *= 10;

	while( e > 1 ) {
		e /= 10;
		uint32_t res = n / e;
		uart_log(res + '0');
		n = n % e;
	}
}


// log를 위해서 UART1을 open
void log_init(void)
{
    P16_QUASI_MODE;
    if( !is_uart_mode ) {
    	UART_Open(24000000,UART1_Timer3,9600);
    }
}

#endif

/*
 * Timer (퍼온 코드)
 */

void Timer0_Delay(unsigned long u32SYSCLK, unsigned int u16CNT, unsigned int u16DLYUnit)
{
      unsigned char TL0TMP, TH0TMP;

      TIMER0_FSYS_DIV12;                                  //T0M=0, Timer0 Clock = Fsys/12
      ENABLE_TIMER0_MODE1;                                   //Timer0 is 16-bit mode
      TL0TMP = LOBYTE(65535-((u32SYSCLK/1000000)*u16DLYUnit/12));
      TH0TMP = HIBYTE(65535-((u32SYSCLK/1000000)*u16DLYUnit/12));

    while (u16CNT != 0)
    {
      TL0=TL0TMP;
      TH0=TH0TMP;
      set_TCON_TR0;                                    //Start Timer0
      while (!TF0);                       //Check Timer0 Time-Out Flag
      clr_TCON_TF0;
      clr_TCON_TR0;                       //Stop Timer0
      u16CNT --;
    }
//    clr_TCON_TR0;                                     //Stop Timer0
}


/*
 * UART
 */

// UART 버퍼는 8개짜리 rotation buffer를 사용

#define UART_BUFFER_LENGTH 16
uint8_t uart1_next_idx = 0;
uint8_t uart1_read_idx = 0;
uint8_t uart1_rx_buffer[UART_BUFFER_LENGTH];

int8_t uart_flag = 0;

// UART Interrupt handler
// 한글자가 들어올 때마다 인터럽트가 들어온다. 이를 uart_rx_buffer에 fifo 형식으로 담는다.
void SerialPort1_ISR(void) __interrupt (15)
{
	 PUSH_SFRS;

    if (RI_1)
    {
        uart1_rx_buffer[uart1_next_idx] = SBUF_1;
        uart1_next_idx = (uart1_next_idx + 1) % UART_BUFFER_LENGTH;
        clr_SCON_1_RI_1;                             /* clear reception flag for next reception */
    }

    if (TI_1 )
    {
        clr_SCON_1_TI_1;                             // if emission occur

    }

    POP_SFRS;
}

// 입력을 위해서 UART1을 open
// UART 인터럽트를 연다. 이 함수를 부를 때는 버튼 인터럽트는 disable해야 한다.
void uart_interrupt_init(void)
{
    UART_Open(24000000,UART1_Timer3,9600);

    ENABLE_UART1_INTERRUPT;
}


/*
 * Button
 */

uint32_t button_pressed = 0;
uint32_t button_unpressed = 0;

// Pin interrupt subroutine
// 버튼 인터럽트 처리 루틴
// button_pressed를 1로 만든다.
void PinInterrupt_ISR(void) __interrupt (7)
{
	PUSH_SFRS;

	if( !button_pressed ) {
		button_pressed = 1;
	}

	PIF &= CLR_BUTTON_PIN;

	POP_SFRS;
}

// 버튼 초기화 루틴
// 이 루틴을 부를 때는 UART는 disable 상태에 두어야 한다.
void button_interrupt_init(void)
{
	/* Interrupt 최적화. */
	BUTTON_INPUT_MODE;

	BUTTON_PIN = 1;

    BUTTON_INITIALIZE_EDGE_TRIGGER;
    ENABLE_PIN_INTERRUPT;
}

void enable_ntc( void )
{
#ifdef REAL_BOARD
	NTC_EN_PUSHPULL_MODE;
	NTC_EN_PIN = 0;
#endif
}

void disable_ntc( void )
{
#ifdef REAL_BOARD
	NTC_EN_PUSHPULL_MODE;
	NTC_EN_PIN = 1;
#endif
}

void init_sample( void )
{
	sample_count = 0;
	acc_temp = 0;

	for( int i = 0; i < NUM_LEDS; i++ ) {
		acc_amp[i] = 0;
	}

	flashing_on = true;
}

// 버튼과 UART를 제외한 다른 peripheral들을 초기화 한다.
// 버튼과 UART는 상황에 맞게 별도로 초기화 해야 한다.
void init_peripherals_but_button_n_uart(void)
{
    ENABLE_GLOBAL_INTERRUPT;

    /* ADC Init */
    ADCCON1 |= 0X30;  // ADC clock src = Fsys / 8
    ADCCON2 |= 0x0E;  // ADC sample time = 32 (max)

    NTC_INPUT_MODE;

    /* PWM Init */

	clr_CKCON_PWMCKS; // PWM in FSYS freq.
	PWM0_CLOCK_DIV_1; // PWM div = 1

	ENABLE_PWM0_CH4_P01_OUTPUT; // LED2
	P01_PUSHPULL_MODE;

	ENABLE_PWM0_CH2_P05_OUTPUT; // LED1/3
	P05_PUSHPULL_MODE;

    clr_PWMCON0_PWMRUN;
	set_SFRS_SFRPAGE;

	PWMPH = 0;
	PWMPL = MAX_PWM; // 255 bit PWM

	PWM2L = 0;
	PWM2H = 0;
	PWM4L = 0;
	PWM4H = 0;

	clr_SFRS_SFRPAGE;
	set_PWMCON0_PWMRUN;

	light_control_mode[0] = MODE_STABLE;
	light_control_mode[1] = MODE_STABLE;

	enable_ntc();

	init_sample();
	flashing_count = 0;
}

void sample_amps( void )
{
	// LED1
	ENABLE_ADC_LED1;

	clr_ADCCON0_ADCF;
	set_ADCCON0_ADCS;

	while( ADCF == 0 );
	cur_amp[LED1_IDX] = (((uint16_t)ADCRH) << 4 ) | (ADCRL & 0xF);

	DISABLE_ADC;

	// LED2
	ENABLE_ADC_LED2;

	clr_ADCCON0_ADCF;
	set_ADCCON0_ADCS;

	while( ADCF == 0 );
	cur_amp[LED2_IDX] = (((uint16_t)ADCRH) << 4 ) | (ADCRL & 0xF);

	DISABLE_ADC;
}

void sample_temperature( void )
{
	// Temperature
	ENABLE_ADC_NTC;

	clr_ADCCON0_ADCF;
	set_ADCCON0_ADCS;

	while( ADCF == 0 );
	acc_temp += (((uint16_t)ADCRH) << 4 ) | (ADCRL & 0xF);

	DISABLE_ADC;

}

int8_t has_high_beam( int8_t mode )
{
	return (max_amp[mode][0] > 0);
}

uint16_t avg_amp( uint8_t idx ) {
	if( sample_count > 0 ) {
		return acc_amp[idx] / sample_count;
	} else {
		return cur_amp[idx];
	}
}

uint8_t target_amp( uint8_t mode, uint8_t idx ) {
	if( temp_controlling[mode] && cur_temp > MAX_TEMP ) {
		if( cur_temp > ABS_MAX_TEMP ) {
			return max_amp[mode][idx] >> 1;
		} else {
			uint32_t m = max_amp[mode][idx];
			uint32_t a = m * (ABS_MAX_TEMP - cur_temp) / (ABS_MAX_TEMP - MAX_TEMP);
			return (m >> 1) + (a >> 2) + (a >> 4);
		}
	} else {
		return max_amp[mode][idx];
	}
}

uint32_t uart_counter = 0;


#define UART_INIT 0
#define UART_POWER 1
#define UART_GERMAN 2
#define UART_INTL 3
#define UART_DONE 4
uint8_t uart_rx_state = UART_INIT;
uint8_t lamp_state = 0;

void changeMode(uint8_t new_mode)
{
	if( new_mode == light_mode ) return;
	if( new_mode > LIGHT_MODE_MAX ) return;
	if( next_mode[new_mode] == 0 ) return;

	for( int i = 0; i < NUM_LEDS; i++ ) {
		int16_t target = target_amp(new_mode, i);
		if( target == 0 && pwm[i] > 0 ) { // 켜져있는 상태에서 끄고자할 때
			light_control_mode[i] = MODE_CHANGING_OFF;
		} else if( target > avg_amp(i) ) {
			light_control_mode[i] = MODE_CHANGING_UP;
		} else if( target < avg_amp(i) ) {
			light_control_mode[i] = MODE_CHANGING_DOWN;
		}

	}

	/* initialize new mode */
	init_sample();
	for( int i = 0; i < NUM_LEDS; i++ ) {
		good_amp_count[i] = 0;
	}
	/* 불이 켜져 있는 상태라면 불이 꺼진상태에서 켜야하는 LED는 최소한의 전력은 넣어준다. */
	if( light_mode != LIGHT_OFF && new_mode != LIGHT_OFF ) {
		for( int i = 0; i < NUM_LEDS; i++ ) {
			if( max_amp[light_mode][i] == 0 && max_amp[new_mode][i] > 0 ) {
				pwm[i] = MIN_PWM_ON;
			}
		}
	}
	light_mode = new_mode;

	LS_LOG('C');
	LS_LOGN(light_mode);
}

/**
 * 버튼을 짧게 눌렀을 때, 다음 모드로 세팅하는 함수
 */
void toNextMode(void)
{
	changeMode(next_mode[light_mode]);
}


bool process_uart(void)
{
	if( uart_flag > 0) {
		uart_flag = -1;
		LS_LOG('!');
	}
	while( uart1_next_idx != uart1_read_idx ) {
		uint8_t ch = uart1_rx_buffer[uart1_read_idx];
		uart1_read_idx = (uart1_read_idx + 1) % UART_BUFFER_LENGTH;
		uart_counter = 0;

		LS_LOG(ch);
		switch( ch ) {
		case '\n':
			uart_rx_state = UART_INIT;
			LS_LOG('a' + light_mode);
			break;
		case 'a':
			uart_rx_state = UART_POWER;
			break;
		case 'i':
			uart_rx_state = UART_INTL;
			break;
		case 's':
			uart_rx_state = UART_GERMAN;
			break;
		case 'u':
			is_uart_mode = true;
			return true;
		case '0':
			if( uart_rx_state == UART_POWER )
				changeMode(next_mode[LIGHT_OFF]);
			break;
		case '9':
			if( uart_rx_state == UART_POWER )
				changeMode(LIGHT_OFF);
			break;
		case '1':
		case '2':
		case '3':
		case '4':
		case '5':
		case '6':
			lamp_state = UART_INIT;
			switch( uart_rx_state ) {
			case UART_INTL:
				changeMode(ch - '0');
				break;
			case UART_GERMAN:
				if(ch < '4') {
					changeMode(ch - '0' + 6);
				}
				break;
			}
		}
	}

	return false;
}

void process_button(void)
{
	if( BUTTON_PIN == 0 ) {
		LS_LOG('B');
		button_pressed ++;
		button_unpressed = 0;

		if( button_pressed == LONG_PRESS ) { // 길게 눌려졌다면
			LS_LOG('l');
			if( light_mode != LIGHT_OFF ) { // 전원 버튼의 역할을 한다.
				changeMode(LIGHT_OFF);
			} else {
				changeMode(next_mode[LIGHT_OFF]);
			}
		}
	} else if( button_pressed ) {
		LS_LOG('U');
		button_unpressed ++;
		if( button_unpressed > 1 ) { // 두번이상 안눌려졌다고 판단했는데
			if( button_pressed < LONG_PRESS ) { // 짧게 눌렀던 상태라면 다음상태로
				if( light_mode > 0 ) {
					LS_LOG('N');
					LS_LOGN(light_mode);
					toNextMode();
				}
			} else {
				LS_LOG('M');
				LS_LOGN(button_pressed);
			}
			button_pressed = button_unpressed = 0;
		}
	}
}


void stop_leds(void)
{
    /* PWM test run */
    clr_PWMCON0_PWMRUN;
	set_SFRS_SFRPAGE;

	PWM2L = 0;
	PWM2H = 0;
	PWM4L = 0;
	PWM4H = 0;

	clr_SFRS_SFRPAGE;
	set_PWMCON0_PWMRUN;
}

void activate_leds(void)
{
	clr_PWMCON0_PWMRUN;
	set_SFRS_SFRPAGE;

	PWM2L = pwm[0];
	PWM4L = pwm[1];

	clr_SFRS_SFRPAGE;
	set_PWMCON0_PWMRUN;
}

#define FLASH_ON_COUNTER 20
#define LIGHT_OFF_COUNTER 5

uint32_t log_counter = 0;

bool mode_changing_control( void )
{
	bool light_changing = false;

	for( int i = 0; i < NUM_LEDS; i++ ) {
		switch( light_control_mode[i] ) {
		case MODE_CHANGING_OFF:
			if( pwm[i] > 0) {
				light_changing = true;
				pwm[i] --;
			} else if( pwm[i] == 0 ){ // pwm은 unsigned이므로 0보다 작을수는 없음
				light_control_mode[i] = MODE_STABLE;
			} else { // 불가능하지만 안전을 위한 코드
				light_changing = true;
				pwm[i] = 0;
			}
			break;
		case MODE_CHANGING_UP:
			if( cur_amp[i] < max_amp[light_mode][i] ) {
				good_amp_count[i] = 0;
				light_changing = true;
				if( pwm[i] < 190 ) {
					pwm[i] ++;
				} else {
					pwm[i] = 190;
				}
			} else {
				good_amp_count[i]++;
				if( good_amp_count[i] > 10 ) {
					light_control_mode[i] = MODE_STABLE;
				}
			}
			break;
		case MODE_CHANGING_DOWN:
			if( cur_amp[i] > max_amp[light_mode][i] ) {
				good_amp_count[i] = 0;
				light_changing = true;
				if( pwm[i] <= 0) {
					pwm[i] = 0;
				} else if( pwm[i] > 190 ) {
					pwm[i] = 190;
				} else {
					pwm[i] --;
				}
			} else {
				good_amp_count[i]++;
				if( good_amp_count[i] > 2 ) {
					light_control_mode[i] = MODE_STABLE;
				}
			}
			break;
		}
	}
	return light_changing;
}

bool is_stable( void ) {
	for( int i = 0; i < NUM_LEDS; i++ ) {
		if( light_control_mode[i] != MODE_STABLE ) return false;
	}

	return true;
}

bool mode_stable_control( void )
{
	bool light_changing = false;

	cur_temp = acc_temp / sample_count;

	for( int i = 0; i < NUM_LEDS; i++ ) {
		int16_t t_amp = target_amp(light_mode, i);
		if( t_amp <= 0 ) continue;

		uint16_t amp = avg_amp(i);
		if( amp < t_amp - AMP_MARGIN ) {
			pwm[i] ++;
			light_changing = true;
		} else if( amp > t_amp + AMP_MARGIN ) {
			pwm[i] --;
			light_changing = true;
		}
	}
	return light_changing;
}

void control_loop( void )
{
	bool light_changing = false;

	sample_amps();

	light_changing = mode_changing_control();

	if( is_stable() ) {
		sample_count++;

		for( int i = 0; i < NUM_LEDS; i++ )
			acc_amp[i] += cur_amp[i];

		sample_temperature();

		if( flashing[light_mode] ) {
			if( sample_count == 1 ) {
				stop_leds();
			} else if( sample_count == FLASHING_ON_COUNT ) {
				activate_leds();
			}
		}

		if( sample_count >= MAX_SAMPLE_COUNT ) {
			if( !flashing[light_mode] ) {
				light_changing = mode_stable_control();
			}
			init_sample();
		}
	}

	if( light_changing ) {
		activate_leds();
	}

}


void wdt_init(void)
{
    SFRS=0;								/* Init WDT */
    BIT_TMP=EA;
    EA=0;

    TA=0xAA;
    TA=0x55;
//    WDCON&=0xF8;
    WDCON&=0xFF;
    WDCON|= 0x97; // 1001 0111

//    TA=0xAA;
//    TA=0x55;
//    WDCON|=0x07; // 0000 0111

    EA = BIT_TMP;

//    set_WDCON_WIDPD;
    /*
    BIT_TMP=EA;EA=0;TA=0xAA;TA=0x55;
    WDCON|=0x10; // 0001 0000
    EA=BIT_TMP;
    */
//    set_WDCON_WDTR;
    /*
    BIT_TMP=EA;EA=0;TA=0xAA;TA=0x55;
    WDCON|=0x80; // 1000 0000
    EA=BIT_TMP
    */

//    set_EIE_EWDT;
    EIE|=0x10;
}


void wdt_clear(void)
{
    BIT_TMP=EA;							/* Clear WDT counter */
    EA=0;

    TA=0xAA;
    TA=0x55;

    WDCON|=0x40;
    EA=BIT_TMP;

//    while(WDCON&SET_BIT6);              /* Check for the WDT counter cleared */
}


void main (void)
{
	/* Modify HIRC to 24MHz for UART baud rate deviation not over 1%*/
    MODIFY_HIRC(HIRC_24);

    /* 처음 UART를 통하여 시작 버튼으로 동작할 지 UART로 동작할 지 정한다. */

#ifdef ENABLE_LOG
    log_init();
#endif
	init_peripherals_but_button_n_uart();
    uart_interrupt_init();

	LS_LOG(':');

	LS_LOG('a');
	for( uart_counter = 0; uart_counter < MAX_UART_INIT_COUNTER; uart_counter++ ) {
		if( process_uart() ) break;
		Timer0_Delay(24000000, 1, PERIOD_UNIT);
	}

	LS_LOG(':');

	if( !is_uart_mode ) {
		button_interrupt_init();
	}

	wdt_init();

	while(1)
	{
#ifdef ENABLE_LOG
		// 살아있는지 확인
		if( log_counter % 200 == 0 ) {
			LS_LOG('T');
		}
		log_counter++;
#endif

		if( is_uart_mode ) {
			if( light_mode == LIGHT_OFF ) {
				uart_counter ++;
			}
			process_uart();
		} else {
			process_button();
		}

		if( light_mode == LIGHT_OFF ) {
			if( (is_uart_mode && uart_counter > MAX_UART_COUNTER) || (!is_uart_mode && button_pressed < 1) ) {
				stop_leds();
				disable_ntc();

				clr_SCON_1_TI_1;
				clr_SCON_1_RI_1;
				set_PCON_IDLE;
				CALL_NOP;
				CALL_NOP;
				clr_PCON_IDLE;

				init_peripherals_but_button_n_uart();
				if( is_uart_mode ) {
					uart_interrupt_init();
				} else {
					button_interrupt_init();
				}
			}
		}

		control_loop();

		Timer0_Delay(24000000, 1, PERIOD_UNIT);

		wdt_clear();
	}
}
