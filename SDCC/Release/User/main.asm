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
	.globl _Timer0_Delay
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
G$uart1_rx_buffer$0_0$0==.
_uart1_rx_buffer::
	.ds 16
Lmain.has_high_beam$mode$1_0$173==.
_has_high_beam_mode_65536_173:
	.ds 1
Lmain.avg_amp$idx$1_0$175==.
_avg_amp_idx_65536_175:
	.ds 1
Lmain.target_amp$idx$1_0$179==.
_target_amp_PARM_2:
	.ds 1
Lmain.target_amp$mode$1_0$179==.
_target_amp_mode_65536_179:
	.ds 1
Lmain.changeMode$new_mode$1_0$185==.
_changeMode_new_mode_65536_185:
	.ds 1
Lmain.process_uart$ch$2_0$203==.
_process_uart_ch_131072_203:
	.ds 1
Lmain.mode_changing_control$light_changing$1_0$223==.
_mode_changing_control_light_changing_65536_223:
	.ds 1
Lmain.mode_stable_control$light_changing$1_0$246==.
_mode_stable_control_light_changing_65536_246:
	.ds 1
Lmain.control_loop$light_changing$1_0$253==.
_control_loop_light_changing_65536_253:
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
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:254: void Timer0_Delay(unsigned long u32SYSCLK, unsigned int u16CNT, unsigned int u16DLYUnit)
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
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:258: TIMER0_FSYS_DIV12;                                  //T0M=0, Timer0 Clock = Fsys/12
	anl	_CKCON,#0xf7
	Smain$Timer0_Delay$3 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:259: ENABLE_TIMER0_MODE1;                                   //Timer0 is 16-bit mode
	anl	_TMOD,#0xf0
	orl	_TMOD,#0x01
	Smain$Timer0_Delay$4 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:260: TL0TMP = LOBYTE(65535-((u32SYSCLK/1000000)*u16DLYUnit/12));
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
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:261: TH0TMP = HIBYTE(65535-((u32SYSCLK/1000000)*u16DLYUnit/12));
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
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:263: while (u16CNT != 0)
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
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:265: TL0=TL0TMP;
	mov	_TL0,r3
	Smain$Timer0_Delay$9 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:266: TH0=TH0TMP;
	mov	_TH0,r7
	Smain$Timer0_Delay$10 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:267: set_TCON_TR0;                                    //Start Timer0
;	assignBit
	setb	_TR0
	Smain$Timer0_Delay$11 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:268: while (!TF0);                       //Check Timer0 Time-Out Flag
00101$:
	Smain$Timer0_Delay$12 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:269: clr_TCON_TF0;
;	assignBit
	jbc	_TF0,00127$
	sjmp	00101$
00127$:
	Smain$Timer0_Delay$13 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:270: clr_TCON_TR0;                       //Stop Timer0
;	assignBit
	clr	_TR0
	Smain$Timer0_Delay$14 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:271: u16CNT --;
	dec	r5
	cjne	r5,#0xff,00128$
	dec	r6
00128$:
	Smain$Timer0_Delay$15 ==.
	sjmp	00104$
00107$:
	Smain$Timer0_Delay$16 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:274: }
	Smain$Timer0_Delay$17 ==.
	XG$Timer0_Delay$0$0 ==.
	ret
	Smain$Timer0_Delay$18 ==.
;------------------------------------------------------------
;Allocation info for local variables in function 'SerialPort1_ISR'
;------------------------------------------------------------
	Smain$SerialPort1_ISR$19 ==.
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
	Smain$SerialPort1_ISR$20 ==.
	Smain$SerialPort1_ISR$21 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:294: PUSH_SFRS;
	PUSH	0x91;
	Smain$SerialPort1_ISR$22 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:296: if (RI_1)
	jnb	_RI_1,00102$
	Smain$SerialPort1_ISR$23 ==.
	Smain$SerialPort1_ISR$24 ==.
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
	Smain$SerialPort1_ISR$25 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:299: uart1_next_idx = (uart1_next_idx + 1) % UART_BUFFER_LENGTH;
	mov	dptr,#_uart1_next_idx
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	inc	r7
	cjne	r7,#0x00,00116$
	inc	r6
00116$:
	Smain$SerialPort1_ISR$26 ==.
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
	Smain$SerialPort1_ISR$27 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:300: clr_SCON_1_RI_1;                             /* clear reception flag for next reception */
;	assignBit
	clr	_RI_1
00102$:
	Smain$SerialPort1_ISR$28 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:303: if (TI_1 )
	Smain$SerialPort1_ISR$29 ==.
	Smain$SerialPort1_ISR$30 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:305: clr_SCON_1_TI_1;                             // if emission occur
;	assignBit
	jbc	_TI_1,00117$
	sjmp	00104$
00117$:
	Smain$SerialPort1_ISR$31 ==.
00104$:
	Smain$SerialPort1_ISR$32 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:309: POP_SFRS;
	POP	0x91;
	Smain$SerialPort1_ISR$33 ==.
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
	Smain$SerialPort1_ISR$34 ==.
	XG$SerialPort1_ISR$0$0 ==.
	reti
	Smain$SerialPort1_ISR$35 ==.
;------------------------------------------------------------
;Allocation info for local variables in function 'uart_interrupt_init'
;------------------------------------------------------------
	Smain$uart_interrupt_init$36 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:314: void uart_interrupt_init(void)
;	-----------------------------------------
;	 function uart_interrupt_init
;	-----------------------------------------
_uart_interrupt_init:
	Smain$uart_interrupt_init$37 ==.
	Smain$uart_interrupt_init$38 ==.
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
	Smain$uart_interrupt_init$39 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:318: ENABLE_UART1_INTERRUPT;
	orl	_EIE1,#0x01
	Smain$uart_interrupt_init$40 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:319: }
	Smain$uart_interrupt_init$41 ==.
	XG$uart_interrupt_init$0$0 ==.
	ret
	Smain$uart_interrupt_init$42 ==.
;------------------------------------------------------------
;Allocation info for local variables in function 'PinInterrupt_ISR'
;------------------------------------------------------------
	Smain$PinInterrupt_ISR$43 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:332: void PinInterrupt_ISR(void) __interrupt (7)
;	-----------------------------------------
;	 function PinInterrupt_ISR
;	-----------------------------------------
_PinInterrupt_ISR:
	push	acc
	push	b
	push	dpl
	push	dph
	Smain$PinInterrupt_ISR$44 ==.
	Smain$PinInterrupt_ISR$45 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:334: PUSH_SFRS;
	PUSH	0x91;
	Smain$PinInterrupt_ISR$46 ==.
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
	Smain$PinInterrupt_ISR$47 ==.
	Smain$PinInterrupt_ISR$48 ==.
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
	Smain$PinInterrupt_ISR$49 ==.
00102$:
	Smain$PinInterrupt_ISR$50 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:340: PIF &= CLR_BUTTON_PIN;
	anl	_PIF,#0xfb
	Smain$PinInterrupt_ISR$51 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:342: POP_SFRS;
	POP	0x91;
	Smain$PinInterrupt_ISR$52 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:343: }
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	Smain$PinInterrupt_ISR$53 ==.
	XG$PinInterrupt_ISR$0$0 ==.
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop not_psw
	Smain$PinInterrupt_ISR$54 ==.
;------------------------------------------------------------
;Allocation info for local variables in function 'button_interrupt_init'
;------------------------------------------------------------
	Smain$button_interrupt_init$55 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:347: void button_interrupt_init(void)
;	-----------------------------------------
;	 function button_interrupt_init
;	-----------------------------------------
_button_interrupt_init:
	Smain$button_interrupt_init$56 ==.
	Smain$button_interrupt_init$57 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:350: BUTTON_INPUT_MODE;
	orl	_P0M1,#0x04
	anl	_P0M2,#0xfb
	Smain$button_interrupt_init$58 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:352: BUTTON_PIN = 1;
;	assignBit
	setb	_P02
	Smain$button_interrupt_init$59 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:354: BUTTON_INITIALIZE_EDGE_TRIGGER;
	mov	_PICON,#0x00
	orl	_PICON,#0x10
	orl	_PINEN,#0x04
	orl	_PIPEN,#0x04
	Smain$button_interrupt_init$60 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:355: ENABLE_PIN_INTERRUPT;
	orl	_EIE,#0x02
	Smain$button_interrupt_init$61 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:356: }
	Smain$button_interrupt_init$62 ==.
	XG$button_interrupt_init$0$0 ==.
	ret
	Smain$button_interrupt_init$63 ==.
;------------------------------------------------------------
;Allocation info for local variables in function 'enable_ntc'
;------------------------------------------------------------
	Smain$enable_ntc$64 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:358: void enable_ntc( void )
;	-----------------------------------------
;	 function enable_ntc
;	-----------------------------------------
_enable_ntc:
	Smain$enable_ntc$65 ==.
	Smain$enable_ntc$66 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:361: NTC_EN_PUSHPULL_MODE;
	anl	_P1M1,#0xbf
	orl	_P1M2,#0x40
	Smain$enable_ntc$67 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:362: NTC_EN_PIN = 0;
;	assignBit
	clr	_P16
	Smain$enable_ntc$68 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:364: }
	Smain$enable_ntc$69 ==.
	XG$enable_ntc$0$0 ==.
	ret
	Smain$enable_ntc$70 ==.
;------------------------------------------------------------
;Allocation info for local variables in function 'disable_ntc'
;------------------------------------------------------------
	Smain$disable_ntc$71 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:366: void disable_ntc( void )
;	-----------------------------------------
;	 function disable_ntc
;	-----------------------------------------
_disable_ntc:
	Smain$disable_ntc$72 ==.
	Smain$disable_ntc$73 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:369: NTC_EN_PUSHPULL_MODE;
	anl	_P1M1,#0xbf
	orl	_P1M2,#0x40
	Smain$disable_ntc$74 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:370: NTC_EN_PIN = 1;
;	assignBit
	setb	_P16
	Smain$disable_ntc$75 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:372: }
	Smain$disable_ntc$76 ==.
	XG$disable_ntc$0$0 ==.
	ret
	Smain$disable_ntc$77 ==.
;------------------------------------------------------------
;Allocation info for local variables in function 'init_sample'
;------------------------------------------------------------
;i                         Allocated with name '_init_sample_i_131072_165'
;------------------------------------------------------------
	Smain$init_sample$78 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:374: void init_sample( void )
;	-----------------------------------------
;	 function init_sample
;	-----------------------------------------
_init_sample:
	Smain$init_sample$79 ==.
	Smain$init_sample$80 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:376: sample_count = 0;
	mov	dptr,#_sample_count
	clr	a
	movx	@dptr,a
	Smain$init_sample$81 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:377: acc_temp = 0;
	mov	dptr,#_acc_temp
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	Smain$init_sample$82 ==.
	Smain$init_sample$83 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:379: for( int i = 0; i < NUM_LEDS; i++ ) {
	Smain$init_sample$84 ==.
	mov	r6,#0x00
	mov	r7,#0x00
	Smain$init_sample$85 ==.
00103$:
	clr	c
	mov	a,r6
	subb	a,#0x02
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00101$
	Smain$init_sample$86 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:380: acc_amp[i] = 0;
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
	Smain$init_sample$87 ==.
	Smain$init_sample$88 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:379: for( int i = 0; i < NUM_LEDS; i++ ) {
	inc	r6
	cjne	r6,#0x00,00103$
	inc	r7
	sjmp	00103$
00101$:
	Smain$init_sample$89 ==.
	Smain$init_sample$90 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:383: flashing_on = true;
	mov	dptr,#_flashing_on
	mov	a,#0x01
	movx	@dptr,a
	Smain$init_sample$91 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:384: }
	Smain$init_sample$92 ==.
	XG$init_sample$0$0 ==.
	ret
	Smain$init_sample$93 ==.
;------------------------------------------------------------
;Allocation info for local variables in function 'init_peripherals_but_button_n_uart'
;------------------------------------------------------------
	Smain$init_peripherals_but_button_n_uart$94 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:388: void init_peripherals_but_button_n_uart(void)
;	-----------------------------------------
;	 function init_peripherals_but_button_n_uart
;	-----------------------------------------
_init_peripherals_but_button_n_uart:
	Smain$init_peripherals_but_button_n_uart$95 ==.
	Smain$init_peripherals_but_button_n_uart$96 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:390: ENABLE_GLOBAL_INTERRUPT;
;	assignBit
	setb	_EA
	Smain$init_peripherals_but_button_n_uart$97 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:393: ADCCON1 |= 0X30;  // ADC clock src = Fsys / 8
	orl	_ADCCON1,#0x30
	Smain$init_peripherals_but_button_n_uart$98 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:394: ADCCON2 |= 0x0E;  // ADC sample time = 32 (max)
	orl	_ADCCON2,#0x0e
	Smain$init_peripherals_but_button_n_uart$99 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:396: NTC_INPUT_MODE;
	orl	_P0M1,#0x40
	anl	_P0M2,#0xbf
	Smain$init_peripherals_but_button_n_uart$100 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:400: clr_CKCON_PWMCKS; // PWM in FSYS freq.
	anl	_CKCON,#0xbf
	Smain$init_peripherals_but_button_n_uart$101 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:401: PWM0_CLOCK_DIV_1; // PWM div = 1
	anl	_PWMCON1,#0xf8
	mov	_PWMCON1,_PWMCON1
	Smain$init_peripherals_but_button_n_uart$102 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:403: ENABLE_PWM0_CH4_P01_OUTPUT; // LED2
	orl	_PIOCON0,#0x10
	Smain$init_peripherals_but_button_n_uart$103 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:404: P01_PUSHPULL_MODE;
	anl	_P0M1,#0xfd
	orl	_P0M2,#0x02
	Smain$init_peripherals_but_button_n_uart$104 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:406: ENABLE_PWM0_CH2_P05_OUTPUT; // LED1/3
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
	Smain$init_peripherals_but_button_n_uart$105 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:407: P05_PUSHPULL_MODE;
	anl	_P0M1,#0xdf
	orl	_P0M2,#0x20
	Smain$init_peripherals_but_button_n_uart$106 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:409: clr_PWMCON0_PWMRUN;
;	assignBit
	clr	_PWMRUN
	Smain$init_peripherals_but_button_n_uart$107 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:410: set_SFRS_SFRPAGE;
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
	Smain$init_peripherals_but_button_n_uart$108 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:412: PWMPH = 0;
	mov	_PWMPH,#0x00
	Smain$init_peripherals_but_button_n_uart$109 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:413: PWMPL = MAX_PWM; // 255 bit PWM
	mov	_PWMPL,#0xff
	Smain$init_peripherals_but_button_n_uart$110 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:415: PWM2L = 0;
	mov	_PWM2L,#0x00
	Smain$init_peripherals_but_button_n_uart$111 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:416: PWM2H = 0;
	mov	_PWM2H,#0x00
	Smain$init_peripherals_but_button_n_uart$112 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:417: PWM4L = 0;
	mov	_PWM4L,#0x00
	Smain$init_peripherals_but_button_n_uart$113 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:418: PWM4H = 0;
	mov	_PWM4H,#0x00
	Smain$init_peripherals_but_button_n_uart$114 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:420: clr_SFRS_SFRPAGE;
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
	Smain$init_peripherals_but_button_n_uart$115 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:421: set_PWMCON0_PWMRUN;
;	assignBit
	setb	_PWMRUN
	Smain$init_peripherals_but_button_n_uart$116 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:423: light_control_mode[0] = MODE_STABLE;
	mov	dptr,#_light_control_mode
	clr	a
	movx	@dptr,a
	Smain$init_peripherals_but_button_n_uart$117 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:424: light_control_mode[1] = MODE_STABLE;
	mov	dptr,#(_light_control_mode + 0x0001)
	movx	@dptr,a
	Smain$init_peripherals_but_button_n_uart$118 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:426: enable_ntc();
	lcall	_enable_ntc
	Smain$init_peripherals_but_button_n_uart$119 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:428: init_sample();
	lcall	_init_sample
	Smain$init_peripherals_but_button_n_uart$120 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:429: flashing_count = 0;
	mov	dptr,#_flashing_count
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	Smain$init_peripherals_but_button_n_uart$121 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:430: }
	Smain$init_peripherals_but_button_n_uart$122 ==.
	XG$init_peripherals_but_button_n_uart$0$0 ==.
	ret
	Smain$init_peripherals_but_button_n_uart$123 ==.
;------------------------------------------------------------
;Allocation info for local variables in function 'sample_amps'
;------------------------------------------------------------
	Smain$sample_amps$124 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:432: void sample_amps( void )
;	-----------------------------------------
;	 function sample_amps
;	-----------------------------------------
_sample_amps:
	Smain$sample_amps$125 ==.
	Smain$sample_amps$126 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:435: ENABLE_ADC_LED1;
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
	Smain$sample_amps$127 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:437: clr_ADCCON0_ADCF;
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
	Smain$sample_amps$128 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:438: set_ADCCON0_ADCS;
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
	Smain$sample_amps$129 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:440: while( ADCF == 0 );
00101$:
	jnb	_ADCF,00101$
	Smain$sample_amps$130 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:441: cur_amp[LED1_IDX] = (((uint16_t)ADCRH) << 4 ) | (ADCRL & 0xF);
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
	Smain$sample_amps$131 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:443: DISABLE_ADC;
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
	Smain$sample_amps$132 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:446: ENABLE_ADC_LED2;
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
	Smain$sample_amps$133 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:448: clr_ADCCON0_ADCF;
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
	Smain$sample_amps$134 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:449: set_ADCCON0_ADCS;
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
	Smain$sample_amps$135 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:451: while( ADCF == 0 );
00104$:
	jnb	_ADCF,00104$
	Smain$sample_amps$136 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:452: cur_amp[LED2_IDX] = (((uint16_t)ADCRH) << 4 ) | (ADCRL & 0xF);
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
	Smain$sample_amps$137 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:454: DISABLE_ADC;
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
	Smain$sample_amps$138 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:455: }
	Smain$sample_amps$139 ==.
	XG$sample_amps$0$0 ==.
	ret
	Smain$sample_amps$140 ==.
;------------------------------------------------------------
;Allocation info for local variables in function 'sample_temperature'
;------------------------------------------------------------
	Smain$sample_temperature$141 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:457: void sample_temperature( void )
;	-----------------------------------------
;	 function sample_temperature
;	-----------------------------------------
_sample_temperature:
	Smain$sample_temperature$142 ==.
	Smain$sample_temperature$143 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:460: ENABLE_ADC_NTC;
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
	Smain$sample_temperature$144 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:462: clr_ADCCON0_ADCF;
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
	Smain$sample_temperature$145 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:463: set_ADCCON0_ADCS;
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
	Smain$sample_temperature$146 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:465: while( ADCF == 0 );
00101$:
	jnb	_ADCF,00101$
	Smain$sample_temperature$147 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:466: acc_temp += (((uint16_t)ADCRH) << 4 ) | (ADCRL & 0xF);
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
	Smain$sample_temperature$148 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:468: DISABLE_ADC;
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
	Smain$sample_temperature$149 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:470: }
	Smain$sample_temperature$150 ==.
	XG$sample_temperature$0$0 ==.
	ret
	Smain$sample_temperature$151 ==.
;------------------------------------------------------------
;Allocation info for local variables in function 'has_high_beam'
;------------------------------------------------------------
;mode                      Allocated with name '_has_high_beam_mode_65536_173'
;------------------------------------------------------------
	Smain$has_high_beam$152 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:472: int8_t has_high_beam( int8_t mode )
;	-----------------------------------------
;	 function has_high_beam
;	-----------------------------------------
_has_high_beam:
	Smain$has_high_beam$153 ==.
	mov	a,dpl
	mov	dptr,#_has_high_beam_mode_65536_173
	movx	@dptr,a
	Smain$has_high_beam$154 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:474: return (max_amp[mode][0] > 0);
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
	Smain$has_high_beam$155 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:475: }
	Smain$has_high_beam$156 ==.
	XG$has_high_beam$0$0 ==.
	ret
	Smain$has_high_beam$157 ==.
;------------------------------------------------------------
;Allocation info for local variables in function 'avg_amp'
;------------------------------------------------------------
;idx                       Allocated with name '_avg_amp_idx_65536_175'
;------------------------------------------------------------
	Smain$avg_amp$158 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:477: uint16_t avg_amp( uint8_t idx ) {
;	-----------------------------------------
;	 function avg_amp
;	-----------------------------------------
_avg_amp:
	Smain$avg_amp$159 ==.
	mov	a,dpl
	mov	dptr,#_avg_amp_idx_65536_175
	movx	@dptr,a
	Smain$avg_amp$160 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:478: if( sample_count > 0 ) {
	mov	dptr,#_sample_count
	movx	a,@dptr
	mov	r7,a
	movx	a,@dptr
	jz	00102$
	Smain$avg_amp$161 ==.
	Smain$avg_amp$162 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:479: return acc_amp[idx] / sample_count;
	mov	dptr,#_avg_amp_idx_65536_175
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
	Smain$avg_amp$163 ==.
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
	Smain$avg_amp$164 ==.
	Smain$avg_amp$165 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:481: return cur_amp[idx];
	mov	dptr,#_avg_amp_idx_65536_175
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
	Smain$avg_amp$166 ==.
	Smain$avg_amp$167 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:483: }
	Smain$avg_amp$168 ==.
	XG$avg_amp$0$0 ==.
	mov	dpl,r6
	mov	dph,a
00104$:
	ret
	Smain$avg_amp$169 ==.
;------------------------------------------------------------
;Allocation info for local variables in function 'target_amp'
;------------------------------------------------------------
;idx                       Allocated with name '_target_amp_PARM_2'
;mode                      Allocated with name '_target_amp_mode_65536_179'
;m                         Allocated with name '_target_amp_m_196608_183'
;a                         Allocated with name '_target_amp_a_196608_183'
;------------------------------------------------------------
	Smain$target_amp$170 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:485: uint8_t target_amp( uint8_t mode, uint8_t idx ) {
;	-----------------------------------------
;	 function target_amp
;	-----------------------------------------
_target_amp:
	Smain$target_amp$171 ==.
	mov	a,dpl
	mov	dptr,#_target_amp_mode_65536_179
	movx	@dptr,a
	Smain$target_amp$172 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:486: if( temp_controlling[mode] && cur_temp > MAX_TEMP ) {
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
	Smain$target_amp$173 ==.
	Smain$target_amp$174 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:487: if( cur_temp > ABS_MAX_TEMP ) {
	clr	c
	mov	a,#0x16
	subb	a,r3
	mov	a,#0x0d
	subb	a,r4
	jnc	00102$
	Smain$target_amp$175 ==.
	Smain$target_amp$176 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:488: return max_amp[mode][idx] >> 1;
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
	Smain$target_amp$177 ==.
00102$:
	Smain$target_amp$178 ==.
	Smain$target_amp$179 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:490: uint32_t m = max_amp[mode][idx];
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
	Smain$target_amp$180 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:491: uint32_t a = m * (ABS_MAX_TEMP - cur_temp) / (ABS_MAX_TEMP - MAX_TEMP);
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
	Smain$target_amp$181 ==.
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
	Smain$target_amp$182 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:492: return (m >> 1) + (a >> 2) + (a >> 4);
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
	Smain$target_amp$183 ==.
	Smain$target_amp$184 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:495: return max_amp[mode][idx];
	mov	dptr,#_target_amp_mode_65536_179
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
	Smain$target_amp$185 ==.
	Smain$target_amp$186 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:497: }
	Smain$target_amp$187 ==.
	XG$target_amp$0$0 ==.
	mov	dpl,a
00108$:
	ret
	Smain$target_amp$188 ==.
;------------------------------------------------------------
;Allocation info for local variables in function 'changeMode'
;------------------------------------------------------------
;new_mode                  Allocated with name '_changeMode_new_mode_65536_185'
;i                         Allocated with name '_changeMode_i_131072_187'
;target                    Allocated with name '_changeMode_target_196608_188'
;i                         Allocated with name '_changeMode_i_131072_192'
;i                         Allocated with name '_changeMode_i_196608_195'
;------------------------------------------------------------
	Smain$changeMode$189 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:510: void changeMode(uint8_t new_mode)
;	-----------------------------------------
;	 function changeMode
;	-----------------------------------------
_changeMode:
	Smain$changeMode$190 ==.
	mov	a,dpl
	mov	dptr,#_changeMode_new_mode_65536_185
	movx	@dptr,a
	Smain$changeMode$191 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:512: if( new_mode == light_mode ) return;
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_light_mode
	movx	a,@dptr
	mov	r6,a
	mov	a,r7
	cjne	a,ar6,00102$
	ljmp	00134$
00102$:
	Smain$changeMode$192 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:513: if( new_mode > LIGHT_MODE_MAX ) return;
	mov	a,r7
	add	a,#0xff - 0x09
	jnc	00104$
	ljmp	00134$
00104$:
	Smain$changeMode$193 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:514: if( next_mode[new_mode] == 0 ) return;
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
	Smain$changeMode$194 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:516: for( int i = 0; i < NUM_LEDS; i++ ) {
00144$:
	Smain$changeMode$195 ==.
	Smain$changeMode$196 ==.
	Smain$changeMode$197 ==.
	Smain$changeMode$197 ==.
	Smain$changeMode$198 ==.
	Smain$changeMode$198 ==.
	Smain$changeMode$199 ==.
	mov	r5,#0x00
	mov	r6,#0x00
	Smain$changeMode$200 ==.
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
	Smain$changeMode$201 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:517: int16_t target = target_amp(new_mode, i);
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
	Smain$changeMode$202 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:518: if( target == 0 && pwm[i] > 0 ) { // 켜져있는 상태에서 끄고자할 때
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
	Smain$changeMode$203 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:519: light_control_mode[i] = MODE_CHANGING_OFF;
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
	Smain$changeMode$204 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:520: } else if( target > avg_amp(i) ) {
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
	Smain$changeMode$205 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:521: light_control_mode[i] = MODE_CHANGING_UP;
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
	Smain$changeMode$206 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:522: } else if( target < avg_amp(i) ) {
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
	Smain$changeMode$207 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:523: light_control_mode[i] = MODE_CHANGING_DOWN;
	mov	a,r5
	add	a,#_light_control_mode
	mov	dpl,a
	mov	a,r6
	addc	a,#(_light_control_mode >> 8)
	mov	dph,a
	mov	a,#0x03
	movx	@dptr,a
00127$:
	Smain$changeMode$208 ==.
	Smain$changeMode$209 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:516: for( int i = 0; i < NUM_LEDS; i++ ) {
	inc	r5
	cjne	r5,#0x00,00216$
	inc	r6
00216$:
	ljmp	00126$
00116$:
	Smain$changeMode$210 ==.
	Smain$changeMode$211 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:529: init_sample();
	lcall	_init_sample
	Smain$changeMode$212 ==.
	Smain$changeMode$213 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:530: for( int i = 0; i < NUM_LEDS; i++ ) {
	Smain$changeMode$214 ==.
	mov	r6,#0x00
	mov	r7,#0x00
	Smain$changeMode$215 ==.
00129$:
	clr	c
	mov	a,r6
	subb	a,#0x02
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00117$
	Smain$changeMode$216 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:531: good_amp_count[i] = 0;
	mov	a,r6
	add	a,#_good_amp_count
	mov	dpl,a
	mov	a,r7
	addc	a,#(_good_amp_count >> 8)
	mov	dph,a
	clr	a
	movx	@dptr,a
	Smain$changeMode$217 ==.
	Smain$changeMode$218 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:530: for( int i = 0; i < NUM_LEDS; i++ ) {
	inc	r6
	cjne	r6,#0x00,00129$
	inc	r7
	sjmp	00129$
00117$:
	Smain$changeMode$219 ==.
	Smain$changeMode$220 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:534: if( light_mode != LIGHT_OFF && new_mode != LIGHT_OFF ) {
	mov	dptr,#_light_mode
	movx	a,@dptr
	jz	00123$
	mov	dptr,#_changeMode_new_mode_65536_185
	movx	a,@dptr
	mov	r7,a
	movx	a,@dptr
	jz	00123$
	Smain$changeMode$221 ==.
	Smain$changeMode$222 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:535: for( int i = 0; i < NUM_LEDS; i++ ) {
	Smain$changeMode$223 ==.
	Smain$changeMode$223 ==.
	mov	a,r7
	mov	b,#0x02
	mul	ab
	mov	r6,a
	mov	r7,b
	Smain$changeMode$224 ==.
	mov	r4,#0x00
	mov	r5,#0x00
	Smain$changeMode$225 ==.
00132$:
	clr	c
	mov	a,r4
	subb	a,#0x02
	mov	a,r5
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00123$
	Smain$changeMode$226 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:536: if( max_amp[light_mode][i] == 0 && max_amp[new_mode][i] > 0 ) {
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
	Smain$changeMode$227 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:537: pwm[i] = MIN_PWM_ON;
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
	Smain$changeMode$228 ==.
	Smain$changeMode$229 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:535: for( int i = 0; i < NUM_LEDS; i++ ) {
	inc	r4
	Smain$changeMode$230 ==.
	cjne	r4,#0x00,00132$
	inc	r5
	sjmp	00132$
00123$:
	Smain$changeMode$231 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:541: light_mode = new_mode;
	mov	dptr,#_changeMode_new_mode_65536_185
	movx	a,@dptr
	mov	dptr,#_light_mode
	movx	@dptr,a
00134$:
	Smain$changeMode$232 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:545: }
	Smain$changeMode$233 ==.
	XG$changeMode$0$0 ==.
	ret
	Smain$changeMode$234 ==.
;------------------------------------------------------------
;Allocation info for local variables in function 'toNextMode'
;------------------------------------------------------------
	Smain$toNextMode$235 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:550: void toNextMode(void)
;	-----------------------------------------
;	 function toNextMode
;	-----------------------------------------
_toNextMode:
	Smain$toNextMode$236 ==.
	Smain$toNextMode$237 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:552: changeMode(next_mode[light_mode]);
	mov	dptr,#_light_mode
	movx	a,@dptr
	mov	dptr,#_next_mode
	movc	a,@a+dptr
	mov	dpl,a
	lcall	_changeMode
	Smain$toNextMode$238 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:553: }
	Smain$toNextMode$239 ==.
	XG$toNextMode$0$0 ==.
	ret
	Smain$toNextMode$240 ==.
;------------------------------------------------------------
;Allocation info for local variables in function 'process_uart'
;------------------------------------------------------------
;ch                        Allocated with name '_process_uart_ch_131072_203'
;------------------------------------------------------------
	Smain$process_uart$241 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:556: bool process_uart(void)
;	-----------------------------------------
;	 function process_uart
;	-----------------------------------------
_process_uart:
	Smain$process_uart$242 ==.
	Smain$process_uart$243 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:558: if( uart_flag > 0) {
	mov	dptr,#_uart_flag
	movx	a,@dptr
	mov	r7,a
	clr	c
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00146$
	Smain$process_uart$244 ==.
	Smain$process_uart$245 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:559: uart_flag = -1;
	mov	dptr,#_uart_flag
	mov	a,#0xff
	movx	@dptr,a
	Smain$process_uart$246 ==.
	Smain$process_uart$247 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:562: while( uart1_next_idx != uart1_read_idx ) {
00146$:
	Smain$process_uart$248 ==.
	Smain$process_uart$249 ==.
	Smain$process_uart$250 ==.
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
	Smain$process_uart$251 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:563: uint8_t ch = uart1_rx_buffer[uart1_read_idx];
	mov	a,r6
	add	a,#_uart1_rx_buffer
	mov	dpl,a
	clr	a
	addc	a,#(_uart1_rx_buffer >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	dptr,#_process_uart_ch_131072_203
	movx	@dptr,a
	Smain$process_uart$252 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:564: uart1_read_idx = (uart1_read_idx + 1) % UART_BUFFER_LENGTH;
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
	Smain$process_uart$253 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:565: uart_counter = 0;
	mov	dptr,#_uart_counter
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	Smain$process_uart$254 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:568: switch( ch ) {
	mov	dptr,#_process_uart_ch_131072_203
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x0a,00218$
	sjmp	00103$
00218$:
	cjne	r7,#0x30,00219$
	sjmp	00108$
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
	Smain$process_uart$255 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:569: case '\n':
00103$:
	Smain$process_uart$256 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:570: uart_rx_state = UART_INIT;
	mov	dptr,#_uart_rx_state
	clr	a
	movx	@dptr,a
	Smain$process_uart$257 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:572: break;
	ljmp	00126$
	Smain$process_uart$258 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:573: case 'a':
00104$:
	Smain$process_uart$259 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:574: uart_rx_state = UART_POWER;
	mov	dptr,#_uart_rx_state
	mov	a,#0x01
	movx	@dptr,a
	Smain$process_uart$260 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:575: break;
	ljmp	00126$
	Smain$process_uart$261 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:576: case 'i':
00105$:
	Smain$process_uart$262 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:577: uart_rx_state = UART_INTL;
	mov	dptr,#_uart_rx_state
	mov	a,#0x03
	movx	@dptr,a
	Smain$process_uart$263 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:578: break;
	ljmp	00126$
	Smain$process_uart$264 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:579: case 's':
00106$:
	Smain$process_uart$265 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:580: uart_rx_state = UART_GERMAN;
	mov	dptr,#_uart_rx_state
	mov	a,#0x02
	movx	@dptr,a
	Smain$process_uart$266 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:581: break;
	ljmp	00126$
	Smain$process_uart$267 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:582: case 'u':
00107$:
	Smain$process_uart$268 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:583: is_uart_mode = true;
	mov	dptr,#_is_uart_mode
	mov	a,#0x01
	movx	@dptr,a
	Smain$process_uart$269 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:584: return true;
	mov	dpl,#0x01
	Smain$process_uart$270 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:585: case '0':
	sjmp	00129$
00108$:
	Smain$process_uart$271 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:586: if( uart_rx_state == UART_POWER )
	mov	dptr,#_uart_rx_state
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00231$
	sjmp	00232$
00231$:
	ljmp	00126$
00232$:
	Smain$process_uart$272 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:587: changeMode(next_mode[LIGHT_OFF]);
	mov	dptr,#_next_mode
	clr	a
	movc	a,@a+dptr
	mov	dpl,a
	lcall	_changeMode
	Smain$process_uart$273 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:588: break;
	ljmp	00126$
	Smain$process_uart$274 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:589: case '9':
00111$:
	Smain$process_uart$275 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:590: if( uart_rx_state == UART_POWER )
	mov	dptr,#_uart_rx_state
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00233$
	sjmp	00234$
00233$:
	ljmp	00126$
00234$:
	Smain$process_uart$276 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:591: changeMode(LIGHT_OFF);
	mov	dpl,#0x00
	lcall	_changeMode
	Smain$process_uart$277 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:592: break;
	ljmp	00126$
	Smain$process_uart$278 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:598: case '6':
00119$:
	Smain$process_uart$279 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:599: lamp_state = UART_INIT;
	mov	dptr,#_lamp_state
	clr	a
	movx	@dptr,a
	Smain$process_uart$280 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:600: switch( uart_rx_state ) {
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
	Smain$process_uart$281 ==.
	Smain$process_uart$282 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:602: changeMode(ch - '0');
	mov	dptr,#_process_uart_ch_131072_203
	movx	a,@dptr
	add	a,#0xd0
	mov	dpl,a
	lcall	_changeMode
	Smain$process_uart$283 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:603: break;
	ljmp	00126$
	Smain$process_uart$284 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:604: case UART_GERMAN:
00121$:
	Smain$process_uart$285 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:605: if(ch < '4') {
	mov	dptr,#_process_uart_ch_131072_203
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x34,00238$
00238$:
	jc	00239$
	ljmp	00126$
00239$:
	Smain$process_uart$286 ==.
	Smain$process_uart$287 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:606: changeMode(ch - '0' + 6);
	mov	a,#0xd6
	add	a,r7
	mov	dpl,a
	lcall	_changeMode
	Smain$process_uart$288 ==.
	Smain$process_uart$289 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:610: }
	ljmp	00126$
00128$:
	Smain$process_uart$290 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:613: return false;
	mov	dpl,#0x00
00129$:
	Smain$process_uart$291 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:614: }
	Smain$process_uart$292 ==.
	XG$process_uart$0$0 ==.
	ret
	Smain$process_uart$293 ==.
;------------------------------------------------------------
;Allocation info for local variables in function 'process_button'
;------------------------------------------------------------
	Smain$process_button$294 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:616: void process_button(void)
;	-----------------------------------------
;	 function process_button
;	-----------------------------------------
_process_button:
	Smain$process_button$295 ==.
	Smain$process_button$296 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:618: if( BUTTON_PIN == 0 ) {
	jb	_P02,00116$
	Smain$process_button$297 ==.
	Smain$process_button$298 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:620: button_pressed ++;
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
	Smain$process_button$299 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:621: button_unpressed = 0;
	mov	dptr,#_button_unpressed
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	Smain$process_button$300 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:623: if( button_pressed == LONG_PRESS ) { // 길게 눌려졌다면
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
	Smain$process_button$301 ==.
	Smain$process_button$302 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:625: if( light_mode != LIGHT_OFF ) { // 전원 버튼의 역할을 한다.
	mov	dptr,#_light_mode
	movx	a,@dptr
	jz	00102$
	Smain$process_button$303 ==.
	Smain$process_button$304 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:626: changeMode(LIGHT_OFF);
	mov	dpl,#0x00
	lcall	_changeMode
	Smain$process_button$305 ==.
	ljmp	00118$
00102$:
	Smain$process_button$306 ==.
	Smain$process_button$307 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:628: changeMode(next_mode[LIGHT_OFF]);
	mov	dptr,#_next_mode
	clr	a
	movc	a,@a+dptr
	mov	dpl,a
	lcall	_changeMode
	Smain$process_button$308 ==.
	ljmp	00118$
00116$:
	Smain$process_button$309 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:631: } else if( button_pressed ) {
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
	jz	00118$
	Smain$process_button$310 ==.
	Smain$process_button$311 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:633: button_unpressed ++;
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
	Smain$process_button$312 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:634: if( button_unpressed > 1 ) { // 두번이상 안눌려졌다고 판단했는데
	mov	dptr,#_button_unpressed
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
	mov	a,#0x01
	subb	a,r0
	clr	a
	subb	a,r1
	clr	a
	subb	a,r2
	clr	a
	subb	a,r3
	jnc	00118$
	Smain$process_button$313 ==.
	Smain$process_button$314 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:635: if( button_pressed < LONG_PRESS ) { // 짧게 눌렀던 상태라면 다음상태로
	clr	c
	mov	a,r4
	subb	a,#0x90
	mov	a,r5
	subb	a,#0x01
	mov	a,r6
	subb	a,#0x00
	mov	a,r7
	subb	a,#0x00
	jnc	00110$
	Smain$process_button$315 ==.
	Smain$process_button$316 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:636: if( light_mode > 0 ) {
	mov	dptr,#_light_mode
	movx	a,@dptr
	jz	00110$
	Smain$process_button$317 ==.
	Smain$process_button$318 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:639: toNextMode();
	lcall	_toNextMode
	Smain$process_button$319 ==.
	Smain$process_button$320 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:643: LS_LOGN(button_pressed);
00110$:
	Smain$process_button$321 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:645: button_pressed = button_unpressed = 0;
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
	Smain$process_button$322 ==.
00118$:
	Smain$process_button$323 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:648: }
	Smain$process_button$324 ==.
	XG$process_button$0$0 ==.
	ret
	Smain$process_button$325 ==.
;------------------------------------------------------------
;Allocation info for local variables in function 'stop_leds'
;------------------------------------------------------------
	Smain$stop_leds$326 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:651: void stop_leds(void)
;	-----------------------------------------
;	 function stop_leds
;	-----------------------------------------
_stop_leds:
	Smain$stop_leds$327 ==.
	Smain$stop_leds$328 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:654: clr_PWMCON0_PWMRUN;
;	assignBit
	clr	_PWMRUN
	Smain$stop_leds$329 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:655: set_SFRS_SFRPAGE;
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
	Smain$stop_leds$330 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:657: PWM2L = 0;
	mov	_PWM2L,#0x00
	Smain$stop_leds$331 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:658: PWM2H = 0;
	mov	_PWM2H,#0x00
	Smain$stop_leds$332 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:659: PWM4L = 0;
	mov	_PWM4L,#0x00
	Smain$stop_leds$333 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:660: PWM4H = 0;
	mov	_PWM4H,#0x00
	Smain$stop_leds$334 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:662: clr_SFRS_SFRPAGE;
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
	Smain$stop_leds$335 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:663: set_PWMCON0_PWMRUN;
;	assignBit
	setb	_PWMRUN
	Smain$stop_leds$336 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:664: }
	Smain$stop_leds$337 ==.
	XG$stop_leds$0$0 ==.
	ret
	Smain$stop_leds$338 ==.
;------------------------------------------------------------
;Allocation info for local variables in function 'activate_leds'
;------------------------------------------------------------
	Smain$activate_leds$339 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:666: void activate_leds(void)
;	-----------------------------------------
;	 function activate_leds
;	-----------------------------------------
_activate_leds:
	Smain$activate_leds$340 ==.
	Smain$activate_leds$341 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:668: clr_PWMCON0_PWMRUN;
;	assignBit
	clr	_PWMRUN
	Smain$activate_leds$342 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:669: set_SFRS_SFRPAGE;
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
	Smain$activate_leds$343 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:671: PWM2L = pwm[0];
	mov	dptr,#_pwm
	movx	a,@dptr
	mov	_PWM2L,a
	Smain$activate_leds$344 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:672: PWM4L = pwm[1];
	mov	dptr,#(_pwm + 0x0002)
	movx	a,@dptr
	mov	_PWM4L,a
	Smain$activate_leds$345 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:674: clr_SFRS_SFRPAGE;
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
	Smain$activate_leds$346 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:675: set_PWMCON0_PWMRUN;
;	assignBit
	setb	_PWMRUN
	Smain$activate_leds$347 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:676: }
	Smain$activate_leds$348 ==.
	XG$activate_leds$0$0 ==.
	ret
	Smain$activate_leds$349 ==.
;------------------------------------------------------------
;Allocation info for local variables in function 'mode_changing_control'
;------------------------------------------------------------
;light_changing            Allocated with name '_mode_changing_control_light_changing_65536_223'
;i                         Allocated with name '_mode_changing_control_i_131072_224'
;------------------------------------------------------------
	Smain$mode_changing_control$350 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:683: bool mode_changing_control( void )
;	-----------------------------------------
;	 function mode_changing_control
;	-----------------------------------------
_mode_changing_control:
	Smain$mode_changing_control$351 ==.
	Smain$mode_changing_control$352 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:685: bool light_changing = false;
	mov	dptr,#_mode_changing_control_light_changing_65536_223
	clr	a
	movx	@dptr,a
	Smain$mode_changing_control$353 ==.
	Smain$mode_changing_control$354 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:687: for( int i = 0; i < NUM_LEDS; i++ ) {
	Smain$mode_changing_control$355 ==.
	Smain$mode_changing_control$356 ==.
	Smain$mode_changing_control$357 ==.
	Smain$mode_changing_control$358 ==.
	Smain$mode_changing_control$358 ==.
	Smain$mode_changing_control$359 ==.
	Smain$mode_changing_control$360 ==.
	Smain$mode_changing_control$360 ==.
	Smain$mode_changing_control$361 ==.
	mov	r6,#0x00
	mov	r7,#0x00
	Smain$mode_changing_control$362 ==.
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
	Smain$mode_changing_control$363 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:688: switch( light_control_mode[i] ) {
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
	Smain$mode_changing_control$364 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:689: case MODE_CHANGING_OFF:
00101$:
	Smain$mode_changing_control$365 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:690: if( pwm[i] > 0) {
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
	Smain$mode_changing_control$366 ==.
	Smain$mode_changing_control$367 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:691: light_changing = true;
	push	ar6
	push	ar7
	Smain$mode_changing_control$368 ==.
	mov	dptr,#_mode_changing_control_light_changing_65536_223
	mov	a,#0x01
	movx	@dptr,a
	Smain$mode_changing_control$369 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:692: pwm[i] --;
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
	Smain$mode_changing_control$370 ==.
	pop	ar7
	pop	ar6
	ljmp	00133$
00106$:
	Smain$mode_changing_control$371 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:693: } else if( pwm[i] == 0 ){ // pwm은 unsigned이므로 0보다 작을수는 없음
	mov	a,r0
	orl	a,r1
	jnz	00103$
	Smain$mode_changing_control$372 ==.
	Smain$mode_changing_control$373 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:694: light_control_mode[i] = MODE_STABLE;
	mov	dpl,r4
	mov	dph,r5
	clr	a
	movx	@dptr,a
	Smain$mode_changing_control$374 ==.
	ljmp	00133$
00103$:
	Smain$mode_changing_control$375 ==.
	Smain$mode_changing_control$376 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:696: light_changing = true;
	mov	dptr,#_mode_changing_control_light_changing_65536_223
	mov	a,#0x01
	movx	@dptr,a
	Smain$mode_changing_control$377 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:697: pwm[i] = 0;
	mov	dpl,r2
	mov	dph,r3
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	Smain$mode_changing_control$378 ==.
	Smain$mode_changing_control$379 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:699: break;
	ljmp	00133$
	Smain$mode_changing_control$380 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:700: case MODE_CHANGING_UP:
00108$:
	Smain$mode_changing_control$381 ==.
	Smain$mode_changing_control$382 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:701: if( cur_amp[i] < max_amp[light_mode][i] ) {
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
	Smain$mode_changing_control$383 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:702: good_amp_count[i] = 0;
	mov	a,r6
	add	a,#_good_amp_count
	mov	dpl,a
	mov	a,r7
	addc	a,#(_good_amp_count >> 8)
	mov	dph,a
	clr	a
	movx	@dptr,a
	Smain$mode_changing_control$384 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:703: light_changing = true;
	mov	dptr,#_mode_changing_control_light_changing_65536_223
	inc	a
	movx	@dptr,a
	Smain$mode_changing_control$385 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:704: if( pwm[i] < 190 ) {
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
	Smain$mode_changing_control$386 ==.
	Smain$mode_changing_control$387 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:705: pwm[i] ++;
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
	Smain$mode_changing_control$388 ==.
	ljmp	00133$
00110$:
	Smain$mode_changing_control$389 ==.
	Smain$mode_changing_control$390 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:707: pwm[i] = 190;
	mov	dpl,r2
	mov	dph,r3
	mov	a,#0xbe
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	Smain$mode_changing_control$391 ==.
	ljmp	00133$
00115$:
	Smain$mode_changing_control$392 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:710: good_amp_count[i]++;
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
	Smain$mode_changing_control$393 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:711: if( good_amp_count[i] > 10 ) {
	mov	a,r1
	add	a,#0xff - 0x0a
	jc	00202$
	ljmp	00133$
00202$:
	Smain$mode_changing_control$394 ==.
	Smain$mode_changing_control$395 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:712: light_control_mode[i] = MODE_STABLE;
	mov	dpl,r4
	mov	dph,r5
	clr	a
	movx	@dptr,a
	Smain$mode_changing_control$396 ==.
	Smain$mode_changing_control$397 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:715: break;
	ljmp	00133$
	Smain$mode_changing_control$398 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:716: case MODE_CHANGING_DOWN:
00117$:
	Smain$mode_changing_control$399 ==.
	Smain$mode_changing_control$400 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:717: if( cur_amp[i] > max_amp[light_mode][i] ) {
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
	Smain$mode_changing_control$401 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:718: good_amp_count[i] = 0;
	mov	a,r6
	add	a,#_good_amp_count
	mov	dpl,a
	mov	a,r7
	addc	a,#(_good_amp_count >> 8)
	mov	dph,a
	clr	a
	movx	@dptr,a
	Smain$mode_changing_control$402 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:719: light_changing = true;
	mov	dptr,#_mode_changing_control_light_changing_65536_223
	inc	a
	movx	@dptr,a
	Smain$mode_changing_control$403 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:720: if( pwm[i] <= 0) {
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
	Smain$mode_changing_control$404 ==.
	Smain$mode_changing_control$405 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:721: pwm[i] = 0;
	mov	dpl,r2
	mov	dph,r3
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	Smain$mode_changing_control$406 ==.
	sjmp	00133$
00122$:
	Smain$mode_changing_control$407 ==.
	Smain$mode_changing_control$408 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:722: } else if( pwm[i] > 190 ) {
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
	Smain$mode_changing_control$409 ==.
	Smain$mode_changing_control$410 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:723: pwm[i] = 190;
	mov	dpl,r2
	mov	dph,r3
	mov	a,#0xbe
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	Smain$mode_changing_control$411 ==.
	sjmp	00133$
00119$:
	Smain$mode_changing_control$412 ==.
	Smain$mode_changing_control$413 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:725: pwm[i] --;
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
	Smain$mode_changing_control$414 ==.
	sjmp	00133$
00127$:
	Smain$mode_changing_control$415 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:728: good_amp_count[i]++;
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
	Smain$mode_changing_control$416 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:729: if( good_amp_count[i] > 2 ) {
	mov	a,r1
	add	a,#0xff - 0x02
	jnc	00133$
	Smain$mode_changing_control$417 ==.
	Smain$mode_changing_control$418 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:730: light_control_mode[i] = MODE_STABLE;
	mov	dpl,r4
	mov	dph,r5
	clr	a
	movx	@dptr,a
	Smain$mode_changing_control$419 ==.
	Smain$mode_changing_control$420 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:734: }
00133$:
	Smain$mode_changing_control$421 ==.
	Smain$mode_changing_control$422 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:687: for( int i = 0; i < NUM_LEDS; i++ ) {
	inc	r6
	cjne	r6,#0x00,00208$
	inc	r7
00208$:
	ljmp	00132$
00130$:
	Smain$mode_changing_control$423 ==.
	Smain$mode_changing_control$424 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:736: return light_changing;
	mov	dptr,#_mode_changing_control_light_changing_65536_223
	movx	a,@dptr
	Smain$mode_changing_control$425 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:737: }
	Smain$mode_changing_control$426 ==.
	XG$mode_changing_control$0$0 ==.
	mov	dpl,a
	ret
	Smain$mode_changing_control$427 ==.
;------------------------------------------------------------
;Allocation info for local variables in function 'is_stable'
;------------------------------------------------------------
;i                         Allocated with name '_is_stable_i_131072_243'
;------------------------------------------------------------
	Smain$is_stable$428 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:739: bool is_stable( void ) {
;	-----------------------------------------
;	 function is_stable
;	-----------------------------------------
_is_stable:
	Smain$is_stable$429 ==.
	Smain$is_stable$430 ==.
	Smain$is_stable$431 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:740: for( int i = 0; i < NUM_LEDS; i++ ) {
	Smain$is_stable$432 ==.
	mov	r6,#0x00
	mov	r7,#0x00
	Smain$is_stable$433 ==.
00105$:
	clr	c
	mov	a,r6
	subb	a,#0x02
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00103$
	Smain$is_stable$434 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:741: if( light_control_mode[i] != MODE_STABLE ) return false;
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
	Smain$is_stable$435 ==.
	Smain$is_stable$436 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:740: for( int i = 0; i < NUM_LEDS; i++ ) {
	inc	r6
	cjne	r6,#0x00,00105$
	inc	r7
	sjmp	00105$
00103$:
	Smain$is_stable$437 ==.
	Smain$is_stable$438 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:744: return true;
	mov	dpl,#0x01
00107$:
	Smain$is_stable$439 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:745: }
	Smain$is_stable$440 ==.
	XG$is_stable$0$0 ==.
	ret
	Smain$is_stable$441 ==.
;------------------------------------------------------------
;Allocation info for local variables in function 'mode_stable_control'
;------------------------------------------------------------
;light_changing            Allocated with name '_mode_stable_control_light_changing_65536_246'
;i                         Allocated with name '_mode_stable_control_i_131072_247'
;t_amp                     Allocated with name '_mode_stable_control_t_amp_196608_248'
;amp                       Allocated with name '_mode_stable_control_amp_196609_249'
;------------------------------------------------------------
	Smain$mode_stable_control$442 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:747: bool mode_stable_control( void )
;	-----------------------------------------
;	 function mode_stable_control
;	-----------------------------------------
_mode_stable_control:
	Smain$mode_stable_control$443 ==.
	Smain$mode_stable_control$444 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:749: bool light_changing = false;
	mov	dptr,#_mode_stable_control_light_changing_65536_246
	clr	a
	movx	@dptr,a
	Smain$mode_stable_control$445 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:751: cur_temp = acc_temp / sample_count;
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
	Smain$mode_stable_control$446 ==.
	Smain$mode_stable_control$447 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:753: for( int i = 0; i < NUM_LEDS; i++ ) {
	Smain$mode_stable_control$448 ==.
	Smain$mode_stable_control$448 ==.
	Smain$mode_stable_control$449 ==.
	mov	r6,#0x00
	mov	r7,#0x00
	Smain$mode_stable_control$450 ==.
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
	Smain$mode_stable_control$451 ==.
	Smain$mode_stable_control$452 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:754: int16_t t_amp = target_amp(light_mode, i);
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
	Smain$mode_stable_control$453 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:755: if( t_amp <= 0 ) continue;
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
	Smain$mode_stable_control$454 ==.
	Smain$mode_stable_control$455 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:757: uint16_t amp = avg_amp(i);
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
	Smain$mode_stable_control$456 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:758: if( amp < t_amp - AMP_MARGIN ) {
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
	Smain$mode_stable_control$457 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:759: pwm[i] ++;
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
	Smain$mode_stable_control$458 ==.
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
	Smain$mode_stable_control$459 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:760: light_changing = true;
	mov	dptr,#_mode_stable_control_light_changing_65536_246
	mov	a,#0x01
	movx	@dptr,a
	pop	ar7
	pop	ar6
	sjmp	00108$
00106$:
	Smain$mode_stable_control$460 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:761: } else if( amp > t_amp + AMP_MARGIN ) {
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
	Smain$mode_stable_control$461 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:762: pwm[i] --;
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
	Smain$mode_stable_control$462 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:763: light_changing = true;
	mov	dptr,#_mode_stable_control_light_changing_65536_246
	mov	a,#0x01
	movx	@dptr,a
00108$:
	Smain$mode_stable_control$463 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:753: for( int i = 0; i < NUM_LEDS; i++ ) {
	inc	r6
	cjne	r6,#0x00,00141$
	inc	r7
00141$:
	ljmp	00111$
00109$:
	Smain$mode_stable_control$464 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:766: return light_changing;
	mov	dptr,#_mode_stable_control_light_changing_65536_246
	movx	a,@dptr
	Smain$mode_stable_control$465 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:767: }
	Smain$mode_stable_control$466 ==.
	XG$mode_stable_control$0$0 ==.
	mov	dpl,a
	ret
	Smain$mode_stable_control$467 ==.
;------------------------------------------------------------
;Allocation info for local variables in function 'control_loop'
;------------------------------------------------------------
;sloc0                     Allocated with name '_control_loop_sloc0_1_0'
;light_changing            Allocated with name '_control_loop_light_changing_65536_253'
;i                         Allocated with name '_control_loop_i_196608_255'
;------------------------------------------------------------
	Smain$control_loop$468 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:769: void control_loop( void )
;	-----------------------------------------
;	 function control_loop
;	-----------------------------------------
_control_loop:
	Smain$control_loop$469 ==.
	Smain$control_loop$470 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:773: sample_amps();
	lcall	_sample_amps
	Smain$control_loop$471 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:775: light_changing = mode_changing_control();
	lcall	_mode_changing_control
	mov	a,dpl
	mov	dptr,#_control_loop_light_changing_65536_253
	movx	@dptr,a
	Smain$control_loop$472 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:777: if( is_stable() ) {
	lcall	_is_stable
	mov	a,dpl
	jnz	00159$
	ljmp	00114$
00159$:
	Smain$control_loop$473 ==.
	Smain$control_loop$474 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:778: sample_count++;
	mov	dptr,#_sample_count
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	Smain$control_loop$475 ==.
	Smain$control_loop$476 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:780: for( int i = 0; i < NUM_LEDS; i++ )
	Smain$control_loop$477 ==.
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
	Smain$control_loop$478 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:781: acc_amp[i] += cur_amp[i];
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
	Smain$control_loop$479 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:780: for( int i = 0; i < NUM_LEDS; i++ )
	inc	r6
	cjne	r6,#0x00,00118$
	inc	r7
	sjmp	00118$
00101$:
	Smain$control_loop$480 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:783: sample_temperature();
	lcall	_sample_temperature
	Smain$control_loop$481 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:785: if( flashing[light_mode] ) {
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
	Smain$control_loop$482 ==.
	Smain$control_loop$483 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:786: if( sample_count == 1 ) {
	mov	dptr,#_sample_count
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00105$
	Smain$control_loop$484 ==.
	Smain$control_loop$485 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:787: stop_leds();
	lcall	_stop_leds
	Smain$control_loop$486 ==.
	sjmp	00108$
00105$:
	Smain$control_loop$487 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:788: } else if( sample_count == FLASHING_ON_COUNT ) {
	cjne	r7,#0x87,00108$
	Smain$control_loop$488 ==.
	Smain$control_loop$489 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:789: activate_leds();
	lcall	_activate_leds
	Smain$control_loop$490 ==.
00108$:
	Smain$control_loop$491 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:793: if( sample_count >= MAX_SAMPLE_COUNT ) {
	mov	dptr,#_sample_count
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x96,00167$
00167$:
	jc	00114$
	Smain$control_loop$492 ==.
	Smain$control_loop$493 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:794: if( !flashing[light_mode] ) {
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
	Smain$control_loop$494 ==.
	Smain$control_loop$495 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:795: light_changing = mode_stable_control();
	lcall	_mode_stable_control
	mov	a,dpl
	mov	dptr,#_control_loop_light_changing_65536_253
	movx	@dptr,a
	Smain$control_loop$496 ==.
00110$:
	Smain$control_loop$497 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:797: init_sample();
	lcall	_init_sample
	Smain$control_loop$498 ==.
00114$:
	Smain$control_loop$499 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:801: if( light_changing ) {
	mov	dptr,#_control_loop_light_changing_65536_253
	movx	a,@dptr
	jz	00120$
	Smain$control_loop$500 ==.
	Smain$control_loop$501 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:802: activate_leds();
	lcall	_activate_leds
	Smain$control_loop$502 ==.
00120$:
	Smain$control_loop$503 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:805: }
	Smain$control_loop$504 ==.
	XG$control_loop$0$0 ==.
	ret
	Smain$control_loop$505 ==.
;------------------------------------------------------------
;Allocation info for local variables in function 'wdt_init'
;------------------------------------------------------------
	Smain$wdt_init$506 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:808: void wdt_init(void)
;	-----------------------------------------
;	 function wdt_init
;	-----------------------------------------
_wdt_init:
	Smain$wdt_init$507 ==.
	Smain$wdt_init$508 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:810: SFRS=0;								/* Init WDT */
	mov	_SFRS,#0x00
	Smain$wdt_init$509 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:811: BIT_TMP=EA;
;	assignBit
	mov	c,_EA
	mov	_BIT_TMP,c
	Smain$wdt_init$510 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:812: EA=0;
;	assignBit
	clr	_EA
	Smain$wdt_init$511 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:814: TA=0xAA;
	mov	_TA,#0xaa
	Smain$wdt_init$512 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:815: TA=0x55;
	mov	_TA,#0x55
	Smain$wdt_init$513 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:817: WDCON&=0xF8;
	anl	_WDCON,#0xf8
	Smain$wdt_init$514 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:818: WDCON|= 0x97; // 1001 0111
	orl	_WDCON,#0x97
	Smain$wdt_init$515 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:824: EA = BIT_TMP;
;	assignBit
	mov	c,_BIT_TMP
	mov	_EA,c
	Smain$wdt_init$516 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:840: EIE|=0x10;
	orl	_EIE,#0x10
	Smain$wdt_init$517 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:841: }
	Smain$wdt_init$518 ==.
	XG$wdt_init$0$0 ==.
	ret
	Smain$wdt_init$519 ==.
;------------------------------------------------------------
;Allocation info for local variables in function 'wdt_clear'
;------------------------------------------------------------
	Smain$wdt_clear$520 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:844: void wdt_clear(void)
;	-----------------------------------------
;	 function wdt_clear
;	-----------------------------------------
_wdt_clear:
	Smain$wdt_clear$521 ==.
	Smain$wdt_clear$522 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:846: BIT_TMP=EA;							/* Clear WDT counter */
;	assignBit
	mov	c,_EA
	mov	_BIT_TMP,c
	Smain$wdt_clear$523 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:847: EA=0;
;	assignBit
	clr	_EA
	Smain$wdt_clear$524 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:849: TA=0xAA;
	mov	_TA,#0xaa
	Smain$wdt_clear$525 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:850: TA=0x55;
	mov	_TA,#0x55
	Smain$wdt_clear$526 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:852: WDCON|=0x40;
	orl	_WDCON,#0x40
	Smain$wdt_clear$527 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:853: EA=BIT_TMP;
;	assignBit
	mov	c,_BIT_TMP
	mov	_EA,c
	Smain$wdt_clear$528 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:856: }
	Smain$wdt_clear$529 ==.
	XG$wdt_clear$0$0 ==.
	ret
	Smain$wdt_clear$530 ==.
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
	Smain$main$531 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:859: void main (void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	Smain$main$532 ==.
	Smain$main$533 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:862: MODIFY_HIRC(HIRC_24);
	mov	dpl,#0x06
	lcall	_MODIFY_HIRC
	Smain$main$534 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:869: init_peripherals_but_button_n_uart();
	lcall	_init_peripherals_but_button_n_uart
	Smain$main$535 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:870: uart_interrupt_init();
	lcall	_uart_interrupt_init
	Smain$main$536 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:875: for( uart_counter = 0; uart_counter < MAX_UART_INIT_COUNTER; uart_counter++ ) {
	mov	dptr,#_uart_counter
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
00124$:
	Smain$main$537 ==.
	Smain$main$538 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:876: if( process_uart() ) break;
	lcall	_process_uart
	mov	a,dpl
	jnz	00103$
	Smain$main$539 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:877: Timer0_Delay(24000000, 1, PERIOD_UNIT);
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
	Smain$main$540 ==.
	Smain$main$541 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:875: for( uart_counter = 0; uart_counter < MAX_UART_INIT_COUNTER; uart_counter++ ) {
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
	jc	00124$
00103$:
	Smain$main$542 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:882: if( !is_uart_mode ) {
	mov	dptr,#_is_uart_mode
	movx	a,@dptr
	jnz	00105$
	Smain$main$543 ==.
	Smain$main$544 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:883: button_interrupt_init();
	lcall	_button_interrupt_init
	Smain$main$545 ==.
00105$:
	Smain$main$546 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:886: wdt_init();
	lcall	_wdt_init
	Smain$main$547 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:888: while(1)
00122$:
	Smain$main$548 ==.
	Smain$main$549 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:898: if( is_uart_mode ) {
	mov	dptr,#_is_uart_mode
	movx	a,@dptr
	jz	00109$
	Smain$main$550 ==.
	Smain$main$551 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:899: if( light_mode == LIGHT_OFF ) {
	mov	dptr,#_light_mode
	movx	a,@dptr
	jnz	00107$
	Smain$main$552 ==.
	Smain$main$553 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:900: uart_counter ++;
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
	Smain$main$554 ==.
00107$:
	Smain$main$555 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:902: process_uart();
	lcall	_process_uart
	Smain$main$556 ==.
	sjmp	00110$
00109$:
	Smain$main$557 ==.
	Smain$main$558 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:904: process_button();
	lcall	_process_button
	Smain$main$559 ==.
00110$:
	Smain$main$560 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:907: if( light_mode == LIGHT_OFF ) {
	mov	dptr,#_light_mode
	movx	a,@dptr
	jnz	00120$
	Smain$main$561 ==.
	Smain$main$562 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:908: if( (is_uart_mode && uart_counter > MAX_UART_COUNTER) || (!is_uart_mode && button_pressed < 1) ) {
	mov	dptr,#_is_uart_mode
	movx	a,@dptr
	jz	00118$
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
	mov	a,#0x88
	subb	a,r4
	mov	a,#0x13
	subb	a,r5
	clr	a
	subb	a,r6
	clr	a
	subb	a,r7
	jc	00114$
00118$:
	mov	dptr,#_is_uart_mode
	movx	a,@dptr
	jnz	00120$
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
	subb	a,#0x01
	mov	a,r5
	subb	a,#0x00
	mov	a,r6
	subb	a,#0x00
	mov	a,r7
	subb	a,#0x00
	jnc	00120$
00114$:
	Smain$main$563 ==.
	Smain$main$564 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:909: stop_leds();
	lcall	_stop_leds
	Smain$main$565 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:910: disable_ntc();
	lcall	_disable_ntc
	Smain$main$566 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:912: clr_SCON_1_TI_1;
;	assignBit
	clr	_TI_1
	Smain$main$567 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:913: clr_SCON_1_RI_1;
;	assignBit
	clr	_RI_1
	Smain$main$568 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:914: set_PCON_IDLE;
	orl	_PCON,#0x01
	Smain$main$569 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:915: CALL_NOP;
	nop;
	Smain$main$570 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:916: CALL_NOP;
	nop;
	Smain$main$571 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:917: clr_PCON_IDLE;
	anl	_PCON,#0xfe
	Smain$main$572 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:919: init_peripherals_but_button_n_uart();
	lcall	_init_peripherals_but_button_n_uart
	Smain$main$573 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:920: if( is_uart_mode ) {
	mov	dptr,#_is_uart_mode
	movx	a,@dptr
	jz	00112$
	Smain$main$574 ==.
	Smain$main$575 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:921: uart_interrupt_init();
	lcall	_uart_interrupt_init
	Smain$main$576 ==.
	sjmp	00120$
00112$:
	Smain$main$577 ==.
	Smain$main$578 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:923: button_interrupt_init();
	lcall	_button_interrupt_init
	Smain$main$579 ==.
00120$:
	Smain$main$580 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:928: control_loop();
	lcall	_control_loop
	Smain$main$581 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:930: Timer0_Delay(24000000, 1, PERIOD_UNIT);
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
	Smain$main$582 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:932: wdt_clear();
	lcall	_wdt_clear
	Smain$main$583 ==.
	ljmp	00122$
	Smain$main$584 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:934: }
	Smain$main$585 ==.
	XG$main$0$0 ==.
	ret
	Smain$main$586 ==.
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
	.sleb128	253
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
	.dw	0,(Smain$SerialPort1_ISR$19)
	.db	3
	.sleb128	291
	.db	1
	.db	9
	.dw	Smain$SerialPort1_ISR$21-Smain$SerialPort1_ISR$19
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$SerialPort1_ISR$22-Smain$SerialPort1_ISR$21
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$SerialPort1_ISR$24-Smain$SerialPort1_ISR$22
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$SerialPort1_ISR$25-Smain$SerialPort1_ISR$24
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$SerialPort1_ISR$27-Smain$SerialPort1_ISR$25
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$SerialPort1_ISR$28-Smain$SerialPort1_ISR$27
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Smain$SerialPort1_ISR$30-Smain$SerialPort1_ISR$28
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$SerialPort1_ISR$32-Smain$SerialPort1_ISR$30
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Smain$SerialPort1_ISR$33-Smain$SerialPort1_ISR$32
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Smain$SerialPort1_ISR$34-Smain$SerialPort1_ISR$33
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Smain$uart_interrupt_init$36)
	.db	3
	.sleb128	313
	.db	1
	.db	9
	.dw	Smain$uart_interrupt_init$38-Smain$uart_interrupt_init$36
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$uart_interrupt_init$39-Smain$uart_interrupt_init$38
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$uart_interrupt_init$40-Smain$uart_interrupt_init$39
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Smain$uart_interrupt_init$41-Smain$uart_interrupt_init$40
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Smain$PinInterrupt_ISR$43)
	.db	3
	.sleb128	331
	.db	1
	.db	9
	.dw	Smain$PinInterrupt_ISR$45-Smain$PinInterrupt_ISR$43
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$PinInterrupt_ISR$46-Smain$PinInterrupt_ISR$45
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$PinInterrupt_ISR$48-Smain$PinInterrupt_ISR$46
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$PinInterrupt_ISR$50-Smain$PinInterrupt_ISR$48
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Smain$PinInterrupt_ISR$51-Smain$PinInterrupt_ISR$50
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$PinInterrupt_ISR$52-Smain$PinInterrupt_ISR$51
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Smain$PinInterrupt_ISR$53-Smain$PinInterrupt_ISR$52
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Smain$button_interrupt_init$55)
	.db	3
	.sleb128	346
	.db	1
	.db	9
	.dw	Smain$button_interrupt_init$57-Smain$button_interrupt_init$55
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Smain$button_interrupt_init$58-Smain$button_interrupt_init$57
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$button_interrupt_init$59-Smain$button_interrupt_init$58
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$button_interrupt_init$60-Smain$button_interrupt_init$59
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$button_interrupt_init$61-Smain$button_interrupt_init$60
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Smain$button_interrupt_init$62-Smain$button_interrupt_init$61
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Smain$enable_ntc$64)
	.db	3
	.sleb128	357
	.db	1
	.db	9
	.dw	Smain$enable_ntc$66-Smain$enable_ntc$64
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Smain$enable_ntc$67-Smain$enable_ntc$66
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$enable_ntc$68-Smain$enable_ntc$67
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	1+Smain$enable_ntc$69-Smain$enable_ntc$68
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Smain$disable_ntc$71)
	.db	3
	.sleb128	365
	.db	1
	.db	9
	.dw	Smain$disable_ntc$73-Smain$disable_ntc$71
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Smain$disable_ntc$74-Smain$disable_ntc$73
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$disable_ntc$75-Smain$disable_ntc$74
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	1+Smain$disable_ntc$76-Smain$disable_ntc$75
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Smain$init_sample$78)
	.db	3
	.sleb128	373
	.db	1
	.db	9
	.dw	Smain$init_sample$80-Smain$init_sample$78
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$init_sample$81-Smain$init_sample$80
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$init_sample$83-Smain$init_sample$81
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$init_sample$86-Smain$init_sample$83
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$init_sample$88-Smain$init_sample$86
	.db	3
	.sleb128	-1
	.db	1
	.db	9
	.dw	Smain$init_sample$90-Smain$init_sample$88
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Smain$init_sample$91-Smain$init_sample$90
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Smain$init_sample$92-Smain$init_sample$91
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Smain$init_peripherals_but_button_n_uart$94)
	.db	3
	.sleb128	387
	.db	1
	.db	9
	.dw	Smain$init_peripherals_but_button_n_uart$96-Smain$init_peripherals_but_button_n_uart$94
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$init_peripherals_but_button_n_uart$97-Smain$init_peripherals_but_button_n_uart$96
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Smain$init_peripherals_but_button_n_uart$98-Smain$init_peripherals_but_button_n_uart$97
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$init_peripherals_but_button_n_uart$99-Smain$init_peripherals_but_button_n_uart$98
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$init_peripherals_but_button_n_uart$100-Smain$init_peripherals_but_button_n_uart$99
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Smain$init_peripherals_but_button_n_uart$101-Smain$init_peripherals_but_button_n_uart$100
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$init_peripherals_but_button_n_uart$102-Smain$init_peripherals_but_button_n_uart$101
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$init_peripherals_but_button_n_uart$103-Smain$init_peripherals_but_button_n_uart$102
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$init_peripherals_but_button_n_uart$104-Smain$init_peripherals_but_button_n_uart$103
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$init_peripherals_but_button_n_uart$105-Smain$init_peripherals_but_button_n_uart$104
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$init_peripherals_but_button_n_uart$106-Smain$init_peripherals_but_button_n_uart$105
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$init_peripherals_but_button_n_uart$107-Smain$init_peripherals_but_button_n_uart$106
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$init_peripherals_but_button_n_uart$108-Smain$init_peripherals_but_button_n_uart$107
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$init_peripherals_but_button_n_uart$109-Smain$init_peripherals_but_button_n_uart$108
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$init_peripherals_but_button_n_uart$110-Smain$init_peripherals_but_button_n_uart$109
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$init_peripherals_but_button_n_uart$111-Smain$init_peripherals_but_button_n_uart$110
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$init_peripherals_but_button_n_uart$112-Smain$init_peripherals_but_button_n_uart$111
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$init_peripherals_but_button_n_uart$113-Smain$init_peripherals_but_button_n_uart$112
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$init_peripherals_but_button_n_uart$114-Smain$init_peripherals_but_button_n_uart$113
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$init_peripherals_but_button_n_uart$115-Smain$init_peripherals_but_button_n_uart$114
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$init_peripherals_but_button_n_uart$116-Smain$init_peripherals_but_button_n_uart$115
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$init_peripherals_but_button_n_uart$117-Smain$init_peripherals_but_button_n_uart$116
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$init_peripherals_but_button_n_uart$118-Smain$init_peripherals_but_button_n_uart$117
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$init_peripherals_but_button_n_uart$119-Smain$init_peripherals_but_button_n_uart$118
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$init_peripherals_but_button_n_uart$120-Smain$init_peripherals_but_button_n_uart$119
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$init_peripherals_but_button_n_uart$121-Smain$init_peripherals_but_button_n_uart$120
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Smain$init_peripherals_but_button_n_uart$122-Smain$init_peripherals_but_button_n_uart$121
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Smain$sample_amps$124)
	.db	3
	.sleb128	431
	.db	1
	.db	9
	.dw	Smain$sample_amps$126-Smain$sample_amps$124
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Smain$sample_amps$127-Smain$sample_amps$126
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$sample_amps$128-Smain$sample_amps$127
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$sample_amps$129-Smain$sample_amps$128
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$sample_amps$130-Smain$sample_amps$129
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$sample_amps$131-Smain$sample_amps$130
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$sample_amps$132-Smain$sample_amps$131
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Smain$sample_amps$133-Smain$sample_amps$132
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$sample_amps$134-Smain$sample_amps$133
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$sample_amps$135-Smain$sample_amps$134
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$sample_amps$136-Smain$sample_amps$135
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$sample_amps$137-Smain$sample_amps$136
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$sample_amps$138-Smain$sample_amps$137
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Smain$sample_amps$139-Smain$sample_amps$138
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Smain$sample_temperature$141)
	.db	3
	.sleb128	456
	.db	1
	.db	9
	.dw	Smain$sample_temperature$143-Smain$sample_temperature$141
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Smain$sample_temperature$144-Smain$sample_temperature$143
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$sample_temperature$145-Smain$sample_temperature$144
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$sample_temperature$146-Smain$sample_temperature$145
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$sample_temperature$147-Smain$sample_temperature$146
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$sample_temperature$148-Smain$sample_temperature$147
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$sample_temperature$149-Smain$sample_temperature$148
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	1+Smain$sample_temperature$150-Smain$sample_temperature$149
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Smain$has_high_beam$152)
	.db	3
	.sleb128	471
	.db	1
	.db	9
	.dw	Smain$has_high_beam$154-Smain$has_high_beam$152
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$has_high_beam$155-Smain$has_high_beam$154
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Smain$has_high_beam$156-Smain$has_high_beam$155
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Smain$avg_amp$158)
	.db	3
	.sleb128	476
	.db	1
	.db	9
	.dw	Smain$avg_amp$160-Smain$avg_amp$158
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$avg_amp$162-Smain$avg_amp$160
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$avg_amp$165-Smain$avg_amp$162
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$avg_amp$167-Smain$avg_amp$165
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	1+Smain$avg_amp$168-Smain$avg_amp$167
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Smain$target_amp$170)
	.db	3
	.sleb128	484
	.db	1
	.db	9
	.dw	Smain$target_amp$172-Smain$target_amp$170
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$target_amp$174-Smain$target_amp$172
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$target_amp$176-Smain$target_amp$174
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$target_amp$179-Smain$target_amp$176
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$target_amp$180-Smain$target_amp$179
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$target_amp$182-Smain$target_amp$180
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$target_amp$184-Smain$target_amp$182
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Smain$target_amp$186-Smain$target_amp$184
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	1+Smain$target_amp$187-Smain$target_amp$186
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Smain$changeMode$189)
	.db	3
	.sleb128	509
	.db	1
	.db	9
	.dw	Smain$changeMode$191-Smain$changeMode$189
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$changeMode$192-Smain$changeMode$191
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$changeMode$193-Smain$changeMode$192
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$changeMode$194-Smain$changeMode$193
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$changeMode$201-Smain$changeMode$194
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$changeMode$202-Smain$changeMode$201
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$changeMode$203-Smain$changeMode$202
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$changeMode$204-Smain$changeMode$203
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$changeMode$205-Smain$changeMode$204
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$changeMode$206-Smain$changeMode$205
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$changeMode$207-Smain$changeMode$206
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$changeMode$209-Smain$changeMode$207
	.db	3
	.sleb128	-7
	.db	1
	.db	9
	.dw	Smain$changeMode$211-Smain$changeMode$209
	.db	3
	.sleb128	13
	.db	1
	.db	9
	.dw	Smain$changeMode$213-Smain$changeMode$211
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$changeMode$216-Smain$changeMode$213
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$changeMode$218-Smain$changeMode$216
	.db	3
	.sleb128	-1
	.db	1
	.db	9
	.dw	Smain$changeMode$220-Smain$changeMode$218
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Smain$changeMode$222-Smain$changeMode$220
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$changeMode$226-Smain$changeMode$222
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$changeMode$227-Smain$changeMode$226
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$changeMode$229-Smain$changeMode$227
	.db	3
	.sleb128	-2
	.db	1
	.db	9
	.dw	Smain$changeMode$231-Smain$changeMode$229
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Smain$changeMode$232-Smain$changeMode$231
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	1+Smain$changeMode$233-Smain$changeMode$232
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Smain$toNextMode$235)
	.db	3
	.sleb128	549
	.db	1
	.db	9
	.dw	Smain$toNextMode$237-Smain$toNextMode$235
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$toNextMode$238-Smain$toNextMode$237
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Smain$toNextMode$239-Smain$toNextMode$238
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Smain$process_uart$241)
	.db	3
	.sleb128	555
	.db	1
	.db	9
	.dw	Smain$process_uart$243-Smain$process_uart$241
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$process_uart$245-Smain$process_uart$243
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$process_uart$247-Smain$process_uart$245
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Smain$process_uart$251-Smain$process_uart$247
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$process_uart$252-Smain$process_uart$251
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$process_uart$253-Smain$process_uart$252
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$process_uart$254-Smain$process_uart$253
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Smain$process_uart$255-Smain$process_uart$254
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$process_uart$256-Smain$process_uart$255
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$process_uart$257-Smain$process_uart$256
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$process_uart$258-Smain$process_uart$257
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$process_uart$259-Smain$process_uart$258
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$process_uart$260-Smain$process_uart$259
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$process_uart$261-Smain$process_uart$260
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$process_uart$262-Smain$process_uart$261
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$process_uart$263-Smain$process_uart$262
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$process_uart$264-Smain$process_uart$263
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$process_uart$265-Smain$process_uart$264
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$process_uart$266-Smain$process_uart$265
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$process_uart$267-Smain$process_uart$266
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$process_uart$268-Smain$process_uart$267
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$process_uart$269-Smain$process_uart$268
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$process_uart$270-Smain$process_uart$269
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$process_uart$271-Smain$process_uart$270
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$process_uart$272-Smain$process_uart$271
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$process_uart$273-Smain$process_uart$272
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$process_uart$274-Smain$process_uart$273
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$process_uart$275-Smain$process_uart$274
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$process_uart$276-Smain$process_uart$275
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$process_uart$277-Smain$process_uart$276
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$process_uart$278-Smain$process_uart$277
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Smain$process_uart$279-Smain$process_uart$278
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$process_uart$280-Smain$process_uart$279
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$process_uart$282-Smain$process_uart$280
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$process_uart$283-Smain$process_uart$282
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$process_uart$284-Smain$process_uart$283
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$process_uart$285-Smain$process_uart$284
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$process_uart$287-Smain$process_uart$285
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$process_uart$289-Smain$process_uart$287
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Smain$process_uart$290-Smain$process_uart$289
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Smain$process_uart$291-Smain$process_uart$290
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Smain$process_uart$292-Smain$process_uart$291
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Smain$process_button$294)
	.db	3
	.sleb128	615
	.db	1
	.db	9
	.dw	Smain$process_button$296-Smain$process_button$294
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$process_button$298-Smain$process_button$296
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$process_button$299-Smain$process_button$298
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$process_button$300-Smain$process_button$299
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$process_button$302-Smain$process_button$300
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$process_button$304-Smain$process_button$302
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$process_button$307-Smain$process_button$304
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$process_button$309-Smain$process_button$307
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Smain$process_button$311-Smain$process_button$309
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$process_button$312-Smain$process_button$311
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$process_button$314-Smain$process_button$312
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$process_button$316-Smain$process_button$314
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$process_button$318-Smain$process_button$316
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Smain$process_button$320-Smain$process_button$318
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Smain$process_button$321-Smain$process_button$320
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$process_button$323-Smain$process_button$321
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	1+Smain$process_button$324-Smain$process_button$323
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Smain$stop_leds$326)
	.db	3
	.sleb128	650
	.db	1
	.db	9
	.dw	Smain$stop_leds$328-Smain$stop_leds$326
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Smain$stop_leds$329-Smain$stop_leds$328
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$stop_leds$330-Smain$stop_leds$329
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$stop_leds$331-Smain$stop_leds$330
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$stop_leds$332-Smain$stop_leds$331
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$stop_leds$333-Smain$stop_leds$332
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$stop_leds$334-Smain$stop_leds$333
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$stop_leds$335-Smain$stop_leds$334
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$stop_leds$336-Smain$stop_leds$335
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Smain$stop_leds$337-Smain$stop_leds$336
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Smain$activate_leds$339)
	.db	3
	.sleb128	665
	.db	1
	.db	9
	.dw	Smain$activate_leds$341-Smain$activate_leds$339
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$activate_leds$342-Smain$activate_leds$341
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$activate_leds$343-Smain$activate_leds$342
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$activate_leds$344-Smain$activate_leds$343
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$activate_leds$345-Smain$activate_leds$344
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$activate_leds$346-Smain$activate_leds$345
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$activate_leds$347-Smain$activate_leds$346
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Smain$activate_leds$348-Smain$activate_leds$347
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Smain$mode_changing_control$350)
	.db	3
	.sleb128	682
	.db	1
	.db	9
	.dw	Smain$mode_changing_control$352-Smain$mode_changing_control$350
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$mode_changing_control$354-Smain$mode_changing_control$352
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$mode_changing_control$363-Smain$mode_changing_control$354
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$mode_changing_control$364-Smain$mode_changing_control$363
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$mode_changing_control$365-Smain$mode_changing_control$364
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$mode_changing_control$367-Smain$mode_changing_control$365
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$mode_changing_control$369-Smain$mode_changing_control$367
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$mode_changing_control$371-Smain$mode_changing_control$369
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$mode_changing_control$373-Smain$mode_changing_control$371
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$mode_changing_control$376-Smain$mode_changing_control$373
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$mode_changing_control$377-Smain$mode_changing_control$376
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$mode_changing_control$379-Smain$mode_changing_control$377
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$mode_changing_control$380-Smain$mode_changing_control$379
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$mode_changing_control$382-Smain$mode_changing_control$380
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$mode_changing_control$383-Smain$mode_changing_control$382
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$mode_changing_control$384-Smain$mode_changing_control$383
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$mode_changing_control$385-Smain$mode_changing_control$384
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$mode_changing_control$387-Smain$mode_changing_control$385
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$mode_changing_control$390-Smain$mode_changing_control$387
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$mode_changing_control$392-Smain$mode_changing_control$390
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Smain$mode_changing_control$393-Smain$mode_changing_control$392
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$mode_changing_control$395-Smain$mode_changing_control$393
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$mode_changing_control$397-Smain$mode_changing_control$395
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Smain$mode_changing_control$398-Smain$mode_changing_control$397
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$mode_changing_control$400-Smain$mode_changing_control$398
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$mode_changing_control$401-Smain$mode_changing_control$400
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$mode_changing_control$402-Smain$mode_changing_control$401
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$mode_changing_control$403-Smain$mode_changing_control$402
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$mode_changing_control$405-Smain$mode_changing_control$403
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$mode_changing_control$408-Smain$mode_changing_control$405
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$mode_changing_control$410-Smain$mode_changing_control$408
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$mode_changing_control$413-Smain$mode_changing_control$410
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$mode_changing_control$415-Smain$mode_changing_control$413
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Smain$mode_changing_control$416-Smain$mode_changing_control$415
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
	.sleb128	4
	.db	1
	.db	9
	.dw	Smain$mode_changing_control$422-Smain$mode_changing_control$420
	.db	3
	.sleb128	-47
	.db	1
	.db	9
	.dw	Smain$mode_changing_control$424-Smain$mode_changing_control$422
	.db	3
	.sleb128	49
	.db	1
	.db	9
	.dw	Smain$mode_changing_control$425-Smain$mode_changing_control$424
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Smain$mode_changing_control$426-Smain$mode_changing_control$425
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Smain$is_stable$428)
	.db	3
	.sleb128	738
	.db	1
	.db	9
	.dw	Smain$is_stable$431-Smain$is_stable$428
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$is_stable$434-Smain$is_stable$431
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$is_stable$436-Smain$is_stable$434
	.db	3
	.sleb128	-1
	.db	1
	.db	9
	.dw	Smain$is_stable$438-Smain$is_stable$436
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Smain$is_stable$439-Smain$is_stable$438
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Smain$is_stable$440-Smain$is_stable$439
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Smain$mode_stable_control$442)
	.db	3
	.sleb128	746
	.db	1
	.db	9
	.dw	Smain$mode_stable_control$444-Smain$mode_stable_control$442
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$mode_stable_control$445-Smain$mode_stable_control$444
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$mode_stable_control$447-Smain$mode_stable_control$445
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$mode_stable_control$452-Smain$mode_stable_control$447
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$mode_stable_control$453-Smain$mode_stable_control$452
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$mode_stable_control$455-Smain$mode_stable_control$453
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$mode_stable_control$456-Smain$mode_stable_control$455
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$mode_stable_control$457-Smain$mode_stable_control$456
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$mode_stable_control$459-Smain$mode_stable_control$457
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$mode_stable_control$460-Smain$mode_stable_control$459
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$mode_stable_control$461-Smain$mode_stable_control$460
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$mode_stable_control$462-Smain$mode_stable_control$461
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$mode_stable_control$463-Smain$mode_stable_control$462
	.db	3
	.sleb128	-10
	.db	1
	.db	9
	.dw	Smain$mode_stable_control$464-Smain$mode_stable_control$463
	.db	3
	.sleb128	13
	.db	1
	.db	9
	.dw	Smain$mode_stable_control$465-Smain$mode_stable_control$464
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Smain$mode_stable_control$466-Smain$mode_stable_control$465
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Smain$control_loop$468)
	.db	3
	.sleb128	768
	.db	1
	.db	9
	.dw	Smain$control_loop$470-Smain$control_loop$468
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Smain$control_loop$471-Smain$control_loop$470
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$control_loop$472-Smain$control_loop$471
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$control_loop$474-Smain$control_loop$472
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$control_loop$476-Smain$control_loop$474
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$control_loop$478-Smain$control_loop$476
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$control_loop$479-Smain$control_loop$478
	.db	3
	.sleb128	-1
	.db	1
	.db	9
	.dw	Smain$control_loop$480-Smain$control_loop$479
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Smain$control_loop$481-Smain$control_loop$480
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$control_loop$483-Smain$control_loop$481
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$control_loop$485-Smain$control_loop$483
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$control_loop$487-Smain$control_loop$485
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$control_loop$489-Smain$control_loop$487
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$control_loop$491-Smain$control_loop$489
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Smain$control_loop$493-Smain$control_loop$491
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$control_loop$495-Smain$control_loop$493
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$control_loop$497-Smain$control_loop$495
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$control_loop$499-Smain$control_loop$497
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Smain$control_loop$501-Smain$control_loop$499
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$control_loop$503-Smain$control_loop$501
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	1+Smain$control_loop$504-Smain$control_loop$503
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Smain$wdt_init$506)
	.db	3
	.sleb128	807
	.db	1
	.db	9
	.dw	Smain$wdt_init$508-Smain$wdt_init$506
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$wdt_init$509-Smain$wdt_init$508
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$wdt_init$510-Smain$wdt_init$509
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$wdt_init$511-Smain$wdt_init$510
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$wdt_init$512-Smain$wdt_init$511
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$wdt_init$513-Smain$wdt_init$512
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$wdt_init$514-Smain$wdt_init$513
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$wdt_init$515-Smain$wdt_init$514
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Smain$wdt_init$516-Smain$wdt_init$515
	.db	3
	.sleb128	16
	.db	1
	.db	9
	.dw	Smain$wdt_init$517-Smain$wdt_init$516
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Smain$wdt_init$518-Smain$wdt_init$517
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Smain$wdt_clear$520)
	.db	3
	.sleb128	843
	.db	1
	.db	9
	.dw	Smain$wdt_clear$522-Smain$wdt_clear$520
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$wdt_clear$523-Smain$wdt_clear$522
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$wdt_clear$524-Smain$wdt_clear$523
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$wdt_clear$525-Smain$wdt_clear$524
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$wdt_clear$526-Smain$wdt_clear$525
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$wdt_clear$527-Smain$wdt_clear$526
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$wdt_clear$528-Smain$wdt_clear$527
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	1+Smain$wdt_clear$529-Smain$wdt_clear$528
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Smain$main$531)
	.db	3
	.sleb128	858
	.db	1
	.db	9
	.dw	Smain$main$533-Smain$main$531
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Smain$main$534-Smain$main$533
	.db	3
	.sleb128	7
	.db	1
	.db	9
	.dw	Smain$main$535-Smain$main$534
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$536-Smain$main$535
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Smain$main$538-Smain$main$536
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$539-Smain$main$538
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$541-Smain$main$539
	.db	3
	.sleb128	-2
	.db	1
	.db	9
	.dw	Smain$main$542-Smain$main$541
	.db	3
	.sleb128	7
	.db	1
	.db	9
	.dw	Smain$main$544-Smain$main$542
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$546-Smain$main$544
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Smain$main$547-Smain$main$546
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$main$549-Smain$main$547
	.db	3
	.sleb128	10
	.db	1
	.db	9
	.dw	Smain$main$551-Smain$main$549
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$553-Smain$main$551
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$555-Smain$main$553
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$main$558-Smain$main$555
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$main$560-Smain$main$558
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Smain$main$562-Smain$main$560
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$564-Smain$main$562
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$565-Smain$main$564
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$566-Smain$main$565
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$main$567-Smain$main$566
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$568-Smain$main$567
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$569-Smain$main$568
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$570-Smain$main$569
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$571-Smain$main$570
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$572-Smain$main$571
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$main$573-Smain$main$572
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$575-Smain$main$573
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$578-Smain$main$575
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$main$580-Smain$main$578
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Smain$main$581-Smain$main$580
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$main$582-Smain$main$581
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$main$584-Smain$main$582
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	1+Smain$main$585-Smain$main$584
	.db	0
	.uleb128	1
	.db	1
Ldebug_line_end:

	.area .debug_loc (NOLOAD)
Ldebug_loc_start:
	.dw	0,(Smain$main$532)
	.dw	0,(Smain$main$586)
	.dw	2
	.db	134
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Smain$wdt_clear$521)
	.dw	0,(Smain$wdt_clear$530)
	.dw	2
	.db	134
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Smain$wdt_init$507)
	.dw	0,(Smain$wdt_init$519)
	.dw	2
	.db	134
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Smain$control_loop$469)
	.dw	0,(Smain$control_loop$505)
	.dw	2
	.db	134
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Smain$mode_stable_control$443)
	.dw	0,(Smain$mode_stable_control$467)
	.dw	2
	.db	134
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Smain$is_stable$429)
	.dw	0,(Smain$is_stable$441)
	.dw	2
	.db	134
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Smain$mode_changing_control$351)
	.dw	0,(Smain$mode_changing_control$427)
	.dw	2
	.db	134
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Smain$activate_leds$340)
	.dw	0,(Smain$activate_leds$349)
	.dw	2
	.db	134
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Smain$stop_leds$327)
	.dw	0,(Smain$stop_leds$338)
	.dw	2
	.db	134
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Smain$process_button$295)
	.dw	0,(Smain$process_button$325)
	.dw	2
	.db	134
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Smain$process_uart$242)
	.dw	0,(Smain$process_uart$293)
	.dw	2
	.db	134
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Smain$toNextMode$236)
	.dw	0,(Smain$toNextMode$240)
	.dw	2
	.db	134
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Smain$changeMode$190)
	.dw	0,(Smain$changeMode$234)
	.dw	2
	.db	134
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Smain$target_amp$171)
	.dw	0,(Smain$target_amp$188)
	.dw	2
	.db	134
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Smain$avg_amp$159)
	.dw	0,(Smain$avg_amp$169)
	.dw	2
	.db	134
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Smain$has_high_beam$153)
	.dw	0,(Smain$has_high_beam$157)
	.dw	2
	.db	134
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Smain$sample_temperature$142)
	.dw	0,(Smain$sample_temperature$151)
	.dw	2
	.db	134
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Smain$sample_amps$125)
	.dw	0,(Smain$sample_amps$140)
	.dw	2
	.db	134
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Smain$init_peripherals_but_button_n_uart$95)
	.dw	0,(Smain$init_peripherals_but_button_n_uart$123)
	.dw	2
	.db	134
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Smain$init_sample$79)
	.dw	0,(Smain$init_sample$93)
	.dw	2
	.db	134
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Smain$disable_ntc$72)
	.dw	0,(Smain$disable_ntc$77)
	.dw	2
	.db	134
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Smain$enable_ntc$65)
	.dw	0,(Smain$enable_ntc$70)
	.dw	2
	.db	134
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Smain$button_interrupt_init$56)
	.dw	0,(Smain$button_interrupt_init$63)
	.dw	2
	.db	134
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Smain$PinInterrupt_ISR$44)
	.dw	0,(Smain$PinInterrupt_ISR$54)
	.dw	2
	.db	134
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Smain$uart_interrupt_init$37)
	.dw	0,(Smain$uart_interrupt_init$42)
	.dw	2
	.db	134
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Smain$SerialPort1_ISR$20)
	.dw	0,(Smain$SerialPort1_ISR$35)
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
	.uleb128	9
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
	.uleb128	10
	.uleb128	11
	.db	1
	.uleb128	17
	.uleb128	1
	.uleb128	18
	.uleb128	1
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
	.uleb128	63
	.uleb128	12
	.uleb128	64
	.uleb128	6
	.uleb128	73
	.uleb128	19
	.uleb128	0
	.uleb128	0
	.uleb128	12
	.uleb128	11
	.db	1
	.uleb128	1
	.uleb128	19
	.uleb128	17
	.uleb128	1
	.uleb128	0
	.uleb128	0
	.uleb128	13
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
	.uleb128	14
	.uleb128	11
	.db	1
	.uleb128	1
	.uleb128	19
	.uleb128	0
	.uleb128	0
	.uleb128	15
	.uleb128	11
	.db	1
	.uleb128	17
	.uleb128	1
	.uleb128	0
	.uleb128	0
	.uleb128	16
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
	.uleb128	17
	.uleb128	11
	.db	0
	.uleb128	0
	.uleb128	0
	.uleb128	18
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
	.uleb128	19
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
	.uleb128	20
	.uleb128	33
	.db	0
	.uleb128	47
	.uleb128	11
	.uleb128	0
	.uleb128	0
	.uleb128	21
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
	.uleb128	22
	.uleb128	53
	.db	0
	.uleb128	73
	.uleb128	19
	.uleb128	0
	.uleb128	0
	.uleb128	23
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
	.dw	0,(Ldebug_loc_start+520)
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
	.dw	0,853
	.uleb128	6
	.ascii "TH0TMP"
	.db	0
	.dw	0,853
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
	.uleb128	8
	.dw	0,373
	.ascii "SerialPort1_ISR"
	.db	0
	.dw	0,(_SerialPort1_ISR)
	.dw	0,(XG$SerialPort1_ISR$0$0+1)
	.db	3
	.db	1
	.dw	0,(Ldebug_loc_start+500)
	.uleb128	5
	.dw	0,(Smain$SerialPort1_ISR$23)
	.dw	0,(Smain$SerialPort1_ISR$26)
	.uleb128	5
	.dw	0,(Smain$SerialPort1_ISR$29)
	.dw	0,(Smain$SerialPort1_ISR$31)
	.uleb128	0
	.uleb128	9
	.ascii "uart_interrupt_init"
	.db	0
	.dw	0,(_uart_interrupt_init)
	.dw	0,(XG$uart_interrupt_init$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+480)
	.uleb128	8
	.dw	0,453
	.ascii "PinInterrupt_ISR"
	.db	0
	.dw	0,(_PinInterrupt_ISR)
	.dw	0,(XG$PinInterrupt_ISR$0$0+1)
	.db	3
	.db	1
	.dw	0,(Ldebug_loc_start+460)
	.uleb128	5
	.dw	0,(Smain$PinInterrupt_ISR$47)
	.dw	0,(Smain$PinInterrupt_ISR$49)
	.uleb128	0
	.uleb128	9
	.ascii "button_interrupt_init"
	.db	0
	.dw	0,(_button_interrupt_init)
	.dw	0,(XG$button_interrupt_init$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+440)
	.uleb128	9
	.ascii "enable_ntc"
	.db	0
	.dw	0,(_enable_ntc)
	.dw	0,(XG$enable_ntc$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+420)
	.uleb128	9
	.ascii "disable_ntc"
	.db	0
	.dw	0,(_disable_ntc)
	.dw	0,(XG$disable_ntc$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+400)
	.uleb128	2
	.dw	0,597
	.ascii "init_sample"
	.db	0
	.dw	0,(_init_sample)
	.dw	0,(XG$init_sample$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+380)
	.uleb128	10
	.dw	0,(Smain$init_sample$85)
	.dw	0,(Smain$init_sample$89)
	.uleb128	5
	.dw	0,(Smain$init_sample$82)
	.dw	0,(Smain$init_sample$84)
	.uleb128	6
	.ascii "i"
	.db	0
	.dw	0,2298
	.uleb128	0
	.uleb128	0
	.uleb128	9
	.ascii "init_peripherals_but_button_n_uart"
	.db	0
	.dw	0,(_init_peripherals_but_button_n_uart)
	.dw	0,(XG$init_peripherals_but_button_n_uart$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+360)
	.uleb128	9
	.ascii "sample_amps"
	.db	0
	.dw	0,(_sample_amps)
	.dw	0,(XG$sample_amps$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+340)
	.uleb128	9
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
	.uleb128	11
	.dw	0,773
	.ascii "has_high_beam"
	.db	0
	.dw	0,(_has_high_beam)
	.dw	0,(XG$has_high_beam$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+300)
	.dw	0,705
	.uleb128	3
	.db	5
	.db	3
	.dw	0,(_has_high_beam_mode_65536_173)
	.ascii "mode"
	.db	0
	.dw	0,705
	.uleb128	0
	.uleb128	7
	.ascii "unsigned int"
	.db	0
	.db	2
	.db	7
	.uleb128	11
	.dw	0,853
	.ascii "avg_amp"
	.db	0
	.dw	0,(_avg_amp)
	.dw	0,(XG$avg_amp$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+280)
	.dw	0,773
	.uleb128	3
	.db	5
	.db	3
	.dw	0,(_avg_amp_idx_65536_175)
	.ascii "idx"
	.db	0
	.dw	0,853
	.uleb128	5
	.dw	0,(Smain$avg_amp$161)
	.dw	0,(Smain$avg_amp$163)
	.uleb128	5
	.dw	0,(Smain$avg_amp$164)
	.dw	0,(Smain$avg_amp$166)
	.uleb128	0
	.uleb128	7
	.ascii "unsigned char"
	.db	0
	.db	1
	.db	8
	.uleb128	11
	.dw	0,981
	.ascii "target_amp"
	.db	0
	.dw	0,(_target_amp)
	.dw	0,(XG$target_amp$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+260)
	.dw	0,853
	.uleb128	3
	.db	5
	.db	3
	.dw	0,(_target_amp_mode_65536_179)
	.ascii "mode"
	.db	0
	.dw	0,853
	.uleb128	4
	.ascii "idx"
	.db	0
	.dw	0,853
	.uleb128	12
	.dw	0,971
	.dw	0,(Smain$target_amp$173)
	.uleb128	5
	.dw	0,(Smain$target_amp$175)
	.dw	0,(Smain$target_amp$177)
	.uleb128	10
	.dw	0,(Smain$target_amp$178)
	.dw	0,(Smain$target_amp$181)
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
	.dw	0,(Smain$target_amp$183)
	.dw	0,(Smain$target_amp$185)
	.uleb128	0
	.uleb128	2
	.dw	0,1173
	.ascii "changeMode"
	.db	0
	.dw	0,(_changeMode)
	.dw	0,(XG$changeMode$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+240)
	.uleb128	3
	.db	5
	.db	3
	.dw	0,(_changeMode_new_mode_65536_185)
	.ascii "new_mode"
	.db	0
	.dw	0,853
	.uleb128	13
	.dw	0,1100
	.dw	0,(Smain$changeMode$200)
	.dw	0,(Smain$changeMode$210)
	.uleb128	12
	.dw	0,1092
	.dw	0,(Smain$changeMode$195)
	.uleb128	5
	.dw	0,(Smain$changeMode$198)
	.dw	0,(Smain$changeMode$199)
	.uleb128	5
	.dw	0,(Smain$changeMode$197)
	.dw	0,(Smain$changeMode$198)
	.uleb128	5
	.dw	0,(Smain$changeMode$196)
	.dw	0,(Smain$changeMode$197)
	.uleb128	6
	.ascii "target"
	.db	0
	.dw	0,2305
	.uleb128	0
	.uleb128	6
	.ascii "i"
	.db	0
	.dw	0,2298
	.uleb128	0
	.uleb128	13
	.dw	0,1130
	.dw	0,(Smain$changeMode$215)
	.dw	0,(Smain$changeMode$219)
	.uleb128	5
	.dw	0,(Smain$changeMode$212)
	.dw	0,(Smain$changeMode$214)
	.uleb128	6
	.ascii "i"
	.db	0
	.dw	0,2298
	.uleb128	0
	.uleb128	10
	.dw	0,(Smain$changeMode$225)
	.dw	0,(Smain$changeMode$230)
	.uleb128	14
	.dw	0,1164
	.uleb128	10
	.dw	0,(Smain$changeMode$223)
	.dw	0,(Smain$changeMode$224)
	.uleb128	5
	.dw	0,(Smain$changeMode$221)
	.dw	0,(Smain$changeMode$223)
	.uleb128	0
	.uleb128	0
	.uleb128	6
	.ascii "i"
	.db	0
	.dw	0,2298
	.uleb128	0
	.uleb128	0
	.uleb128	9
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
	.uleb128	11
	.dw	0,1301
	.ascii "process_uart"
	.db	0
	.dw	0,(_process_uart)
	.dw	0,(XG$process_uart$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+200)
	.dw	0,1198
	.uleb128	5
	.dw	0,(Smain$process_uart$244)
	.dw	0,(Smain$process_uart$246)
	.uleb128	15
	.dw	0,(Smain$process_uart$248)
	.uleb128	13
	.dw	0,1285
	.dw	0,(Smain$process_uart$249)
	.dw	0,(Smain$process_uart$250)
	.uleb128	15
	.dw	0,(Smain$process_uart$281)
	.uleb128	5
	.dw	0,(Smain$process_uart$286)
	.dw	0,(Smain$process_uart$288)
	.uleb128	0
	.uleb128	0
	.uleb128	16
	.db	5
	.db	3
	.dw	0,(_process_uart_ch_131072_203)
	.ascii "ch"
	.db	0
	.dw	0,853
	.uleb128	0
	.uleb128	0
	.uleb128	2
	.dw	0,1405
	.ascii "process_button"
	.db	0
	.dw	0,(_process_button)
	.dw	0,(XG$process_button$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+180)
	.uleb128	12
	.dw	0,1368
	.dw	0,(Smain$process_button$297)
	.uleb128	15
	.dw	0,(Smain$process_button$301)
	.uleb128	5
	.dw	0,(Smain$process_button$303)
	.dw	0,(Smain$process_button$305)
	.uleb128	5
	.dw	0,(Smain$process_button$306)
	.dw	0,(Smain$process_button$308)
	.uleb128	0
	.uleb128	0
	.uleb128	15
	.dw	0,(Smain$process_button$310)
	.uleb128	10
	.dw	0,(Smain$process_button$313)
	.dw	0,(Smain$process_button$322)
	.uleb128	12
	.dw	0,1401
	.dw	0,(Smain$process_button$315)
	.uleb128	5
	.dw	0,(Smain$process_button$317)
	.dw	0,(Smain$process_button$319)
	.uleb128	0
	.uleb128	17
	.uleb128	0
	.uleb128	0
	.uleb128	0
	.uleb128	9
	.ascii "stop_leds"
	.db	0
	.dw	0,(_stop_leds)
	.dw	0,(XG$stop_leds$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+160)
	.uleb128	9
	.ascii "activate_leds"
	.db	0
	.dw	0,(_activate_leds)
	.dw	0,(XG$activate_leds$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+140)
	.uleb128	11
	.dw	0,1715
	.ascii "mode_changing_control"
	.db	0
	.dw	0,(_mode_changing_control)
	.dw	0,(XG$mode_changing_control$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+120)
	.dw	0,1198
	.uleb128	13
	.dw	0,1688
	.dw	0,(Smain$mode_changing_control$362)
	.dw	0,(Smain$mode_changing_control$423)
	.uleb128	13
	.dw	0,1680
	.dw	0,(Smain$mode_changing_control$358)
	.dw	0,(Smain$mode_changing_control$421)
	.uleb128	10
	.dw	0,(Smain$mode_changing_control$353)
	.dw	0,(Smain$mode_changing_control$399)
	.uleb128	5
	.dw	0,(Smain$mode_changing_control$368)
	.dw	0,(Smain$mode_changing_control$370)
	.uleb128	5
	.dw	0,(Smain$mode_changing_control$372)
	.dw	0,(Smain$mode_changing_control$374)
	.uleb128	5
	.dw	0,(Smain$mode_changing_control$375)
	.dw	0,(Smain$mode_changing_control$378)
	.uleb128	13
	.dw	0,1595
	.dw	0,(Smain$mode_changing_control$355)
	.dw	0,(Smain$mode_changing_control$356)
	.uleb128	5
	.dw	0,(Smain$mode_changing_control$386)
	.dw	0,(Smain$mode_changing_control$388)
	.uleb128	5
	.dw	0,(Smain$mode_changing_control$389)
	.dw	0,(Smain$mode_changing_control$391)
	.uleb128	0
	.uleb128	13
	.dw	0,1618
	.dw	0,(Smain$mode_changing_control$360)
	.dw	0,(Smain$mode_changing_control$361)
	.uleb128	5
	.dw	0,(Smain$mode_changing_control$394)
	.dw	0,(Smain$mode_changing_control$396)
	.uleb128	0
	.uleb128	13
	.dw	0,1659
	.dw	0,(Smain$mode_changing_control$357)
	.dw	0,(Smain$mode_changing_control$407)
	.uleb128	5
	.dw	0,(Smain$mode_changing_control$404)
	.dw	0,(Smain$mode_changing_control$406)
	.uleb128	5
	.dw	0,(Smain$mode_changing_control$409)
	.dw	0,(Smain$mode_changing_control$411)
	.uleb128	5
	.dw	0,(Smain$mode_changing_control$412)
	.dw	0,(Smain$mode_changing_control$414)
	.uleb128	0
	.uleb128	10
	.dw	0,(Smain$mode_changing_control$359)
	.dw	0,(Smain$mode_changing_control$360)
	.uleb128	5
	.dw	0,(Smain$mode_changing_control$417)
	.dw	0,(Smain$mode_changing_control$419)
	.uleb128	0
	.uleb128	0
	.uleb128	0
	.uleb128	6
	.ascii "i"
	.db	0
	.dw	0,2298
	.uleb128	0
	.uleb128	16
	.db	5
	.db	3
	.dw	0,(_mode_changing_control_light_changing_65536_223)
	.ascii "light_changing"
	.db	0
	.dw	0,1198
	.uleb128	0
	.uleb128	11
	.dw	0,1774
	.ascii "is_stable"
	.db	0
	.dw	0,(_is_stable)
	.dw	0,(XG$is_stable$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+100)
	.dw	0,1198
	.uleb128	10
	.dw	0,(Smain$is_stable$433)
	.dw	0,(Smain$is_stable$437)
	.uleb128	5
	.dw	0,(Smain$is_stable$430)
	.dw	0,(Smain$is_stable$432)
	.uleb128	6
	.ascii "i"
	.db	0
	.dw	0,2298
	.uleb128	0
	.uleb128	0
	.uleb128	11
	.dw	0,1922
	.ascii "mode_stable_control"
	.db	0
	.dw	0,(_mode_stable_control)
	.dw	0,(XG$mode_stable_control$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+80)
	.dw	0,1198
	.uleb128	12
	.dw	0,1895
	.dw	0,(Smain$mode_stable_control$450)
	.uleb128	12
	.dw	0,1887
	.dw	0,(Smain$mode_stable_control$451)
	.uleb128	13
	.dw	0,1875
	.dw	0,(Smain$mode_stable_control$454)
	.dw	0,(Smain$mode_stable_control$458)
	.uleb128	5
	.dw	0,(Smain$mode_stable_control$448)
	.dw	0,(Smain$mode_stable_control$449)
	.uleb128	5
	.dw	0,(Smain$mode_stable_control$446)
	.dw	0,(Smain$mode_stable_control$448)
	.uleb128	6
	.ascii "amp"
	.db	0
	.dw	0,773
	.uleb128	0
	.uleb128	6
	.ascii "t_amp"
	.db	0
	.dw	0,2305
	.uleb128	0
	.uleb128	6
	.ascii "i"
	.db	0
	.dw	0,2298
	.uleb128	0
	.uleb128	16
	.db	5
	.db	3
	.dw	0,(_mode_stable_control_light_changing_65536_246)
	.ascii "light_changing"
	.db	0
	.dw	0,1198
	.uleb128	0
	.uleb128	2
	.dw	0,2067
	.ascii "control_loop"
	.db	0
	.dw	0,(_control_loop)
	.dw	0,(XG$control_loop$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+60)
	.uleb128	12
	.dw	0,2031
	.dw	0,(Smain$control_loop$473)
	.uleb128	13
	.dw	0,1983
	.dw	0,(Smain$control_loop$475)
	.dw	0,(Smain$control_loop$477)
	.uleb128	6
	.ascii "i"
	.db	0
	.dw	0,2298
	.uleb128	0
	.uleb128	12
	.dw	0,2011
	.dw	0,(Smain$control_loop$482)
	.uleb128	5
	.dw	0,(Smain$control_loop$484)
	.dw	0,(Smain$control_loop$486)
	.uleb128	5
	.dw	0,(Smain$control_loop$488)
	.dw	0,(Smain$control_loop$490)
	.uleb128	0
	.uleb128	10
	.dw	0,(Smain$control_loop$492)
	.dw	0,(Smain$control_loop$498)
	.uleb128	5
	.dw	0,(Smain$control_loop$494)
	.dw	0,(Smain$control_loop$496)
	.uleb128	0
	.uleb128	0
	.uleb128	5
	.dw	0,(Smain$control_loop$500)
	.dw	0,(Smain$control_loop$502)
	.uleb128	16
	.db	5
	.db	3
	.dw	0,(_control_loop_light_changing_65536_253)
	.ascii "light_changing"
	.db	0
	.dw	0,1198
	.uleb128	0
	.uleb128	9
	.ascii "wdt_init"
	.db	0
	.dw	0,(_wdt_init)
	.dw	0,(XG$wdt_init$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+40)
	.uleb128	9
	.ascii "wdt_clear"
	.db	0
	.dw	0,(_wdt_clear)
	.dw	0,(XG$wdt_clear$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+20)
	.uleb128	2
	.dw	0,2228
	.ascii "main"
	.db	0
	.dw	0,(_main)
	.dw	0,(XG$main$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start)
	.uleb128	5
	.dw	0,(Smain$main$537)
	.dw	0,(Smain$main$540)
	.uleb128	5
	.dw	0,(Smain$main$543)
	.dw	0,(Smain$main$545)
	.uleb128	10
	.dw	0,(Smain$main$548)
	.dw	0,(Smain$main$583)
	.uleb128	13
	.dw	0,2187
	.dw	0,(Smain$main$550)
	.dw	0,(Smain$main$556)
	.uleb128	5
	.dw	0,(Smain$main$552)
	.dw	0,(Smain$main$554)
	.uleb128	0
	.uleb128	5
	.dw	0,(Smain$main$557)
	.dw	0,(Smain$main$559)
	.uleb128	15
	.dw	0,(Smain$main$561)
	.uleb128	15
	.dw	0,(Smain$main$563)
	.uleb128	5
	.dw	0,(Smain$main$574)
	.dw	0,(Smain$main$576)
	.uleb128	5
	.dw	0,(Smain$main$577)
	.dw	0,(Smain$main$579)
	.uleb128	0
	.uleb128	0
	.uleb128	0
	.uleb128	0
	.uleb128	7
	.ascii "_bit"
	.db	0
	.db	1
	.db	8
	.uleb128	18
	.db	5
	.db	3
	.dw	0,(_BIT_TMP)
	.ascii "BIT_TMP"
	.db	0
	.db	1
	.db	1
	.dw	0,2228
	.uleb128	19
	.dw	0,2270
	.db	16
	.dw	0,853
	.uleb128	20
	.db	15
	.uleb128	0
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_uart1_rx_buffer)
	.ascii "uart1_rx_buffer"
	.db	0
	.db	1
	.dw	0,2257
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
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_light_mode)
	.ascii "light_mode"
	.db	0
	.db	1
	.dw	0,853
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_is_uart_mode)
	.ascii "is_uart_mode"
	.db	0
	.db	1
	.dw	0,1198
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_flashing_on)
	.ascii "flashing_on"
	.db	0
	.db	1
	.dw	0,1198
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_flashing_count)
	.ascii "flashing_count"
	.db	0
	.db	1
	.dw	0,773
	.uleb128	19
	.dw	0,2424
	.db	4
	.dw	0,773
	.uleb128	20
	.db	1
	.uleb128	0
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_pwm)
	.ascii "pwm"
	.db	0
	.db	1
	.dw	0,2411
	.uleb128	19
	.dw	0,2453
	.db	2
	.dw	0,705
	.uleb128	20
	.db	1
	.uleb128	0
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_light_control_mode)
	.ascii "light_control_mode"
	.db	0
	.db	1
	.dw	0,2440
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_sample_count)
	.ascii "sample_count"
	.db	0
	.db	1
	.dw	0,853
	.uleb128	19
	.dw	0,2522
	.db	8
	.dw	0,286
	.uleb128	20
	.db	1
	.uleb128	0
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_acc_amp)
	.ascii "acc_amp"
	.db	0
	.db	1
	.dw	0,2509
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_acc_temp)
	.ascii "acc_temp"
	.db	0
	.db	1
	.dw	0,286
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_cur_amp)
	.ascii "cur_amp"
	.db	0
	.db	1
	.dw	0,2411
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_cur_temp)
	.ascii "cur_temp"
	.db	0
	.db	1
	.dw	0,773
	.uleb128	19
	.dw	0,2617
	.db	2
	.dw	0,853
	.uleb128	20
	.db	1
	.uleb128	0
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_good_amp_count)
	.ascii "good_amp_count"
	.db	0
	.db	1
	.dw	0,2604
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_uart1_next_idx)
	.ascii "uart1_next_idx"
	.db	0
	.db	1
	.dw	0,853
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_uart1_read_idx)
	.ascii "uart1_read_idx"
	.db	0
	.db	1
	.dw	0,853
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_uart_flag)
	.ascii "uart_flag"
	.db	0
	.db	1
	.dw	0,705
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_button_pressed)
	.ascii "button_pressed"
	.db	0
	.db	1
	.dw	0,286
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_button_unpressed)
	.ascii "button_unpressed"
	.db	0
	.db	1
	.dw	0,286
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_uart_counter)
	.ascii "uart_counter"
	.db	0
	.db	1
	.dw	0,286
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_uart_rx_state)
	.ascii "uart_rx_state"
	.db	0
	.db	1
	.dw	0,853
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_lamp_state)
	.ascii "lamp_state"
	.db	0
	.db	1
	.dw	0,853
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_log_counter)
	.ascii "log_counter"
	.db	0
	.db	1
	.dw	0,286
	.uleb128	22
	.dw	0,853
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_P0)
	.ascii "P0"
	.db	0
	.db	1
	.dw	0,2874
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_SP)
	.ascii "SP"
	.db	0
	.db	1
	.dw	0,2874
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_DPL)
	.ascii "DPL"
	.db	0
	.db	1
	.dw	0,2874
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_DPH)
	.ascii "DPH"
	.db	0
	.db	1
	.dw	0,2874
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_RCTRIM0)
	.ascii "RCTRIM0"
	.db	0
	.db	1
	.dw	0,2874
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_RCTRIM1)
	.ascii "RCTRIM1"
	.db	0
	.db	1
	.dw	0,2874
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_RWK)
	.ascii "RWK"
	.db	0
	.db	1
	.dw	0,2874
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_PCON)
	.ascii "PCON"
	.db	0
	.db	1
	.dw	0,2874
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_TCON)
	.ascii "TCON"
	.db	0
	.db	1
	.dw	0,2874
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_TMOD)
	.ascii "TMOD"
	.db	0
	.db	1
	.dw	0,2874
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_TL0)
	.ascii "TL0"
	.db	0
	.db	1
	.dw	0,2874
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_TL1)
	.ascii "TL1"
	.db	0
	.db	1
	.dw	0,2874
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_TH0)
	.ascii "TH0"
	.db	0
	.db	1
	.dw	0,2874
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_TH1)
	.ascii "TH1"
	.db	0
	.db	1
	.dw	0,2874
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_CKCON)
	.ascii "CKCON"
	.db	0
	.db	1
	.dw	0,2874
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_WKCON)
	.ascii "WKCON"
	.db	0
	.db	1
	.dw	0,2874
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_P1)
	.ascii "P1"
	.db	0
	.db	1
	.dw	0,2874
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_SFRS)
	.ascii "SFRS"
	.db	0
	.db	1
	.dw	0,2874
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_CAPCON0)
	.ascii "CAPCON0"
	.db	0
	.db	1
	.dw	0,2874
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_CAPCON1)
	.ascii "CAPCON1"
	.db	0
	.db	1
	.dw	0,2874
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_CAPCON2)
	.ascii "CAPCON2"
	.db	0
	.db	1
	.dw	0,2874
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_CKDIV)
	.ascii "CKDIV"
	.db	0
	.db	1
	.dw	0,2874
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_CKSWT)
	.ascii "CKSWT"
	.db	0
	.db	1
	.dw	0,2874
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_CKEN)
	.ascii "CKEN"
	.db	0
	.db	1
	.dw	0,2874
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_SCON)
	.ascii "SCON"
	.db	0
	.db	1
	.dw	0,2874
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_SBUF)
	.ascii "SBUF"
	.db	0
	.db	1
	.dw	0,2874
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_SBUF_1)
	.ascii "SBUF_1"
	.db	0
	.db	1
	.dw	0,2874
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_EIE)
	.ascii "EIE"
	.db	0
	.db	1
	.dw	0,2874
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_EIE1)
	.ascii "EIE1"
	.db	0
	.db	1
	.dw	0,2874
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_CHPCON)
	.ascii "CHPCON"
	.db	0
	.db	1
	.dw	0,2874
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_P2)
	.ascii "P2"
	.db	0
	.db	1
	.dw	0,2874
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_AUXR1)
	.ascii "AUXR1"
	.db	0
	.db	1
	.dw	0,2874
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_BODCON0)
	.ascii "BODCON0"
	.db	0
	.db	1
	.dw	0,2874
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_IAPTRG)
	.ascii "IAPTRG"
	.db	0
	.db	1
	.dw	0,2874
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_IAPUEN)
	.ascii "IAPUEN"
	.db	0
	.db	1
	.dw	0,2874
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_IAPAL)
	.ascii "IAPAL"
	.db	0
	.db	1
	.dw	0,2874
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_IAPAH)
	.ascii "IAPAH"
	.db	0
	.db	1
	.dw	0,2874
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_IE)
	.ascii "IE"
	.db	0
	.db	1
	.dw	0,2874
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_SADDR)
	.ascii "SADDR"
	.db	0
	.db	1
	.dw	0,2874
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_WDCON)
	.ascii "WDCON"
	.db	0
	.db	1
	.dw	0,2874
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_BODCON1)
	.ascii "BODCON1"
	.db	0
	.db	1
	.dw	0,2874
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_P3M1)
	.ascii "P3M1"
	.db	0
	.db	1
	.dw	0,2874
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_P3S)
	.ascii "P3S"
	.db	0
	.db	1
	.dw	0,2874
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_P3M2)
	.ascii "P3M2"
	.db	0
	.db	1
	.dw	0,2874
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_P3SR)
	.ascii "P3SR"
	.db	0
	.db	1
	.dw	0,2874
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_IAPFD)
	.ascii "IAPFD"
	.db	0
	.db	1
	.dw	0,2874
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_IAPCN)
	.ascii "IAPCN"
	.db	0
	.db	1
	.dw	0,2874
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_P3)
	.ascii "P3"
	.db	0
	.db	1
	.dw	0,2874
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_P0M1)
	.ascii "P0M1"
	.db	0
	.db	1
	.dw	0,2874
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_P0S)
	.ascii "P0S"
	.db	0
	.db	1
	.dw	0,2874
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_P0M2)
	.ascii "P0M2"
	.db	0
	.db	1
	.dw	0,2874
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_P0SR)
	.ascii "P0SR"
	.db	0
	.db	1
	.dw	0,2874
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_P1M1)
	.ascii "P1M1"
	.db	0
	.db	1
	.dw	0,2874
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_P1S)
	.ascii "P1S"
	.db	0
	.db	1
	.dw	0,2874
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_P1M2)
	.ascii "P1M2"
	.db	0
	.db	1
	.dw	0,2874
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_P1SR)
	.ascii "P1SR"
	.db	0
	.db	1
	.dw	0,2874
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_P2S)
	.ascii "P2S"
	.db	0
	.db	1
	.dw	0,2874
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_IPH)
	.ascii "IPH"
	.db	0
	.db	1
	.dw	0,2874
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_PWMINTC)
	.ascii "PWMINTC"
	.db	0
	.db	1
	.dw	0,2874
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_IP)
	.ascii "IP"
	.db	0
	.db	1
	.dw	0,2874
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_SADEN)
	.ascii "SADEN"
	.db	0
	.db	1
	.dw	0,2874
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_SADEN_1)
	.ascii "SADEN_1"
	.db	0
	.db	1
	.dw	0,2874
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_SADDR_1)
	.ascii "SADDR_1"
	.db	0
	.db	1
	.dw	0,2874
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_I2DAT)
	.ascii "I2DAT"
	.db	0
	.db	1
	.dw	0,2874
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_I2STAT)
	.ascii "I2STAT"
	.db	0
	.db	1
	.dw	0,2874
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_I2CLK)
	.ascii "I2CLK"
	.db	0
	.db	1
	.dw	0,2874
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_I2TOC)
	.ascii "I2TOC"
	.db	0
	.db	1
	.dw	0,2874
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_I2CON)
	.ascii "I2CON"
	.db	0
	.db	1
	.dw	0,2874
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_I2ADDR)
	.ascii "I2ADDR"
	.db	0
	.db	1
	.dw	0,2874
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_ADCRL)
	.ascii "ADCRL"
	.db	0
	.db	1
	.dw	0,2874
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_ADCRH)
	.ascii "ADCRH"
	.db	0
	.db	1
	.dw	0,2874
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_T3CON)
	.ascii "T3CON"
	.db	0
	.db	1
	.dw	0,2874
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_PWM4H)
	.ascii "PWM4H"
	.db	0
	.db	1
	.dw	0,2874
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_RL3)
	.ascii "RL3"
	.db	0
	.db	1
	.dw	0,2874
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_PWM5H)
	.ascii "PWM5H"
	.db	0
	.db	1
	.dw	0,2874
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_RH3)
	.ascii "RH3"
	.db	0
	.db	1
	.dw	0,2874
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_PIOCON1)
	.ascii "PIOCON1"
	.db	0
	.db	1
	.dw	0,2874
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_TA)
	.ascii "TA"
	.db	0
	.db	1
	.dw	0,2874
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_T2CON)
	.ascii "T2CON"
	.db	0
	.db	1
	.dw	0,2874
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_T2MOD)
	.ascii "T2MOD"
	.db	0
	.db	1
	.dw	0,2874
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_RCMP2L)
	.ascii "RCMP2L"
	.db	0
	.db	1
	.dw	0,2874
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_RCMP2H)
	.ascii "RCMP2H"
	.db	0
	.db	1
	.dw	0,2874
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_TL2)
	.ascii "TL2"
	.db	0
	.db	1
	.dw	0,2874
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_PWM4L)
	.ascii "PWM4L"
	.db	0
	.db	1
	.dw	0,2874
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_TH2)
	.ascii "TH2"
	.db	0
	.db	1
	.dw	0,2874
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_PWM5L)
	.ascii "PWM5L"
	.db	0
	.db	1
	.dw	0,2874
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_ADCMPL)
	.ascii "ADCMPL"
	.db	0
	.db	1
	.dw	0,2874
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_ADCMPH)
	.ascii "ADCMPH"
	.db	0
	.db	1
	.dw	0,2874
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_PSW)
	.ascii "PSW"
	.db	0
	.db	1
	.dw	0,2874
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_PWMPH)
	.ascii "PWMPH"
	.db	0
	.db	1
	.dw	0,2874
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_PWM0H)
	.ascii "PWM0H"
	.db	0
	.db	1
	.dw	0,2874
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_PWM1H)
	.ascii "PWM1H"
	.db	0
	.db	1
	.dw	0,2874
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_PWM2H)
	.ascii "PWM2H"
	.db	0
	.db	1
	.dw	0,2874
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_PWM3H)
	.ascii "PWM3H"
	.db	0
	.db	1
	.dw	0,2874
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_PNP)
	.ascii "PNP"
	.db	0
	.db	1
	.dw	0,2874
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_FBD)
	.ascii "FBD"
	.db	0
	.db	1
	.dw	0,2874
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_PWMCON0)
	.ascii "PWMCON0"
	.db	0
	.db	1
	.dw	0,2874
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_PWMPL)
	.ascii "PWMPL"
	.db	0
	.db	1
	.dw	0,2874
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_PWM0L)
	.ascii "PWM0L"
	.db	0
	.db	1
	.dw	0,2874
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_PWM1L)
	.ascii "PWM1L"
	.db	0
	.db	1
	.dw	0,2874
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_PWM2L)
	.ascii "PWM2L"
	.db	0
	.db	1
	.dw	0,2874
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_PWM3L)
	.ascii "PWM3L"
	.db	0
	.db	1
	.dw	0,2874
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_PIOCON0)
	.ascii "PIOCON0"
	.db	0
	.db	1
	.dw	0,2874
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_PWMCON1)
	.ascii "PWMCON1"
	.db	0
	.db	1
	.dw	0,2874
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_ACC)
	.ascii "ACC"
	.db	0
	.db	1
	.dw	0,2874
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_ADCCON1)
	.ascii "ADCCON1"
	.db	0
	.db	1
	.dw	0,2874
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_ADCCON2)
	.ascii "ADCCON2"
	.db	0
	.db	1
	.dw	0,2874
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_ADCDLY)
	.ascii "ADCDLY"
	.db	0
	.db	1
	.dw	0,2874
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_C0L)
	.ascii "C0L"
	.db	0
	.db	1
	.dw	0,2874
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_C0H)
	.ascii "C0H"
	.db	0
	.db	1
	.dw	0,2874
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_C1L)
	.ascii "C1L"
	.db	0
	.db	1
	.dw	0,2874
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_C1H)
	.ascii "C1H"
	.db	0
	.db	1
	.dw	0,2874
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_ADCCON0)
	.ascii "ADCCON0"
	.db	0
	.db	1
	.dw	0,2874
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_PICON)
	.ascii "PICON"
	.db	0
	.db	1
	.dw	0,2874
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_PINEN)
	.ascii "PINEN"
	.db	0
	.db	1
	.dw	0,2874
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_PIPEN)
	.ascii "PIPEN"
	.db	0
	.db	1
	.dw	0,2874
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_PIF)
	.ascii "PIF"
	.db	0
	.db	1
	.dw	0,2874
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_C2L)
	.ascii "C2L"
	.db	0
	.db	1
	.dw	0,2874
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_C2H)
	.ascii "C2H"
	.db	0
	.db	1
	.dw	0,2874
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_EIP)
	.ascii "EIP"
	.db	0
	.db	1
	.dw	0,2874
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_B)
	.ascii "B"
	.db	0
	.db	1
	.dw	0,2874
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_CAPCON3)
	.ascii "CAPCON3"
	.db	0
	.db	1
	.dw	0,2874
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_CAPCON4)
	.ascii "CAPCON4"
	.db	0
	.db	1
	.dw	0,2874
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_SPCR)
	.ascii "SPCR"
	.db	0
	.db	1
	.dw	0,2874
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_SPCR2)
	.ascii "SPCR2"
	.db	0
	.db	1
	.dw	0,2874
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_SPSR)
	.ascii "SPSR"
	.db	0
	.db	1
	.dw	0,2874
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_SPDR)
	.ascii "SPDR"
	.db	0
	.db	1
	.dw	0,2874
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_AINDIDS)
	.ascii "AINDIDS"
	.db	0
	.db	1
	.dw	0,2874
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_EIPH)
	.ascii "EIPH"
	.db	0
	.db	1
	.dw	0,2874
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_SCON_1)
	.ascii "SCON_1"
	.db	0
	.db	1
	.dw	0,2874
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_PDTEN)
	.ascii "PDTEN"
	.db	0
	.db	1
	.dw	0,2874
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_PDTCNT)
	.ascii "PDTCNT"
	.db	0
	.db	1
	.dw	0,2874
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_PMEN)
	.ascii "PMEN"
	.db	0
	.db	1
	.dw	0,2874
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_PMD)
	.ascii "PMD"
	.db	0
	.db	1
	.dw	0,2874
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_EIP1)
	.ascii "EIP1"
	.db	0
	.db	1
	.dw	0,2874
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_EIPH1)
	.ascii "EIPH1"
	.db	0
	.db	1
	.dw	0,2874
	.uleb128	7
	.ascii "_sbit"
	.db	0
	.db	1
	.db	8
	.uleb128	22
	.dw	0,5269
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_SM0_1)
	.ascii "SM0_1"
	.db	0
	.db	1
	.dw	0,5278
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_FE_1)
	.ascii "FE_1"
	.db	0
	.db	1
	.dw	0,5278
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_SM1_1)
	.ascii "SM1_1"
	.db	0
	.db	1
	.dw	0,5278
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_SM2_1)
	.ascii "SM2_1"
	.db	0
	.db	1
	.dw	0,5278
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_REN_1)
	.ascii "REN_1"
	.db	0
	.db	1
	.dw	0,5278
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_TB8_1)
	.ascii "TB8_1"
	.db	0
	.db	1
	.dw	0,5278
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_RB8_1)
	.ascii "RB8_1"
	.db	0
	.db	1
	.dw	0,5278
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_TI_1)
	.ascii "TI_1"
	.db	0
	.db	1
	.dw	0,5278
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_RI_1)
	.ascii "RI_1"
	.db	0
	.db	1
	.dw	0,5278
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_ADCF)
	.ascii "ADCF"
	.db	0
	.db	1
	.dw	0,5278
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_ADCS)
	.ascii "ADCS"
	.db	0
	.db	1
	.dw	0,5278
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_ETGSEL1)
	.ascii "ETGSEL1"
	.db	0
	.db	1
	.dw	0,5278
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_ETGSEL0)
	.ascii "ETGSEL0"
	.db	0
	.db	1
	.dw	0,5278
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_ADCHS3)
	.ascii "ADCHS3"
	.db	0
	.db	1
	.dw	0,5278
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_ADCHS2)
	.ascii "ADCHS2"
	.db	0
	.db	1
	.dw	0,5278
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_ADCHS1)
	.ascii "ADCHS1"
	.db	0
	.db	1
	.dw	0,5278
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_ADCHS0)
	.ascii "ADCHS0"
	.db	0
	.db	1
	.dw	0,5278
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_PWMRUN)
	.ascii "PWMRUN"
	.db	0
	.db	1
	.dw	0,5278
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_LOAD)
	.ascii "LOAD"
	.db	0
	.db	1
	.dw	0,5278
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_PWMF)
	.ascii "PWMF"
	.db	0
	.db	1
	.dw	0,5278
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_CLRPWM)
	.ascii "CLRPWM"
	.db	0
	.db	1
	.dw	0,5278
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_CY)
	.ascii "CY"
	.db	0
	.db	1
	.dw	0,5278
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_AC)
	.ascii "AC"
	.db	0
	.db	1
	.dw	0,5278
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_F0)
	.ascii "F0"
	.db	0
	.db	1
	.dw	0,5278
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_RS1)
	.ascii "RS1"
	.db	0
	.db	1
	.dw	0,5278
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_RS0)
	.ascii "RS0"
	.db	0
	.db	1
	.dw	0,5278
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_OV)
	.ascii "OV"
	.db	0
	.db	1
	.dw	0,5278
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_P)
	.ascii "P"
	.db	0
	.db	1
	.dw	0,5278
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_TF2)
	.ascii "TF2"
	.db	0
	.db	1
	.dw	0,5278
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_TR2)
	.ascii "TR2"
	.db	0
	.db	1
	.dw	0,5278
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_CM_RL2)
	.ascii "CM_RL2"
	.db	0
	.db	1
	.dw	0,5278
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_I2CEN)
	.ascii "I2CEN"
	.db	0
	.db	1
	.dw	0,5278
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_STA)
	.ascii "STA"
	.db	0
	.db	1
	.dw	0,5278
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_STO)
	.ascii "STO"
	.db	0
	.db	1
	.dw	0,5278
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_SI)
	.ascii "SI"
	.db	0
	.db	1
	.dw	0,5278
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_AA)
	.ascii "AA"
	.db	0
	.db	1
	.dw	0,5278
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_I2CPX)
	.ascii "I2CPX"
	.db	0
	.db	1
	.dw	0,5278
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_PADC)
	.ascii "PADC"
	.db	0
	.db	1
	.dw	0,5278
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_PBOD)
	.ascii "PBOD"
	.db	0
	.db	1
	.dw	0,5278
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_PS)
	.ascii "PS"
	.db	0
	.db	1
	.dw	0,5278
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_PT1)
	.ascii "PT1"
	.db	0
	.db	1
	.dw	0,5278
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_PX1)
	.ascii "PX1"
	.db	0
	.db	1
	.dw	0,5278
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_PT0)
	.ascii "PT0"
	.db	0
	.db	1
	.dw	0,5278
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_PX0)
	.ascii "PX0"
	.db	0
	.db	1
	.dw	0,5278
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_P30)
	.ascii "P30"
	.db	0
	.db	1
	.dw	0,5278
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_EA)
	.ascii "EA"
	.db	0
	.db	1
	.dw	0,5278
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_EADC)
	.ascii "EADC"
	.db	0
	.db	1
	.dw	0,5278
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_EBOD)
	.ascii "EBOD"
	.db	0
	.db	1
	.dw	0,5278
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_ES)
	.ascii "ES"
	.db	0
	.db	1
	.dw	0,5278
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_ET1)
	.ascii "ET1"
	.db	0
	.db	1
	.dw	0,5278
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_EX1)
	.ascii "EX1"
	.db	0
	.db	1
	.dw	0,5278
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_ET0)
	.ascii "ET0"
	.db	0
	.db	1
	.dw	0,5278
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_EX0)
	.ascii "EX0"
	.db	0
	.db	1
	.dw	0,5278
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_P20)
	.ascii "P20"
	.db	0
	.db	1
	.dw	0,5278
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_SM0)
	.ascii "SM0"
	.db	0
	.db	1
	.dw	0,5278
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_FE)
	.ascii "FE"
	.db	0
	.db	1
	.dw	0,5278
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_SM1)
	.ascii "SM1"
	.db	0
	.db	1
	.dw	0,5278
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_SM2)
	.ascii "SM2"
	.db	0
	.db	1
	.dw	0,5278
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_REN)
	.ascii "REN"
	.db	0
	.db	1
	.dw	0,5278
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_TB8)
	.ascii "TB8"
	.db	0
	.db	1
	.dw	0,5278
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_RB8)
	.ascii "RB8"
	.db	0
	.db	1
	.dw	0,5278
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_TI)
	.ascii "TI"
	.db	0
	.db	1
	.dw	0,5278
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_RI)
	.ascii "RI"
	.db	0
	.db	1
	.dw	0,5278
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_P17)
	.ascii "P17"
	.db	0
	.db	1
	.dw	0,5278
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_P16)
	.ascii "P16"
	.db	0
	.db	1
	.dw	0,5278
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_TXD_1)
	.ascii "TXD_1"
	.db	0
	.db	1
	.dw	0,5278
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_P15)
	.ascii "P15"
	.db	0
	.db	1
	.dw	0,5278
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_P14)
	.ascii "P14"
	.db	0
	.db	1
	.dw	0,5278
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_SDA)
	.ascii "SDA"
	.db	0
	.db	1
	.dw	0,5278
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_P13)
	.ascii "P13"
	.db	0
	.db	1
	.dw	0,5278
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_SCL)
	.ascii "SCL"
	.db	0
	.db	1
	.dw	0,5278
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_P12)
	.ascii "P12"
	.db	0
	.db	1
	.dw	0,5278
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_P11)
	.ascii "P11"
	.db	0
	.db	1
	.dw	0,5278
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_P10)
	.ascii "P10"
	.db	0
	.db	1
	.dw	0,5278
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_TF1)
	.ascii "TF1"
	.db	0
	.db	1
	.dw	0,5278
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_TR1)
	.ascii "TR1"
	.db	0
	.db	1
	.dw	0,5278
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_TF0)
	.ascii "TF0"
	.db	0
	.db	1
	.dw	0,5278
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_TR0)
	.ascii "TR0"
	.db	0
	.db	1
	.dw	0,5278
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_IE1)
	.ascii "IE1"
	.db	0
	.db	1
	.dw	0,5278
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_IT1)
	.ascii "IT1"
	.db	0
	.db	1
	.dw	0,5278
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_IE0)
	.ascii "IE0"
	.db	0
	.db	1
	.dw	0,5278
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_IT0)
	.ascii "IT0"
	.db	0
	.db	1
	.dw	0,5278
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_P07)
	.ascii "P07"
	.db	0
	.db	1
	.dw	0,5278
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_RXD)
	.ascii "RXD"
	.db	0
	.db	1
	.dw	0,5278
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_P06)
	.ascii "P06"
	.db	0
	.db	1
	.dw	0,5278
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_TXD)
	.ascii "TXD"
	.db	0
	.db	1
	.dw	0,5278
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_P05)
	.ascii "P05"
	.db	0
	.db	1
	.dw	0,5278
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_P04)
	.ascii "P04"
	.db	0
	.db	1
	.dw	0,5278
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_STADC)
	.ascii "STADC"
	.db	0
	.db	1
	.dw	0,5278
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_P03)
	.ascii "P03"
	.db	0
	.db	1
	.dw	0,5278
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_P02)
	.ascii "P02"
	.db	0
	.db	1
	.dw	0,5278
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_RXD_1)
	.ascii "RXD_1"
	.db	0
	.db	1
	.dw	0,5278
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_P01)
	.ascii "P01"
	.db	0
	.db	1
	.dw	0,5278
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_MISO)
	.ascii "MISO"
	.db	0
	.db	1
	.dw	0,5278
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_P00)
	.ascii "P00"
	.db	0
	.db	1
	.dw	0,5278
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_MOSI)
	.ascii "MOSI"
	.db	0
	.db	1
	.dw	0,5278
	.uleb128	23
	.dw	0,853
	.uleb128	19
	.dw	0,6887
	.db	2
	.dw	0,6869
	.uleb128	20
	.db	1
	.uleb128	0
	.uleb128	19
	.dw	0,6900
	.db	20
	.dw	0,6874
	.uleb128	20
	.db	9
	.uleb128	0
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_max_amp)
	.ascii "max_amp"
	.db	0
	.db	1
	.dw	0,6887
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_min_amp)
	.ascii "min_amp"
	.db	0
	.db	1
	.dw	0,6874
	.uleb128	19
	.dw	0,6953
	.db	10
	.dw	0,6869
	.uleb128	20
	.db	9
	.uleb128	0
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_flashing)
	.ascii "flashing"
	.db	0
	.db	1
	.dw	0,6940
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_temp_controlling)
	.ascii "temp_controlling"
	.db	0
	.db	1
	.dw	0,6940
	.uleb128	21
	.db	5
	.db	3
	.dw	0,(_next_mode)
	.ascii "next_mode"
	.db	0
	.db	1
	.dw	0,6940
	.uleb128	16
	.db	5
	.db	3
	.dw	0,(__xinit__light_mode)
	.ascii "__xinit_light_mode"
	.db	0
	.dw	0,6869
	.uleb128	23
	.dw	0,1198
	.uleb128	16
	.db	5
	.db	3
	.dw	0,(__xinit__is_uart_mode)
	.ascii "__xinit_is_uart_mode"
	.db	0
	.dw	0,7055
	.uleb128	16
	.db	5
	.db	3
	.dw	0,(__xinit__flashing_on)
	.ascii "__xinit_flashing_on"
	.db	0
	.dw	0,7055
	.uleb128	23
	.dw	0,773
	.uleb128	16
	.db	5
	.db	3
	.dw	0,(__xinit__flashing_count)
	.ascii "__xinit_flashing_count"
	.db	0
	.dw	0,7123
	.uleb128	19
	.dw	0,7175
	.db	4
	.dw	0,7123
	.uleb128	20
	.db	1
	.uleb128	0
	.uleb128	16
	.db	5
	.db	3
	.dw	0,(__xinit__pwm)
	.ascii "__xinit_pwm"
	.db	0
	.dw	0,7162
	.uleb128	23
	.dw	0,705
	.uleb128	19
	.dw	0,7216
	.db	2
	.dw	0,7198
	.uleb128	20
	.db	1
	.uleb128	0
	.uleb128	16
	.db	5
	.db	3
	.dw	0,(__xinit__light_control_mode)
	.ascii "__xinit_light_control_mode"
	.db	0
	.dw	0,7203
	.uleb128	16
	.db	5
	.db	3
	.dw	0,(__xinit__sample_count)
	.ascii "__xinit_sample_count"
	.db	0
	.dw	0,6869
	.uleb128	23
	.dw	0,286
	.uleb128	19
	.dw	0,7304
	.db	8
	.dw	0,7286
	.uleb128	20
	.db	1
	.uleb128	0
	.uleb128	16
	.db	5
	.db	3
	.dw	0,(__xinit__acc_amp)
	.ascii "__xinit_acc_amp"
	.db	0
	.dw	0,7291
	.uleb128	16
	.db	5
	.db	3
	.dw	0,(__xinit__acc_temp)
	.ascii "__xinit_acc_temp"
	.db	0
	.dw	0,7286
	.uleb128	16
	.db	5
	.db	3
	.dw	0,(__xinit__cur_amp)
	.ascii "__xinit_cur_amp"
	.db	0
	.dw	0,7162
	.uleb128	16
	.db	5
	.db	3
	.dw	0,(__xinit__cur_temp)
	.ascii "__xinit_cur_temp"
	.db	0
	.dw	0,7123
	.uleb128	16
	.db	5
	.db	3
	.dw	0,(__xinit__good_amp_count)
	.ascii "__xinit_good_amp_count"
	.db	0
	.dw	0,6874
	.uleb128	16
	.db	5
	.db	3
	.dw	0,(__xinit__uart1_next_idx)
	.ascii "__xinit_uart1_next_idx"
	.db	0
	.dw	0,6869
	.uleb128	16
	.db	5
	.db	3
	.dw	0,(__xinit__uart1_read_idx)
	.ascii "__xinit_uart1_read_idx"
	.db	0
	.dw	0,6869
	.uleb128	16
	.db	5
	.db	3
	.dw	0,(__xinit__uart_flag)
	.ascii "__xinit_uart_flag"
	.db	0
	.dw	0,7198
	.uleb128	16
	.db	5
	.db	3
	.dw	0,(__xinit__button_pressed)
	.ascii "__xinit_button_pressed"
	.db	0
	.dw	0,7286
	.uleb128	16
	.db	5
	.db	3
	.dw	0,(__xinit__button_unpressed)
	.ascii "__xinit_button_unpressed"
	.db	0
	.dw	0,7286
	.uleb128	16
	.db	5
	.db	3
	.dw	0,(__xinit__uart_counter)
	.ascii "__xinit_uart_counter"
	.db	0
	.dw	0,7286
	.uleb128	16
	.db	5
	.db	3
	.dw	0,(__xinit__uart_rx_state)
	.ascii "__xinit_uart_rx_state"
	.db	0
	.dw	0,6869
	.uleb128	16
	.db	5
	.db	3
	.dw	0,(__xinit__lamp_state)
	.ascii "__xinit_lamp_state"
	.db	0
	.dw	0,6869
	.uleb128	16
	.db	5
	.db	3
	.dw	0,(__xinit__log_counter)
	.ascii "__xinit_log_counter"
	.db	0
	.dw	0,7286
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
	.ascii "SerialPort1_ISR"
	.db	0
	.dw	0,373
	.ascii "uart_interrupt_init"
	.db	0
	.dw	0,407
	.ascii "PinInterrupt_ISR"
	.db	0
	.dw	0,453
	.ascii "button_interrupt_init"
	.db	0
	.dw	0,489
	.ascii "enable_ntc"
	.db	0
	.dw	0,514
	.ascii "disable_ntc"
	.db	0
	.dw	0,540
	.ascii "init_sample"
	.db	0
	.dw	0,597
	.ascii "init_peripherals_but_button_n_uart"
	.db	0
	.dw	0,646
	.ascii "sample_amps"
	.db	0
	.dw	0,672
	.ascii "sample_temperature"
	.db	0
	.dw	0,720
	.ascii "has_high_beam"
	.db	0
	.dw	0,789
	.ascii "avg_amp"
	.db	0
	.dw	0,870
	.ascii "target_amp"
	.db	0
	.dw	0,981
	.ascii "changeMode"
	.db	0
	.dw	0,1173
	.ascii "toNextMode"
	.db	0
	.dw	0,1207
	.ascii "process_uart"
	.db	0
	.dw	0,1301
	.ascii "process_button"
	.db	0
	.dw	0,1405
	.ascii "stop_leds"
	.db	0
	.dw	0,1429
	.ascii "activate_leds"
	.db	0
	.dw	0,1457
	.ascii "mode_changing_control"
	.db	0
	.dw	0,1715
	.ascii "is_stable"
	.db	0
	.dw	0,1774
	.ascii "mode_stable_control"
	.db	0
	.dw	0,1922
	.ascii "control_loop"
	.db	0
	.dw	0,2067
	.ascii "wdt_init"
	.db	0
	.dw	0,2090
	.ascii "wdt_clear"
	.db	0
	.dw	0,2114
	.ascii "main"
	.db	0
	.dw	0,2236
	.ascii "BIT_TMP"
	.db	0
	.dw	0,2270
	.ascii "uart1_rx_buffer"
	.db	0
	.dw	0,2312
	.ascii "light_mode"
	.db	0
	.dw	0,2335
	.ascii "is_uart_mode"
	.db	0
	.dw	0,2360
	.ascii "flashing_on"
	.db	0
	.dw	0,2384
	.ascii "flashing_count"
	.db	0
	.dw	0,2424
	.ascii "pwm"
	.db	0
	.dw	0,2453
	.ascii "light_control_mode"
	.db	0
	.dw	0,2484
	.ascii "sample_count"
	.db	0
	.dw	0,2522
	.ascii "acc_amp"
	.db	0
	.dw	0,2542
	.ascii "acc_temp"
	.db	0
	.dw	0,2563
	.ascii "cur_amp"
	.db	0
	.dw	0,2583
	.ascii "cur_temp"
	.db	0
	.dw	0,2617
	.ascii "good_amp_count"
	.db	0
	.dw	0,2644
	.ascii "uart1_next_idx"
	.db	0
	.dw	0,2671
	.ascii "uart1_read_idx"
	.db	0
	.dw	0,2698
	.ascii "uart_flag"
	.db	0
	.dw	0,2720
	.ascii "button_pressed"
	.db	0
	.dw	0,2747
	.ascii "button_unpressed"
	.db	0
	.dw	0,2776
	.ascii "uart_counter"
	.db	0
	.dw	0,2801
	.ascii "uart_rx_state"
	.db	0
	.dw	0,2827
	.ascii "lamp_state"
	.db	0
	.dw	0,2850
	.ascii "log_counter"
	.db	0
	.dw	0,2879
	.ascii "P0"
	.db	0
	.dw	0,2894
	.ascii "SP"
	.db	0
	.dw	0,2909
	.ascii "DPL"
	.db	0
	.dw	0,2925
	.ascii "DPH"
	.db	0
	.dw	0,2941
	.ascii "RCTRIM0"
	.db	0
	.dw	0,2961
	.ascii "RCTRIM1"
	.db	0
	.dw	0,2981
	.ascii "RWK"
	.db	0
	.dw	0,2997
	.ascii "PCON"
	.db	0
	.dw	0,3014
	.ascii "TCON"
	.db	0
	.dw	0,3031
	.ascii "TMOD"
	.db	0
	.dw	0,3048
	.ascii "TL0"
	.db	0
	.dw	0,3064
	.ascii "TL1"
	.db	0
	.dw	0,3080
	.ascii "TH0"
	.db	0
	.dw	0,3096
	.ascii "TH1"
	.db	0
	.dw	0,3112
	.ascii "CKCON"
	.db	0
	.dw	0,3130
	.ascii "WKCON"
	.db	0
	.dw	0,3148
	.ascii "P1"
	.db	0
	.dw	0,3163
	.ascii "SFRS"
	.db	0
	.dw	0,3180
	.ascii "CAPCON0"
	.db	0
	.dw	0,3200
	.ascii "CAPCON1"
	.db	0
	.dw	0,3220
	.ascii "CAPCON2"
	.db	0
	.dw	0,3240
	.ascii "CKDIV"
	.db	0
	.dw	0,3258
	.ascii "CKSWT"
	.db	0
	.dw	0,3276
	.ascii "CKEN"
	.db	0
	.dw	0,3293
	.ascii "SCON"
	.db	0
	.dw	0,3310
	.ascii "SBUF"
	.db	0
	.dw	0,3327
	.ascii "SBUF_1"
	.db	0
	.dw	0,3346
	.ascii "EIE"
	.db	0
	.dw	0,3362
	.ascii "EIE1"
	.db	0
	.dw	0,3379
	.ascii "CHPCON"
	.db	0
	.dw	0,3398
	.ascii "P2"
	.db	0
	.dw	0,3413
	.ascii "AUXR1"
	.db	0
	.dw	0,3431
	.ascii "BODCON0"
	.db	0
	.dw	0,3451
	.ascii "IAPTRG"
	.db	0
	.dw	0,3470
	.ascii "IAPUEN"
	.db	0
	.dw	0,3489
	.ascii "IAPAL"
	.db	0
	.dw	0,3507
	.ascii "IAPAH"
	.db	0
	.dw	0,3525
	.ascii "IE"
	.db	0
	.dw	0,3540
	.ascii "SADDR"
	.db	0
	.dw	0,3558
	.ascii "WDCON"
	.db	0
	.dw	0,3576
	.ascii "BODCON1"
	.db	0
	.dw	0,3596
	.ascii "P3M1"
	.db	0
	.dw	0,3613
	.ascii "P3S"
	.db	0
	.dw	0,3629
	.ascii "P3M2"
	.db	0
	.dw	0,3646
	.ascii "P3SR"
	.db	0
	.dw	0,3663
	.ascii "IAPFD"
	.db	0
	.dw	0,3681
	.ascii "IAPCN"
	.db	0
	.dw	0,3699
	.ascii "P3"
	.db	0
	.dw	0,3714
	.ascii "P0M1"
	.db	0
	.dw	0,3731
	.ascii "P0S"
	.db	0
	.dw	0,3747
	.ascii "P0M2"
	.db	0
	.dw	0,3764
	.ascii "P0SR"
	.db	0
	.dw	0,3781
	.ascii "P1M1"
	.db	0
	.dw	0,3798
	.ascii "P1S"
	.db	0
	.dw	0,3814
	.ascii "P1M2"
	.db	0
	.dw	0,3831
	.ascii "P1SR"
	.db	0
	.dw	0,3848
	.ascii "P2S"
	.db	0
	.dw	0,3864
	.ascii "IPH"
	.db	0
	.dw	0,3880
	.ascii "PWMINTC"
	.db	0
	.dw	0,3900
	.ascii "IP"
	.db	0
	.dw	0,3915
	.ascii "SADEN"
	.db	0
	.dw	0,3933
	.ascii "SADEN_1"
	.db	0
	.dw	0,3953
	.ascii "SADDR_1"
	.db	0
	.dw	0,3973
	.ascii "I2DAT"
	.db	0
	.dw	0,3991
	.ascii "I2STAT"
	.db	0
	.dw	0,4010
	.ascii "I2CLK"
	.db	0
	.dw	0,4028
	.ascii "I2TOC"
	.db	0
	.dw	0,4046
	.ascii "I2CON"
	.db	0
	.dw	0,4064
	.ascii "I2ADDR"
	.db	0
	.dw	0,4083
	.ascii "ADCRL"
	.db	0
	.dw	0,4101
	.ascii "ADCRH"
	.db	0
	.dw	0,4119
	.ascii "T3CON"
	.db	0
	.dw	0,4137
	.ascii "PWM4H"
	.db	0
	.dw	0,4155
	.ascii "RL3"
	.db	0
	.dw	0,4171
	.ascii "PWM5H"
	.db	0
	.dw	0,4189
	.ascii "RH3"
	.db	0
	.dw	0,4205
	.ascii "PIOCON1"
	.db	0
	.dw	0,4225
	.ascii "TA"
	.db	0
	.dw	0,4240
	.ascii "T2CON"
	.db	0
	.dw	0,4258
	.ascii "T2MOD"
	.db	0
	.dw	0,4276
	.ascii "RCMP2L"
	.db	0
	.dw	0,4295
	.ascii "RCMP2H"
	.db	0
	.dw	0,4314
	.ascii "TL2"
	.db	0
	.dw	0,4330
	.ascii "PWM4L"
	.db	0
	.dw	0,4348
	.ascii "TH2"
	.db	0
	.dw	0,4364
	.ascii "PWM5L"
	.db	0
	.dw	0,4382
	.ascii "ADCMPL"
	.db	0
	.dw	0,4401
	.ascii "ADCMPH"
	.db	0
	.dw	0,4420
	.ascii "PSW"
	.db	0
	.dw	0,4436
	.ascii "PWMPH"
	.db	0
	.dw	0,4454
	.ascii "PWM0H"
	.db	0
	.dw	0,4472
	.ascii "PWM1H"
	.db	0
	.dw	0,4490
	.ascii "PWM2H"
	.db	0
	.dw	0,4508
	.ascii "PWM3H"
	.db	0
	.dw	0,4526
	.ascii "PNP"
	.db	0
	.dw	0,4542
	.ascii "FBD"
	.db	0
	.dw	0,4558
	.ascii "PWMCON0"
	.db	0
	.dw	0,4578
	.ascii "PWMPL"
	.db	0
	.dw	0,4596
	.ascii "PWM0L"
	.db	0
	.dw	0,4614
	.ascii "PWM1L"
	.db	0
	.dw	0,4632
	.ascii "PWM2L"
	.db	0
	.dw	0,4650
	.ascii "PWM3L"
	.db	0
	.dw	0,4668
	.ascii "PIOCON0"
	.db	0
	.dw	0,4688
	.ascii "PWMCON1"
	.db	0
	.dw	0,4708
	.ascii "ACC"
	.db	0
	.dw	0,4724
	.ascii "ADCCON1"
	.db	0
	.dw	0,4744
	.ascii "ADCCON2"
	.db	0
	.dw	0,4764
	.ascii "ADCDLY"
	.db	0
	.dw	0,4783
	.ascii "C0L"
	.db	0
	.dw	0,4799
	.ascii "C0H"
	.db	0
	.dw	0,4815
	.ascii "C1L"
	.db	0
	.dw	0,4831
	.ascii "C1H"
	.db	0
	.dw	0,4847
	.ascii "ADCCON0"
	.db	0
	.dw	0,4867
	.ascii "PICON"
	.db	0
	.dw	0,4885
	.ascii "PINEN"
	.db	0
	.dw	0,4903
	.ascii "PIPEN"
	.db	0
	.dw	0,4921
	.ascii "PIF"
	.db	0
	.dw	0,4937
	.ascii "C2L"
	.db	0
	.dw	0,4953
	.ascii "C2H"
	.db	0
	.dw	0,4969
	.ascii "EIP"
	.db	0
	.dw	0,4985
	.ascii "B"
	.db	0
	.dw	0,4999
	.ascii "CAPCON3"
	.db	0
	.dw	0,5019
	.ascii "CAPCON4"
	.db	0
	.dw	0,5039
	.ascii "SPCR"
	.db	0
	.dw	0,5056
	.ascii "SPCR2"
	.db	0
	.dw	0,5074
	.ascii "SPSR"
	.db	0
	.dw	0,5091
	.ascii "SPDR"
	.db	0
	.dw	0,5108
	.ascii "AINDIDS"
	.db	0
	.dw	0,5128
	.ascii "EIPH"
	.db	0
	.dw	0,5145
	.ascii "SCON_1"
	.db	0
	.dw	0,5164
	.ascii "PDTEN"
	.db	0
	.dw	0,5182
	.ascii "PDTCNT"
	.db	0
	.dw	0,5201
	.ascii "PMEN"
	.db	0
	.dw	0,5218
	.ascii "PMD"
	.db	0
	.dw	0,5234
	.ascii "EIP1"
	.db	0
	.dw	0,5251
	.ascii "EIPH1"
	.db	0
	.dw	0,5283
	.ascii "SM0_1"
	.db	0
	.dw	0,5301
	.ascii "FE_1"
	.db	0
	.dw	0,5318
	.ascii "SM1_1"
	.db	0
	.dw	0,5336
	.ascii "SM2_1"
	.db	0
	.dw	0,5354
	.ascii "REN_1"
	.db	0
	.dw	0,5372
	.ascii "TB8_1"
	.db	0
	.dw	0,5390
	.ascii "RB8_1"
	.db	0
	.dw	0,5408
	.ascii "TI_1"
	.db	0
	.dw	0,5425
	.ascii "RI_1"
	.db	0
	.dw	0,5442
	.ascii "ADCF"
	.db	0
	.dw	0,5459
	.ascii "ADCS"
	.db	0
	.dw	0,5476
	.ascii "ETGSEL1"
	.db	0
	.dw	0,5496
	.ascii "ETGSEL0"
	.db	0
	.dw	0,5516
	.ascii "ADCHS3"
	.db	0
	.dw	0,5535
	.ascii "ADCHS2"
	.db	0
	.dw	0,5554
	.ascii "ADCHS1"
	.db	0
	.dw	0,5573
	.ascii "ADCHS0"
	.db	0
	.dw	0,5592
	.ascii "PWMRUN"
	.db	0
	.dw	0,5611
	.ascii "LOAD"
	.db	0
	.dw	0,5628
	.ascii "PWMF"
	.db	0
	.dw	0,5645
	.ascii "CLRPWM"
	.db	0
	.dw	0,5664
	.ascii "CY"
	.db	0
	.dw	0,5679
	.ascii "AC"
	.db	0
	.dw	0,5694
	.ascii "F0"
	.db	0
	.dw	0,5709
	.ascii "RS1"
	.db	0
	.dw	0,5725
	.ascii "RS0"
	.db	0
	.dw	0,5741
	.ascii "OV"
	.db	0
	.dw	0,5756
	.ascii "P"
	.db	0
	.dw	0,5770
	.ascii "TF2"
	.db	0
	.dw	0,5786
	.ascii "TR2"
	.db	0
	.dw	0,5802
	.ascii "CM_RL2"
	.db	0
	.dw	0,5821
	.ascii "I2CEN"
	.db	0
	.dw	0,5839
	.ascii "STA"
	.db	0
	.dw	0,5855
	.ascii "STO"
	.db	0
	.dw	0,5871
	.ascii "SI"
	.db	0
	.dw	0,5886
	.ascii "AA"
	.db	0
	.dw	0,5901
	.ascii "I2CPX"
	.db	0
	.dw	0,5919
	.ascii "PADC"
	.db	0
	.dw	0,5936
	.ascii "PBOD"
	.db	0
	.dw	0,5953
	.ascii "PS"
	.db	0
	.dw	0,5968
	.ascii "PT1"
	.db	0
	.dw	0,5984
	.ascii "PX1"
	.db	0
	.dw	0,6000
	.ascii "PT0"
	.db	0
	.dw	0,6016
	.ascii "PX0"
	.db	0
	.dw	0,6032
	.ascii "P30"
	.db	0
	.dw	0,6048
	.ascii "EA"
	.db	0
	.dw	0,6063
	.ascii "EADC"
	.db	0
	.dw	0,6080
	.ascii "EBOD"
	.db	0
	.dw	0,6097
	.ascii "ES"
	.db	0
	.dw	0,6112
	.ascii "ET1"
	.db	0
	.dw	0,6128
	.ascii "EX1"
	.db	0
	.dw	0,6144
	.ascii "ET0"
	.db	0
	.dw	0,6160
	.ascii "EX0"
	.db	0
	.dw	0,6176
	.ascii "P20"
	.db	0
	.dw	0,6192
	.ascii "SM0"
	.db	0
	.dw	0,6208
	.ascii "FE"
	.db	0
	.dw	0,6223
	.ascii "SM1"
	.db	0
	.dw	0,6239
	.ascii "SM2"
	.db	0
	.dw	0,6255
	.ascii "REN"
	.db	0
	.dw	0,6271
	.ascii "TB8"
	.db	0
	.dw	0,6287
	.ascii "RB8"
	.db	0
	.dw	0,6303
	.ascii "TI"
	.db	0
	.dw	0,6318
	.ascii "RI"
	.db	0
	.dw	0,6333
	.ascii "P17"
	.db	0
	.dw	0,6349
	.ascii "P16"
	.db	0
	.dw	0,6365
	.ascii "TXD_1"
	.db	0
	.dw	0,6383
	.ascii "P15"
	.db	0
	.dw	0,6399
	.ascii "P14"
	.db	0
	.dw	0,6415
	.ascii "SDA"
	.db	0
	.dw	0,6431
	.ascii "P13"
	.db	0
	.dw	0,6447
	.ascii "SCL"
	.db	0
	.dw	0,6463
	.ascii "P12"
	.db	0
	.dw	0,6479
	.ascii "P11"
	.db	0
	.dw	0,6495
	.ascii "P10"
	.db	0
	.dw	0,6511
	.ascii "TF1"
	.db	0
	.dw	0,6527
	.ascii "TR1"
	.db	0
	.dw	0,6543
	.ascii "TF0"
	.db	0
	.dw	0,6559
	.ascii "TR0"
	.db	0
	.dw	0,6575
	.ascii "IE1"
	.db	0
	.dw	0,6591
	.ascii "IT1"
	.db	0
	.dw	0,6607
	.ascii "IE0"
	.db	0
	.dw	0,6623
	.ascii "IT0"
	.db	0
	.dw	0,6639
	.ascii "P07"
	.db	0
	.dw	0,6655
	.ascii "RXD"
	.db	0
	.dw	0,6671
	.ascii "P06"
	.db	0
	.dw	0,6687
	.ascii "TXD"
	.db	0
	.dw	0,6703
	.ascii "P05"
	.db	0
	.dw	0,6719
	.ascii "P04"
	.db	0
	.dw	0,6735
	.ascii "STADC"
	.db	0
	.dw	0,6753
	.ascii "P03"
	.db	0
	.dw	0,6769
	.ascii "P02"
	.db	0
	.dw	0,6785
	.ascii "RXD_1"
	.db	0
	.dw	0,6803
	.ascii "P01"
	.db	0
	.dw	0,6819
	.ascii "MISO"
	.db	0
	.dw	0,6836
	.ascii "P00"
	.db	0
	.dw	0,6852
	.ascii "MOSI"
	.db	0
	.dw	0,6900
	.ascii "max_amp"
	.db	0
	.dw	0,6920
	.ascii "min_amp"
	.db	0
	.dw	0,6953
	.ascii "flashing"
	.db	0
	.dw	0,6974
	.ascii "temp_controlling"
	.db	0
	.dw	0,7003
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
	.dw	0,(Smain$main$532)	;initial loc
	.dw	0,Smain$main$586-Smain$main$532
	.db	1
	.dw	0,(Smain$main$532)
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
	.dw	0,(Smain$wdt_clear$521)	;initial loc
	.dw	0,Smain$wdt_clear$530-Smain$wdt_clear$521
	.db	1
	.dw	0,(Smain$wdt_clear$521)
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
	.dw	0,(Smain$wdt_init$507)	;initial loc
	.dw	0,Smain$wdt_init$519-Smain$wdt_init$507
	.db	1
	.dw	0,(Smain$wdt_init$507)
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
	.dw	0,(Smain$control_loop$469)	;initial loc
	.dw	0,Smain$control_loop$505-Smain$control_loop$469
	.db	1
	.dw	0,(Smain$control_loop$469)
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
	.dw	0,(Smain$mode_stable_control$443)	;initial loc
	.dw	0,Smain$mode_stable_control$467-Smain$mode_stable_control$443
	.db	1
	.dw	0,(Smain$mode_stable_control$443)
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
	.dw	0,(Smain$is_stable$429)	;initial loc
	.dw	0,Smain$is_stable$441-Smain$is_stable$429
	.db	1
	.dw	0,(Smain$is_stable$429)
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
	.dw	0,(Smain$mode_changing_control$351)	;initial loc
	.dw	0,Smain$mode_changing_control$427-Smain$mode_changing_control$351
	.db	1
	.dw	0,(Smain$mode_changing_control$351)
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
	.dw	0,(Smain$activate_leds$340)	;initial loc
	.dw	0,Smain$activate_leds$349-Smain$activate_leds$340
	.db	1
	.dw	0,(Smain$activate_leds$340)
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
	.dw	0,(Smain$stop_leds$327)	;initial loc
	.dw	0,Smain$stop_leds$338-Smain$stop_leds$327
	.db	1
	.dw	0,(Smain$stop_leds$327)
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
	.dw	0,(Smain$process_button$295)	;initial loc
	.dw	0,Smain$process_button$325-Smain$process_button$295
	.db	1
	.dw	0,(Smain$process_button$295)
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
	.dw	0,(Smain$process_uart$242)	;initial loc
	.dw	0,Smain$process_uart$293-Smain$process_uart$242
	.db	1
	.dw	0,(Smain$process_uart$242)
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
	.dw	0,(Smain$toNextMode$236)	;initial loc
	.dw	0,Smain$toNextMode$240-Smain$toNextMode$236
	.db	1
	.dw	0,(Smain$toNextMode$236)
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
	.dw	0,(Smain$changeMode$190)	;initial loc
	.dw	0,Smain$changeMode$234-Smain$changeMode$190
	.db	1
	.dw	0,(Smain$changeMode$190)
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
	.dw	0,(Smain$target_amp$171)	;initial loc
	.dw	0,Smain$target_amp$188-Smain$target_amp$171
	.db	1
	.dw	0,(Smain$target_amp$171)
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
	.dw	0,(Smain$avg_amp$159)	;initial loc
	.dw	0,Smain$avg_amp$169-Smain$avg_amp$159
	.db	1
	.dw	0,(Smain$avg_amp$159)
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
	.dw	0,(Smain$has_high_beam$153)	;initial loc
	.dw	0,Smain$has_high_beam$157-Smain$has_high_beam$153
	.db	1
	.dw	0,(Smain$has_high_beam$153)
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
	.dw	0,(Smain$sample_temperature$142)	;initial loc
	.dw	0,Smain$sample_temperature$151-Smain$sample_temperature$142
	.db	1
	.dw	0,(Smain$sample_temperature$142)
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
	.dw	0,(Smain$sample_amps$125)	;initial loc
	.dw	0,Smain$sample_amps$140-Smain$sample_amps$125
	.db	1
	.dw	0,(Smain$sample_amps$125)
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
	.dw	0,(Smain$init_peripherals_but_button_n_uart$95)	;initial loc
	.dw	0,Smain$init_peripherals_but_button_n_uart$123-Smain$init_peripherals_but_button_n_uart$95
	.db	1
	.dw	0,(Smain$init_peripherals_but_button_n_uart$95)
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
	.dw	0,(Smain$init_sample$79)	;initial loc
	.dw	0,Smain$init_sample$93-Smain$init_sample$79
	.db	1
	.dw	0,(Smain$init_sample$79)
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
	.dw	0,(Smain$disable_ntc$72)	;initial loc
	.dw	0,Smain$disable_ntc$77-Smain$disable_ntc$72
	.db	1
	.dw	0,(Smain$disable_ntc$72)
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
	.dw	0,(Smain$enable_ntc$65)	;initial loc
	.dw	0,Smain$enable_ntc$70-Smain$enable_ntc$65
	.db	1
	.dw	0,(Smain$enable_ntc$65)
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
	.dw	0,(Smain$button_interrupt_init$56)	;initial loc
	.dw	0,Smain$button_interrupt_init$63-Smain$button_interrupt_init$56
	.db	1
	.dw	0,(Smain$button_interrupt_init$56)
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
	.dw	0,(Smain$PinInterrupt_ISR$44)	;initial loc
	.dw	0,Smain$PinInterrupt_ISR$54-Smain$PinInterrupt_ISR$44
	.db	1
	.dw	0,(Smain$PinInterrupt_ISR$44)
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
	.dw	0,(Smain$uart_interrupt_init$37)	;initial loc
	.dw	0,Smain$uart_interrupt_init$42-Smain$uart_interrupt_init$37
	.db	1
	.dw	0,(Smain$uart_interrupt_init$37)
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
	.dw	0,(Smain$SerialPort1_ISR$20)	;initial loc
	.dw	0,Smain$SerialPort1_ISR$35-Smain$SerialPort1_ISR$20
	.db	1
	.dw	0,(Smain$SerialPort1_ISR$20)
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
	.dw	0,(Smain$Timer0_Delay$1)	;initial loc
	.dw	0,Smain$Timer0_Delay$18-Smain$Timer0_Delay$1
	.db	1
	.dw	0,(Smain$Timer0_Delay$1)
	.db	14
	.uleb128	2
	.db	0
