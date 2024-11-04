;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.6 #13647 (MINGW32)
;--------------------------------------------------------
	.module uart
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
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
	.globl _UART_Send_Data_PARM_2
	.globl _UART_Open_PARM_3
	.globl _UART_Open_PARM_2
	.globl _uart1_receive_data
	.globl _uart0_receive_data
	.globl _uart1_receive_flag
	.globl _uart0_receive_flag
	.globl _PRINTFG
	.globl _UART_Open
	.globl _Receive_Data
	.globl _UART_Send_Data
	.globl _Enable_UART0_VCOM_printf_24M_115200
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
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area INITIALIZED
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
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
G$PRINTFG$0_0$0==.
_PRINTFG::
	.ds 1
G$uart0_receive_flag$0_0$0==.
_uart0_receive_flag::
	.ds 1
G$uart1_receive_flag$0_0$0==.
_uart1_receive_flag::
	.ds 1
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
G$uart0_receive_data$0_0$0==.
_uart0_receive_data::
	.ds 1
G$uart1_receive_data$0_0$0==.
_uart1_receive_data::
	.ds 1
Luart.UART_Open$u8UARTPort$1_0$145==.
_UART_Open_PARM_2:
	.ds 1
Luart.UART_Open$u32Baudrate$1_0$145==.
_UART_Open_PARM_3:
	.ds 4
Luart.UART_Open$u32SysClock$1_0$145==.
_UART_Open_u32SysClock_65536_145:
	.ds 4
Luart.Receive_Data$UARTPort$1_0$148==.
_Receive_Data_UARTPort_65536_148:
	.ds 1
Luart.Receive_Data$c$1_0$149==.
_Receive_Data_c_65536_149:
	.ds 1
Luart.UART_Send_Data$c$1_0$151==.
_UART_Send_Data_PARM_2:
	.ds 1
Luart.UART_Send_Data$UARTPort$1_0$151==.
_UART_Send_Data_UARTPort_65536_151:
	.ds 1
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; initialized external ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
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
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'UART_Open'
;------------------------------------------------------------
;u8UARTPort                Allocated with name '_UART_Open_PARM_2'
;u32Baudrate               Allocated with name '_UART_Open_PARM_3'
;u32SysClock               Allocated with name '_UART_Open_u32SysClock_65536_145'
;------------------------------------------------------------
	Suart$UART_Open$0 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/uart.c:82: void UART_Open(uint32_t u32SysClock, uint8_t u8UARTPort,uint32_t u32Baudrate)
;	-----------------------------------------
;	 function UART_Open
;	-----------------------------------------
_UART_Open:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	Suart$UART_Open$1 ==.
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
	mov	r4,a
	mov	dptr,#_UART_Open_u32SysClock_65536_145
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
	Suart$UART_Open$2 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/uart.c:84: switch(u8UARTPort)
	mov	dptr,#_UART_Open_PARM_2
	movx	a,@dptr
	mov	r7,a
	jz	00101$
	cjne	r7,#0x01,00120$
	ljmp	00102$
00120$:
	cjne	r7,#0x02,00121$
	ljmp	00103$
00121$:
	ljmp	00105$
	Suart$UART_Open$3 ==.
	Suart$UART_Open$4 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/uart.c:86: case UART0_Timer1:
00101$:
	Suart$UART_Open$5 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/uart.c:87: SCON = 0x50;       //UART0 Mode1,REN=1,TI=1
	mov	_SCON,#0x50
	Suart$UART_Open$6 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/uart.c:88: TMOD |= 0x20;      //Timer1 Mode1
	orl	_TMOD,#0x20
	Suart$UART_Open$7 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/uart.c:89: set_PCON_SMOD;          //UART0 Double Rate Enable
	orl	_PCON,#0x80
	Suart$UART_Open$8 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/uart.c:90: set_CKCON_T1M;
	orl	_CKCON,#0x10
	Suart$UART_Open$9 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/uart.c:91: clr_T3CON_BRCK;          //Serial port 0 baud rate clock source = Timer1
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
	anl	_T3CON,#0xdf
	Suart$UART_Open$10 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/uart.c:92: TH1 = 256 - (u32SysClock/16/u32Baudrate);
	mov	dptr,#_UART_Open_u32SysClock_65536_145
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
	mov	a,r5
	swap	a
	xch	a,r4
	swap	a
	anl	a,#0x0f
	xrl	a,r4
	xch	a,r4
	anl	a,#0x0f
	xch	a,r4
	xrl	a,r4
	xch	a,r4
	mov	r5,a
	mov	a,r6
	swap	a
	anl	a,#0xf0
	orl	a,r5
	mov	r5,a
	mov	a,r7
	swap	a
	xch	a,r6
	swap	a
	anl	a,#0x0f
	xrl	a,r6
	xch	a,r6
	anl	a,#0x0f
	xch	a,r6
	xrl	a,r6
	xch	a,r6
	mov	r7,a
	mov	dptr,#_UART_Open_PARM_3
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
	Suart$UART_Open$11 ==.
	mov	dptr,#__divulong_PARM_2
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
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	__divulong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	clr	c
	clr	a
	subb	a,r4
	mov	_TH1,a
	Suart$UART_Open$12 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/uart.c:93: set_TCON_TR1;
;	assignBit
	setb	_TR1
	Suart$UART_Open$13 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/uart.c:94: break;
	ljmp	00105$
	Suart$UART_Open$14 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/uart.c:96: case UART0_Timer3:
00102$:
	Suart$UART_Open$15 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/uart.c:97: SCON = 0x50;     //UART0 Mode1,REN=1,TI=1
	mov	_SCON,#0x50
	Suart$UART_Open$16 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/uart.c:98: set_PCON_SMOD;        //UART0 Double Rate Enable
	orl	_PCON,#0x80
	Suart$UART_Open$17 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/uart.c:99: T3CON &= 0xF8;   //T3PS2=0,T3PS1=0,T3PS0=0(Prescale=1)
	anl	_T3CON,#0xf8
	Suart$UART_Open$18 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/uart.c:100: set_T3CON_BRCK;        //UART0 baud rate clock source = Timer3
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
	orl	_T3CON,#0x20
	Suart$UART_Open$19 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/uart.c:101: RH3    = HIBYTE(65536 - (u32SysClock/16/u32Baudrate));  
	mov	dptr,#_UART_Open_u32SysClock_65536_145
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
	mov	a,r5
	swap	a
	xch	a,r4
	swap	a
	anl	a,#0x0f
	xrl	a,r4
	xch	a,r4
	anl	a,#0x0f
	xch	a,r4
	xrl	a,r4
	xch	a,r4
	mov	r5,a
	mov	a,r6
	swap	a
	anl	a,#0xf0
	orl	a,r5
	mov	r5,a
	mov	a,r7
	swap	a
	xch	a,r6
	swap	a
	anl	a,#0x0f
	xrl	a,r6
	xch	a,r6
	anl	a,#0x0f
	xch	a,r6
	xrl	a,r6
	xch	a,r6
	mov	r7,a
	mov	dptr,#_UART_Open_PARM_3
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
	mov	dptr,#__divulong_PARM_2
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
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	__divulong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	clr	a
	clr	c
	subb	a,r4
	mov	r0,a
	clr	a
	subb	a,r5
	mov	r1,a
	mov	a,#0x01
	subb	a,r6
	mov	r2,a
	clr	a
	subb	a,r7
	mov	r3,a
	mov	_RH3,r1
	Suart$UART_Open$20 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/uart.c:102: RL3    = LOBYTE(65536 - (u32SysClock/16/u32Baudrate));  
	clr	c
	clr	a
	subb	a,r4
	mov	r4,a
	mov	_RL3,r4
	Suart$UART_Open$21 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/uart.c:103: set_T3CON_TR3;         //Trigger Timer3
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
	orl	_T3CON,#0x08
	Suart$UART_Open$22 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/uart.c:104: break;
	ljmp	00105$
	Suart$UART_Open$23 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/uart.c:106: case UART1_Timer3:
00103$:
	Suart$UART_Open$24 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/uart.c:107: SCON_1 = 0x50;     //UART1 Mode1,REN_1=1,TI_1=1
	mov	_SCON_1,#0x50
	Suart$UART_Open$25 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/uart.c:108: T3CON = 0x80;     //T3PS2=0,T3PS1=0,T3PS0=0(Prescale=1), UART1 in MODE 1
	mov	_T3CON,#0x80
	Suart$UART_Open$26 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/uart.c:109: RH3    = HIBYTE(65536 - (u32SysClock/16/u32Baudrate));  
	mov	dptr,#_UART_Open_u32SysClock_65536_145
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
	mov	a,r5
	swap	a
	xch	a,r4
	swap	a
	anl	a,#0x0f
	xrl	a,r4
	xch	a,r4
	anl	a,#0x0f
	xch	a,r4
	xrl	a,r4
	xch	a,r4
	mov	r5,a
	mov	a,r6
	swap	a
	anl	a,#0xf0
	orl	a,r5
	mov	r5,a
	mov	a,r7
	swap	a
	xch	a,r6
	swap	a
	anl	a,#0x0f
	xrl	a,r6
	xch	a,r6
	anl	a,#0x0f
	xch	a,r6
	xrl	a,r6
	xch	a,r6
	mov	r7,a
	mov	dptr,#_UART_Open_PARM_3
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
	mov	dptr,#__divulong_PARM_2
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
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	__divulong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	clr	a
	clr	c
	subb	a,r4
	mov	r0,a
	clr	a
	subb	a,r5
	mov	r1,a
	mov	a,#0x01
	subb	a,r6
	mov	r2,a
	clr	a
	subb	a,r7
	mov	r3,a
	mov	_RH3,r1
	Suart$UART_Open$27 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/uart.c:110: RL3    = LOBYTE(65536 - (u32SysClock/16/u32Baudrate));     
	clr	c
	clr	a
	subb	a,r4
	mov	r4,a
	mov	_RL3,r4
	Suart$UART_Open$28 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/uart.c:111: set_T3CON_TR3;             //Trigger Timer3                                                             
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
	orl	_T3CON,#0x08
	Suart$UART_Open$29 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/uart.c:113: }
00105$:
	Suart$UART_Open$30 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/uart.c:114: }
	Suart$UART_Open$31 ==.
	XG$UART_Open$0$0 ==.
	ret
	Suart$UART_Open$32 ==.
;------------------------------------------------------------
;Allocation info for local variables in function 'Receive_Data'
;------------------------------------------------------------
;UARTPort                  Allocated with name '_Receive_Data_UARTPort_65536_148'
;c                         Allocated with name '_Receive_Data_c_65536_149'
;------------------------------------------------------------
	Suart$Receive_Data$33 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/uart.c:116: uint8_t Receive_Data(uint8_t UARTPort)
;	-----------------------------------------
;	 function Receive_Data
;	-----------------------------------------
_Receive_Data:
	Suart$Receive_Data$34 ==.
	mov	a,dpl
	mov	dptr,#_Receive_Data_UARTPort_65536_148
	movx	@dptr,a
	Suart$Receive_Data$35 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/uart.c:119: c = 0;
	mov	dptr,#_Receive_Data_c_65536_149
	clr	a
	movx	@dptr,a
	Suart$Receive_Data$36 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/uart.c:120: switch (UARTPort)
	mov	dptr,#_Receive_Data_UARTPort_65536_148
	movx	a,@dptr
	mov	r7,a
	jz	00102$
	Suart$Receive_Data$37 ==.
	Suart$Receive_Data$38 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/uart.c:123: while (!RI);
	cjne	r7,#0x01,00109$
	sjmp	00106$
00102$:
	jnb	_RI,00102$
	Suart$Receive_Data$39 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/uart.c:124: c = SBUF;
	mov	dptr,#_Receive_Data_c_65536_149
	mov	a,_SBUF
	movx	@dptr,a
	Suart$Receive_Data$40 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/uart.c:125: RI = 0;
;	assignBit
	clr	_RI
	Suart$Receive_Data$41 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/uart.c:126: break;
	Suart$Receive_Data$42 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/uart.c:128: while (!RI_1);
	sjmp	00109$
00106$:
	jnb	_RI_1,00106$
	Suart$Receive_Data$43 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/uart.c:129: c = SBUF_1;
	mov	dptr,#_Receive_Data_c_65536_149
	mov	a,_SBUF_1
	movx	@dptr,a
	Suart$Receive_Data$44 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/uart.c:130: RI_1 = 0;
;	assignBit
	clr	_RI_1
	Suart$Receive_Data$45 ==.
	Suart$Receive_Data$46 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/uart.c:132: }
00109$:
	Suart$Receive_Data$47 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/uart.c:133: return (c);
	mov	dptr,#_Receive_Data_c_65536_149
	movx	a,@dptr
	Suart$Receive_Data$48 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/uart.c:134: }
	Suart$Receive_Data$49 ==.
	XG$Receive_Data$0$0 ==.
	mov	dpl,a
	ret
	Suart$Receive_Data$50 ==.
;------------------------------------------------------------
;Allocation info for local variables in function 'UART_Send_Data'
;------------------------------------------------------------
;c                         Allocated with name '_UART_Send_Data_PARM_2'
;UARTPort                  Allocated with name '_UART_Send_Data_UARTPort_65536_151'
;------------------------------------------------------------
	Suart$UART_Send_Data$51 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/uart.c:136: void UART_Send_Data(uint8_t UARTPort, uint8_t c)
;	-----------------------------------------
;	 function UART_Send_Data
;	-----------------------------------------
_UART_Send_Data:
	Suart$UART_Send_Data$52 ==.
	mov	a,dpl
	mov	dptr,#_UART_Send_Data_UARTPort_65536_151
	movx	@dptr,a
	Suart$UART_Send_Data$53 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/uart.c:138: DISABLE_UART1_INTERRUPT;
	anl	_EIE1,#0xfe
	Suart$UART_Send_Data$54 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/uart.c:139: switch (UARTPort)
	mov	dptr,#_UART_Send_Data_UARTPort_65536_151
	movx	a,@dptr
	mov	r7,a
	jz	00101$
	Suart$UART_Send_Data$55 ==.
	Suart$UART_Send_Data$56 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/uart.c:141: case UART0:
	cjne	r7,#0x01,00109$
	sjmp	00105$
00101$:
	Suart$UART_Send_Data$57 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/uart.c:142: SBUF = c;
	mov	dptr,#_UART_Send_Data_PARM_2
	movx	a,@dptr
	mov	_SBUF,a
	Suart$UART_Send_Data$58 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/uart.c:143: while(!TI);
00102$:
	Suart$UART_Send_Data$59 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/uart.c:144: TI=0;
;	assignBit
	jbc	_TI,00109$
	Suart$UART_Send_Data$60 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/uart.c:145: break;
	Suart$UART_Send_Data$61 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/uart.c:146: case UART1:
	sjmp	00102$
00105$:
	Suart$UART_Send_Data$62 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/uart.c:147: SBUF_1 = c;
	mov	dptr,#_UART_Send_Data_PARM_2
	movx	a,@dptr
	mov	_SBUF_1,a
	Suart$UART_Send_Data$63 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/uart.c:148: while(!TI_1);
00106$:
	Suart$UART_Send_Data$64 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/uart.c:149: TI_1=0;
;	assignBit
	jbc	_TI_1,00139$
	sjmp	00106$
00139$:
	Suart$UART_Send_Data$65 ==.
	Suart$UART_Send_Data$66 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/uart.c:151: }
00109$:
	Suart$UART_Send_Data$67 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/uart.c:152: ENABLE_UART1_INTERRUPT;
	orl	_EIE1,#0x01
	Suart$UART_Send_Data$68 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/uart.c:153: }
	Suart$UART_Send_Data$69 ==.
	XG$UART_Send_Data$0$0 ==.
	ret
	Suart$UART_Send_Data$70 ==.
;------------------------------------------------------------
;Allocation info for local variables in function 'Enable_UART0_VCOM_printf_24M_115200'
;------------------------------------------------------------
	Suart$Enable_UART0_VCOM_printf_24M_115200$71 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/uart.c:155: void Enable_UART0_VCOM_printf_24M_115200(void)
;	-----------------------------------------
;	 function Enable_UART0_VCOM_printf_24M_115200
;	-----------------------------------------
_Enable_UART0_VCOM_printf_24M_115200:
	Suart$Enable_UART0_VCOM_printf_24M_115200$72 ==.
	Suart$Enable_UART0_VCOM_printf_24M_115200$73 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/uart.c:157: P06_QUASI_MODE;
	anl	_P0M1,#0xbf
	anl	_P0M2,#0xbf
	Suart$Enable_UART0_VCOM_printf_24M_115200$74 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/uart.c:158: UART_Open(24000000,UART0_Timer1,115200);
	mov	dptr,#_UART_Open_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#_UART_Open_PARM_3
	movx	@dptr,a
	mov	a,#0xc2
	inc	dptr
	movx	@dptr,a
	mov	a,#0x01
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x3600
	mov	b,#0x6e
	mov	a,#0x01
	lcall	_UART_Open
	Suart$Enable_UART0_VCOM_printf_24M_115200$75 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/uart.c:159: ENABLE_UART0_PRINTF;
;	assignBit
	setb	_TI
;	assignBit
	setb	_PRINTFG
	Suart$Enable_UART0_VCOM_printf_24M_115200$76 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/uart.c:160: DISABLE_UART0_INTERRUPT;
;	assignBit
	clr	_ES
	Suart$Enable_UART0_VCOM_printf_24M_115200$77 ==.
;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/uart.c:161: }
	Suart$Enable_UART0_VCOM_printf_24M_115200$78 ==.
	XG$Enable_UART0_VCOM_printf_24M_115200$0$0 ==.
	ret
	Suart$Enable_UART0_VCOM_printf_24M_115200$79 ==.
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
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
	.ascii "C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/uart.c"
	.db	0
	.uleb128	0
	.uleb128	0
	.uleb128	0
	.db	0
Ldebug_line_stmt:
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Suart$UART_Open$0)
	.db	3
	.sleb128	81
	.db	1
	.db	9
	.dw	Suart$UART_Open$2-Suart$UART_Open$0
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Suart$UART_Open$4-Suart$UART_Open$2
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Suart$UART_Open$5-Suart$UART_Open$4
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Suart$UART_Open$6-Suart$UART_Open$5
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Suart$UART_Open$7-Suart$UART_Open$6
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Suart$UART_Open$8-Suart$UART_Open$7
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Suart$UART_Open$9-Suart$UART_Open$8
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Suart$UART_Open$10-Suart$UART_Open$9
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Suart$UART_Open$12-Suart$UART_Open$10
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Suart$UART_Open$13-Suart$UART_Open$12
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Suart$UART_Open$14-Suart$UART_Open$13
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Suart$UART_Open$15-Suart$UART_Open$14
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Suart$UART_Open$16-Suart$UART_Open$15
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Suart$UART_Open$17-Suart$UART_Open$16
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Suart$UART_Open$18-Suart$UART_Open$17
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Suart$UART_Open$19-Suart$UART_Open$18
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Suart$UART_Open$20-Suart$UART_Open$19
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Suart$UART_Open$21-Suart$UART_Open$20
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Suart$UART_Open$22-Suart$UART_Open$21
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Suart$UART_Open$23-Suart$UART_Open$22
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Suart$UART_Open$24-Suart$UART_Open$23
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Suart$UART_Open$25-Suart$UART_Open$24
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Suart$UART_Open$26-Suart$UART_Open$25
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Suart$UART_Open$27-Suart$UART_Open$26
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Suart$UART_Open$28-Suart$UART_Open$27
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Suart$UART_Open$29-Suart$UART_Open$28
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Suart$UART_Open$30-Suart$UART_Open$29
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Suart$UART_Open$31-Suart$UART_Open$30
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Suart$Receive_Data$33)
	.db	3
	.sleb128	115
	.db	1
	.db	9
	.dw	Suart$Receive_Data$35-Suart$Receive_Data$33
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Suart$Receive_Data$36-Suart$Receive_Data$35
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Suart$Receive_Data$38-Suart$Receive_Data$36
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Suart$Receive_Data$39-Suart$Receive_Data$38
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Suart$Receive_Data$40-Suart$Receive_Data$39
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Suart$Receive_Data$41-Suart$Receive_Data$40
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Suart$Receive_Data$42-Suart$Receive_Data$41
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Suart$Receive_Data$43-Suart$Receive_Data$42
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Suart$Receive_Data$44-Suart$Receive_Data$43
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Suart$Receive_Data$46-Suart$Receive_Data$44
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Suart$Receive_Data$47-Suart$Receive_Data$46
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Suart$Receive_Data$48-Suart$Receive_Data$47
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Suart$Receive_Data$49-Suart$Receive_Data$48
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Suart$UART_Send_Data$51)
	.db	3
	.sleb128	135
	.db	1
	.db	9
	.dw	Suart$UART_Send_Data$53-Suart$UART_Send_Data$51
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Suart$UART_Send_Data$54-Suart$UART_Send_Data$53
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Suart$UART_Send_Data$56-Suart$UART_Send_Data$54
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Suart$UART_Send_Data$57-Suart$UART_Send_Data$56
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Suart$UART_Send_Data$58-Suart$UART_Send_Data$57
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Suart$UART_Send_Data$59-Suart$UART_Send_Data$58
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Suart$UART_Send_Data$60-Suart$UART_Send_Data$59
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Suart$UART_Send_Data$61-Suart$UART_Send_Data$60
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Suart$UART_Send_Data$62-Suart$UART_Send_Data$61
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Suart$UART_Send_Data$63-Suart$UART_Send_Data$62
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Suart$UART_Send_Data$64-Suart$UART_Send_Data$63
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Suart$UART_Send_Data$66-Suart$UART_Send_Data$64
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Suart$UART_Send_Data$67-Suart$UART_Send_Data$66
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Suart$UART_Send_Data$68-Suart$UART_Send_Data$67
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Suart$UART_Send_Data$69-Suart$UART_Send_Data$68
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Suart$Enable_UART0_VCOM_printf_24M_115200$71)
	.db	3
	.sleb128	154
	.db	1
	.db	9
	.dw	Suart$Enable_UART0_VCOM_printf_24M_115200$73-Suart$Enable_UART0_VCOM_printf_24M_115200$71
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Suart$Enable_UART0_VCOM_printf_24M_115200$74-Suart$Enable_UART0_VCOM_printf_24M_115200$73
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Suart$Enable_UART0_VCOM_printf_24M_115200$75-Suart$Enable_UART0_VCOM_printf_24M_115200$74
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Suart$Enable_UART0_VCOM_printf_24M_115200$76-Suart$Enable_UART0_VCOM_printf_24M_115200$75
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Suart$Enable_UART0_VCOM_printf_24M_115200$77-Suart$Enable_UART0_VCOM_printf_24M_115200$76
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Suart$Enable_UART0_VCOM_printf_24M_115200$78-Suart$Enable_UART0_VCOM_printf_24M_115200$77
	.db	0
	.uleb128	1
	.db	1
Ldebug_line_end:

	.area .debug_loc (NOLOAD)
Ldebug_loc_start:
	.dw	0,(Suart$Enable_UART0_VCOM_printf_24M_115200$72)
	.dw	0,(Suart$Enable_UART0_VCOM_printf_24M_115200$79)
	.dw	2
	.db	134
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Suart$UART_Send_Data$52)
	.dw	0,(Suart$UART_Send_Data$70)
	.dw	2
	.db	134
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Suart$Receive_Data$34)
	.dw	0,(Suart$Receive_Data$50)
	.dw	2
	.db	134
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Suart$UART_Open$1)
	.dw	0,(Suart$UART_Open$32)
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
	.uleb128	7
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
	.uleb128	8
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
	.uleb128	11
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
	.uleb128	12
	.uleb128	53
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
	.ascii "C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/uart.c"
	.db	0
	.dw	0,(Ldebug_line_start+-4)
	.db	1
	.ascii "SDCC version 4.2.6 #13647"
	.db	0
	.uleb128	2
	.dw	0,255
	.ascii "UART_Open"
	.db	0
	.dw	0,(_UART_Open)
	.dw	0,(XG$UART_Open$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+60)
	.uleb128	3
	.db	5
	.db	3
	.dw	0,(_UART_Open_u32SysClock_65536_145)
	.ascii "u32SysClock"
	.db	0
	.dw	0,255
	.uleb128	4
	.ascii "u8UARTPort"
	.db	0
	.dw	0,272
	.uleb128	4
	.ascii "u32Baudrate"
	.db	0
	.dw	0,255
	.uleb128	5
	.dw	0,(Suart$UART_Open$3)
	.dw	0,(Suart$UART_Open$11)
	.uleb128	0
	.uleb128	6
	.ascii "unsigned long"
	.db	0
	.db	4
	.db	7
	.uleb128	6
	.ascii "unsigned char"
	.db	0
	.db	1
	.db	8
	.uleb128	7
	.dw	0,367
	.ascii "Receive_Data"
	.db	0
	.dw	0,(_Receive_Data)
	.dw	0,(XG$Receive_Data$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+40)
	.dw	0,272
	.uleb128	3
	.db	5
	.db	3
	.dw	0,(_Receive_Data_UARTPort_65536_148)
	.ascii "UARTPort"
	.db	0
	.dw	0,272
	.uleb128	5
	.dw	0,(Suart$Receive_Data$37)
	.dw	0,(Suart$Receive_Data$45)
	.uleb128	8
	.db	5
	.db	3
	.dw	0,(_Receive_Data_c_65536_149)
	.ascii "c"
	.db	0
	.dw	0,272
	.uleb128	0
	.uleb128	2
	.dw	0,437
	.ascii "UART_Send_Data"
	.db	0
	.dw	0,(_UART_Send_Data)
	.dw	0,(XG$UART_Send_Data$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+20)
	.uleb128	3
	.db	5
	.db	3
	.dw	0,(_UART_Send_Data_UARTPort_65536_151)
	.ascii "UARTPort"
	.db	0
	.dw	0,272
	.uleb128	4
	.ascii "c"
	.db	0
	.dw	0,272
	.uleb128	5
	.dw	0,(Suart$UART_Send_Data$55)
	.dw	0,(Suart$UART_Send_Data$65)
	.uleb128	0
	.uleb128	9
	.ascii "Enable_UART0_VCOM_printf_24M_115200"
	.db	0
	.dw	0,(_Enable_UART0_VCOM_printf_24M_115200)
	.dw	0,(XG$Enable_UART0_VCOM_printf_24M_115200$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start)
	.uleb128	6
	.ascii "_bit"
	.db	0
	.db	1
	.db	8
	.uleb128	10
	.db	5
	.db	3
	.dw	0,(_BIT_TMP)
	.ascii "BIT_TMP"
	.db	0
	.db	1
	.db	1
	.dw	0,487
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_PRINTFG)
	.ascii "PRINTFG"
	.db	0
	.db	1
	.dw	0,487
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_uart0_receive_flag)
	.ascii "uart0_receive_flag"
	.db	0
	.db	1
	.dw	0,487
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_uart1_receive_flag)
	.ascii "uart1_receive_flag"
	.db	0
	.db	1
	.dw	0,487
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_uart0_receive_data)
	.ascii "uart0_receive_data"
	.db	0
	.db	1
	.dw	0,272
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_uart1_receive_data)
	.ascii "uart1_receive_data"
	.db	0
	.db	1
	.dw	0,272
	.uleb128	12
	.dw	0,272
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_P0)
	.ascii "P0"
	.db	0
	.db	1
	.dw	0,660
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_SP)
	.ascii "SP"
	.db	0
	.db	1
	.dw	0,660
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_DPL)
	.ascii "DPL"
	.db	0
	.db	1
	.dw	0,660
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_DPH)
	.ascii "DPH"
	.db	0
	.db	1
	.dw	0,660
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_RCTRIM0)
	.ascii "RCTRIM0"
	.db	0
	.db	1
	.dw	0,660
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_RCTRIM1)
	.ascii "RCTRIM1"
	.db	0
	.db	1
	.dw	0,660
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_RWK)
	.ascii "RWK"
	.db	0
	.db	1
	.dw	0,660
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_PCON)
	.ascii "PCON"
	.db	0
	.db	1
	.dw	0,660
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_TCON)
	.ascii "TCON"
	.db	0
	.db	1
	.dw	0,660
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_TMOD)
	.ascii "TMOD"
	.db	0
	.db	1
	.dw	0,660
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_TL0)
	.ascii "TL0"
	.db	0
	.db	1
	.dw	0,660
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_TL1)
	.ascii "TL1"
	.db	0
	.db	1
	.dw	0,660
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_TH0)
	.ascii "TH0"
	.db	0
	.db	1
	.dw	0,660
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_TH1)
	.ascii "TH1"
	.db	0
	.db	1
	.dw	0,660
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_CKCON)
	.ascii "CKCON"
	.db	0
	.db	1
	.dw	0,660
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_WKCON)
	.ascii "WKCON"
	.db	0
	.db	1
	.dw	0,660
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_P1)
	.ascii "P1"
	.db	0
	.db	1
	.dw	0,660
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_SFRS)
	.ascii "SFRS"
	.db	0
	.db	1
	.dw	0,660
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_CAPCON0)
	.ascii "CAPCON0"
	.db	0
	.db	1
	.dw	0,660
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_CAPCON1)
	.ascii "CAPCON1"
	.db	0
	.db	1
	.dw	0,660
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_CAPCON2)
	.ascii "CAPCON2"
	.db	0
	.db	1
	.dw	0,660
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_CKDIV)
	.ascii "CKDIV"
	.db	0
	.db	1
	.dw	0,660
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_CKSWT)
	.ascii "CKSWT"
	.db	0
	.db	1
	.dw	0,660
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_CKEN)
	.ascii "CKEN"
	.db	0
	.db	1
	.dw	0,660
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_SCON)
	.ascii "SCON"
	.db	0
	.db	1
	.dw	0,660
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_SBUF)
	.ascii "SBUF"
	.db	0
	.db	1
	.dw	0,660
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_SBUF_1)
	.ascii "SBUF_1"
	.db	0
	.db	1
	.dw	0,660
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_EIE)
	.ascii "EIE"
	.db	0
	.db	1
	.dw	0,660
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_EIE1)
	.ascii "EIE1"
	.db	0
	.db	1
	.dw	0,660
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_CHPCON)
	.ascii "CHPCON"
	.db	0
	.db	1
	.dw	0,660
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_P2)
	.ascii "P2"
	.db	0
	.db	1
	.dw	0,660
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_AUXR1)
	.ascii "AUXR1"
	.db	0
	.db	1
	.dw	0,660
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_BODCON0)
	.ascii "BODCON0"
	.db	0
	.db	1
	.dw	0,660
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_IAPTRG)
	.ascii "IAPTRG"
	.db	0
	.db	1
	.dw	0,660
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_IAPUEN)
	.ascii "IAPUEN"
	.db	0
	.db	1
	.dw	0,660
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_IAPAL)
	.ascii "IAPAL"
	.db	0
	.db	1
	.dw	0,660
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_IAPAH)
	.ascii "IAPAH"
	.db	0
	.db	1
	.dw	0,660
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_IE)
	.ascii "IE"
	.db	0
	.db	1
	.dw	0,660
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_SADDR)
	.ascii "SADDR"
	.db	0
	.db	1
	.dw	0,660
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_WDCON)
	.ascii "WDCON"
	.db	0
	.db	1
	.dw	0,660
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_BODCON1)
	.ascii "BODCON1"
	.db	0
	.db	1
	.dw	0,660
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_P3M1)
	.ascii "P3M1"
	.db	0
	.db	1
	.dw	0,660
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_P3S)
	.ascii "P3S"
	.db	0
	.db	1
	.dw	0,660
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_P3M2)
	.ascii "P3M2"
	.db	0
	.db	1
	.dw	0,660
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_P3SR)
	.ascii "P3SR"
	.db	0
	.db	1
	.dw	0,660
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_IAPFD)
	.ascii "IAPFD"
	.db	0
	.db	1
	.dw	0,660
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_IAPCN)
	.ascii "IAPCN"
	.db	0
	.db	1
	.dw	0,660
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_P3)
	.ascii "P3"
	.db	0
	.db	1
	.dw	0,660
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_P0M1)
	.ascii "P0M1"
	.db	0
	.db	1
	.dw	0,660
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_P0S)
	.ascii "P0S"
	.db	0
	.db	1
	.dw	0,660
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_P0M2)
	.ascii "P0M2"
	.db	0
	.db	1
	.dw	0,660
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_P0SR)
	.ascii "P0SR"
	.db	0
	.db	1
	.dw	0,660
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_P1M1)
	.ascii "P1M1"
	.db	0
	.db	1
	.dw	0,660
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_P1S)
	.ascii "P1S"
	.db	0
	.db	1
	.dw	0,660
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_P1M2)
	.ascii "P1M2"
	.db	0
	.db	1
	.dw	0,660
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_P1SR)
	.ascii "P1SR"
	.db	0
	.db	1
	.dw	0,660
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_P2S)
	.ascii "P2S"
	.db	0
	.db	1
	.dw	0,660
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_IPH)
	.ascii "IPH"
	.db	0
	.db	1
	.dw	0,660
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_PWMINTC)
	.ascii "PWMINTC"
	.db	0
	.db	1
	.dw	0,660
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_IP)
	.ascii "IP"
	.db	0
	.db	1
	.dw	0,660
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_SADEN)
	.ascii "SADEN"
	.db	0
	.db	1
	.dw	0,660
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_SADEN_1)
	.ascii "SADEN_1"
	.db	0
	.db	1
	.dw	0,660
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_SADDR_1)
	.ascii "SADDR_1"
	.db	0
	.db	1
	.dw	0,660
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_I2DAT)
	.ascii "I2DAT"
	.db	0
	.db	1
	.dw	0,660
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_I2STAT)
	.ascii "I2STAT"
	.db	0
	.db	1
	.dw	0,660
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_I2CLK)
	.ascii "I2CLK"
	.db	0
	.db	1
	.dw	0,660
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_I2TOC)
	.ascii "I2TOC"
	.db	0
	.db	1
	.dw	0,660
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_I2CON)
	.ascii "I2CON"
	.db	0
	.db	1
	.dw	0,660
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_I2ADDR)
	.ascii "I2ADDR"
	.db	0
	.db	1
	.dw	0,660
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_ADCRL)
	.ascii "ADCRL"
	.db	0
	.db	1
	.dw	0,660
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_ADCRH)
	.ascii "ADCRH"
	.db	0
	.db	1
	.dw	0,660
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_T3CON)
	.ascii "T3CON"
	.db	0
	.db	1
	.dw	0,660
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_PWM4H)
	.ascii "PWM4H"
	.db	0
	.db	1
	.dw	0,660
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_RL3)
	.ascii "RL3"
	.db	0
	.db	1
	.dw	0,660
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_PWM5H)
	.ascii "PWM5H"
	.db	0
	.db	1
	.dw	0,660
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_RH3)
	.ascii "RH3"
	.db	0
	.db	1
	.dw	0,660
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_PIOCON1)
	.ascii "PIOCON1"
	.db	0
	.db	1
	.dw	0,660
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_TA)
	.ascii "TA"
	.db	0
	.db	1
	.dw	0,660
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_T2CON)
	.ascii "T2CON"
	.db	0
	.db	1
	.dw	0,660
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_T2MOD)
	.ascii "T2MOD"
	.db	0
	.db	1
	.dw	0,660
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_RCMP2L)
	.ascii "RCMP2L"
	.db	0
	.db	1
	.dw	0,660
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_RCMP2H)
	.ascii "RCMP2H"
	.db	0
	.db	1
	.dw	0,660
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_TL2)
	.ascii "TL2"
	.db	0
	.db	1
	.dw	0,660
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_PWM4L)
	.ascii "PWM4L"
	.db	0
	.db	1
	.dw	0,660
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_TH2)
	.ascii "TH2"
	.db	0
	.db	1
	.dw	0,660
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_PWM5L)
	.ascii "PWM5L"
	.db	0
	.db	1
	.dw	0,660
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_ADCMPL)
	.ascii "ADCMPL"
	.db	0
	.db	1
	.dw	0,660
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_ADCMPH)
	.ascii "ADCMPH"
	.db	0
	.db	1
	.dw	0,660
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_PSW)
	.ascii "PSW"
	.db	0
	.db	1
	.dw	0,660
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_PWMPH)
	.ascii "PWMPH"
	.db	0
	.db	1
	.dw	0,660
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_PWM0H)
	.ascii "PWM0H"
	.db	0
	.db	1
	.dw	0,660
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_PWM1H)
	.ascii "PWM1H"
	.db	0
	.db	1
	.dw	0,660
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_PWM2H)
	.ascii "PWM2H"
	.db	0
	.db	1
	.dw	0,660
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_PWM3H)
	.ascii "PWM3H"
	.db	0
	.db	1
	.dw	0,660
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_PNP)
	.ascii "PNP"
	.db	0
	.db	1
	.dw	0,660
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_FBD)
	.ascii "FBD"
	.db	0
	.db	1
	.dw	0,660
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_PWMCON0)
	.ascii "PWMCON0"
	.db	0
	.db	1
	.dw	0,660
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_PWMPL)
	.ascii "PWMPL"
	.db	0
	.db	1
	.dw	0,660
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_PWM0L)
	.ascii "PWM0L"
	.db	0
	.db	1
	.dw	0,660
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_PWM1L)
	.ascii "PWM1L"
	.db	0
	.db	1
	.dw	0,660
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_PWM2L)
	.ascii "PWM2L"
	.db	0
	.db	1
	.dw	0,660
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_PWM3L)
	.ascii "PWM3L"
	.db	0
	.db	1
	.dw	0,660
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_PIOCON0)
	.ascii "PIOCON0"
	.db	0
	.db	1
	.dw	0,660
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_PWMCON1)
	.ascii "PWMCON1"
	.db	0
	.db	1
	.dw	0,660
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_ACC)
	.ascii "ACC"
	.db	0
	.db	1
	.dw	0,660
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_ADCCON1)
	.ascii "ADCCON1"
	.db	0
	.db	1
	.dw	0,660
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_ADCCON2)
	.ascii "ADCCON2"
	.db	0
	.db	1
	.dw	0,660
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_ADCDLY)
	.ascii "ADCDLY"
	.db	0
	.db	1
	.dw	0,660
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_C0L)
	.ascii "C0L"
	.db	0
	.db	1
	.dw	0,660
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_C0H)
	.ascii "C0H"
	.db	0
	.db	1
	.dw	0,660
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_C1L)
	.ascii "C1L"
	.db	0
	.db	1
	.dw	0,660
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_C1H)
	.ascii "C1H"
	.db	0
	.db	1
	.dw	0,660
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_ADCCON0)
	.ascii "ADCCON0"
	.db	0
	.db	1
	.dw	0,660
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_PICON)
	.ascii "PICON"
	.db	0
	.db	1
	.dw	0,660
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_PINEN)
	.ascii "PINEN"
	.db	0
	.db	1
	.dw	0,660
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_PIPEN)
	.ascii "PIPEN"
	.db	0
	.db	1
	.dw	0,660
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_PIF)
	.ascii "PIF"
	.db	0
	.db	1
	.dw	0,660
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_C2L)
	.ascii "C2L"
	.db	0
	.db	1
	.dw	0,660
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_C2H)
	.ascii "C2H"
	.db	0
	.db	1
	.dw	0,660
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_EIP)
	.ascii "EIP"
	.db	0
	.db	1
	.dw	0,660
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_B)
	.ascii "B"
	.db	0
	.db	1
	.dw	0,660
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_CAPCON3)
	.ascii "CAPCON3"
	.db	0
	.db	1
	.dw	0,660
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_CAPCON4)
	.ascii "CAPCON4"
	.db	0
	.db	1
	.dw	0,660
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_SPCR)
	.ascii "SPCR"
	.db	0
	.db	1
	.dw	0,660
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_SPCR2)
	.ascii "SPCR2"
	.db	0
	.db	1
	.dw	0,660
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_SPSR)
	.ascii "SPSR"
	.db	0
	.db	1
	.dw	0,660
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_SPDR)
	.ascii "SPDR"
	.db	0
	.db	1
	.dw	0,660
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_AINDIDS)
	.ascii "AINDIDS"
	.db	0
	.db	1
	.dw	0,660
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_EIPH)
	.ascii "EIPH"
	.db	0
	.db	1
	.dw	0,660
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_SCON_1)
	.ascii "SCON_1"
	.db	0
	.db	1
	.dw	0,660
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_PDTEN)
	.ascii "PDTEN"
	.db	0
	.db	1
	.dw	0,660
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_PDTCNT)
	.ascii "PDTCNT"
	.db	0
	.db	1
	.dw	0,660
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_PMEN)
	.ascii "PMEN"
	.db	0
	.db	1
	.dw	0,660
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_PMD)
	.ascii "PMD"
	.db	0
	.db	1
	.dw	0,660
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_EIP1)
	.ascii "EIP1"
	.db	0
	.db	1
	.dw	0,660
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_EIPH1)
	.ascii "EIPH1"
	.db	0
	.db	1
	.dw	0,660
	.uleb128	6
	.ascii "_sbit"
	.db	0
	.db	1
	.db	8
	.uleb128	12
	.dw	0,3055
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_SM0_1)
	.ascii "SM0_1"
	.db	0
	.db	1
	.dw	0,3064
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_FE_1)
	.ascii "FE_1"
	.db	0
	.db	1
	.dw	0,3064
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_SM1_1)
	.ascii "SM1_1"
	.db	0
	.db	1
	.dw	0,3064
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_SM2_1)
	.ascii "SM2_1"
	.db	0
	.db	1
	.dw	0,3064
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_REN_1)
	.ascii "REN_1"
	.db	0
	.db	1
	.dw	0,3064
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_TB8_1)
	.ascii "TB8_1"
	.db	0
	.db	1
	.dw	0,3064
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_RB8_1)
	.ascii "RB8_1"
	.db	0
	.db	1
	.dw	0,3064
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_TI_1)
	.ascii "TI_1"
	.db	0
	.db	1
	.dw	0,3064
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_RI_1)
	.ascii "RI_1"
	.db	0
	.db	1
	.dw	0,3064
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_ADCF)
	.ascii "ADCF"
	.db	0
	.db	1
	.dw	0,3064
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_ADCS)
	.ascii "ADCS"
	.db	0
	.db	1
	.dw	0,3064
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_ETGSEL1)
	.ascii "ETGSEL1"
	.db	0
	.db	1
	.dw	0,3064
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_ETGSEL0)
	.ascii "ETGSEL0"
	.db	0
	.db	1
	.dw	0,3064
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_ADCHS3)
	.ascii "ADCHS3"
	.db	0
	.db	1
	.dw	0,3064
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_ADCHS2)
	.ascii "ADCHS2"
	.db	0
	.db	1
	.dw	0,3064
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_ADCHS1)
	.ascii "ADCHS1"
	.db	0
	.db	1
	.dw	0,3064
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_ADCHS0)
	.ascii "ADCHS0"
	.db	0
	.db	1
	.dw	0,3064
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_PWMRUN)
	.ascii "PWMRUN"
	.db	0
	.db	1
	.dw	0,3064
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_LOAD)
	.ascii "LOAD"
	.db	0
	.db	1
	.dw	0,3064
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_PWMF)
	.ascii "PWMF"
	.db	0
	.db	1
	.dw	0,3064
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_CLRPWM)
	.ascii "CLRPWM"
	.db	0
	.db	1
	.dw	0,3064
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_CY)
	.ascii "CY"
	.db	0
	.db	1
	.dw	0,3064
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_AC)
	.ascii "AC"
	.db	0
	.db	1
	.dw	0,3064
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_F0)
	.ascii "F0"
	.db	0
	.db	1
	.dw	0,3064
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_RS1)
	.ascii "RS1"
	.db	0
	.db	1
	.dw	0,3064
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_RS0)
	.ascii "RS0"
	.db	0
	.db	1
	.dw	0,3064
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_OV)
	.ascii "OV"
	.db	0
	.db	1
	.dw	0,3064
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_P)
	.ascii "P"
	.db	0
	.db	1
	.dw	0,3064
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_TF2)
	.ascii "TF2"
	.db	0
	.db	1
	.dw	0,3064
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_TR2)
	.ascii "TR2"
	.db	0
	.db	1
	.dw	0,3064
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_CM_RL2)
	.ascii "CM_RL2"
	.db	0
	.db	1
	.dw	0,3064
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_I2CEN)
	.ascii "I2CEN"
	.db	0
	.db	1
	.dw	0,3064
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_STA)
	.ascii "STA"
	.db	0
	.db	1
	.dw	0,3064
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_STO)
	.ascii "STO"
	.db	0
	.db	1
	.dw	0,3064
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_SI)
	.ascii "SI"
	.db	0
	.db	1
	.dw	0,3064
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_AA)
	.ascii "AA"
	.db	0
	.db	1
	.dw	0,3064
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_I2CPX)
	.ascii "I2CPX"
	.db	0
	.db	1
	.dw	0,3064
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_PADC)
	.ascii "PADC"
	.db	0
	.db	1
	.dw	0,3064
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_PBOD)
	.ascii "PBOD"
	.db	0
	.db	1
	.dw	0,3064
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_PS)
	.ascii "PS"
	.db	0
	.db	1
	.dw	0,3064
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_PT1)
	.ascii "PT1"
	.db	0
	.db	1
	.dw	0,3064
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_PX1)
	.ascii "PX1"
	.db	0
	.db	1
	.dw	0,3064
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_PT0)
	.ascii "PT0"
	.db	0
	.db	1
	.dw	0,3064
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_PX0)
	.ascii "PX0"
	.db	0
	.db	1
	.dw	0,3064
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_P30)
	.ascii "P30"
	.db	0
	.db	1
	.dw	0,3064
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_EA)
	.ascii "EA"
	.db	0
	.db	1
	.dw	0,3064
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_EADC)
	.ascii "EADC"
	.db	0
	.db	1
	.dw	0,3064
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_EBOD)
	.ascii "EBOD"
	.db	0
	.db	1
	.dw	0,3064
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_ES)
	.ascii "ES"
	.db	0
	.db	1
	.dw	0,3064
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_ET1)
	.ascii "ET1"
	.db	0
	.db	1
	.dw	0,3064
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_EX1)
	.ascii "EX1"
	.db	0
	.db	1
	.dw	0,3064
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_ET0)
	.ascii "ET0"
	.db	0
	.db	1
	.dw	0,3064
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_EX0)
	.ascii "EX0"
	.db	0
	.db	1
	.dw	0,3064
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_P20)
	.ascii "P20"
	.db	0
	.db	1
	.dw	0,3064
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_SM0)
	.ascii "SM0"
	.db	0
	.db	1
	.dw	0,3064
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_FE)
	.ascii "FE"
	.db	0
	.db	1
	.dw	0,3064
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_SM1)
	.ascii "SM1"
	.db	0
	.db	1
	.dw	0,3064
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_SM2)
	.ascii "SM2"
	.db	0
	.db	1
	.dw	0,3064
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_REN)
	.ascii "REN"
	.db	0
	.db	1
	.dw	0,3064
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_TB8)
	.ascii "TB8"
	.db	0
	.db	1
	.dw	0,3064
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_RB8)
	.ascii "RB8"
	.db	0
	.db	1
	.dw	0,3064
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_TI)
	.ascii "TI"
	.db	0
	.db	1
	.dw	0,3064
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_RI)
	.ascii "RI"
	.db	0
	.db	1
	.dw	0,3064
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_P17)
	.ascii "P17"
	.db	0
	.db	1
	.dw	0,3064
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_P16)
	.ascii "P16"
	.db	0
	.db	1
	.dw	0,3064
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_TXD_1)
	.ascii "TXD_1"
	.db	0
	.db	1
	.dw	0,3064
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_P15)
	.ascii "P15"
	.db	0
	.db	1
	.dw	0,3064
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_P14)
	.ascii "P14"
	.db	0
	.db	1
	.dw	0,3064
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_SDA)
	.ascii "SDA"
	.db	0
	.db	1
	.dw	0,3064
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_P13)
	.ascii "P13"
	.db	0
	.db	1
	.dw	0,3064
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_SCL)
	.ascii "SCL"
	.db	0
	.db	1
	.dw	0,3064
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_P12)
	.ascii "P12"
	.db	0
	.db	1
	.dw	0,3064
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_P11)
	.ascii "P11"
	.db	0
	.db	1
	.dw	0,3064
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_P10)
	.ascii "P10"
	.db	0
	.db	1
	.dw	0,3064
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_TF1)
	.ascii "TF1"
	.db	0
	.db	1
	.dw	0,3064
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_TR1)
	.ascii "TR1"
	.db	0
	.db	1
	.dw	0,3064
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_TF0)
	.ascii "TF0"
	.db	0
	.db	1
	.dw	0,3064
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_TR0)
	.ascii "TR0"
	.db	0
	.db	1
	.dw	0,3064
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_IE1)
	.ascii "IE1"
	.db	0
	.db	1
	.dw	0,3064
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_IT1)
	.ascii "IT1"
	.db	0
	.db	1
	.dw	0,3064
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_IE0)
	.ascii "IE0"
	.db	0
	.db	1
	.dw	0,3064
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_IT0)
	.ascii "IT0"
	.db	0
	.db	1
	.dw	0,3064
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_P07)
	.ascii "P07"
	.db	0
	.db	1
	.dw	0,3064
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_RXD)
	.ascii "RXD"
	.db	0
	.db	1
	.dw	0,3064
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_P06)
	.ascii "P06"
	.db	0
	.db	1
	.dw	0,3064
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_TXD)
	.ascii "TXD"
	.db	0
	.db	1
	.dw	0,3064
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_P05)
	.ascii "P05"
	.db	0
	.db	1
	.dw	0,3064
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_P04)
	.ascii "P04"
	.db	0
	.db	1
	.dw	0,3064
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_STADC)
	.ascii "STADC"
	.db	0
	.db	1
	.dw	0,3064
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_P03)
	.ascii "P03"
	.db	0
	.db	1
	.dw	0,3064
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_P02)
	.ascii "P02"
	.db	0
	.db	1
	.dw	0,3064
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_RXD_1)
	.ascii "RXD_1"
	.db	0
	.db	1
	.dw	0,3064
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_P01)
	.ascii "P01"
	.db	0
	.db	1
	.dw	0,3064
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_MISO)
	.ascii "MISO"
	.db	0
	.db	1
	.dw	0,3064
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_P00)
	.ascii "P00"
	.db	0
	.db	1
	.dw	0,3064
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_MOSI)
	.ascii "MOSI"
	.db	0
	.db	1
	.dw	0,3064
	.uleb128	0
Ldebug_info_end:

	.area .debug_pubnames (NOLOAD)
	.dw	0,Ldebug_pubnames_end-Ldebug_pubnames_start
Ldebug_pubnames_start:
	.dw	2
	.dw	0,(Ldebug_info_start-4)
	.dw	0,4+Ldebug_info_end-Ldebug_info_start
	.dw	0,161
	.ascii "UART_Open"
	.db	0
	.dw	0,289
	.ascii "Receive_Data"
	.db	0
	.dw	0,367
	.ascii "UART_Send_Data"
	.db	0
	.dw	0,437
	.ascii "Enable_UART0_VCOM_printf_24M_115200"
	.db	0
	.dw	0,495
	.ascii "BIT_TMP"
	.db	0
	.dw	0,516
	.ascii "PRINTFG"
	.db	0
	.dw	0,536
	.ascii "uart0_receive_flag"
	.db	0
	.dw	0,567
	.ascii "uart1_receive_flag"
	.db	0
	.dw	0,598
	.ascii "uart0_receive_data"
	.db	0
	.dw	0,629
	.ascii "uart1_receive_data"
	.db	0
	.dw	0,665
	.ascii "P0"
	.db	0
	.dw	0,680
	.ascii "SP"
	.db	0
	.dw	0,695
	.ascii "DPL"
	.db	0
	.dw	0,711
	.ascii "DPH"
	.db	0
	.dw	0,727
	.ascii "RCTRIM0"
	.db	0
	.dw	0,747
	.ascii "RCTRIM1"
	.db	0
	.dw	0,767
	.ascii "RWK"
	.db	0
	.dw	0,783
	.ascii "PCON"
	.db	0
	.dw	0,800
	.ascii "TCON"
	.db	0
	.dw	0,817
	.ascii "TMOD"
	.db	0
	.dw	0,834
	.ascii "TL0"
	.db	0
	.dw	0,850
	.ascii "TL1"
	.db	0
	.dw	0,866
	.ascii "TH0"
	.db	0
	.dw	0,882
	.ascii "TH1"
	.db	0
	.dw	0,898
	.ascii "CKCON"
	.db	0
	.dw	0,916
	.ascii "WKCON"
	.db	0
	.dw	0,934
	.ascii "P1"
	.db	0
	.dw	0,949
	.ascii "SFRS"
	.db	0
	.dw	0,966
	.ascii "CAPCON0"
	.db	0
	.dw	0,986
	.ascii "CAPCON1"
	.db	0
	.dw	0,1006
	.ascii "CAPCON2"
	.db	0
	.dw	0,1026
	.ascii "CKDIV"
	.db	0
	.dw	0,1044
	.ascii "CKSWT"
	.db	0
	.dw	0,1062
	.ascii "CKEN"
	.db	0
	.dw	0,1079
	.ascii "SCON"
	.db	0
	.dw	0,1096
	.ascii "SBUF"
	.db	0
	.dw	0,1113
	.ascii "SBUF_1"
	.db	0
	.dw	0,1132
	.ascii "EIE"
	.db	0
	.dw	0,1148
	.ascii "EIE1"
	.db	0
	.dw	0,1165
	.ascii "CHPCON"
	.db	0
	.dw	0,1184
	.ascii "P2"
	.db	0
	.dw	0,1199
	.ascii "AUXR1"
	.db	0
	.dw	0,1217
	.ascii "BODCON0"
	.db	0
	.dw	0,1237
	.ascii "IAPTRG"
	.db	0
	.dw	0,1256
	.ascii "IAPUEN"
	.db	0
	.dw	0,1275
	.ascii "IAPAL"
	.db	0
	.dw	0,1293
	.ascii "IAPAH"
	.db	0
	.dw	0,1311
	.ascii "IE"
	.db	0
	.dw	0,1326
	.ascii "SADDR"
	.db	0
	.dw	0,1344
	.ascii "WDCON"
	.db	0
	.dw	0,1362
	.ascii "BODCON1"
	.db	0
	.dw	0,1382
	.ascii "P3M1"
	.db	0
	.dw	0,1399
	.ascii "P3S"
	.db	0
	.dw	0,1415
	.ascii "P3M2"
	.db	0
	.dw	0,1432
	.ascii "P3SR"
	.db	0
	.dw	0,1449
	.ascii "IAPFD"
	.db	0
	.dw	0,1467
	.ascii "IAPCN"
	.db	0
	.dw	0,1485
	.ascii "P3"
	.db	0
	.dw	0,1500
	.ascii "P0M1"
	.db	0
	.dw	0,1517
	.ascii "P0S"
	.db	0
	.dw	0,1533
	.ascii "P0M2"
	.db	0
	.dw	0,1550
	.ascii "P0SR"
	.db	0
	.dw	0,1567
	.ascii "P1M1"
	.db	0
	.dw	0,1584
	.ascii "P1S"
	.db	0
	.dw	0,1600
	.ascii "P1M2"
	.db	0
	.dw	0,1617
	.ascii "P1SR"
	.db	0
	.dw	0,1634
	.ascii "P2S"
	.db	0
	.dw	0,1650
	.ascii "IPH"
	.db	0
	.dw	0,1666
	.ascii "PWMINTC"
	.db	0
	.dw	0,1686
	.ascii "IP"
	.db	0
	.dw	0,1701
	.ascii "SADEN"
	.db	0
	.dw	0,1719
	.ascii "SADEN_1"
	.db	0
	.dw	0,1739
	.ascii "SADDR_1"
	.db	0
	.dw	0,1759
	.ascii "I2DAT"
	.db	0
	.dw	0,1777
	.ascii "I2STAT"
	.db	0
	.dw	0,1796
	.ascii "I2CLK"
	.db	0
	.dw	0,1814
	.ascii "I2TOC"
	.db	0
	.dw	0,1832
	.ascii "I2CON"
	.db	0
	.dw	0,1850
	.ascii "I2ADDR"
	.db	0
	.dw	0,1869
	.ascii "ADCRL"
	.db	0
	.dw	0,1887
	.ascii "ADCRH"
	.db	0
	.dw	0,1905
	.ascii "T3CON"
	.db	0
	.dw	0,1923
	.ascii "PWM4H"
	.db	0
	.dw	0,1941
	.ascii "RL3"
	.db	0
	.dw	0,1957
	.ascii "PWM5H"
	.db	0
	.dw	0,1975
	.ascii "RH3"
	.db	0
	.dw	0,1991
	.ascii "PIOCON1"
	.db	0
	.dw	0,2011
	.ascii "TA"
	.db	0
	.dw	0,2026
	.ascii "T2CON"
	.db	0
	.dw	0,2044
	.ascii "T2MOD"
	.db	0
	.dw	0,2062
	.ascii "RCMP2L"
	.db	0
	.dw	0,2081
	.ascii "RCMP2H"
	.db	0
	.dw	0,2100
	.ascii "TL2"
	.db	0
	.dw	0,2116
	.ascii "PWM4L"
	.db	0
	.dw	0,2134
	.ascii "TH2"
	.db	0
	.dw	0,2150
	.ascii "PWM5L"
	.db	0
	.dw	0,2168
	.ascii "ADCMPL"
	.db	0
	.dw	0,2187
	.ascii "ADCMPH"
	.db	0
	.dw	0,2206
	.ascii "PSW"
	.db	0
	.dw	0,2222
	.ascii "PWMPH"
	.db	0
	.dw	0,2240
	.ascii "PWM0H"
	.db	0
	.dw	0,2258
	.ascii "PWM1H"
	.db	0
	.dw	0,2276
	.ascii "PWM2H"
	.db	0
	.dw	0,2294
	.ascii "PWM3H"
	.db	0
	.dw	0,2312
	.ascii "PNP"
	.db	0
	.dw	0,2328
	.ascii "FBD"
	.db	0
	.dw	0,2344
	.ascii "PWMCON0"
	.db	0
	.dw	0,2364
	.ascii "PWMPL"
	.db	0
	.dw	0,2382
	.ascii "PWM0L"
	.db	0
	.dw	0,2400
	.ascii "PWM1L"
	.db	0
	.dw	0,2418
	.ascii "PWM2L"
	.db	0
	.dw	0,2436
	.ascii "PWM3L"
	.db	0
	.dw	0,2454
	.ascii "PIOCON0"
	.db	0
	.dw	0,2474
	.ascii "PWMCON1"
	.db	0
	.dw	0,2494
	.ascii "ACC"
	.db	0
	.dw	0,2510
	.ascii "ADCCON1"
	.db	0
	.dw	0,2530
	.ascii "ADCCON2"
	.db	0
	.dw	0,2550
	.ascii "ADCDLY"
	.db	0
	.dw	0,2569
	.ascii "C0L"
	.db	0
	.dw	0,2585
	.ascii "C0H"
	.db	0
	.dw	0,2601
	.ascii "C1L"
	.db	0
	.dw	0,2617
	.ascii "C1H"
	.db	0
	.dw	0,2633
	.ascii "ADCCON0"
	.db	0
	.dw	0,2653
	.ascii "PICON"
	.db	0
	.dw	0,2671
	.ascii "PINEN"
	.db	0
	.dw	0,2689
	.ascii "PIPEN"
	.db	0
	.dw	0,2707
	.ascii "PIF"
	.db	0
	.dw	0,2723
	.ascii "C2L"
	.db	0
	.dw	0,2739
	.ascii "C2H"
	.db	0
	.dw	0,2755
	.ascii "EIP"
	.db	0
	.dw	0,2771
	.ascii "B"
	.db	0
	.dw	0,2785
	.ascii "CAPCON3"
	.db	0
	.dw	0,2805
	.ascii "CAPCON4"
	.db	0
	.dw	0,2825
	.ascii "SPCR"
	.db	0
	.dw	0,2842
	.ascii "SPCR2"
	.db	0
	.dw	0,2860
	.ascii "SPSR"
	.db	0
	.dw	0,2877
	.ascii "SPDR"
	.db	0
	.dw	0,2894
	.ascii "AINDIDS"
	.db	0
	.dw	0,2914
	.ascii "EIPH"
	.db	0
	.dw	0,2931
	.ascii "SCON_1"
	.db	0
	.dw	0,2950
	.ascii "PDTEN"
	.db	0
	.dw	0,2968
	.ascii "PDTCNT"
	.db	0
	.dw	0,2987
	.ascii "PMEN"
	.db	0
	.dw	0,3004
	.ascii "PMD"
	.db	0
	.dw	0,3020
	.ascii "EIP1"
	.db	0
	.dw	0,3037
	.ascii "EIPH1"
	.db	0
	.dw	0,3069
	.ascii "SM0_1"
	.db	0
	.dw	0,3087
	.ascii "FE_1"
	.db	0
	.dw	0,3104
	.ascii "SM1_1"
	.db	0
	.dw	0,3122
	.ascii "SM2_1"
	.db	0
	.dw	0,3140
	.ascii "REN_1"
	.db	0
	.dw	0,3158
	.ascii "TB8_1"
	.db	0
	.dw	0,3176
	.ascii "RB8_1"
	.db	0
	.dw	0,3194
	.ascii "TI_1"
	.db	0
	.dw	0,3211
	.ascii "RI_1"
	.db	0
	.dw	0,3228
	.ascii "ADCF"
	.db	0
	.dw	0,3245
	.ascii "ADCS"
	.db	0
	.dw	0,3262
	.ascii "ETGSEL1"
	.db	0
	.dw	0,3282
	.ascii "ETGSEL0"
	.db	0
	.dw	0,3302
	.ascii "ADCHS3"
	.db	0
	.dw	0,3321
	.ascii "ADCHS2"
	.db	0
	.dw	0,3340
	.ascii "ADCHS1"
	.db	0
	.dw	0,3359
	.ascii "ADCHS0"
	.db	0
	.dw	0,3378
	.ascii "PWMRUN"
	.db	0
	.dw	0,3397
	.ascii "LOAD"
	.db	0
	.dw	0,3414
	.ascii "PWMF"
	.db	0
	.dw	0,3431
	.ascii "CLRPWM"
	.db	0
	.dw	0,3450
	.ascii "CY"
	.db	0
	.dw	0,3465
	.ascii "AC"
	.db	0
	.dw	0,3480
	.ascii "F0"
	.db	0
	.dw	0,3495
	.ascii "RS1"
	.db	0
	.dw	0,3511
	.ascii "RS0"
	.db	0
	.dw	0,3527
	.ascii "OV"
	.db	0
	.dw	0,3542
	.ascii "P"
	.db	0
	.dw	0,3556
	.ascii "TF2"
	.db	0
	.dw	0,3572
	.ascii "TR2"
	.db	0
	.dw	0,3588
	.ascii "CM_RL2"
	.db	0
	.dw	0,3607
	.ascii "I2CEN"
	.db	0
	.dw	0,3625
	.ascii "STA"
	.db	0
	.dw	0,3641
	.ascii "STO"
	.db	0
	.dw	0,3657
	.ascii "SI"
	.db	0
	.dw	0,3672
	.ascii "AA"
	.db	0
	.dw	0,3687
	.ascii "I2CPX"
	.db	0
	.dw	0,3705
	.ascii "PADC"
	.db	0
	.dw	0,3722
	.ascii "PBOD"
	.db	0
	.dw	0,3739
	.ascii "PS"
	.db	0
	.dw	0,3754
	.ascii "PT1"
	.db	0
	.dw	0,3770
	.ascii "PX1"
	.db	0
	.dw	0,3786
	.ascii "PT0"
	.db	0
	.dw	0,3802
	.ascii "PX0"
	.db	0
	.dw	0,3818
	.ascii "P30"
	.db	0
	.dw	0,3834
	.ascii "EA"
	.db	0
	.dw	0,3849
	.ascii "EADC"
	.db	0
	.dw	0,3866
	.ascii "EBOD"
	.db	0
	.dw	0,3883
	.ascii "ES"
	.db	0
	.dw	0,3898
	.ascii "ET1"
	.db	0
	.dw	0,3914
	.ascii "EX1"
	.db	0
	.dw	0,3930
	.ascii "ET0"
	.db	0
	.dw	0,3946
	.ascii "EX0"
	.db	0
	.dw	0,3962
	.ascii "P20"
	.db	0
	.dw	0,3978
	.ascii "SM0"
	.db	0
	.dw	0,3994
	.ascii "FE"
	.db	0
	.dw	0,4009
	.ascii "SM1"
	.db	0
	.dw	0,4025
	.ascii "SM2"
	.db	0
	.dw	0,4041
	.ascii "REN"
	.db	0
	.dw	0,4057
	.ascii "TB8"
	.db	0
	.dw	0,4073
	.ascii "RB8"
	.db	0
	.dw	0,4089
	.ascii "TI"
	.db	0
	.dw	0,4104
	.ascii "RI"
	.db	0
	.dw	0,4119
	.ascii "P17"
	.db	0
	.dw	0,4135
	.ascii "P16"
	.db	0
	.dw	0,4151
	.ascii "TXD_1"
	.db	0
	.dw	0,4169
	.ascii "P15"
	.db	0
	.dw	0,4185
	.ascii "P14"
	.db	0
	.dw	0,4201
	.ascii "SDA"
	.db	0
	.dw	0,4217
	.ascii "P13"
	.db	0
	.dw	0,4233
	.ascii "SCL"
	.db	0
	.dw	0,4249
	.ascii "P12"
	.db	0
	.dw	0,4265
	.ascii "P11"
	.db	0
	.dw	0,4281
	.ascii "P10"
	.db	0
	.dw	0,4297
	.ascii "TF1"
	.db	0
	.dw	0,4313
	.ascii "TR1"
	.db	0
	.dw	0,4329
	.ascii "TF0"
	.db	0
	.dw	0,4345
	.ascii "TR0"
	.db	0
	.dw	0,4361
	.ascii "IE1"
	.db	0
	.dw	0,4377
	.ascii "IT1"
	.db	0
	.dw	0,4393
	.ascii "IE0"
	.db	0
	.dw	0,4409
	.ascii "IT0"
	.db	0
	.dw	0,4425
	.ascii "P07"
	.db	0
	.dw	0,4441
	.ascii "RXD"
	.db	0
	.dw	0,4457
	.ascii "P06"
	.db	0
	.dw	0,4473
	.ascii "TXD"
	.db	0
	.dw	0,4489
	.ascii "P05"
	.db	0
	.dw	0,4505
	.ascii "P04"
	.db	0
	.dw	0,4521
	.ascii "STADC"
	.db	0
	.dw	0,4539
	.ascii "P03"
	.db	0
	.dw	0,4555
	.ascii "P02"
	.db	0
	.dw	0,4571
	.ascii "RXD_1"
	.db	0
	.dw	0,4589
	.ascii "P01"
	.db	0
	.dw	0,4605
	.ascii "MISO"
	.db	0
	.dw	0,4622
	.ascii "P00"
	.db	0
	.dw	0,4638
	.ascii "MOSI"
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
	.dw	0,(Suart$Enable_UART0_VCOM_printf_24M_115200$72)	;initial loc
	.dw	0,Suart$Enable_UART0_VCOM_printf_24M_115200$79-Suart$Enable_UART0_VCOM_printf_24M_115200$72
	.db	1
	.dw	0,(Suart$Enable_UART0_VCOM_printf_24M_115200$72)
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
	.dw	0,(Suart$UART_Send_Data$52)	;initial loc
	.dw	0,Suart$UART_Send_Data$70-Suart$UART_Send_Data$52
	.db	1
	.dw	0,(Suart$UART_Send_Data$52)
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
	.dw	0,(Suart$Receive_Data$34)	;initial loc
	.dw	0,Suart$Receive_Data$50-Suart$Receive_Data$34
	.db	1
	.dw	0,(Suart$Receive_Data$34)
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
	.dw	0,(Suart$UART_Open$1)	;initial loc
	.dw	0,Suart$UART_Open$32-Suart$UART_Open$1
	.db	1
	.dw	0,(Suart$UART_Open$1)
	.db	14
	.uleb128	2
	.db	0
