;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.6 #13647 (MINGW32)
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _next_mode
	.globl _temp_controlling
	.globl _flashing
	.globl _min_amp
	.globl _max_amp
	.globl _main
	.globl _wdt_clear
	.globl _wdt_init
	.globl _control_loop
	.globl _mode_stable_control
	.globl _is_stable
	.globl _mode_changing_control
	.globl _activate_leds
	.globl _stop_leds
	.globl _process_button
	.globl _process_uart
	.globl _toNextMode
	.globl _changeMode
	.globl _target_amp
	.globl _avg_amp
	.globl _has_high_beam
	.globl _sample_temperature
	.globl _sample_amps
	.globl _init_peripherals_but_button_n_uart
	.globl _init_sample
	.globl _disable_ntc
	.globl _enable_ntc
	.globl _button_interrupt_init
	.globl _PinInterrupt_ISR
	.globl _uart_interrupt_init
	.globl _SerialPort1_ISR
	.globl _log_init
	.globl _uart_logn
	.globl _uart_log
	.globl _Timer0_Delay
	.globl _UART_Send_Data
	.globl _UART_Open
	.globl _MODIFY_HIRC
	.globl _MOSI
	.globl _P00
	.globl _MISO
	.globl _P01
	.globl _RXD_1
	.globl _P02
	.globl _P03
	.globl _STADC
	.globl _P04
	.globl _P05
	.globl _TXD
	.globl _P06
	.globl _RXD
	.globl _P07
	.globl _IT0
	.globl _IE0
	.globl _IT1
	.globl _IE1
	.globl _TR0
	.globl _TF0
	.globl _TR1
	.globl _TF1
	.globl _P10
	.globl _P11
	.globl _P12
	.globl _SCL
	.globl _P13
	.globl _SDA
	.globl _P14
	.globl _P15
	.globl _TXD_1
	.globl _P16
	.globl _P17
	.globl _RI
	.globl _TI
	.globl _RB8
	.globl _TB8
	.globl _REN
	.globl _SM2
	.globl _SM1
	.globl _FE
	.globl _SM0
	.globl _P20
	.globl _EX0
	.globl _ET0
	.globl _EX1
	.globl _ET1
	.globl _ES
	.globl _EBOD
	.globl _EADC
	.globl _EA
	.globl _P30
	.globl _PX0
	.globl _PT0
	.globl _PX1
	.globl _PT1
	.globl _PS
	.globl _PBOD
	.globl _PADC
	.globl _I2CPX
	.globl _AA
	.globl _SI
	.globl _STO
	.globl _STA
	.globl _I2CEN
	.globl _CM_RL2
	.globl _TR2
	.globl _TF2
	.globl _P
	.globl _OV
	.globl _RS0
	.globl _RS1
	.globl _F0
	.globl _AC
	.globl _CY
	.globl _CLRPWM
	.globl _PWMF
	.globl _LOAD
	.globl _PWMRUN
	.globl _ADCHS0
	.globl _ADCHS1
	.globl _ADCHS2
	.globl _ADCHS3
	.globl _ETGSEL0
	.globl _ETGSEL1
	.globl _ADCS
	.globl _ADCF
	.globl _RI_1
	.globl _TI_1
	.globl _RB8_1
	.globl _TB8_1
	.globl _REN_1
	.globl _SM2_1
	.globl _SM1_1
	.globl _FE_1
	.globl _SM0_1
	.globl _EIPH1
	.globl _EIP1
	.globl _PMD
	.globl _PMEN
	.globl _PDTCNT
	.globl _PDTEN
	.globl _SCON_1
	.globl _EIPH
	.globl _AINDIDS
	.globl _SPDR
	.globl _SPSR
	.globl _SPCR2
	.globl _SPCR
	.globl _CAPCON4
	.globl _CAPCON3
	.globl _B
	.globl _EIP
	.globl _C2H
	.globl _C2L
	.globl _PIF
	.globl _PIPEN
	.globl _PINEN
	.globl _PICON
	.globl _ADCCON0
	.globl _C1H
	.globl _C1L
	.globl _C0H
	.globl _C0L
	.globl _ADCDLY
	.globl _ADCCON2
	.globl _ADCCON1
	.globl _ACC
	.globl _PWMCON1
	.globl _PIOCON0
	.globl _PWM3L
	.globl _PWM2L
	.globl _PWM1L
	.globl _PWM0L
	.globl _PWMPL
	.globl _PWMCON0
	.globl _FBD
	.globl _PNP
	.globl _PWM3H
	.globl _PWM2H
	.globl _PWM1H
	.globl _PWM0H
	.globl _PWMPH
	.globl _PSW
	.globl _ADCMPH
	.globl _ADCMPL
	.globl _PWM5L
	.globl _TH2
	.globl _PWM4L
	.globl _TL2
	.globl _RCMP2H
	.globl _RCMP2L
	.globl _T2MOD
	.globl _T2CON
	.globl _TA
	.globl _PIOCON1
	.globl _RH3
	.globl _PWM5H
	.globl _RL3
	.globl _PWM4H
	.globl _T3CON
	.globl _ADCRH
	.globl _ADCRL
	.globl _I2ADDR
	.globl _I2CON
	.globl _I2TOC
	.globl _I2CLK
	.globl _I2STAT
	.globl _I2DAT
	.globl _SADDR_1
	.globl _SADEN_1
	.globl _SADEN
	.globl _IP
	.globl _PWMINTC
	.globl _IPH
	.globl _P2S
	.globl _P1SR
	.globl _P1M2
	.globl _P1S
	.globl _P1M1
	.globl _P0SR
	.globl _P0M2
	.globl _P0S
	.globl _P0M1
	.globl _P3
	.globl _IAPCN
	.globl _IAPFD
	.globl _P3SR
	.globl _P3M2
	.globl _P3S
	.globl _P3M1
	.globl _BODCON1
	.globl _WDCON
	.globl _SADDR
	.globl _IE
	.globl _IAPAH
	.globl _IAPAL
	.globl _IAPUEN
	.globl _IAPTRG
	.globl _BODCON0
	.globl _AUXR1
	.globl _P2
	.globl _CHPCON
	.globl _EIE1
	.globl _EIE
	.globl _SBUF_1
	.globl _SBUF
	.globl _SCON
	.globl _CKEN
	.globl _CKSWT
	.globl _CKDIV
	.globl _CAPCON2
	.globl _CAPCON1
	.globl _CAPCON0
	.globl _SFRS
	.globl _P1
	.globl _WKCON
	.globl _CKCON
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _RWK
	.globl _RCTRIM1
	.globl _RCTRIM0
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _wdt_flag
	.globl _log_counter
	.globl _lamp_state
	.globl _uart_rx_state
	.globl _uart_counter
	.globl _button_unpressed
	.globl _button_pressed
	.globl _uart_flag
	.globl _uart1_read_idx
	.globl _uart1_next_idx
	.globl _good_amp_count
	.globl _cur_temp
	.globl _cur_amp
	.globl _acc_temp
	.globl _acc_amp
	.globl _sample_count
	.globl _light_control_mode
	.globl _pwm
	.globl _flashing_count
	.globl _flashing_on
	.globl _is_uart_mode
	.globl _light_mode
	.globl _target_amp_PARM_2
	.globl _uart1_rx_buffer
	.globl _Timer0_Delay_PARM_3
	.globl _Timer0_Delay_PARM_2
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
G$P0$0_0$0 == 0x0080
_P0	=	0x0080
G$SP$0_0$0 == 0x0081
_SP	=	0x0081
G$DPL$0_0$0 == 0x0082
_DPL	=	0x0082
G$DPH$0_0$0 == 0x0083
_DPH	=	0x0083
G$RCTRIM0$0_0$0 == 0x0084
_RCTRIM0	=	0x0084
G$RCTRIM1$0_0$0 == 0x0085
_RCTRIM1	=	0x0085
G$RWK$0_0$0 == 0x0086
_RWK	=	0x0086
G$PCON$0_0$0 == 0x0087
_PCON	=	0x0087
G$TCON$0_0$0 == 0x0088
_TCON	=	0x0088
G$TMOD$0_0$0 == 0x0089
_TMOD	=	0x0089
G$TL0$0_0$0 == 0x008a
_TL0	=	0x008a
G$TL1$0_0$0 == 0x008b
_TL1	=	0x008b
G$TH0$0_0$0 == 0x008c
_TH0	=	0x008c
G$TH1$0_0$0 == 0x008d
_TH1	=	0x008d
G$CKCON$0_0$0 == 0x008e
_CKCON	=	0x008e
G$WKCON$0_0$0 == 0x008f
_WKCON	=	0x008f
G$P1$0_0$0 == 0x0090
_P1	=	0x0090
G$SFRS$0_0$0 == 0x0091
_SFRS	=	0x0091
G$CAPCON0$0_0$0 == 0x0092
_CAPCON0	=	0x0092
G$CAPCON1$0_0$0 == 0x0093
_CAPCON1	=	0x0093
G$CAPCON2$0_0$0 == 0x0094
_CAPCON2	=	0x0094
G$CKDIV$0_0$0 == 0x0095
_CKDIV	=	0x0095
G$CKSWT$0_0$0 == 0x0096
_CKSWT	=	0x0096
G$CKEN$0_0$0 == 0x0097
_CKEN	=	0x0097
G$SCON$0_0$0 == 0x0098
_SCON	=	0x0098
G$SBUF$0_0$0 == 0x0099
_SBUF	=	0x0099
G$SBUF_1$0_0$0 == 0x009a
_SBUF_1	=	0x009a
G$EIE$0_0$0 == 0x009b
_EIE	=	0x009b
G$EIE1$0_0$0 == 0x009c
_EIE1	=	0x009c
G$CHPCON$0_0$0 == 0x009f
_CHPCON	=	0x009f
G$P2$0_0$0 == 0x00a0
_P2	=	0x00a0
G$AUXR1$0_0$0 == 0x00a2
_AUXR1	=	0x00a2
G$BODCON0$0_0$0 == 0x00a3
_BODCON0	=	0x00a3
G$IAPTRG$0_0$0 == 0x00a4
_IAPTRG	=	0x00a4
G$IAPUEN$0_0$0 == 0x00a5
_IAPUEN	=	0x00a5
G$IAPAL$0_0$0 == 0x00a6
_IAPAL	=	0x00a6
G$IAPAH$0_0$0 == 0x00a7
_IAPAH	=	0x00a7
G$IE$0_0$0 == 0x00a8
_IE	=	0x00a8
G$SADDR$0_0$0 == 0x00a9
_SADDR	=	0x00a9
G$WDCON$0_0$0 == 0x00aa
_WDCON	=	0x00aa
G$BODCON1$0_0$0 == 0x00ab
_BODCON1	=	0x00ab
G$P3M1$0_0$0 == 0x00ac
_P3M1	=	0x00ac
G$P3S$0_0$0 == 0x00ac
_P3S	=	0x00ac
G$P3M2$0_0$0 == 0x00ad
_P3M2	=	0x00ad
G$P3SR$0_0$0 == 0x00ad
_P3SR	=	0x00ad
G$IAPFD$0_0$0 == 0x00ae
_IAPFD	=	0x00ae
G$IAPCN$0_0$0 == 0x00af
_IAPCN	=	0x00af
G$P3$0_0$0 == 0x00b0
_P3	=	0x00b0
G$P0M1$0_0$0 == 0x00b1
_P0M1	=	0x00b1
G$P0S$0_0$0 == 0x00b1
_P0S	=	0x00b1
G$P0M2$0_0$0 == 0x00b2
_P0M2	=	0x00b2
G$P0SR$0_0$0 == 0x00b2
_P0SR	=	0x00b2
G$P1M1$0_0$0 == 0x00b3
_P1M1	=	0x00b3
G$P1S$0_0$0 == 0x00b3
_P1S	=	0x00b3
G$P1M2$0_0$0 == 0x00b4
_P1M2	=	0x00b4
G$P1SR$0_0$0 == 0x00b4
_P1SR	=	0x00b4
G$P2S$0_0$0 == 0x00b5
_P2S	=	0x00b5
G$IPH$0_0$0 == 0x00b7
_IPH	=	0x00b7
G$PWMINTC$0_0$0 == 0x00b7
_PWMINTC	=	0x00b7
G$IP$0_0$0 == 0x00b8
_IP	=	0x00b8
G$SADEN$0_0$0 == 0x00b9
_SADEN	=	0x00b9
G$SADEN_1$0_0$0 == 0x00ba
_SADEN_1	=	0x00ba
G$SADDR_1$0_0$0 == 0x00bb
_SADDR_1	=	0x00bb
G$I2DAT$0_0$0 == 0x00bc
_I2DAT	=	0x00bc
G$I2STAT$0_0$0 == 0x00bd
_I2STAT	=	0x00bd
G$I2CLK$0_0$0 == 0x00be
_I2CLK	=	0x00be
G$I2TOC$0_0$0 == 0x00bf
_I2TOC	=	0x00bf
G$I2CON$0_0$0 == 0x00c0
_I2CON	=	0x00c0
G$I2ADDR$0_0$0 == 0x00c1
_I2ADDR	=	0x00c1
G$ADCRL$0_0$0 == 0x00c2
_ADCRL	=	0x00c2
G$ADCRH$0_0$0 == 0x00c3
_ADCRH	=	0x00c3
G$T3CON$0_0$0 == 0x00c4
_T3CON	=	0x00c4
G$PWM4H$0_0$0 == 0x00c4
_PWM4H	=	0x00c4
G$RL3$0_0$0 == 0x00c5
_RL3	=	0x00c5
G$PWM5H$0_0$0 == 0x00c5
_PWM5H	=	0x00c5
G$RH3$0_0$0 == 0x00c6
_RH3	=	0x00c6
G$PIOCON1$0_0$0 == 0x00c6
_PIOCON1	=	0x00c6
G$TA$0_0$0 == 0x00c7
_TA	=	0x00c7
G$T2CON$0_0$0 == 0x00c8
_T2CON	=	0x00c8
G$T2MOD$0_0$0 == 0x00c9
_T2MOD	=	0x00c9
G$RCMP2L$0_0$0 == 0x00ca
_RCMP2L	=	0x00ca
G$RCMP2H$0_0$0 == 0x00cb
_RCMP2H	=	0x00cb
G$TL2$0_0$0 == 0x00cc
_TL2	=	0x00cc
G$PWM4L$0_0$0 == 0x00cc
_PWM4L	=	0x00cc
G$TH2$0_0$0 == 0x00cd
_TH2	=	0x00cd
G$PWM5L$0_0$0 == 0x00cd
_PWM5L	=	0x00cd
G$ADCMPL$0_0$0 == 0x00ce
_ADCMPL	=	0x00ce
G$ADCMPH$0_0$0 == 0x00cf
_ADCMPH	=	0x00cf
G$PSW$0_0$0 == 0x00d0
_PSW	=	0x00d0
G$PWMPH$0_0$0 == 0x00d1
_PWMPH	=	0x00d1
G$PWM0H$0_0$0 == 0x00d2
_PWM0H	=	0x00d2
G$PWM1H$0_0$0 == 0x00d3
_PWM1H	=	0x00d3
G$PWM2H$0_0$0 == 0x00d4
_PWM2H	=	0x00d4
G$PWM3H$0_0$0 == 0x00d5
_PWM3H	=	0x00d5
G$PNP$0_0$0 == 0x00d6
_PNP	=	0x00d6
G$FBD$0_0$0 == 0x00d7
_FBD	=	0x00d7
G$PWMCON0$0_0$0 == 0x00d8
_PWMCON0	=	0x00d8
G$PWMPL$0_0$0 == 0x00d9
_PWMPL	=	0x00d9
G$PWM0L$0_0$0 == 0x00da
_PWM0L	=	0x00da
G$PWM1L$0_0$0 == 0x00db
_PWM1L	=	0x00db
G$PWM2L$0_0$0 == 0x00dc
_PWM2L	=	0x00dc
G$PWM3L$0_0$0 == 0x00dd
_PWM3L	=	0x00dd
G$PIOCON0$0_0$0 == 0x00de
_PIOCON0	=	0x00de
G$PWMCON1$0_0$0 == 0x00df
_PWMCON1	=	0x00df
G$ACC$0_0$0 == 0x00e0
_ACC	=	0x00e0
G$ADCCON1$0_0$0 == 0x00e1
_ADCCON1	=	0x00e1
G$ADCCON2$0_0$0 == 0x00e2
_ADCCON2	=	0x00e2
G$ADCDLY$0_0$0 == 0x00e3
_ADCDLY	=	0x00e3
G$C0L$0_0$0 == 0x00e4
_C0L	=	0x00e4
G$C0H$0_0$0 == 0x00e5
_C0H	=	0x00e5
G$C1L$0_0$0 == 0x00e6
_C1L	=	0x00e6
G$C1H$0_0$0 == 0x00e7
_C1H	=	0x00e7
G$ADCCON0$0_0$0 == 0x00e8
_ADCCON0	=	0x00e8
G$PICON$0_0$0 == 0x00e9
_PICON	=	0x00e9
G$PINEN$0_0$0 == 0x00ea
_PINEN	=	0x00ea
G$PIPEN$0_0$0 == 0x00eb
_PIPEN	=	0x00eb
G$PIF$0_0$0 == 0x00ec
_PIF	=	0x00ec
G$C2L$0_0$0 == 0x00ed
_C2L	=	0x00ed
G$C2H$0_0$0 == 0x00ee
_C2H	=	0x00ee
G$EIP$0_0$0 == 0x00ef
_EIP	=	0x00ef
G$B$0_0$0 == 0x00f0
_B	=	0x00f0
G$CAPCON3$0_0$0 == 0x00f1
_CAPCON3	=	0x00f1
G$CAPCON4$0_0$0 == 0x00f2
_CAPCON4	=	0x00f2
G$SPCR$0_0$0 == 0x00f3
_SPCR	=	0x00f3
G$SPCR2$0_0$0 == 0x00f3
_SPCR2	=	0x00f3
G$SPSR$0_0$0 == 0x00f4
_SPSR	=	0x00f4
G$SPDR$0_0$0 == 0x00f5
_SPDR	=	0x00f5
G$AINDIDS$0_0$0 == 0x00f6
_AINDIDS	=	0x00f6
G$EIPH$0_0$0 == 0x00f7
_EIPH	=	0x00f7
G$SCON_1$0_0$0 == 0x00f8
_SCON_1	=	0x00f8
G$PDTEN$0_0$0 == 0x00f9
_PDTEN	=	0x00f9
G$PDTCNT$0_0$0 == 0x00fa
_PDTCNT	=	0x00fa
G$PMEN$0_0$0 == 0x00fb
_PMEN	=	0x00fb
G$PMD$0_0$0 == 0x00fc
_PMD	=	0x00fc
G$EIP1$0_0$0 == 0x00fe
_EIP1	=	0x00fe
G$EIPH1$0_0$0 == 0x00ff
_EIPH1	=	0x00ff
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
G$SM0_1$0_0$0 == 0x00ff
_SM0_1	=	0x00ff
G$FE_1$0_0$0 == 0x00ff
_FE_1	=	0x00ff
G$SM1_1$0_0$0 == 0x00fe
_SM1_1	=	0x00fe
G$SM2_1$0_0$0 == 0x00fd
_SM2_1	=	0x00fd
G$REN_1$0_0$0 == 0x00fc
_REN_1	=	0x00fc
G$TB8_1$0_0$0 == 0x00fb
_TB8_1	=	0x00fb
G$RB8_1$0_0$0 == 0x00fa
_RB8_1	=	0x00fa
G$TI_1$0_0$0 == 0x00f9
_TI_1	=	0x00f9
G$RI_1$0_0$0 == 0x00f8
_RI_1	=	0x00f8
G$ADCF$0_0$0 == 0x00ef
_ADCF	=	0x00ef
G$ADCS$0_0$0 == 0x00ee
_ADCS	=	0x00ee
G$ETGSEL1$0_0$0 == 0x00ed
_ETGSEL1	=	0x00ed
G$ETGSEL0$0_0$0 == 0x00ec
_ETGSEL0	=	0x00ec
G$ADCHS3$0_0$0 == 0x00eb
_ADCHS3	=	0x00eb
G$ADCHS2$0_0$0 == 0x00ea
_ADCHS2	=	0x00ea
G$ADCHS1$0_0$0 == 0x00e9
_ADCHS1	=	0x00e9
G$ADCHS0$0_0$0 == 0x00e8
_ADCHS0	=	0x00e8
G$PWMRUN$0_0$0 == 0x00df
_PWMRUN	=	0x00df
G$LOAD$0_0$0 == 0x00de
_LOAD	=	0x00de
G$PWMF$0_0$0 == 0x00dd
_PWMF	=	0x00dd
G$CLRPWM$0_0$0 == 0x00dc
_CLRPWM	=	0x00dc
G$CY$0_0$0 == 0x00d7
_CY	=	0x00d7
G$AC$0_0$0 == 0x00d6
_AC	=	0x00d6
G$F0$0_0$0 == 0x00d5
_F0	=	0x00d5
G$RS1$0_0$0 == 0x00d4
_RS1	=	0x00d4
G$RS0$0_0$0 == 0x00d3
_RS0	=	0x00d3
G$OV$0_0$0 == 0x00d2
_OV	=	0x00d2
G$P$0_0$0 == 0x00d0
_P	=	0x00d0
G$TF2$0_0$0 == 0x00cf
_TF2	=	0x00cf
G$TR2$0_0$0 == 0x00ca
_TR2	=	0x00ca
G$CM_RL2$0_0$0 == 0x00c8
_CM_RL2	=	0x00c8
G$I2CEN$0_0$0 == 0x00c6
_I2CEN	=	0x00c6
G$STA$0_0$0 == 0x00c5
_STA	=	0x00c5
G$STO$0_0$0 == 0x00c4
_STO	=	0x00c4
G$SI$0_0$0 == 0x00c3
_SI	=	0x00c3
G$AA$0_0$0 == 0x00c2
_AA	=	0x00c2
G$I2CPX$0_0$0 == 0x00c0
_I2CPX	=	0x00c0
G$PADC$0_0$0 == 0x00be
_PADC	=	0x00be
G$PBOD$0_0$0 == 0x00bd
_PBOD	=	0x00bd
G$PS$0_0$0 == 0x00bc
_PS	=	0x00bc
G$PT1$0_0$0 == 0x00bb
_PT1	=	0x00bb
G$PX1$0_0$0 == 0x00ba
_PX1	=	0x00ba
G$PT0$0_0$0 == 0x00b9
_PT0	=	0x00b9
G$PX0$0_0$0 == 0x00b8
_PX0	=	0x00b8
G$P30$0_0$0 == 0x00b0
_P30	=	0x00b0
G$EA$0_0$0 == 0x00af
_EA	=	0x00af
G$EADC$0_0$0 == 0x00ae
_EADC	=	0x00ae
G$EBOD$0_0$0 == 0x00ad
_EBOD	=	0x00ad
G$ES$0_0$0 == 0x00ac
_ES	=	0x00ac
G$ET1$0_0$0 == 0x00ab
_ET1	=	0x00ab
G$EX1$0_0$0 == 0x00aa
_EX1	=	0x00aa
G$ET0$0_0$0 == 0x00a9
_ET0	=	0x00a9
G$EX0$0_0$0 == 0x00a8
_EX0	=	0x00a8
G$P20$0_0$0 == 0x00a0
_P20	=	0x00a0
G$SM0$0_0$0 == 0x009f
_SM0	=	0x009f
G$FE$0_0$0 == 0x009f
_FE	=	0x009f
G$SM1$0_0$0 == 0x009e
_SM1	=	0x009e
G$SM2$0_0$0 == 0x009d
_SM2	=	0x009d
G$REN$0_0$0 == 0x009c
_REN	=	0x009c
G$TB8$0_0$0 == 0x009b
_TB8	=	0x009b
G$RB8$0_0$0 == 0x009a
_RB8	=	0x009a
G$TI$0_0$0 == 0x0099
_TI	=	0x0099
G$RI$0_0$0 == 0x0098
_RI	=	0x0098
G$P17$0_0$0 == 0x0097
_P17	=	0x0097
G$P16$0_0$0 == 0x0096
_P16	=	0x0096
G$TXD_1$0_0$0 == 0x0096
_TXD_1	=	0x0096
G$P15$0_0$0 == 0x0095
_P15	=	0x0095
G$P14$0_0$0 == 0x0094
_P14	=	0x0094
G$SDA$0_0$0 == 0x0094
_SDA	=	0x0094
G$P13$0_0$0 == 0x0093
_P13	=	0x0093
G$SCL$0_0$0 == 0x0093
_SCL	=	0x0093
G$P12$0_0$0 == 0x0092
_P12	=	0x0092
G$P11$0_0$0 == 0x0091
_P11	=	0x0091
G$P10$0_0$0 == 0x0090
_P10	=	0x0090
G$TF1$0_0$0 == 0x008f
_TF1	=	0x008f
G$TR1$0_0$0 == 0x008e
_TR1	=	0x008e
G$TF0$0_0$0 == 0x008d
_TF0	=	0x008d
G$TR0$0_0$0 == 0x008c
_TR0	=	0x008c
G$IE1$0_0$0 == 0x008b
_IE1	=	0x008b
G$IT1$0_0$0 == 0x008a
_IT1	=	0x008a
G$IE0$0_0$0 == 0x0089
_IE0	=	0x0089
G$IT0$0_0$0 == 0x0088
_IT0	=	0x0088
G$P07$0_0$0 == 0x0087
_P07	=	0x0087
G$RXD$0_0$0 == 0x0087
_RXD	=	0x0087
G$P06$0_0$0 == 0x0086
_P06	=	0x0086
G$TXD$0_0$0 == 0x0086
_TXD	=	0x0086
G$P05$0_0$0 == 0x0085
_P05	=	0x0085
G$P04$0_0$0 == 0x0084
_P04	=	0x0084
G$STADC$0_0$0 == 0x0084
_STADC	=	0x0084
G$P03$0_0$0 == 0x0083
_P03	=	0x0083
G$P02$0_0$0 == 0x0082
_P02	=	0x0082
G$RXD_1$0_0$0 == 0x0082
_RXD_1	=	0x0082
G$P01$0_0$0 == 0x0081
_P01	=	0x0081
G$MISO$0_0$0 == 0x0081
_MISO	=	0x0081
G$P00$0_0$0 == 0x0080
_P00	=	0x0080
G$MOSI$0_0$0 == 0x0080
_MOSI	=	0x0080
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; overlayable bit register bank
;--------------------------------------------------------
	.area BIT_BANK	(REL,OVR,DATA)
bits:
	.ds 1
	b0 = bits[0]
	b1 = bits[1]
	b2 = bits[2]
	b3 = bits[3]
	b4 = bits[4]
	b5 = bits[5]
	b6 = bits[6]
	b7 = bits[7]
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
Lmain.uart_logn$sloc0$0_1$0==.
_uart_logn_sloc0_1_0:
	.ds 4
Lmain.control_loop$sloc0$0_1$0==.
_control_loop_sloc0_1_0:
	.ds 4
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area INITIALIZED
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
;--------------------------------------------------------
; Stack segment in internal ram
;--------------------------------------------------------
	.area SSEG
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
Lmain.Timer0_Delay$u16CNT$1_0$145==.
_Timer0_Delay_PARM_2:
	.ds 2
Lmain.Timer0_Delay$u16DLYUnit$1_0$145==.
_Timer0_Delay_PARM_3:
	.ds 2
Lmain.Timer0_Delay$u32SYSCLK$1_0$145==.
_Timer0_Delay_u32SYSCLK_65536_145:
	.ds 4
Lmain.uart_log$c$1_0$148==.
_uart_log_c_65536_148:
	.ds 1
Lmain.uart_logn$n$1_0$150==.
_uart_logn_n_65536_150:
	.ds 4
Lmain.uart_logn$e$1_1$153==.
_uart_logn_e_65537_153:
	.ds 4
G$uart1_rx_buffer$0_0$0==.
_uart1_rx_buffer::
	.ds 16
Lmain.has_high_beam$mode$1_0$186==.
_has_high_beam_mode_65536_186:
	.ds 1
Lmain.avg_amp$idx$1_0$188==.
_avg_amp_idx_65536_188:
	.ds 1
Lmain.target_amp$idx$1_0$192==.
_target_amp_PARM_2:
	.ds 1
Lmain.target_amp$mode$1_0$192==.
_target_amp_mode_65536_192:
	.ds 1
Lmain.changeMode$new_mode$1_0$198==.
_changeMode_new_mode_65536_198:
	.ds 1
Lmain.process_uart$ch$2_0$216==.
_process_uart_ch_131072_216:
	.ds 1
Lmain.mode_changing_control$light_changing$1_0$236==.
_mode_changing_control_light_changing_65536_236:
	.ds 1
Lmain.mode_stable_control$light_changing$1_0$259==.
_mode_stable_control_light_changing_65536_259:
	.ds 1
Lmain.control_loop$light_changing$1_0$266==.
_control_loop_light_changing_65536_266:
	.ds 1
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; initialized external ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
G$light_mode$0_0$0==.
_light_mode::
	.ds 1
G$is_uart_mode$0_0$0==.
_is_uart_mode::
	.ds 1
G$flashing_on$0_0$0==.
_flashing_on::
	.ds 1
G$flashing_count$0_0$0==.
_flashing_count::
	.ds 2
G$pwm$0_0$0==.
_pwm::
	.ds 4
G$light_control_mode$0_0$0==.
_light_control_mode::
	.ds 2
G$sample_count$0_0$0==.
_sample_count::
	.ds 1
G$acc_amp$0_0$0==.
_acc_amp::
	.ds 8
G$acc_temp$0_0$0==.
_acc_temp::
	.ds 4
G$cur_amp$0_0$0==.
_cur_amp::
	.ds 4
G$cur_temp$0_0$0==.
_cur_temp::
	.ds 2
G$good_amp_count$0_0$0==.
_good_amp_count::
	.ds 2
G$uart1_next_idx$0_0$0==.
_uart1_next_idx::
	.ds 1
G$uart1_read_idx$0_0$0==.
_uart1_read_idx::
	.ds 1
G$uart_flag$0_0$0==.
_uart_flag::
	.ds 1
G$button_pressed$0_0$0==.
_button_pressed::
	.ds 4
G$button_unpressed$0_0$0==.
_button_unpressed::
	.ds 4
G$uart_counter$0_0$0==.
_uart_counter::
	.ds 4
G$uart_rx_state$0_0$0==.
_uart_rx_state::
	.ds 1
G$lamp_state$0_0$0==.
_lamp_state::
	.ds 1
G$log_counter$0_0$0==.
_log_counter::
	.ds 4
G$wdt_flag$0_0$0==.
_wdt_flag::
	.ds 1
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; interrupt vector
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	ljmp	_PinInterrupt_ISR
	.ds	5
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	ljmp	_SerialPort1_ISR
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'Timer0_Delay'
;------------------------------------------------------------
;u16CNT                    Allocated with name '_Timer0_Delay_PARM_2'
;u16DLYUnit                Allocated with name '_Timer0_Delay_PARM_3'
;u32SYSCLK                 Allocated with name '_Timer0_Delay_u32SYSCLK_65536_145'
;TL0TMP                    Allocated with name '_Timer0_Delay_TL0TMP_65536_146'
;TH0TMP                    Allocated with name '_Timer0_Delay_TH0TMP_65536_146'
;------------------------------------------------------------
	Smain$Timer0_Delay$0 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:215: void Timer0_Delay(unsigned long u32SYSCLK, unsigned int u16CNT, unsigned int u16DLYUnit)
;	-----------------------------------------
;	 function Timer0_Delay
;	-----------------------------------------
_Timer0_Delay:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	Smain$Timer0_Delay$1 ==.
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
	mov	r4,a
	mov	dptr,#_Timer0_Delay_u32SYSCLK_65536_145
	mov	a,r7
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	Smain$Timer0_Delay$2 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:219: TIMER0_FSYS_DIV12;                                  //T0M=0, Timer0 Clock = Fsys/12
	anl	_CKCON,#0xf7
	Smain$Timer0_Delay$3 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:220: ENABLE_TIMER0_MODE1;                                   //Timer0 is 16-bit mode
	anl	_TMOD,#0xf0
	orl	_TMOD,#0x01
	Smain$Timer0_Delay$4 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:221: TL0TMP = LOBYTE(65535-((u32SYSCLK/1000000)*u16DLYUnit/12));
	mov	dptr,#_Timer0_Delay_u32SYSCLK_65536_145
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#__divulong_PARM_2
	mov	a,#0x40
	movx	@dptr,a
	mov	a,#0x42
	inc	dptr
	movx	@dptr,a
	mov	a,#0x0f
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	__divulong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	dptr,#_Timer0_Delay_PARM_3
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#__mullong_PARM_2
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	__mullong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	dptr,#__divulong_PARM_2
	mov	a,#0x0c
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	__divulong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	ar3,r4
	mov	a,#0xff
	clr	c
	subb	a,r3
	mov	r3,a
	Smain$Timer0_Delay$5 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:222: TH0TMP = HIBYTE(65535-((u32SYSCLK/1000000)*u16DLYUnit/12));
	mov	a,#0xff
	clr	c
	subb	a,r4
	mov	a,#0xff
	subb	a,r5
	mov	r5,a
	clr	a
	subb	a,r6
	clr	a
	subb	a,r7
	mov	ar7,r5
	Smain$Timer0_Delay$6 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:224: while (u16CNT != 0)
	mov	dptr,#_Timer0_Delay_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
00104$:
	mov	a,r5
	orl	a,r6
	jz	00107$
	Smain$Timer0_Delay$7 ==.
	Smain$Timer0_Delay$8 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:226: TL0=TL0TMP;
	mov	_TL0,r3
	Smain$Timer0_Delay$9 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:227: TH0=TH0TMP;
	mov	_TH0,r7
	Smain$Timer0_Delay$10 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:228: set_TCON_TR0;                                    //Start Timer0
;	assignBit
	setb	_TR0
	Smain$Timer0_Delay$11 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:229: while (!TF0);                       //Check Timer0 Time-Out Flag
00101$:
	Smain$Timer0_Delay$12 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:230: clr_TCON_TF0;
;	assignBit
	jbc	_TF0,00127$
	sjmp	00101$
00127$:
	Smain$Timer0_Delay$13 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:231: clr_TCON_TR0;                       //Stop Timer0
;	assignBit
	clr	_TR0
	Smain$Timer0_Delay$14 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:232: u16CNT --;
	dec	r5
	cjne	r5,#0xff,00128$
	dec	r6
00128$:
	Smain$Timer0_Delay$15 ==.
	sjmp	00104$
00107$:
	Smain$Timer0_Delay$16 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:235: }
	Smain$Timer0_Delay$17 ==.
	XG$Timer0_Delay$0$0 ==.
	ret
	Smain$Timer0_Delay$18 ==.
;------------------------------------------------------------
;Allocation info for local variables in function 'uart_log'
;------------------------------------------------------------
;c                         Allocated with name '_uart_log_c_65536_148'
;------------------------------------------------------------
	Smain$uart_log$19 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:238: void uart_log(char c)
;	-----------------------------------------
;	 function uart_log
;	-----------------------------------------
_uart_log:
	Smain$uart_log$20 ==.
	mov	a,dpl
	mov	dptr,#_uart_log_c_65536_148
	movx	@dptr,a
	Smain$uart_log$21 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:240: UART_Send_Data(UART1,c);
	movx	a,@dptr
	mov	dptr,#_UART_Send_Data_PARM_2
	movx	@dptr,a
	mov	dpl,#0x01
	lcall	_UART_Send_Data
	Smain$uart_log$22 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:241: Timer0_Delay(24000000, 10, 10);
	mov	dptr,#_Timer0_Delay_PARM_2
	mov	a,#0x0a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_Timer0_Delay_PARM_3
	mov	a,#0x0a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x3600
	mov	b,#0x6e
	mov	a,#0x01
	lcall	_Timer0_Delay
	Smain$uart_log$23 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:243: }
	Smain$uart_log$24 ==.
	XG$uart_log$0$0 ==.
	ret
	Smain$uart_log$25 ==.
;------------------------------------------------------------
;Allocation info for local variables in function 'uart_logn'
;------------------------------------------------------------
;sloc0                     Allocated with name '_uart_logn_sloc0_1_0'
;n                         Allocated with name '_uart_logn_n_65536_150'
;e                         Allocated with name '_uart_logn_e_65537_153'
;res                       Allocated with name '_uart_logn_res_131074_155'
;------------------------------------------------------------
	Smain$uart_logn$26 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:245: void uart_logn(uint32_t n)
;	-----------------------------------------
;	 function uart_logn
;	-----------------------------------------
_uart_logn:
	Smain$uart_logn$27 ==.
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
	mov	r4,a
	mov	dptr,#_uart_logn_n_65536_150
	mov	a,r7
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	Smain$uart_logn$28 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:247: if( n == 0 ) {
	mov	dptr,#_uart_logn_n_65536_150
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_uart_logn_n_65536_150
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	b,a
	inc	dptr
	movx	a,@dptr
	orl	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz	00102$
	Smain$uart_logn$29 ==.
	Smain$uart_logn$30 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:248: uart_log('0');
	mov	dpl,#0x30
	lcall	_uart_log
	Smain$uart_logn$31 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:249: return;
	ljmp	00109$
	Smain$uart_logn$32 ==.
00102$:
	Smain$uart_logn$33 ==.
	Smain$uart_logn$34 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:252: uint32_t e = 10;
	mov	dptr,#_uart_logn_e_65537_153
	mov	a,#0x0a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	Smain$uart_logn$35 ==.
	Smain$uart_logn$36 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:254: while( e <= n ) e *= 10;
00103$:
	mov	dptr,#_uart_logn_e_65537_153
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	clr	c
	mov	a,r4
	subb	a,r0
	mov	a,r5
	subb	a,r1
	mov	a,r6
	subb	a,r2
	mov	a,r7
	subb	a,r3
	jc	00106$
	Smain$uart_logn$37 ==.
	mov	dptr,#__mullong_PARM_2
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(0x0a&0x00ff)
	clr	a
	mov	b,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	__mullong
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r3,a
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dptr,#_uart_logn_e_65537_153
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	Smain$uart_logn$38 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:256: while( e > 1 ) {
	sjmp	00103$
00106$:
	mov	dptr,#_uart_logn_e_65537_153
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	c
	mov	a,#0x01
	subb	a,r4
	clr	a
	subb	a,r5
	clr	a
	subb	a,r6
	clr	a
	subb	a,r7
	jc	00133$
	ljmp	00109$
00133$:
	Smain$uart_logn$39 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:257: e /= 10;
	mov	dptr,#__divulong_PARM_2
	mov	a,#0x0a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	__divulong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	Smain$uart_logn$40 ==.
	mov	dptr,#_uart_logn_e_65537_153
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	Smain$uart_logn$41 ==.
	Smain$uart_logn$42 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:258: uint32_t res = n / e;
	mov	dptr,#_uart_logn_e_65537_153
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_uart_logn_n_65536_150
	movx	a,@dptr
	mov	_uart_logn_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_uart_logn_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_uart_logn_sloc0_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(_uart_logn_sloc0_1_0 + 3),a
	Smain$uart_logn$43 ==.
	mov	dptr,#__divulong_PARM_2
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	Smain$uart_logn$44 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:259: uart_log(res + '0');
	mov	dpl,_uart_logn_sloc0_1_0
	mov	dph,(_uart_logn_sloc0_1_0 + 1)
	mov	b,(_uart_logn_sloc0_1_0 + 2)
	mov	a,(_uart_logn_sloc0_1_0 + 3)
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	__divulong
	mov	r0,dpl
	mov	a,#0x30
	add	a,r0
	mov	dpl,a
	lcall	_uart_log
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	Smain$uart_logn$45 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:260: n = n % e;
	mov	dptr,#__modulong_PARM_2
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dpl,_uart_logn_sloc0_1_0
	mov	dph,(_uart_logn_sloc0_1_0 + 1)
	mov	b,(_uart_logn_sloc0_1_0 + 2)
	mov	a,(_uart_logn_sloc0_1_0 + 3)
	lcall	__modulong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	dptr,#_uart_logn_n_65536_150
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	ljmp	00106$
00109$:
	Smain$uart_logn$46 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:262: }
	Smain$uart_logn$47 ==.
	XG$uart_logn$0$0 ==.
	ret
	Smain$uart_logn$48 ==.
;------------------------------------------------------------
;Allocation info for local variables in function 'log_init'
;------------------------------------------------------------
	Smain$log_init$49 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:266: void log_init(void)
;	-----------------------------------------
;	 function log_init
;	-----------------------------------------
_log_init:
	Smain$log_init$50 ==.
	Smain$log_init$51 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:268: P16_QUASI_MODE;
	anl	_P1M1,#0xbf
	anl	_P1M2,#0xbf
	Smain$log_init$52 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:269: if( !is_uart_mode ) {
	mov	dptr,#_is_uart_mode
	movx	a,@dptr
	jnz	00103$
	Smain$log_init$53 ==.
	Smain$log_init$54 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:270: UART_Open(24000000,UART1_Timer3,9600);
	mov	dptr,#_UART_Open_PARM_2
	mov	a,#0x02
	movx	@dptr,a
	mov	dptr,#_UART_Open_PARM_3
	mov	a,#0x80
	movx	@dptr,a
	mov	a,#0x25
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x3600
	mov	b,#0x6e
	mov	a,#0x01
	lcall	_UART_Open
	Smain$log_init$55 ==.
00103$:
	Smain$log_init$56 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:272: }
	Smain$log_init$57 ==.
	XG$log_init$0$0 ==.
	ret
	Smain$log_init$58 ==.
;------------------------------------------------------------
;Allocation info for local variables in function 'SerialPort1_ISR'
;------------------------------------------------------------
	Smain$SerialPort1_ISR$59 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:292: void SerialPort1_ISR(void) __interrupt (15)
;	-----------------------------------------
;	 function SerialPort1_ISR
;	-----------------------------------------
_SerialPort1_ISR:
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+7)
	push	(0+6)
	push	(0+5)
	push	(0+4)
	push	(0+3)
	push	(0+2)
	push	(0+1)
	push	(0+0)
	push	psw
	mov	psw,#0x00
	Smain$SerialPort1_ISR$60 ==.
	Smain$SerialPort1_ISR$61 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:294: PUSH_SFRS;
	PUSH	0x91;
	Smain$SerialPort1_ISR$62 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:296: if (RI_1)
	jnb	_RI_1,00102$
	Smain$SerialPort1_ISR$63 ==.
	Smain$SerialPort1_ISR$64 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:298: uart1_rx_buffer[uart1_next_idx] = SBUF_1;
	mov	dptr,#_uart1_next_idx
	movx	a,@dptr
	add	a,#_uart1_rx_buffer
	mov	dpl,a
	clr	a
	addc	a,#(_uart1_rx_buffer >> 8)
	mov	dph,a
	mov	a,_SBUF_1
	movx	@dptr,a
	Smain$SerialPort1_ISR$65 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:299: uart1_next_idx = (uart1_next_idx + 1) % UART_BUFFER_LENGTH;
	mov	dptr,#_uart1_next_idx
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	inc	r7
	cjne	r7,#0x00,00116$
	inc	r6
00116$:
	Smain$SerialPort1_ISR$66 ==.
	mov	dptr,#__modsint_PARM_2
	mov	a,#0x10
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r7
	mov	dph,r6
	lcall	__modsint
	mov	r6,dpl
	mov	r7,dph
	mov	dptr,#_uart1_next_idx
	mov	a,r6
	movx	@dptr,a
	Smain$SerialPort1_ISR$67 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:300: clr_SCON_1_RI_1;                             /* clear reception flag for next reception */
;	assignBit
	clr	_RI_1
00102$:
	Smain$SerialPort1_ISR$68 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:303: if (TI_1 )
	Smain$SerialPort1_ISR$69 ==.
	Smain$SerialPort1_ISR$70 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:305: clr_SCON_1_TI_1;                             // if emission occur
;	assignBit
	jbc	_TI_1,00117$
	sjmp	00104$
00117$:
	Smain$SerialPort1_ISR$71 ==.
00104$:
	Smain$SerialPort1_ISR$72 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:309: POP_SFRS;
	POP	0x91;
	Smain$SerialPort1_ISR$73 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:310: }
	pop	psw
	pop	(0+0)
	pop	(0+1)
	pop	(0+2)
	pop	(0+3)
	pop	(0+4)
	pop	(0+5)
	pop	(0+6)
	pop	(0+7)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	Smain$SerialPort1_ISR$74 ==.
	XG$SerialPort1_ISR$0$0 ==.
	reti
	Smain$SerialPort1_ISR$75 ==.
;------------------------------------------------------------
;Allocation info for local variables in function 'uart_interrupt_init'
;------------------------------------------------------------
	Smain$uart_interrupt_init$76 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:314: void uart_interrupt_init(void)
;	-----------------------------------------
;	 function uart_interrupt_init
;	-----------------------------------------
_uart_interrupt_init:
	Smain$uart_interrupt_init$77 ==.
	Smain$uart_interrupt_init$78 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:316: UART_Open(24000000,UART1_Timer3,9600);
	mov	dptr,#_UART_Open_PARM_2
	mov	a,#0x02
	movx	@dptr,a
	mov	dptr,#_UART_Open_PARM_3
	mov	a,#0x80
	movx	@dptr,a
	mov	a,#0x25
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x3600
	mov	b,#0x6e
	mov	a,#0x01
	lcall	_UART_Open
	Smain$uart_interrupt_init$79 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:318: ENABLE_UART1_INTERRUPT;
	orl	_EIE1,#0x01
	Smain$uart_interrupt_init$80 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:319: }
	Smain$uart_interrupt_init$81 ==.
	XG$uart_interrupt_init$0$0 ==.
	ret
	Smain$uart_interrupt_init$82 ==.
;------------------------------------------------------------
;Allocation info for local variables in function 'PinInterrupt_ISR'
;------------------------------------------------------------
	Smain$PinInterrupt_ISR$83 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:332: void PinInterrupt_ISR(void) __interrupt (7)
;	-----------------------------------------
;	 function PinInterrupt_ISR
;	-----------------------------------------
_PinInterrupt_ISR:
	push	acc
	push	b
	push	dpl
	push	dph
	Smain$PinInterrupt_ISR$84 ==.
	Smain$PinInterrupt_ISR$85 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:334: PUSH_SFRS;
	PUSH	0x91;
	Smain$PinInterrupt_ISR$86 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:336: if( !button_pressed ) {
	mov	dptr,#_button_pressed
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	b,a
	inc	dptr
	movx	a,@dptr
	orl	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz	00102$
	Smain$PinInterrupt_ISR$87 ==.
	Smain$PinInterrupt_ISR$88 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:337: button_pressed = 1;
	mov	dptr,#_button_pressed
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	Smain$PinInterrupt_ISR$89 ==.
00102$:
	Smain$PinInterrupt_ISR$90 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:340: PIF &= CLR_BUTTON_PIN;
	anl	_PIF,#0xfb
	Smain$PinInterrupt_ISR$91 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:342: POP_SFRS;
	POP	0x91;
	Smain$PinInterrupt_ISR$92 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:343: }
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	Smain$PinInterrupt_ISR$93 ==.
	XG$PinInterrupt_ISR$0$0 ==.
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop not_psw
	Smain$PinInterrupt_ISR$94 ==.
;------------------------------------------------------------
;Allocation info for local variables in function 'button_interrupt_init'
;------------------------------------------------------------
	Smain$button_interrupt_init$95 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:347: void button_interrupt_init(void)
;	-----------------------------------------
;	 function button_interrupt_init
;	-----------------------------------------
_button_interrupt_init:
	Smain$button_interrupt_init$96 ==.
	Smain$button_interrupt_init$97 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:350: BUTTON_INPUT_MODE;
	orl	_P0M1,#0x04
	anl	_P0M2,#0xfb
	Smain$button_interrupt_init$98 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:352: BUTTON_PIN = 1;
;	assignBit
	setb	_P02
	Smain$button_interrupt_init$99 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:354: BUTTON_INITIALIZE_EDGE_TRIGGER;
	mov	_PICON,#0x00
	orl	_PICON,#0x10
	orl	_PINEN,#0x04
	orl	_PIPEN,#0x04
	Smain$button_interrupt_init$100 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:355: ENABLE_PIN_INTERRUPT;
	orl	_EIE,#0x02
	Smain$button_interrupt_init$101 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:356: }
	Smain$button_interrupt_init$102 ==.
	XG$button_interrupt_init$0$0 ==.
	ret
	Smain$button_interrupt_init$103 ==.
;------------------------------------------------------------
;Allocation info for local variables in function 'enable_ntc'
;------------------------------------------------------------
	Smain$enable_ntc$104 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:358: void enable_ntc( void )
;	-----------------------------------------
;	 function enable_ntc
;	-----------------------------------------
_enable_ntc:
	Smain$enable_ntc$105 ==.
	Smain$enable_ntc$106 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:365: }
	Smain$enable_ntc$107 ==.
	XG$enable_ntc$0$0 ==.
	ret
	Smain$enable_ntc$108 ==.
;------------------------------------------------------------
;Allocation info for local variables in function 'disable_ntc'
;------------------------------------------------------------
	Smain$disable_ntc$109 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:367: void disable_ntc( void )
;	-----------------------------------------
;	 function disable_ntc
;	-----------------------------------------
_disable_ntc:
	Smain$disable_ntc$110 ==.
	Smain$disable_ntc$111 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:374: }
	Smain$disable_ntc$112 ==.
	XG$disable_ntc$0$0 ==.
	ret
	Smain$disable_ntc$113 ==.
;------------------------------------------------------------
;Allocation info for local variables in function 'init_sample'
;------------------------------------------------------------
;i                         Allocated with name '_init_sample_i_131072_178'
;------------------------------------------------------------
	Smain$init_sample$114 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:376: void init_sample( void )
;	-----------------------------------------
;	 function init_sample
;	-----------------------------------------
_init_sample:
	Smain$init_sample$115 ==.
	Smain$init_sample$116 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:378: sample_count = 0;
	mov	dptr,#_sample_count
	clr	a
	movx	@dptr,a
	Smain$init_sample$117 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:379: acc_temp = 0;
	mov	dptr,#_acc_temp
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	Smain$init_sample$118 ==.
	Smain$init_sample$119 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:381: for( int i = 0; i < NUM_LEDS; i++ ) {
	Smain$init_sample$120 ==.
	mov	r6,#0x00
	mov	r7,#0x00
	Smain$init_sample$121 ==.
00103$:
	clr	c
	mov	a,r6
	subb	a,#0x02
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00101$
	Smain$init_sample$122 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:382: acc_amp[i] = 0;
	mov	a,r6
	add	a,r6
	mov	r4,a
	mov	a,r7
	rlc	a
	mov	r5,a
	mov	a,r4
	add	a,r4
	mov	r4,a
	mov	a,r5
	rlc	a
	mov	r5,a
	mov	a,r4
	add	a,#_acc_amp
	mov	dpl,a
	mov	a,r5
	addc	a,#(_acc_amp >> 8)
	mov	dph,a
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	Smain$init_sample$123 ==.
	Smain$init_sample$124 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:381: for( int i = 0; i < NUM_LEDS; i++ ) {
	inc	r6
	cjne	r6,#0x00,00103$
	inc	r7
	sjmp	00103$
00101$:
	Smain$init_sample$125 ==.
	Smain$init_sample$126 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:385: flashing_on = true;
	mov	dptr,#_flashing_on
	mov	a,#0x01
	movx	@dptr,a
	Smain$init_sample$127 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:386: }
	Smain$init_sample$128 ==.
	XG$init_sample$0$0 ==.
	ret
	Smain$init_sample$129 ==.
;------------------------------------------------------------
;Allocation info for local variables in function 'init_peripherals_but_button_n_uart'
;------------------------------------------------------------
	Smain$init_peripherals_but_button_n_uart$130 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:390: void init_peripherals_but_button_n_uart(void)
;	-----------------------------------------
;	 function init_peripherals_but_button_n_uart
;	-----------------------------------------
_init_peripherals_but_button_n_uart:
	Smain$init_peripherals_but_button_n_uart$131 ==.
	Smain$init_peripherals_but_button_n_uart$132 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:392: ENABLE_GLOBAL_INTERRUPT;
;	assignBit
	setb	_EA
	Smain$init_peripherals_but_button_n_uart$133 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:395: ADCCON1 |= 0X30;  // ADC clock src = Fsys / 8
	orl	_ADCCON1,#0x30
	Smain$init_peripherals_but_button_n_uart$134 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:396: ADCCON2 |= 0x0E;  // ADC sample time = 32 (max)
	orl	_ADCCON2,#0x0e
	Smain$init_peripherals_but_button_n_uart$135 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:398: NTC_INPUT_MODE; // check point
	orl	_P0M1,#0x40
	anl	_P0M2,#0xbf
	Smain$init_peripherals_but_button_n_uart$136 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:402: clr_CKCON_PWMCKS; // PWM in FSYS freq.
	anl	_CKCON,#0xbf
	Smain$init_peripherals_but_button_n_uart$137 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:403: PWM0_CLOCK_DIV_1; // PWM div = 1
	anl	_PWMCON1,#0xf8
	mov	_PWMCON1,_PWMCON1
	Smain$init_peripherals_but_button_n_uart$138 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:405: ENABLE_PWM0_CH4_P01_OUTPUT; // LED2
	orl	_PIOCON0,#0x10
	Smain$init_peripherals_but_button_n_uart$139 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:406: P01_PUSHPULL_MODE;
	anl	_P0M1,#0xfd
	orl	_P0M2,#0x02
	Smain$init_peripherals_but_button_n_uart$140 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:408: ENABLE_PWM0_CH2_P05_OUTPUT; // LED1/3
;	assignBit
	mov	c,_EA
	mov	_BIT_TMP,c
;	assignBit
	clr	_EA
	mov	_TA,#0xaa
	mov	_TA,#0x55
	mov	_SFRS,#0x01
;	assignBit
	mov	c,_BIT_TMP
	mov	_EA,c
	orl	_PIOCON1,#0x04
;	assignBit
	mov	c,_EA
	mov	_BIT_TMP,c
;	assignBit
	clr	_EA
	mov	_TA,#0xaa
	mov	_TA,#0x55
	mov	_SFRS,#0x00
;	assignBit
	mov	c,_BIT_TMP
	mov	_EA,c
	Smain$init_peripherals_but_button_n_uart$141 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:409: P05_PUSHPULL_MODE;
	anl	_P0M1,#0xdf
	orl	_P0M2,#0x20
	Smain$init_peripherals_but_button_n_uart$142 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:411: clr_PWMCON0_PWMRUN;
;	assignBit
	clr	_PWMRUN
	Smain$init_peripherals_but_button_n_uart$143 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:412: set_SFRS_SFRPAGE;
;	assignBit
	mov	c,_EA
	mov	_BIT_TMP,c
;	assignBit
	clr	_EA
	mov	_TA,#0xaa
	mov	_TA,#0x55
	mov	_SFRS,#0x01
;	assignBit
	mov	c,_BIT_TMP
	mov	_EA,c
	Smain$init_peripherals_but_button_n_uart$144 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:414: PWMPH = 0;
	mov	_PWMPH,#0x00
	Smain$init_peripherals_but_button_n_uart$145 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:415: PWMPL = MAX_PWM; // 255 bit PWM
	mov	_PWMPL,#0xff
	Smain$init_peripherals_but_button_n_uart$146 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:417: PWM2L = 0;
	mov	_PWM2L,#0x00
	Smain$init_peripherals_but_button_n_uart$147 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:418: PWM2H = 0;
	mov	_PWM2H,#0x00
	Smain$init_peripherals_but_button_n_uart$148 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:419: PWM4L = 0;
	mov	_PWM4L,#0x00
	Smain$init_peripherals_but_button_n_uart$149 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:420: PWM4H = 0;
	mov	_PWM4H,#0x00
	Smain$init_peripherals_but_button_n_uart$150 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:422: clr_SFRS_SFRPAGE;
;	assignBit
	mov	c,_EA
	mov	_BIT_TMP,c
;	assignBit
	clr	_EA
	mov	_TA,#0xaa
	mov	_TA,#0x55
	mov	_SFRS,#0x00
;	assignBit
	mov	c,_BIT_TMP
	mov	_EA,c
	Smain$init_peripherals_but_button_n_uart$151 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:423: set_PWMCON0_PWMRUN;
;	assignBit
	setb	_PWMRUN
	Smain$init_peripherals_but_button_n_uart$152 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:425: light_control_mode[0] = MODE_STABLE;
	mov	dptr,#_light_control_mode
	clr	a
	movx	@dptr,a
	Smain$init_peripherals_but_button_n_uart$153 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:426: light_control_mode[1] = MODE_STABLE;
	mov	dptr,#(_light_control_mode + 0x0001)
	movx	@dptr,a
	Smain$init_peripherals_but_button_n_uart$154 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:428: enable_ntc();
	lcall	_enable_ntc
	Smain$init_peripherals_but_button_n_uart$155 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:430: init_sample();
	lcall	_init_sample
	Smain$init_peripherals_but_button_n_uart$156 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:431: flashing_count = 0;
	mov	dptr,#_flashing_count
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	Smain$init_peripherals_but_button_n_uart$157 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:432: }
	Smain$init_peripherals_but_button_n_uart$158 ==.
	XG$init_peripherals_but_button_n_uart$0$0 ==.
	ret
	Smain$init_peripherals_but_button_n_uart$159 ==.
;------------------------------------------------------------
;Allocation info for local variables in function 'sample_amps'
;------------------------------------------------------------
	Smain$sample_amps$160 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:434: void sample_amps( void )
;	-----------------------------------------
;	 function sample_amps
;	-----------------------------------------
_sample_amps:
	Smain$sample_amps$161 ==.
	Smain$sample_amps$162 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:437: ENABLE_ADC_LED1;
;	assignBit
	mov	c,_EA
	mov	_BIT_TMP,c
;	assignBit
	clr	_EA
	mov	_TA,#0xaa
	mov	_TA,#0x55
	mov	_SFRS,#0x00
;	assignBit
	mov	c,_BIT_TMP
	mov	_EA,c
	anl	_ADCCON1,#0xfe
	anl	_ADCCON0,#0xf0
	orl	_ADCCON0,#0x06
	orl	_P0M1,#0x08
	anl	_P0M2,#0xf7
	mov	_AINDIDS,#0x00
	orl	_AINDIDS,#0x40
;	assignBit
	mov	c,_EA
	mov	_BIT_TMP,c
;	assignBit
	clr	_EA
	mov	_TA,#0xaa
	mov	_TA,#0x55
	mov	_SFRS,#0x00
;	assignBit
	mov	c,_BIT_TMP
	mov	_EA,c
	orl	_ADCCON1,#0x01
	Smain$sample_amps$163 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:439: clr_ADCCON0_ADCF;
;	assignBit
	mov	c,_EA
	mov	_BIT_TMP,c
;	assignBit
	clr	_EA
	mov	_TA,#0xaa
	mov	_TA,#0x55
	mov	_SFRS,#0x00
;	assignBit
	mov	c,_BIT_TMP
	mov	_EA,c
;	assignBit
	clr	_ADCF
	Smain$sample_amps$164 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:440: set_ADCCON0_ADCS;
;	assignBit
	mov	c,_EA
	mov	_BIT_TMP,c
;	assignBit
	clr	_EA
	mov	_TA,#0xaa
	mov	_TA,#0x55
	mov	_SFRS,#0x00
;	assignBit
	mov	c,_BIT_TMP
	mov	_EA,c
;	assignBit
	setb	_ADCS
	Smain$sample_amps$165 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:442: while( ADCF == 0 );
00101$:
	jnb	_ADCF,00101$
	Smain$sample_amps$166 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:443: cur_amp[LED1_IDX] = (((uint16_t)ADCRH) << 4 ) | (ADCRL & 0xF);
	mov	r6,_ADCRH
	clr	a
	swap	a
	anl	a,#0xf0
	xch	a,r6
	swap	a
	xch	a,r6
	xrl	a,r6
	xch	a,r6
	anl	a,#0xf0
	xch	a,r6
	xrl	a,r6
	mov	r7,a
	mov	r4,_ADCRL
	anl	ar4,#0x0f
	mov	r5,#0x00
	mov	a,r6
	orl	ar4,a
	mov	a,r7
	orl	ar5,a
	mov	dptr,#_cur_amp
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	Smain$sample_amps$167 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:445: DISABLE_ADC;
;	assignBit
	mov	c,_EA
	mov	_BIT_TMP,c
;	assignBit
	clr	_EA
	mov	_TA,#0xaa
	mov	_TA,#0x55
	mov	_SFRS,#0x00
;	assignBit
	mov	c,_BIT_TMP
	mov	_EA,c
	anl	_ADCCON1,#0xfe
	Smain$sample_amps$168 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:448: ENABLE_ADC_LED2;
;	assignBit
	mov	c,_EA
	mov	_BIT_TMP,c
;	assignBit
	clr	_EA
	mov	_TA,#0xaa
	mov	_TA,#0x55
	mov	_SFRS,#0x00
;	assignBit
	mov	c,_BIT_TMP
	mov	_EA,c
	anl	_ADCCON1,#0xfe
	anl	_ADCCON0,#0xf0
	orl	_ADCCON0,#0x05
	orl	_P0M1,#0x10
	anl	_P0M2,#0xef
	mov	_AINDIDS,#0x00
	orl	_AINDIDS,#0x20
;	assignBit
	mov	c,_EA
	mov	_BIT_TMP,c
;	assignBit
	clr	_EA
	mov	_TA,#0xaa
	mov	_TA,#0x55
	mov	_SFRS,#0x00
;	assignBit
	mov	c,_BIT_TMP
	mov	_EA,c
	orl	_ADCCON1,#0x01
	Smain$sample_amps$169 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:450: clr_ADCCON0_ADCF;
;	assignBit
	mov	c,_EA
	mov	_BIT_TMP,c
;	assignBit
	clr	_EA
	mov	_TA,#0xaa
	mov	_TA,#0x55
	mov	_SFRS,#0x00
;	assignBit
	mov	c,_BIT_TMP
	mov	_EA,c
;	assignBit
	clr	_ADCF
	Smain$sample_amps$170 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:451: set_ADCCON0_ADCS;
;	assignBit
	mov	c,_EA
	mov	_BIT_TMP,c
;	assignBit
	clr	_EA
	mov	_TA,#0xaa
	mov	_TA,#0x55
	mov	_SFRS,#0x00
;	assignBit
	mov	c,_BIT_TMP
	mov	_EA,c
;	assignBit
	setb	_ADCS
	Smain$sample_amps$171 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:453: while( ADCF == 0 );
00104$:
	jnb	_ADCF,00104$
	Smain$sample_amps$172 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:454: cur_amp[LED2_IDX] = (((uint16_t)ADCRH) << 4 ) | (ADCRL & 0xF);
	mov	r6,_ADCRH
	clr	a
	swap	a
	anl	a,#0xf0
	xch	a,r6
	swap	a
	xch	a,r6
	xrl	a,r6
	xch	a,r6
	anl	a,#0xf0
	xch	a,r6
	xrl	a,r6
	mov	r7,a
	mov	r4,_ADCRL
	anl	ar4,#0x0f
	mov	r5,#0x00
	mov	a,r6
	orl	ar4,a
	mov	a,r7
	orl	ar5,a
	mov	dptr,#(_cur_amp + 0x0002)
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	Smain$sample_amps$173 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:456: DISABLE_ADC;
;	assignBit
	mov	c,_EA
	mov	_BIT_TMP,c
;	assignBit
	clr	_EA
	mov	_TA,#0xaa
	mov	_TA,#0x55
	mov	_SFRS,#0x00
;	assignBit
	mov	c,_BIT_TMP
	mov	_EA,c
	anl	_ADCCON1,#0xfe
	Smain$sample_amps$174 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:457: }
	Smain$sample_amps$175 ==.
	XG$sample_amps$0$0 ==.
	ret
	Smain$sample_amps$176 ==.
;------------------------------------------------------------
;Allocation info for local variables in function 'sample_temperature'
;------------------------------------------------------------
	Smain$sample_temperature$177 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:459: void sample_temperature( void )
;	-----------------------------------------
;	 function sample_temperature
;	-----------------------------------------
_sample_temperature:
	Smain$sample_temperature$178 ==.
	Smain$sample_temperature$179 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:462: ENABLE_ADC_NTC;
;	assignBit
	mov	c,_EA
	mov	_BIT_TMP,c
;	assignBit
	clr	_EA
	mov	_TA,#0xaa
	mov	_TA,#0x55
	mov	_SFRS,#0x00
;	assignBit
	mov	c,_BIT_TMP
	mov	_EA,c
	anl	_ADCCON1,#0xfe
	anl	_ADCCON0,#0xf0
	orl	_ADCCON0,#0x03
	orl	_P0M1,#0x40
	anl	_P0M2,#0xbf
	mov	_AINDIDS,#0x00
	orl	_AINDIDS,#0x08
;	assignBit
	mov	c,_EA
	mov	_BIT_TMP,c
;	assignBit
	clr	_EA
	mov	_TA,#0xaa
	mov	_TA,#0x55
	mov	_SFRS,#0x00
;	assignBit
	mov	c,_BIT_TMP
	mov	_EA,c
	orl	_ADCCON1,#0x01
	Smain$sample_temperature$180 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:464: clr_ADCCON0_ADCF;
;	assignBit
	mov	c,_EA
	mov	_BIT_TMP,c
;	assignBit
	clr	_EA
	mov	_TA,#0xaa
	mov	_TA,#0x55
	mov	_SFRS,#0x00
;	assignBit
	mov	c,_BIT_TMP
	mov	_EA,c
;	assignBit
	clr	_ADCF
	Smain$sample_temperature$181 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:465: set_ADCCON0_ADCS;
;	assignBit
	mov	c,_EA
	mov	_BIT_TMP,c
;	assignBit
	clr	_EA
	mov	_TA,#0xaa
	mov	_TA,#0x55
	mov	_SFRS,#0x00
;	assignBit
	mov	c,_BIT_TMP
	mov	_EA,c
;	assignBit
	setb	_ADCS
	Smain$sample_temperature$182 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:467: while( ADCF == 0 );
00101$:
	jnb	_ADCF,00101$
	Smain$sample_temperature$183 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:468: acc_temp += (((uint16_t)ADCRH) << 4 ) | (ADCRL & 0xF);
	mov	r6,_ADCRH
	clr	a
	swap	a
	anl	a,#0xf0
	xch	a,r6
	swap	a
	xch	a,r6
	xrl	a,r6
	xch	a,r6
	anl	a,#0xf0
	xch	a,r6
	xrl	a,r6
	mov	r7,a
	mov	r4,_ADCRL
	anl	ar4,#0x0f
	mov	r5,#0x00
	mov	a,r6
	orl	ar4,a
	mov	a,r7
	orl	ar5,a
	mov	dptr,#_acc_temp
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	ar0,r4
	mov	ar1,r5
	mov	r4,#0x00
	mov	r5,#0x00
	mov	dptr,#_acc_temp
	mov	a,r0
	add	a,r2
	movx	@dptr,a
	mov	a,r1
	addc	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	addc	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	addc	a,r7
	inc	dptr
	movx	@dptr,a
	Smain$sample_temperature$184 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:470: DISABLE_ADC;
;	assignBit
	mov	c,_EA
	mov	_BIT_TMP,c
;	assignBit
	clr	_EA
	mov	_TA,#0xaa
	mov	_TA,#0x55
	mov	_SFRS,#0x00
;	assignBit
	mov	c,_BIT_TMP
	mov	_EA,c
	anl	_ADCCON1,#0xfe
	Smain$sample_temperature$185 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:472: }
	Smain$sample_temperature$186 ==.
	XG$sample_temperature$0$0 ==.
	ret
	Smain$sample_temperature$187 ==.
;------------------------------------------------------------
;Allocation info for local variables in function 'has_high_beam'
;------------------------------------------------------------
;mode                      Allocated with name '_has_high_beam_mode_65536_186'
;------------------------------------------------------------
	Smain$has_high_beam$188 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:474: int8_t has_high_beam( int8_t mode )
;	-----------------------------------------
;	 function has_high_beam
;	-----------------------------------------
_has_high_beam:
	Smain$has_high_beam$189 ==.
	mov	a,dpl
	mov	dptr,#_has_high_beam_mode_65536_186
	movx	@dptr,a
	Smain$has_high_beam$190 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:476: return (max_amp[mode][0] > 0);
	movx	a,@dptr
	mov	r7,a
	clr	F0
	mov	b,#0x02
	mov	a,r7
	jnb	acc.7,00109$
	cpl	F0
	cpl	a
	inc	a
00109$:
	mul	ab
	jnb	F0,00110$
	cpl	a
	add	a,#0x01
	xch	a,b
	cpl	a
	addc	a,#0x00
	xch	a,b
00110$:
	add	a,#_max_amp
	mov	r6,a
	mov	a,#(_max_amp >> 8)
	addc	a,b
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	clr	a
	movc	a,@a+dptr
	jz	00103$
	mov	r6,#0x01
	mov	r7,#0x00
	sjmp	00104$
00103$:
	mov	r6,#0x00
	mov	r7,#0x00
00104$:
	mov	dpl,r6
	Smain$has_high_beam$191 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:477: }
	Smain$has_high_beam$192 ==.
	XG$has_high_beam$0$0 ==.
	ret
	Smain$has_high_beam$193 ==.
;------------------------------------------------------------
;Allocation info for local variables in function 'avg_amp'
;------------------------------------------------------------
;idx                       Allocated with name '_avg_amp_idx_65536_188'
;------------------------------------------------------------
	Smain$avg_amp$194 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:479: uint16_t avg_amp( uint8_t idx ) {
;	-----------------------------------------
;	 function avg_amp
;	-----------------------------------------
_avg_amp:
	Smain$avg_amp$195 ==.
	mov	a,dpl
	mov	dptr,#_avg_amp_idx_65536_188
	movx	@dptr,a
	Smain$avg_amp$196 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:480: if( sample_count > 0 ) {
	mov	dptr,#_sample_count
	movx	a,@dptr
	mov	r7,a
	movx	a,@dptr
	jz	00102$
	Smain$avg_amp$197 ==.
	Smain$avg_amp$198 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:481: return acc_amp[idx] / sample_count;
	mov	dptr,#_avg_amp_idx_65536_188
	movx	a,@dptr
	mov	b,#0x04
	mul	ab
	add	a,#_acc_amp
	mov	dpl,a
	mov	a,#(_acc_amp >> 8)
	addc	a,b
	mov	dph,a
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#__divulong_PARM_2
	mov	a,r7
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	Smain$avg_amp$199 ==.
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,r6
	lcall	__divulong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	sjmp	00104$
00102$:
	Smain$avg_amp$200 ==.
	Smain$avg_amp$201 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:483: return cur_amp[idx];
	mov	dptr,#_avg_amp_idx_65536_188
	movx	a,@dptr
	mov	b,#0x02
	mul	ab
	add	a,#_cur_amp
	mov	dpl,a
	mov	a,#(_cur_amp >> 8)
	addc	a,b
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	Smain$avg_amp$202 ==.
	Smain$avg_amp$203 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:485: }
	Smain$avg_amp$204 ==.
	XG$avg_amp$0$0 ==.
	mov	dpl,r6
	mov	dph,a
00104$:
	ret
	Smain$avg_amp$205 ==.
;------------------------------------------------------------
;Allocation info for local variables in function 'target_amp'
;------------------------------------------------------------
;idx                       Allocated with name '_target_amp_PARM_2'
;mode                      Allocated with name '_target_amp_mode_65536_192'
;m                         Allocated with name '_target_amp_m_196608_196'
;a                         Allocated with name '_target_amp_a_196608_196'
;------------------------------------------------------------
	Smain$target_amp$206 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:487: uint8_t target_amp( uint8_t mode, uint8_t idx ) {
;	-----------------------------------------
;	 function target_amp
;	-----------------------------------------
_target_amp:
	Smain$target_amp$207 ==.
	mov	a,dpl
	mov	dptr,#_target_amp_mode_65536_192
	movx	@dptr,a
	Smain$target_amp$208 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:488: if( temp_controlling[mode] && cur_temp > MAX_TEMP ) {
	movx	a,@dptr
	mov	r7,a
	add	a,#_temp_controlling
	mov	r5,a
	clr	a
	addc	a,#(_temp_controlling >> 8)
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	clr	a
	movc	a,@a+dptr
	jnz	00122$
	ljmp	00105$
00122$:
	mov	dptr,#_cur_temp
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	ar3,r5
	mov	ar4,r6
	clr	c
	mov	a,#0x80
	subb	a,r3
	mov	a,#0x0c
	subb	a,r4
	jc	00123$
	ljmp	00105$
00123$:
	Smain$target_amp$209 ==.
	Smain$target_amp$210 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:489: if( cur_temp > ABS_MAX_TEMP ) {
	clr	c
	mov	a,#0x16
	subb	a,r3
	mov	a,#0x0d
	subb	a,r4
	jnc	00102$
	Smain$target_amp$211 ==.
	Smain$target_amp$212 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:490: return max_amp[mode][idx] >> 1;
	mov	a,r7
	mov	b,#0x02
	mul	ab
	add	a,#_max_amp
	mov	r3,a
	mov	a,#(_max_amp >> 8)
	addc	a,b
	mov	r4,a
	mov	dptr,#_target_amp_PARM_2
	movx	a,@dptr
	mov	r2,a
	add	a,r3
	mov	dpl,a
	clr	a
	addc	a,r4
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	clr	c
	rrc	a
	mov	r4,a
	mov	dpl,a
	ljmp	00108$
	Smain$target_amp$213 ==.
00102$:
	Smain$target_amp$214 ==.
	Smain$target_amp$215 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:492: uint32_t m = max_amp[mode][idx];
	mov	a,r7
	mov	b,#0x02
	mul	ab
	add	a,#_max_amp
	mov	r4,a
	mov	a,#(_max_amp >> 8)
	addc	a,b
	mov	r7,a
	mov	dptr,#_target_amp_PARM_2
	movx	a,@dptr
	add	a,r4
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	Smain$target_amp$216 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:493: uint32_t a = m * (ABS_MAX_TEMP - cur_temp) / (ABS_MAX_TEMP - MAX_TEMP);
	clr	a
	mov	r4,a
	mov	r3,a
	mov	r2,a
	mov	a,#0x16
	clr	c
	subb	a,r5
	mov	r5,a
	mov	a,#0x0d
	subb	a,r6
	mov	r6,a
	mov	dptr,#__mullong_PARM_2
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	Smain$target_amp$217 ==.
	mov	dpl,r7
	mov	dph,r4
	mov	b,r3
	mov	a,r2
	push	ar7
	push	ar4
	push	ar3
	push	ar2
	lcall	__mullong
	mov	r0,dpl
	mov	r1,dph
	mov	r5,b
	mov	r6,a
	mov	dptr,#__divulong_PARM_2
	mov	a,#0x96
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	Smain$target_amp$218 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:494: return (m >> 1) + (a >> 2) + (a >> 4);
	mov	dpl,r0
	mov	dph,r1
	mov	b,r5
	mov	a,r6
	lcall	__divulong
	mov	r0,dpl
	mov	r1,dph
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar7
	mov	a,r4
	clr	c
	rrc	a
	xch	a,r7
	rrc	a
	xch	a,r7
	mov	r4,a
	mov	ar5,r0
	mov	a,r1
	clr	c
	rrc	a
	xch	a,r5
	rrc	a
	xch	a,r5
	clr	c
	rrc	a
	xch	a,r5
	rrc	a
	xch	a,r5
	mov	r6,a
	mov	a,r5
	add	a,r7
	mov	r7,a
	mov	a,r1
	swap	a
	xch	a,r0
	swap	a
	anl	a,#0x0f
	xrl	a,r0
	xch	a,r0
	anl	a,#0x0f
	xch	a,r0
	xrl	a,r0
	xch	a,r0
	mov	r1,a
	mov	a,r0
	add	a,r7
	mov	r7,a
	mov	dpl,a
	sjmp	00108$
00105$:
	Smain$target_amp$219 ==.
	Smain$target_amp$220 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:497: return max_amp[mode][idx];
	mov	dptr,#_target_amp_mode_65536_192
	movx	a,@dptr
	mov	b,#0x02
	mul	ab
	add	a,#_max_amp
	mov	r6,a
	mov	a,#(_max_amp >> 8)
	addc	a,b
	mov	r7,a
	mov	dptr,#_target_amp_PARM_2
	movx	a,@dptr
	mov	r5,a
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	Smain$target_amp$221 ==.
	Smain$target_amp$222 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:499: }
	Smain$target_amp$223 ==.
	XG$target_amp$0$0 ==.
	mov	dpl,a
00108$:
	ret
	Smain$target_amp$224 ==.
;------------------------------------------------------------
;Allocation info for local variables in function 'changeMode'
;------------------------------------------------------------
;new_mode                  Allocated with name '_changeMode_new_mode_65536_198'
;i                         Allocated with name '_changeMode_i_131072_200'
;target                    Allocated with name '_changeMode_target_196608_201'
;i                         Allocated with name '_changeMode_i_131072_205'
;i                         Allocated with name '_changeMode_i_196608_208'
;------------------------------------------------------------
	Smain$changeMode$225 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:512: void changeMode(uint8_t new_mode)
;	-----------------------------------------
;	 function changeMode
;	-----------------------------------------
_changeMode:
	Smain$changeMode$226 ==.
	mov	a,dpl
	mov	dptr,#_changeMode_new_mode_65536_198
	movx	@dptr,a
	Smain$changeMode$227 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:514: if( new_mode == light_mode ) return;
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_light_mode
	movx	a,@dptr
	mov	r6,a
	mov	a,r7
	cjne	a,ar6,00102$
	ljmp	00134$
00102$:
	Smain$changeMode$228 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:515: if( new_mode > LIGHT_MODE_MAX ) return;
	mov	a,r7
	add	a,#0xff - 0x09
	jnc	00104$
	ljmp	00134$
00104$:
	Smain$changeMode$229 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:516: if( next_mode[new_mode] == 0 ) return;
	mov	a,r7
	add	a,#_next_mode
	mov	r5,a
	clr	a
	addc	a,#(_next_mode >> 8)
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	clr	a
	movc	a,@a+dptr
	jnz	00144$
	ljmp	00134$
	Smain$changeMode$230 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:518: for( int i = 0; i < NUM_LEDS; i++ ) {
00144$:
	Smain$changeMode$231 ==.
	Smain$changeMode$232 ==.
	Smain$changeMode$233 ==.
	Smain$changeMode$233 ==.
	Smain$changeMode$234 ==.
	Smain$changeMode$234 ==.
	Smain$changeMode$235 ==.
	mov	r5,#0x00
	mov	r6,#0x00
	Smain$changeMode$236 ==.
00126$:
	clr	c
	mov	a,r5
	subb	a,#0x02
	mov	a,r6
	xrl	a,#0x80
	subb	a,#0x80
	jc	00211$
	ljmp	00116$
00211$:
	Smain$changeMode$237 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:519: int16_t target = target_amp(new_mode, i);
	mov	dptr,#_target_amp_PARM_2
	mov	a,r5
	movx	@dptr,a
	mov	dpl,r7
	push	ar7
	push	ar6
	push	ar5
	lcall	_target_amp
	mov	r4,dpl
	pop	ar5
	pop	ar6
	pop	ar7
	mov	ar2,r4
	mov	r3,#0x00
	Smain$changeMode$238 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:520: if( target == 0 && pwm[i] > 0 ) { // 켜져있는 상태에서 끄고자할 때
	mov	a,r4
	jnz	00113$
	mov	a,r5
	add	a,r5
	mov	r1,a
	mov	a,r6
	rlc	a
	mov	r4,a
	mov	a,r1
	add	a,#_pwm
	mov	dpl,a
	mov	a,r4
	addc	a,#(_pwm >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	orl	a,r1
	jz	00113$
	Smain$changeMode$239 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:521: light_control_mode[i] = MODE_CHANGING_OFF;
	mov	a,r5
	add	a,#_light_control_mode
	mov	dpl,a
	mov	a,r6
	addc	a,#(_light_control_mode >> 8)
	mov	dph,a
	mov	a,#0x01
	movx	@dptr,a
	sjmp	00127$
00113$:
	Smain$changeMode$240 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:522: } else if( target > avg_amp(i) ) {
	mov	ar4,r5
	mov	dpl,r4
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_avg_amp
	mov	r0,dpl
	mov	r1,dph
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	clr	c
	mov	a,r0
	subb	a,r2
	mov	a,r1
	subb	a,r3
	jnc	00110$
	Smain$changeMode$241 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:523: light_control_mode[i] = MODE_CHANGING_UP;
	mov	a,r5
	add	a,#_light_control_mode
	mov	dpl,a
	mov	a,r6
	addc	a,#(_light_control_mode >> 8)
	mov	dph,a
	mov	a,#0x02
	movx	@dptr,a
	sjmp	00127$
00110$:
	Smain$changeMode$242 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:524: } else if( target < avg_amp(i) ) {
	mov	dpl,r4
	push	ar7
	push	ar6
	push	ar5
	push	ar3
	push	ar2
	lcall	_avg_amp
	mov	r1,dpl
	mov	r4,dph
	pop	ar2
	pop	ar3
	pop	ar5
	pop	ar6
	pop	ar7
	clr	c
	mov	a,r2
	subb	a,r1
	mov	a,r3
	subb	a,r4
	jnc	00127$
	Smain$changeMode$243 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:525: light_control_mode[i] = MODE_CHANGING_DOWN;
	mov	a,r5
	add	a,#_light_control_mode
	mov	dpl,a
	mov	a,r6
	addc	a,#(_light_control_mode >> 8)
	mov	dph,a
	mov	a,#0x03
	movx	@dptr,a
00127$:
	Smain$changeMode$244 ==.
	Smain$changeMode$245 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:518: for( int i = 0; i < NUM_LEDS; i++ ) {
	inc	r5
	cjne	r5,#0x00,00216$
	inc	r6
00216$:
	ljmp	00126$
00116$:
	Smain$changeMode$246 ==.
	Smain$changeMode$247 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:531: init_sample();
	lcall	_init_sample
	Smain$changeMode$248 ==.
	Smain$changeMode$249 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:532: for( int i = 0; i < NUM_LEDS; i++ ) {
	Smain$changeMode$250 ==.
	mov	r6,#0x00
	mov	r7,#0x00
	Smain$changeMode$251 ==.
00129$:
	clr	c
	mov	a,r6
	subb	a,#0x02
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00117$
	Smain$changeMode$252 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:533: good_amp_count[i] = 0;
	mov	a,r6
	add	a,#_good_amp_count
	mov	dpl,a
	mov	a,r7
	addc	a,#(_good_amp_count >> 8)
	mov	dph,a
	clr	a
	movx	@dptr,a
	Smain$changeMode$253 ==.
	Smain$changeMode$254 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:532: for( int i = 0; i < NUM_LEDS; i++ ) {
	inc	r6
	cjne	r6,#0x00,00129$
	inc	r7
	sjmp	00129$
00117$:
	Smain$changeMode$255 ==.
	Smain$changeMode$256 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:536: if( light_mode != LIGHT_OFF && new_mode != LIGHT_OFF ) {
	mov	dptr,#_light_mode
	movx	a,@dptr
	jz	00123$
	mov	dptr,#_changeMode_new_mode_65536_198
	movx	a,@dptr
	mov	r7,a
	movx	a,@dptr
	jz	00123$
	Smain$changeMode$257 ==.
	Smain$changeMode$258 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:537: for( int i = 0; i < NUM_LEDS; i++ ) {
	Smain$changeMode$259 ==.
	Smain$changeMode$259 ==.
	mov	a,r7
	mov	b,#0x02
	mul	ab
	mov	r6,a
	mov	r7,b
	Smain$changeMode$260 ==.
	mov	r4,#0x00
	mov	r5,#0x00
	Smain$changeMode$261 ==.
00132$:
	clr	c
	mov	a,r4
	subb	a,#0x02
	mov	a,r5
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00123$
	Smain$changeMode$262 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:538: if( max_amp[light_mode][i] == 0 && max_amp[new_mode][i] > 0 ) {
	mov	dptr,#_light_mode
	movx	a,@dptr
	mov	b,#0x02
	mul	ab
	add	a,#_max_amp
	mov	r2,a
	mov	a,#(_max_amp >> 8)
	addc	a,b
	mov	r3,a
	mov	a,r4
	add	a,r2
	mov	r2,a
	mov	a,r5
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	clr	a
	movc	a,@a+dptr
	jnz	00133$
	mov	a,r6
	add	a,#_max_amp
	mov	r2,a
	mov	a,r7
	addc	a,#(_max_amp >> 8)
	mov	r3,a
	mov	a,r4
	add	a,r2
	mov	r2,a
	mov	a,r5
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	clr	a
	movc	a,@a+dptr
	jz	00133$
	Smain$changeMode$263 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:539: pwm[i] = MIN_PWM_ON;
	mov	a,r4
	add	a,r4
	mov	r2,a
	mov	a,r5
	rlc	a
	mov	r3,a
	mov	a,r2
	add	a,#_pwm
	mov	dpl,a
	mov	a,r3
	addc	a,#(_pwm >> 8)
	mov	dph,a
	mov	a,#0x3c
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
00133$:
	Smain$changeMode$264 ==.
	Smain$changeMode$265 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:537: for( int i = 0; i < NUM_LEDS; i++ ) {
	inc	r4
	Smain$changeMode$266 ==.
	cjne	r4,#0x00,00132$
	inc	r5
	sjmp	00132$
00123$:
	Smain$changeMode$267 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:543: light_mode = new_mode;
	mov	dptr,#_changeMode_new_mode_65536_198
	movx	a,@dptr
	mov	dptr,#_light_mode
	movx	@dptr,a
	Smain$changeMode$268 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:545: LS_LOG('C');
	mov	dpl,#0x43
	lcall	_uart_log
	Smain$changeMode$269 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:546: LS_LOGN(light_mode);
	mov	dptr,#_light_mode
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x00
	mov	r4,#0x00
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	mov	a,r4
	lcall	_uart_logn
00134$:
	Smain$changeMode$270 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:547: }
	Smain$changeMode$271 ==.
	XG$changeMode$0$0 ==.
	ret
	Smain$changeMode$272 ==.
;------------------------------------------------------------
;Allocation info for local variables in function 'toNextMode'
;------------------------------------------------------------
	Smain$toNextMode$273 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:552: void toNextMode(void)
;	-----------------------------------------
;	 function toNextMode
;	-----------------------------------------
_toNextMode:
	Smain$toNextMode$274 ==.
	Smain$toNextMode$275 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:554: changeMode(next_mode[light_mode]);
	mov	dptr,#_light_mode
	movx	a,@dptr
	mov	dptr,#_next_mode
	movc	a,@a+dptr
	mov	dpl,a
	lcall	_changeMode
	Smain$toNextMode$276 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:555: }
	Smain$toNextMode$277 ==.
	XG$toNextMode$0$0 ==.
	ret
	Smain$toNextMode$278 ==.
;------------------------------------------------------------
;Allocation info for local variables in function 'process_uart'
;------------------------------------------------------------
;ch                        Allocated with name '_process_uart_ch_131072_216'
;------------------------------------------------------------
	Smain$process_uart$279 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:558: bool process_uart(void)
;	-----------------------------------------
;	 function process_uart
;	-----------------------------------------
_process_uart:
	Smain$process_uart$280 ==.
	Smain$process_uart$281 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:560: if( uart_flag > 0) {
	mov	dptr,#_uart_flag
	movx	a,@dptr
	mov	r7,a
	clr	c
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00146$
	Smain$process_uart$282 ==.
	Smain$process_uart$283 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:561: uart_flag = -1;
	mov	dptr,#_uart_flag
	mov	a,#0xff
	movx	@dptr,a
	Smain$process_uart$284 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:562: LS_LOG('!');
	mov	dpl,#0x21
	lcall	_uart_log
	Smain$process_uart$285 ==.
	Smain$process_uart$286 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:564: while( uart1_next_idx != uart1_read_idx ) {
00146$:
	Smain$process_uart$287 ==.
	Smain$process_uart$288 ==.
	Smain$process_uart$289 ==.
00126$:
	mov	dptr,#_uart1_next_idx
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_uart1_read_idx
	movx	a,@dptr
	mov	r6,a
	mov	a,r7
	cjne	a,ar6,00216$
	ljmp	00128$
00216$:
	Smain$process_uart$290 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:565: uint8_t ch = uart1_rx_buffer[uart1_read_idx];
	mov	a,r6
	add	a,#_uart1_rx_buffer
	mov	dpl,a
	clr	a
	addc	a,#(_uart1_rx_buffer >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	dptr,#_process_uart_ch_131072_216
	movx	@dptr,a
	Smain$process_uart$291 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:566: uart1_read_idx = (uart1_read_idx + 1) % UART_BUFFER_LENGTH;
	mov	r7,#0x00
	inc	r6
	cjne	r6,#0x00,00217$
	inc	r7
00217$:
	mov	dptr,#__modsint_PARM_2
	mov	a,#0x10
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r6
	mov	dph,r7
	lcall	__modsint
	mov	r6,dpl
	mov	dptr,#_uart1_read_idx
	mov	a,r6
	movx	@dptr,a
	Smain$process_uart$292 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:567: uart_counter = 0;
	mov	dptr,#_uart_counter
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	Smain$process_uart$293 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:569: LS_LOG(ch);
	mov	dptr,#_process_uart_ch_131072_216
	movx	a,@dptr
	mov	r7,a
	mov	dpl,a
	push	ar7
	lcall	_uart_log
	pop	ar7
	Smain$process_uart$294 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:570: switch( ch ) {
	cjne	r7,#0x0a,00218$
	sjmp	00103$
00218$:
	cjne	r7,#0x30,00219$
	ljmp	00108$
00219$:
	cjne	r7,#0x31,00220$
	ljmp	00119$
00220$:
	cjne	r7,#0x32,00221$
	ljmp	00119$
00221$:
	cjne	r7,#0x33,00222$
	ljmp	00119$
00222$:
	cjne	r7,#0x34,00223$
	ljmp	00119$
00223$:
	cjne	r7,#0x35,00224$
	ljmp	00119$
00224$:
	cjne	r7,#0x36,00225$
	ljmp	00119$
00225$:
	cjne	r7,#0x39,00226$
	sjmp	00111$
00226$:
	cjne	r7,#0x61,00227$
	sjmp	00104$
00227$:
	cjne	r7,#0x69,00228$
	sjmp	00105$
00228$:
	cjne	r7,#0x73,00229$
	sjmp	00106$
00229$:
	cjne	r7,#0x75,00230$
	sjmp	00107$
00230$:
	ljmp	00126$
	Smain$process_uart$295 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:571: case '\n':
00103$:
	Smain$process_uart$296 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:572: uart_rx_state = UART_INIT;
	mov	dptr,#_uart_rx_state
	clr	a
	movx	@dptr,a
	Smain$process_uart$297 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:573: LS_LOG('a' + light_mode);
	mov	dptr,#_light_mode
	movx	a,@dptr
	add	a,#0x61
	mov	dpl,a
	lcall	_uart_log
	Smain$process_uart$298 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:574: break;
	ljmp	00126$
	Smain$process_uart$299 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:575: case 'a':
00104$:
	Smain$process_uart$300 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:576: uart_rx_state = UART_POWER;
	mov	dptr,#_uart_rx_state
	mov	a,#0x01
	movx	@dptr,a
	Smain$process_uart$301 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:577: break;
	ljmp	00126$
	Smain$process_uart$302 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:578: case 'i':
00105$:
	Smain$process_uart$303 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:579: uart_rx_state = UART_INTL;
	mov	dptr,#_uart_rx_state
	mov	a,#0x03
	movx	@dptr,a
	Smain$process_uart$304 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:580: break;
	ljmp	00126$
	Smain$process_uart$305 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:581: case 's':
00106$:
	Smain$process_uart$306 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:582: uart_rx_state = UART_GERMAN;
	mov	dptr,#_uart_rx_state
	mov	a,#0x02
	movx	@dptr,a
	Smain$process_uart$307 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:583: break;
	ljmp	00126$
	Smain$process_uart$308 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:584: case 'u':
00107$:
	Smain$process_uart$309 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:585: is_uart_mode = true;
	mov	dptr,#_is_uart_mode
	mov	a,#0x01
	movx	@dptr,a
	Smain$process_uart$310 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:586: return true;
	mov	dpl,#0x01
	Smain$process_uart$311 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:587: case '0':
	sjmp	00129$
00108$:
	Smain$process_uart$312 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:588: if( uart_rx_state == UART_POWER )
	mov	dptr,#_uart_rx_state
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00231$
	sjmp	00232$
00231$:
	ljmp	00126$
00232$:
	Smain$process_uart$313 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:589: changeMode(next_mode[LIGHT_OFF]);
	mov	dptr,#_next_mode
	clr	a
	movc	a,@a+dptr
	mov	dpl,a
	lcall	_changeMode
	Smain$process_uart$314 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:590: break;
	ljmp	00126$
	Smain$process_uart$315 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:591: case '9':
00111$:
	Smain$process_uart$316 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:592: if( uart_rx_state == UART_POWER )
	mov	dptr,#_uart_rx_state
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00233$
	sjmp	00234$
00233$:
	ljmp	00126$
00234$:
	Smain$process_uart$317 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:593: changeMode(LIGHT_OFF);
	mov	dpl,#0x00
	lcall	_changeMode
	Smain$process_uart$318 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:594: break;
	ljmp	00126$
	Smain$process_uart$319 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:600: case '6':
00119$:
	Smain$process_uart$320 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:601: lamp_state = UART_INIT;
	mov	dptr,#_lamp_state
	clr	a
	movx	@dptr,a
	Smain$process_uart$321 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:602: switch( uart_rx_state ) {
	mov	dptr,#_uart_rx_state
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x02,00235$
	sjmp	00121$
00235$:
	cjne	r7,#0x03,00236$
	sjmp	00237$
00236$:
	ljmp	00126$
00237$:
	Smain$process_uart$322 ==.
	Smain$process_uart$323 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:604: changeMode(ch - '0');
	mov	dptr,#_process_uart_ch_131072_216
	movx	a,@dptr
	add	a,#0xd0
	mov	dpl,a
	lcall	_changeMode
	Smain$process_uart$324 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:605: break;
	ljmp	00126$
	Smain$process_uart$325 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:606: case UART_GERMAN:
00121$:
	Smain$process_uart$326 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:607: if(ch < '4') {
	mov	dptr,#_process_uart_ch_131072_216
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x34,00238$
00238$:
	jc	00239$
	ljmp	00126$
00239$:
	Smain$process_uart$327 ==.
	Smain$process_uart$328 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:608: changeMode(ch - '0' + 6);
	mov	a,#0xd6
	add	a,r7
	mov	dpl,a
	lcall	_changeMode
	Smain$process_uart$329 ==.
	Smain$process_uart$330 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:612: }
	ljmp	00126$
00128$:
	Smain$process_uart$331 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:615: return false;
	mov	dpl,#0x00
00129$:
	Smain$process_uart$332 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:616: }
	Smain$process_uart$333 ==.
	XG$process_uart$0$0 ==.
	ret
	Smain$process_uart$334 ==.
;------------------------------------------------------------
;Allocation info for local variables in function 'process_button'
;------------------------------------------------------------
	Smain$process_button$335 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:618: void process_button(void)
;	-----------------------------------------
;	 function process_button
;	-----------------------------------------
_process_button:
	Smain$process_button$336 ==.
	Smain$process_button$337 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:620: if( BUTTON_PIN == 0 ) {
	jb	_P02,00116$
	Smain$process_button$338 ==.
	Smain$process_button$339 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:621: LS_LOG('B');
	mov	dpl,#0x42
	lcall	_uart_log
	Smain$process_button$340 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:622: button_pressed ++;
	mov	dptr,#_button_pressed
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
	Smain$process_button$341 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:623: button_unpressed = 0;
	mov	dptr,#_button_unpressed
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	Smain$process_button$342 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:625: if( button_pressed == LONG_PRESS ) { // 길게 눌려졌다면
	mov	dptr,#_button_pressed
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	cjne	r4,#0x90,00149$
	cjne	r5,#0x01,00149$
	cjne	r6,#0x00,00149$
	cjne	r7,#0x00,00149$
	sjmp	00150$
00149$:
	ljmp	00118$
00150$:
	Smain$process_button$343 ==.
	Smain$process_button$344 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:626: LS_LOG('l');
	mov	dpl,#0x6c
	lcall	_uart_log
	Smain$process_button$345 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:627: if( light_mode != LIGHT_OFF ) { // 전원 버튼의 역할을 한다.
	mov	dptr,#_light_mode
	movx	a,@dptr
	jz	00102$
	Smain$process_button$346 ==.
	Smain$process_button$347 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:628: changeMode(LIGHT_OFF);
	mov	dpl,#0x00
	lcall	_changeMode
	Smain$process_button$348 ==.
	ljmp	00118$
00102$:
	Smain$process_button$349 ==.
	Smain$process_button$350 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:630: changeMode(next_mode[LIGHT_OFF]);
	mov	dptr,#_next_mode
	clr	a
	movc	a,@a+dptr
	mov	dpl,a
	lcall	_changeMode
	Smain$process_button$351 ==.
	ljmp	00118$
00116$:
	Smain$process_button$352 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:633: } else if( button_pressed ) {
	mov	dptr,#_button_pressed
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	b,a
	inc	dptr
	movx	a,@dptr
	orl	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz	00152$
	ljmp	00118$
00152$:
	Smain$process_button$353 ==.
	Smain$process_button$354 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:634: LS_LOG('U');
	mov	dpl,#0x55
	lcall	_uart_log
	Smain$process_button$355 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:635: button_unpressed ++;
	mov	dptr,#_button_unpressed
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
	Smain$process_button$356 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:636: if( button_unpressed > 1 ) { // 두번이상 안눌려졌다고 판단했는데
	mov	dptr,#_button_unpressed
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	c
	mov	a,#0x01
	subb	a,r4
	clr	a
	subb	a,r5
	clr	a
	subb	a,r6
	clr	a
	subb	a,r7
	jnc	00118$
	Smain$process_button$357 ==.
	Smain$process_button$358 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:637: if( button_pressed < LONG_PRESS ) { // 짧게 눌렀던 상태라면 다음상태로
	mov	dptr,#_button_pressed
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	c
	mov	a,r4
	subb	a,#0x90
	mov	a,r5
	subb	a,#0x01
	mov	a,r6
	subb	a,#0x00
	mov	a,r7
	subb	a,#0x00
	jnc	00109$
	Smain$process_button$359 ==.
	Smain$process_button$360 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:638: if( light_mode > 0 ) {
	mov	dptr,#_light_mode
	movx	a,@dptr
	jz	00110$
	Smain$process_button$361 ==.
	Smain$process_button$362 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:639: LS_LOG('N');
	mov	dpl,#0x4e
	lcall	_uart_log
	Smain$process_button$363 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:640: LS_LOGN(light_mode);
	mov	dptr,#_light_mode
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x00
	mov	r4,#0x00
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	mov	a,r4
	lcall	_uart_logn
	Smain$process_button$364 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:641: toNextMode();
	lcall	_toNextMode
	Smain$process_button$365 ==.
	sjmp	00110$
00109$:
	Smain$process_button$366 ==.
	Smain$process_button$367 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:644: LS_LOG('M');
	mov	dpl,#0x4d
	lcall	_uart_log
	Smain$process_button$368 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:645: LS_LOGN(button_pressed);
	mov	dptr,#_button_pressed
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	_uart_logn
	Smain$process_button$369 ==.
00110$:
	Smain$process_button$370 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:647: button_pressed = button_unpressed = 0;
	mov	dptr,#_button_unpressed
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_button_pressed
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	Smain$process_button$371 ==.
00118$:
	Smain$process_button$372 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:650: }
	Smain$process_button$373 ==.
	XG$process_button$0$0 ==.
	ret
	Smain$process_button$374 ==.
;------------------------------------------------------------
;Allocation info for local variables in function 'stop_leds'
;------------------------------------------------------------
	Smain$stop_leds$375 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:653: void stop_leds(void)
;	-----------------------------------------
;	 function stop_leds
;	-----------------------------------------
_stop_leds:
	Smain$stop_leds$376 ==.
	Smain$stop_leds$377 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:656: clr_PWMCON0_PWMRUN;
;	assignBit
	clr	_PWMRUN
	Smain$stop_leds$378 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:657: set_SFRS_SFRPAGE;
;	assignBit
	mov	c,_EA
	mov	_BIT_TMP,c
;	assignBit
	clr	_EA
	mov	_TA,#0xaa
	mov	_TA,#0x55
	mov	_SFRS,#0x01
;	assignBit
	mov	c,_BIT_TMP
	mov	_EA,c
	Smain$stop_leds$379 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:659: PWM2L = 0;
	mov	_PWM2L,#0x00
	Smain$stop_leds$380 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:660: PWM2H = 0;
	mov	_PWM2H,#0x00
	Smain$stop_leds$381 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:661: PWM4L = 0;
	mov	_PWM4L,#0x00
	Smain$stop_leds$382 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:662: PWM4H = 0;
	mov	_PWM4H,#0x00
	Smain$stop_leds$383 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:664: clr_SFRS_SFRPAGE;
;	assignBit
	mov	c,_EA
	mov	_BIT_TMP,c
;	assignBit
	clr	_EA
	mov	_TA,#0xaa
	mov	_TA,#0x55
	mov	_SFRS,#0x00
;	assignBit
	mov	c,_BIT_TMP
	mov	_EA,c
	Smain$stop_leds$384 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:665: set_PWMCON0_PWMRUN;
;	assignBit
	setb	_PWMRUN
	Smain$stop_leds$385 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:666: }
	Smain$stop_leds$386 ==.
	XG$stop_leds$0$0 ==.
	ret
	Smain$stop_leds$387 ==.
;------------------------------------------------------------
;Allocation info for local variables in function 'activate_leds'
;------------------------------------------------------------
	Smain$activate_leds$388 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:668: void activate_leds(void)
;	-----------------------------------------
;	 function activate_leds
;	-----------------------------------------
_activate_leds:
	Smain$activate_leds$389 ==.
	Smain$activate_leds$390 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:670: clr_PWMCON0_PWMRUN;
;	assignBit
	clr	_PWMRUN
	Smain$activate_leds$391 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:671: set_SFRS_SFRPAGE;
;	assignBit
	mov	c,_EA
	mov	_BIT_TMP,c
;	assignBit
	clr	_EA
	mov	_TA,#0xaa
	mov	_TA,#0x55
	mov	_SFRS,#0x01
;	assignBit
	mov	c,_BIT_TMP
	mov	_EA,c
	Smain$activate_leds$392 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:673: PWM2L = pwm[0];
	mov	dptr,#_pwm
	movx	a,@dptr
	mov	_PWM2L,a
	Smain$activate_leds$393 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:674: PWM4L = pwm[1];
	mov	dptr,#(_pwm + 0x0002)
	movx	a,@dptr
	mov	_PWM4L,a
	Smain$activate_leds$394 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:676: clr_SFRS_SFRPAGE;
;	assignBit
	mov	c,_EA
	mov	_BIT_TMP,c
;	assignBit
	clr	_EA
	mov	_TA,#0xaa
	mov	_TA,#0x55
	mov	_SFRS,#0x00
;	assignBit
	mov	c,_BIT_TMP
	mov	_EA,c
	Smain$activate_leds$395 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:677: set_PWMCON0_PWMRUN;
;	assignBit
	setb	_PWMRUN
	Smain$activate_leds$396 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:678: }
	Smain$activate_leds$397 ==.
	XG$activate_leds$0$0 ==.
	ret
	Smain$activate_leds$398 ==.
;------------------------------------------------------------
;Allocation info for local variables in function 'mode_changing_control'
;------------------------------------------------------------
;light_changing            Allocated with name '_mode_changing_control_light_changing_65536_236'
;i                         Allocated with name '_mode_changing_control_i_131072_237'
;------------------------------------------------------------
	Smain$mode_changing_control$399 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:685: bool mode_changing_control( void )
;	-----------------------------------------
;	 function mode_changing_control
;	-----------------------------------------
_mode_changing_control:
	Smain$mode_changing_control$400 ==.
	Smain$mode_changing_control$401 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:687: bool light_changing = false;
	mov	dptr,#_mode_changing_control_light_changing_65536_236
	clr	a
	movx	@dptr,a
	Smain$mode_changing_control$402 ==.
	Smain$mode_changing_control$403 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:689: for( int i = 0; i < NUM_LEDS; i++ ) {
	Smain$mode_changing_control$404 ==.
	Smain$mode_changing_control$405 ==.
	Smain$mode_changing_control$406 ==.
	Smain$mode_changing_control$407 ==.
	Smain$mode_changing_control$407 ==.
	Smain$mode_changing_control$408 ==.
	Smain$mode_changing_control$409 ==.
	Smain$mode_changing_control$409 ==.
	Smain$mode_changing_control$410 ==.
	mov	r6,#0x00
	mov	r7,#0x00
	Smain$mode_changing_control$411 ==.
00132$:
	clr	c
	mov	a,r6
	subb	a,#0x02
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jc	00193$
	ljmp	00130$
00193$:
	Smain$mode_changing_control$412 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:690: switch( light_control_mode[i] ) {
	mov	a,r6
	add	a,#_light_control_mode
	mov	r4,a
	mov	a,r7
	addc	a,#(_light_control_mode >> 8)
	mov	r5,a
	mov	dpl,r4
	mov	dph,r5
	movx	a,@dptr
	mov	r3,a
	cjne	r3,#0x01,00194$
	sjmp	00101$
00194$:
	cjne	r3,#0x02,00195$
	sjmp	00108$
00195$:
	cjne	r3,#0x03,00196$
	ljmp	00117$
00196$:
	ljmp	00133$
	Smain$mode_changing_control$413 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:691: case MODE_CHANGING_OFF:
00101$:
	Smain$mode_changing_control$414 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:692: if( pwm[i] > 0) {
	mov	a,r6
	add	a,r6
	mov	r2,a
	mov	a,r7
	rlc	a
	mov	r3,a
	mov	a,r2
	add	a,#_pwm
	mov	r2,a
	mov	a,r3
	addc	a,#(_pwm >> 8)
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	orl	a,r0
	jz	00106$
	Smain$mode_changing_control$415 ==.
	Smain$mode_changing_control$416 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:693: light_changing = true;
	push	ar6
	push	ar7
	Smain$mode_changing_control$417 ==.
	mov	dptr,#_mode_changing_control_light_changing_65536_236
	mov	a,#0x01
	movx	@dptr,a
	Smain$mode_changing_control$418 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:694: pwm[i] --;
	mov	a,r0
	add	a,#0xff
	mov	r6,a
	mov	a,r1
	addc	a,#0xff
	mov	r7,a
	mov	dpl,r2
	mov	dph,r3
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	Smain$mode_changing_control$419 ==.
	pop	ar7
	pop	ar6
	ljmp	00133$
00106$:
	Smain$mode_changing_control$420 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:695: } else if( pwm[i] == 0 ){ // pwm은 unsigned이므로 0보다 작을수는 없음
	mov	a,r0
	orl	a,r1
	jnz	00103$
	Smain$mode_changing_control$421 ==.
	Smain$mode_changing_control$422 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:696: light_control_mode[i] = MODE_STABLE;
	mov	dpl,r4
	mov	dph,r5
	clr	a
	movx	@dptr,a
	Smain$mode_changing_control$423 ==.
	ljmp	00133$
00103$:
	Smain$mode_changing_control$424 ==.
	Smain$mode_changing_control$425 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:698: light_changing = true;
	mov	dptr,#_mode_changing_control_light_changing_65536_236
	mov	a,#0x01
	movx	@dptr,a
	Smain$mode_changing_control$426 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:699: pwm[i] = 0;
	mov	dpl,r2
	mov	dph,r3
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	Smain$mode_changing_control$427 ==.
	Smain$mode_changing_control$428 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:701: break;
	ljmp	00133$
	Smain$mode_changing_control$429 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:702: case MODE_CHANGING_UP:
00108$:
	Smain$mode_changing_control$430 ==.
	Smain$mode_changing_control$431 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:703: if( cur_amp[i] < max_amp[light_mode][i] ) {
	push	ar4
	push	ar5
	mov	a,r6
	add	a,r6
	mov	r2,a
	mov	a,r7
	rlc	a
	mov	r3,a
	mov	a,r2
	add	a,#_cur_amp
	mov	dpl,a
	mov	a,r3
	addc	a,#(_cur_amp >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	mov	dptr,#_light_mode
	movx	a,@dptr
	mov	b,#0x02
	mul	ab
	add	a,#_max_amp
	mov	r4,a
	mov	a,#(_max_amp >> 8)
	addc	a,b
	mov	r5,a
	mov	a,r6
	add	a,r4
	mov	dpl,a
	mov	a,r7
	addc	a,r5
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	mov	r4,#0x00
	clr	c
	mov	a,r0
	subb	a,r5
	mov	a,r1
	subb	a,r4
	pop	ar5
	pop	ar4
	jnc	00115$
	Smain$mode_changing_control$432 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:704: good_amp_count[i] = 0;
	mov	a,r6
	add	a,#_good_amp_count
	mov	dpl,a
	mov	a,r7
	addc	a,#(_good_amp_count >> 8)
	mov	dph,a
	clr	a
	movx	@dptr,a
	Smain$mode_changing_control$433 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:705: light_changing = true;
	mov	dptr,#_mode_changing_control_light_changing_65536_236
	inc	a
	movx	@dptr,a
	Smain$mode_changing_control$434 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:706: if( pwm[i] < 190 ) {
	mov	a,r2
	add	a,#_pwm
	mov	r2,a
	mov	a,r3
	addc	a,#(_pwm >> 8)
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	push	ar6
	push	ar7
	mov	ar6,r0
	mov	ar7,r1
	clr	c
	mov	a,r6
	subb	a,#0xbe
	mov	a,r7
	subb	a,#0x00
	pop	ar7
	pop	ar6
	jnc	00110$
	Smain$mode_changing_control$435 ==.
	Smain$mode_changing_control$436 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:707: pwm[i] ++;
	inc	r0
	cjne	r0,#0x00,00201$
	inc	r1
00201$:
	mov	dpl,r2
	mov	dph,r3
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
	Smain$mode_changing_control$437 ==.
	ljmp	00133$
00110$:
	Smain$mode_changing_control$438 ==.
	Smain$mode_changing_control$439 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:709: pwm[i] = 190;
	mov	dpl,r2
	mov	dph,r3
	mov	a,#0xbe
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	Smain$mode_changing_control$440 ==.
	ljmp	00133$
00115$:
	Smain$mode_changing_control$441 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:712: good_amp_count[i]++;
	mov	a,r6
	add	a,#_good_amp_count
	mov	r2,a
	mov	a,r7
	addc	a,#(_good_amp_count >> 8)
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	movx	a,@dptr
	mov	r1,a
	inc	r1
	mov	dpl,r2
	mov	dph,r3
	mov	a,r1
	movx	@dptr,a
	Smain$mode_changing_control$442 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:713: if( good_amp_count[i] > 3 ) {
	mov	a,r1
	add	a,#0xff - 0x03
	jc	00202$
	ljmp	00133$
00202$:
	Smain$mode_changing_control$443 ==.
	Smain$mode_changing_control$444 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:714: light_control_mode[i] = MODE_STABLE;
	mov	dpl,r4
	mov	dph,r5
	clr	a
	movx	@dptr,a
	Smain$mode_changing_control$445 ==.
	Smain$mode_changing_control$446 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:717: break;
	ljmp	00133$
	Smain$mode_changing_control$447 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:718: case MODE_CHANGING_DOWN:
00117$:
	Smain$mode_changing_control$448 ==.
	Smain$mode_changing_control$449 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:719: if( cur_amp[i] > max_amp[light_mode][i] ) {
	push	ar4
	push	ar5
	mov	a,r6
	add	a,r6
	mov	r2,a
	mov	a,r7
	rlc	a
	mov	r3,a
	mov	a,r2
	add	a,#_cur_amp
	mov	dpl,a
	mov	a,r3
	addc	a,#(_cur_amp >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	mov	dptr,#_light_mode
	movx	a,@dptr
	mov	b,#0x02
	mul	ab
	add	a,#_max_amp
	mov	r4,a
	mov	a,#(_max_amp >> 8)
	addc	a,b
	mov	r5,a
	mov	a,r6
	add	a,r4
	mov	dpl,a
	mov	a,r7
	addc	a,r5
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	mov	r4,#0x00
	clr	c
	mov	a,r5
	subb	a,r0
	mov	a,r4
	subb	a,r1
	pop	ar5
	pop	ar4
	jnc	00127$
	Smain$mode_changing_control$450 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:720: good_amp_count[i] = 0;
	mov	a,r6
	add	a,#_good_amp_count
	mov	dpl,a
	mov	a,r7
	addc	a,#(_good_amp_count >> 8)
	mov	dph,a
	clr	a
	movx	@dptr,a
	Smain$mode_changing_control$451 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:721: light_changing = true;
	mov	dptr,#_mode_changing_control_light_changing_65536_236
	inc	a
	movx	@dptr,a
	Smain$mode_changing_control$452 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:722: if( pwm[i] <= 0) {
	mov	a,r2
	add	a,#_pwm
	mov	r2,a
	mov	a,r3
	addc	a,#(_pwm >> 8)
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	orl	a,r0
	jnz	00122$
	Smain$mode_changing_control$453 ==.
	Smain$mode_changing_control$454 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:723: pwm[i] = 0;
	mov	dpl,r2
	mov	dph,r3
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	Smain$mode_changing_control$455 ==.
	sjmp	00133$
00122$:
	Smain$mode_changing_control$456 ==.
	Smain$mode_changing_control$457 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:724: } else if( pwm[i] > 190 ) {
	push	ar2
	push	ar3
	mov	ar2,r0
	mov	ar3,r1
	clr	c
	mov	a,#0xbe
	subb	a,r2
	clr	a
	subb	a,r3
	pop	ar3
	pop	ar2
	jnc	00119$
	Smain$mode_changing_control$458 ==.
	Smain$mode_changing_control$459 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:725: pwm[i] = 190;
	mov	dpl,r2
	mov	dph,r3
	mov	a,#0xbe
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	Smain$mode_changing_control$460 ==.
	sjmp	00133$
00119$:
	Smain$mode_changing_control$461 ==.
	Smain$mode_changing_control$462 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:727: pwm[i] --;
	dec	r0
	cjne	r0,#0xff,00206$
	dec	r1
00206$:
	mov	dpl,r2
	mov	dph,r3
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
	Smain$mode_changing_control$463 ==.
	sjmp	00133$
00127$:
	Smain$mode_changing_control$464 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:730: good_amp_count[i]++;
	mov	a,r6
	add	a,#_good_amp_count
	mov	r2,a
	mov	a,r7
	addc	a,#(_good_amp_count >> 8)
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	movx	a,@dptr
	mov	r1,a
	inc	r1
	mov	dpl,r2
	mov	dph,r3
	mov	a,r1
	movx	@dptr,a
	Smain$mode_changing_control$465 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:731: if( good_amp_count[i] > 3 ) {
	mov	a,r1
	add	a,#0xff - 0x03
	jnc	00133$
	Smain$mode_changing_control$466 ==.
	Smain$mode_changing_control$467 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:732: light_control_mode[i] = MODE_STABLE;
	mov	dpl,r4
	mov	dph,r5
	clr	a
	movx	@dptr,a
	Smain$mode_changing_control$468 ==.
	Smain$mode_changing_control$469 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:736: }
00133$:
	Smain$mode_changing_control$470 ==.
	Smain$mode_changing_control$471 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:689: for( int i = 0; i < NUM_LEDS; i++ ) {
	inc	r6
	cjne	r6,#0x00,00208$
	inc	r7
00208$:
	ljmp	00132$
00130$:
	Smain$mode_changing_control$472 ==.
	Smain$mode_changing_control$473 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:738: return light_changing;
	mov	dptr,#_mode_changing_control_light_changing_65536_236
	movx	a,@dptr
	Smain$mode_changing_control$474 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:739: }
	Smain$mode_changing_control$475 ==.
	XG$mode_changing_control$0$0 ==.
	mov	dpl,a
	ret
	Smain$mode_changing_control$476 ==.
;------------------------------------------------------------
;Allocation info for local variables in function 'is_stable'
;------------------------------------------------------------
;i                         Allocated with name '_is_stable_i_131072_256'
;------------------------------------------------------------
	Smain$is_stable$477 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:741: bool is_stable( void ) {
;	-----------------------------------------
;	 function is_stable
;	-----------------------------------------
_is_stable:
	Smain$is_stable$478 ==.
	Smain$is_stable$479 ==.
	Smain$is_stable$480 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:742: for( int i = 0; i < NUM_LEDS; i++ ) {
	Smain$is_stable$481 ==.
	mov	r6,#0x00
	mov	r7,#0x00
	Smain$is_stable$482 ==.
00105$:
	clr	c
	mov	a,r6
	subb	a,#0x02
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00103$
	Smain$is_stable$483 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:743: if( light_control_mode[i] != MODE_STABLE ) return false;
	mov	a,r6
	add	a,#_light_control_mode
	mov	r4,a
	mov	a,r7
	addc	a,#(_light_control_mode >> 8)
	mov	r5,a
	mov	dpl,r4
	mov	dph,r5
	movx	a,@dptr
	jz	00106$
	mov	dpl,#0x00
	sjmp	00107$
00106$:
	Smain$is_stable$484 ==.
	Smain$is_stable$485 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:742: for( int i = 0; i < NUM_LEDS; i++ ) {
	inc	r6
	cjne	r6,#0x00,00105$
	inc	r7
	sjmp	00105$
00103$:
	Smain$is_stable$486 ==.
	Smain$is_stable$487 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:746: return true;
	mov	dpl,#0x01
00107$:
	Smain$is_stable$488 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:747: }
	Smain$is_stable$489 ==.
	XG$is_stable$0$0 ==.
	ret
	Smain$is_stable$490 ==.
;------------------------------------------------------------
;Allocation info for local variables in function 'mode_stable_control'
;------------------------------------------------------------
;light_changing            Allocated with name '_mode_stable_control_light_changing_65536_259'
;i                         Allocated with name '_mode_stable_control_i_131072_260'
;t_amp                     Allocated with name '_mode_stable_control_t_amp_196608_261'
;amp                       Allocated with name '_mode_stable_control_amp_196609_262'
;------------------------------------------------------------
	Smain$mode_stable_control$491 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:749: bool mode_stable_control( void )
;	-----------------------------------------
;	 function mode_stable_control
;	-----------------------------------------
_mode_stable_control:
	Smain$mode_stable_control$492 ==.
	Smain$mode_stable_control$493 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:751: bool light_changing = false;
	mov	dptr,#_mode_stable_control_light_changing_65536_259
	clr	a
	movx	@dptr,a
	Smain$mode_stable_control$494 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:753: cur_temp = acc_temp / sample_count;
	mov	dptr,#_sample_count
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_acc_temp
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#__divulong_PARM_2
	mov	a,r7
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,r6
	lcall	__divulong
	mov	r4,dpl
	mov	r5,dph
	mov	dptr,#_cur_temp
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	Smain$mode_stable_control$495 ==.
	Smain$mode_stable_control$496 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:755: for( int i = 0; i < NUM_LEDS; i++ ) {
	Smain$mode_stable_control$497 ==.
	Smain$mode_stable_control$497 ==.
	Smain$mode_stable_control$498 ==.
	mov	r6,#0x00
	mov	r7,#0x00
	Smain$mode_stable_control$499 ==.
00111$:
	clr	c
	mov	a,r6
	subb	a,#0x02
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jc	00135$
	ljmp	00109$
00135$:
	Smain$mode_stable_control$500 ==.
	Smain$mode_stable_control$501 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:756: int16_t t_amp = target_amp(light_mode, i);
	mov	dptr,#_light_mode
	movx	a,@dptr
	mov	r5,a
	mov	ar4,r6
	mov	dptr,#_target_amp_PARM_2
	mov	a,r4
	movx	@dptr,a
	mov	dpl,r5
	push	ar7
	push	ar6
	push	ar4
	lcall	_target_amp
	mov	r5,dpl
	pop	ar4
	pop	ar6
	pop	ar7
	mov	r3,#0x00
	Smain$mode_stable_control$502 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:757: if( t_amp <= 0 ) continue;
	clr	c
	clr	a
	subb	a,r5
	mov	a,#(0x00 ^ 0x80)
	mov	b,r3
	xrl	b,#0x80
	subb	a,b
	jc	00136$
	ljmp	00108$
00136$:
	Smain$mode_stable_control$503 ==.
	Smain$mode_stable_control$504 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:759: uint16_t amp = avg_amp(i);
	mov	dpl,r4
	push	ar7
	push	ar6
	push	ar5
	push	ar3
	lcall	_avg_amp
	mov	r2,dpl
	mov	r4,dph
	pop	ar3
	pop	ar5
	pop	ar6
	pop	ar7
	Smain$mode_stable_control$505 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:760: if( amp < t_amp - AMP_MARGIN ) {
	mov	a,r5
	add	a,#0xfe
	mov	r0,a
	mov	a,r3
	addc	a,#0xff
	mov	r1,a
	clr	c
	mov	a,r2
	subb	a,r0
	mov	a,r4
	subb	a,r1
	jnc	00106$
	Smain$mode_stable_control$506 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:761: pwm[i] ++;
	mov	a,r6
	add	a,r6
	mov	r0,a
	mov	a,r7
	rlc	a
	mov	r1,a
	mov	a,r0
	add	a,#_pwm
	mov	r0,a
	mov	a,r1
	addc	a,#(_pwm >> 8)
	mov	r1,a
	Smain$mode_stable_control$507 ==.
	push	ar6
	push	ar7
	mov	dpl,r0
	mov	dph,r1
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	r6
	cjne	r6,#0x00,00138$
	inc	r7
00138$:
	mov	dpl,r0
	mov	dph,r1
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	Smain$mode_stable_control$508 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:762: light_changing = true;
	mov	dptr,#_mode_stable_control_light_changing_65536_259
	mov	a,#0x01
	movx	@dptr,a
	pop	ar7
	pop	ar6
	sjmp	00108$
00106$:
	Smain$mode_stable_control$509 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:763: } else if( amp > t_amp + AMP_MARGIN ) {
	mov	a,#0x02
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r3,a
	clr	c
	mov	a,r5
	subb	a,r2
	mov	a,r3
	subb	a,r4
	jnc	00108$
	Smain$mode_stable_control$510 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:764: pwm[i] --;
	mov	a,r6
	add	a,r6
	mov	r4,a
	mov	a,r7
	rlc	a
	mov	r5,a
	mov	a,r4
	add	a,#_pwm
	mov	r4,a
	mov	a,r5
	addc	a,#(_pwm >> 8)
	mov	r5,a
	mov	dpl,r4
	mov	dph,r5
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	dec	r2
	cjne	r2,#0xff,00140$
	dec	r3
00140$:
	mov	dpl,r4
	mov	dph,r5
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	Smain$mode_stable_control$511 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:765: light_changing = true;
	mov	dptr,#_mode_stable_control_light_changing_65536_259
	mov	a,#0x01
	movx	@dptr,a
00108$:
	Smain$mode_stable_control$512 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:755: for( int i = 0; i < NUM_LEDS; i++ ) {
	inc	r6
	cjne	r6,#0x00,00141$
	inc	r7
00141$:
	ljmp	00111$
00109$:
	Smain$mode_stable_control$513 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:768: return light_changing;
	mov	dptr,#_mode_stable_control_light_changing_65536_259
	movx	a,@dptr
	Smain$mode_stable_control$514 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:769: }
	Smain$mode_stable_control$515 ==.
	XG$mode_stable_control$0$0 ==.
	mov	dpl,a
	ret
	Smain$mode_stable_control$516 ==.
;------------------------------------------------------------
;Allocation info for local variables in function 'control_loop'
;------------------------------------------------------------
;sloc0                     Allocated with name '_control_loop_sloc0_1_0'
;light_changing            Allocated with name '_control_loop_light_changing_65536_266'
;i                         Allocated with name '_control_loop_i_196608_268'
;------------------------------------------------------------
	Smain$control_loop$517 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:771: void control_loop( void )
;	-----------------------------------------
;	 function control_loop
;	-----------------------------------------
_control_loop:
	Smain$control_loop$518 ==.
	Smain$control_loop$519 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:775: sample_amps();
	lcall	_sample_amps
	Smain$control_loop$520 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:777: light_changing = mode_changing_control();
	lcall	_mode_changing_control
	mov	a,dpl
	mov	dptr,#_control_loop_light_changing_65536_266
	movx	@dptr,a
	Smain$control_loop$521 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:779: if( is_stable() ) {
	lcall	_is_stable
	mov	a,dpl
	jnz	00159$
	ljmp	00114$
00159$:
	Smain$control_loop$522 ==.
	Smain$control_loop$523 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:780: sample_count++;
	mov	dptr,#_sample_count
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	Smain$control_loop$524 ==.
	Smain$control_loop$525 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:782: for( int i = 0; i < NUM_LEDS; i++ )
	Smain$control_loop$526 ==.
	mov	r6,#0x00
	mov	r7,#0x00
00118$:
	clr	c
	mov	a,r6
	subb	a,#0x02
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00101$
	Smain$control_loop$527 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:783: acc_amp[i] += cur_amp[i];
	mov	a,r6
	add	a,r6
	mov	r4,a
	mov	a,r7
	rlc	a
	mov	r5,a
	mov	a,r4
	add	a,r4
	mov	r4,a
	mov	a,r5
	rlc	a
	mov	r5,a
	mov	a,r4
	add	a,#_acc_amp
	mov	r4,a
	mov	a,r5
	addc	a,#(_acc_amp >> 8)
	mov	r5,a
	mov	dpl,r4
	mov	dph,r5
	movx	a,@dptr
	mov	_control_loop_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_control_loop_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_control_loop_sloc0_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(_control_loop_sloc0_1_0 + 3),a
	mov	a,r6
	add	a,r6
	mov	r2,a
	mov	a,r7
	rlc	a
	mov	r3,a
	mov	a,r2
	add	a,#_cur_amp
	mov	dpl,a
	mov	a,r3
	addc	a,#(_cur_amp >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	ar0,r2
	mov	ar1,r3
	clr	a
	mov	r2,a
	mov	r3,a
	mov	a,r0
	add	a,_control_loop_sloc0_1_0
	mov	r0,a
	mov	a,r1
	addc	a,(_control_loop_sloc0_1_0 + 1)
	mov	r1,a
	mov	a,r2
	addc	a,(_control_loop_sloc0_1_0 + 2)
	mov	r2,a
	mov	a,r3
	addc	a,(_control_loop_sloc0_1_0 + 3)
	mov	r3,a
	mov	dpl,r4
	mov	dph,r5
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	Smain$control_loop$528 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:782: for( int i = 0; i < NUM_LEDS; i++ )
	inc	r6
	cjne	r6,#0x00,00118$
	inc	r7
	sjmp	00118$
00101$:
	Smain$control_loop$529 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:785: sample_temperature();
	lcall	_sample_temperature
	Smain$control_loop$530 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:787: if( flashing[light_mode] ) {
	mov	dptr,#_light_mode
	movx	a,@dptr
	add	a,#_flashing
	mov	r7,a
	clr	a
	addc	a,#(_flashing >> 8)
	mov	r6,a
	mov	dpl,r7
	mov	dph,r6
	clr	a
	movc	a,@a+dptr
	jz	00108$
	Smain$control_loop$531 ==.
	Smain$control_loop$532 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:788: if( sample_count == 1 ) {
	mov	dptr,#_sample_count
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00105$
	Smain$control_loop$533 ==.
	Smain$control_loop$534 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:789: stop_leds();
	lcall	_stop_leds
	Smain$control_loop$535 ==.
	sjmp	00108$
00105$:
	Smain$control_loop$536 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:790: } else if( sample_count == FLASHING_ON_COUNT ) {
	cjne	r7,#0x87,00108$
	Smain$control_loop$537 ==.
	Smain$control_loop$538 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:791: activate_leds();
	lcall	_activate_leds
	Smain$control_loop$539 ==.
00108$:
	Smain$control_loop$540 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:795: if( sample_count >= MAX_SAMPLE_COUNT ) {
	mov	dptr,#_sample_count
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x96,00167$
00167$:
	jc	00114$
	Smain$control_loop$541 ==.
	Smain$control_loop$542 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:796: if( !flashing[light_mode] ) {
	mov	dptr,#_light_mode
	movx	a,@dptr
	add	a,#_flashing
	mov	r7,a
	clr	a
	addc	a,#(_flashing >> 8)
	mov	r6,a
	mov	dpl,r7
	mov	dph,r6
	clr	a
	movc	a,@a+dptr
	jnz	00110$
	Smain$control_loop$543 ==.
	Smain$control_loop$544 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:797: light_changing = mode_stable_control();
	lcall	_mode_stable_control
	mov	a,dpl
	mov	dptr,#_control_loop_light_changing_65536_266
	movx	@dptr,a
	Smain$control_loop$545 ==.
00110$:
	Smain$control_loop$546 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:799: init_sample();
	lcall	_init_sample
	Smain$control_loop$547 ==.
00114$:
	Smain$control_loop$548 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:803: if( light_changing ) {
	mov	dptr,#_control_loop_light_changing_65536_266
	movx	a,@dptr
	jz	00120$
	Smain$control_loop$549 ==.
	Smain$control_loop$550 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:804: activate_leds();
	lcall	_activate_leds
	Smain$control_loop$551 ==.
00120$:
	Smain$control_loop$552 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:807: }
	Smain$control_loop$553 ==.
	XG$control_loop$0$0 ==.
	ret
	Smain$control_loop$554 ==.
;------------------------------------------------------------
;Allocation info for local variables in function 'wdt_init'
;------------------------------------------------------------
	Smain$wdt_init$555 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:810: void wdt_init(void)
;	-----------------------------------------
;	 function wdt_init
;	-----------------------------------------
_wdt_init:
	Smain$wdt_init$556 ==.
	Smain$wdt_init$557 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:812: SFRS=0;
	mov	_SFRS,#0x00
	Smain$wdt_init$558 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:813: BIT_TMP=EA;
;	assignBit
	mov	c,_EA
	mov	_BIT_TMP,c
	Smain$wdt_init$559 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:814: EA=0;
;	assignBit
	clr	_EA
	Smain$wdt_init$560 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:816: TA=0xAA;
	mov	_TA,#0xaa
	Smain$wdt_init$561 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:817: TA=0x55;
	mov	_TA,#0x55
	Smain$wdt_init$562 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:818: WDCON&=0xF8;
	anl	_WDCON,#0xf8
	Smain$wdt_init$563 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:820: TA=0xAA;
	mov	_TA,#0xaa
	Smain$wdt_init$564 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:821: TA=0x55;
	mov	_TA,#0x55
	Smain$wdt_init$565 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:822: WDCON|=0x07;
	orl	_WDCON,#0x07
	Smain$wdt_init$566 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:824: EA = BIT_TMP;
;	assignBit
	mov	c,_BIT_TMP
	mov	_EA,c
	Smain$wdt_init$567 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:825: set_WDCON_WIDPD;
;	assignBit
	mov	c,_EA
	mov	_BIT_TMP,c
;	assignBit
	clr	_EA
	mov	_TA,#0xaa
	mov	_TA,#0x55
	orl	_WDCON,#0x10
;	assignBit
	mov	c,_BIT_TMP
	mov	_EA,c
	Smain$wdt_init$568 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:826: set_WDCON_WDTR;
;	assignBit
	mov	c,_EA
	mov	_BIT_TMP,c
;	assignBit
	clr	_EA
	mov	_TA,#0xaa
	mov	_TA,#0x55
	orl	_WDCON,#0x80
;	assignBit
	mov	c,_BIT_TMP
	mov	_EA,c
	Smain$wdt_init$569 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:829: set_EIE_EWDT;
	orl	_EIE,#0x10
	Smain$wdt_init$570 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:830: }
	Smain$wdt_init$571 ==.
	XG$wdt_init$0$0 ==.
	ret
	Smain$wdt_init$572 ==.
;------------------------------------------------------------
;Allocation info for local variables in function 'wdt_clear'
;------------------------------------------------------------
	Smain$wdt_clear$573 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:833: void wdt_clear(void)
;	-----------------------------------------
;	 function wdt_clear
;	-----------------------------------------
_wdt_clear:
	Smain$wdt_clear$574 ==.
	Smain$wdt_clear$575 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:836: BIT_TMP=EA;
;	assignBit
	mov	c,_EA
	mov	_BIT_TMP,c
	Smain$wdt_clear$576 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:837: EA=0;
;	assignBit
	clr	_EA
	Smain$wdt_clear$577 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:839: TA=0xAA;
	mov	_TA,#0xaa
	Smain$wdt_clear$578 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:840: TA=0x55;
	mov	_TA,#0x55
	Smain$wdt_clear$579 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:842: WDCON|=0x40;
	orl	_WDCON,#0x40
	Smain$wdt_clear$580 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:843: EA=BIT_TMP;
;	assignBit
	mov	c,_BIT_TMP
	mov	_EA,c
	Smain$wdt_clear$581 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:845: while(WDCON&SET_BIT6);              /* Check for the WDT counter cleared */
00101$:
	mov	a,_WDCON
	jb	acc.6,00101$
	Smain$wdt_clear$582 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:846: }
	Smain$wdt_clear$583 ==.
	XG$wdt_clear$0$0 ==.
	ret
	Smain$wdt_clear$584 ==.
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
	Smain$main$585 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:850: void main (void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	Smain$main$586 ==.
	Smain$main$587 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:853: MODIFY_HIRC(HIRC_24);
	mov	dpl,#0x06
	lcall	_MODIFY_HIRC
	Smain$main$588 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:857: log_init();
	lcall	_log_init
	Smain$main$589 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:859: init_peripherals_but_button_n_uart();
	lcall	_init_peripherals_but_button_n_uart
	Smain$main$590 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:860: uart_interrupt_init();
	lcall	_uart_interrupt_init
	Smain$main$591 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:866: for( uart_counter = 0; uart_counter < MAX_UART_INIT_COUNTER; uart_counter++ ) {
	mov	dptr,#_uart_counter
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
00132$:
	Smain$main$592 ==.
	Smain$main$593 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:867: if( process_uart() ) break;
	lcall	_process_uart
	mov	a,dpl
	jnz	00103$
	Smain$main$594 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:868: Timer0_Delay(24000000, 1, PERIOD_UNIT);
	mov	dptr,#_Timer0_Delay_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_Timer0_Delay_PARM_3
	mov	a,#0xe8
	movx	@dptr,a
	mov	a,#0x03
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x3600
	mov	b,#0x6e
	mov	a,#0x01
	lcall	_Timer0_Delay
	Smain$main$595 ==.
	Smain$main$596 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:866: for( uart_counter = 0; uart_counter < MAX_UART_INIT_COUNTER; uart_counter++ ) {
	mov	dptr,#_uart_counter
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
	mov	dptr,#_uart_counter
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	c
	mov	a,r4
	subb	a,#0xf4
	mov	a,r5
	subb	a,#0x01
	mov	a,r6
	subb	a,#0x00
	mov	a,r7
	subb	a,#0x00
	jc	00132$
00103$:
	Smain$main$597 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:871: LS_LOG(':');
	mov	dpl,#0x3a
	lcall	_uart_log
	Smain$main$598 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:873: if( !is_uart_mode ) {
	mov	dptr,#_is_uart_mode
	movx	a,@dptr
	jnz	00105$
	Smain$main$599 ==.
	Smain$main$600 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:874: button_interrupt_init();
	lcall	_button_interrupt_init
	Smain$main$601 ==.
00105$:
	Smain$main$602 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:877: LS_LOG('w'); /* wdt test */
	mov	dpl,#0x77
	lcall	_uart_log
	Smain$main$603 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:878: wdt_init();
	lcall	_wdt_init
	Smain$main$604 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:880: while(1)
00130$:
	Smain$main$605 ==.
	Smain$main$606 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:884: if( log_counter % 200 == 0 ) {
	mov	dptr,#_log_counter
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	Smain$main$607 ==.
	mov	dptr,#__modulong_PARM_2
	mov	a,#0xc8
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	__modulong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,r4
	orl	a,r5
	orl	a,r6
	orl	a,r7
	jnz	00107$
	Smain$main$608 ==.
	Smain$main$609 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:885: LS_LOG('T');
	mov	dpl,#0x54
	lcall	_uart_log
	Smain$main$610 ==.
00107$:
	Smain$main$611 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:887: log_counter++;
	mov	dptr,#_log_counter
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
	Smain$main$612 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:889: if( is_uart_mode ) {
	mov	dptr,#_is_uart_mode
	movx	a,@dptr
	jz	00111$
	Smain$main$613 ==.
	Smain$main$614 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:890: if( light_mode == LIGHT_OFF ) {
	mov	dptr,#_light_mode
	movx	a,@dptr
	jnz	00109$
	Smain$main$615 ==.
	Smain$main$616 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:891: uart_counter ++;
	mov	dptr,#_uart_counter
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
	Smain$main$617 ==.
00109$:
	Smain$main$618 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:893: process_uart();
	lcall	_process_uart
	Smain$main$619 ==.
	sjmp	00112$
00111$:
	Smain$main$620 ==.
	Smain$main$621 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:896: process_button();
	lcall	_process_button
	Smain$main$622 ==.
00112$:
	Smain$main$623 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:900: if( light_mode == LIGHT_OFF ) {
	mov	dptr,#_light_mode
	movx	a,@dptr
	mov	r7,a
	movx	a,@dptr
	jnz	00124$
	Smain$main$624 ==.
	Smain$main$625 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:901: wdt_flag = true; /* wdt test */
	mov	dptr,#_wdt_flag
	mov	a,#0x01
	movx	@dptr,a
	Smain$main$626 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:902: if( (is_uart_mode && uart_counter > MAX_UART_COUNTER) || (!is_uart_mode && button_pressed < 1) ) {
	mov	dptr,#_is_uart_mode
	movx	a,@dptr
	jz	00120$
	mov	dptr,#_uart_counter
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	clr	c
	mov	a,#0x88
	subb	a,r3
	mov	a,#0x13
	subb	a,r4
	clr	a
	subb	a,r5
	clr	a
	subb	a,r6
	jc	00116$
00120$:
	mov	dptr,#_is_uart_mode
	movx	a,@dptr
	jnz	00125$
	mov	dptr,#_button_pressed
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	clr	c
	mov	a,r3
	subb	a,#0x01
	mov	a,r4
	subb	a,#0x00
	mov	a,r5
	subb	a,#0x00
	mov	a,r6
	subb	a,#0x00
	jnc	00125$
00116$:
	Smain$main$627 ==.
	Smain$main$628 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:903: stop_leds();
	lcall	_stop_leds
	Smain$main$629 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:904: disable_ntc();
	lcall	_disable_ntc
	Smain$main$630 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:906: clr_SCON_1_TI_1;
;	assignBit
	clr	_TI_1
	Smain$main$631 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:907: clr_SCON_1_RI_1;
;	assignBit
	clr	_RI_1
	Smain$main$632 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:908: set_PCON_IDLE;
	orl	_PCON,#0x01
	Smain$main$633 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:909: CALL_NOP;
	nop;
	Smain$main$634 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:910: CALL_NOP;
	nop;
	Smain$main$635 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:911: clr_PCON_IDLE;
	anl	_PCON,#0xfe
	Smain$main$636 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:913: init_peripherals_but_button_n_uart();
	lcall	_init_peripherals_but_button_n_uart
	Smain$main$637 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:914: if( is_uart_mode ) {
	mov	dptr,#_is_uart_mode
	movx	a,@dptr
	jz	00114$
	Smain$main$638 ==.
	Smain$main$639 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:915: uart_interrupt_init();
	lcall	_uart_interrupt_init
	Smain$main$640 ==.
	sjmp	00125$
00114$:
	Smain$main$641 ==.
	Smain$main$642 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:917: button_interrupt_init();
	lcall	_button_interrupt_init
	Smain$main$643 ==.
	sjmp	00125$
00124$:
	Smain$main$644 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:921: else if ( light_mode != LIGHT_OFF ) { /* wdt test */
	mov	a,r7
	jz	00125$
	Smain$main$645 ==.
	Smain$main$646 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:922: wdt_flag = false;
	mov	dptr,#_wdt_flag
	clr	a
	movx	@dptr,a
	Smain$main$647 ==.
00125$:
	Smain$main$648 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:925: control_loop();
	lcall	_control_loop
	Smain$main$649 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:927: Timer0_Delay(24000000, 1, PERIOD_UNIT);
	mov	dptr,#_Timer0_Delay_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_Timer0_Delay_PARM_3
	mov	a,#0xe8
	movx	@dptr,a
	mov	a,#0x03
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x3600
	mov	b,#0x6e
	mov	a,#0x01
	lcall	_Timer0_Delay
	Smain$main$650 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:930: if (wdt_flag == false) {
	mov	dptr,#_wdt_flag
	movx	a,@dptr
	jnz	00127$
	Smain$main$651 ==.
	Smain$main$652 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:931: LS_LOG('I');
	mov	dpl,#0x49
	lcall	_uart_log
	Smain$main$653 ==.
	sjmp	00128$
00127$:
	Smain$main$654 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:938: else LS_LOG('W');
	mov	dpl,#0x57
	lcall	_uart_log
00128$:
	Smain$main$655 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:941: wdt_clear();
	lcall	_wdt_clear
	Smain$main$656 ==.
	ljmp	00130$
	Smain$main$657 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:943: }
	Smain$main$658 ==.
	XG$main$0$0 ==.
	ret
	Smain$main$659 ==.
	.area CSEG    (CODE)
	.area CONST   (CODE)
G$max_amp$0_0$0 == .
_max_amp:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x87	; 135
	.db #0x36	; 54	'6'
	.db #0x5a	; 90	'Z'
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0x36	; 54	'6'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x2d	; 45
	.db #0x00	; 0
	.db #0x87	; 135
	.db #0x00	; 0
	.db #0x2d	; 45
	.db #0x2d	; 45
	.db #0x00	; 0
G$min_amp$0_0$0 == .
_min_amp:
	.db #0x2d	; 45
	.db #0x2d	; 45
G$flashing$0_0$0 == .
_flashing:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
G$temp_controlling$0_0$0 == .
_temp_controlling:
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
G$next_mode$0_0$0 == .
_next_mode:
	.db #0x01	; 1
	.db #0x08	; 8
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x01	; 1
	.db #0x06	; 6
	.db #0x02	; 2
	.area XINIT   (CODE)
Fmain$__xinit_light_mode$0_0$0 == .
__xinit__light_mode:
	.db #0x00	; 0
Fmain$__xinit_is_uart_mode$0_0$0 == .
__xinit__is_uart_mode:
	.db #0x00	;  0
Fmain$__xinit_flashing_on$0_0$0 == .
__xinit__flashing_on:
	.db #0x01	;  1
Fmain$__xinit_flashing_count$0_0$0 == .
__xinit__flashing_count:
	.byte #0x00, #0x00	; 0
Fmain$__xinit_pwm$0_0$0 == .
__xinit__pwm:
	.byte #0x00, #0x00	; 0
	.byte #0x00, #0x00	; 0
Fmain$__xinit_light_control_mode$0_0$0 == .
__xinit__light_control_mode:
	.db #0x00	;  0
	.db #0x00	;  0
Fmain$__xinit_sample_count$0_0$0 == .
__xinit__sample_count:
	.db #0x00	; 0
Fmain$__xinit_acc_amp$0_0$0 == .
__xinit__acc_amp:
	.byte #0x00, #0x00, #0x00, #0x00	; 0
	.byte #0x00, #0x00, #0x00, #0x00	; 0
Fmain$__xinit_acc_temp$0_0$0 == .
__xinit__acc_temp:
	.byte #0x00, #0x00, #0x00, #0x00	; 0
Fmain$__xinit_cur_amp$0_0$0 == .
__xinit__cur_amp:
	.byte #0x00, #0x00	; 0
	.byte #0x00, #0x00	; 0
Fmain$__xinit_cur_temp$0_0$0 == .
__xinit__cur_temp:
	.byte #0x00, #0x00	; 0
Fmain$__xinit_good_amp_count$0_0$0 == .
__xinit__good_amp_count:
	.db #0x00	; 0
	.db #0x00	; 0
Fmain$__xinit_uart1_next_idx$0_0$0 == .
__xinit__uart1_next_idx:
	.db #0x00	; 0
Fmain$__xinit_uart1_read_idx$0_0$0 == .
__xinit__uart1_read_idx:
	.db #0x00	; 0
Fmain$__xinit_uart_flag$0_0$0 == .
__xinit__uart_flag:
	.db #0x00	;  0
Fmain$__xinit_button_pressed$0_0$0 == .
__xinit__button_pressed:
	.byte #0x00, #0x00, #0x00, #0x00	; 0
Fmain$__xinit_button_unpressed$0_0$0 == .
__xinit__button_unpressed:
	.byte #0x00, #0x00, #0x00, #0x00	; 0
Fmain$__xinit_uart_counter$0_0$0 == .
__xinit__uart_counter:
	.byte #0x00, #0x00, #0x00, #0x00	; 0
Fmain$__xinit_uart_rx_state$0_0$0 == .
__xinit__uart_rx_state:
	.db #0x00	; 0
Fmain$__xinit_lamp_state$0_0$0 == .
__xinit__lamp_state:
	.db #0x00	; 0
Fmain$__xinit_log_counter$0_0$0 == .
__xinit__log_counter:
	.byte #0x00, #0x00, #0x00, #0x00	; 0
Fmain$__xinit_wdt_flag$0_0$0 == .
__xinit__wdt_flag:
	.db #0x00	;  0
	.area INITIALIZER
	.area CABS    (ABS,CODE)

	.area .debug_line (NOLOAD)
	.dw	0,Ldebug_line_end-Ldebug_line_start
Ldebug_line_start:
	.dw	2
	.dw	0,Ldebug_line_stmt-6-Ldebug_line_start
	.db	1
	.db	1
	.db	-5
	.db	15
	.db	10
	.db	0
	.db	1
	.db	1
	.db	1
	.db	1
	.db	0
	.db	0
	.db	0
	.db	1
	.ascii "/../include/mcs51"
	.db	0
	.ascii "/../include"
	.db	0
	.db	0
	.ascii "C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c"
	.db	0
	.uleb128	0
	.uleb128	0
	.uleb128	0
	.db	0
Ldebug_line_stmt:
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Smain$Timer0_Delay$0)
	.db	3
	.sleb128	214
	.db	1
	.db	9
	.dw	Smain$Timer0_Delay$2-Smain$Timer0_Delay$0
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Smain$Timer0_Delay$3-Smain$Timer0_Delay$2
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$Timer0_Delay$4-Smain$Timer0_Delay$3
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$Timer0_Delay$5-Smain$Timer0_Delay$4
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$Timer0_Delay$6-Smain$Timer0_Delay$5
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$Timer0_Delay$8-Smain$Timer0_Delay$6
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$Timer0_Delay$9-Smain$Timer0_Delay$8
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$Timer0_Delay$10-Smain$Timer0_Delay$9
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$Timer0_Delay$11-Smain$Timer0_Delay$10
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$Timer0_Delay$12-Smain$Timer0_Delay$11
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$Timer0_Delay$13-Smain$Timer0_Delay$12
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$Timer0_Delay$14-Smain$Timer0_Delay$13
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$Timer0_Delay$16-Smain$Timer0_Delay$14
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	1+Smain$Timer0_Delay$17-Smain$Timer0_Delay$16
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Smain$uart_log$19)
	.db	3
	.sleb128	237
	.db	1
	.db	9
	.dw	Smain$uart_log$21-Smain$uart_log$19
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$uart_log$22-Smain$uart_log$21
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$uart_log$23-Smain$uart_log$22
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	1+Smain$uart_log$24-Smain$uart_log$23
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Smain$uart_logn$26)
	.db	3
	.sleb128	244
	.db	1
	.db	9
	.dw	Smain$uart_logn$28-Smain$uart_logn$26
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$uart_logn$30-Smain$uart_logn$28
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$uart_logn$31-Smain$uart_logn$30
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$uart_logn$34-Smain$uart_logn$31
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Smain$uart_logn$36-Smain$uart_logn$34
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$uart_logn$38-Smain$uart_logn$36
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$uart_logn$39-Smain$uart_logn$38
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$uart_logn$42-Smain$uart_logn$39
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$uart_logn$44-Smain$uart_logn$42
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$uart_logn$45-Smain$uart_logn$44
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$uart_logn$46-Smain$uart_logn$45
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	1+Smain$uart_logn$47-Smain$uart_logn$46
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Smain$log_init$49)
	.db	3
	.sleb128	265
	.db	1
	.db	9
	.dw	Smain$log_init$51-Smain$log_init$49
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$log_init$52-Smain$log_init$51
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$log_init$54-Smain$log_init$52
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$log_init$56-Smain$log_init$54
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	1+Smain$log_init$57-Smain$log_init$56
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Smain$SerialPort1_ISR$59)
	.db	3
	.sleb128	291
	.db	1
	.db	9
	.dw	Smain$SerialPort1_ISR$61-Smain$SerialPort1_ISR$59
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$SerialPort1_ISR$62-Smain$SerialPort1_ISR$61
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$SerialPort1_ISR$64-Smain$SerialPort1_ISR$62
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$SerialPort1_ISR$65-Smain$SerialPort1_ISR$64
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$SerialPort1_ISR$67-Smain$SerialPort1_ISR$65
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$SerialPort1_ISR$68-Smain$SerialPort1_ISR$67
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Smain$SerialPort1_ISR$70-Smain$SerialPort1_ISR$68
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$SerialPort1_ISR$72-Smain$SerialPort1_ISR$70
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Smain$SerialPort1_ISR$73-Smain$SerialPort1_ISR$72
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Smain$SerialPort1_ISR$74-Smain$SerialPort1_ISR$73
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Smain$uart_interrupt_init$76)
	.db	3
	.sleb128	313
	.db	1
	.db	9
	.dw	Smain$uart_interrupt_init$78-Smain$uart_interrupt_init$76
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$uart_interrupt_init$79-Smain$uart_interrupt_init$78
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$uart_interrupt_init$80-Smain$uart_interrupt_init$79
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Smain$uart_interrupt_init$81-Smain$uart_interrupt_init$80
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Smain$PinInterrupt_ISR$83)
	.db	3
	.sleb128	331
	.db	1
	.db	9
	.dw	Smain$PinInterrupt_ISR$85-Smain$PinInterrupt_ISR$83
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$PinInterrupt_ISR$86-Smain$PinInterrupt_ISR$85
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$PinInterrupt_ISR$88-Smain$PinInterrupt_ISR$86
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$PinInterrupt_ISR$90-Smain$PinInterrupt_ISR$88
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Smain$PinInterrupt_ISR$91-Smain$PinInterrupt_ISR$90
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$PinInterrupt_ISR$92-Smain$PinInterrupt_ISR$91
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Smain$PinInterrupt_ISR$93-Smain$PinInterrupt_ISR$92
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Smain$button_interrupt_init$95)
	.db	3
	.sleb128	346
	.db	1
	.db	9
	.dw	Smain$button_interrupt_init$97-Smain$button_interrupt_init$95
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Smain$button_interrupt_init$98-Smain$button_interrupt_init$97
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$button_interrupt_init$99-Smain$button_interrupt_init$98
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$button_interrupt_init$100-Smain$button_interrupt_init$99
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$button_interrupt_init$101-Smain$button_interrupt_init$100
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Smain$button_interrupt_init$102-Smain$button_interrupt_init$101
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Smain$enable_ntc$104)
	.db	3
	.sleb128	357
	.db	1
	.db	9
	.dw	Smain$enable_ntc$106-Smain$enable_ntc$104
	.db	3
	.sleb128	7
	.db	1
	.db	9
	.dw	1+Smain$enable_ntc$107-Smain$enable_ntc$106
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Smain$disable_ntc$109)
	.db	3
	.sleb128	366
	.db	1
	.db	9
	.dw	Smain$disable_ntc$111-Smain$disable_ntc$109
	.db	3
	.sleb128	7
	.db	1
	.db	9
	.dw	1+Smain$disable_ntc$112-Smain$disable_ntc$111
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Smain$init_sample$114)
	.db	3
	.sleb128	375
	.db	1
	.db	9
	.dw	Smain$init_sample$116-Smain$init_sample$114
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$init_sample$117-Smain$init_sample$116
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$init_sample$119-Smain$init_sample$117
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$init_sample$122-Smain$init_sample$119
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$init_sample$124-Smain$init_sample$122
	.db	3
	.sleb128	-1
	.db	1
	.db	9
	.dw	Smain$init_sample$126-Smain$init_sample$124
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Smain$init_sample$127-Smain$init_sample$126
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Smain$init_sample$128-Smain$init_sample$127
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Smain$init_peripherals_but_button_n_uart$130)
	.db	3
	.sleb128	389
	.db	1
	.db	9
	.dw	Smain$init_peripherals_but_button_n_uart$132-Smain$init_peripherals_but_button_n_uart$130
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$init_peripherals_but_button_n_uart$133-Smain$init_peripherals_but_button_n_uart$132
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Smain$init_peripherals_but_button_n_uart$134-Smain$init_peripherals_but_button_n_uart$133
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$init_peripherals_but_button_n_uart$135-Smain$init_peripherals_but_button_n_uart$134
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$init_peripherals_but_button_n_uart$136-Smain$init_peripherals_but_button_n_uart$135
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Smain$init_peripherals_but_button_n_uart$137-Smain$init_peripherals_but_button_n_uart$136
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$init_peripherals_but_button_n_uart$138-Smain$init_peripherals_but_button_n_uart$137
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$init_peripherals_but_button_n_uart$139-Smain$init_peripherals_but_button_n_uart$138
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$init_peripherals_but_button_n_uart$140-Smain$init_peripherals_but_button_n_uart$139
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$init_peripherals_but_button_n_uart$141-Smain$init_peripherals_but_button_n_uart$140
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$init_peripherals_but_button_n_uart$142-Smain$init_peripherals_but_button_n_uart$141
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$init_peripherals_but_button_n_uart$143-Smain$init_peripherals_but_button_n_uart$142
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$init_peripherals_but_button_n_uart$144-Smain$init_peripherals_but_button_n_uart$143
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$init_peripherals_but_button_n_uart$145-Smain$init_peripherals_but_button_n_uart$144
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$init_peripherals_but_button_n_uart$146-Smain$init_peripherals_but_button_n_uart$145
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$init_peripherals_but_button_n_uart$147-Smain$init_peripherals_but_button_n_uart$146
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$init_peripherals_but_button_n_uart$148-Smain$init_peripherals_but_button_n_uart$147
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$init_peripherals_but_button_n_uart$149-Smain$init_peripherals_but_button_n_uart$148
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$init_peripherals_but_button_n_uart$150-Smain$init_peripherals_but_button_n_uart$149
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$init_peripherals_but_button_n_uart$151-Smain$init_peripherals_but_button_n_uart$150
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$init_peripherals_but_button_n_uart$152-Smain$init_peripherals_but_button_n_uart$151
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$init_peripherals_but_button_n_uart$153-Smain$init_peripherals_but_button_n_uart$152
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$init_peripherals_but_button_n_uart$154-Smain$init_peripherals_but_button_n_uart$153
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$init_peripherals_but_button_n_uart$155-Smain$init_peripherals_but_button_n_uart$154
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$init_peripherals_but_button_n_uart$156-Smain$init_peripherals_but_button_n_uart$155
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$init_peripherals_but_button_n_uart$157-Smain$init_peripherals_but_button_n_uart$156
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Smain$init_peripherals_but_button_n_uart$158-Smain$init_peripherals_but_button_n_uart$157
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Smain$sample_amps$160)
	.db	3
	.sleb128	433
	.db	1
	.db	9
	.dw	Smain$sample_amps$162-Smain$sample_amps$160
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Smain$sample_amps$163-Smain$sample_amps$162
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$sample_amps$164-Smain$sample_amps$163
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$sample_amps$165-Smain$sample_amps$164
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$sample_amps$166-Smain$sample_amps$165
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$sample_amps$167-Smain$sample_amps$166
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$sample_amps$168-Smain$sample_amps$167
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Smain$sample_amps$169-Smain$sample_amps$168
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$sample_amps$170-Smain$sample_amps$169
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$sample_amps$171-Smain$sample_amps$170
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$sample_amps$172-Smain$sample_amps$171
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$sample_amps$173-Smain$sample_amps$172
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$sample_amps$174-Smain$sample_amps$173
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Smain$sample_amps$175-Smain$sample_amps$174
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Smain$sample_temperature$177)
	.db	3
	.sleb128	458
	.db	1
	.db	9
	.dw	Smain$sample_temperature$179-Smain$sample_temperature$177
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Smain$sample_temperature$180-Smain$sample_temperature$179
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$sample_temperature$181-Smain$sample_temperature$180
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$sample_temperature$182-Smain$sample_temperature$181
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$sample_temperature$183-Smain$sample_temperature$182
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$sample_temperature$184-Smain$sample_temperature$183
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$sample_temperature$185-Smain$sample_temperature$184
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	1+Smain$sample_temperature$186-Smain$sample_temperature$185
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Smain$has_high_beam$188)
	.db	3
	.sleb128	473
	.db	1
	.db	9
	.dw	Smain$has_high_beam$190-Smain$has_high_beam$188
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$has_high_beam$191-Smain$has_high_beam$190
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Smain$has_high_beam$192-Smain$has_high_beam$191
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Smain$avg_amp$194)
	.db	3
	.sleb128	478
	.db	1
	.db	9
	.dw	Smain$avg_amp$196-Smain$avg_amp$194
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$avg_amp$198-Smain$avg_amp$196
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$avg_amp$201-Smain$avg_amp$198
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$avg_amp$203-Smain$avg_amp$201
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	1+Smain$avg_amp$204-Smain$avg_amp$203
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Smain$target_amp$206)
	.db	3
	.sleb128	486
	.db	1
	.db	9
	.dw	Smain$target_amp$208-Smain$target_amp$206
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$target_amp$210-Smain$target_amp$208
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$target_amp$212-Smain$target_amp$210
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$target_amp$215-Smain$target_amp$212
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$target_amp$216-Smain$target_amp$215
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$target_amp$218-Smain$target_amp$216
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$target_amp$220-Smain$target_amp$218
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Smain$target_amp$222-Smain$target_amp$220
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	1+Smain$target_amp$223-Smain$target_amp$222
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Smain$changeMode$225)
	.db	3
	.sleb128	511
	.db	1
	.db	9
	.dw	Smain$changeMode$227-Smain$changeMode$225
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$changeMode$228-Smain$changeMode$227
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$changeMode$229-Smain$changeMode$228
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$changeMode$230-Smain$changeMode$229
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$changeMode$237-Smain$changeMode$230
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$changeMode$238-Smain$changeMode$237
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$changeMode$239-Smain$changeMode$238
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$changeMode$240-Smain$changeMode$239
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$changeMode$241-Smain$changeMode$240
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$changeMode$242-Smain$changeMode$241
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$changeMode$243-Smain$changeMode$242
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$changeMode$245-Smain$changeMode$243
	.db	3
	.sleb128	-7
	.db	1
	.db	9
	.dw	Smain$changeMode$247-Smain$changeMode$245
	.db	3
	.sleb128	13
	.db	1
	.db	9
	.dw	Smain$changeMode$249-Smain$changeMode$247
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$changeMode$252-Smain$changeMode$249
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$changeMode$254-Smain$changeMode$252
	.db	3
	.sleb128	-1
	.db	1
	.db	9
	.dw	Smain$changeMode$256-Smain$changeMode$254
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Smain$changeMode$258-Smain$changeMode$256
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$changeMode$262-Smain$changeMode$258
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$changeMode$263-Smain$changeMode$262
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$changeMode$265-Smain$changeMode$263
	.db	3
	.sleb128	-2
	.db	1
	.db	9
	.dw	Smain$changeMode$267-Smain$changeMode$265
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Smain$changeMode$268-Smain$changeMode$267
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$changeMode$269-Smain$changeMode$268
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$changeMode$270-Smain$changeMode$269
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Smain$changeMode$271-Smain$changeMode$270
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Smain$toNextMode$273)
	.db	3
	.sleb128	551
	.db	1
	.db	9
	.dw	Smain$toNextMode$275-Smain$toNextMode$273
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$toNextMode$276-Smain$toNextMode$275
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Smain$toNextMode$277-Smain$toNextMode$276
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Smain$process_uart$279)
	.db	3
	.sleb128	557
	.db	1
	.db	9
	.dw	Smain$process_uart$281-Smain$process_uart$279
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$process_uart$283-Smain$process_uart$281
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$process_uart$284-Smain$process_uart$283
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$process_uart$286-Smain$process_uart$284
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$process_uart$290-Smain$process_uart$286
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$process_uart$291-Smain$process_uart$290
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$process_uart$292-Smain$process_uart$291
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$process_uart$293-Smain$process_uart$292
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$process_uart$294-Smain$process_uart$293
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$process_uart$295-Smain$process_uart$294
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$process_uart$296-Smain$process_uart$295
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$process_uart$297-Smain$process_uart$296
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$process_uart$298-Smain$process_uart$297
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$process_uart$299-Smain$process_uart$298
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$process_uart$300-Smain$process_uart$299
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$process_uart$301-Smain$process_uart$300
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$process_uart$302-Smain$process_uart$301
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$process_uart$303-Smain$process_uart$302
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$process_uart$304-Smain$process_uart$303
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$process_uart$305-Smain$process_uart$304
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$process_uart$306-Smain$process_uart$305
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$process_uart$307-Smain$process_uart$306
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$process_uart$308-Smain$process_uart$307
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$process_uart$309-Smain$process_uart$308
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$process_uart$310-Smain$process_uart$309
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$process_uart$311-Smain$process_uart$310
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$process_uart$312-Smain$process_uart$311
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$process_uart$313-Smain$process_uart$312
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$process_uart$314-Smain$process_uart$313
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$process_uart$315-Smain$process_uart$314
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$process_uart$316-Smain$process_uart$315
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$process_uart$317-Smain$process_uart$316
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$process_uart$318-Smain$process_uart$317
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$process_uart$319-Smain$process_uart$318
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Smain$process_uart$320-Smain$process_uart$319
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$process_uart$321-Smain$process_uart$320
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$process_uart$323-Smain$process_uart$321
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$process_uart$324-Smain$process_uart$323
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$process_uart$325-Smain$process_uart$324
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$process_uart$326-Smain$process_uart$325
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$process_uart$328-Smain$process_uart$326
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$process_uart$330-Smain$process_uart$328
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Smain$process_uart$331-Smain$process_uart$330
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Smain$process_uart$332-Smain$process_uart$331
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Smain$process_uart$333-Smain$process_uart$332
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Smain$process_button$335)
	.db	3
	.sleb128	617
	.db	1
	.db	9
	.dw	Smain$process_button$337-Smain$process_button$335
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$process_button$339-Smain$process_button$337
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$process_button$340-Smain$process_button$339
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$process_button$341-Smain$process_button$340
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$process_button$342-Smain$process_button$341
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$process_button$344-Smain$process_button$342
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$process_button$345-Smain$process_button$344
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$process_button$347-Smain$process_button$345
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$process_button$350-Smain$process_button$347
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$process_button$352-Smain$process_button$350
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Smain$process_button$354-Smain$process_button$352
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$process_button$355-Smain$process_button$354
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$process_button$356-Smain$process_button$355
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$process_button$358-Smain$process_button$356
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$process_button$360-Smain$process_button$358
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$process_button$362-Smain$process_button$360
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$process_button$363-Smain$process_button$362
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$process_button$364-Smain$process_button$363
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$process_button$367-Smain$process_button$364
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Smain$process_button$368-Smain$process_button$367
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$process_button$370-Smain$process_button$368
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$process_button$372-Smain$process_button$370
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	1+Smain$process_button$373-Smain$process_button$372
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Smain$stop_leds$375)
	.db	3
	.sleb128	652
	.db	1
	.db	9
	.dw	Smain$stop_leds$377-Smain$stop_leds$375
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Smain$stop_leds$378-Smain$stop_leds$377
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$stop_leds$379-Smain$stop_leds$378
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$stop_leds$380-Smain$stop_leds$379
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$stop_leds$381-Smain$stop_leds$380
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$stop_leds$382-Smain$stop_leds$381
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$stop_leds$383-Smain$stop_leds$382
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$stop_leds$384-Smain$stop_leds$383
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$stop_leds$385-Smain$stop_leds$384
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Smain$stop_leds$386-Smain$stop_leds$385
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Smain$activate_leds$388)
	.db	3
	.sleb128	667
	.db	1
	.db	9
	.dw	Smain$activate_leds$390-Smain$activate_leds$388
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$activate_leds$391-Smain$activate_leds$390
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$activate_leds$392-Smain$activate_leds$391
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$activate_leds$393-Smain$activate_leds$392
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$activate_leds$394-Smain$activate_leds$393
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$activate_leds$395-Smain$activate_leds$394
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$activate_leds$396-Smain$activate_leds$395
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Smain$activate_leds$397-Smain$activate_leds$396
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Smain$mode_changing_control$399)
	.db	3
	.sleb128	684
	.db	1
	.db	9
	.dw	Smain$mode_changing_control$401-Smain$mode_changing_control$399
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$mode_changing_control$403-Smain$mode_changing_control$401
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$mode_changing_control$412-Smain$mode_changing_control$403
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$mode_changing_control$413-Smain$mode_changing_control$412
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$mode_changing_control$414-Smain$mode_changing_control$413
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$mode_changing_control$416-Smain$mode_changing_control$414
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$mode_changing_control$418-Smain$mode_changing_control$416
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$mode_changing_control$420-Smain$mode_changing_control$418
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$mode_changing_control$422-Smain$mode_changing_control$420
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$mode_changing_control$425-Smain$mode_changing_control$422
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$mode_changing_control$426-Smain$mode_changing_control$425
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$mode_changing_control$428-Smain$mode_changing_control$426
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$mode_changing_control$429-Smain$mode_changing_control$428
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$mode_changing_control$431-Smain$mode_changing_control$429
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$mode_changing_control$432-Smain$mode_changing_control$431
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$mode_changing_control$433-Smain$mode_changing_control$432
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$mode_changing_control$434-Smain$mode_changing_control$433
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$mode_changing_control$436-Smain$mode_changing_control$434
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$mode_changing_control$439-Smain$mode_changing_control$436
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$mode_changing_control$441-Smain$mode_changing_control$439
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Smain$mode_changing_control$442-Smain$mode_changing_control$441
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$mode_changing_control$444-Smain$mode_changing_control$442
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$mode_changing_control$446-Smain$mode_changing_control$444
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Smain$mode_changing_control$447-Smain$mode_changing_control$446
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$mode_changing_control$449-Smain$mode_changing_control$447
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$mode_changing_control$450-Smain$mode_changing_control$449
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$mode_changing_control$451-Smain$mode_changing_control$450
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$mode_changing_control$452-Smain$mode_changing_control$451
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$mode_changing_control$454-Smain$mode_changing_control$452
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$mode_changing_control$457-Smain$mode_changing_control$454
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$mode_changing_control$459-Smain$mode_changing_control$457
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$mode_changing_control$462-Smain$mode_changing_control$459
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$mode_changing_control$464-Smain$mode_changing_control$462
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Smain$mode_changing_control$465-Smain$mode_changing_control$464
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$mode_changing_control$467-Smain$mode_changing_control$465
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$mode_changing_control$469-Smain$mode_changing_control$467
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Smain$mode_changing_control$471-Smain$mode_changing_control$469
	.db	3
	.sleb128	-47
	.db	1
	.db	9
	.dw	Smain$mode_changing_control$473-Smain$mode_changing_control$471
	.db	3
	.sleb128	49
	.db	1
	.db	9
	.dw	Smain$mode_changing_control$474-Smain$mode_changing_control$473
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Smain$mode_changing_control$475-Smain$mode_changing_control$474
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Smain$is_stable$477)
	.db	3
	.sleb128	740
	.db	1
	.db	9
	.dw	Smain$is_stable$480-Smain$is_stable$477
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$is_stable$483-Smain$is_stable$480
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$is_stable$485-Smain$is_stable$483
	.db	3
	.sleb128	-1
	.db	1
	.db	9
	.dw	Smain$is_stable$487-Smain$is_stable$485
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Smain$is_stable$488-Smain$is_stable$487
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Smain$is_stable$489-Smain$is_stable$488
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Smain$mode_stable_control$491)
	.db	3
	.sleb128	748
	.db	1
	.db	9
	.dw	Smain$mode_stable_control$493-Smain$mode_stable_control$491
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$mode_stable_control$494-Smain$mode_stable_control$493
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$mode_stable_control$496-Smain$mode_stable_control$494
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$mode_stable_control$501-Smain$mode_stable_control$496
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$mode_stable_control$502-Smain$mode_stable_control$501
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$mode_stable_control$504-Smain$mode_stable_control$502
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$mode_stable_control$505-Smain$mode_stable_control$504
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$mode_stable_control$506-Smain$mode_stable_control$505
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$mode_stable_control$508-Smain$mode_stable_control$506
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$mode_stable_control$509-Smain$mode_stable_control$508
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$mode_stable_control$510-Smain$mode_stable_control$509
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$mode_stable_control$511-Smain$mode_stable_control$510
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$mode_stable_control$512-Smain$mode_stable_control$511
	.db	3
	.sleb128	-10
	.db	1
	.db	9
	.dw	Smain$mode_stable_control$513-Smain$mode_stable_control$512
	.db	3
	.sleb128	13
	.db	1
	.db	9
	.dw	Smain$mode_stable_control$514-Smain$mode_stable_control$513
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Smain$mode_stable_control$515-Smain$mode_stable_control$514
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Smain$control_loop$517)
	.db	3
	.sleb128	770
	.db	1
	.db	9
	.dw	Smain$control_loop$519-Smain$control_loop$517
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Smain$control_loop$520-Smain$control_loop$519
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$control_loop$521-Smain$control_loop$520
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$control_loop$523-Smain$control_loop$521
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$control_loop$525-Smain$control_loop$523
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$control_loop$527-Smain$control_loop$525
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$control_loop$528-Smain$control_loop$527
	.db	3
	.sleb128	-1
	.db	1
	.db	9
	.dw	Smain$control_loop$529-Smain$control_loop$528
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Smain$control_loop$530-Smain$control_loop$529
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$control_loop$532-Smain$control_loop$530
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$control_loop$534-Smain$control_loop$532
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$control_loop$536-Smain$control_loop$534
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$control_loop$538-Smain$control_loop$536
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$control_loop$540-Smain$control_loop$538
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Smain$control_loop$542-Smain$control_loop$540
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$control_loop$544-Smain$control_loop$542
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$control_loop$546-Smain$control_loop$544
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$control_loop$548-Smain$control_loop$546
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Smain$control_loop$550-Smain$control_loop$548
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$control_loop$552-Smain$control_loop$550
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	1+Smain$control_loop$553-Smain$control_loop$552
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Smain$wdt_init$555)
	.db	3
	.sleb128	809
	.db	1
	.db	9
	.dw	Smain$wdt_init$557-Smain$wdt_init$555
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$wdt_init$558-Smain$wdt_init$557
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$wdt_init$559-Smain$wdt_init$558
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$wdt_init$560-Smain$wdt_init$559
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$wdt_init$561-Smain$wdt_init$560
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$wdt_init$562-Smain$wdt_init$561
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$wdt_init$563-Smain$wdt_init$562
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$wdt_init$564-Smain$wdt_init$563
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$wdt_init$565-Smain$wdt_init$564
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$wdt_init$566-Smain$wdt_init$565
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$wdt_init$567-Smain$wdt_init$566
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$wdt_init$568-Smain$wdt_init$567
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$wdt_init$569-Smain$wdt_init$568
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Smain$wdt_init$570-Smain$wdt_init$569
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Smain$wdt_init$571-Smain$wdt_init$570
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Smain$wdt_clear$573)
	.db	3
	.sleb128	832
	.db	1
	.db	9
	.dw	Smain$wdt_clear$575-Smain$wdt_clear$573
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Smain$wdt_clear$576-Smain$wdt_clear$575
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$wdt_clear$577-Smain$wdt_clear$576
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$wdt_clear$578-Smain$wdt_clear$577
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$wdt_clear$579-Smain$wdt_clear$578
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$wdt_clear$580-Smain$wdt_clear$579
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$wdt_clear$581-Smain$wdt_clear$580
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$wdt_clear$582-Smain$wdt_clear$581
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Smain$wdt_clear$583-Smain$wdt_clear$582
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Smain$main$585)
	.db	3
	.sleb128	849
	.db	1
	.db	9
	.dw	Smain$main$587-Smain$main$585
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Smain$main$588-Smain$main$587
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Smain$main$589-Smain$main$588
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$main$590-Smain$main$589
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$591-Smain$main$590
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Smain$main$593-Smain$main$591
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$594-Smain$main$593
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$596-Smain$main$594
	.db	3
	.sleb128	-2
	.db	1
	.db	9
	.dw	Smain$main$597-Smain$main$596
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Smain$main$598-Smain$main$597
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$main$600-Smain$main$598
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$602-Smain$main$600
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Smain$main$603-Smain$main$602
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$604-Smain$main$603
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$main$606-Smain$main$604
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Smain$main$609-Smain$main$606
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$611-Smain$main$609
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$main$612-Smain$main$611
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$main$614-Smain$main$612
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$616-Smain$main$614
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$618-Smain$main$616
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$main$621-Smain$main$618
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Smain$main$623-Smain$main$621
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Smain$main$625-Smain$main$623
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$626-Smain$main$625
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$628-Smain$main$626
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$629-Smain$main$628
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$630-Smain$main$629
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$main$631-Smain$main$630
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$632-Smain$main$631
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$633-Smain$main$632
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$634-Smain$main$633
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$635-Smain$main$634
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$636-Smain$main$635
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$main$637-Smain$main$636
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$639-Smain$main$637
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$642-Smain$main$639
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$main$644-Smain$main$642
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Smain$main$646-Smain$main$644
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$648-Smain$main$646
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Smain$main$649-Smain$main$648
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$main$650-Smain$main$649
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Smain$main$652-Smain$main$650
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$654-Smain$main$652
	.db	3
	.sleb128	7
	.db	1
	.db	9
	.dw	Smain$main$655-Smain$main$654
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Smain$main$657-Smain$main$655
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	1+Smain$main$658-Smain$main$657
	.db	0
	.uleb128	1
	.db	1
Ldebug_line_end:

	.area .debug_loc (NOLOAD)
Ldebug_loc_start:
	.dw	0,(Smain$main$586)
	.dw	0,(Smain$main$659)
	.dw	2
	.db	134
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Smain$wdt_clear$574)
	.dw	0,(Smain$wdt_clear$584)
	.dw	2
	.db	134
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Smain$wdt_init$556)
	.dw	0,(Smain$wdt_init$572)
	.dw	2
	.db	134
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Smain$control_loop$518)
	.dw	0,(Smain$control_loop$554)
	.dw	2
	.db	134
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Smain$mode_stable_control$492)
	.dw	0,(Smain$mode_stable_control$516)
	.dw	2
	.db	134
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Smain$is_stable$478)
	.dw	0,(Smain$is_stable$490)
	.dw	2
	.db	134
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Smain$mode_changing_control$400)
	.dw	0,(Smain$mode_changing_control$476)
	.dw	2
	.db	134
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Smain$activate_leds$389)
	.dw	0,(Smain$activate_leds$398)
	.dw	2
	.db	134
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Smain$stop_leds$376)
	.dw	0,(Smain$stop_leds$387)
	.dw	2
	.db	134
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Smain$process_button$336)
	.dw	0,(Smain$process_button$374)
	.dw	2
	.db	134
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Smain$process_uart$280)
	.dw	0,(Smain$process_uart$334)
	.dw	2
	.db	134
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Smain$toNextMode$274)
	.dw	0,(Smain$toNextMode$278)
	.dw	2
	.db	134
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Smain$changeMode$226)
	.dw	0,(Smain$changeMode$272)
	.dw	2
	.db	134
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Smain$target_amp$207)
	.dw	0,(Smain$target_amp$224)
	.dw	2
	.db	134
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Smain$avg_amp$195)
	.dw	0,(Smain$avg_amp$205)
	.dw	2
	.db	134
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Smain$has_high_beam$189)
	.dw	0,(Smain$has_high_beam$193)
	.dw	2
	.db	134
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Smain$sample_temperature$178)
	.dw	0,(Smain$sample_temperature$187)
	.dw	2
	.db	134
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Smain$sample_amps$161)
	.dw	0,(Smain$sample_amps$176)
	.dw	2
	.db	134
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Smain$init_peripherals_but_button_n_uart$131)
	.dw	0,(Smain$init_peripherals_but_button_n_uart$159)
	.dw	2
	.db	134
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Smain$init_sample$115)
	.dw	0,(Smain$init_sample$129)
	.dw	2
	.db	134
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Smain$disable_ntc$110)
	.dw	0,(Smain$disable_ntc$113)
	.dw	2
	.db	134
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Smain$enable_ntc$105)
	.dw	0,(Smain$enable_ntc$108)
	.dw	2
	.db	134
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Smain$button_interrupt_init$96)
	.dw	0,(Smain$button_interrupt_init$103)
	.dw	2
	.db	134
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Smain$PinInterrupt_ISR$84)
	.dw	0,(Smain$PinInterrupt_ISR$94)
	.dw	2
	.db	134
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Smain$uart_interrupt_init$77)
	.dw	0,(Smain$uart_interrupt_init$82)
	.dw	2
	.db	134
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Smain$SerialPort1_ISR$60)
	.dw	0,(Smain$SerialPort1_ISR$75)
	.dw	2
	.db	134
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Smain$log_init$50)
	.dw	0,(Smain$log_init$58)
	.dw	2
	.db	134
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Smain$uart_logn$27)
	.dw	0,(Smain$uart_logn$48)
	.dw	2
	.db	134
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Smain$uart_log$20)
	.dw	0,(Smain$uart_log$25)
	.dw	2
	.db	134
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Smain$Timer0_Delay$1)
	.dw	0,(Smain$Timer0_Delay$18)
	.dw	2
	.db	134
	.sleb128	1
	.dw	0,0
	.dw	0,0

	.area .debug_abbrev (NOLOAD)
Ldebug_abbrev:
	.uleb128	1
	.uleb128	17
	.db	1
	.uleb128	3
	.uleb128	8
	.uleb128	16
	.uleb128	6
	.uleb128	19
	.uleb128	11
	.uleb128	37
	.uleb128	8
	.uleb128	0
	.uleb128	0
	.uleb128	2
	.uleb128	46
	.db	1
	.uleb128	1
	.uleb128	19
	.uleb128	3
	.uleb128	8
	.uleb128	17
	.uleb128	1
	.uleb128	18
	.uleb128	1
	.uleb128	63
	.uleb128	12
	.uleb128	64
	.uleb128	6
	.uleb128	0
	.uleb128	0
	.uleb128	3
	.uleb128	5
	.db	0
	.uleb128	2
	.uleb128	10
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	19
	.uleb128	0
	.uleb128	0
	.uleb128	4
	.uleb128	5
	.db	0
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	19
	.uleb128	0
	.uleb128	0
	.uleb128	5
	.uleb128	11
	.db	0
	.uleb128	17
	.uleb128	1
	.uleb128	18
	.uleb128	1
	.uleb128	0
	.uleb128	0
	.uleb128	6
	.uleb128	52
	.db	0
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	19
	.uleb128	0
	.uleb128	0
	.uleb128	7
	.uleb128	36
	.db	0
	.uleb128	3
	.uleb128	8
	.uleb128	11
	.uleb128	11
	.uleb128	62
	.uleb128	11
	.uleb128	0
	.uleb128	0
	.uleb128	8
	.uleb128	11
	.db	1
	.uleb128	17
	.uleb128	1
	.uleb128	18
	.uleb128	1
	.uleb128	0
	.uleb128	0
	.uleb128	9
	.uleb128	11
	.db	1
	.uleb128	1
	.uleb128	19
	.uleb128	17
	.uleb128	1
	.uleb128	0
	.uleb128	0
	.uleb128	10
	.uleb128	52
	.db	0
	.uleb128	2
	.uleb128	10
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	19
	.uleb128	0
	.uleb128	0
	.uleb128	11
	.uleb128	46
	.db	1
	.uleb128	1
	.uleb128	19
	.uleb128	3
	.uleb128	8
	.uleb128	17
	.uleb128	1
	.uleb128	18
	.uleb128	1
	.uleb128	54
	.uleb128	11
	.uleb128	63
	.uleb128	12
	.uleb128	64
	.uleb128	6
	.uleb128	0
	.uleb128	0
	.uleb128	12
	.uleb128	46
	.db	0
	.uleb128	3
	.uleb128	8
	.uleb128	17
	.uleb128	1
	.uleb128	18
	.uleb128	1
	.uleb128	63
	.uleb128	12
	.uleb128	64
	.uleb128	6
	.uleb128	0
	.uleb128	0
	.uleb128	13
	.uleb128	46
	.db	1
	.uleb128	1
	.uleb128	19
	.uleb128	3
	.uleb128	8
	.uleb128	17
	.uleb128	1
	.uleb128	18
	.uleb128	1
	.uleb128	63
	.uleb128	12
	.uleb128	64
	.uleb128	6
	.uleb128	73
	.uleb128	19
	.uleb128	0
	.uleb128	0
	.uleb128	14
	.uleb128	11
	.db	1
	.uleb128	1
	.uleb128	19
	.uleb128	17
	.uleb128	1
	.uleb128	18
	.uleb128	1
	.uleb128	0
	.uleb128	0
	.uleb128	15
	.uleb128	11
	.db	1
	.uleb128	1
	.uleb128	19
	.uleb128	0
	.uleb128	0
	.uleb128	16
	.uleb128	11
	.db	1
	.uleb128	17
	.uleb128	1
	.uleb128	0
	.uleb128	0
	.uleb128	17
	.uleb128	52
	.db	0
	.uleb128	2
	.uleb128	10
	.uleb128	3
	.uleb128	8
	.uleb128	60
	.uleb128	12
	.uleb128	63
	.uleb128	12
	.uleb128	73
	.uleb128	19
	.uleb128	0
	.uleb128	0
	.uleb128	18
	.uleb128	1
	.db	1
	.uleb128	1
	.uleb128	19
	.uleb128	11
	.uleb128	11
	.uleb128	73
	.uleb128	19
	.uleb128	0
	.uleb128	0
	.uleb128	19
	.uleb128	33
	.db	0
	.uleb128	47
	.uleb128	11
	.uleb128	0
	.uleb128	0
	.uleb128	20
	.uleb128	52
	.db	0
	.uleb128	2
	.uleb128	10
	.uleb128	3
	.uleb128	8
	.uleb128	63
	.uleb128	12
	.uleb128	73
	.uleb128	19
	.uleb128	0
	.uleb128	0
	.uleb128	21
	.uleb128	53
	.db	0
	.uleb128	73
	.uleb128	19
	.uleb128	0
	.uleb128	0
	.uleb128	22
	.uleb128	38
	.db	0
	.uleb128	73
	.uleb128	19
	.uleb128	0
	.uleb128	0
	.uleb128	0

	.area .debug_info (NOLOAD)
	.dw	0,Ldebug_info_end-Ldebug_info_start
Ldebug_info_start:
	.dw	2
	.dw	0,(Ldebug_abbrev)
	.db	4
	.uleb128	1
	.ascii "C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c"
	.db	0
	.dw	0,(Ldebug_line_start+-4)
	.db	1
	.ascii "SDCC version 4.2.6 #13647"
	.db	0
	.uleb128	2
	.dw	0,286
	.ascii "Timer0_Delay"
	.db	0
	.dw	0,(_Timer0_Delay)
	.dw	0,(XG$Timer0_Delay$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+580)
	.uleb128	3
	.db	5
	.db	3
	.dw	0,(_Timer0_Delay_u32SYSCLK_65536_145)
	.ascii "u32SYSCLK"
	.db	0
	.dw	0,286
	.uleb128	4
	.ascii "u16CNT"
	.db	0
	.dw	0,303
	.uleb128	4
	.ascii "u16DLYUnit"
	.db	0
	.dw	0,303
	.uleb128	5
	.dw	0,(Smain$Timer0_Delay$7)
	.dw	0,(Smain$Timer0_Delay$15)
	.uleb128	6
	.ascii "TL0TMP"
	.db	0
	.dw	0,360
	.uleb128	6
	.ascii "TH0TMP"
	.db	0
	.dw	0,360
	.uleb128	0
	.uleb128	7
	.ascii "unsigned long"
	.db	0
	.db	4
	.db	7
	.uleb128	7
	.ascii "unsigned int"
	.db	0
	.db	2
	.db	7
	.uleb128	2
	.dw	0,360
	.ascii "uart_log"
	.db	0
	.dw	0,(_uart_log)
	.dw	0,(XG$uart_log$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+560)
	.uleb128	3
	.db	5
	.db	3
	.dw	0,(_uart_log_c_65536_148)
	.ascii "c"
	.db	0
	.dw	0,360
	.uleb128	0
	.uleb128	7
	.ascii "unsigned char"
	.db	0
	.db	1
	.db	8
	.uleb128	2
	.dw	0,480
	.ascii "uart_logn"
	.db	0
	.dw	0,(_uart_logn)
	.dw	0,(XG$uart_logn$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+540)
	.uleb128	3
	.db	5
	.db	3
	.dw	0,(_uart_logn_n_65536_150)
	.ascii "n"
	.db	0
	.dw	0,286
	.uleb128	5
	.dw	0,(Smain$uart_logn$29)
	.dw	0,(Smain$uart_logn$32)
	.uleb128	8
	.dw	0,(Smain$uart_logn$33)
	.dw	0,(Smain$uart_logn$37)
	.uleb128	9
	.dw	0,465
	.dw	0,(Smain$uart_logn$40)
	.uleb128	8
	.dw	0,(Smain$uart_logn$41)
	.dw	0,(Smain$uart_logn$43)
	.uleb128	6
	.ascii "res"
	.db	0
	.dw	0,286
	.uleb128	0
	.uleb128	0
	.uleb128	10
	.db	5
	.db	3
	.dw	0,(_uart_logn_e_65537_153)
	.ascii "e"
	.db	0
	.dw	0,286
	.uleb128	0
	.uleb128	0
	.uleb128	2
	.dw	0,517
	.ascii "log_init"
	.db	0
	.dw	0,(_log_init)
	.dw	0,(XG$log_init$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+520)
	.uleb128	5
	.dw	0,(Smain$log_init$53)
	.dw	0,(Smain$log_init$55)
	.uleb128	0
	.uleb128	11
	.dw	0,571
	.ascii "SerialPort1_ISR"
	.db	0
	.dw	0,(_SerialPort1_ISR)
	.dw	0,(XG$SerialPort1_ISR$0$0+1)
	.db	3
	.db	1
	.dw	0,(Ldebug_loc_start+500)
	.uleb128	5
	.dw	0,(Smain$SerialPort1_ISR$63)
	.dw	0,(Smain$SerialPort1_ISR$66)
	.uleb128	5
	.dw	0,(Smain$SerialPort1_ISR$69)
	.dw	0,(Smain$SerialPort1_ISR$71)
	.uleb128	0
	.uleb128	12
	.ascii "uart_interrupt_init"
	.db	0
	.dw	0,(_uart_interrupt_init)
	.dw	0,(XG$uart_interrupt_init$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+480)
	.uleb128	11
	.dw	0,651
	.ascii "PinInterrupt_ISR"
	.db	0
	.dw	0,(_PinInterrupt_ISR)
	.dw	0,(XG$PinInterrupt_ISR$0$0+1)
	.db	3
	.db	1
	.dw	0,(Ldebug_loc_start+460)
	.uleb128	5
	.dw	0,(Smain$PinInterrupt_ISR$87)
	.dw	0,(Smain$PinInterrupt_ISR$89)
	.uleb128	0
	.uleb128	12
	.ascii "button_interrupt_init"
	.db	0
	.dw	0,(_button_interrupt_init)
	.dw	0,(XG$button_interrupt_init$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+440)
	.uleb128	12
	.ascii "enable_ntc"
	.db	0
	.dw	0,(_enable_ntc)
	.dw	0,(XG$enable_ntc$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+420)
	.uleb128	12
	.ascii "disable_ntc"
	.db	0
	.dw	0,(_disable_ntc)
	.dw	0,(XG$disable_ntc$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+400)
	.uleb128	2
	.dw	0,795
	.ascii "init_sample"
	.db	0
	.dw	0,(_init_sample)
	.dw	0,(XG$init_sample$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+380)
	.uleb128	8
	.dw	0,(Smain$init_sample$121)
	.dw	0,(Smain$init_sample$125)
	.uleb128	5
	.dw	0,(Smain$init_sample$118)
	.dw	0,(Smain$init_sample$120)
	.uleb128	6
	.ascii "i"
	.db	0
	.dw	0,2518
	.uleb128	0
	.uleb128	0
	.uleb128	12
	.ascii "init_peripherals_but_button_n_uart"
	.db	0
	.dw	0,(_init_peripherals_but_button_n_uart)
	.dw	0,(XG$init_peripherals_but_button_n_uart$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+360)
	.uleb128	12
	.ascii "sample_amps"
	.db	0
	.dw	0,(_sample_amps)
	.dw	0,(XG$sample_amps$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+340)
	.uleb128	12
	.ascii "sample_temperature"
	.db	0
	.dw	0,(_sample_temperature)
	.dw	0,(XG$sample_temperature$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+320)
	.uleb128	7
	.ascii "signed char"
	.db	0
	.db	1
	.db	5
	.uleb128	13
	.dw	0,971
	.ascii "has_high_beam"
	.db	0
	.dw	0,(_has_high_beam)
	.dw	0,(XG$has_high_beam$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+300)
	.dw	0,903
	.uleb128	3
	.db	5
	.db	3
	.dw	0,(_has_high_beam_mode_65536_186)
	.ascii "mode"
	.db	0
	.dw	0,903
	.uleb128	0
	.uleb128	7
	.ascii "unsigned int"
	.db	0
	.db	2
	.db	7
	.uleb128	13
	.dw	0,1051
	.ascii "avg_amp"
	.db	0
	.dw	0,(_avg_amp)
	.dw	0,(XG$avg_amp$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+280)
	.dw	0,971
	.uleb128	3
	.db	5
	.db	3
	.dw	0,(_avg_amp_idx_65536_188)
	.ascii "idx"
	.db	0
	.dw	0,360
	.uleb128	5
	.dw	0,(Smain$avg_amp$197)
	.dw	0,(Smain$avg_amp$199)
	.uleb128	5
	.dw	0,(Smain$avg_amp$200)
	.dw	0,(Smain$avg_amp$202)
	.uleb128	0
	.uleb128	13
	.dw	0,1162
	.ascii "target_amp"
	.db	0
	.dw	0,(_target_amp)
	.dw	0,(XG$target_amp$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+260)
	.dw	0,360
	.uleb128	3
	.db	5
	.db	3
	.dw	0,(_target_amp_mode_65536_192)
	.ascii "mode"
	.db	0
	.dw	0,360
	.uleb128	4
	.ascii "idx"
	.db	0
	.dw	0,360
	.uleb128	9
	.dw	0,1152
	.dw	0,(Smain$target_amp$209)
	.uleb128	5
	.dw	0,(Smain$target_amp$211)
	.dw	0,(Smain$target_amp$213)
	.uleb128	8
	.dw	0,(Smain$target_amp$214)
	.dw	0,(Smain$target_amp$217)
	.uleb128	6
	.ascii "m"
	.db	0
	.dw	0,286
	.uleb128	6
	.ascii "a"
	.db	0
	.dw	0,286
	.uleb128	0
	.uleb128	0
	.uleb128	5
	.dw	0,(Smain$target_amp$219)
	.dw	0,(Smain$target_amp$221)
	.uleb128	0
	.uleb128	2
	.dw	0,1354
	.ascii "changeMode"
	.db	0
	.dw	0,(_changeMode)
	.dw	0,(XG$changeMode$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+240)
	.uleb128	3
	.db	5
	.db	3
	.dw	0,(_changeMode_new_mode_65536_198)
	.ascii "new_mode"
	.db	0
	.dw	0,360
	.uleb128	14
	.dw	0,1281
	.dw	0,(Smain$changeMode$236)
	.dw	0,(Smain$changeMode$246)
	.uleb128	9
	.dw	0,1273
	.dw	0,(Smain$changeMode$231)
	.uleb128	5
	.dw	0,(Smain$changeMode$234)
	.dw	0,(Smain$changeMode$235)
	.uleb128	5
	.dw	0,(Smain$changeMode$233)
	.dw	0,(Smain$changeMode$234)
	.uleb128	5
	.dw	0,(Smain$changeMode$232)
	.dw	0,(Smain$changeMode$233)
	.uleb128	6
	.ascii "target"
	.db	0
	.dw	0,2525
	.uleb128	0
	.uleb128	6
	.ascii "i"
	.db	0
	.dw	0,2518
	.uleb128	0
	.uleb128	14
	.dw	0,1311
	.dw	0,(Smain$changeMode$251)
	.dw	0,(Smain$changeMode$255)
	.uleb128	5
	.dw	0,(Smain$changeMode$248)
	.dw	0,(Smain$changeMode$250)
	.uleb128	6
	.ascii "i"
	.db	0
	.dw	0,2518
	.uleb128	0
	.uleb128	8
	.dw	0,(Smain$changeMode$261)
	.dw	0,(Smain$changeMode$266)
	.uleb128	15
	.dw	0,1345
	.uleb128	8
	.dw	0,(Smain$changeMode$259)
	.dw	0,(Smain$changeMode$260)
	.uleb128	5
	.dw	0,(Smain$changeMode$257)
	.dw	0,(Smain$changeMode$259)
	.uleb128	0
	.uleb128	0
	.uleb128	6
	.ascii "i"
	.db	0
	.dw	0,2518
	.uleb128	0
	.uleb128	0
	.uleb128	12
	.ascii "toNextMode"
	.db	0
	.dw	0,(_toNextMode)
	.dw	0,(XG$toNextMode$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+220)
	.uleb128	7
	.ascii "_Bool"
	.db	0
	.db	1
	.db	2
	.uleb128	13
	.dw	0,1482
	.ascii "process_uart"
	.db	0
	.dw	0,(_process_uart)
	.dw	0,(XG$process_uart$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+200)
	.dw	0,1379
	.uleb128	5
	.dw	0,(Smain$process_uart$282)
	.dw	0,(Smain$process_uart$285)
	.uleb128	16
	.dw	0,(Smain$process_uart$287)
	.uleb128	14
	.dw	0,1466
	.dw	0,(Smain$process_uart$288)
	.dw	0,(Smain$process_uart$289)
	.uleb128	16
	.dw	0,(Smain$process_uart$322)
	.uleb128	5
	.dw	0,(Smain$process_uart$327)
	.dw	0,(Smain$process_uart$329)
	.uleb128	0
	.uleb128	0
	.uleb128	10
	.db	5
	.db	3
	.dw	0,(_process_uart_ch_131072_216)
	.ascii "ch"
	.db	0
	.dw	0,360
	.uleb128	0
	.uleb128	0
	.uleb128	2
	.dw	0,1594
	.ascii "process_button"
	.db	0
	.dw	0,(_process_button)
	.dw	0,(XG$process_button$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+180)
	.uleb128	9
	.dw	0,1549
	.dw	0,(Smain$process_button$338)
	.uleb128	16
	.dw	0,(Smain$process_button$343)
	.uleb128	5
	.dw	0,(Smain$process_button$346)
	.dw	0,(Smain$process_button$348)
	.uleb128	5
	.dw	0,(Smain$process_button$349)
	.dw	0,(Smain$process_button$351)
	.uleb128	0
	.uleb128	0
	.uleb128	16
	.dw	0,(Smain$process_button$353)
	.uleb128	8
	.dw	0,(Smain$process_button$357)
	.dw	0,(Smain$process_button$371)
	.uleb128	9
	.dw	0,1582
	.dw	0,(Smain$process_button$359)
	.uleb128	5
	.dw	0,(Smain$process_button$361)
	.dw	0,(Smain$process_button$365)
	.uleb128	0
	.uleb128	5
	.dw	0,(Smain$process_button$366)
	.dw	0,(Smain$process_button$369)
	.uleb128	0
	.uleb128	0
	.uleb128	0
	.uleb128	12
	.ascii "stop_leds"
	.db	0
	.dw	0,(_stop_leds)
	.dw	0,(XG$stop_leds$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+160)
	.uleb128	12
	.ascii "activate_leds"
	.db	0
	.dw	0,(_activate_leds)
	.dw	0,(XG$activate_leds$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+140)
	.uleb128	13
	.dw	0,1904
	.ascii "mode_changing_control"
	.db	0
	.dw	0,(_mode_changing_control)
	.dw	0,(XG$mode_changing_control$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+120)
	.dw	0,1379
	.uleb128	14
	.dw	0,1877
	.dw	0,(Smain$mode_changing_control$411)
	.dw	0,(Smain$mode_changing_control$472)
	.uleb128	14
	.dw	0,1869
	.dw	0,(Smain$mode_changing_control$407)
	.dw	0,(Smain$mode_changing_control$470)
	.uleb128	8
	.dw	0,(Smain$mode_changing_control$402)
	.dw	0,(Smain$mode_changing_control$448)
	.uleb128	5
	.dw	0,(Smain$mode_changing_control$417)
	.dw	0,(Smain$mode_changing_control$419)
	.uleb128	5
	.dw	0,(Smain$mode_changing_control$421)
	.dw	0,(Smain$mode_changing_control$423)
	.uleb128	5
	.dw	0,(Smain$mode_changing_control$424)
	.dw	0,(Smain$mode_changing_control$427)
	.uleb128	14
	.dw	0,1784
	.dw	0,(Smain$mode_changing_control$404)
	.dw	0,(Smain$mode_changing_control$405)
	.uleb128	5
	.dw	0,(Smain$mode_changing_control$435)
	.dw	0,(Smain$mode_changing_control$437)
	.uleb128	5
	.dw	0,(Smain$mode_changing_control$438)
	.dw	0,(Smain$mode_changing_control$440)
	.uleb128	0
	.uleb128	14
	.dw	0,1807
	.dw	0,(Smain$mode_changing_control$409)
	.dw	0,(Smain$mode_changing_control$410)
	.uleb128	5
	.dw	0,(Smain$mode_changing_control$443)
	.dw	0,(Smain$mode_changing_control$445)
	.uleb128	0
	.uleb128	14
	.dw	0,1848
	.dw	0,(Smain$mode_changing_control$406)
	.dw	0,(Smain$mode_changing_control$456)
	.uleb128	5
	.dw	0,(Smain$mode_changing_control$453)
	.dw	0,(Smain$mode_changing_control$455)
	.uleb128	5
	.dw	0,(Smain$mode_changing_control$458)
	.dw	0,(Smain$mode_changing_control$460)
	.uleb128	5
	.dw	0,(Smain$mode_changing_control$461)
	.dw	0,(Smain$mode_changing_control$463)
	.uleb128	0
	.uleb128	8
	.dw	0,(Smain$mode_changing_control$408)
	.dw	0,(Smain$mode_changing_control$409)
	.uleb128	5
	.dw	0,(Smain$mode_changing_control$466)
	.dw	0,(Smain$mode_changing_control$468)
	.uleb128	0
	.uleb128	0
	.uleb128	0
	.uleb128	6
	.ascii "i"
	.db	0
	.dw	0,2518
	.uleb128	0
	.uleb128	10
	.db	5
	.db	3
	.dw	0,(_mode_changing_control_light_changing_65536_236)
	.ascii "light_changing"
	.db	0
	.dw	0,1379
	.uleb128	0
	.uleb128	13
	.dw	0,1963
	.ascii "is_stable"
	.db	0
	.dw	0,(_is_stable)
	.dw	0,(XG$is_stable$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+100)
	.dw	0,1379
	.uleb128	8
	.dw	0,(Smain$is_stable$482)
	.dw	0,(Smain$is_stable$486)
	.uleb128	5
	.dw	0,(Smain$is_stable$479)
	.dw	0,(Smain$is_stable$481)
	.uleb128	6
	.ascii "i"
	.db	0
	.dw	0,2518
	.uleb128	0
	.uleb128	0
	.uleb128	13
	.dw	0,2111
	.ascii "mode_stable_control"
	.db	0
	.dw	0,(_mode_stable_control)
	.dw	0,(XG$mode_stable_control$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+80)
	.dw	0,1379
	.uleb128	9
	.dw	0,2084
	.dw	0,(Smain$mode_stable_control$499)
	.uleb128	9
	.dw	0,2076
	.dw	0,(Smain$mode_stable_control$500)
	.uleb128	14
	.dw	0,2064
	.dw	0,(Smain$mode_stable_control$503)
	.dw	0,(Smain$mode_stable_control$507)
	.uleb128	5
	.dw	0,(Smain$mode_stable_control$497)
	.dw	0,(Smain$mode_stable_control$498)
	.uleb128	5
	.dw	0,(Smain$mode_stable_control$495)
	.dw	0,(Smain$mode_stable_control$497)
	.uleb128	6
	.ascii "amp"
	.db	0
	.dw	0,971
	.uleb128	0
	.uleb128	6
	.ascii "t_amp"
	.db	0
	.dw	0,2525
	.uleb128	0
	.uleb128	6
	.ascii "i"
	.db	0
	.dw	0,2518
	.uleb128	0
	.uleb128	10
	.db	5
	.db	3
	.dw	0,(_mode_stable_control_light_changing_65536_259)
	.ascii "light_changing"
	.db	0
	.dw	0,1379
	.uleb128	0
	.uleb128	2
	.dw	0,2256
	.ascii "control_loop"
	.db	0
	.dw	0,(_control_loop)
	.dw	0,(XG$control_loop$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+60)
	.uleb128	9
	.dw	0,2220
	.dw	0,(Smain$control_loop$522)
	.uleb128	14
	.dw	0,2172
	.dw	0,(Smain$control_loop$524)
	.dw	0,(Smain$control_loop$526)
	.uleb128	6
	.ascii "i"
	.db	0
	.dw	0,2518
	.uleb128	0
	.uleb128	9
	.dw	0,2200
	.dw	0,(Smain$control_loop$531)
	.uleb128	5
	.dw	0,(Smain$control_loop$533)
	.dw	0,(Smain$control_loop$535)
	.uleb128	5
	.dw	0,(Smain$control_loop$537)
	.dw	0,(Smain$control_loop$539)
	.uleb128	0
	.uleb128	8
	.dw	0,(Smain$control_loop$541)
	.dw	0,(Smain$control_loop$547)
	.uleb128	5
	.dw	0,(Smain$control_loop$543)
	.dw	0,(Smain$control_loop$545)
	.uleb128	0
	.uleb128	0
	.uleb128	5
	.dw	0,(Smain$control_loop$549)
	.dw	0,(Smain$control_loop$551)
	.uleb128	10
	.db	5
	.db	3
	.dw	0,(_control_loop_light_changing_65536_266)
	.ascii "light_changing"
	.db	0
	.dw	0,1379
	.uleb128	0
	.uleb128	12
	.ascii "wdt_init"
	.db	0
	.dw	0,(_wdt_init)
	.dw	0,(XG$wdt_init$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+40)
	.uleb128	12
	.ascii "wdt_clear"
	.db	0
	.dw	0,(_wdt_clear)
	.dw	0,(XG$wdt_clear$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+20)
	.uleb128	2
	.dw	0,2448
	.ascii "main"
	.db	0
	.dw	0,(_main)
	.dw	0,(XG$main$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start)
	.uleb128	5
	.dw	0,(Smain$main$592)
	.dw	0,(Smain$main$595)
	.uleb128	5
	.dw	0,(Smain$main$599)
	.dw	0,(Smain$main$601)
	.uleb128	8
	.dw	0,(Smain$main$605)
	.dw	0,(Smain$main$656)
	.uleb128	5
	.dw	0,(Smain$main$608)
	.dw	0,(Smain$main$610)
	.uleb128	14
	.dw	0,2385
	.dw	0,(Smain$main$613)
	.dw	0,(Smain$main$619)
	.uleb128	5
	.dw	0,(Smain$main$615)
	.dw	0,(Smain$main$617)
	.uleb128	0
	.uleb128	5
	.dw	0,(Smain$main$620)
	.dw	0,(Smain$main$622)
	.uleb128	9
	.dw	0,2428
	.dw	0,(Smain$main$624)
	.uleb128	16
	.dw	0,(Smain$main$627)
	.uleb128	5
	.dw	0,(Smain$main$638)
	.dw	0,(Smain$main$640)
	.uleb128	5
	.dw	0,(Smain$main$641)
	.dw	0,(Smain$main$643)
	.uleb128	0
	.uleb128	0
	.uleb128	5
	.dw	0,(Smain$main$645)
	.dw	0,(Smain$main$647)
	.uleb128	5
	.dw	0,(Smain$main$651)
	.dw	0,(Smain$main$653)
	.uleb128	0
	.uleb128	0
	.uleb128	7
	.ascii "_bit"
	.db	0
	.db	1
	.db	8
	.uleb128	17
	.db	5
	.db	3
	.dw	0,(_BIT_TMP)
	.ascii "BIT_TMP"
	.db	0
	.db	1
	.db	1
	.dw	0,2448
	.uleb128	18
	.dw	0,2490
	.db	16
	.dw	0,360
	.uleb128	19
	.db	15
	.uleb128	0
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_uart1_rx_buffer)
	.ascii "uart1_rx_buffer"
	.db	0
	.db	1
	.dw	0,2477
	.uleb128	7
	.ascii "int"
	.db	0
	.db	2
	.db	5
	.uleb128	7
	.ascii "int"
	.db	0
	.db	2
	.db	5
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_light_mode)
	.ascii "light_mode"
	.db	0
	.db	1
	.dw	0,360
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_is_uart_mode)
	.ascii "is_uart_mode"
	.db	0
	.db	1
	.dw	0,1379
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_flashing_on)
	.ascii "flashing_on"
	.db	0
	.db	1
	.dw	0,1379
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_flashing_count)
	.ascii "flashing_count"
	.db	0
	.db	1
	.dw	0,971
	.uleb128	18
	.dw	0,2644
	.db	4
	.dw	0,971
	.uleb128	19
	.db	1
	.uleb128	0
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_pwm)
	.ascii "pwm"
	.db	0
	.db	1
	.dw	0,2631
	.uleb128	18
	.dw	0,2673
	.db	2
	.dw	0,903
	.uleb128	19
	.db	1
	.uleb128	0
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_light_control_mode)
	.ascii "light_control_mode"
	.db	0
	.db	1
	.dw	0,2660
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_sample_count)
	.ascii "sample_count"
	.db	0
	.db	1
	.dw	0,360
	.uleb128	18
	.dw	0,2742
	.db	8
	.dw	0,286
	.uleb128	19
	.db	1
	.uleb128	0
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_acc_amp)
	.ascii "acc_amp"
	.db	0
	.db	1
	.dw	0,2729
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_acc_temp)
	.ascii "acc_temp"
	.db	0
	.db	1
	.dw	0,286
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_cur_amp)
	.ascii "cur_amp"
	.db	0
	.db	1
	.dw	0,2631
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_cur_temp)
	.ascii "cur_temp"
	.db	0
	.db	1
	.dw	0,971
	.uleb128	18
	.dw	0,2837
	.db	2
	.dw	0,360
	.uleb128	19
	.db	1
	.uleb128	0
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_good_amp_count)
	.ascii "good_amp_count"
	.db	0
	.db	1
	.dw	0,2824
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_uart1_next_idx)
	.ascii "uart1_next_idx"
	.db	0
	.db	1
	.dw	0,360
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_uart1_read_idx)
	.ascii "uart1_read_idx"
	.db	0
	.db	1
	.dw	0,360
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_uart_flag)
	.ascii "uart_flag"
	.db	0
	.db	1
	.dw	0,903
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_button_pressed)
	.ascii "button_pressed"
	.db	0
	.db	1
	.dw	0,286
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_button_unpressed)
	.ascii "button_unpressed"
	.db	0
	.db	1
	.dw	0,286
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_uart_counter)
	.ascii "uart_counter"
	.db	0
	.db	1
	.dw	0,286
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_uart_rx_state)
	.ascii "uart_rx_state"
	.db	0
	.db	1
	.dw	0,360
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_lamp_state)
	.ascii "lamp_state"
	.db	0
	.db	1
	.dw	0,360
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_log_counter)
	.ascii "log_counter"
	.db	0
	.db	1
	.dw	0,286
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_wdt_flag)
	.ascii "wdt_flag"
	.db	0
	.db	1
	.dw	0,1379
	.uleb128	21
	.dw	0,360
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_P0)
	.ascii "P0"
	.db	0
	.db	1
	.dw	0,3115
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_SP)
	.ascii "SP"
	.db	0
	.db	1
	.dw	0,3115
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_DPL)
	.ascii "DPL"
	.db	0
	.db	1
	.dw	0,3115
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_DPH)
	.ascii "DPH"
	.db	0
	.db	1
	.dw	0,3115
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_RCTRIM0)
	.ascii "RCTRIM0"
	.db	0
	.db	1
	.dw	0,3115
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_RCTRIM1)
	.ascii "RCTRIM1"
	.db	0
	.db	1
	.dw	0,3115
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_RWK)
	.ascii "RWK"
	.db	0
	.db	1
	.dw	0,3115
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_PCON)
	.ascii "PCON"
	.db	0
	.db	1
	.dw	0,3115
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_TCON)
	.ascii "TCON"
	.db	0
	.db	1
	.dw	0,3115
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_TMOD)
	.ascii "TMOD"
	.db	0
	.db	1
	.dw	0,3115
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_TL0)
	.ascii "TL0"
	.db	0
	.db	1
	.dw	0,3115
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_TL1)
	.ascii "TL1"
	.db	0
	.db	1
	.dw	0,3115
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_TH0)
	.ascii "TH0"
	.db	0
	.db	1
	.dw	0,3115
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_TH1)
	.ascii "TH1"
	.db	0
	.db	1
	.dw	0,3115
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_CKCON)
	.ascii "CKCON"
	.db	0
	.db	1
	.dw	0,3115
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_WKCON)
	.ascii "WKCON"
	.db	0
	.db	1
	.dw	0,3115
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_P1)
	.ascii "P1"
	.db	0
	.db	1
	.dw	0,3115
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_SFRS)
	.ascii "SFRS"
	.db	0
	.db	1
	.dw	0,3115
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_CAPCON0)
	.ascii "CAPCON0"
	.db	0
	.db	1
	.dw	0,3115
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_CAPCON1)
	.ascii "CAPCON1"
	.db	0
	.db	1
	.dw	0,3115
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_CAPCON2)
	.ascii "CAPCON2"
	.db	0
	.db	1
	.dw	0,3115
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_CKDIV)
	.ascii "CKDIV"
	.db	0
	.db	1
	.dw	0,3115
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_CKSWT)
	.ascii "CKSWT"
	.db	0
	.db	1
	.dw	0,3115
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_CKEN)
	.ascii "CKEN"
	.db	0
	.db	1
	.dw	0,3115
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_SCON)
	.ascii "SCON"
	.db	0
	.db	1
	.dw	0,3115
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_SBUF)
	.ascii "SBUF"
	.db	0
	.db	1
	.dw	0,3115
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_SBUF_1)
	.ascii "SBUF_1"
	.db	0
	.db	1
	.dw	0,3115
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_EIE)
	.ascii "EIE"
	.db	0
	.db	1
	.dw	0,3115
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_EIE1)
	.ascii "EIE1"
	.db	0
	.db	1
	.dw	0,3115
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_CHPCON)
	.ascii "CHPCON"
	.db	0
	.db	1
	.dw	0,3115
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_P2)
	.ascii "P2"
	.db	0
	.db	1
	.dw	0,3115
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_AUXR1)
	.ascii "AUXR1"
	.db	0
	.db	1
	.dw	0,3115
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_BODCON0)
	.ascii "BODCON0"
	.db	0
	.db	1
	.dw	0,3115
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_IAPTRG)
	.ascii "IAPTRG"
	.db	0
	.db	1
	.dw	0,3115
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_IAPUEN)
	.ascii "IAPUEN"
	.db	0
	.db	1
	.dw	0,3115
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_IAPAL)
	.ascii "IAPAL"
	.db	0
	.db	1
	.dw	0,3115
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_IAPAH)
	.ascii "IAPAH"
	.db	0
	.db	1
	.dw	0,3115
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_IE)
	.ascii "IE"
	.db	0
	.db	1
	.dw	0,3115
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_SADDR)
	.ascii "SADDR"
	.db	0
	.db	1
	.dw	0,3115
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_WDCON)
	.ascii "WDCON"
	.db	0
	.db	1
	.dw	0,3115
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_BODCON1)
	.ascii "BODCON1"
	.db	0
	.db	1
	.dw	0,3115
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_P3M1)
	.ascii "P3M1"
	.db	0
	.db	1
	.dw	0,3115
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_P3S)
	.ascii "P3S"
	.db	0
	.db	1
	.dw	0,3115
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_P3M2)
	.ascii "P3M2"
	.db	0
	.db	1
	.dw	0,3115
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_P3SR)
	.ascii "P3SR"
	.db	0
	.db	1
	.dw	0,3115
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_IAPFD)
	.ascii "IAPFD"
	.db	0
	.db	1
	.dw	0,3115
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_IAPCN)
	.ascii "IAPCN"
	.db	0
	.db	1
	.dw	0,3115
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_P3)
	.ascii "P3"
	.db	0
	.db	1
	.dw	0,3115
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_P0M1)
	.ascii "P0M1"
	.db	0
	.db	1
	.dw	0,3115
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_P0S)
	.ascii "P0S"
	.db	0
	.db	1
	.dw	0,3115
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_P0M2)
	.ascii "P0M2"
	.db	0
	.db	1
	.dw	0,3115
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_P0SR)
	.ascii "P0SR"
	.db	0
	.db	1
	.dw	0,3115
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_P1M1)
	.ascii "P1M1"
	.db	0
	.db	1
	.dw	0,3115
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_P1S)
	.ascii "P1S"
	.db	0
	.db	1
	.dw	0,3115
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_P1M2)
	.ascii "P1M2"
	.db	0
	.db	1
	.dw	0,3115
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_P1SR)
	.ascii "P1SR"
	.db	0
	.db	1
	.dw	0,3115
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_P2S)
	.ascii "P2S"
	.db	0
	.db	1
	.dw	0,3115
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_IPH)
	.ascii "IPH"
	.db	0
	.db	1
	.dw	0,3115
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_PWMINTC)
	.ascii "PWMINTC"
	.db	0
	.db	1
	.dw	0,3115
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_IP)
	.ascii "IP"
	.db	0
	.db	1
	.dw	0,3115
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_SADEN)
	.ascii "SADEN"
	.db	0
	.db	1
	.dw	0,3115
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_SADEN_1)
	.ascii "SADEN_1"
	.db	0
	.db	1
	.dw	0,3115
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_SADDR_1)
	.ascii "SADDR_1"
	.db	0
	.db	1
	.dw	0,3115
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_I2DAT)
	.ascii "I2DAT"
	.db	0
	.db	1
	.dw	0,3115
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_I2STAT)
	.ascii "I2STAT"
	.db	0
	.db	1
	.dw	0,3115
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_I2CLK)
	.ascii "I2CLK"
	.db	0
	.db	1
	.dw	0,3115
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_I2TOC)
	.ascii "I2TOC"
	.db	0
	.db	1
	.dw	0,3115
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_I2CON)
	.ascii "I2CON"
	.db	0
	.db	1
	.dw	0,3115
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_I2ADDR)
	.ascii "I2ADDR"
	.db	0
	.db	1
	.dw	0,3115
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_ADCRL)
	.ascii "ADCRL"
	.db	0
	.db	1
	.dw	0,3115
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_ADCRH)
	.ascii "ADCRH"
	.db	0
	.db	1
	.dw	0,3115
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_T3CON)
	.ascii "T3CON"
	.db	0
	.db	1
	.dw	0,3115
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_PWM4H)
	.ascii "PWM4H"
	.db	0
	.db	1
	.dw	0,3115
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_RL3)
	.ascii "RL3"
	.db	0
	.db	1
	.dw	0,3115
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_PWM5H)
	.ascii "PWM5H"
	.db	0
	.db	1
	.dw	0,3115
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_RH3)
	.ascii "RH3"
	.db	0
	.db	1
	.dw	0,3115
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_PIOCON1)
	.ascii "PIOCON1"
	.db	0
	.db	1
	.dw	0,3115
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_TA)
	.ascii "TA"
	.db	0
	.db	1
	.dw	0,3115
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_T2CON)
	.ascii "T2CON"
	.db	0
	.db	1
	.dw	0,3115
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_T2MOD)
	.ascii "T2MOD"
	.db	0
	.db	1
	.dw	0,3115
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_RCMP2L)
	.ascii "RCMP2L"
	.db	0
	.db	1
	.dw	0,3115
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_RCMP2H)
	.ascii "RCMP2H"
	.db	0
	.db	1
	.dw	0,3115
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_TL2)
	.ascii "TL2"
	.db	0
	.db	1
	.dw	0,3115
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_PWM4L)
	.ascii "PWM4L"
	.db	0
	.db	1
	.dw	0,3115
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_TH2)
	.ascii "TH2"
	.db	0
	.db	1
	.dw	0,3115
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_PWM5L)
	.ascii "PWM5L"
	.db	0
	.db	1
	.dw	0,3115
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_ADCMPL)
	.ascii "ADCMPL"
	.db	0
	.db	1
	.dw	0,3115
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_ADCMPH)
	.ascii "ADCMPH"
	.db	0
	.db	1
	.dw	0,3115
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_PSW)
	.ascii "PSW"
	.db	0
	.db	1
	.dw	0,3115
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_PWMPH)
	.ascii "PWMPH"
	.db	0
	.db	1
	.dw	0,3115
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_PWM0H)
	.ascii "PWM0H"
	.db	0
	.db	1
	.dw	0,3115
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_PWM1H)
	.ascii "PWM1H"
	.db	0
	.db	1
	.dw	0,3115
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_PWM2H)
	.ascii "PWM2H"
	.db	0
	.db	1
	.dw	0,3115
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_PWM3H)
	.ascii "PWM3H"
	.db	0
	.db	1
	.dw	0,3115
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_PNP)
	.ascii "PNP"
	.db	0
	.db	1
	.dw	0,3115
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_FBD)
	.ascii "FBD"
	.db	0
	.db	1
	.dw	0,3115
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_PWMCON0)
	.ascii "PWMCON0"
	.db	0
	.db	1
	.dw	0,3115
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_PWMPL)
	.ascii "PWMPL"
	.db	0
	.db	1
	.dw	0,3115
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_PWM0L)
	.ascii "PWM0L"
	.db	0
	.db	1
	.dw	0,3115
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_PWM1L)
	.ascii "PWM1L"
	.db	0
	.db	1
	.dw	0,3115
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_PWM2L)
	.ascii "PWM2L"
	.db	0
	.db	1
	.dw	0,3115
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_PWM3L)
	.ascii "PWM3L"
	.db	0
	.db	1
	.dw	0,3115
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_PIOCON0)
	.ascii "PIOCON0"
	.db	0
	.db	1
	.dw	0,3115
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_PWMCON1)
	.ascii "PWMCON1"
	.db	0
	.db	1
	.dw	0,3115
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_ACC)
	.ascii "ACC"
	.db	0
	.db	1
	.dw	0,3115
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_ADCCON1)
	.ascii "ADCCON1"
	.db	0
	.db	1
	.dw	0,3115
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_ADCCON2)
	.ascii "ADCCON2"
	.db	0
	.db	1
	.dw	0,3115
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_ADCDLY)
	.ascii "ADCDLY"
	.db	0
	.db	1
	.dw	0,3115
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_C0L)
	.ascii "C0L"
	.db	0
	.db	1
	.dw	0,3115
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_C0H)
	.ascii "C0H"
	.db	0
	.db	1
	.dw	0,3115
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_C1L)
	.ascii "C1L"
	.db	0
	.db	1
	.dw	0,3115
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_C1H)
	.ascii "C1H"
	.db	0
	.db	1
	.dw	0,3115
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_ADCCON0)
	.ascii "ADCCON0"
	.db	0
	.db	1
	.dw	0,3115
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_PICON)
	.ascii "PICON"
	.db	0
	.db	1
	.dw	0,3115
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_PINEN)
	.ascii "PINEN"
	.db	0
	.db	1
	.dw	0,3115
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_PIPEN)
	.ascii "PIPEN"
	.db	0
	.db	1
	.dw	0,3115
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_PIF)
	.ascii "PIF"
	.db	0
	.db	1
	.dw	0,3115
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_C2L)
	.ascii "C2L"
	.db	0
	.db	1
	.dw	0,3115
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_C2H)
	.ascii "C2H"
	.db	0
	.db	1
	.dw	0,3115
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_EIP)
	.ascii "EIP"
	.db	0
	.db	1
	.dw	0,3115
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_B)
	.ascii "B"
	.db	0
	.db	1
	.dw	0,3115
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_CAPCON3)
	.ascii "CAPCON3"
	.db	0
	.db	1
	.dw	0,3115
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_CAPCON4)
	.ascii "CAPCON4"
	.db	0
	.db	1
	.dw	0,3115
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_SPCR)
	.ascii "SPCR"
	.db	0
	.db	1
	.dw	0,3115
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_SPCR2)
	.ascii "SPCR2"
	.db	0
	.db	1
	.dw	0,3115
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_SPSR)
	.ascii "SPSR"
	.db	0
	.db	1
	.dw	0,3115
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_SPDR)
	.ascii "SPDR"
	.db	0
	.db	1
	.dw	0,3115
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_AINDIDS)
	.ascii "AINDIDS"
	.db	0
	.db	1
	.dw	0,3115
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_EIPH)
	.ascii "EIPH"
	.db	0
	.db	1
	.dw	0,3115
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_SCON_1)
	.ascii "SCON_1"
	.db	0
	.db	1
	.dw	0,3115
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_PDTEN)
	.ascii "PDTEN"
	.db	0
	.db	1
	.dw	0,3115
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_PDTCNT)
	.ascii "PDTCNT"
	.db	0
	.db	1
	.dw	0,3115
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_PMEN)
	.ascii "PMEN"
	.db	0
	.db	1
	.dw	0,3115
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_PMD)
	.ascii "PMD"
	.db	0
	.db	1
	.dw	0,3115
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_EIP1)
	.ascii "EIP1"
	.db	0
	.db	1
	.dw	0,3115
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_EIPH1)
	.ascii "EIPH1"
	.db	0
	.db	1
	.dw	0,3115
	.uleb128	7
	.ascii "_sbit"
	.db	0
	.db	1
	.db	8
	.uleb128	21
	.dw	0,5510
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_SM0_1)
	.ascii "SM0_1"
	.db	0
	.db	1
	.dw	0,5519
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_FE_1)
	.ascii "FE_1"
	.db	0
	.db	1
	.dw	0,5519
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_SM1_1)
	.ascii "SM1_1"
	.db	0
	.db	1
	.dw	0,5519
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_SM2_1)
	.ascii "SM2_1"
	.db	0
	.db	1
	.dw	0,5519
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_REN_1)
	.ascii "REN_1"
	.db	0
	.db	1
	.dw	0,5519
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_TB8_1)
	.ascii "TB8_1"
	.db	0
	.db	1
	.dw	0,5519
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_RB8_1)
	.ascii "RB8_1"
	.db	0
	.db	1
	.dw	0,5519
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_TI_1)
	.ascii "TI_1"
	.db	0
	.db	1
	.dw	0,5519
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_RI_1)
	.ascii "RI_1"
	.db	0
	.db	1
	.dw	0,5519
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_ADCF)
	.ascii "ADCF"
	.db	0
	.db	1
	.dw	0,5519
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_ADCS)
	.ascii "ADCS"
	.db	0
	.db	1
	.dw	0,5519
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_ETGSEL1)
	.ascii "ETGSEL1"
	.db	0
	.db	1
	.dw	0,5519
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_ETGSEL0)
	.ascii "ETGSEL0"
	.db	0
	.db	1
	.dw	0,5519
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_ADCHS3)
	.ascii "ADCHS3"
	.db	0
	.db	1
	.dw	0,5519
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_ADCHS2)
	.ascii "ADCHS2"
	.db	0
	.db	1
	.dw	0,5519
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_ADCHS1)
	.ascii "ADCHS1"
	.db	0
	.db	1
	.dw	0,5519
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_ADCHS0)
	.ascii "ADCHS0"
	.db	0
	.db	1
	.dw	0,5519
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_PWMRUN)
	.ascii "PWMRUN"
	.db	0
	.db	1
	.dw	0,5519
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_LOAD)
	.ascii "LOAD"
	.db	0
	.db	1
	.dw	0,5519
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_PWMF)
	.ascii "PWMF"
	.db	0
	.db	1
	.dw	0,5519
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_CLRPWM)
	.ascii "CLRPWM"
	.db	0
	.db	1
	.dw	0,5519
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_CY)
	.ascii "CY"
	.db	0
	.db	1
	.dw	0,5519
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_AC)
	.ascii "AC"
	.db	0
	.db	1
	.dw	0,5519
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_F0)
	.ascii "F0"
	.db	0
	.db	1
	.dw	0,5519
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_RS1)
	.ascii "RS1"
	.db	0
	.db	1
	.dw	0,5519
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_RS0)
	.ascii "RS0"
	.db	0
	.db	1
	.dw	0,5519
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_OV)
	.ascii "OV"
	.db	0
	.db	1
	.dw	0,5519
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_P)
	.ascii "P"
	.db	0
	.db	1
	.dw	0,5519
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_TF2)
	.ascii "TF2"
	.db	0
	.db	1
	.dw	0,5519
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_TR2)
	.ascii "TR2"
	.db	0
	.db	1
	.dw	0,5519
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_CM_RL2)
	.ascii "CM_RL2"
	.db	0
	.db	1
	.dw	0,5519
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_I2CEN)
	.ascii "I2CEN"
	.db	0
	.db	1
	.dw	0,5519
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_STA)
	.ascii "STA"
	.db	0
	.db	1
	.dw	0,5519
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_STO)
	.ascii "STO"
	.db	0
	.db	1
	.dw	0,5519
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_SI)
	.ascii "SI"
	.db	0
	.db	1
	.dw	0,5519
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_AA)
	.ascii "AA"
	.db	0
	.db	1
	.dw	0,5519
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_I2CPX)
	.ascii "I2CPX"
	.db	0
	.db	1
	.dw	0,5519
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_PADC)
	.ascii "PADC"
	.db	0
	.db	1
	.dw	0,5519
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_PBOD)
	.ascii "PBOD"
	.db	0
	.db	1
	.dw	0,5519
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_PS)
	.ascii "PS"
	.db	0
	.db	1
	.dw	0,5519
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_PT1)
	.ascii "PT1"
	.db	0
	.db	1
	.dw	0,5519
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_PX1)
	.ascii "PX1"
	.db	0
	.db	1
	.dw	0,5519
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_PT0)
	.ascii "PT0"
	.db	0
	.db	1
	.dw	0,5519
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_PX0)
	.ascii "PX0"
	.db	0
	.db	1
	.dw	0,5519
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_P30)
	.ascii "P30"
	.db	0
	.db	1
	.dw	0,5519
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_EA)
	.ascii "EA"
	.db	0
	.db	1
	.dw	0,5519
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_EADC)
	.ascii "EADC"
	.db	0
	.db	1
	.dw	0,5519
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_EBOD)
	.ascii "EBOD"
	.db	0
	.db	1
	.dw	0,5519
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_ES)
	.ascii "ES"
	.db	0
	.db	1
	.dw	0,5519
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_ET1)
	.ascii "ET1"
	.db	0
	.db	1
	.dw	0,5519
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_EX1)
	.ascii "EX1"
	.db	0
	.db	1
	.dw	0,5519
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_ET0)
	.ascii "ET0"
	.db	0
	.db	1
	.dw	0,5519
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_EX0)
	.ascii "EX0"
	.db	0
	.db	1
	.dw	0,5519
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_P20)
	.ascii "P20"
	.db	0
	.db	1
	.dw	0,5519
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_SM0)
	.ascii "SM0"
	.db	0
	.db	1
	.dw	0,5519
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_FE)
	.ascii "FE"
	.db	0
	.db	1
	.dw	0,5519
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_SM1)
	.ascii "SM1"
	.db	0
	.db	1
	.dw	0,5519
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_SM2)
	.ascii "SM2"
	.db	0
	.db	1
	.dw	0,5519
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_REN)
	.ascii "REN"
	.db	0
	.db	1
	.dw	0,5519
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_TB8)
	.ascii "TB8"
	.db	0
	.db	1
	.dw	0,5519
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_RB8)
	.ascii "RB8"
	.db	0
	.db	1
	.dw	0,5519
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_TI)
	.ascii "TI"
	.db	0
	.db	1
	.dw	0,5519
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_RI)
	.ascii "RI"
	.db	0
	.db	1
	.dw	0,5519
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_P17)
	.ascii "P17"
	.db	0
	.db	1
	.dw	0,5519
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_P16)
	.ascii "P16"
	.db	0
	.db	1
	.dw	0,5519
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_TXD_1)
	.ascii "TXD_1"
	.db	0
	.db	1
	.dw	0,5519
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_P15)
	.ascii "P15"
	.db	0
	.db	1
	.dw	0,5519
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_P14)
	.ascii "P14"
	.db	0
	.db	1
	.dw	0,5519
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_SDA)
	.ascii "SDA"
	.db	0
	.db	1
	.dw	0,5519
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_P13)
	.ascii "P13"
	.db	0
	.db	1
	.dw	0,5519
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_SCL)
	.ascii "SCL"
	.db	0
	.db	1
	.dw	0,5519
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_P12)
	.ascii "P12"
	.db	0
	.db	1
	.dw	0,5519
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_P11)
	.ascii "P11"
	.db	0
	.db	1
	.dw	0,5519
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_P10)
	.ascii "P10"
	.db	0
	.db	1
	.dw	0,5519
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_TF1)
	.ascii "TF1"
	.db	0
	.db	1
	.dw	0,5519
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_TR1)
	.ascii "TR1"
	.db	0
	.db	1
	.dw	0,5519
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_TF0)
	.ascii "TF0"
	.db	0
	.db	1
	.dw	0,5519
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_TR0)
	.ascii "TR0"
	.db	0
	.db	1
	.dw	0,5519
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_IE1)
	.ascii "IE1"
	.db	0
	.db	1
	.dw	0,5519
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_IT1)
	.ascii "IT1"
	.db	0
	.db	1
	.dw	0,5519
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_IE0)
	.ascii "IE0"
	.db	0
	.db	1
	.dw	0,5519
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_IT0)
	.ascii "IT0"
	.db	0
	.db	1
	.dw	0,5519
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_P07)
	.ascii "P07"
	.db	0
	.db	1
	.dw	0,5519
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_RXD)
	.ascii "RXD"
	.db	0
	.db	1
	.dw	0,5519
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_P06)
	.ascii "P06"
	.db	0
	.db	1
	.dw	0,5519
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_TXD)
	.ascii "TXD"
	.db	0
	.db	1
	.dw	0,5519
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_P05)
	.ascii "P05"
	.db	0
	.db	1
	.dw	0,5519
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_P04)
	.ascii "P04"
	.db	0
	.db	1
	.dw	0,5519
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_STADC)
	.ascii "STADC"
	.db	0
	.db	1
	.dw	0,5519
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_P03)
	.ascii "P03"
	.db	0
	.db	1
	.dw	0,5519
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_P02)
	.ascii "P02"
	.db	0
	.db	1
	.dw	0,5519
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_RXD_1)
	.ascii "RXD_1"
	.db	0
	.db	1
	.dw	0,5519
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_P01)
	.ascii "P01"
	.db	0
	.db	1
	.dw	0,5519
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_MISO)
	.ascii "MISO"
	.db	0
	.db	1
	.dw	0,5519
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_P00)
	.ascii "P00"
	.db	0
	.db	1
	.dw	0,5519
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_MOSI)
	.ascii "MOSI"
	.db	0
	.db	1
	.dw	0,5519
	.uleb128	22
	.dw	0,360
	.uleb128	18
	.dw	0,7128
	.db	2
	.dw	0,7110
	.uleb128	19
	.db	1
	.uleb128	0
	.uleb128	18
	.dw	0,7141
	.db	20
	.dw	0,7115
	.uleb128	19
	.db	9
	.uleb128	0
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_max_amp)
	.ascii "max_amp"
	.db	0
	.db	1
	.dw	0,7128
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_min_amp)
	.ascii "min_amp"
	.db	0
	.db	1
	.dw	0,7115
	.uleb128	18
	.dw	0,7194
	.db	10
	.dw	0,7110
	.uleb128	19
	.db	9
	.uleb128	0
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_flashing)
	.ascii "flashing"
	.db	0
	.db	1
	.dw	0,7181
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_temp_controlling)
	.ascii "temp_controlling"
	.db	0
	.db	1
	.dw	0,7181
	.uleb128	20
	.db	5
	.db	3
	.dw	0,(_next_mode)
	.ascii "next_mode"
	.db	0
	.db	1
	.dw	0,7181
	.uleb128	10
	.db	5
	.db	3
	.dw	0,(__xinit__light_mode)
	.ascii "__xinit_light_mode"
	.db	0
	.dw	0,7110
	.uleb128	22
	.dw	0,1379
	.uleb128	10
	.db	5
	.db	3
	.dw	0,(__xinit__is_uart_mode)
	.ascii "__xinit_is_uart_mode"
	.db	0
	.dw	0,7296
	.uleb128	10
	.db	5
	.db	3
	.dw	0,(__xinit__flashing_on)
	.ascii "__xinit_flashing_on"
	.db	0
	.dw	0,7296
	.uleb128	22
	.dw	0,971
	.uleb128	10
	.db	5
	.db	3
	.dw	0,(__xinit__flashing_count)
	.ascii "__xinit_flashing_count"
	.db	0
	.dw	0,7364
	.uleb128	18
	.dw	0,7416
	.db	4
	.dw	0,7364
	.uleb128	19
	.db	1
	.uleb128	0
	.uleb128	10
	.db	5
	.db	3
	.dw	0,(__xinit__pwm)
	.ascii "__xinit_pwm"
	.db	0
	.dw	0,7403
	.uleb128	22
	.dw	0,903
	.uleb128	18
	.dw	0,7457
	.db	2
	.dw	0,7439
	.uleb128	19
	.db	1
	.uleb128	0
	.uleb128	10
	.db	5
	.db	3
	.dw	0,(__xinit__light_control_mode)
	.ascii "__xinit_light_control_mode"
	.db	0
	.dw	0,7444
	.uleb128	10
	.db	5
	.db	3
	.dw	0,(__xinit__sample_count)
	.ascii "__xinit_sample_count"
	.db	0
	.dw	0,7110
	.uleb128	22
	.dw	0,286
	.uleb128	18
	.dw	0,7545
	.db	8
	.dw	0,7527
	.uleb128	19
	.db	1
	.uleb128	0
	.uleb128	10
	.db	5
	.db	3
	.dw	0,(__xinit__acc_amp)
	.ascii "__xinit_acc_amp"
	.db	0
	.dw	0,7532
	.uleb128	10
	.db	5
	.db	3
	.dw	0,(__xinit__acc_temp)
	.ascii "__xinit_acc_temp"
	.db	0
	.dw	0,7527
	.uleb128	10
	.db	5
	.db	3
	.dw	0,(__xinit__cur_amp)
	.ascii "__xinit_cur_amp"
	.db	0
	.dw	0,7403
	.uleb128	10
	.db	5
	.db	3
	.dw	0,(__xinit__cur_temp)
	.ascii "__xinit_cur_temp"
	.db	0
	.dw	0,7364
	.uleb128	10
	.db	5
	.db	3
	.dw	0,(__xinit__good_amp_count)
	.ascii "__xinit_good_amp_count"
	.db	0
	.dw	0,7115
	.uleb128	10
	.db	5
	.db	3
	.dw	0,(__xinit__uart1_next_idx)
	.ascii "__xinit_uart1_next_idx"
	.db	0
	.dw	0,7110
	.uleb128	10
	.db	5
	.db	3
	.dw	0,(__xinit__uart1_read_idx)
	.ascii "__xinit_uart1_read_idx"
	.db	0
	.dw	0,7110
	.uleb128	10
	.db	5
	.db	3
	.dw	0,(__xinit__uart_flag)
	.ascii "__xinit_uart_flag"
	.db	0
	.dw	0,7439
	.uleb128	10
	.db	5
	.db	3
	.dw	0,(__xinit__button_pressed)
	.ascii "__xinit_button_pressed"
	.db	0
	.dw	0,7527
	.uleb128	10
	.db	5
	.db	3
	.dw	0,(__xinit__button_unpressed)
	.ascii "__xinit_button_unpressed"
	.db	0
	.dw	0,7527
	.uleb128	10
	.db	5
	.db	3
	.dw	0,(__xinit__uart_counter)
	.ascii "__xinit_uart_counter"
	.db	0
	.dw	0,7527
	.uleb128	10
	.db	5
	.db	3
	.dw	0,(__xinit__uart_rx_state)
	.ascii "__xinit_uart_rx_state"
	.db	0
	.dw	0,7110
	.uleb128	10
	.db	5
	.db	3
	.dw	0,(__xinit__lamp_state)
	.ascii "__xinit_lamp_state"
	.db	0
	.dw	0,7110
	.uleb128	10
	.db	5
	.db	3
	.dw	0,(__xinit__log_counter)
	.ascii "__xinit_log_counter"
	.db	0
	.dw	0,7527
	.uleb128	10
	.db	5
	.db	3
	.dw	0,(__xinit__wdt_flag)
	.ascii "__xinit_wdt_flag"
	.db	0
	.dw	0,7296
	.uleb128	0
Ldebug_info_end:

	.area .debug_pubnames (NOLOAD)
	.dw	0,Ldebug_pubnames_end-Ldebug_pubnames_start
Ldebug_pubnames_start:
	.dw	2
	.dw	0,(Ldebug_info_start-4)
	.dw	0,4+Ldebug_info_end-Ldebug_info_start
	.dw	0,172
	.ascii "Timer0_Delay"
	.db	0
	.dw	0,319
	.ascii "uart_log"
	.db	0
	.dw	0,377
	.ascii "uart_logn"
	.db	0
	.dw	0,480
	.ascii "log_init"
	.db	0
	.dw	0,517
	.ascii "SerialPort1_ISR"
	.db	0
	.dw	0,571
	.ascii "uart_interrupt_init"
	.db	0
	.dw	0,605
	.ascii "PinInterrupt_ISR"
	.db	0
	.dw	0,651
	.ascii "button_interrupt_init"
	.db	0
	.dw	0,687
	.ascii "enable_ntc"
	.db	0
	.dw	0,712
	.ascii "disable_ntc"
	.db	0
	.dw	0,738
	.ascii "init_sample"
	.db	0
	.dw	0,795
	.ascii "init_peripherals_but_button_n_uart"
	.db	0
	.dw	0,844
	.ascii "sample_amps"
	.db	0
	.dw	0,870
	.ascii "sample_temperature"
	.db	0
	.dw	0,918
	.ascii "has_high_beam"
	.db	0
	.dw	0,987
	.ascii "avg_amp"
	.db	0
	.dw	0,1051
	.ascii "target_amp"
	.db	0
	.dw	0,1162
	.ascii "changeMode"
	.db	0
	.dw	0,1354
	.ascii "toNextMode"
	.db	0
	.dw	0,1388
	.ascii "process_uart"
	.db	0
	.dw	0,1482
	.ascii "process_button"
	.db	0
	.dw	0,1594
	.ascii "stop_leds"
	.db	0
	.dw	0,1618
	.ascii "activate_leds"
	.db	0
	.dw	0,1646
	.ascii "mode_changing_control"
	.db	0
	.dw	0,1904
	.ascii "is_stable"
	.db	0
	.dw	0,1963
	.ascii "mode_stable_control"
	.db	0
	.dw	0,2111
	.ascii "control_loop"
	.db	0
	.dw	0,2256
	.ascii "wdt_init"
	.db	0
	.dw	0,2279
	.ascii "wdt_clear"
	.db	0
	.dw	0,2303
	.ascii "main"
	.db	0
	.dw	0,2456
	.ascii "BIT_TMP"
	.db	0
	.dw	0,2490
	.ascii "uart1_rx_buffer"
	.db	0
	.dw	0,2532
	.ascii "light_mode"
	.db	0
	.dw	0,2555
	.ascii "is_uart_mode"
	.db	0
	.dw	0,2580
	.ascii "flashing_on"
	.db	0
	.dw	0,2604
	.ascii "flashing_count"
	.db	0
	.dw	0,2644
	.ascii "pwm"
	.db	0
	.dw	0,2673
	.ascii "light_control_mode"
	.db	0
	.dw	0,2704
	.ascii "sample_count"
	.db	0
	.dw	0,2742
	.ascii "acc_amp"
	.db	0
	.dw	0,2762
	.ascii "acc_temp"
	.db	0
	.dw	0,2783
	.ascii "cur_amp"
	.db	0
	.dw	0,2803
	.ascii "cur_temp"
	.db	0
	.dw	0,2837
	.ascii "good_amp_count"
	.db	0
	.dw	0,2864
	.ascii "uart1_next_idx"
	.db	0
	.dw	0,2891
	.ascii "uart1_read_idx"
	.db	0
	.dw	0,2918
	.ascii "uart_flag"
	.db	0
	.dw	0,2940
	.ascii "button_pressed"
	.db	0
	.dw	0,2967
	.ascii "button_unpressed"
	.db	0
	.dw	0,2996
	.ascii "uart_counter"
	.db	0
	.dw	0,3021
	.ascii "uart_rx_state"
	.db	0
	.dw	0,3047
	.ascii "lamp_state"
	.db	0
	.dw	0,3070
	.ascii "log_counter"
	.db	0
	.dw	0,3094
	.ascii "wdt_flag"
	.db	0
	.dw	0,3120
	.ascii "P0"
	.db	0
	.dw	0,3135
	.ascii "SP"
	.db	0
	.dw	0,3150
	.ascii "DPL"
	.db	0
	.dw	0,3166
	.ascii "DPH"
	.db	0
	.dw	0,3182
	.ascii "RCTRIM0"
	.db	0
	.dw	0,3202
	.ascii "RCTRIM1"
	.db	0
	.dw	0,3222
	.ascii "RWK"
	.db	0
	.dw	0,3238
	.ascii "PCON"
	.db	0
	.dw	0,3255
	.ascii "TCON"
	.db	0
	.dw	0,3272
	.ascii "TMOD"
	.db	0
	.dw	0,3289
	.ascii "TL0"
	.db	0
	.dw	0,3305
	.ascii "TL1"
	.db	0
	.dw	0,3321
	.ascii "TH0"
	.db	0
	.dw	0,3337
	.ascii "TH1"
	.db	0
	.dw	0,3353
	.ascii "CKCON"
	.db	0
	.dw	0,3371
	.ascii "WKCON"
	.db	0
	.dw	0,3389
	.ascii "P1"
	.db	0
	.dw	0,3404
	.ascii "SFRS"
	.db	0
	.dw	0,3421
	.ascii "CAPCON0"
	.db	0
	.dw	0,3441
	.ascii "CAPCON1"
	.db	0
	.dw	0,3461
	.ascii "CAPCON2"
	.db	0
	.dw	0,3481
	.ascii "CKDIV"
	.db	0
	.dw	0,3499
	.ascii "CKSWT"
	.db	0
	.dw	0,3517
	.ascii "CKEN"
	.db	0
	.dw	0,3534
	.ascii "SCON"
	.db	0
	.dw	0,3551
	.ascii "SBUF"
	.db	0
	.dw	0,3568
	.ascii "SBUF_1"
	.db	0
	.dw	0,3587
	.ascii "EIE"
	.db	0
	.dw	0,3603
	.ascii "EIE1"
	.db	0
	.dw	0,3620
	.ascii "CHPCON"
	.db	0
	.dw	0,3639
	.ascii "P2"
	.db	0
	.dw	0,3654
	.ascii "AUXR1"
	.db	0
	.dw	0,3672
	.ascii "BODCON0"
	.db	0
	.dw	0,3692
	.ascii "IAPTRG"
	.db	0
	.dw	0,3711
	.ascii "IAPUEN"
	.db	0
	.dw	0,3730
	.ascii "IAPAL"
	.db	0
	.dw	0,3748
	.ascii "IAPAH"
	.db	0
	.dw	0,3766
	.ascii "IE"
	.db	0
	.dw	0,3781
	.ascii "SADDR"
	.db	0
	.dw	0,3799
	.ascii "WDCON"
	.db	0
	.dw	0,3817
	.ascii "BODCON1"
	.db	0
	.dw	0,3837
	.ascii "P3M1"
	.db	0
	.dw	0,3854
	.ascii "P3S"
	.db	0
	.dw	0,3870
	.ascii "P3M2"
	.db	0
	.dw	0,3887
	.ascii "P3SR"
	.db	0
	.dw	0,3904
	.ascii "IAPFD"
	.db	0
	.dw	0,3922
	.ascii "IAPCN"
	.db	0
	.dw	0,3940
	.ascii "P3"
	.db	0
	.dw	0,3955
	.ascii "P0M1"
	.db	0
	.dw	0,3972
	.ascii "P0S"
	.db	0
	.dw	0,3988
	.ascii "P0M2"
	.db	0
	.dw	0,4005
	.ascii "P0SR"
	.db	0
	.dw	0,4022
	.ascii "P1M1"
	.db	0
	.dw	0,4039
	.ascii "P1S"
	.db	0
	.dw	0,4055
	.ascii "P1M2"
	.db	0
	.dw	0,4072
	.ascii "P1SR"
	.db	0
	.dw	0,4089
	.ascii "P2S"
	.db	0
	.dw	0,4105
	.ascii "IPH"
	.db	0
	.dw	0,4121
	.ascii "PWMINTC"
	.db	0
	.dw	0,4141
	.ascii "IP"
	.db	0
	.dw	0,4156
	.ascii "SADEN"
	.db	0
	.dw	0,4174
	.ascii "SADEN_1"
	.db	0
	.dw	0,4194
	.ascii "SADDR_1"
	.db	0
	.dw	0,4214
	.ascii "I2DAT"
	.db	0
	.dw	0,4232
	.ascii "I2STAT"
	.db	0
	.dw	0,4251
	.ascii "I2CLK"
	.db	0
	.dw	0,4269
	.ascii "I2TOC"
	.db	0
	.dw	0,4287
	.ascii "I2CON"
	.db	0
	.dw	0,4305
	.ascii "I2ADDR"
	.db	0
	.dw	0,4324
	.ascii "ADCRL"
	.db	0
	.dw	0,4342
	.ascii "ADCRH"
	.db	0
	.dw	0,4360
	.ascii "T3CON"
	.db	0
	.dw	0,4378
	.ascii "PWM4H"
	.db	0
	.dw	0,4396
	.ascii "RL3"
	.db	0
	.dw	0,4412
	.ascii "PWM5H"
	.db	0
	.dw	0,4430
	.ascii "RH3"
	.db	0
	.dw	0,4446
	.ascii "PIOCON1"
	.db	0
	.dw	0,4466
	.ascii "TA"
	.db	0
	.dw	0,4481
	.ascii "T2CON"
	.db	0
	.dw	0,4499
	.ascii "T2MOD"
	.db	0
	.dw	0,4517
	.ascii "RCMP2L"
	.db	0
	.dw	0,4536
	.ascii "RCMP2H"
	.db	0
	.dw	0,4555
	.ascii "TL2"
	.db	0
	.dw	0,4571
	.ascii "PWM4L"
	.db	0
	.dw	0,4589
	.ascii "TH2"
	.db	0
	.dw	0,4605
	.ascii "PWM5L"
	.db	0
	.dw	0,4623
	.ascii "ADCMPL"
	.db	0
	.dw	0,4642
	.ascii "ADCMPH"
	.db	0
	.dw	0,4661
	.ascii "PSW"
	.db	0
	.dw	0,4677
	.ascii "PWMPH"
	.db	0
	.dw	0,4695
	.ascii "PWM0H"
	.db	0
	.dw	0,4713
	.ascii "PWM1H"
	.db	0
	.dw	0,4731
	.ascii "PWM2H"
	.db	0
	.dw	0,4749
	.ascii "PWM3H"
	.db	0
	.dw	0,4767
	.ascii "PNP"
	.db	0
	.dw	0,4783
	.ascii "FBD"
	.db	0
	.dw	0,4799
	.ascii "PWMCON0"
	.db	0
	.dw	0,4819
	.ascii "PWMPL"
	.db	0
	.dw	0,4837
	.ascii "PWM0L"
	.db	0
	.dw	0,4855
	.ascii "PWM1L"
	.db	0
	.dw	0,4873
	.ascii "PWM2L"
	.db	0
	.dw	0,4891
	.ascii "PWM3L"
	.db	0
	.dw	0,4909
	.ascii "PIOCON0"
	.db	0
	.dw	0,4929
	.ascii "PWMCON1"
	.db	0
	.dw	0,4949
	.ascii "ACC"
	.db	0
	.dw	0,4965
	.ascii "ADCCON1"
	.db	0
	.dw	0,4985
	.ascii "ADCCON2"
	.db	0
	.dw	0,5005
	.ascii "ADCDLY"
	.db	0
	.dw	0,5024
	.ascii "C0L"
	.db	0
	.dw	0,5040
	.ascii "C0H"
	.db	0
	.dw	0,5056
	.ascii "C1L"
	.db	0
	.dw	0,5072
	.ascii "C1H"
	.db	0
	.dw	0,5088
	.ascii "ADCCON0"
	.db	0
	.dw	0,5108
	.ascii "PICON"
	.db	0
	.dw	0,5126
	.ascii "PINEN"
	.db	0
	.dw	0,5144
	.ascii "PIPEN"
	.db	0
	.dw	0,5162
	.ascii "PIF"
	.db	0
	.dw	0,5178
	.ascii "C2L"
	.db	0
	.dw	0,5194
	.ascii "C2H"
	.db	0
	.dw	0,5210
	.ascii "EIP"
	.db	0
	.dw	0,5226
	.ascii "B"
	.db	0
	.dw	0,5240
	.ascii "CAPCON3"
	.db	0
	.dw	0,5260
	.ascii "CAPCON4"
	.db	0
	.dw	0,5280
	.ascii "SPCR"
	.db	0
	.dw	0,5297
	.ascii "SPCR2"
	.db	0
	.dw	0,5315
	.ascii "SPSR"
	.db	0
	.dw	0,5332
	.ascii "SPDR"
	.db	0
	.dw	0,5349
	.ascii "AINDIDS"
	.db	0
	.dw	0,5369
	.ascii "EIPH"
	.db	0
	.dw	0,5386
	.ascii "SCON_1"
	.db	0
	.dw	0,5405
	.ascii "PDTEN"
	.db	0
	.dw	0,5423
	.ascii "PDTCNT"
	.db	0
	.dw	0,5442
	.ascii "PMEN"
	.db	0
	.dw	0,5459
	.ascii "PMD"
	.db	0
	.dw	0,5475
	.ascii "EIP1"
	.db	0
	.dw	0,5492
	.ascii "EIPH1"
	.db	0
	.dw	0,5524
	.ascii "SM0_1"
	.db	0
	.dw	0,5542
	.ascii "FE_1"
	.db	0
	.dw	0,5559
	.ascii "SM1_1"
	.db	0
	.dw	0,5577
	.ascii "SM2_1"
	.db	0
	.dw	0,5595
	.ascii "REN_1"
	.db	0
	.dw	0,5613
	.ascii "TB8_1"
	.db	0
	.dw	0,5631
	.ascii "RB8_1"
	.db	0
	.dw	0,5649
	.ascii "TI_1"
	.db	0
	.dw	0,5666
	.ascii "RI_1"
	.db	0
	.dw	0,5683
	.ascii "ADCF"
	.db	0
	.dw	0,5700
	.ascii "ADCS"
	.db	0
	.dw	0,5717
	.ascii "ETGSEL1"
	.db	0
	.dw	0,5737
	.ascii "ETGSEL0"
	.db	0
	.dw	0,5757
	.ascii "ADCHS3"
	.db	0
	.dw	0,5776
	.ascii "ADCHS2"
	.db	0
	.dw	0,5795
	.ascii "ADCHS1"
	.db	0
	.dw	0,5814
	.ascii "ADCHS0"
	.db	0
	.dw	0,5833
	.ascii "PWMRUN"
	.db	0
	.dw	0,5852
	.ascii "LOAD"
	.db	0
	.dw	0,5869
	.ascii "PWMF"
	.db	0
	.dw	0,5886
	.ascii "CLRPWM"
	.db	0
	.dw	0,5905
	.ascii "CY"
	.db	0
	.dw	0,5920
	.ascii "AC"
	.db	0
	.dw	0,5935
	.ascii "F0"
	.db	0
	.dw	0,5950
	.ascii "RS1"
	.db	0
	.dw	0,5966
	.ascii "RS0"
	.db	0
	.dw	0,5982
	.ascii "OV"
	.db	0
	.dw	0,5997
	.ascii "P"
	.db	0
	.dw	0,6011
	.ascii "TF2"
	.db	0
	.dw	0,6027
	.ascii "TR2"
	.db	0
	.dw	0,6043
	.ascii "CM_RL2"
	.db	0
	.dw	0,6062
	.ascii "I2CEN"
	.db	0
	.dw	0,6080
	.ascii "STA"
	.db	0
	.dw	0,6096
	.ascii "STO"
	.db	0
	.dw	0,6112
	.ascii "SI"
	.db	0
	.dw	0,6127
	.ascii "AA"
	.db	0
	.dw	0,6142
	.ascii "I2CPX"
	.db	0
	.dw	0,6160
	.ascii "PADC"
	.db	0
	.dw	0,6177
	.ascii "PBOD"
	.db	0
	.dw	0,6194
	.ascii "PS"
	.db	0
	.dw	0,6209
	.ascii "PT1"
	.db	0
	.dw	0,6225
	.ascii "PX1"
	.db	0
	.dw	0,6241
	.ascii "PT0"
	.db	0
	.dw	0,6257
	.ascii "PX0"
	.db	0
	.dw	0,6273
	.ascii "P30"
	.db	0
	.dw	0,6289
	.ascii "EA"
	.db	0
	.dw	0,6304
	.ascii "EADC"
	.db	0
	.dw	0,6321
	.ascii "EBOD"
	.db	0
	.dw	0,6338
	.ascii "ES"
	.db	0
	.dw	0,6353
	.ascii "ET1"
	.db	0
	.dw	0,6369
	.ascii "EX1"
	.db	0
	.dw	0,6385
	.ascii "ET0"
	.db	0
	.dw	0,6401
	.ascii "EX0"
	.db	0
	.dw	0,6417
	.ascii "P20"
	.db	0
	.dw	0,6433
	.ascii "SM0"
	.db	0
	.dw	0,6449
	.ascii "FE"
	.db	0
	.dw	0,6464
	.ascii "SM1"
	.db	0
	.dw	0,6480
	.ascii "SM2"
	.db	0
	.dw	0,6496
	.ascii "REN"
	.db	0
	.dw	0,6512
	.ascii "TB8"
	.db	0
	.dw	0,6528
	.ascii "RB8"
	.db	0
	.dw	0,6544
	.ascii "TI"
	.db	0
	.dw	0,6559
	.ascii "RI"
	.db	0
	.dw	0,6574
	.ascii "P17"
	.db	0
	.dw	0,6590
	.ascii "P16"
	.db	0
	.dw	0,6606
	.ascii "TXD_1"
	.db	0
	.dw	0,6624
	.ascii "P15"
	.db	0
	.dw	0,6640
	.ascii "P14"
	.db	0
	.dw	0,6656
	.ascii "SDA"
	.db	0
	.dw	0,6672
	.ascii "P13"
	.db	0
	.dw	0,6688
	.ascii "SCL"
	.db	0
	.dw	0,6704
	.ascii "P12"
	.db	0
	.dw	0,6720
	.ascii "P11"
	.db	0
	.dw	0,6736
	.ascii "P10"
	.db	0
	.dw	0,6752
	.ascii "TF1"
	.db	0
	.dw	0,6768
	.ascii "TR1"
	.db	0
	.dw	0,6784
	.ascii "TF0"
	.db	0
	.dw	0,6800
	.ascii "TR0"
	.db	0
	.dw	0,6816
	.ascii "IE1"
	.db	0
	.dw	0,6832
	.ascii "IT1"
	.db	0
	.dw	0,6848
	.ascii "IE0"
	.db	0
	.dw	0,6864
	.ascii "IT0"
	.db	0
	.dw	0,6880
	.ascii "P07"
	.db	0
	.dw	0,6896
	.ascii "RXD"
	.db	0
	.dw	0,6912
	.ascii "P06"
	.db	0
	.dw	0,6928
	.ascii "TXD"
	.db	0
	.dw	0,6944
	.ascii "P05"
	.db	0
	.dw	0,6960
	.ascii "P04"
	.db	0
	.dw	0,6976
	.ascii "STADC"
	.db	0
	.dw	0,6994
	.ascii "P03"
	.db	0
	.dw	0,7010
	.ascii "P02"
	.db	0
	.dw	0,7026
	.ascii "RXD_1"
	.db	0
	.dw	0,7044
	.ascii "P01"
	.db	0
	.dw	0,7060
	.ascii "MISO"
	.db	0
	.dw	0,7077
	.ascii "P00"
	.db	0
	.dw	0,7093
	.ascii "MOSI"
	.db	0
	.dw	0,7141
	.ascii "max_amp"
	.db	0
	.dw	0,7161
	.ascii "min_amp"
	.db	0
	.dw	0,7194
	.ascii "flashing"
	.db	0
	.dw	0,7215
	.ascii "temp_controlling"
	.db	0
	.dw	0,7244
	.ascii "next_mode"
	.db	0
	.dw	0,0
Ldebug_pubnames_end:

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE0_end-Ldebug_CIE0_start
Ldebug_CIE0_start:
	.dw	0xffff
	.dw	0xffff
	.db	1
	.db	0
	.uleb128	1
	.sleb128	1
	.db	9
	.db	12
	.uleb128	22
	.uleb128	2
	.db	137
	.uleb128	1
	.db	0
	.db	0
Ldebug_CIE0_end:
	.dw	0,20
	.dw	0,(Ldebug_CIE0_start-4)
	.dw	0,(Smain$main$586)	;initial loc
	.dw	0,Smain$main$659-Smain$main$586
	.db	1
	.dw	0,(Smain$main$586)
	.db	14
	.uleb128	2
	.db	0

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE1_end-Ldebug_CIE1_start
Ldebug_CIE1_start:
	.dw	0xffff
	.dw	0xffff
	.db	1
	.db	0
	.uleb128	1
	.sleb128	1
	.db	9
	.db	12
	.uleb128	22
	.uleb128	2
	.db	137
	.uleb128	1
	.db	0
	.db	0
Ldebug_CIE1_end:
	.dw	0,20
	.dw	0,(Ldebug_CIE1_start-4)
	.dw	0,(Smain$wdt_clear$574)	;initial loc
	.dw	0,Smain$wdt_clear$584-Smain$wdt_clear$574
	.db	1
	.dw	0,(Smain$wdt_clear$574)
	.db	14
	.uleb128	2
	.db	0

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE2_end-Ldebug_CIE2_start
Ldebug_CIE2_start:
	.dw	0xffff
	.dw	0xffff
	.db	1
	.db	0
	.uleb128	1
	.sleb128	1
	.db	9
	.db	12
	.uleb128	22
	.uleb128	2
	.db	137
	.uleb128	1
	.db	0
	.db	0
Ldebug_CIE2_end:
	.dw	0,20
	.dw	0,(Ldebug_CIE2_start-4)
	.dw	0,(Smain$wdt_init$556)	;initial loc
	.dw	0,Smain$wdt_init$572-Smain$wdt_init$556
	.db	1
	.dw	0,(Smain$wdt_init$556)
	.db	14
	.uleb128	2
	.db	0

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE3_end-Ldebug_CIE3_start
Ldebug_CIE3_start:
	.dw	0xffff
	.dw	0xffff
	.db	1
	.db	0
	.uleb128	1
	.sleb128	1
	.db	9
	.db	12
	.uleb128	22
	.uleb128	2
	.db	137
	.uleb128	1
	.db	0
	.db	0
Ldebug_CIE3_end:
	.dw	0,20
	.dw	0,(Ldebug_CIE3_start-4)
	.dw	0,(Smain$control_loop$518)	;initial loc
	.dw	0,Smain$control_loop$554-Smain$control_loop$518
	.db	1
	.dw	0,(Smain$control_loop$518)
	.db	14
	.uleb128	2
	.db	0

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE4_end-Ldebug_CIE4_start
Ldebug_CIE4_start:
	.dw	0xffff
	.dw	0xffff
	.db	1
	.db	0
	.uleb128	1
	.sleb128	1
	.db	9
	.db	12
	.uleb128	22
	.uleb128	2
	.db	137
	.uleb128	1
	.db	0
	.db	0
Ldebug_CIE4_end:
	.dw	0,20
	.dw	0,(Ldebug_CIE4_start-4)
	.dw	0,(Smain$mode_stable_control$492)	;initial loc
	.dw	0,Smain$mode_stable_control$516-Smain$mode_stable_control$492
	.db	1
	.dw	0,(Smain$mode_stable_control$492)
	.db	14
	.uleb128	2
	.db	0

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE5_end-Ldebug_CIE5_start
Ldebug_CIE5_start:
	.dw	0xffff
	.dw	0xffff
	.db	1
	.db	0
	.uleb128	1
	.sleb128	1
	.db	9
	.db	12
	.uleb128	22
	.uleb128	2
	.db	137
	.uleb128	1
	.db	0
	.db	0
Ldebug_CIE5_end:
	.dw	0,20
	.dw	0,(Ldebug_CIE5_start-4)
	.dw	0,(Smain$is_stable$478)	;initial loc
	.dw	0,Smain$is_stable$490-Smain$is_stable$478
	.db	1
	.dw	0,(Smain$is_stable$478)
	.db	14
	.uleb128	2
	.db	0

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE6_end-Ldebug_CIE6_start
Ldebug_CIE6_start:
	.dw	0xffff
	.dw	0xffff
	.db	1
	.db	0
	.uleb128	1
	.sleb128	1
	.db	9
	.db	12
	.uleb128	22
	.uleb128	2
	.db	137
	.uleb128	1
	.db	0
	.db	0
Ldebug_CIE6_end:
	.dw	0,20
	.dw	0,(Ldebug_CIE6_start-4)
	.dw	0,(Smain$mode_changing_control$400)	;initial loc
	.dw	0,Smain$mode_changing_control$476-Smain$mode_changing_control$400
	.db	1
	.dw	0,(Smain$mode_changing_control$400)
	.db	14
	.uleb128	2
	.db	0

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE7_end-Ldebug_CIE7_start
Ldebug_CIE7_start:
	.dw	0xffff
	.dw	0xffff
	.db	1
	.db	0
	.uleb128	1
	.sleb128	1
	.db	9
	.db	12
	.uleb128	22
	.uleb128	2
	.db	137
	.uleb128	1
	.db	0
	.db	0
Ldebug_CIE7_end:
	.dw	0,20
	.dw	0,(Ldebug_CIE7_start-4)
	.dw	0,(Smain$activate_leds$389)	;initial loc
	.dw	0,Smain$activate_leds$398-Smain$activate_leds$389
	.db	1
	.dw	0,(Smain$activate_leds$389)
	.db	14
	.uleb128	2
	.db	0

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE8_end-Ldebug_CIE8_start
Ldebug_CIE8_start:
	.dw	0xffff
	.dw	0xffff
	.db	1
	.db	0
	.uleb128	1
	.sleb128	1
	.db	9
	.db	12
	.uleb128	22
	.uleb128	2
	.db	137
	.uleb128	1
	.db	0
	.db	0
Ldebug_CIE8_end:
	.dw	0,20
	.dw	0,(Ldebug_CIE8_start-4)
	.dw	0,(Smain$stop_leds$376)	;initial loc
	.dw	0,Smain$stop_leds$387-Smain$stop_leds$376
	.db	1
	.dw	0,(Smain$stop_leds$376)
	.db	14
	.uleb128	2
	.db	0

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE9_end-Ldebug_CIE9_start
Ldebug_CIE9_start:
	.dw	0xffff
	.dw	0xffff
	.db	1
	.db	0
	.uleb128	1
	.sleb128	1
	.db	9
	.db	12
	.uleb128	22
	.uleb128	2
	.db	137
	.uleb128	1
	.db	0
	.db	0
Ldebug_CIE9_end:
	.dw	0,20
	.dw	0,(Ldebug_CIE9_start-4)
	.dw	0,(Smain$process_button$336)	;initial loc
	.dw	0,Smain$process_button$374-Smain$process_button$336
	.db	1
	.dw	0,(Smain$process_button$336)
	.db	14
	.uleb128	2
	.db	0

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE10_end-Ldebug_CIE10_start
Ldebug_CIE10_start:
	.dw	0xffff
	.dw	0xffff
	.db	1
	.db	0
	.uleb128	1
	.sleb128	1
	.db	9
	.db	12
	.uleb128	22
	.uleb128	2
	.db	137
	.uleb128	1
	.db	0
	.db	0
Ldebug_CIE10_end:
	.dw	0,20
	.dw	0,(Ldebug_CIE10_start-4)
	.dw	0,(Smain$process_uart$280)	;initial loc
	.dw	0,Smain$process_uart$334-Smain$process_uart$280
	.db	1
	.dw	0,(Smain$process_uart$280)
	.db	14
	.uleb128	2
	.db	0

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE11_end-Ldebug_CIE11_start
Ldebug_CIE11_start:
	.dw	0xffff
	.dw	0xffff
	.db	1
	.db	0
	.uleb128	1
	.sleb128	1
	.db	9
	.db	12
	.uleb128	22
	.uleb128	2
	.db	137
	.uleb128	1
	.db	0
	.db	0
Ldebug_CIE11_end:
	.dw	0,20
	.dw	0,(Ldebug_CIE11_start-4)
	.dw	0,(Smain$toNextMode$274)	;initial loc
	.dw	0,Smain$toNextMode$278-Smain$toNextMode$274
	.db	1
	.dw	0,(Smain$toNextMode$274)
	.db	14
	.uleb128	2
	.db	0

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE12_end-Ldebug_CIE12_start
Ldebug_CIE12_start:
	.dw	0xffff
	.dw	0xffff
	.db	1
	.db	0
	.uleb128	1
	.sleb128	1
	.db	9
	.db	12
	.uleb128	22
	.uleb128	2
	.db	137
	.uleb128	1
	.db	0
	.db	0
Ldebug_CIE12_end:
	.dw	0,20
	.dw	0,(Ldebug_CIE12_start-4)
	.dw	0,(Smain$changeMode$226)	;initial loc
	.dw	0,Smain$changeMode$272-Smain$changeMode$226
	.db	1
	.dw	0,(Smain$changeMode$226)
	.db	14
	.uleb128	2
	.db	0

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE13_end-Ldebug_CIE13_start
Ldebug_CIE13_start:
	.dw	0xffff
	.dw	0xffff
	.db	1
	.db	0
	.uleb128	1
	.sleb128	1
	.db	9
	.db	12
	.uleb128	22
	.uleb128	2
	.db	137
	.uleb128	1
	.db	0
	.db	0
Ldebug_CIE13_end:
	.dw	0,20
	.dw	0,(Ldebug_CIE13_start-4)
	.dw	0,(Smain$target_amp$207)	;initial loc
	.dw	0,Smain$target_amp$224-Smain$target_amp$207
	.db	1
	.dw	0,(Smain$target_amp$207)
	.db	14
	.uleb128	2
	.db	0

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE14_end-Ldebug_CIE14_start
Ldebug_CIE14_start:
	.dw	0xffff
	.dw	0xffff
	.db	1
	.db	0
	.uleb128	1
	.sleb128	1
	.db	9
	.db	12
	.uleb128	22
	.uleb128	2
	.db	137
	.uleb128	1
	.db	0
	.db	0
Ldebug_CIE14_end:
	.dw	0,20
	.dw	0,(Ldebug_CIE14_start-4)
	.dw	0,(Smain$avg_amp$195)	;initial loc
	.dw	0,Smain$avg_amp$205-Smain$avg_amp$195
	.db	1
	.dw	0,(Smain$avg_amp$195)
	.db	14
	.uleb128	2
	.db	0

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE15_end-Ldebug_CIE15_start
Ldebug_CIE15_start:
	.dw	0xffff
	.dw	0xffff
	.db	1
	.db	0
	.uleb128	1
	.sleb128	1
	.db	9
	.db	12
	.uleb128	22
	.uleb128	2
	.db	137
	.uleb128	1
	.db	0
	.db	0
Ldebug_CIE15_end:
	.dw	0,20
	.dw	0,(Ldebug_CIE15_start-4)
	.dw	0,(Smain$has_high_beam$189)	;initial loc
	.dw	0,Smain$has_high_beam$193-Smain$has_high_beam$189
	.db	1
	.dw	0,(Smain$has_high_beam$189)
	.db	14
	.uleb128	2
	.db	0

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE16_end-Ldebug_CIE16_start
Ldebug_CIE16_start:
	.dw	0xffff
	.dw	0xffff
	.db	1
	.db	0
	.uleb128	1
	.sleb128	1
	.db	9
	.db	12
	.uleb128	22
	.uleb128	2
	.db	137
	.uleb128	1
	.db	0
	.db	0
Ldebug_CIE16_end:
	.dw	0,20
	.dw	0,(Ldebug_CIE16_start-4)
	.dw	0,(Smain$sample_temperature$178)	;initial loc
	.dw	0,Smain$sample_temperature$187-Smain$sample_temperature$178
	.db	1
	.dw	0,(Smain$sample_temperature$178)
	.db	14
	.uleb128	2
	.db	0

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE17_end-Ldebug_CIE17_start
Ldebug_CIE17_start:
	.dw	0xffff
	.dw	0xffff
	.db	1
	.db	0
	.uleb128	1
	.sleb128	1
	.db	9
	.db	12
	.uleb128	22
	.uleb128	2
	.db	137
	.uleb128	1
	.db	0
	.db	0
Ldebug_CIE17_end:
	.dw	0,20
	.dw	0,(Ldebug_CIE17_start-4)
	.dw	0,(Smain$sample_amps$161)	;initial loc
	.dw	0,Smain$sample_amps$176-Smain$sample_amps$161
	.db	1
	.dw	0,(Smain$sample_amps$161)
	.db	14
	.uleb128	2
	.db	0

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE18_end-Ldebug_CIE18_start
Ldebug_CIE18_start:
	.dw	0xffff
	.dw	0xffff
	.db	1
	.db	0
	.uleb128	1
	.sleb128	1
	.db	9
	.db	12
	.uleb128	22
	.uleb128	2
	.db	137
	.uleb128	1
	.db	0
	.db	0
Ldebug_CIE18_end:
	.dw	0,20
	.dw	0,(Ldebug_CIE18_start-4)
	.dw	0,(Smain$init_peripherals_but_button_n_uart$131)	;initial loc
	.dw	0,Smain$init_peripherals_but_button_n_uart$159-Smain$init_peripherals_but_button_n_uart$131
	.db	1
	.dw	0,(Smain$init_peripherals_but_button_n_uart$131)
	.db	14
	.uleb128	2
	.db	0

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE19_end-Ldebug_CIE19_start
Ldebug_CIE19_start:
	.dw	0xffff
	.dw	0xffff
	.db	1
	.db	0
	.uleb128	1
	.sleb128	1
	.db	9
	.db	12
	.uleb128	22
	.uleb128	2
	.db	137
	.uleb128	1
	.db	0
	.db	0
Ldebug_CIE19_end:
	.dw	0,20
	.dw	0,(Ldebug_CIE19_start-4)
	.dw	0,(Smain$init_sample$115)	;initial loc
	.dw	0,Smain$init_sample$129-Smain$init_sample$115
	.db	1
	.dw	0,(Smain$init_sample$115)
	.db	14
	.uleb128	2
	.db	0

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE20_end-Ldebug_CIE20_start
Ldebug_CIE20_start:
	.dw	0xffff
	.dw	0xffff
	.db	1
	.db	0
	.uleb128	1
	.sleb128	1
	.db	9
	.db	12
	.uleb128	22
	.uleb128	2
	.db	137
	.uleb128	1
	.db	0
	.db	0
Ldebug_CIE20_end:
	.dw	0,20
	.dw	0,(Ldebug_CIE20_start-4)
	.dw	0,(Smain$disable_ntc$110)	;initial loc
	.dw	0,Smain$disable_ntc$113-Smain$disable_ntc$110
	.db	1
	.dw	0,(Smain$disable_ntc$110)
	.db	14
	.uleb128	2
	.db	0

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE21_end-Ldebug_CIE21_start
Ldebug_CIE21_start:
	.dw	0xffff
	.dw	0xffff
	.db	1
	.db	0
	.uleb128	1
	.sleb128	1
	.db	9
	.db	12
	.uleb128	22
	.uleb128	2
	.db	137
	.uleb128	1
	.db	0
	.db	0
Ldebug_CIE21_end:
	.dw	0,20
	.dw	0,(Ldebug_CIE21_start-4)
	.dw	0,(Smain$enable_ntc$105)	;initial loc
	.dw	0,Smain$enable_ntc$108-Smain$enable_ntc$105
	.db	1
	.dw	0,(Smain$enable_ntc$105)
	.db	14
	.uleb128	2
	.db	0

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE22_end-Ldebug_CIE22_start
Ldebug_CIE22_start:
	.dw	0xffff
	.dw	0xffff
	.db	1
	.db	0
	.uleb128	1
	.sleb128	1
	.db	9
	.db	12
	.uleb128	22
	.uleb128	2
	.db	137
	.uleb128	1
	.db	0
	.db	0
Ldebug_CIE22_end:
	.dw	0,20
	.dw	0,(Ldebug_CIE22_start-4)
	.dw	0,(Smain$button_interrupt_init$96)	;initial loc
	.dw	0,Smain$button_interrupt_init$103-Smain$button_interrupt_init$96
	.db	1
	.dw	0,(Smain$button_interrupt_init$96)
	.db	14
	.uleb128	2
	.db	0

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE23_end-Ldebug_CIE23_start
Ldebug_CIE23_start:
	.dw	0xffff
	.dw	0xffff
	.db	1
	.db	0
	.uleb128	1
	.sleb128	1
	.db	9
	.db	12
	.uleb128	22
	.uleb128	6
	.db	137
	.uleb128	1
	.db	0
	.db	0
Ldebug_CIE23_end:
	.dw	0,20
	.dw	0,(Ldebug_CIE23_start-4)
	.dw	0,(Smain$PinInterrupt_ISR$84)	;initial loc
	.dw	0,Smain$PinInterrupt_ISR$94-Smain$PinInterrupt_ISR$84
	.db	1
	.dw	0,(Smain$PinInterrupt_ISR$84)
	.db	14
	.uleb128	6
	.db	0

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE24_end-Ldebug_CIE24_start
Ldebug_CIE24_start:
	.dw	0xffff
	.dw	0xffff
	.db	1
	.db	0
	.uleb128	1
	.sleb128	1
	.db	9
	.db	12
	.uleb128	22
	.uleb128	2
	.db	137
	.uleb128	1
	.db	0
	.db	0
Ldebug_CIE24_end:
	.dw	0,20
	.dw	0,(Ldebug_CIE24_start-4)
	.dw	0,(Smain$uart_interrupt_init$77)	;initial loc
	.dw	0,Smain$uart_interrupt_init$82-Smain$uart_interrupt_init$77
	.db	1
	.dw	0,(Smain$uart_interrupt_init$77)
	.db	14
	.uleb128	2
	.db	0

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE25_end-Ldebug_CIE25_start
Ldebug_CIE25_start:
	.dw	0xffff
	.dw	0xffff
	.db	1
	.db	0
	.uleb128	1
	.sleb128	1
	.db	9
	.db	12
	.uleb128	22
	.uleb128	6
	.db	137
	.uleb128	1
	.db	0
	.db	0
Ldebug_CIE25_end:
	.dw	0,20
	.dw	0,(Ldebug_CIE25_start-4)
	.dw	0,(Smain$SerialPort1_ISR$60)	;initial loc
	.dw	0,Smain$SerialPort1_ISR$75-Smain$SerialPort1_ISR$60
	.db	1
	.dw	0,(Smain$SerialPort1_ISR$60)
	.db	14
	.uleb128	6
	.db	0

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE26_end-Ldebug_CIE26_start
Ldebug_CIE26_start:
	.dw	0xffff
	.dw	0xffff
	.db	1
	.db	0
	.uleb128	1
	.sleb128	1
	.db	9
	.db	12
	.uleb128	22
	.uleb128	2
	.db	137
	.uleb128	1
	.db	0
	.db	0
Ldebug_CIE26_end:
	.dw	0,20
	.dw	0,(Ldebug_CIE26_start-4)
	.dw	0,(Smain$log_init$50)	;initial loc
	.dw	0,Smain$log_init$58-Smain$log_init$50
	.db	1
	.dw	0,(Smain$log_init$50)
	.db	14
	.uleb128	2
	.db	0

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE27_end-Ldebug_CIE27_start
Ldebug_CIE27_start:
	.dw	0xffff
	.dw	0xffff
	.db	1
	.db	0
	.uleb128	1
	.sleb128	1
	.db	9
	.db	12
	.uleb128	22
	.uleb128	2
	.db	137
	.uleb128	1
	.db	0
	.db	0
Ldebug_CIE27_end:
	.dw	0,20
	.dw	0,(Ldebug_CIE27_start-4)
	.dw	0,(Smain$uart_logn$27)	;initial loc
	.dw	0,Smain$uart_logn$48-Smain$uart_logn$27
	.db	1
	.dw	0,(Smain$uart_logn$27)
	.db	14
	.uleb128	2
	.db	0

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE28_end-Ldebug_CIE28_start
Ldebug_CIE28_start:
	.dw	0xffff
	.dw	0xffff
	.db	1
	.db	0
	.uleb128	1
	.sleb128	1
	.db	9
	.db	12
	.uleb128	22
	.uleb128	2
	.db	137
	.uleb128	1
	.db	0
	.db	0
Ldebug_CIE28_end:
	.dw	0,20
	.dw	0,(Ldebug_CIE28_start-4)
	.dw	0,(Smain$uart_log$20)	;initial loc
	.dw	0,Smain$uart_log$25-Smain$uart_log$20
	.db	1
	.dw	0,(Smain$uart_log$20)
	.db	14
	.uleb128	2
	.db	0

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE29_end-Ldebug_CIE29_start
Ldebug_CIE29_start:
	.dw	0xffff
	.dw	0xffff
	.db	1
	.db	0
	.uleb128	1
	.sleb128	1
	.db	9
	.db	12
	.uleb128	22
	.uleb128	2
	.db	137
	.uleb128	1
	.db	0
	.db	0
Ldebug_CIE29_end:
	.dw	0,20
	.dw	0,(Ldebug_CIE29_start-4)
	.dw	0,(Smain$Timer0_Delay$1)	;initial loc
	.dw	0,Smain$Timer0_Delay$18-Smain$Timer0_Delay$1
	.db	1
	.dw	0,(Smain$Timer0_Delay$1)
	.db	14
	.uleb128	2
	.db	0
