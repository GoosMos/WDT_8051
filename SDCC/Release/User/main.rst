                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.2.6 #13647 (MINGW32)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _next_mode
                                     12 	.globl _temp_controlling
                                     13 	.globl _flashing
                                     14 	.globl _min_amp
                                     15 	.globl _max_amp
                                     16 	.globl _main
                                     17 	.globl _wdt_clear
                                     18 	.globl _wdt_init
                                     19 	.globl _control_loop
                                     20 	.globl _mode_stable_control
                                     21 	.globl _is_stable
                                     22 	.globl _mode_changing_control
                                     23 	.globl _activate_leds
                                     24 	.globl _stop_leds
                                     25 	.globl _process_button
                                     26 	.globl _process_uart
                                     27 	.globl _toNextMode
                                     28 	.globl _changeMode
                                     29 	.globl _target_amp
                                     30 	.globl _avg_amp
                                     31 	.globl _has_high_beam
                                     32 	.globl _sample_temperature
                                     33 	.globl _sample_amps
                                     34 	.globl _init_peripherals_but_button_n_uart
                                     35 	.globl _init_sample
                                     36 	.globl _disable_ntc
                                     37 	.globl _enable_ntc
                                     38 	.globl _button_interrupt_init
                                     39 	.globl _PinInterrupt_ISR
                                     40 	.globl _uart_interrupt_init
                                     41 	.globl _SerialPort1_ISR
                                     42 	.globl _Timer0_Delay
                                     43 	.globl _UART_Open
                                     44 	.globl _MODIFY_HIRC
                                     45 	.globl _MOSI
                                     46 	.globl _P00
                                     47 	.globl _MISO
                                     48 	.globl _P01
                                     49 	.globl _RXD_1
                                     50 	.globl _P02
                                     51 	.globl _P03
                                     52 	.globl _STADC
                                     53 	.globl _P04
                                     54 	.globl _P05
                                     55 	.globl _TXD
                                     56 	.globl _P06
                                     57 	.globl _RXD
                                     58 	.globl _P07
                                     59 	.globl _IT0
                                     60 	.globl _IE0
                                     61 	.globl _IT1
                                     62 	.globl _IE1
                                     63 	.globl _TR0
                                     64 	.globl _TF0
                                     65 	.globl _TR1
                                     66 	.globl _TF1
                                     67 	.globl _P10
                                     68 	.globl _P11
                                     69 	.globl _P12
                                     70 	.globl _SCL
                                     71 	.globl _P13
                                     72 	.globl _SDA
                                     73 	.globl _P14
                                     74 	.globl _P15
                                     75 	.globl _TXD_1
                                     76 	.globl _P16
                                     77 	.globl _P17
                                     78 	.globl _RI
                                     79 	.globl _TI
                                     80 	.globl _RB8
                                     81 	.globl _TB8
                                     82 	.globl _REN
                                     83 	.globl _SM2
                                     84 	.globl _SM1
                                     85 	.globl _FE
                                     86 	.globl _SM0
                                     87 	.globl _P20
                                     88 	.globl _EX0
                                     89 	.globl _ET0
                                     90 	.globl _EX1
                                     91 	.globl _ET1
                                     92 	.globl _ES
                                     93 	.globl _EBOD
                                     94 	.globl _EADC
                                     95 	.globl _EA
                                     96 	.globl _P30
                                     97 	.globl _PX0
                                     98 	.globl _PT0
                                     99 	.globl _PX1
                                    100 	.globl _PT1
                                    101 	.globl _PS
                                    102 	.globl _PBOD
                                    103 	.globl _PADC
                                    104 	.globl _I2CPX
                                    105 	.globl _AA
                                    106 	.globl _SI
                                    107 	.globl _STO
                                    108 	.globl _STA
                                    109 	.globl _I2CEN
                                    110 	.globl _CM_RL2
                                    111 	.globl _TR2
                                    112 	.globl _TF2
                                    113 	.globl _P
                                    114 	.globl _OV
                                    115 	.globl _RS0
                                    116 	.globl _RS1
                                    117 	.globl _F0
                                    118 	.globl _AC
                                    119 	.globl _CY
                                    120 	.globl _CLRPWM
                                    121 	.globl _PWMF
                                    122 	.globl _LOAD
                                    123 	.globl _PWMRUN
                                    124 	.globl _ADCHS0
                                    125 	.globl _ADCHS1
                                    126 	.globl _ADCHS2
                                    127 	.globl _ADCHS3
                                    128 	.globl _ETGSEL0
                                    129 	.globl _ETGSEL1
                                    130 	.globl _ADCS
                                    131 	.globl _ADCF
                                    132 	.globl _RI_1
                                    133 	.globl _TI_1
                                    134 	.globl _RB8_1
                                    135 	.globl _TB8_1
                                    136 	.globl _REN_1
                                    137 	.globl _SM2_1
                                    138 	.globl _SM1_1
                                    139 	.globl _FE_1
                                    140 	.globl _SM0_1
                                    141 	.globl _EIPH1
                                    142 	.globl _EIP1
                                    143 	.globl _PMD
                                    144 	.globl _PMEN
                                    145 	.globl _PDTCNT
                                    146 	.globl _PDTEN
                                    147 	.globl _SCON_1
                                    148 	.globl _EIPH
                                    149 	.globl _AINDIDS
                                    150 	.globl _SPDR
                                    151 	.globl _SPSR
                                    152 	.globl _SPCR2
                                    153 	.globl _SPCR
                                    154 	.globl _CAPCON4
                                    155 	.globl _CAPCON3
                                    156 	.globl _B
                                    157 	.globl _EIP
                                    158 	.globl _C2H
                                    159 	.globl _C2L
                                    160 	.globl _PIF
                                    161 	.globl _PIPEN
                                    162 	.globl _PINEN
                                    163 	.globl _PICON
                                    164 	.globl _ADCCON0
                                    165 	.globl _C1H
                                    166 	.globl _C1L
                                    167 	.globl _C0H
                                    168 	.globl _C0L
                                    169 	.globl _ADCDLY
                                    170 	.globl _ADCCON2
                                    171 	.globl _ADCCON1
                                    172 	.globl _ACC
                                    173 	.globl _PWMCON1
                                    174 	.globl _PIOCON0
                                    175 	.globl _PWM3L
                                    176 	.globl _PWM2L
                                    177 	.globl _PWM1L
                                    178 	.globl _PWM0L
                                    179 	.globl _PWMPL
                                    180 	.globl _PWMCON0
                                    181 	.globl _FBD
                                    182 	.globl _PNP
                                    183 	.globl _PWM3H
                                    184 	.globl _PWM2H
                                    185 	.globl _PWM1H
                                    186 	.globl _PWM0H
                                    187 	.globl _PWMPH
                                    188 	.globl _PSW
                                    189 	.globl _ADCMPH
                                    190 	.globl _ADCMPL
                                    191 	.globl _PWM5L
                                    192 	.globl _TH2
                                    193 	.globl _PWM4L
                                    194 	.globl _TL2
                                    195 	.globl _RCMP2H
                                    196 	.globl _RCMP2L
                                    197 	.globl _T2MOD
                                    198 	.globl _T2CON
                                    199 	.globl _TA
                                    200 	.globl _PIOCON1
                                    201 	.globl _RH3
                                    202 	.globl _PWM5H
                                    203 	.globl _RL3
                                    204 	.globl _PWM4H
                                    205 	.globl _T3CON
                                    206 	.globl _ADCRH
                                    207 	.globl _ADCRL
                                    208 	.globl _I2ADDR
                                    209 	.globl _I2CON
                                    210 	.globl _I2TOC
                                    211 	.globl _I2CLK
                                    212 	.globl _I2STAT
                                    213 	.globl _I2DAT
                                    214 	.globl _SADDR_1
                                    215 	.globl _SADEN_1
                                    216 	.globl _SADEN
                                    217 	.globl _IP
                                    218 	.globl _PWMINTC
                                    219 	.globl _IPH
                                    220 	.globl _P2S
                                    221 	.globl _P1SR
                                    222 	.globl _P1M2
                                    223 	.globl _P1S
                                    224 	.globl _P1M1
                                    225 	.globl _P0SR
                                    226 	.globl _P0M2
                                    227 	.globl _P0S
                                    228 	.globl _P0M1
                                    229 	.globl _P3
                                    230 	.globl _IAPCN
                                    231 	.globl _IAPFD
                                    232 	.globl _P3SR
                                    233 	.globl _P3M2
                                    234 	.globl _P3S
                                    235 	.globl _P3M1
                                    236 	.globl _BODCON1
                                    237 	.globl _WDCON
                                    238 	.globl _SADDR
                                    239 	.globl _IE
                                    240 	.globl _IAPAH
                                    241 	.globl _IAPAL
                                    242 	.globl _IAPUEN
                                    243 	.globl _IAPTRG
                                    244 	.globl _BODCON0
                                    245 	.globl _AUXR1
                                    246 	.globl _P2
                                    247 	.globl _CHPCON
                                    248 	.globl _EIE1
                                    249 	.globl _EIE
                                    250 	.globl _SBUF_1
                                    251 	.globl _SBUF
                                    252 	.globl _SCON
                                    253 	.globl _CKEN
                                    254 	.globl _CKSWT
                                    255 	.globl _CKDIV
                                    256 	.globl _CAPCON2
                                    257 	.globl _CAPCON1
                                    258 	.globl _CAPCON0
                                    259 	.globl _SFRS
                                    260 	.globl _P1
                                    261 	.globl _WKCON
                                    262 	.globl _CKCON
                                    263 	.globl _TH1
                                    264 	.globl _TH0
                                    265 	.globl _TL1
                                    266 	.globl _TL0
                                    267 	.globl _TMOD
                                    268 	.globl _TCON
                                    269 	.globl _PCON
                                    270 	.globl _RWK
                                    271 	.globl _RCTRIM1
                                    272 	.globl _RCTRIM0
                                    273 	.globl _DPH
                                    274 	.globl _DPL
                                    275 	.globl _SP
                                    276 	.globl _P0
                                    277 	.globl _log_counter
                                    278 	.globl _lamp_state
                                    279 	.globl _uart_rx_state
                                    280 	.globl _uart_counter
                                    281 	.globl _button_unpressed
                                    282 	.globl _button_pressed
                                    283 	.globl _uart_flag
                                    284 	.globl _uart1_read_idx
                                    285 	.globl _uart1_next_idx
                                    286 	.globl _good_amp_count
                                    287 	.globl _cur_temp
                                    288 	.globl _cur_amp
                                    289 	.globl _acc_temp
                                    290 	.globl _acc_amp
                                    291 	.globl _sample_count
                                    292 	.globl _light_control_mode
                                    293 	.globl _pwm
                                    294 	.globl _flashing_count
                                    295 	.globl _flashing_on
                                    296 	.globl _is_uart_mode
                                    297 	.globl _light_mode
                                    298 	.globl _target_amp_PARM_2
                                    299 	.globl _uart1_rx_buffer
                                    300 	.globl _Timer0_Delay_PARM_3
                                    301 	.globl _Timer0_Delay_PARM_2
                                    302 ;--------------------------------------------------------
                                    303 ; special function registers
                                    304 ;--------------------------------------------------------
                                    305 	.area RSEG    (ABS,DATA)
      000000                        306 	.org 0x0000
                           000080   307 G$P0$0_0$0 == 0x0080
                           000080   308 _P0	=	0x0080
                           000081   309 G$SP$0_0$0 == 0x0081
                           000081   310 _SP	=	0x0081
                           000082   311 G$DPL$0_0$0 == 0x0082
                           000082   312 _DPL	=	0x0082
                           000083   313 G$DPH$0_0$0 == 0x0083
                           000083   314 _DPH	=	0x0083
                           000084   315 G$RCTRIM0$0_0$0 == 0x0084
                           000084   316 _RCTRIM0	=	0x0084
                           000085   317 G$RCTRIM1$0_0$0 == 0x0085
                           000085   318 _RCTRIM1	=	0x0085
                           000086   319 G$RWK$0_0$0 == 0x0086
                           000086   320 _RWK	=	0x0086
                           000087   321 G$PCON$0_0$0 == 0x0087
                           000087   322 _PCON	=	0x0087
                           000088   323 G$TCON$0_0$0 == 0x0088
                           000088   324 _TCON	=	0x0088
                           000089   325 G$TMOD$0_0$0 == 0x0089
                           000089   326 _TMOD	=	0x0089
                           00008A   327 G$TL0$0_0$0 == 0x008a
                           00008A   328 _TL0	=	0x008a
                           00008B   329 G$TL1$0_0$0 == 0x008b
                           00008B   330 _TL1	=	0x008b
                           00008C   331 G$TH0$0_0$0 == 0x008c
                           00008C   332 _TH0	=	0x008c
                           00008D   333 G$TH1$0_0$0 == 0x008d
                           00008D   334 _TH1	=	0x008d
                           00008E   335 G$CKCON$0_0$0 == 0x008e
                           00008E   336 _CKCON	=	0x008e
                           00008F   337 G$WKCON$0_0$0 == 0x008f
                           00008F   338 _WKCON	=	0x008f
                           000090   339 G$P1$0_0$0 == 0x0090
                           000090   340 _P1	=	0x0090
                           000091   341 G$SFRS$0_0$0 == 0x0091
                           000091   342 _SFRS	=	0x0091
                           000092   343 G$CAPCON0$0_0$0 == 0x0092
                           000092   344 _CAPCON0	=	0x0092
                           000093   345 G$CAPCON1$0_0$0 == 0x0093
                           000093   346 _CAPCON1	=	0x0093
                           000094   347 G$CAPCON2$0_0$0 == 0x0094
                           000094   348 _CAPCON2	=	0x0094
                           000095   349 G$CKDIV$0_0$0 == 0x0095
                           000095   350 _CKDIV	=	0x0095
                           000096   351 G$CKSWT$0_0$0 == 0x0096
                           000096   352 _CKSWT	=	0x0096
                           000097   353 G$CKEN$0_0$0 == 0x0097
                           000097   354 _CKEN	=	0x0097
                           000098   355 G$SCON$0_0$0 == 0x0098
                           000098   356 _SCON	=	0x0098
                           000099   357 G$SBUF$0_0$0 == 0x0099
                           000099   358 _SBUF	=	0x0099
                           00009A   359 G$SBUF_1$0_0$0 == 0x009a
                           00009A   360 _SBUF_1	=	0x009a
                           00009B   361 G$EIE$0_0$0 == 0x009b
                           00009B   362 _EIE	=	0x009b
                           00009C   363 G$EIE1$0_0$0 == 0x009c
                           00009C   364 _EIE1	=	0x009c
                           00009F   365 G$CHPCON$0_0$0 == 0x009f
                           00009F   366 _CHPCON	=	0x009f
                           0000A0   367 G$P2$0_0$0 == 0x00a0
                           0000A0   368 _P2	=	0x00a0
                           0000A2   369 G$AUXR1$0_0$0 == 0x00a2
                           0000A2   370 _AUXR1	=	0x00a2
                           0000A3   371 G$BODCON0$0_0$0 == 0x00a3
                           0000A3   372 _BODCON0	=	0x00a3
                           0000A4   373 G$IAPTRG$0_0$0 == 0x00a4
                           0000A4   374 _IAPTRG	=	0x00a4
                           0000A5   375 G$IAPUEN$0_0$0 == 0x00a5
                           0000A5   376 _IAPUEN	=	0x00a5
                           0000A6   377 G$IAPAL$0_0$0 == 0x00a6
                           0000A6   378 _IAPAL	=	0x00a6
                           0000A7   379 G$IAPAH$0_0$0 == 0x00a7
                           0000A7   380 _IAPAH	=	0x00a7
                           0000A8   381 G$IE$0_0$0 == 0x00a8
                           0000A8   382 _IE	=	0x00a8
                           0000A9   383 G$SADDR$0_0$0 == 0x00a9
                           0000A9   384 _SADDR	=	0x00a9
                           0000AA   385 G$WDCON$0_0$0 == 0x00aa
                           0000AA   386 _WDCON	=	0x00aa
                           0000AB   387 G$BODCON1$0_0$0 == 0x00ab
                           0000AB   388 _BODCON1	=	0x00ab
                           0000AC   389 G$P3M1$0_0$0 == 0x00ac
                           0000AC   390 _P3M1	=	0x00ac
                           0000AC   391 G$P3S$0_0$0 == 0x00ac
                           0000AC   392 _P3S	=	0x00ac
                           0000AD   393 G$P3M2$0_0$0 == 0x00ad
                           0000AD   394 _P3M2	=	0x00ad
                           0000AD   395 G$P3SR$0_0$0 == 0x00ad
                           0000AD   396 _P3SR	=	0x00ad
                           0000AE   397 G$IAPFD$0_0$0 == 0x00ae
                           0000AE   398 _IAPFD	=	0x00ae
                           0000AF   399 G$IAPCN$0_0$0 == 0x00af
                           0000AF   400 _IAPCN	=	0x00af
                           0000B0   401 G$P3$0_0$0 == 0x00b0
                           0000B0   402 _P3	=	0x00b0
                           0000B1   403 G$P0M1$0_0$0 == 0x00b1
                           0000B1   404 _P0M1	=	0x00b1
                           0000B1   405 G$P0S$0_0$0 == 0x00b1
                           0000B1   406 _P0S	=	0x00b1
                           0000B2   407 G$P0M2$0_0$0 == 0x00b2
                           0000B2   408 _P0M2	=	0x00b2
                           0000B2   409 G$P0SR$0_0$0 == 0x00b2
                           0000B2   410 _P0SR	=	0x00b2
                           0000B3   411 G$P1M1$0_0$0 == 0x00b3
                           0000B3   412 _P1M1	=	0x00b3
                           0000B3   413 G$P1S$0_0$0 == 0x00b3
                           0000B3   414 _P1S	=	0x00b3
                           0000B4   415 G$P1M2$0_0$0 == 0x00b4
                           0000B4   416 _P1M2	=	0x00b4
                           0000B4   417 G$P1SR$0_0$0 == 0x00b4
                           0000B4   418 _P1SR	=	0x00b4
                           0000B5   419 G$P2S$0_0$0 == 0x00b5
                           0000B5   420 _P2S	=	0x00b5
                           0000B7   421 G$IPH$0_0$0 == 0x00b7
                           0000B7   422 _IPH	=	0x00b7
                           0000B7   423 G$PWMINTC$0_0$0 == 0x00b7
                           0000B7   424 _PWMINTC	=	0x00b7
                           0000B8   425 G$IP$0_0$0 == 0x00b8
                           0000B8   426 _IP	=	0x00b8
                           0000B9   427 G$SADEN$0_0$0 == 0x00b9
                           0000B9   428 _SADEN	=	0x00b9
                           0000BA   429 G$SADEN_1$0_0$0 == 0x00ba
                           0000BA   430 _SADEN_1	=	0x00ba
                           0000BB   431 G$SADDR_1$0_0$0 == 0x00bb
                           0000BB   432 _SADDR_1	=	0x00bb
                           0000BC   433 G$I2DAT$0_0$0 == 0x00bc
                           0000BC   434 _I2DAT	=	0x00bc
                           0000BD   435 G$I2STAT$0_0$0 == 0x00bd
                           0000BD   436 _I2STAT	=	0x00bd
                           0000BE   437 G$I2CLK$0_0$0 == 0x00be
                           0000BE   438 _I2CLK	=	0x00be
                           0000BF   439 G$I2TOC$0_0$0 == 0x00bf
                           0000BF   440 _I2TOC	=	0x00bf
                           0000C0   441 G$I2CON$0_0$0 == 0x00c0
                           0000C0   442 _I2CON	=	0x00c0
                           0000C1   443 G$I2ADDR$0_0$0 == 0x00c1
                           0000C1   444 _I2ADDR	=	0x00c1
                           0000C2   445 G$ADCRL$0_0$0 == 0x00c2
                           0000C2   446 _ADCRL	=	0x00c2
                           0000C3   447 G$ADCRH$0_0$0 == 0x00c3
                           0000C3   448 _ADCRH	=	0x00c3
                           0000C4   449 G$T3CON$0_0$0 == 0x00c4
                           0000C4   450 _T3CON	=	0x00c4
                           0000C4   451 G$PWM4H$0_0$0 == 0x00c4
                           0000C4   452 _PWM4H	=	0x00c4
                           0000C5   453 G$RL3$0_0$0 == 0x00c5
                           0000C5   454 _RL3	=	0x00c5
                           0000C5   455 G$PWM5H$0_0$0 == 0x00c5
                           0000C5   456 _PWM5H	=	0x00c5
                           0000C6   457 G$RH3$0_0$0 == 0x00c6
                           0000C6   458 _RH3	=	0x00c6
                           0000C6   459 G$PIOCON1$0_0$0 == 0x00c6
                           0000C6   460 _PIOCON1	=	0x00c6
                           0000C7   461 G$TA$0_0$0 == 0x00c7
                           0000C7   462 _TA	=	0x00c7
                           0000C8   463 G$T2CON$0_0$0 == 0x00c8
                           0000C8   464 _T2CON	=	0x00c8
                           0000C9   465 G$T2MOD$0_0$0 == 0x00c9
                           0000C9   466 _T2MOD	=	0x00c9
                           0000CA   467 G$RCMP2L$0_0$0 == 0x00ca
                           0000CA   468 _RCMP2L	=	0x00ca
                           0000CB   469 G$RCMP2H$0_0$0 == 0x00cb
                           0000CB   470 _RCMP2H	=	0x00cb
                           0000CC   471 G$TL2$0_0$0 == 0x00cc
                           0000CC   472 _TL2	=	0x00cc
                           0000CC   473 G$PWM4L$0_0$0 == 0x00cc
                           0000CC   474 _PWM4L	=	0x00cc
                           0000CD   475 G$TH2$0_0$0 == 0x00cd
                           0000CD   476 _TH2	=	0x00cd
                           0000CD   477 G$PWM5L$0_0$0 == 0x00cd
                           0000CD   478 _PWM5L	=	0x00cd
                           0000CE   479 G$ADCMPL$0_0$0 == 0x00ce
                           0000CE   480 _ADCMPL	=	0x00ce
                           0000CF   481 G$ADCMPH$0_0$0 == 0x00cf
                           0000CF   482 _ADCMPH	=	0x00cf
                           0000D0   483 G$PSW$0_0$0 == 0x00d0
                           0000D0   484 _PSW	=	0x00d0
                           0000D1   485 G$PWMPH$0_0$0 == 0x00d1
                           0000D1   486 _PWMPH	=	0x00d1
                           0000D2   487 G$PWM0H$0_0$0 == 0x00d2
                           0000D2   488 _PWM0H	=	0x00d2
                           0000D3   489 G$PWM1H$0_0$0 == 0x00d3
                           0000D3   490 _PWM1H	=	0x00d3
                           0000D4   491 G$PWM2H$0_0$0 == 0x00d4
                           0000D4   492 _PWM2H	=	0x00d4
                           0000D5   493 G$PWM3H$0_0$0 == 0x00d5
                           0000D5   494 _PWM3H	=	0x00d5
                           0000D6   495 G$PNP$0_0$0 == 0x00d6
                           0000D6   496 _PNP	=	0x00d6
                           0000D7   497 G$FBD$0_0$0 == 0x00d7
                           0000D7   498 _FBD	=	0x00d7
                           0000D8   499 G$PWMCON0$0_0$0 == 0x00d8
                           0000D8   500 _PWMCON0	=	0x00d8
                           0000D9   501 G$PWMPL$0_0$0 == 0x00d9
                           0000D9   502 _PWMPL	=	0x00d9
                           0000DA   503 G$PWM0L$0_0$0 == 0x00da
                           0000DA   504 _PWM0L	=	0x00da
                           0000DB   505 G$PWM1L$0_0$0 == 0x00db
                           0000DB   506 _PWM1L	=	0x00db
                           0000DC   507 G$PWM2L$0_0$0 == 0x00dc
                           0000DC   508 _PWM2L	=	0x00dc
                           0000DD   509 G$PWM3L$0_0$0 == 0x00dd
                           0000DD   510 _PWM3L	=	0x00dd
                           0000DE   511 G$PIOCON0$0_0$0 == 0x00de
                           0000DE   512 _PIOCON0	=	0x00de
                           0000DF   513 G$PWMCON1$0_0$0 == 0x00df
                           0000DF   514 _PWMCON1	=	0x00df
                           0000E0   515 G$ACC$0_0$0 == 0x00e0
                           0000E0   516 _ACC	=	0x00e0
                           0000E1   517 G$ADCCON1$0_0$0 == 0x00e1
                           0000E1   518 _ADCCON1	=	0x00e1
                           0000E2   519 G$ADCCON2$0_0$0 == 0x00e2
                           0000E2   520 _ADCCON2	=	0x00e2
                           0000E3   521 G$ADCDLY$0_0$0 == 0x00e3
                           0000E3   522 _ADCDLY	=	0x00e3
                           0000E4   523 G$C0L$0_0$0 == 0x00e4
                           0000E4   524 _C0L	=	0x00e4
                           0000E5   525 G$C0H$0_0$0 == 0x00e5
                           0000E5   526 _C0H	=	0x00e5
                           0000E6   527 G$C1L$0_0$0 == 0x00e6
                           0000E6   528 _C1L	=	0x00e6
                           0000E7   529 G$C1H$0_0$0 == 0x00e7
                           0000E7   530 _C1H	=	0x00e7
                           0000E8   531 G$ADCCON0$0_0$0 == 0x00e8
                           0000E8   532 _ADCCON0	=	0x00e8
                           0000E9   533 G$PICON$0_0$0 == 0x00e9
                           0000E9   534 _PICON	=	0x00e9
                           0000EA   535 G$PINEN$0_0$0 == 0x00ea
                           0000EA   536 _PINEN	=	0x00ea
                           0000EB   537 G$PIPEN$0_0$0 == 0x00eb
                           0000EB   538 _PIPEN	=	0x00eb
                           0000EC   539 G$PIF$0_0$0 == 0x00ec
                           0000EC   540 _PIF	=	0x00ec
                           0000ED   541 G$C2L$0_0$0 == 0x00ed
                           0000ED   542 _C2L	=	0x00ed
                           0000EE   543 G$C2H$0_0$0 == 0x00ee
                           0000EE   544 _C2H	=	0x00ee
                           0000EF   545 G$EIP$0_0$0 == 0x00ef
                           0000EF   546 _EIP	=	0x00ef
                           0000F0   547 G$B$0_0$0 == 0x00f0
                           0000F0   548 _B	=	0x00f0
                           0000F1   549 G$CAPCON3$0_0$0 == 0x00f1
                           0000F1   550 _CAPCON3	=	0x00f1
                           0000F2   551 G$CAPCON4$0_0$0 == 0x00f2
                           0000F2   552 _CAPCON4	=	0x00f2
                           0000F3   553 G$SPCR$0_0$0 == 0x00f3
                           0000F3   554 _SPCR	=	0x00f3
                           0000F3   555 G$SPCR2$0_0$0 == 0x00f3
                           0000F3   556 _SPCR2	=	0x00f3
                           0000F4   557 G$SPSR$0_0$0 == 0x00f4
                           0000F4   558 _SPSR	=	0x00f4
                           0000F5   559 G$SPDR$0_0$0 == 0x00f5
                           0000F5   560 _SPDR	=	0x00f5
                           0000F6   561 G$AINDIDS$0_0$0 == 0x00f6
                           0000F6   562 _AINDIDS	=	0x00f6
                           0000F7   563 G$EIPH$0_0$0 == 0x00f7
                           0000F7   564 _EIPH	=	0x00f7
                           0000F8   565 G$SCON_1$0_0$0 == 0x00f8
                           0000F8   566 _SCON_1	=	0x00f8
                           0000F9   567 G$PDTEN$0_0$0 == 0x00f9
                           0000F9   568 _PDTEN	=	0x00f9
                           0000FA   569 G$PDTCNT$0_0$0 == 0x00fa
                           0000FA   570 _PDTCNT	=	0x00fa
                           0000FB   571 G$PMEN$0_0$0 == 0x00fb
                           0000FB   572 _PMEN	=	0x00fb
                           0000FC   573 G$PMD$0_0$0 == 0x00fc
                           0000FC   574 _PMD	=	0x00fc
                           0000FE   575 G$EIP1$0_0$0 == 0x00fe
                           0000FE   576 _EIP1	=	0x00fe
                           0000FF   577 G$EIPH1$0_0$0 == 0x00ff
                           0000FF   578 _EIPH1	=	0x00ff
                                    579 ;--------------------------------------------------------
                                    580 ; special function bits
                                    581 ;--------------------------------------------------------
                                    582 	.area RSEG    (ABS,DATA)
      000000                        583 	.org 0x0000
                           0000FF   584 G$SM0_1$0_0$0 == 0x00ff
                           0000FF   585 _SM0_1	=	0x00ff
                           0000FF   586 G$FE_1$0_0$0 == 0x00ff
                           0000FF   587 _FE_1	=	0x00ff
                           0000FE   588 G$SM1_1$0_0$0 == 0x00fe
                           0000FE   589 _SM1_1	=	0x00fe
                           0000FD   590 G$SM2_1$0_0$0 == 0x00fd
                           0000FD   591 _SM2_1	=	0x00fd
                           0000FC   592 G$REN_1$0_0$0 == 0x00fc
                           0000FC   593 _REN_1	=	0x00fc
                           0000FB   594 G$TB8_1$0_0$0 == 0x00fb
                           0000FB   595 _TB8_1	=	0x00fb
                           0000FA   596 G$RB8_1$0_0$0 == 0x00fa
                           0000FA   597 _RB8_1	=	0x00fa
                           0000F9   598 G$TI_1$0_0$0 == 0x00f9
                           0000F9   599 _TI_1	=	0x00f9
                           0000F8   600 G$RI_1$0_0$0 == 0x00f8
                           0000F8   601 _RI_1	=	0x00f8
                           0000EF   602 G$ADCF$0_0$0 == 0x00ef
                           0000EF   603 _ADCF	=	0x00ef
                           0000EE   604 G$ADCS$0_0$0 == 0x00ee
                           0000EE   605 _ADCS	=	0x00ee
                           0000ED   606 G$ETGSEL1$0_0$0 == 0x00ed
                           0000ED   607 _ETGSEL1	=	0x00ed
                           0000EC   608 G$ETGSEL0$0_0$0 == 0x00ec
                           0000EC   609 _ETGSEL0	=	0x00ec
                           0000EB   610 G$ADCHS3$0_0$0 == 0x00eb
                           0000EB   611 _ADCHS3	=	0x00eb
                           0000EA   612 G$ADCHS2$0_0$0 == 0x00ea
                           0000EA   613 _ADCHS2	=	0x00ea
                           0000E9   614 G$ADCHS1$0_0$0 == 0x00e9
                           0000E9   615 _ADCHS1	=	0x00e9
                           0000E8   616 G$ADCHS0$0_0$0 == 0x00e8
                           0000E8   617 _ADCHS0	=	0x00e8
                           0000DF   618 G$PWMRUN$0_0$0 == 0x00df
                           0000DF   619 _PWMRUN	=	0x00df
                           0000DE   620 G$LOAD$0_0$0 == 0x00de
                           0000DE   621 _LOAD	=	0x00de
                           0000DD   622 G$PWMF$0_0$0 == 0x00dd
                           0000DD   623 _PWMF	=	0x00dd
                           0000DC   624 G$CLRPWM$0_0$0 == 0x00dc
                           0000DC   625 _CLRPWM	=	0x00dc
                           0000D7   626 G$CY$0_0$0 == 0x00d7
                           0000D7   627 _CY	=	0x00d7
                           0000D6   628 G$AC$0_0$0 == 0x00d6
                           0000D6   629 _AC	=	0x00d6
                           0000D5   630 G$F0$0_0$0 == 0x00d5
                           0000D5   631 _F0	=	0x00d5
                           0000D4   632 G$RS1$0_0$0 == 0x00d4
                           0000D4   633 _RS1	=	0x00d4
                           0000D3   634 G$RS0$0_0$0 == 0x00d3
                           0000D3   635 _RS0	=	0x00d3
                           0000D2   636 G$OV$0_0$0 == 0x00d2
                           0000D2   637 _OV	=	0x00d2
                           0000D0   638 G$P$0_0$0 == 0x00d0
                           0000D0   639 _P	=	0x00d0
                           0000CF   640 G$TF2$0_0$0 == 0x00cf
                           0000CF   641 _TF2	=	0x00cf
                           0000CA   642 G$TR2$0_0$0 == 0x00ca
                           0000CA   643 _TR2	=	0x00ca
                           0000C8   644 G$CM_RL2$0_0$0 == 0x00c8
                           0000C8   645 _CM_RL2	=	0x00c8
                           0000C6   646 G$I2CEN$0_0$0 == 0x00c6
                           0000C6   647 _I2CEN	=	0x00c6
                           0000C5   648 G$STA$0_0$0 == 0x00c5
                           0000C5   649 _STA	=	0x00c5
                           0000C4   650 G$STO$0_0$0 == 0x00c4
                           0000C4   651 _STO	=	0x00c4
                           0000C3   652 G$SI$0_0$0 == 0x00c3
                           0000C3   653 _SI	=	0x00c3
                           0000C2   654 G$AA$0_0$0 == 0x00c2
                           0000C2   655 _AA	=	0x00c2
                           0000C0   656 G$I2CPX$0_0$0 == 0x00c0
                           0000C0   657 _I2CPX	=	0x00c0
                           0000BE   658 G$PADC$0_0$0 == 0x00be
                           0000BE   659 _PADC	=	0x00be
                           0000BD   660 G$PBOD$0_0$0 == 0x00bd
                           0000BD   661 _PBOD	=	0x00bd
                           0000BC   662 G$PS$0_0$0 == 0x00bc
                           0000BC   663 _PS	=	0x00bc
                           0000BB   664 G$PT1$0_0$0 == 0x00bb
                           0000BB   665 _PT1	=	0x00bb
                           0000BA   666 G$PX1$0_0$0 == 0x00ba
                           0000BA   667 _PX1	=	0x00ba
                           0000B9   668 G$PT0$0_0$0 == 0x00b9
                           0000B9   669 _PT0	=	0x00b9
                           0000B8   670 G$PX0$0_0$0 == 0x00b8
                           0000B8   671 _PX0	=	0x00b8
                           0000B0   672 G$P30$0_0$0 == 0x00b0
                           0000B0   673 _P30	=	0x00b0
                           0000AF   674 G$EA$0_0$0 == 0x00af
                           0000AF   675 _EA	=	0x00af
                           0000AE   676 G$EADC$0_0$0 == 0x00ae
                           0000AE   677 _EADC	=	0x00ae
                           0000AD   678 G$EBOD$0_0$0 == 0x00ad
                           0000AD   679 _EBOD	=	0x00ad
                           0000AC   680 G$ES$0_0$0 == 0x00ac
                           0000AC   681 _ES	=	0x00ac
                           0000AB   682 G$ET1$0_0$0 == 0x00ab
                           0000AB   683 _ET1	=	0x00ab
                           0000AA   684 G$EX1$0_0$0 == 0x00aa
                           0000AA   685 _EX1	=	0x00aa
                           0000A9   686 G$ET0$0_0$0 == 0x00a9
                           0000A9   687 _ET0	=	0x00a9
                           0000A8   688 G$EX0$0_0$0 == 0x00a8
                           0000A8   689 _EX0	=	0x00a8
                           0000A0   690 G$P20$0_0$0 == 0x00a0
                           0000A0   691 _P20	=	0x00a0
                           00009F   692 G$SM0$0_0$0 == 0x009f
                           00009F   693 _SM0	=	0x009f
                           00009F   694 G$FE$0_0$0 == 0x009f
                           00009F   695 _FE	=	0x009f
                           00009E   696 G$SM1$0_0$0 == 0x009e
                           00009E   697 _SM1	=	0x009e
                           00009D   698 G$SM2$0_0$0 == 0x009d
                           00009D   699 _SM2	=	0x009d
                           00009C   700 G$REN$0_0$0 == 0x009c
                           00009C   701 _REN	=	0x009c
                           00009B   702 G$TB8$0_0$0 == 0x009b
                           00009B   703 _TB8	=	0x009b
                           00009A   704 G$RB8$0_0$0 == 0x009a
                           00009A   705 _RB8	=	0x009a
                           000099   706 G$TI$0_0$0 == 0x0099
                           000099   707 _TI	=	0x0099
                           000098   708 G$RI$0_0$0 == 0x0098
                           000098   709 _RI	=	0x0098
                           000097   710 G$P17$0_0$0 == 0x0097
                           000097   711 _P17	=	0x0097
                           000096   712 G$P16$0_0$0 == 0x0096
                           000096   713 _P16	=	0x0096
                           000096   714 G$TXD_1$0_0$0 == 0x0096
                           000096   715 _TXD_1	=	0x0096
                           000095   716 G$P15$0_0$0 == 0x0095
                           000095   717 _P15	=	0x0095
                           000094   718 G$P14$0_0$0 == 0x0094
                           000094   719 _P14	=	0x0094
                           000094   720 G$SDA$0_0$0 == 0x0094
                           000094   721 _SDA	=	0x0094
                           000093   722 G$P13$0_0$0 == 0x0093
                           000093   723 _P13	=	0x0093
                           000093   724 G$SCL$0_0$0 == 0x0093
                           000093   725 _SCL	=	0x0093
                           000092   726 G$P12$0_0$0 == 0x0092
                           000092   727 _P12	=	0x0092
                           000091   728 G$P11$0_0$0 == 0x0091
                           000091   729 _P11	=	0x0091
                           000090   730 G$P10$0_0$0 == 0x0090
                           000090   731 _P10	=	0x0090
                           00008F   732 G$TF1$0_0$0 == 0x008f
                           00008F   733 _TF1	=	0x008f
                           00008E   734 G$TR1$0_0$0 == 0x008e
                           00008E   735 _TR1	=	0x008e
                           00008D   736 G$TF0$0_0$0 == 0x008d
                           00008D   737 _TF0	=	0x008d
                           00008C   738 G$TR0$0_0$0 == 0x008c
                           00008C   739 _TR0	=	0x008c
                           00008B   740 G$IE1$0_0$0 == 0x008b
                           00008B   741 _IE1	=	0x008b
                           00008A   742 G$IT1$0_0$0 == 0x008a
                           00008A   743 _IT1	=	0x008a
                           000089   744 G$IE0$0_0$0 == 0x0089
                           000089   745 _IE0	=	0x0089
                           000088   746 G$IT0$0_0$0 == 0x0088
                           000088   747 _IT0	=	0x0088
                           000087   748 G$P07$0_0$0 == 0x0087
                           000087   749 _P07	=	0x0087
                           000087   750 G$RXD$0_0$0 == 0x0087
                           000087   751 _RXD	=	0x0087
                           000086   752 G$P06$0_0$0 == 0x0086
                           000086   753 _P06	=	0x0086
                           000086   754 G$TXD$0_0$0 == 0x0086
                           000086   755 _TXD	=	0x0086
                           000085   756 G$P05$0_0$0 == 0x0085
                           000085   757 _P05	=	0x0085
                           000084   758 G$P04$0_0$0 == 0x0084
                           000084   759 _P04	=	0x0084
                           000084   760 G$STADC$0_0$0 == 0x0084
                           000084   761 _STADC	=	0x0084
                           000083   762 G$P03$0_0$0 == 0x0083
                           000083   763 _P03	=	0x0083
                           000082   764 G$P02$0_0$0 == 0x0082
                           000082   765 _P02	=	0x0082
                           000082   766 G$RXD_1$0_0$0 == 0x0082
                           000082   767 _RXD_1	=	0x0082
                           000081   768 G$P01$0_0$0 == 0x0081
                           000081   769 _P01	=	0x0081
                           000081   770 G$MISO$0_0$0 == 0x0081
                           000081   771 _MISO	=	0x0081
                           000080   772 G$P00$0_0$0 == 0x0080
                           000080   773 _P00	=	0x0080
                           000080   774 G$MOSI$0_0$0 == 0x0080
                           000080   775 _MOSI	=	0x0080
                                    776 ;--------------------------------------------------------
                                    777 ; overlayable register banks
                                    778 ;--------------------------------------------------------
                                    779 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        780 	.ds 8
                                    781 ;--------------------------------------------------------
                                    782 ; overlayable bit register bank
                                    783 ;--------------------------------------------------------
                                    784 	.area BIT_BANK	(REL,OVR,DATA)
      000021                        785 bits:
      000021                        786 	.ds 1
                           008000   787 	b0 = bits[0]
                           008100   788 	b1 = bits[1]
                           008200   789 	b2 = bits[2]
                           008300   790 	b3 = bits[3]
                           008400   791 	b4 = bits[4]
                           008500   792 	b5 = bits[5]
                           008600   793 	b6 = bits[6]
                           008700   794 	b7 = bits[7]
                                    795 ;--------------------------------------------------------
                                    796 ; internal ram data
                                    797 ;--------------------------------------------------------
                                    798 	.area DSEG    (DATA)
                           000000   799 Lmain.control_loop$sloc0$0_1$0==.
      000022                        800 _control_loop_sloc0_1_0:
      000022                        801 	.ds 4
                                    802 ;--------------------------------------------------------
                                    803 ; internal ram data
                                    804 ;--------------------------------------------------------
                                    805 	.area INITIALIZED
                                    806 ;--------------------------------------------------------
                                    807 ; overlayable items in internal ram
                                    808 ;--------------------------------------------------------
                                    809 ;--------------------------------------------------------
                                    810 ; Stack segment in internal ram
                                    811 ;--------------------------------------------------------
                                    812 	.area SSEG
      00002D                        813 __start__stack:
      00002D                        814 	.ds	1
                                    815 
                                    816 ;--------------------------------------------------------
                                    817 ; indirectly addressable internal ram data
                                    818 ;--------------------------------------------------------
                                    819 	.area ISEG    (DATA)
                                    820 ;--------------------------------------------------------
                                    821 ; absolute internal ram data
                                    822 ;--------------------------------------------------------
                                    823 	.area IABS    (ABS,DATA)
                                    824 	.area IABS    (ABS,DATA)
                                    825 ;--------------------------------------------------------
                                    826 ; bit data
                                    827 ;--------------------------------------------------------
                                    828 	.area BSEG    (BIT)
                                    829 ;--------------------------------------------------------
                                    830 ; paged external ram data
                                    831 ;--------------------------------------------------------
                                    832 	.area PSEG    (PAG,XDATA)
                                    833 ;--------------------------------------------------------
                                    834 ; uninitialized external ram data
                                    835 ;--------------------------------------------------------
                                    836 	.area XSEG    (XDATA)
                           000000   837 Lmain.Timer0_Delay$u16CNT$1_0$145==.
      000001                        838 _Timer0_Delay_PARM_2:
      000001                        839 	.ds 2
                           000002   840 Lmain.Timer0_Delay$u16DLYUnit$1_0$145==.
      000003                        841 _Timer0_Delay_PARM_3:
      000003                        842 	.ds 2
                           000004   843 Lmain.Timer0_Delay$u32SYSCLK$1_0$145==.
      000005                        844 _Timer0_Delay_u32SYSCLK_65536_145:
      000005                        845 	.ds 4
                           000008   846 G$uart1_rx_buffer$0_0$0==.
      000009                        847 _uart1_rx_buffer::
      000009                        848 	.ds 16
                           000018   849 Lmain.has_high_beam$mode$1_0$173==.
      000019                        850 _has_high_beam_mode_65536_173:
      000019                        851 	.ds 1
                           000019   852 Lmain.avg_amp$idx$1_0$175==.
      00001A                        853 _avg_amp_idx_65536_175:
      00001A                        854 	.ds 1
                           00001A   855 Lmain.target_amp$idx$1_0$179==.
      00001B                        856 _target_amp_PARM_2:
      00001B                        857 	.ds 1
                           00001B   858 Lmain.target_amp$mode$1_0$179==.
      00001C                        859 _target_amp_mode_65536_179:
      00001C                        860 	.ds 1
                           00001C   861 Lmain.changeMode$new_mode$1_0$185==.
      00001D                        862 _changeMode_new_mode_65536_185:
      00001D                        863 	.ds 1
                           00001D   864 Lmain.process_uart$ch$2_0$203==.
      00001E                        865 _process_uart_ch_131072_203:
      00001E                        866 	.ds 1
                           00001E   867 Lmain.mode_changing_control$light_changing$1_0$223==.
      00001F                        868 _mode_changing_control_light_changing_65536_223:
      00001F                        869 	.ds 1
                           00001F   870 Lmain.mode_stable_control$light_changing$1_0$246==.
      000020                        871 _mode_stable_control_light_changing_65536_246:
      000020                        872 	.ds 1
                           000020   873 Lmain.control_loop$light_changing$1_0$253==.
      000021                        874 _control_loop_light_changing_65536_253:
      000021                        875 	.ds 1
                                    876 ;--------------------------------------------------------
                                    877 ; absolute external ram data
                                    878 ;--------------------------------------------------------
                                    879 	.area XABS    (ABS,XDATA)
                                    880 ;--------------------------------------------------------
                                    881 ; initialized external ram data
                                    882 ;--------------------------------------------------------
                                    883 	.area XISEG   (XDATA)
                           000000   884 G$light_mode$0_0$0==.
      00005A                        885 _light_mode::
      00005A                        886 	.ds 1
                           000001   887 G$is_uart_mode$0_0$0==.
      00005B                        888 _is_uart_mode::
      00005B                        889 	.ds 1
                           000002   890 G$flashing_on$0_0$0==.
      00005C                        891 _flashing_on::
      00005C                        892 	.ds 1
                           000003   893 G$flashing_count$0_0$0==.
      00005D                        894 _flashing_count::
      00005D                        895 	.ds 2
                           000005   896 G$pwm$0_0$0==.
      00005F                        897 _pwm::
      00005F                        898 	.ds 4
                           000009   899 G$light_control_mode$0_0$0==.
      000063                        900 _light_control_mode::
      000063                        901 	.ds 2
                           00000B   902 G$sample_count$0_0$0==.
      000065                        903 _sample_count::
      000065                        904 	.ds 1
                           00000C   905 G$acc_amp$0_0$0==.
      000066                        906 _acc_amp::
      000066                        907 	.ds 8
                           000014   908 G$acc_temp$0_0$0==.
      00006E                        909 _acc_temp::
      00006E                        910 	.ds 4
                           000018   911 G$cur_amp$0_0$0==.
      000072                        912 _cur_amp::
      000072                        913 	.ds 4
                           00001C   914 G$cur_temp$0_0$0==.
      000076                        915 _cur_temp::
      000076                        916 	.ds 2
                           00001E   917 G$good_amp_count$0_0$0==.
      000078                        918 _good_amp_count::
      000078                        919 	.ds 2
                           000020   920 G$uart1_next_idx$0_0$0==.
      00007A                        921 _uart1_next_idx::
      00007A                        922 	.ds 1
                           000021   923 G$uart1_read_idx$0_0$0==.
      00007B                        924 _uart1_read_idx::
      00007B                        925 	.ds 1
                           000022   926 G$uart_flag$0_0$0==.
      00007C                        927 _uart_flag::
      00007C                        928 	.ds 1
                           000023   929 G$button_pressed$0_0$0==.
      00007D                        930 _button_pressed::
      00007D                        931 	.ds 4
                           000027   932 G$button_unpressed$0_0$0==.
      000081                        933 _button_unpressed::
      000081                        934 	.ds 4
                           00002B   935 G$uart_counter$0_0$0==.
      000085                        936 _uart_counter::
      000085                        937 	.ds 4
                           00002F   938 G$uart_rx_state$0_0$0==.
      000089                        939 _uart_rx_state::
      000089                        940 	.ds 1
                           000030   941 G$lamp_state$0_0$0==.
      00008A                        942 _lamp_state::
      00008A                        943 	.ds 1
                           000031   944 G$log_counter$0_0$0==.
      00008B                        945 _log_counter::
      00008B                        946 	.ds 4
                                    947 	.area HOME    (CODE)
                                    948 	.area GSINIT0 (CODE)
                                    949 	.area GSINIT1 (CODE)
                                    950 	.area GSINIT2 (CODE)
                                    951 	.area GSINIT3 (CODE)
                                    952 	.area GSINIT4 (CODE)
                                    953 	.area GSINIT5 (CODE)
                                    954 	.area GSINIT  (CODE)
                                    955 	.area GSFINAL (CODE)
                                    956 	.area CSEG    (CODE)
                                    957 ;--------------------------------------------------------
                                    958 ; interrupt vector
                                    959 ;--------------------------------------------------------
                                    960 	.area HOME    (CODE)
      000000                        961 __interrupt_vect:
      000000 02 00 81         [24]  962 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  963 	reti
      000004                        964 	.ds	7
      00000B 32               [24]  965 	reti
      00000C                        966 	.ds	7
      000013 32               [24]  967 	reti
      000014                        968 	.ds	7
      00001B 32               [24]  969 	reti
      00001C                        970 	.ds	7
      000023 32               [24]  971 	reti
      000024                        972 	.ds	7
      00002B 32               [24]  973 	reti
      00002C                        974 	.ds	7
      000033 32               [24]  975 	reti
      000034                        976 	.ds	7
      00003B 02 02 48         [24]  977 	ljmp	_PinInterrupt_ISR
      00003E                        978 	.ds	5
      000043 32               [24]  979 	reti
      000044                        980 	.ds	7
      00004B 32               [24]  981 	reti
      00004C                        982 	.ds	7
      000053 32               [24]  983 	reti
      000054                        984 	.ds	7
      00005B 32               [24]  985 	reti
      00005C                        986 	.ds	7
      000063 32               [24]  987 	reti
      000064                        988 	.ds	7
      00006B 32               [24]  989 	reti
      00006C                        990 	.ds	7
      000073 32               [24]  991 	reti
      000074                        992 	.ds	7
      00007B 02 01 A5         [24]  993 	ljmp	_SerialPort1_ISR
                                    994 ;--------------------------------------------------------
                                    995 ; global & static initialisations
                                    996 ;--------------------------------------------------------
                                    997 	.area HOME    (CODE)
                                    998 	.area GSINIT  (CODE)
                                    999 	.area GSFINAL (CODE)
                                   1000 	.area GSINIT  (CODE)
                                   1001 	.globl __sdcc_gsinit_startup
                                   1002 	.globl __sdcc_program_startup
                                   1003 	.globl __start__stack
                                   1004 	.globl __mcs51_genXINIT
                                   1005 	.globl __mcs51_genXRAMCLEAR
                                   1006 	.globl __mcs51_genRAMCLEAR
                                   1007 	.area GSFINAL (CODE)
      0000DA 02 00 7E         [24] 1008 	ljmp	__sdcc_program_startup
                                   1009 ;--------------------------------------------------------
                                   1010 ; Home
                                   1011 ;--------------------------------------------------------
                                   1012 	.area HOME    (CODE)
                                   1013 	.area HOME    (CODE)
      00007E                       1014 __sdcc_program_startup:
      00007E 02 10 43         [24] 1015 	ljmp	_main
                                   1016 ;	return from main will return to caller
                                   1017 ;--------------------------------------------------------
                                   1018 ; code
                                   1019 ;--------------------------------------------------------
                                   1020 	.area CSEG    (CODE)
                                   1021 ;------------------------------------------------------------
                                   1022 ;Allocation info for local variables in function 'Timer0_Delay'
                                   1023 ;------------------------------------------------------------
                                   1024 ;u16CNT                    Allocated with name '_Timer0_Delay_PARM_2'
                                   1025 ;u16DLYUnit                Allocated with name '_Timer0_Delay_PARM_3'
                                   1026 ;u32SYSCLK                 Allocated with name '_Timer0_Delay_u32SYSCLK_65536_145'
                                   1027 ;TL0TMP                    Allocated with name '_Timer0_Delay_TL0TMP_65536_146'
                                   1028 ;TH0TMP                    Allocated with name '_Timer0_Delay_TH0TMP_65536_146'
                                   1029 ;------------------------------------------------------------
                           000000  1030 	Smain$Timer0_Delay$0 ==.
                                   1031 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:254: void Timer0_Delay(unsigned long u32SYSCLK, unsigned int u16CNT, unsigned int u16DLYUnit)
                                   1032 ;	-----------------------------------------
                                   1033 ;	 function Timer0_Delay
                                   1034 ;	-----------------------------------------
      0000DD                       1035 _Timer0_Delay:
                           000007  1036 	ar7 = 0x07
                           000006  1037 	ar6 = 0x06
                           000005  1038 	ar5 = 0x05
                           000004  1039 	ar4 = 0x04
                           000003  1040 	ar3 = 0x03
                           000002  1041 	ar2 = 0x02
                           000001  1042 	ar1 = 0x01
                           000000  1043 	ar0 = 0x00
                           000000  1044 	Smain$Timer0_Delay$1 ==.
      0000DD AF 82            [24] 1045 	mov	r7,dpl
      0000DF AE 83            [24] 1046 	mov	r6,dph
      0000E1 AD F0            [24] 1047 	mov	r5,b
      0000E3 FC               [12] 1048 	mov	r4,a
      0000E4 90 00 05         [24] 1049 	mov	dptr,#_Timer0_Delay_u32SYSCLK_65536_145
      0000E7 EF               [12] 1050 	mov	a,r7
      0000E8 F0               [24] 1051 	movx	@dptr,a
      0000E9 EE               [12] 1052 	mov	a,r6
      0000EA A3               [24] 1053 	inc	dptr
      0000EB F0               [24] 1054 	movx	@dptr,a
      0000EC ED               [12] 1055 	mov	a,r5
      0000ED A3               [24] 1056 	inc	dptr
      0000EE F0               [24] 1057 	movx	@dptr,a
      0000EF EC               [12] 1058 	mov	a,r4
      0000F0 A3               [24] 1059 	inc	dptr
      0000F1 F0               [24] 1060 	movx	@dptr,a
                           000015  1061 	Smain$Timer0_Delay$2 ==.
                                   1062 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:258: TIMER0_FSYS_DIV12;                                  //T0M=0, Timer0 Clock = Fsys/12
      0000F2 53 8E F7         [24] 1063 	anl	_CKCON,#0xf7
                           000018  1064 	Smain$Timer0_Delay$3 ==.
                                   1065 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:259: ENABLE_TIMER0_MODE1;                                   //Timer0 is 16-bit mode
      0000F5 53 89 F0         [24] 1066 	anl	_TMOD,#0xf0
      0000F8 43 89 01         [24] 1067 	orl	_TMOD,#0x01
                           00001E  1068 	Smain$Timer0_Delay$4 ==.
                                   1069 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:260: TL0TMP = LOBYTE(65535-((u32SYSCLK/1000000)*u16DLYUnit/12));
      0000FB 90 00 05         [24] 1070 	mov	dptr,#_Timer0_Delay_u32SYSCLK_65536_145
      0000FE E0               [24] 1071 	movx	a,@dptr
      0000FF FC               [12] 1072 	mov	r4,a
      000100 A3               [24] 1073 	inc	dptr
      000101 E0               [24] 1074 	movx	a,@dptr
      000102 FD               [12] 1075 	mov	r5,a
      000103 A3               [24] 1076 	inc	dptr
      000104 E0               [24] 1077 	movx	a,@dptr
      000105 FE               [12] 1078 	mov	r6,a
      000106 A3               [24] 1079 	inc	dptr
      000107 E0               [24] 1080 	movx	a,@dptr
      000108 FF               [12] 1081 	mov	r7,a
      000109 90 00 40         [24] 1082 	mov	dptr,#__divulong_PARM_2
      00010C 74 40            [12] 1083 	mov	a,#0x40
      00010E F0               [24] 1084 	movx	@dptr,a
      00010F 74 42            [12] 1085 	mov	a,#0x42
      000111 A3               [24] 1086 	inc	dptr
      000112 F0               [24] 1087 	movx	@dptr,a
      000113 74 0F            [12] 1088 	mov	a,#0x0f
      000115 A3               [24] 1089 	inc	dptr
      000116 F0               [24] 1090 	movx	@dptr,a
      000117 E4               [12] 1091 	clr	a
      000118 A3               [24] 1092 	inc	dptr
      000119 F0               [24] 1093 	movx	@dptr,a
      00011A 8C 82            [24] 1094 	mov	dpl,r4
      00011C 8D 83            [24] 1095 	mov	dph,r5
      00011E 8E F0            [24] 1096 	mov	b,r6
      000120 EF               [12] 1097 	mov	a,r7
      000121 12 17 25         [24] 1098 	lcall	__divulong
      000124 AC 82            [24] 1099 	mov	r4,dpl
      000126 AD 83            [24] 1100 	mov	r5,dph
      000128 AE F0            [24] 1101 	mov	r6,b
      00012A FF               [12] 1102 	mov	r7,a
      00012B 90 00 03         [24] 1103 	mov	dptr,#_Timer0_Delay_PARM_3
      00012E E0               [24] 1104 	movx	a,@dptr
      00012F FA               [12] 1105 	mov	r2,a
      000130 A3               [24] 1106 	inc	dptr
      000131 E0               [24] 1107 	movx	a,@dptr
      000132 FB               [12] 1108 	mov	r3,a
      000133 90 00 4D         [24] 1109 	mov	dptr,#__mullong_PARM_2
      000136 EA               [12] 1110 	mov	a,r2
      000137 F0               [24] 1111 	movx	@dptr,a
      000138 EB               [12] 1112 	mov	a,r3
      000139 A3               [24] 1113 	inc	dptr
      00013A F0               [24] 1114 	movx	@dptr,a
      00013B E4               [12] 1115 	clr	a
      00013C A3               [24] 1116 	inc	dptr
      00013D F0               [24] 1117 	movx	@dptr,a
      00013E A3               [24] 1118 	inc	dptr
      00013F F0               [24] 1119 	movx	@dptr,a
      000140 8C 82            [24] 1120 	mov	dpl,r4
      000142 8D 83            [24] 1121 	mov	dph,r5
      000144 8E F0            [24] 1122 	mov	b,r6
      000146 EF               [12] 1123 	mov	a,r7
      000147 12 18 19         [24] 1124 	lcall	__mullong
      00014A AC 82            [24] 1125 	mov	r4,dpl
      00014C AD 83            [24] 1126 	mov	r5,dph
      00014E AE F0            [24] 1127 	mov	r6,b
      000150 FF               [12] 1128 	mov	r7,a
      000151 90 00 40         [24] 1129 	mov	dptr,#__divulong_PARM_2
      000154 74 0C            [12] 1130 	mov	a,#0x0c
      000156 F0               [24] 1131 	movx	@dptr,a
      000157 E4               [12] 1132 	clr	a
      000158 A3               [24] 1133 	inc	dptr
      000159 F0               [24] 1134 	movx	@dptr,a
      00015A A3               [24] 1135 	inc	dptr
      00015B F0               [24] 1136 	movx	@dptr,a
      00015C A3               [24] 1137 	inc	dptr
      00015D F0               [24] 1138 	movx	@dptr,a
      00015E 8C 82            [24] 1139 	mov	dpl,r4
      000160 8D 83            [24] 1140 	mov	dph,r5
      000162 8E F0            [24] 1141 	mov	b,r6
      000164 EF               [12] 1142 	mov	a,r7
      000165 12 17 25         [24] 1143 	lcall	__divulong
      000168 AC 82            [24] 1144 	mov	r4,dpl
      00016A AD 83            [24] 1145 	mov	r5,dph
      00016C AE F0            [24] 1146 	mov	r6,b
      00016E FF               [12] 1147 	mov	r7,a
      00016F 8C 03            [24] 1148 	mov	ar3,r4
      000171 74 FF            [12] 1149 	mov	a,#0xff
      000173 C3               [12] 1150 	clr	c
      000174 9B               [12] 1151 	subb	a,r3
      000175 FB               [12] 1152 	mov	r3,a
                           000099  1153 	Smain$Timer0_Delay$5 ==.
                                   1154 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:261: TH0TMP = HIBYTE(65535-((u32SYSCLK/1000000)*u16DLYUnit/12));
      000176 74 FF            [12] 1155 	mov	a,#0xff
      000178 C3               [12] 1156 	clr	c
      000179 9C               [12] 1157 	subb	a,r4
      00017A 74 FF            [12] 1158 	mov	a,#0xff
      00017C 9D               [12] 1159 	subb	a,r5
      00017D FD               [12] 1160 	mov	r5,a
      00017E E4               [12] 1161 	clr	a
      00017F 9E               [12] 1162 	subb	a,r6
      000180 E4               [12] 1163 	clr	a
      000181 9F               [12] 1164 	subb	a,r7
      000182 8D 07            [24] 1165 	mov	ar7,r5
                           0000A7  1166 	Smain$Timer0_Delay$6 ==.
                                   1167 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:263: while (u16CNT != 0)
      000184 90 00 01         [24] 1168 	mov	dptr,#_Timer0_Delay_PARM_2
      000187 E0               [24] 1169 	movx	a,@dptr
      000188 FD               [12] 1170 	mov	r5,a
      000189 A3               [24] 1171 	inc	dptr
      00018A E0               [24] 1172 	movx	a,@dptr
      00018B FE               [12] 1173 	mov	r6,a
      00018C                       1174 00104$:
      00018C ED               [12] 1175 	mov	a,r5
      00018D 4E               [12] 1176 	orl	a,r6
      00018E 60 14            [24] 1177 	jz	00107$
                           0000B3  1178 	Smain$Timer0_Delay$7 ==.
                           0000B3  1179 	Smain$Timer0_Delay$8 ==.
                                   1180 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:265: TL0=TL0TMP;
      000190 8B 8A            [24] 1181 	mov	_TL0,r3
                           0000B5  1182 	Smain$Timer0_Delay$9 ==.
                                   1183 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:266: TH0=TH0TMP;
      000192 8F 8C            [24] 1184 	mov	_TH0,r7
                           0000B7  1185 	Smain$Timer0_Delay$10 ==.
                                   1186 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:267: set_TCON_TR0;                                    //Start Timer0
                                   1187 ;	assignBit
      000194 D2 8C            [12] 1188 	setb	_TR0
                           0000B9  1189 	Smain$Timer0_Delay$11 ==.
                                   1190 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:268: while (!TF0);                       //Check Timer0 Time-Out Flag
      000196                       1191 00101$:
                           0000B9  1192 	Smain$Timer0_Delay$12 ==.
                                   1193 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:269: clr_TCON_TF0;
                                   1194 ;	assignBit
      000196 10 8D 02         [24] 1195 	jbc	_TF0,00127$
      000199 80 FB            [24] 1196 	sjmp	00101$
      00019B                       1197 00127$:
                           0000BE  1198 	Smain$Timer0_Delay$13 ==.
                                   1199 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:270: clr_TCON_TR0;                       //Stop Timer0
                                   1200 ;	assignBit
      00019B C2 8C            [12] 1201 	clr	_TR0
                           0000C0  1202 	Smain$Timer0_Delay$14 ==.
                                   1203 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:271: u16CNT --;
      00019D 1D               [12] 1204 	dec	r5
      00019E BD FF 01         [24] 1205 	cjne	r5,#0xff,00128$
      0001A1 1E               [12] 1206 	dec	r6
      0001A2                       1207 00128$:
                           0000C5  1208 	Smain$Timer0_Delay$15 ==.
      0001A2 80 E8            [24] 1209 	sjmp	00104$
      0001A4                       1210 00107$:
                           0000C7  1211 	Smain$Timer0_Delay$16 ==.
                                   1212 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:274: }
                           0000C7  1213 	Smain$Timer0_Delay$17 ==.
                           0000C7  1214 	XG$Timer0_Delay$0$0 ==.
      0001A4 22               [24] 1215 	ret
                           0000C8  1216 	Smain$Timer0_Delay$18 ==.
                                   1217 ;------------------------------------------------------------
                                   1218 ;Allocation info for local variables in function 'SerialPort1_ISR'
                                   1219 ;------------------------------------------------------------
                           0000C8  1220 	Smain$SerialPort1_ISR$19 ==.
                                   1221 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:292: void SerialPort1_ISR(void) __interrupt (15)
                                   1222 ;	-----------------------------------------
                                   1223 ;	 function SerialPort1_ISR
                                   1224 ;	-----------------------------------------
      0001A5                       1225 _SerialPort1_ISR:
      0001A5 C0 21            [24] 1226 	push	bits
      0001A7 C0 E0            [24] 1227 	push	acc
      0001A9 C0 F0            [24] 1228 	push	b
      0001AB C0 82            [24] 1229 	push	dpl
      0001AD C0 83            [24] 1230 	push	dph
      0001AF C0 07            [24] 1231 	push	(0+7)
      0001B1 C0 06            [24] 1232 	push	(0+6)
      0001B3 C0 05            [24] 1233 	push	(0+5)
      0001B5 C0 04            [24] 1234 	push	(0+4)
      0001B7 C0 03            [24] 1235 	push	(0+3)
      0001B9 C0 02            [24] 1236 	push	(0+2)
      0001BB C0 01            [24] 1237 	push	(0+1)
      0001BD C0 00            [24] 1238 	push	(0+0)
      0001BF C0 D0            [24] 1239 	push	psw
      0001C1 75 D0 00         [24] 1240 	mov	psw,#0x00
                           0000E7  1241 	Smain$SerialPort1_ISR$20 ==.
                           0000E7  1242 	Smain$SerialPort1_ISR$21 ==.
                                   1243 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:294: PUSH_SFRS;
      0001C4 C0 91            [24] 1244 	PUSH	0x91;
                           0000E9  1245 	Smain$SerialPort1_ISR$22 ==.
                                   1246 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:296: if (RI_1)
      0001C6 30 F8 37         [24] 1247 	jnb	_RI_1,00102$
                           0000EC  1248 	Smain$SerialPort1_ISR$23 ==.
                           0000EC  1249 	Smain$SerialPort1_ISR$24 ==.
                                   1250 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:298: uart1_rx_buffer[uart1_next_idx] = SBUF_1;
      0001C9 90 00 7A         [24] 1251 	mov	dptr,#_uart1_next_idx
      0001CC E0               [24] 1252 	movx	a,@dptr
      0001CD 24 09            [12] 1253 	add	a,#_uart1_rx_buffer
      0001CF F5 82            [12] 1254 	mov	dpl,a
      0001D1 E4               [12] 1255 	clr	a
      0001D2 34 00            [12] 1256 	addc	a,#(_uart1_rx_buffer >> 8)
      0001D4 F5 83            [12] 1257 	mov	dph,a
      0001D6 E5 9A            [12] 1258 	mov	a,_SBUF_1
      0001D8 F0               [24] 1259 	movx	@dptr,a
                           0000FC  1260 	Smain$SerialPort1_ISR$25 ==.
                                   1261 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:299: uart1_next_idx = (uart1_next_idx + 1) % UART_BUFFER_LENGTH;
      0001D9 90 00 7A         [24] 1262 	mov	dptr,#_uart1_next_idx
      0001DC E0               [24] 1263 	movx	a,@dptr
      0001DD FF               [12] 1264 	mov	r7,a
      0001DE 7E 00            [12] 1265 	mov	r6,#0x00
      0001E0 0F               [12] 1266 	inc	r7
      0001E1 BF 00 01         [24] 1267 	cjne	r7,#0x00,00116$
      0001E4 0E               [12] 1268 	inc	r6
      0001E5                       1269 00116$:
                           000108  1270 	Smain$SerialPort1_ISR$26 ==.
      0001E5 90 00 51         [24] 1271 	mov	dptr,#__modsint_PARM_2
      0001E8 74 10            [12] 1272 	mov	a,#0x10
      0001EA F0               [24] 1273 	movx	@dptr,a
      0001EB E4               [12] 1274 	clr	a
      0001EC A3               [24] 1275 	inc	dptr
      0001ED F0               [24] 1276 	movx	@dptr,a
      0001EE 8F 82            [24] 1277 	mov	dpl,r7
      0001F0 8E 83            [24] 1278 	mov	dph,r6
      0001F2 12 18 85         [24] 1279 	lcall	__modsint
      0001F5 AE 82            [24] 1280 	mov	r6,dpl
      0001F7 AF 83            [24] 1281 	mov	r7,dph
      0001F9 90 00 7A         [24] 1282 	mov	dptr,#_uart1_next_idx
      0001FC EE               [12] 1283 	mov	a,r6
      0001FD F0               [24] 1284 	movx	@dptr,a
                           000121  1285 	Smain$SerialPort1_ISR$27 ==.
                                   1286 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:300: clr_SCON_1_RI_1;                             /* clear reception flag for next reception */
                                   1287 ;	assignBit
      0001FE C2 F8            [12] 1288 	clr	_RI_1
      000200                       1289 00102$:
                           000123  1290 	Smain$SerialPort1_ISR$28 ==.
                                   1291 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:303: if (TI_1 )
                           000123  1292 	Smain$SerialPort1_ISR$29 ==.
                           000123  1293 	Smain$SerialPort1_ISR$30 ==.
                                   1294 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:305: clr_SCON_1_TI_1;                             // if emission occur
                                   1295 ;	assignBit
      000200 10 F9 02         [24] 1296 	jbc	_TI_1,00117$
      000203 80 00            [24] 1297 	sjmp	00104$
      000205                       1298 00117$:
                           000128  1299 	Smain$SerialPort1_ISR$31 ==.
      000205                       1300 00104$:
                           000128  1301 	Smain$SerialPort1_ISR$32 ==.
                                   1302 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:309: POP_SFRS;
      000205 D0 91            [24] 1303 	POP	0x91;
                           00012A  1304 	Smain$SerialPort1_ISR$33 ==.
                                   1305 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:310: }
      000207 D0 D0            [24] 1306 	pop	psw
      000209 D0 00            [24] 1307 	pop	(0+0)
      00020B D0 01            [24] 1308 	pop	(0+1)
      00020D D0 02            [24] 1309 	pop	(0+2)
      00020F D0 03            [24] 1310 	pop	(0+3)
      000211 D0 04            [24] 1311 	pop	(0+4)
      000213 D0 05            [24] 1312 	pop	(0+5)
      000215 D0 06            [24] 1313 	pop	(0+6)
      000217 D0 07            [24] 1314 	pop	(0+7)
      000219 D0 83            [24] 1315 	pop	dph
      00021B D0 82            [24] 1316 	pop	dpl
      00021D D0 F0            [24] 1317 	pop	b
      00021F D0 E0            [24] 1318 	pop	acc
      000221 D0 21            [24] 1319 	pop	bits
                           000146  1320 	Smain$SerialPort1_ISR$34 ==.
                           000146  1321 	XG$SerialPort1_ISR$0$0 ==.
      000223 32               [24] 1322 	reti
                           000147  1323 	Smain$SerialPort1_ISR$35 ==.
                                   1324 ;------------------------------------------------------------
                                   1325 ;Allocation info for local variables in function 'uart_interrupt_init'
                                   1326 ;------------------------------------------------------------
                           000147  1327 	Smain$uart_interrupt_init$36 ==.
                                   1328 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:314: void uart_interrupt_init(void)
                                   1329 ;	-----------------------------------------
                                   1330 ;	 function uart_interrupt_init
                                   1331 ;	-----------------------------------------
      000224                       1332 _uart_interrupt_init:
                           000147  1333 	Smain$uart_interrupt_init$37 ==.
                           000147  1334 	Smain$uart_interrupt_init$38 ==.
                                   1335 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:316: UART_Open(24000000,UART1_Timer3,9600);
      000224 90 00 33         [24] 1336 	mov	dptr,#_UART_Open_PARM_2
      000227 74 02            [12] 1337 	mov	a,#0x02
      000229 F0               [24] 1338 	movx	@dptr,a
      00022A 90 00 34         [24] 1339 	mov	dptr,#_UART_Open_PARM_3
      00022D 74 80            [12] 1340 	mov	a,#0x80
      00022F F0               [24] 1341 	movx	@dptr,a
      000230 74 25            [12] 1342 	mov	a,#0x25
      000232 A3               [24] 1343 	inc	dptr
      000233 F0               [24] 1344 	movx	@dptr,a
      000234 E4               [12] 1345 	clr	a
      000235 A3               [24] 1346 	inc	dptr
      000236 F0               [24] 1347 	movx	@dptr,a
      000237 A3               [24] 1348 	inc	dptr
      000238 F0               [24] 1349 	movx	@dptr,a
      000239 90 36 00         [24] 1350 	mov	dptr,#0x3600
      00023C 75 F0 6E         [24] 1351 	mov	b,#0x6e
      00023F 74 01            [12] 1352 	mov	a,#0x01
      000241 12 14 A5         [24] 1353 	lcall	_UART_Open
                           000167  1354 	Smain$uart_interrupt_init$39 ==.
                                   1355 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:318: ENABLE_UART1_INTERRUPT;
      000244 43 9C 01         [24] 1356 	orl	_EIE1,#0x01
                           00016A  1357 	Smain$uart_interrupt_init$40 ==.
                                   1358 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:319: }
                           00016A  1359 	Smain$uart_interrupt_init$41 ==.
                           00016A  1360 	XG$uart_interrupt_init$0$0 ==.
      000247 22               [24] 1361 	ret
                           00016B  1362 	Smain$uart_interrupt_init$42 ==.
                                   1363 ;------------------------------------------------------------
                                   1364 ;Allocation info for local variables in function 'PinInterrupt_ISR'
                                   1365 ;------------------------------------------------------------
                           00016B  1366 	Smain$PinInterrupt_ISR$43 ==.
                                   1367 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:332: void PinInterrupt_ISR(void) __interrupt (7)
                                   1368 ;	-----------------------------------------
                                   1369 ;	 function PinInterrupt_ISR
                                   1370 ;	-----------------------------------------
      000248                       1371 _PinInterrupt_ISR:
      000248 C0 E0            [24] 1372 	push	acc
      00024A C0 F0            [24] 1373 	push	b
      00024C C0 82            [24] 1374 	push	dpl
      00024E C0 83            [24] 1375 	push	dph
                           000173  1376 	Smain$PinInterrupt_ISR$44 ==.
                           000173  1377 	Smain$PinInterrupt_ISR$45 ==.
                                   1378 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:334: PUSH_SFRS;
      000250 C0 91            [24] 1379 	PUSH	0x91;
                           000175  1380 	Smain$PinInterrupt_ISR$46 ==.
                                   1381 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:336: if( !button_pressed ) {
      000252 90 00 7D         [24] 1382 	mov	dptr,#_button_pressed
      000255 E0               [24] 1383 	movx	a,@dptr
      000256 F5 F0            [12] 1384 	mov	b,a
      000258 A3               [24] 1385 	inc	dptr
      000259 E0               [24] 1386 	movx	a,@dptr
      00025A 42 F0            [12] 1387 	orl	b,a
      00025C A3               [24] 1388 	inc	dptr
      00025D E0               [24] 1389 	movx	a,@dptr
      00025E 42 F0            [12] 1390 	orl	b,a
      000260 A3               [24] 1391 	inc	dptr
      000261 E0               [24] 1392 	movx	a,@dptr
      000262 45 F0            [12] 1393 	orl	a,b
      000264 70 0D            [24] 1394 	jnz	00102$
                           000189  1395 	Smain$PinInterrupt_ISR$47 ==.
                           000189  1396 	Smain$PinInterrupt_ISR$48 ==.
                                   1397 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:337: button_pressed = 1;
      000266 90 00 7D         [24] 1398 	mov	dptr,#_button_pressed
      000269 74 01            [12] 1399 	mov	a,#0x01
      00026B F0               [24] 1400 	movx	@dptr,a
      00026C E4               [12] 1401 	clr	a
      00026D A3               [24] 1402 	inc	dptr
      00026E F0               [24] 1403 	movx	@dptr,a
      00026F A3               [24] 1404 	inc	dptr
      000270 F0               [24] 1405 	movx	@dptr,a
      000271 A3               [24] 1406 	inc	dptr
      000272 F0               [24] 1407 	movx	@dptr,a
                           000196  1408 	Smain$PinInterrupt_ISR$49 ==.
      000273                       1409 00102$:
                           000196  1410 	Smain$PinInterrupt_ISR$50 ==.
                                   1411 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:340: PIF &= CLR_BUTTON_PIN;
      000273 53 EC FB         [24] 1412 	anl	_PIF,#0xfb
                           000199  1413 	Smain$PinInterrupt_ISR$51 ==.
                                   1414 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:342: POP_SFRS;
      000276 D0 91            [24] 1415 	POP	0x91;
                           00019B  1416 	Smain$PinInterrupt_ISR$52 ==.
                                   1417 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:343: }
      000278 D0 83            [24] 1418 	pop	dph
      00027A D0 82            [24] 1419 	pop	dpl
      00027C D0 F0            [24] 1420 	pop	b
      00027E D0 E0            [24] 1421 	pop	acc
                           0001A3  1422 	Smain$PinInterrupt_ISR$53 ==.
                           0001A3  1423 	XG$PinInterrupt_ISR$0$0 ==.
      000280 32               [24] 1424 	reti
                                   1425 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                   1426 ;	eliminated unneeded push/pop not_psw
                           0001A4  1427 	Smain$PinInterrupt_ISR$54 ==.
                                   1428 ;------------------------------------------------------------
                                   1429 ;Allocation info for local variables in function 'button_interrupt_init'
                                   1430 ;------------------------------------------------------------
                           0001A4  1431 	Smain$button_interrupt_init$55 ==.
                                   1432 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:347: void button_interrupt_init(void)
                                   1433 ;	-----------------------------------------
                                   1434 ;	 function button_interrupt_init
                                   1435 ;	-----------------------------------------
      000281                       1436 _button_interrupt_init:
                           0001A4  1437 	Smain$button_interrupt_init$56 ==.
                           0001A4  1438 	Smain$button_interrupt_init$57 ==.
                                   1439 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:350: BUTTON_INPUT_MODE;
      000281 43 B1 04         [24] 1440 	orl	_P0M1,#0x04
      000284 53 B2 FB         [24] 1441 	anl	_P0M2,#0xfb
                           0001AA  1442 	Smain$button_interrupt_init$58 ==.
                                   1443 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:352: BUTTON_PIN = 1;
                                   1444 ;	assignBit
      000287 D2 82            [12] 1445 	setb	_P02
                           0001AC  1446 	Smain$button_interrupt_init$59 ==.
                                   1447 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:354: BUTTON_INITIALIZE_EDGE_TRIGGER;
      000289 75 E9 00         [24] 1448 	mov	_PICON,#0x00
      00028C 43 E9 10         [24] 1449 	orl	_PICON,#0x10
      00028F 43 EA 04         [24] 1450 	orl	_PINEN,#0x04
      000292 43 EB 04         [24] 1451 	orl	_PIPEN,#0x04
                           0001B8  1452 	Smain$button_interrupt_init$60 ==.
                                   1453 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:355: ENABLE_PIN_INTERRUPT;
      000295 43 9B 02         [24] 1454 	orl	_EIE,#0x02
                           0001BB  1455 	Smain$button_interrupt_init$61 ==.
                                   1456 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:356: }
                           0001BB  1457 	Smain$button_interrupt_init$62 ==.
                           0001BB  1458 	XG$button_interrupt_init$0$0 ==.
      000298 22               [24] 1459 	ret
                           0001BC  1460 	Smain$button_interrupt_init$63 ==.
                                   1461 ;------------------------------------------------------------
                                   1462 ;Allocation info for local variables in function 'enable_ntc'
                                   1463 ;------------------------------------------------------------
                           0001BC  1464 	Smain$enable_ntc$64 ==.
                                   1465 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:358: void enable_ntc( void )
                                   1466 ;	-----------------------------------------
                                   1467 ;	 function enable_ntc
                                   1468 ;	-----------------------------------------
      000299                       1469 _enable_ntc:
                           0001BC  1470 	Smain$enable_ntc$65 ==.
                           0001BC  1471 	Smain$enable_ntc$66 ==.
                                   1472 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:361: NTC_EN_PUSHPULL_MODE;
      000299 53 B3 BF         [24] 1473 	anl	_P1M1,#0xbf
      00029C 43 B4 40         [24] 1474 	orl	_P1M2,#0x40
                           0001C2  1475 	Smain$enable_ntc$67 ==.
                                   1476 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:362: NTC_EN_PIN = 0;
                                   1477 ;	assignBit
      00029F C2 96            [12] 1478 	clr	_P16
                           0001C4  1479 	Smain$enable_ntc$68 ==.
                                   1480 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:364: }
                           0001C4  1481 	Smain$enable_ntc$69 ==.
                           0001C4  1482 	XG$enable_ntc$0$0 ==.
      0002A1 22               [24] 1483 	ret
                           0001C5  1484 	Smain$enable_ntc$70 ==.
                                   1485 ;------------------------------------------------------------
                                   1486 ;Allocation info for local variables in function 'disable_ntc'
                                   1487 ;------------------------------------------------------------
                           0001C5  1488 	Smain$disable_ntc$71 ==.
                                   1489 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:366: void disable_ntc( void )
                                   1490 ;	-----------------------------------------
                                   1491 ;	 function disable_ntc
                                   1492 ;	-----------------------------------------
      0002A2                       1493 _disable_ntc:
                           0001C5  1494 	Smain$disable_ntc$72 ==.
                           0001C5  1495 	Smain$disable_ntc$73 ==.
                                   1496 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:369: NTC_EN_PUSHPULL_MODE;
      0002A2 53 B3 BF         [24] 1497 	anl	_P1M1,#0xbf
      0002A5 43 B4 40         [24] 1498 	orl	_P1M2,#0x40
                           0001CB  1499 	Smain$disable_ntc$74 ==.
                                   1500 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:370: NTC_EN_PIN = 1;
                                   1501 ;	assignBit
      0002A8 D2 96            [12] 1502 	setb	_P16
                           0001CD  1503 	Smain$disable_ntc$75 ==.
                                   1504 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:372: }
                           0001CD  1505 	Smain$disable_ntc$76 ==.
                           0001CD  1506 	XG$disable_ntc$0$0 ==.
      0002AA 22               [24] 1507 	ret
                           0001CE  1508 	Smain$disable_ntc$77 ==.
                                   1509 ;------------------------------------------------------------
                                   1510 ;Allocation info for local variables in function 'init_sample'
                                   1511 ;------------------------------------------------------------
                                   1512 ;i                         Allocated with name '_init_sample_i_131072_165'
                                   1513 ;------------------------------------------------------------
                           0001CE  1514 	Smain$init_sample$78 ==.
                                   1515 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:374: void init_sample( void )
                                   1516 ;	-----------------------------------------
                                   1517 ;	 function init_sample
                                   1518 ;	-----------------------------------------
      0002AB                       1519 _init_sample:
                           0001CE  1520 	Smain$init_sample$79 ==.
                           0001CE  1521 	Smain$init_sample$80 ==.
                                   1522 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:376: sample_count = 0;
      0002AB 90 00 65         [24] 1523 	mov	dptr,#_sample_count
      0002AE E4               [12] 1524 	clr	a
      0002AF F0               [24] 1525 	movx	@dptr,a
                           0001D3  1526 	Smain$init_sample$81 ==.
                                   1527 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:377: acc_temp = 0;
      0002B0 90 00 6E         [24] 1528 	mov	dptr,#_acc_temp
      0002B3 F0               [24] 1529 	movx	@dptr,a
      0002B4 A3               [24] 1530 	inc	dptr
      0002B5 F0               [24] 1531 	movx	@dptr,a
      0002B6 A3               [24] 1532 	inc	dptr
      0002B7 F0               [24] 1533 	movx	@dptr,a
      0002B8 A3               [24] 1534 	inc	dptr
      0002B9 F0               [24] 1535 	movx	@dptr,a
                           0001DD  1536 	Smain$init_sample$82 ==.
                           0001DD  1537 	Smain$init_sample$83 ==.
                                   1538 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:379: for( int i = 0; i < NUM_LEDS; i++ ) {
                           0001DD  1539 	Smain$init_sample$84 ==.
      0002BA 7E 00            [12] 1540 	mov	r6,#0x00
      0002BC 7F 00            [12] 1541 	mov	r7,#0x00
                           0001E1  1542 	Smain$init_sample$85 ==.
      0002BE                       1543 00103$:
      0002BE C3               [12] 1544 	clr	c
      0002BF EE               [12] 1545 	mov	a,r6
      0002C0 94 02            [12] 1546 	subb	a,#0x02
      0002C2 EF               [12] 1547 	mov	a,r7
      0002C3 64 80            [12] 1548 	xrl	a,#0x80
      0002C5 94 80            [12] 1549 	subb	a,#0x80
      0002C7 50 25            [24] 1550 	jnc	00101$
                           0001EC  1551 	Smain$init_sample$86 ==.
                                   1552 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:380: acc_amp[i] = 0;
      0002C9 EE               [12] 1553 	mov	a,r6
      0002CA 2E               [12] 1554 	add	a,r6
      0002CB FC               [12] 1555 	mov	r4,a
      0002CC EF               [12] 1556 	mov	a,r7
      0002CD 33               [12] 1557 	rlc	a
      0002CE FD               [12] 1558 	mov	r5,a
      0002CF EC               [12] 1559 	mov	a,r4
      0002D0 2C               [12] 1560 	add	a,r4
      0002D1 FC               [12] 1561 	mov	r4,a
      0002D2 ED               [12] 1562 	mov	a,r5
      0002D3 33               [12] 1563 	rlc	a
      0002D4 FD               [12] 1564 	mov	r5,a
      0002D5 EC               [12] 1565 	mov	a,r4
      0002D6 24 66            [12] 1566 	add	a,#_acc_amp
      0002D8 F5 82            [12] 1567 	mov	dpl,a
      0002DA ED               [12] 1568 	mov	a,r5
      0002DB 34 00            [12] 1569 	addc	a,#(_acc_amp >> 8)
      0002DD F5 83            [12] 1570 	mov	dph,a
      0002DF E4               [12] 1571 	clr	a
      0002E0 F0               [24] 1572 	movx	@dptr,a
      0002E1 A3               [24] 1573 	inc	dptr
      0002E2 F0               [24] 1574 	movx	@dptr,a
      0002E3 A3               [24] 1575 	inc	dptr
      0002E4 F0               [24] 1576 	movx	@dptr,a
      0002E5 A3               [24] 1577 	inc	dptr
      0002E6 F0               [24] 1578 	movx	@dptr,a
                           00020A  1579 	Smain$init_sample$87 ==.
                           00020A  1580 	Smain$init_sample$88 ==.
                                   1581 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:379: for( int i = 0; i < NUM_LEDS; i++ ) {
      0002E7 0E               [12] 1582 	inc	r6
      0002E8 BE 00 D3         [24] 1583 	cjne	r6,#0x00,00103$
      0002EB 0F               [12] 1584 	inc	r7
      0002EC 80 D0            [24] 1585 	sjmp	00103$
      0002EE                       1586 00101$:
                           000211  1587 	Smain$init_sample$89 ==.
                           000211  1588 	Smain$init_sample$90 ==.
                                   1589 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:383: flashing_on = true;
      0002EE 90 00 5C         [24] 1590 	mov	dptr,#_flashing_on
      0002F1 74 01            [12] 1591 	mov	a,#0x01
      0002F3 F0               [24] 1592 	movx	@dptr,a
                           000217  1593 	Smain$init_sample$91 ==.
                                   1594 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:384: }
                           000217  1595 	Smain$init_sample$92 ==.
                           000217  1596 	XG$init_sample$0$0 ==.
      0002F4 22               [24] 1597 	ret
                           000218  1598 	Smain$init_sample$93 ==.
                                   1599 ;------------------------------------------------------------
                                   1600 ;Allocation info for local variables in function 'init_peripherals_but_button_n_uart'
                                   1601 ;------------------------------------------------------------
                           000218  1602 	Smain$init_peripherals_but_button_n_uart$94 ==.
                                   1603 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:388: void init_peripherals_but_button_n_uart(void)
                                   1604 ;	-----------------------------------------
                                   1605 ;	 function init_peripherals_but_button_n_uart
                                   1606 ;	-----------------------------------------
      0002F5                       1607 _init_peripherals_but_button_n_uart:
                           000218  1608 	Smain$init_peripherals_but_button_n_uart$95 ==.
                           000218  1609 	Smain$init_peripherals_but_button_n_uart$96 ==.
                                   1610 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:390: ENABLE_GLOBAL_INTERRUPT;
                                   1611 ;	assignBit
      0002F5 D2 AF            [12] 1612 	setb	_EA
                           00021A  1613 	Smain$init_peripherals_but_button_n_uart$97 ==.
                                   1614 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:393: ADCCON1 |= 0X30;  // ADC clock src = Fsys / 8
      0002F7 43 E1 30         [24] 1615 	orl	_ADCCON1,#0x30
                           00021D  1616 	Smain$init_peripherals_but_button_n_uart$98 ==.
                                   1617 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:394: ADCCON2 |= 0x0E;  // ADC sample time = 32 (max)
      0002FA 43 E2 0E         [24] 1618 	orl	_ADCCON2,#0x0e
                           000220  1619 	Smain$init_peripherals_but_button_n_uart$99 ==.
                                   1620 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:396: NTC_INPUT_MODE;
      0002FD 43 B1 40         [24] 1621 	orl	_P0M1,#0x40
      000300 53 B2 BF         [24] 1622 	anl	_P0M2,#0xbf
                           000226  1623 	Smain$init_peripherals_but_button_n_uart$100 ==.
                                   1624 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:400: clr_CKCON_PWMCKS; // PWM in FSYS freq.
      000303 53 8E BF         [24] 1625 	anl	_CKCON,#0xbf
                           000229  1626 	Smain$init_peripherals_but_button_n_uart$101 ==.
                                   1627 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:401: PWM0_CLOCK_DIV_1; // PWM div = 1
      000306 53 DF F8         [24] 1628 	anl	_PWMCON1,#0xf8
      000309 85 DF DF         [24] 1629 	mov	_PWMCON1,_PWMCON1
                           00022F  1630 	Smain$init_peripherals_but_button_n_uart$102 ==.
                                   1631 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:403: ENABLE_PWM0_CH4_P01_OUTPUT; // LED2
      00030C 43 DE 10         [24] 1632 	orl	_PIOCON0,#0x10
                           000232  1633 	Smain$init_peripherals_but_button_n_uart$103 ==.
                                   1634 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:404: P01_PUSHPULL_MODE;
      00030F 53 B1 FD         [24] 1635 	anl	_P0M1,#0xfd
      000312 43 B2 02         [24] 1636 	orl	_P0M2,#0x02
                           000238  1637 	Smain$init_peripherals_but_button_n_uart$104 ==.
                                   1638 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:406: ENABLE_PWM0_CH2_P05_OUTPUT; // LED1/3
                                   1639 ;	assignBit
      000315 A2 AF            [12] 1640 	mov	c,_EA
      000317 92 00            [24] 1641 	mov	_BIT_TMP,c
                                   1642 ;	assignBit
      000319 C2 AF            [12] 1643 	clr	_EA
      00031B 75 C7 AA         [24] 1644 	mov	_TA,#0xaa
      00031E 75 C7 55         [24] 1645 	mov	_TA,#0x55
      000321 75 91 01         [24] 1646 	mov	_SFRS,#0x01
                                   1647 ;	assignBit
      000324 A2 00            [12] 1648 	mov	c,_BIT_TMP
      000326 92 AF            [24] 1649 	mov	_EA,c
      000328 43 C6 04         [24] 1650 	orl	_PIOCON1,#0x04
                                   1651 ;	assignBit
      00032B A2 AF            [12] 1652 	mov	c,_EA
      00032D 92 00            [24] 1653 	mov	_BIT_TMP,c
                                   1654 ;	assignBit
      00032F C2 AF            [12] 1655 	clr	_EA
      000331 75 C7 AA         [24] 1656 	mov	_TA,#0xaa
      000334 75 C7 55         [24] 1657 	mov	_TA,#0x55
      000337 75 91 00         [24] 1658 	mov	_SFRS,#0x00
                                   1659 ;	assignBit
      00033A A2 00            [12] 1660 	mov	c,_BIT_TMP
      00033C 92 AF            [24] 1661 	mov	_EA,c
                           000261  1662 	Smain$init_peripherals_but_button_n_uart$105 ==.
                                   1663 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:407: P05_PUSHPULL_MODE;
      00033E 53 B1 DF         [24] 1664 	anl	_P0M1,#0xdf
      000341 43 B2 20         [24] 1665 	orl	_P0M2,#0x20
                           000267  1666 	Smain$init_peripherals_but_button_n_uart$106 ==.
                                   1667 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:409: clr_PWMCON0_PWMRUN;
                                   1668 ;	assignBit
      000344 C2 DF            [12] 1669 	clr	_PWMRUN
                           000269  1670 	Smain$init_peripherals_but_button_n_uart$107 ==.
                                   1671 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:410: set_SFRS_SFRPAGE;
                                   1672 ;	assignBit
      000346 A2 AF            [12] 1673 	mov	c,_EA
      000348 92 00            [24] 1674 	mov	_BIT_TMP,c
                                   1675 ;	assignBit
      00034A C2 AF            [12] 1676 	clr	_EA
      00034C 75 C7 AA         [24] 1677 	mov	_TA,#0xaa
      00034F 75 C7 55         [24] 1678 	mov	_TA,#0x55
      000352 75 91 01         [24] 1679 	mov	_SFRS,#0x01
                                   1680 ;	assignBit
      000355 A2 00            [12] 1681 	mov	c,_BIT_TMP
      000357 92 AF            [24] 1682 	mov	_EA,c
                           00027C  1683 	Smain$init_peripherals_but_button_n_uart$108 ==.
                                   1684 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:412: PWMPH = 0;
      000359 75 D1 00         [24] 1685 	mov	_PWMPH,#0x00
                           00027F  1686 	Smain$init_peripherals_but_button_n_uart$109 ==.
                                   1687 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:413: PWMPL = MAX_PWM; // 255 bit PWM
      00035C 75 D9 FF         [24] 1688 	mov	_PWMPL,#0xff
                           000282  1689 	Smain$init_peripherals_but_button_n_uart$110 ==.
                                   1690 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:415: PWM2L = 0;
      00035F 75 DC 00         [24] 1691 	mov	_PWM2L,#0x00
                           000285  1692 	Smain$init_peripherals_but_button_n_uart$111 ==.
                                   1693 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:416: PWM2H = 0;
      000362 75 D4 00         [24] 1694 	mov	_PWM2H,#0x00
                           000288  1695 	Smain$init_peripherals_but_button_n_uart$112 ==.
                                   1696 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:417: PWM4L = 0;
      000365 75 CC 00         [24] 1697 	mov	_PWM4L,#0x00
                           00028B  1698 	Smain$init_peripherals_but_button_n_uart$113 ==.
                                   1699 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:418: PWM4H = 0;
      000368 75 C4 00         [24] 1700 	mov	_PWM4H,#0x00
                           00028E  1701 	Smain$init_peripherals_but_button_n_uart$114 ==.
                                   1702 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:420: clr_SFRS_SFRPAGE;
                                   1703 ;	assignBit
      00036B A2 AF            [12] 1704 	mov	c,_EA
      00036D 92 00            [24] 1705 	mov	_BIT_TMP,c
                                   1706 ;	assignBit
      00036F C2 AF            [12] 1707 	clr	_EA
      000371 75 C7 AA         [24] 1708 	mov	_TA,#0xaa
      000374 75 C7 55         [24] 1709 	mov	_TA,#0x55
      000377 75 91 00         [24] 1710 	mov	_SFRS,#0x00
                                   1711 ;	assignBit
      00037A A2 00            [12] 1712 	mov	c,_BIT_TMP
      00037C 92 AF            [24] 1713 	mov	_EA,c
                           0002A1  1714 	Smain$init_peripherals_but_button_n_uart$115 ==.
                                   1715 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:421: set_PWMCON0_PWMRUN;
                                   1716 ;	assignBit
      00037E D2 DF            [12] 1717 	setb	_PWMRUN
                           0002A3  1718 	Smain$init_peripherals_but_button_n_uart$116 ==.
                                   1719 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:423: light_control_mode[0] = MODE_STABLE;
      000380 90 00 63         [24] 1720 	mov	dptr,#_light_control_mode
      000383 E4               [12] 1721 	clr	a
      000384 F0               [24] 1722 	movx	@dptr,a
                           0002A8  1723 	Smain$init_peripherals_but_button_n_uart$117 ==.
                                   1724 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:424: light_control_mode[1] = MODE_STABLE;
      000385 90 00 64         [24] 1725 	mov	dptr,#(_light_control_mode + 0x0001)
      000388 F0               [24] 1726 	movx	@dptr,a
                           0002AC  1727 	Smain$init_peripherals_but_button_n_uart$118 ==.
                                   1728 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:426: enable_ntc();
      000389 12 02 99         [24] 1729 	lcall	_enable_ntc
                           0002AF  1730 	Smain$init_peripherals_but_button_n_uart$119 ==.
                                   1731 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:428: init_sample();
      00038C 12 02 AB         [24] 1732 	lcall	_init_sample
                           0002B2  1733 	Smain$init_peripherals_but_button_n_uart$120 ==.
                                   1734 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:429: flashing_count = 0;
      00038F 90 00 5D         [24] 1735 	mov	dptr,#_flashing_count
      000392 E4               [12] 1736 	clr	a
      000393 F0               [24] 1737 	movx	@dptr,a
      000394 A3               [24] 1738 	inc	dptr
      000395 F0               [24] 1739 	movx	@dptr,a
                           0002B9  1740 	Smain$init_peripherals_but_button_n_uart$121 ==.
                                   1741 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:430: }
                           0002B9  1742 	Smain$init_peripherals_but_button_n_uart$122 ==.
                           0002B9  1743 	XG$init_peripherals_but_button_n_uart$0$0 ==.
      000396 22               [24] 1744 	ret
                           0002BA  1745 	Smain$init_peripherals_but_button_n_uart$123 ==.
                                   1746 ;------------------------------------------------------------
                                   1747 ;Allocation info for local variables in function 'sample_amps'
                                   1748 ;------------------------------------------------------------
                           0002BA  1749 	Smain$sample_amps$124 ==.
                                   1750 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:432: void sample_amps( void )
                                   1751 ;	-----------------------------------------
                                   1752 ;	 function sample_amps
                                   1753 ;	-----------------------------------------
      000397                       1754 _sample_amps:
                           0002BA  1755 	Smain$sample_amps$125 ==.
                           0002BA  1756 	Smain$sample_amps$126 ==.
                                   1757 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:435: ENABLE_ADC_LED1;
                                   1758 ;	assignBit
      000397 A2 AF            [12] 1759 	mov	c,_EA
      000399 92 00            [24] 1760 	mov	_BIT_TMP,c
                                   1761 ;	assignBit
      00039B C2 AF            [12] 1762 	clr	_EA
      00039D 75 C7 AA         [24] 1763 	mov	_TA,#0xaa
      0003A0 75 C7 55         [24] 1764 	mov	_TA,#0x55
      0003A3 75 91 00         [24] 1765 	mov	_SFRS,#0x00
                                   1766 ;	assignBit
      0003A6 A2 00            [12] 1767 	mov	c,_BIT_TMP
      0003A8 92 AF            [24] 1768 	mov	_EA,c
      0003AA 53 E1 FE         [24] 1769 	anl	_ADCCON1,#0xfe
      0003AD 53 E8 F0         [24] 1770 	anl	_ADCCON0,#0xf0
      0003B0 43 E8 06         [24] 1771 	orl	_ADCCON0,#0x06
      0003B3 43 B1 08         [24] 1772 	orl	_P0M1,#0x08
      0003B6 53 B2 F7         [24] 1773 	anl	_P0M2,#0xf7
      0003B9 75 F6 00         [24] 1774 	mov	_AINDIDS,#0x00
      0003BC 43 F6 40         [24] 1775 	orl	_AINDIDS,#0x40
                                   1776 ;	assignBit
      0003BF A2 AF            [12] 1777 	mov	c,_EA
      0003C1 92 00            [24] 1778 	mov	_BIT_TMP,c
                                   1779 ;	assignBit
      0003C3 C2 AF            [12] 1780 	clr	_EA
      0003C5 75 C7 AA         [24] 1781 	mov	_TA,#0xaa
      0003C8 75 C7 55         [24] 1782 	mov	_TA,#0x55
      0003CB 75 91 00         [24] 1783 	mov	_SFRS,#0x00
                                   1784 ;	assignBit
      0003CE A2 00            [12] 1785 	mov	c,_BIT_TMP
      0003D0 92 AF            [24] 1786 	mov	_EA,c
      0003D2 43 E1 01         [24] 1787 	orl	_ADCCON1,#0x01
                           0002F8  1788 	Smain$sample_amps$127 ==.
                                   1789 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:437: clr_ADCCON0_ADCF;
                                   1790 ;	assignBit
      0003D5 A2 AF            [12] 1791 	mov	c,_EA
      0003D7 92 00            [24] 1792 	mov	_BIT_TMP,c
                                   1793 ;	assignBit
      0003D9 C2 AF            [12] 1794 	clr	_EA
      0003DB 75 C7 AA         [24] 1795 	mov	_TA,#0xaa
      0003DE 75 C7 55         [24] 1796 	mov	_TA,#0x55
      0003E1 75 91 00         [24] 1797 	mov	_SFRS,#0x00
                                   1798 ;	assignBit
      0003E4 A2 00            [12] 1799 	mov	c,_BIT_TMP
      0003E6 92 AF            [24] 1800 	mov	_EA,c
                                   1801 ;	assignBit
      0003E8 C2 EF            [12] 1802 	clr	_ADCF
                           00030D  1803 	Smain$sample_amps$128 ==.
                                   1804 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:438: set_ADCCON0_ADCS;
                                   1805 ;	assignBit
      0003EA A2 AF            [12] 1806 	mov	c,_EA
      0003EC 92 00            [24] 1807 	mov	_BIT_TMP,c
                                   1808 ;	assignBit
      0003EE C2 AF            [12] 1809 	clr	_EA
      0003F0 75 C7 AA         [24] 1810 	mov	_TA,#0xaa
      0003F3 75 C7 55         [24] 1811 	mov	_TA,#0x55
      0003F6 75 91 00         [24] 1812 	mov	_SFRS,#0x00
                                   1813 ;	assignBit
      0003F9 A2 00            [12] 1814 	mov	c,_BIT_TMP
      0003FB 92 AF            [24] 1815 	mov	_EA,c
                                   1816 ;	assignBit
      0003FD D2 EE            [12] 1817 	setb	_ADCS
                           000322  1818 	Smain$sample_amps$129 ==.
                                   1819 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:440: while( ADCF == 0 );
      0003FF                       1820 00101$:
      0003FF 30 EF FD         [24] 1821 	jnb	_ADCF,00101$
                           000325  1822 	Smain$sample_amps$130 ==.
                                   1823 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:441: cur_amp[LED1_IDX] = (((uint16_t)ADCRH) << 4 ) | (ADCRL & 0xF);
      000402 AE C3            [24] 1824 	mov	r6,_ADCRH
      000404 E4               [12] 1825 	clr	a
      000405 C4               [12] 1826 	swap	a
      000406 54 F0            [12] 1827 	anl	a,#0xf0
      000408 CE               [12] 1828 	xch	a,r6
      000409 C4               [12] 1829 	swap	a
      00040A CE               [12] 1830 	xch	a,r6
      00040B 6E               [12] 1831 	xrl	a,r6
      00040C CE               [12] 1832 	xch	a,r6
      00040D 54 F0            [12] 1833 	anl	a,#0xf0
      00040F CE               [12] 1834 	xch	a,r6
      000410 6E               [12] 1835 	xrl	a,r6
      000411 FF               [12] 1836 	mov	r7,a
      000412 AC C2            [24] 1837 	mov	r4,_ADCRL
      000414 53 04 0F         [24] 1838 	anl	ar4,#0x0f
      000417 7D 00            [12] 1839 	mov	r5,#0x00
      000419 EE               [12] 1840 	mov	a,r6
      00041A 42 04            [12] 1841 	orl	ar4,a
      00041C EF               [12] 1842 	mov	a,r7
      00041D 42 05            [12] 1843 	orl	ar5,a
      00041F 90 00 72         [24] 1844 	mov	dptr,#_cur_amp
      000422 EC               [12] 1845 	mov	a,r4
      000423 F0               [24] 1846 	movx	@dptr,a
      000424 ED               [12] 1847 	mov	a,r5
      000425 A3               [24] 1848 	inc	dptr
      000426 F0               [24] 1849 	movx	@dptr,a
                           00034A  1850 	Smain$sample_amps$131 ==.
                                   1851 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:443: DISABLE_ADC;
                                   1852 ;	assignBit
      000427 A2 AF            [12] 1853 	mov	c,_EA
      000429 92 00            [24] 1854 	mov	_BIT_TMP,c
                                   1855 ;	assignBit
      00042B C2 AF            [12] 1856 	clr	_EA
      00042D 75 C7 AA         [24] 1857 	mov	_TA,#0xaa
      000430 75 C7 55         [24] 1858 	mov	_TA,#0x55
      000433 75 91 00         [24] 1859 	mov	_SFRS,#0x00
                                   1860 ;	assignBit
      000436 A2 00            [12] 1861 	mov	c,_BIT_TMP
      000438 92 AF            [24] 1862 	mov	_EA,c
      00043A 53 E1 FE         [24] 1863 	anl	_ADCCON1,#0xfe
                           000360  1864 	Smain$sample_amps$132 ==.
                                   1865 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:446: ENABLE_ADC_LED2;
                                   1866 ;	assignBit
      00043D A2 AF            [12] 1867 	mov	c,_EA
      00043F 92 00            [24] 1868 	mov	_BIT_TMP,c
                                   1869 ;	assignBit
      000441 C2 AF            [12] 1870 	clr	_EA
      000443 75 C7 AA         [24] 1871 	mov	_TA,#0xaa
      000446 75 C7 55         [24] 1872 	mov	_TA,#0x55
      000449 75 91 00         [24] 1873 	mov	_SFRS,#0x00
                                   1874 ;	assignBit
      00044C A2 00            [12] 1875 	mov	c,_BIT_TMP
      00044E 92 AF            [24] 1876 	mov	_EA,c
      000450 53 E1 FE         [24] 1877 	anl	_ADCCON1,#0xfe
      000453 53 E8 F0         [24] 1878 	anl	_ADCCON0,#0xf0
      000456 43 E8 05         [24] 1879 	orl	_ADCCON0,#0x05
      000459 43 B1 10         [24] 1880 	orl	_P0M1,#0x10
      00045C 53 B2 EF         [24] 1881 	anl	_P0M2,#0xef
      00045F 75 F6 00         [24] 1882 	mov	_AINDIDS,#0x00
      000462 43 F6 20         [24] 1883 	orl	_AINDIDS,#0x20
                                   1884 ;	assignBit
      000465 A2 AF            [12] 1885 	mov	c,_EA
      000467 92 00            [24] 1886 	mov	_BIT_TMP,c
                                   1887 ;	assignBit
      000469 C2 AF            [12] 1888 	clr	_EA
      00046B 75 C7 AA         [24] 1889 	mov	_TA,#0xaa
      00046E 75 C7 55         [24] 1890 	mov	_TA,#0x55
      000471 75 91 00         [24] 1891 	mov	_SFRS,#0x00
                                   1892 ;	assignBit
      000474 A2 00            [12] 1893 	mov	c,_BIT_TMP
      000476 92 AF            [24] 1894 	mov	_EA,c
      000478 43 E1 01         [24] 1895 	orl	_ADCCON1,#0x01
                           00039E  1896 	Smain$sample_amps$133 ==.
                                   1897 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:448: clr_ADCCON0_ADCF;
                                   1898 ;	assignBit
      00047B A2 AF            [12] 1899 	mov	c,_EA
      00047D 92 00            [24] 1900 	mov	_BIT_TMP,c
                                   1901 ;	assignBit
      00047F C2 AF            [12] 1902 	clr	_EA
      000481 75 C7 AA         [24] 1903 	mov	_TA,#0xaa
      000484 75 C7 55         [24] 1904 	mov	_TA,#0x55
      000487 75 91 00         [24] 1905 	mov	_SFRS,#0x00
                                   1906 ;	assignBit
      00048A A2 00            [12] 1907 	mov	c,_BIT_TMP
      00048C 92 AF            [24] 1908 	mov	_EA,c
                                   1909 ;	assignBit
      00048E C2 EF            [12] 1910 	clr	_ADCF
                           0003B3  1911 	Smain$sample_amps$134 ==.
                                   1912 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:449: set_ADCCON0_ADCS;
                                   1913 ;	assignBit
      000490 A2 AF            [12] 1914 	mov	c,_EA
      000492 92 00            [24] 1915 	mov	_BIT_TMP,c
                                   1916 ;	assignBit
      000494 C2 AF            [12] 1917 	clr	_EA
      000496 75 C7 AA         [24] 1918 	mov	_TA,#0xaa
      000499 75 C7 55         [24] 1919 	mov	_TA,#0x55
      00049C 75 91 00         [24] 1920 	mov	_SFRS,#0x00
                                   1921 ;	assignBit
      00049F A2 00            [12] 1922 	mov	c,_BIT_TMP
      0004A1 92 AF            [24] 1923 	mov	_EA,c
                                   1924 ;	assignBit
      0004A3 D2 EE            [12] 1925 	setb	_ADCS
                           0003C8  1926 	Smain$sample_amps$135 ==.
                                   1927 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:451: while( ADCF == 0 );
      0004A5                       1928 00104$:
      0004A5 30 EF FD         [24] 1929 	jnb	_ADCF,00104$
                           0003CB  1930 	Smain$sample_amps$136 ==.
                                   1931 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:452: cur_amp[LED2_IDX] = (((uint16_t)ADCRH) << 4 ) | (ADCRL & 0xF);
      0004A8 AE C3            [24] 1932 	mov	r6,_ADCRH
      0004AA E4               [12] 1933 	clr	a
      0004AB C4               [12] 1934 	swap	a
      0004AC 54 F0            [12] 1935 	anl	a,#0xf0
      0004AE CE               [12] 1936 	xch	a,r6
      0004AF C4               [12] 1937 	swap	a
      0004B0 CE               [12] 1938 	xch	a,r6
      0004B1 6E               [12] 1939 	xrl	a,r6
      0004B2 CE               [12] 1940 	xch	a,r6
      0004B3 54 F0            [12] 1941 	anl	a,#0xf0
      0004B5 CE               [12] 1942 	xch	a,r6
      0004B6 6E               [12] 1943 	xrl	a,r6
      0004B7 FF               [12] 1944 	mov	r7,a
      0004B8 AC C2            [24] 1945 	mov	r4,_ADCRL
      0004BA 53 04 0F         [24] 1946 	anl	ar4,#0x0f
      0004BD 7D 00            [12] 1947 	mov	r5,#0x00
      0004BF EE               [12] 1948 	mov	a,r6
      0004C0 42 04            [12] 1949 	orl	ar4,a
      0004C2 EF               [12] 1950 	mov	a,r7
      0004C3 42 05            [12] 1951 	orl	ar5,a
      0004C5 90 00 74         [24] 1952 	mov	dptr,#(_cur_amp + 0x0002)
      0004C8 EC               [12] 1953 	mov	a,r4
      0004C9 F0               [24] 1954 	movx	@dptr,a
      0004CA ED               [12] 1955 	mov	a,r5
      0004CB A3               [24] 1956 	inc	dptr
      0004CC F0               [24] 1957 	movx	@dptr,a
                           0003F0  1958 	Smain$sample_amps$137 ==.
                                   1959 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:454: DISABLE_ADC;
                                   1960 ;	assignBit
      0004CD A2 AF            [12] 1961 	mov	c,_EA
      0004CF 92 00            [24] 1962 	mov	_BIT_TMP,c
                                   1963 ;	assignBit
      0004D1 C2 AF            [12] 1964 	clr	_EA
      0004D3 75 C7 AA         [24] 1965 	mov	_TA,#0xaa
      0004D6 75 C7 55         [24] 1966 	mov	_TA,#0x55
      0004D9 75 91 00         [24] 1967 	mov	_SFRS,#0x00
                                   1968 ;	assignBit
      0004DC A2 00            [12] 1969 	mov	c,_BIT_TMP
      0004DE 92 AF            [24] 1970 	mov	_EA,c
      0004E0 53 E1 FE         [24] 1971 	anl	_ADCCON1,#0xfe
                           000406  1972 	Smain$sample_amps$138 ==.
                                   1973 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:455: }
                           000406  1974 	Smain$sample_amps$139 ==.
                           000406  1975 	XG$sample_amps$0$0 ==.
      0004E3 22               [24] 1976 	ret
                           000407  1977 	Smain$sample_amps$140 ==.
                                   1978 ;------------------------------------------------------------
                                   1979 ;Allocation info for local variables in function 'sample_temperature'
                                   1980 ;------------------------------------------------------------
                           000407  1981 	Smain$sample_temperature$141 ==.
                                   1982 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:457: void sample_temperature( void )
                                   1983 ;	-----------------------------------------
                                   1984 ;	 function sample_temperature
                                   1985 ;	-----------------------------------------
      0004E4                       1986 _sample_temperature:
                           000407  1987 	Smain$sample_temperature$142 ==.
                           000407  1988 	Smain$sample_temperature$143 ==.
                                   1989 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:460: ENABLE_ADC_NTC;
                                   1990 ;	assignBit
      0004E4 A2 AF            [12] 1991 	mov	c,_EA
      0004E6 92 00            [24] 1992 	mov	_BIT_TMP,c
                                   1993 ;	assignBit
      0004E8 C2 AF            [12] 1994 	clr	_EA
      0004EA 75 C7 AA         [24] 1995 	mov	_TA,#0xaa
      0004ED 75 C7 55         [24] 1996 	mov	_TA,#0x55
      0004F0 75 91 00         [24] 1997 	mov	_SFRS,#0x00
                                   1998 ;	assignBit
      0004F3 A2 00            [12] 1999 	mov	c,_BIT_TMP
      0004F5 92 AF            [24] 2000 	mov	_EA,c
      0004F7 53 E1 FE         [24] 2001 	anl	_ADCCON1,#0xfe
      0004FA 53 E8 F0         [24] 2002 	anl	_ADCCON0,#0xf0
      0004FD 43 E8 03         [24] 2003 	orl	_ADCCON0,#0x03
      000500 43 B1 40         [24] 2004 	orl	_P0M1,#0x40
      000503 53 B2 BF         [24] 2005 	anl	_P0M2,#0xbf
      000506 75 F6 00         [24] 2006 	mov	_AINDIDS,#0x00
      000509 43 F6 08         [24] 2007 	orl	_AINDIDS,#0x08
                                   2008 ;	assignBit
      00050C A2 AF            [12] 2009 	mov	c,_EA
      00050E 92 00            [24] 2010 	mov	_BIT_TMP,c
                                   2011 ;	assignBit
      000510 C2 AF            [12] 2012 	clr	_EA
      000512 75 C7 AA         [24] 2013 	mov	_TA,#0xaa
      000515 75 C7 55         [24] 2014 	mov	_TA,#0x55
      000518 75 91 00         [24] 2015 	mov	_SFRS,#0x00
                                   2016 ;	assignBit
      00051B A2 00            [12] 2017 	mov	c,_BIT_TMP
      00051D 92 AF            [24] 2018 	mov	_EA,c
      00051F 43 E1 01         [24] 2019 	orl	_ADCCON1,#0x01
                           000445  2020 	Smain$sample_temperature$144 ==.
                                   2021 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:462: clr_ADCCON0_ADCF;
                                   2022 ;	assignBit
      000522 A2 AF            [12] 2023 	mov	c,_EA
      000524 92 00            [24] 2024 	mov	_BIT_TMP,c
                                   2025 ;	assignBit
      000526 C2 AF            [12] 2026 	clr	_EA
      000528 75 C7 AA         [24] 2027 	mov	_TA,#0xaa
      00052B 75 C7 55         [24] 2028 	mov	_TA,#0x55
      00052E 75 91 00         [24] 2029 	mov	_SFRS,#0x00
                                   2030 ;	assignBit
      000531 A2 00            [12] 2031 	mov	c,_BIT_TMP
      000533 92 AF            [24] 2032 	mov	_EA,c
                                   2033 ;	assignBit
      000535 C2 EF            [12] 2034 	clr	_ADCF
                           00045A  2035 	Smain$sample_temperature$145 ==.
                                   2036 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:463: set_ADCCON0_ADCS;
                                   2037 ;	assignBit
      000537 A2 AF            [12] 2038 	mov	c,_EA
      000539 92 00            [24] 2039 	mov	_BIT_TMP,c
                                   2040 ;	assignBit
      00053B C2 AF            [12] 2041 	clr	_EA
      00053D 75 C7 AA         [24] 2042 	mov	_TA,#0xaa
      000540 75 C7 55         [24] 2043 	mov	_TA,#0x55
      000543 75 91 00         [24] 2044 	mov	_SFRS,#0x00
                                   2045 ;	assignBit
      000546 A2 00            [12] 2046 	mov	c,_BIT_TMP
      000548 92 AF            [24] 2047 	mov	_EA,c
                                   2048 ;	assignBit
      00054A D2 EE            [12] 2049 	setb	_ADCS
                           00046F  2050 	Smain$sample_temperature$146 ==.
                                   2051 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:465: while( ADCF == 0 );
      00054C                       2052 00101$:
      00054C 30 EF FD         [24] 2053 	jnb	_ADCF,00101$
                           000472  2054 	Smain$sample_temperature$147 ==.
                                   2055 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:466: acc_temp += (((uint16_t)ADCRH) << 4 ) | (ADCRL & 0xF);
      00054F AE C3            [24] 2056 	mov	r6,_ADCRH
      000551 E4               [12] 2057 	clr	a
      000552 C4               [12] 2058 	swap	a
      000553 54 F0            [12] 2059 	anl	a,#0xf0
      000555 CE               [12] 2060 	xch	a,r6
      000556 C4               [12] 2061 	swap	a
      000557 CE               [12] 2062 	xch	a,r6
      000558 6E               [12] 2063 	xrl	a,r6
      000559 CE               [12] 2064 	xch	a,r6
      00055A 54 F0            [12] 2065 	anl	a,#0xf0
      00055C CE               [12] 2066 	xch	a,r6
      00055D 6E               [12] 2067 	xrl	a,r6
      00055E FF               [12] 2068 	mov	r7,a
      00055F AC C2            [24] 2069 	mov	r4,_ADCRL
      000561 53 04 0F         [24] 2070 	anl	ar4,#0x0f
      000564 7D 00            [12] 2071 	mov	r5,#0x00
      000566 EE               [12] 2072 	mov	a,r6
      000567 42 04            [12] 2073 	orl	ar4,a
      000569 EF               [12] 2074 	mov	a,r7
      00056A 42 05            [12] 2075 	orl	ar5,a
      00056C 90 00 6E         [24] 2076 	mov	dptr,#_acc_temp
      00056F E0               [24] 2077 	movx	a,@dptr
      000570 FA               [12] 2078 	mov	r2,a
      000571 A3               [24] 2079 	inc	dptr
      000572 E0               [24] 2080 	movx	a,@dptr
      000573 FB               [12] 2081 	mov	r3,a
      000574 A3               [24] 2082 	inc	dptr
      000575 E0               [24] 2083 	movx	a,@dptr
      000576 FE               [12] 2084 	mov	r6,a
      000577 A3               [24] 2085 	inc	dptr
      000578 E0               [24] 2086 	movx	a,@dptr
      000579 FF               [12] 2087 	mov	r7,a
      00057A 8C 00            [24] 2088 	mov	ar0,r4
      00057C 8D 01            [24] 2089 	mov	ar1,r5
      00057E 7C 00            [12] 2090 	mov	r4,#0x00
      000580 7D 00            [12] 2091 	mov	r5,#0x00
      000582 90 00 6E         [24] 2092 	mov	dptr,#_acc_temp
      000585 E8               [12] 2093 	mov	a,r0
      000586 2A               [12] 2094 	add	a,r2
      000587 F0               [24] 2095 	movx	@dptr,a
      000588 E9               [12] 2096 	mov	a,r1
      000589 3B               [12] 2097 	addc	a,r3
      00058A A3               [24] 2098 	inc	dptr
      00058B F0               [24] 2099 	movx	@dptr,a
      00058C EC               [12] 2100 	mov	a,r4
      00058D 3E               [12] 2101 	addc	a,r6
      00058E A3               [24] 2102 	inc	dptr
      00058F F0               [24] 2103 	movx	@dptr,a
      000590 ED               [12] 2104 	mov	a,r5
      000591 3F               [12] 2105 	addc	a,r7
      000592 A3               [24] 2106 	inc	dptr
      000593 F0               [24] 2107 	movx	@dptr,a
                           0004B7  2108 	Smain$sample_temperature$148 ==.
                                   2109 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:468: DISABLE_ADC;
                                   2110 ;	assignBit
      000594 A2 AF            [12] 2111 	mov	c,_EA
      000596 92 00            [24] 2112 	mov	_BIT_TMP,c
                                   2113 ;	assignBit
      000598 C2 AF            [12] 2114 	clr	_EA
      00059A 75 C7 AA         [24] 2115 	mov	_TA,#0xaa
      00059D 75 C7 55         [24] 2116 	mov	_TA,#0x55
      0005A0 75 91 00         [24] 2117 	mov	_SFRS,#0x00
                                   2118 ;	assignBit
      0005A3 A2 00            [12] 2119 	mov	c,_BIT_TMP
      0005A5 92 AF            [24] 2120 	mov	_EA,c
      0005A7 53 E1 FE         [24] 2121 	anl	_ADCCON1,#0xfe
                           0004CD  2122 	Smain$sample_temperature$149 ==.
                                   2123 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:470: }
                           0004CD  2124 	Smain$sample_temperature$150 ==.
                           0004CD  2125 	XG$sample_temperature$0$0 ==.
      0005AA 22               [24] 2126 	ret
                           0004CE  2127 	Smain$sample_temperature$151 ==.
                                   2128 ;------------------------------------------------------------
                                   2129 ;Allocation info for local variables in function 'has_high_beam'
                                   2130 ;------------------------------------------------------------
                                   2131 ;mode                      Allocated with name '_has_high_beam_mode_65536_173'
                                   2132 ;------------------------------------------------------------
                           0004CE  2133 	Smain$has_high_beam$152 ==.
                                   2134 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:472: int8_t has_high_beam( int8_t mode )
                                   2135 ;	-----------------------------------------
                                   2136 ;	 function has_high_beam
                                   2137 ;	-----------------------------------------
      0005AB                       2138 _has_high_beam:
                           0004CE  2139 	Smain$has_high_beam$153 ==.
      0005AB E5 82            [12] 2140 	mov	a,dpl
      0005AD 90 00 19         [24] 2141 	mov	dptr,#_has_high_beam_mode_65536_173
      0005B0 F0               [24] 2142 	movx	@dptr,a
                           0004D4  2143 	Smain$has_high_beam$154 ==.
                                   2144 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:474: return (max_amp[mode][0] > 0);
      0005B1 E0               [24] 2145 	movx	a,@dptr
      0005B2 FF               [12] 2146 	mov	r7,a
      0005B3 C2 D5            [12] 2147 	clr	F0
      0005B5 75 F0 02         [24] 2148 	mov	b,#0x02
      0005B8 EF               [12] 2149 	mov	a,r7
      0005B9 30 E7 04         [24] 2150 	jnb	acc.7,00109$
      0005BC B2 D5            [12] 2151 	cpl	F0
      0005BE F4               [12] 2152 	cpl	a
      0005BF 04               [12] 2153 	inc	a
      0005C0                       2154 00109$:
      0005C0 A4               [48] 2155 	mul	ab
      0005C1 30 D5 0A         [24] 2156 	jnb	F0,00110$
      0005C4 F4               [12] 2157 	cpl	a
      0005C5 24 01            [12] 2158 	add	a,#0x01
      0005C7 C5 F0            [12] 2159 	xch	a,b
      0005C9 F4               [12] 2160 	cpl	a
      0005CA 34 00            [12] 2161 	addc	a,#0x00
      0005CC C5 F0            [12] 2162 	xch	a,b
      0005CE                       2163 00110$:
      0005CE 24 9D            [12] 2164 	add	a,#_max_amp
      0005D0 FE               [12] 2165 	mov	r6,a
      0005D1 74 19            [12] 2166 	mov	a,#(_max_amp >> 8)
      0005D3 35 F0            [12] 2167 	addc	a,b
      0005D5 FF               [12] 2168 	mov	r7,a
      0005D6 8E 82            [24] 2169 	mov	dpl,r6
      0005D8 8F 83            [24] 2170 	mov	dph,r7
      0005DA E4               [12] 2171 	clr	a
      0005DB 93               [24] 2172 	movc	a,@a+dptr
      0005DC 60 06            [24] 2173 	jz	00103$
      0005DE 7E 01            [12] 2174 	mov	r6,#0x01
      0005E0 7F 00            [12] 2175 	mov	r7,#0x00
      0005E2 80 04            [24] 2176 	sjmp	00104$
      0005E4                       2177 00103$:
      0005E4 7E 00            [12] 2178 	mov	r6,#0x00
      0005E6 7F 00            [12] 2179 	mov	r7,#0x00
      0005E8                       2180 00104$:
      0005E8 8E 82            [24] 2181 	mov	dpl,r6
                           00050D  2182 	Smain$has_high_beam$155 ==.
                                   2183 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:475: }
                           00050D  2184 	Smain$has_high_beam$156 ==.
                           00050D  2185 	XG$has_high_beam$0$0 ==.
      0005EA 22               [24] 2186 	ret
                           00050E  2187 	Smain$has_high_beam$157 ==.
                                   2188 ;------------------------------------------------------------
                                   2189 ;Allocation info for local variables in function 'avg_amp'
                                   2190 ;------------------------------------------------------------
                                   2191 ;idx                       Allocated with name '_avg_amp_idx_65536_175'
                                   2192 ;------------------------------------------------------------
                           00050E  2193 	Smain$avg_amp$158 ==.
                                   2194 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:477: uint16_t avg_amp( uint8_t idx ) {
                                   2195 ;	-----------------------------------------
                                   2196 ;	 function avg_amp
                                   2197 ;	-----------------------------------------
      0005EB                       2198 _avg_amp:
                           00050E  2199 	Smain$avg_amp$159 ==.
      0005EB E5 82            [12] 2200 	mov	a,dpl
      0005ED 90 00 1A         [24] 2201 	mov	dptr,#_avg_amp_idx_65536_175
      0005F0 F0               [24] 2202 	movx	@dptr,a
                           000514  2203 	Smain$avg_amp$160 ==.
                                   2204 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:478: if( sample_count > 0 ) {
      0005F1 90 00 65         [24] 2205 	mov	dptr,#_sample_count
      0005F4 E0               [24] 2206 	movx	a,@dptr
      0005F5 FF               [12] 2207 	mov	r7,a
      0005F6 E0               [24] 2208 	movx	a,@dptr
      0005F7 60 3C            [24] 2209 	jz	00102$
                           00051C  2210 	Smain$avg_amp$161 ==.
                           00051C  2211 	Smain$avg_amp$162 ==.
                                   2212 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:479: return acc_amp[idx] / sample_count;
      0005F9 90 00 1A         [24] 2213 	mov	dptr,#_avg_amp_idx_65536_175
      0005FC E0               [24] 2214 	movx	a,@dptr
      0005FD 75 F0 04         [24] 2215 	mov	b,#0x04
      000600 A4               [48] 2216 	mul	ab
      000601 24 66            [12] 2217 	add	a,#_acc_amp
      000603 F5 82            [12] 2218 	mov	dpl,a
      000605 74 00            [12] 2219 	mov	a,#(_acc_amp >> 8)
      000607 35 F0            [12] 2220 	addc	a,b
      000609 F5 83            [12] 2221 	mov	dph,a
      00060B E0               [24] 2222 	movx	a,@dptr
      00060C FB               [12] 2223 	mov	r3,a
      00060D A3               [24] 2224 	inc	dptr
      00060E E0               [24] 2225 	movx	a,@dptr
      00060F FC               [12] 2226 	mov	r4,a
      000610 A3               [24] 2227 	inc	dptr
      000611 E0               [24] 2228 	movx	a,@dptr
      000612 FD               [12] 2229 	mov	r5,a
      000613 A3               [24] 2230 	inc	dptr
      000614 E0               [24] 2231 	movx	a,@dptr
      000615 FE               [12] 2232 	mov	r6,a
      000616 90 00 40         [24] 2233 	mov	dptr,#__divulong_PARM_2
      000619 EF               [12] 2234 	mov	a,r7
      00061A F0               [24] 2235 	movx	@dptr,a
      00061B E4               [12] 2236 	clr	a
      00061C A3               [24] 2237 	inc	dptr
      00061D F0               [24] 2238 	movx	@dptr,a
      00061E A3               [24] 2239 	inc	dptr
      00061F F0               [24] 2240 	movx	@dptr,a
      000620 A3               [24] 2241 	inc	dptr
      000621 F0               [24] 2242 	movx	@dptr,a
                           000545  2243 	Smain$avg_amp$163 ==.
      000622 8B 82            [24] 2244 	mov	dpl,r3
      000624 8C 83            [24] 2245 	mov	dph,r4
      000626 8D F0            [24] 2246 	mov	b,r5
      000628 EE               [12] 2247 	mov	a,r6
      000629 12 17 25         [24] 2248 	lcall	__divulong
      00062C AC 82            [24] 2249 	mov	r4,dpl
      00062E AD 83            [24] 2250 	mov	r5,dph
      000630 AE F0            [24] 2251 	mov	r6,b
      000632 FF               [12] 2252 	mov	r7,a
      000633 80 1A            [24] 2253 	sjmp	00104$
      000635                       2254 00102$:
                           000558  2255 	Smain$avg_amp$164 ==.
                           000558  2256 	Smain$avg_amp$165 ==.
                                   2257 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:481: return cur_amp[idx];
      000635 90 00 1A         [24] 2258 	mov	dptr,#_avg_amp_idx_65536_175
      000638 E0               [24] 2259 	movx	a,@dptr
      000639 75 F0 02         [24] 2260 	mov	b,#0x02
      00063C A4               [48] 2261 	mul	ab
      00063D 24 72            [12] 2262 	add	a,#_cur_amp
      00063F F5 82            [12] 2263 	mov	dpl,a
      000641 74 00            [12] 2264 	mov	a,#(_cur_amp >> 8)
      000643 35 F0            [12] 2265 	addc	a,b
      000645 F5 83            [12] 2266 	mov	dph,a
      000647 E0               [24] 2267 	movx	a,@dptr
      000648 FE               [12] 2268 	mov	r6,a
      000649 A3               [24] 2269 	inc	dptr
      00064A E0               [24] 2270 	movx	a,@dptr
                           00056E  2271 	Smain$avg_amp$166 ==.
                           00056E  2272 	Smain$avg_amp$167 ==.
                                   2273 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:483: }
                           00056E  2274 	Smain$avg_amp$168 ==.
                           00056E  2275 	XG$avg_amp$0$0 ==.
      00064B 8E 82            [24] 2276 	mov	dpl,r6
      00064D F5 83            [12] 2277 	mov	dph,a
      00064F                       2278 00104$:
      00064F 22               [24] 2279 	ret
                           000573  2280 	Smain$avg_amp$169 ==.
                                   2281 ;------------------------------------------------------------
                                   2282 ;Allocation info for local variables in function 'target_amp'
                                   2283 ;------------------------------------------------------------
                                   2284 ;idx                       Allocated with name '_target_amp_PARM_2'
                                   2285 ;mode                      Allocated with name '_target_amp_mode_65536_179'
                                   2286 ;m                         Allocated with name '_target_amp_m_196608_183'
                                   2287 ;a                         Allocated with name '_target_amp_a_196608_183'
                                   2288 ;------------------------------------------------------------
                           000573  2289 	Smain$target_amp$170 ==.
                                   2290 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:485: uint8_t target_amp( uint8_t mode, uint8_t idx ) {
                                   2291 ;	-----------------------------------------
                                   2292 ;	 function target_amp
                                   2293 ;	-----------------------------------------
      000650                       2294 _target_amp:
                           000573  2295 	Smain$target_amp$171 ==.
      000650 E5 82            [12] 2296 	mov	a,dpl
      000652 90 00 1C         [24] 2297 	mov	dptr,#_target_amp_mode_65536_179
      000655 F0               [24] 2298 	movx	@dptr,a
                           000579  2299 	Smain$target_amp$172 ==.
                                   2300 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:486: if( temp_controlling[mode] && cur_temp > MAX_TEMP ) {
      000656 E0               [24] 2301 	movx	a,@dptr
      000657 FF               [12] 2302 	mov	r7,a
      000658 24 BD            [12] 2303 	add	a,#_temp_controlling
      00065A FD               [12] 2304 	mov	r5,a
      00065B E4               [12] 2305 	clr	a
      00065C 34 19            [12] 2306 	addc	a,#(_temp_controlling >> 8)
      00065E FE               [12] 2307 	mov	r6,a
      00065F 8D 82            [24] 2308 	mov	dpl,r5
      000661 8E 83            [24] 2309 	mov	dph,r6
      000663 E4               [12] 2310 	clr	a
      000664 93               [24] 2311 	movc	a,@a+dptr
      000665 70 03            [24] 2312 	jnz	00122$
      000667 02 07 4C         [24] 2313 	ljmp	00105$
      00066A                       2314 00122$:
      00066A 90 00 76         [24] 2315 	mov	dptr,#_cur_temp
      00066D E0               [24] 2316 	movx	a,@dptr
      00066E FD               [12] 2317 	mov	r5,a
      00066F A3               [24] 2318 	inc	dptr
      000670 E0               [24] 2319 	movx	a,@dptr
      000671 FE               [12] 2320 	mov	r6,a
      000672 8D 03            [24] 2321 	mov	ar3,r5
      000674 8E 04            [24] 2322 	mov	ar4,r6
      000676 C3               [12] 2323 	clr	c
      000677 74 80            [12] 2324 	mov	a,#0x80
      000679 9B               [12] 2325 	subb	a,r3
      00067A 74 0C            [12] 2326 	mov	a,#0x0c
      00067C 9C               [12] 2327 	subb	a,r4
      00067D 40 03            [24] 2328 	jc	00123$
      00067F 02 07 4C         [24] 2329 	ljmp	00105$
      000682                       2330 00123$:
                           0005A5  2331 	Smain$target_amp$173 ==.
                           0005A5  2332 	Smain$target_amp$174 ==.
                                   2333 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:487: if( cur_temp > ABS_MAX_TEMP ) {
      000682 C3               [12] 2334 	clr	c
      000683 74 16            [12] 2335 	mov	a,#0x16
      000685 9B               [12] 2336 	subb	a,r3
      000686 74 0D            [12] 2337 	mov	a,#0x0d
      000688 9C               [12] 2338 	subb	a,r4
      000689 50 23            [24] 2339 	jnc	00102$
                           0005AE  2340 	Smain$target_amp$175 ==.
                           0005AE  2341 	Smain$target_amp$176 ==.
                                   2342 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:488: return max_amp[mode][idx] >> 1;
      00068B EF               [12] 2343 	mov	a,r7
      00068C 75 F0 02         [24] 2344 	mov	b,#0x02
      00068F A4               [48] 2345 	mul	ab
      000690 24 9D            [12] 2346 	add	a,#_max_amp
      000692 FB               [12] 2347 	mov	r3,a
      000693 74 19            [12] 2348 	mov	a,#(_max_amp >> 8)
      000695 35 F0            [12] 2349 	addc	a,b
      000697 FC               [12] 2350 	mov	r4,a
      000698 90 00 1B         [24] 2351 	mov	dptr,#_target_amp_PARM_2
      00069B E0               [24] 2352 	movx	a,@dptr
      00069C FA               [12] 2353 	mov	r2,a
      00069D 2B               [12] 2354 	add	a,r3
      00069E F5 82            [12] 2355 	mov	dpl,a
      0006A0 E4               [12] 2356 	clr	a
      0006A1 3C               [12] 2357 	addc	a,r4
      0006A2 F5 83            [12] 2358 	mov	dph,a
      0006A4 E4               [12] 2359 	clr	a
      0006A5 93               [24] 2360 	movc	a,@a+dptr
      0006A6 C3               [12] 2361 	clr	c
      0006A7 13               [12] 2362 	rrc	a
      0006A8 FC               [12] 2363 	mov	r4,a
      0006A9 F5 82            [12] 2364 	mov	dpl,a
      0006AB 02 07 6C         [24] 2365 	ljmp	00108$
                           0005D1  2366 	Smain$target_amp$177 ==.
      0006AE                       2367 00102$:
                           0005D1  2368 	Smain$target_amp$178 ==.
                           0005D1  2369 	Smain$target_amp$179 ==.
                                   2370 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:490: uint32_t m = max_amp[mode][idx];
      0006AE EF               [12] 2371 	mov	a,r7
      0006AF 75 F0 02         [24] 2372 	mov	b,#0x02
      0006B2 A4               [48] 2373 	mul	ab
      0006B3 24 9D            [12] 2374 	add	a,#_max_amp
      0006B5 FC               [12] 2375 	mov	r4,a
      0006B6 74 19            [12] 2376 	mov	a,#(_max_amp >> 8)
      0006B8 35 F0            [12] 2377 	addc	a,b
      0006BA FF               [12] 2378 	mov	r7,a
      0006BB 90 00 1B         [24] 2379 	mov	dptr,#_target_amp_PARM_2
      0006BE E0               [24] 2380 	movx	a,@dptr
      0006BF 2C               [12] 2381 	add	a,r4
      0006C0 F5 82            [12] 2382 	mov	dpl,a
      0006C2 E4               [12] 2383 	clr	a
      0006C3 3F               [12] 2384 	addc	a,r7
      0006C4 F5 83            [12] 2385 	mov	dph,a
      0006C6 E4               [12] 2386 	clr	a
      0006C7 93               [24] 2387 	movc	a,@a+dptr
      0006C8 FF               [12] 2388 	mov	r7,a
                           0005EC  2389 	Smain$target_amp$180 ==.
                                   2390 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:491: uint32_t a = m * (ABS_MAX_TEMP - cur_temp) / (ABS_MAX_TEMP - MAX_TEMP);
      0006C9 E4               [12] 2391 	clr	a
      0006CA FC               [12] 2392 	mov	r4,a
      0006CB FB               [12] 2393 	mov	r3,a
      0006CC FA               [12] 2394 	mov	r2,a
      0006CD 74 16            [12] 2395 	mov	a,#0x16
      0006CF C3               [12] 2396 	clr	c
      0006D0 9D               [12] 2397 	subb	a,r5
      0006D1 FD               [12] 2398 	mov	r5,a
      0006D2 74 0D            [12] 2399 	mov	a,#0x0d
      0006D4 9E               [12] 2400 	subb	a,r6
      0006D5 FE               [12] 2401 	mov	r6,a
      0006D6 90 00 4D         [24] 2402 	mov	dptr,#__mullong_PARM_2
      0006D9 ED               [12] 2403 	mov	a,r5
      0006DA F0               [24] 2404 	movx	@dptr,a
      0006DB EE               [12] 2405 	mov	a,r6
      0006DC A3               [24] 2406 	inc	dptr
      0006DD F0               [24] 2407 	movx	@dptr,a
      0006DE E4               [12] 2408 	clr	a
      0006DF A3               [24] 2409 	inc	dptr
      0006E0 F0               [24] 2410 	movx	@dptr,a
      0006E1 A3               [24] 2411 	inc	dptr
      0006E2 F0               [24] 2412 	movx	@dptr,a
                           000606  2413 	Smain$target_amp$181 ==.
      0006E3 8F 82            [24] 2414 	mov	dpl,r7
      0006E5 8C 83            [24] 2415 	mov	dph,r4
      0006E7 8B F0            [24] 2416 	mov	b,r3
      0006E9 EA               [12] 2417 	mov	a,r2
      0006EA C0 07            [24] 2418 	push	ar7
      0006EC C0 04            [24] 2419 	push	ar4
      0006EE C0 03            [24] 2420 	push	ar3
      0006F0 C0 02            [24] 2421 	push	ar2
      0006F2 12 18 19         [24] 2422 	lcall	__mullong
      0006F5 A8 82            [24] 2423 	mov	r0,dpl
      0006F7 A9 83            [24] 2424 	mov	r1,dph
      0006F9 AD F0            [24] 2425 	mov	r5,b
      0006FB FE               [12] 2426 	mov	r6,a
      0006FC 90 00 40         [24] 2427 	mov	dptr,#__divulong_PARM_2
      0006FF 74 96            [12] 2428 	mov	a,#0x96
      000701 F0               [24] 2429 	movx	@dptr,a
      000702 E4               [12] 2430 	clr	a
      000703 A3               [24] 2431 	inc	dptr
      000704 F0               [24] 2432 	movx	@dptr,a
      000705 A3               [24] 2433 	inc	dptr
      000706 F0               [24] 2434 	movx	@dptr,a
      000707 A3               [24] 2435 	inc	dptr
      000708 F0               [24] 2436 	movx	@dptr,a
                           00062C  2437 	Smain$target_amp$182 ==.
                                   2438 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:492: return (m >> 1) + (a >> 2) + (a >> 4);
      000709 88 82            [24] 2439 	mov	dpl,r0
      00070B 89 83            [24] 2440 	mov	dph,r1
      00070D 8D F0            [24] 2441 	mov	b,r5
      00070F EE               [12] 2442 	mov	a,r6
      000710 12 17 25         [24] 2443 	lcall	__divulong
      000713 A8 82            [24] 2444 	mov	r0,dpl
      000715 A9 83            [24] 2445 	mov	r1,dph
      000717 D0 02            [24] 2446 	pop	ar2
      000719 D0 03            [24] 2447 	pop	ar3
      00071B D0 04            [24] 2448 	pop	ar4
      00071D D0 07            [24] 2449 	pop	ar7
      00071F EC               [12] 2450 	mov	a,r4
      000720 C3               [12] 2451 	clr	c
      000721 13               [12] 2452 	rrc	a
      000722 CF               [12] 2453 	xch	a,r7
      000723 13               [12] 2454 	rrc	a
      000724 CF               [12] 2455 	xch	a,r7
      000725 FC               [12] 2456 	mov	r4,a
      000726 88 05            [24] 2457 	mov	ar5,r0
      000728 E9               [12] 2458 	mov	a,r1
      000729 C3               [12] 2459 	clr	c
      00072A 13               [12] 2460 	rrc	a
      00072B CD               [12] 2461 	xch	a,r5
      00072C 13               [12] 2462 	rrc	a
      00072D CD               [12] 2463 	xch	a,r5
      00072E C3               [12] 2464 	clr	c
      00072F 13               [12] 2465 	rrc	a
      000730 CD               [12] 2466 	xch	a,r5
      000731 13               [12] 2467 	rrc	a
      000732 CD               [12] 2468 	xch	a,r5
      000733 FE               [12] 2469 	mov	r6,a
      000734 ED               [12] 2470 	mov	a,r5
      000735 2F               [12] 2471 	add	a,r7
      000736 FF               [12] 2472 	mov	r7,a
      000737 E9               [12] 2473 	mov	a,r1
      000738 C4               [12] 2474 	swap	a
      000739 C8               [12] 2475 	xch	a,r0
      00073A C4               [12] 2476 	swap	a
      00073B 54 0F            [12] 2477 	anl	a,#0x0f
      00073D 68               [12] 2478 	xrl	a,r0
      00073E C8               [12] 2479 	xch	a,r0
      00073F 54 0F            [12] 2480 	anl	a,#0x0f
      000741 C8               [12] 2481 	xch	a,r0
      000742 68               [12] 2482 	xrl	a,r0
      000743 C8               [12] 2483 	xch	a,r0
      000744 F9               [12] 2484 	mov	r1,a
      000745 E8               [12] 2485 	mov	a,r0
      000746 2F               [12] 2486 	add	a,r7
      000747 FF               [12] 2487 	mov	r7,a
      000748 F5 82            [12] 2488 	mov	dpl,a
      00074A 80 20            [24] 2489 	sjmp	00108$
      00074C                       2490 00105$:
                           00066F  2491 	Smain$target_amp$183 ==.
                           00066F  2492 	Smain$target_amp$184 ==.
                                   2493 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:495: return max_amp[mode][idx];
      00074C 90 00 1C         [24] 2494 	mov	dptr,#_target_amp_mode_65536_179
      00074F E0               [24] 2495 	movx	a,@dptr
      000750 75 F0 02         [24] 2496 	mov	b,#0x02
      000753 A4               [48] 2497 	mul	ab
      000754 24 9D            [12] 2498 	add	a,#_max_amp
      000756 FE               [12] 2499 	mov	r6,a
      000757 74 19            [12] 2500 	mov	a,#(_max_amp >> 8)
      000759 35 F0            [12] 2501 	addc	a,b
      00075B FF               [12] 2502 	mov	r7,a
      00075C 90 00 1B         [24] 2503 	mov	dptr,#_target_amp_PARM_2
      00075F E0               [24] 2504 	movx	a,@dptr
      000760 FD               [12] 2505 	mov	r5,a
      000761 2E               [12] 2506 	add	a,r6
      000762 F5 82            [12] 2507 	mov	dpl,a
      000764 E4               [12] 2508 	clr	a
      000765 3F               [12] 2509 	addc	a,r7
      000766 F5 83            [12] 2510 	mov	dph,a
      000768 E4               [12] 2511 	clr	a
      000769 93               [24] 2512 	movc	a,@a+dptr
                           00068D  2513 	Smain$target_amp$185 ==.
                           00068D  2514 	Smain$target_amp$186 ==.
                                   2515 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:497: }
                           00068D  2516 	Smain$target_amp$187 ==.
                           00068D  2517 	XG$target_amp$0$0 ==.
      00076A F5 82            [12] 2518 	mov	dpl,a
      00076C                       2519 00108$:
      00076C 22               [24] 2520 	ret
                           000690  2521 	Smain$target_amp$188 ==.
                                   2522 ;------------------------------------------------------------
                                   2523 ;Allocation info for local variables in function 'changeMode'
                                   2524 ;------------------------------------------------------------
                                   2525 ;new_mode                  Allocated with name '_changeMode_new_mode_65536_185'
                                   2526 ;i                         Allocated with name '_changeMode_i_131072_187'
                                   2527 ;target                    Allocated with name '_changeMode_target_196608_188'
                                   2528 ;i                         Allocated with name '_changeMode_i_131072_192'
                                   2529 ;i                         Allocated with name '_changeMode_i_196608_195'
                                   2530 ;------------------------------------------------------------
                           000690  2531 	Smain$changeMode$189 ==.
                                   2532 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:510: void changeMode(uint8_t new_mode)
                                   2533 ;	-----------------------------------------
                                   2534 ;	 function changeMode
                                   2535 ;	-----------------------------------------
      00076D                       2536 _changeMode:
                           000690  2537 	Smain$changeMode$190 ==.
      00076D E5 82            [12] 2538 	mov	a,dpl
      00076F 90 00 1D         [24] 2539 	mov	dptr,#_changeMode_new_mode_65536_185
      000772 F0               [24] 2540 	movx	@dptr,a
                           000696  2541 	Smain$changeMode$191 ==.
                                   2542 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:512: if( new_mode == light_mode ) return;
      000773 E0               [24] 2543 	movx	a,@dptr
      000774 FF               [12] 2544 	mov	r7,a
      000775 90 00 5A         [24] 2545 	mov	dptr,#_light_mode
      000778 E0               [24] 2546 	movx	a,@dptr
      000779 FE               [12] 2547 	mov	r6,a
      00077A EF               [12] 2548 	mov	a,r7
      00077B B5 06 03         [24] 2549 	cjne	a,ar6,00102$
      00077E 02 09 09         [24] 2550 	ljmp	00134$
      000781                       2551 00102$:
                           0006A4  2552 	Smain$changeMode$192 ==.
                                   2553 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:513: if( new_mode > LIGHT_MODE_MAX ) return;
      000781 EF               [12] 2554 	mov	a,r7
      000782 24 F6            [12] 2555 	add	a,#0xff - 0x09
      000784 50 03            [24] 2556 	jnc	00104$
      000786 02 09 09         [24] 2557 	ljmp	00134$
      000789                       2558 00104$:
                           0006AC  2559 	Smain$changeMode$193 ==.
                                   2560 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:514: if( next_mode[new_mode] == 0 ) return;
      000789 EF               [12] 2561 	mov	a,r7
      00078A 24 C7            [12] 2562 	add	a,#_next_mode
      00078C FD               [12] 2563 	mov	r5,a
      00078D E4               [12] 2564 	clr	a
      00078E 34 19            [12] 2565 	addc	a,#(_next_mode >> 8)
      000790 FE               [12] 2566 	mov	r6,a
      000791 8D 82            [24] 2567 	mov	dpl,r5
      000793 8E 83            [24] 2568 	mov	dph,r6
      000795 E4               [12] 2569 	clr	a
      000796 93               [24] 2570 	movc	a,@a+dptr
      000797 70 03            [24] 2571 	jnz	00144$
      000799 02 09 09         [24] 2572 	ljmp	00134$
                           0006BF  2573 	Smain$changeMode$194 ==.
                                   2574 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:516: for( int i = 0; i < NUM_LEDS; i++ ) {
      00079C                       2575 00144$:
                           0006BF  2576 	Smain$changeMode$195 ==.
                           0006BF  2577 	Smain$changeMode$196 ==.
                           0006BF  2578 	Smain$changeMode$197 ==.
                           0006BF  2579 	Smain$changeMode$197 ==.
                           0006BF  2580 	Smain$changeMode$198 ==.
                           0006BF  2581 	Smain$changeMode$198 ==.
                           0006BF  2582 	Smain$changeMode$199 ==.
      00079C 7D 00            [12] 2583 	mov	r5,#0x00
      00079E 7E 00            [12] 2584 	mov	r6,#0x00
                           0006C3  2585 	Smain$changeMode$200 ==.
      0007A0                       2586 00126$:
      0007A0 C3               [12] 2587 	clr	c
      0007A1 ED               [12] 2588 	mov	a,r5
      0007A2 94 02            [12] 2589 	subb	a,#0x02
      0007A4 EE               [12] 2590 	mov	a,r6
      0007A5 64 80            [12] 2591 	xrl	a,#0x80
      0007A7 94 80            [12] 2592 	subb	a,#0x80
      0007A9 40 03            [24] 2593 	jc	00211$
      0007AB 02 08 66         [24] 2594 	ljmp	00116$
      0007AE                       2595 00211$:
                           0006D1  2596 	Smain$changeMode$201 ==.
                                   2597 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:517: int16_t target = target_amp(new_mode, i);
      0007AE 90 00 1B         [24] 2598 	mov	dptr,#_target_amp_PARM_2
      0007B1 ED               [12] 2599 	mov	a,r5
      0007B2 F0               [24] 2600 	movx	@dptr,a
      0007B3 8F 82            [24] 2601 	mov	dpl,r7
      0007B5 C0 07            [24] 2602 	push	ar7
      0007B7 C0 06            [24] 2603 	push	ar6
      0007B9 C0 05            [24] 2604 	push	ar5
      0007BB 12 06 50         [24] 2605 	lcall	_target_amp
      0007BE AC 82            [24] 2606 	mov	r4,dpl
      0007C0 D0 05            [24] 2607 	pop	ar5
      0007C2 D0 06            [24] 2608 	pop	ar6
      0007C4 D0 07            [24] 2609 	pop	ar7
      0007C6 8C 02            [24] 2610 	mov	ar2,r4
      0007C8 7B 00            [12] 2611 	mov	r3,#0x00
                           0006ED  2612 	Smain$changeMode$202 ==.
                                   2613 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:518: if( target == 0 && pwm[i] > 0 ) { // 켜져있는 상태에서 끄고자할 때
      0007CA EC               [12] 2614 	mov	a,r4
      0007CB 70 27            [24] 2615 	jnz	00113$
      0007CD ED               [12] 2616 	mov	a,r5
      0007CE 2D               [12] 2617 	add	a,r5
      0007CF F9               [12] 2618 	mov	r1,a
      0007D0 EE               [12] 2619 	mov	a,r6
      0007D1 33               [12] 2620 	rlc	a
      0007D2 FC               [12] 2621 	mov	r4,a
      0007D3 E9               [12] 2622 	mov	a,r1
      0007D4 24 5F            [12] 2623 	add	a,#_pwm
      0007D6 F5 82            [12] 2624 	mov	dpl,a
      0007D8 EC               [12] 2625 	mov	a,r4
      0007D9 34 00            [12] 2626 	addc	a,#(_pwm >> 8)
      0007DB F5 83            [12] 2627 	mov	dph,a
      0007DD E0               [24] 2628 	movx	a,@dptr
      0007DE F9               [12] 2629 	mov	r1,a
      0007DF A3               [24] 2630 	inc	dptr
      0007E0 E0               [24] 2631 	movx	a,@dptr
      0007E1 FC               [12] 2632 	mov	r4,a
      0007E2 49               [12] 2633 	orl	a,r1
      0007E3 60 0F            [24] 2634 	jz	00113$
                           000708  2635 	Smain$changeMode$203 ==.
                                   2636 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:519: light_control_mode[i] = MODE_CHANGING_OFF;
      0007E5 ED               [12] 2637 	mov	a,r5
      0007E6 24 63            [12] 2638 	add	a,#_light_control_mode
      0007E8 F5 82            [12] 2639 	mov	dpl,a
      0007EA EE               [12] 2640 	mov	a,r6
      0007EB 34 00            [12] 2641 	addc	a,#(_light_control_mode >> 8)
      0007ED F5 83            [12] 2642 	mov	dph,a
      0007EF 74 01            [12] 2643 	mov	a,#0x01
      0007F1 F0               [24] 2644 	movx	@dptr,a
      0007F2 80 6A            [24] 2645 	sjmp	00127$
      0007F4                       2646 00113$:
                           000717  2647 	Smain$changeMode$204 ==.
                                   2648 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:520: } else if( target > avg_amp(i) ) {
      0007F4 8D 04            [24] 2649 	mov	ar4,r5
      0007F6 8C 82            [24] 2650 	mov	dpl,r4
      0007F8 C0 07            [24] 2651 	push	ar7
      0007FA C0 06            [24] 2652 	push	ar6
      0007FC C0 05            [24] 2653 	push	ar5
      0007FE C0 04            [24] 2654 	push	ar4
      000800 C0 03            [24] 2655 	push	ar3
      000802 C0 02            [24] 2656 	push	ar2
      000804 12 05 EB         [24] 2657 	lcall	_avg_amp
      000807 A8 82            [24] 2658 	mov	r0,dpl
      000809 A9 83            [24] 2659 	mov	r1,dph
      00080B D0 02            [24] 2660 	pop	ar2
      00080D D0 03            [24] 2661 	pop	ar3
      00080F D0 04            [24] 2662 	pop	ar4
      000811 D0 05            [24] 2663 	pop	ar5
      000813 D0 06            [24] 2664 	pop	ar6
      000815 D0 07            [24] 2665 	pop	ar7
      000817 C3               [12] 2666 	clr	c
      000818 E8               [12] 2667 	mov	a,r0
      000819 9A               [12] 2668 	subb	a,r2
      00081A E9               [12] 2669 	mov	a,r1
      00081B 9B               [12] 2670 	subb	a,r3
      00081C 50 0F            [24] 2671 	jnc	00110$
                           000741  2672 	Smain$changeMode$205 ==.
                                   2673 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:521: light_control_mode[i] = MODE_CHANGING_UP;
      00081E ED               [12] 2674 	mov	a,r5
      00081F 24 63            [12] 2675 	add	a,#_light_control_mode
      000821 F5 82            [12] 2676 	mov	dpl,a
      000823 EE               [12] 2677 	mov	a,r6
      000824 34 00            [12] 2678 	addc	a,#(_light_control_mode >> 8)
      000826 F5 83            [12] 2679 	mov	dph,a
      000828 74 02            [12] 2680 	mov	a,#0x02
      00082A F0               [24] 2681 	movx	@dptr,a
      00082B 80 31            [24] 2682 	sjmp	00127$
      00082D                       2683 00110$:
                           000750  2684 	Smain$changeMode$206 ==.
                                   2685 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:522: } else if( target < avg_amp(i) ) {
      00082D 8C 82            [24] 2686 	mov	dpl,r4
      00082F C0 07            [24] 2687 	push	ar7
      000831 C0 06            [24] 2688 	push	ar6
      000833 C0 05            [24] 2689 	push	ar5
      000835 C0 03            [24] 2690 	push	ar3
      000837 C0 02            [24] 2691 	push	ar2
      000839 12 05 EB         [24] 2692 	lcall	_avg_amp
      00083C A9 82            [24] 2693 	mov	r1,dpl
      00083E AC 83            [24] 2694 	mov	r4,dph
      000840 D0 02            [24] 2695 	pop	ar2
      000842 D0 03            [24] 2696 	pop	ar3
      000844 D0 05            [24] 2697 	pop	ar5
      000846 D0 06            [24] 2698 	pop	ar6
      000848 D0 07            [24] 2699 	pop	ar7
      00084A C3               [12] 2700 	clr	c
      00084B EA               [12] 2701 	mov	a,r2
      00084C 99               [12] 2702 	subb	a,r1
      00084D EB               [12] 2703 	mov	a,r3
      00084E 9C               [12] 2704 	subb	a,r4
      00084F 50 0D            [24] 2705 	jnc	00127$
                           000774  2706 	Smain$changeMode$207 ==.
                                   2707 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:523: light_control_mode[i] = MODE_CHANGING_DOWN;
      000851 ED               [12] 2708 	mov	a,r5
      000852 24 63            [12] 2709 	add	a,#_light_control_mode
      000854 F5 82            [12] 2710 	mov	dpl,a
      000856 EE               [12] 2711 	mov	a,r6
      000857 34 00            [12] 2712 	addc	a,#(_light_control_mode >> 8)
      000859 F5 83            [12] 2713 	mov	dph,a
      00085B 74 03            [12] 2714 	mov	a,#0x03
      00085D F0               [24] 2715 	movx	@dptr,a
      00085E                       2716 00127$:
                           000781  2717 	Smain$changeMode$208 ==.
                           000781  2718 	Smain$changeMode$209 ==.
                                   2719 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:516: for( int i = 0; i < NUM_LEDS; i++ ) {
      00085E 0D               [12] 2720 	inc	r5
      00085F BD 00 01         [24] 2721 	cjne	r5,#0x00,00216$
      000862 0E               [12] 2722 	inc	r6
      000863                       2723 00216$:
      000863 02 07 A0         [24] 2724 	ljmp	00126$
      000866                       2725 00116$:
                           000789  2726 	Smain$changeMode$210 ==.
                           000789  2727 	Smain$changeMode$211 ==.
                                   2728 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:529: init_sample();
      000866 12 02 AB         [24] 2729 	lcall	_init_sample
                           00078C  2730 	Smain$changeMode$212 ==.
                           00078C  2731 	Smain$changeMode$213 ==.
                                   2732 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:530: for( int i = 0; i < NUM_LEDS; i++ ) {
                           00078C  2733 	Smain$changeMode$214 ==.
      000869 7E 00            [12] 2734 	mov	r6,#0x00
      00086B 7F 00            [12] 2735 	mov	r7,#0x00
                           000790  2736 	Smain$changeMode$215 ==.
      00086D                       2737 00129$:
      00086D C3               [12] 2738 	clr	c
      00086E EE               [12] 2739 	mov	a,r6
      00086F 94 02            [12] 2740 	subb	a,#0x02
      000871 EF               [12] 2741 	mov	a,r7
      000872 64 80            [12] 2742 	xrl	a,#0x80
      000874 94 80            [12] 2743 	subb	a,#0x80
      000876 50 13            [24] 2744 	jnc	00117$
                           00079B  2745 	Smain$changeMode$216 ==.
                                   2746 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:531: good_amp_count[i] = 0;
      000878 EE               [12] 2747 	mov	a,r6
      000879 24 78            [12] 2748 	add	a,#_good_amp_count
      00087B F5 82            [12] 2749 	mov	dpl,a
      00087D EF               [12] 2750 	mov	a,r7
      00087E 34 00            [12] 2751 	addc	a,#(_good_amp_count >> 8)
      000880 F5 83            [12] 2752 	mov	dph,a
      000882 E4               [12] 2753 	clr	a
      000883 F0               [24] 2754 	movx	@dptr,a
                           0007A7  2755 	Smain$changeMode$217 ==.
                           0007A7  2756 	Smain$changeMode$218 ==.
                                   2757 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:530: for( int i = 0; i < NUM_LEDS; i++ ) {
      000884 0E               [12] 2758 	inc	r6
      000885 BE 00 E5         [24] 2759 	cjne	r6,#0x00,00129$
      000888 0F               [12] 2760 	inc	r7
      000889 80 E2            [24] 2761 	sjmp	00129$
      00088B                       2762 00117$:
                           0007AE  2763 	Smain$changeMode$219 ==.
                           0007AE  2764 	Smain$changeMode$220 ==.
                                   2765 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:534: if( light_mode != LIGHT_OFF && new_mode != LIGHT_OFF ) {
      00088B 90 00 5A         [24] 2766 	mov	dptr,#_light_mode
      00088E E0               [24] 2767 	movx	a,@dptr
      00088F 60 70            [24] 2768 	jz	00123$
      000891 90 00 1D         [24] 2769 	mov	dptr,#_changeMode_new_mode_65536_185
      000894 E0               [24] 2770 	movx	a,@dptr
      000895 FF               [12] 2771 	mov	r7,a
      000896 E0               [24] 2772 	movx	a,@dptr
      000897 60 68            [24] 2773 	jz	00123$
                           0007BC  2774 	Smain$changeMode$221 ==.
                           0007BC  2775 	Smain$changeMode$222 ==.
                                   2776 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:535: for( int i = 0; i < NUM_LEDS; i++ ) {
                           0007BC  2777 	Smain$changeMode$223 ==.
                           0007BC  2778 	Smain$changeMode$223 ==.
      000899 EF               [12] 2779 	mov	a,r7
      00089A 75 F0 02         [24] 2780 	mov	b,#0x02
      00089D A4               [48] 2781 	mul	ab
      00089E FE               [12] 2782 	mov	r6,a
      00089F AF F0            [24] 2783 	mov	r7,b
                           0007C4  2784 	Smain$changeMode$224 ==.
      0008A1 7C 00            [12] 2785 	mov	r4,#0x00
      0008A3 7D 00            [12] 2786 	mov	r5,#0x00
                           0007C8  2787 	Smain$changeMode$225 ==.
      0008A5                       2788 00132$:
      0008A5 C3               [12] 2789 	clr	c
      0008A6 EC               [12] 2790 	mov	a,r4
      0008A7 94 02            [12] 2791 	subb	a,#0x02
      0008A9 ED               [12] 2792 	mov	a,r5
      0008AA 64 80            [12] 2793 	xrl	a,#0x80
      0008AC 94 80            [12] 2794 	subb	a,#0x80
      0008AE 50 51            [24] 2795 	jnc	00123$
                           0007D3  2796 	Smain$changeMode$226 ==.
                                   2797 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:536: if( max_amp[light_mode][i] == 0 && max_amp[new_mode][i] > 0 ) {
      0008B0 90 00 5A         [24] 2798 	mov	dptr,#_light_mode
      0008B3 E0               [24] 2799 	movx	a,@dptr
      0008B4 75 F0 02         [24] 2800 	mov	b,#0x02
      0008B7 A4               [48] 2801 	mul	ab
      0008B8 24 9D            [12] 2802 	add	a,#_max_amp
      0008BA FA               [12] 2803 	mov	r2,a
      0008BB 74 19            [12] 2804 	mov	a,#(_max_amp >> 8)
      0008BD 35 F0            [12] 2805 	addc	a,b
      0008BF FB               [12] 2806 	mov	r3,a
      0008C0 EC               [12] 2807 	mov	a,r4
      0008C1 2A               [12] 2808 	add	a,r2
      0008C2 FA               [12] 2809 	mov	r2,a
      0008C3 ED               [12] 2810 	mov	a,r5
      0008C4 3B               [12] 2811 	addc	a,r3
      0008C5 FB               [12] 2812 	mov	r3,a
      0008C6 8A 82            [24] 2813 	mov	dpl,r2
      0008C8 8B 83            [24] 2814 	mov	dph,r3
      0008CA E4               [12] 2815 	clr	a
      0008CB 93               [24] 2816 	movc	a,@a+dptr
      0008CC 70 2C            [24] 2817 	jnz	00133$
      0008CE EE               [12] 2818 	mov	a,r6
      0008CF 24 9D            [12] 2819 	add	a,#_max_amp
      0008D1 FA               [12] 2820 	mov	r2,a
      0008D2 EF               [12] 2821 	mov	a,r7
      0008D3 34 19            [12] 2822 	addc	a,#(_max_amp >> 8)
      0008D5 FB               [12] 2823 	mov	r3,a
      0008D6 EC               [12] 2824 	mov	a,r4
      0008D7 2A               [12] 2825 	add	a,r2
      0008D8 FA               [12] 2826 	mov	r2,a
      0008D9 ED               [12] 2827 	mov	a,r5
      0008DA 3B               [12] 2828 	addc	a,r3
      0008DB FB               [12] 2829 	mov	r3,a
      0008DC 8A 82            [24] 2830 	mov	dpl,r2
      0008DE 8B 83            [24] 2831 	mov	dph,r3
      0008E0 E4               [12] 2832 	clr	a
      0008E1 93               [24] 2833 	movc	a,@a+dptr
      0008E2 60 16            [24] 2834 	jz	00133$
                           000807  2835 	Smain$changeMode$227 ==.
                                   2836 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:537: pwm[i] = MIN_PWM_ON;
      0008E4 EC               [12] 2837 	mov	a,r4
      0008E5 2C               [12] 2838 	add	a,r4
      0008E6 FA               [12] 2839 	mov	r2,a
      0008E7 ED               [12] 2840 	mov	a,r5
      0008E8 33               [12] 2841 	rlc	a
      0008E9 FB               [12] 2842 	mov	r3,a
      0008EA EA               [12] 2843 	mov	a,r2
      0008EB 24 5F            [12] 2844 	add	a,#_pwm
      0008ED F5 82            [12] 2845 	mov	dpl,a
      0008EF EB               [12] 2846 	mov	a,r3
      0008F0 34 00            [12] 2847 	addc	a,#(_pwm >> 8)
      0008F2 F5 83            [12] 2848 	mov	dph,a
      0008F4 74 3C            [12] 2849 	mov	a,#0x3c
      0008F6 F0               [24] 2850 	movx	@dptr,a
      0008F7 E4               [12] 2851 	clr	a
      0008F8 A3               [24] 2852 	inc	dptr
      0008F9 F0               [24] 2853 	movx	@dptr,a
      0008FA                       2854 00133$:
                           00081D  2855 	Smain$changeMode$228 ==.
                           00081D  2856 	Smain$changeMode$229 ==.
                                   2857 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:535: for( int i = 0; i < NUM_LEDS; i++ ) {
      0008FA 0C               [12] 2858 	inc	r4
                           00081E  2859 	Smain$changeMode$230 ==.
      0008FB BC 00 A7         [24] 2860 	cjne	r4,#0x00,00132$
      0008FE 0D               [12] 2861 	inc	r5
      0008FF 80 A4            [24] 2862 	sjmp	00132$
      000901                       2863 00123$:
                           000824  2864 	Smain$changeMode$231 ==.
                                   2865 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:541: light_mode = new_mode;
      000901 90 00 1D         [24] 2866 	mov	dptr,#_changeMode_new_mode_65536_185
      000904 E0               [24] 2867 	movx	a,@dptr
      000905 90 00 5A         [24] 2868 	mov	dptr,#_light_mode
      000908 F0               [24] 2869 	movx	@dptr,a
      000909                       2870 00134$:
                           00082C  2871 	Smain$changeMode$232 ==.
                                   2872 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:545: }
                           00082C  2873 	Smain$changeMode$233 ==.
                           00082C  2874 	XG$changeMode$0$0 ==.
      000909 22               [24] 2875 	ret
                           00082D  2876 	Smain$changeMode$234 ==.
                                   2877 ;------------------------------------------------------------
                                   2878 ;Allocation info for local variables in function 'toNextMode'
                                   2879 ;------------------------------------------------------------
                           00082D  2880 	Smain$toNextMode$235 ==.
                                   2881 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:550: void toNextMode(void)
                                   2882 ;	-----------------------------------------
                                   2883 ;	 function toNextMode
                                   2884 ;	-----------------------------------------
      00090A                       2885 _toNextMode:
                           00082D  2886 	Smain$toNextMode$236 ==.
                           00082D  2887 	Smain$toNextMode$237 ==.
                                   2888 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:552: changeMode(next_mode[light_mode]);
      00090A 90 00 5A         [24] 2889 	mov	dptr,#_light_mode
      00090D E0               [24] 2890 	movx	a,@dptr
      00090E 90 19 C7         [24] 2891 	mov	dptr,#_next_mode
      000911 93               [24] 2892 	movc	a,@a+dptr
      000912 F5 82            [12] 2893 	mov	dpl,a
      000914 12 07 6D         [24] 2894 	lcall	_changeMode
                           00083A  2895 	Smain$toNextMode$238 ==.
                                   2896 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:553: }
                           00083A  2897 	Smain$toNextMode$239 ==.
                           00083A  2898 	XG$toNextMode$0$0 ==.
      000917 22               [24] 2899 	ret
                           00083B  2900 	Smain$toNextMode$240 ==.
                                   2901 ;------------------------------------------------------------
                                   2902 ;Allocation info for local variables in function 'process_uart'
                                   2903 ;------------------------------------------------------------
                                   2904 ;ch                        Allocated with name '_process_uart_ch_131072_203'
                                   2905 ;------------------------------------------------------------
                           00083B  2906 	Smain$process_uart$241 ==.
                                   2907 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:556: bool process_uart(void)
                                   2908 ;	-----------------------------------------
                                   2909 ;	 function process_uart
                                   2910 ;	-----------------------------------------
      000918                       2911 _process_uart:
                           00083B  2912 	Smain$process_uart$242 ==.
                           00083B  2913 	Smain$process_uart$243 ==.
                                   2914 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:558: if( uart_flag > 0) {
      000918 90 00 7C         [24] 2915 	mov	dptr,#_uart_flag
      00091B E0               [24] 2916 	movx	a,@dptr
      00091C FF               [12] 2917 	mov	r7,a
      00091D C3               [12] 2918 	clr	c
      00091E 74 80            [12] 2919 	mov	a,#(0x00 ^ 0x80)
      000920 8F F0            [24] 2920 	mov	b,r7
      000922 63 F0 80         [24] 2921 	xrl	b,#0x80
      000925 95 F0            [12] 2922 	subb	a,b
      000927 50 06            [24] 2923 	jnc	00146$
                           00084C  2924 	Smain$process_uart$244 ==.
                           00084C  2925 	Smain$process_uart$245 ==.
                                   2926 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:559: uart_flag = -1;
      000929 90 00 7C         [24] 2927 	mov	dptr,#_uart_flag
      00092C 74 FF            [12] 2928 	mov	a,#0xff
      00092E F0               [24] 2929 	movx	@dptr,a
                           000852  2930 	Smain$process_uart$246 ==.
                           000852  2931 	Smain$process_uart$247 ==.
                                   2932 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:562: while( uart1_next_idx != uart1_read_idx ) {
      00092F                       2933 00146$:
                           000852  2934 	Smain$process_uart$248 ==.
                           000852  2935 	Smain$process_uart$249 ==.
                           000852  2936 	Smain$process_uart$250 ==.
      00092F                       2937 00126$:
      00092F 90 00 7A         [24] 2938 	mov	dptr,#_uart1_next_idx
      000932 E0               [24] 2939 	movx	a,@dptr
      000933 FF               [12] 2940 	mov	r7,a
      000934 90 00 7B         [24] 2941 	mov	dptr,#_uart1_read_idx
      000937 E0               [24] 2942 	movx	a,@dptr
      000938 FE               [12] 2943 	mov	r6,a
      000939 EF               [12] 2944 	mov	a,r7
      00093A B5 06 03         [24] 2945 	cjne	a,ar6,00216$
      00093D 02 0A 62         [24] 2946 	ljmp	00128$
      000940                       2947 00216$:
                           000863  2948 	Smain$process_uart$251 ==.
                                   2949 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:563: uint8_t ch = uart1_rx_buffer[uart1_read_idx];
      000940 EE               [12] 2950 	mov	a,r6
      000941 24 09            [12] 2951 	add	a,#_uart1_rx_buffer
      000943 F5 82            [12] 2952 	mov	dpl,a
      000945 E4               [12] 2953 	clr	a
      000946 34 00            [12] 2954 	addc	a,#(_uart1_rx_buffer >> 8)
      000948 F5 83            [12] 2955 	mov	dph,a
      00094A E0               [24] 2956 	movx	a,@dptr
      00094B 90 00 1E         [24] 2957 	mov	dptr,#_process_uart_ch_131072_203
      00094E F0               [24] 2958 	movx	@dptr,a
                           000872  2959 	Smain$process_uart$252 ==.
                                   2960 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:564: uart1_read_idx = (uart1_read_idx + 1) % UART_BUFFER_LENGTH;
      00094F 7F 00            [12] 2961 	mov	r7,#0x00
      000951 0E               [12] 2962 	inc	r6
      000952 BE 00 01         [24] 2963 	cjne	r6,#0x00,00217$
      000955 0F               [12] 2964 	inc	r7
      000956                       2965 00217$:
      000956 90 00 51         [24] 2966 	mov	dptr,#__modsint_PARM_2
      000959 74 10            [12] 2967 	mov	a,#0x10
      00095B F0               [24] 2968 	movx	@dptr,a
      00095C E4               [12] 2969 	clr	a
      00095D A3               [24] 2970 	inc	dptr
      00095E F0               [24] 2971 	movx	@dptr,a
      00095F 8E 82            [24] 2972 	mov	dpl,r6
      000961 8F 83            [24] 2973 	mov	dph,r7
      000963 12 18 85         [24] 2974 	lcall	__modsint
      000966 AE 82            [24] 2975 	mov	r6,dpl
      000968 90 00 7B         [24] 2976 	mov	dptr,#_uart1_read_idx
      00096B EE               [12] 2977 	mov	a,r6
      00096C F0               [24] 2978 	movx	@dptr,a
                           000890  2979 	Smain$process_uart$253 ==.
                                   2980 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:565: uart_counter = 0;
      00096D 90 00 85         [24] 2981 	mov	dptr,#_uart_counter
      000970 E4               [12] 2982 	clr	a
      000971 F0               [24] 2983 	movx	@dptr,a
      000972 A3               [24] 2984 	inc	dptr
      000973 F0               [24] 2985 	movx	@dptr,a
      000974 A3               [24] 2986 	inc	dptr
      000975 F0               [24] 2987 	movx	@dptr,a
      000976 A3               [24] 2988 	inc	dptr
      000977 F0               [24] 2989 	movx	@dptr,a
                           00089B  2990 	Smain$process_uart$254 ==.
                                   2991 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:568: switch( ch ) {
      000978 90 00 1E         [24] 2992 	mov	dptr,#_process_uart_ch_131072_203
      00097B E0               [24] 2993 	movx	a,@dptr
      00097C FF               [12] 2994 	mov	r7,a
      00097D BF 0A 02         [24] 2995 	cjne	r7,#0x0a,00218$
      000980 80 45            [24] 2996 	sjmp	00103$
      000982                       2997 00218$:
      000982 BF 30 02         [24] 2998 	cjne	r7,#0x30,00219$
      000985 80 6E            [24] 2999 	sjmp	00108$
      000987                       3000 00219$:
      000987 BF 31 03         [24] 3001 	cjne	r7,#0x31,00220$
      00098A 02 0A 25         [24] 3002 	ljmp	00119$
      00098D                       3003 00220$:
      00098D BF 32 03         [24] 3004 	cjne	r7,#0x32,00221$
      000990 02 0A 25         [24] 3005 	ljmp	00119$
      000993                       3006 00221$:
      000993 BF 33 03         [24] 3007 	cjne	r7,#0x33,00222$
      000996 02 0A 25         [24] 3008 	ljmp	00119$
      000999                       3009 00222$:
      000999 BF 34 03         [24] 3010 	cjne	r7,#0x34,00223$
      00099C 02 0A 25         [24] 3011 	ljmp	00119$
      00099F                       3012 00223$:
      00099F BF 35 03         [24] 3013 	cjne	r7,#0x35,00224$
      0009A2 02 0A 25         [24] 3014 	ljmp	00119$
      0009A5                       3015 00224$:
      0009A5 BF 36 03         [24] 3016 	cjne	r7,#0x36,00225$
      0009A8 02 0A 25         [24] 3017 	ljmp	00119$
      0009AB                       3018 00225$:
      0009AB BF 39 02         [24] 3019 	cjne	r7,#0x39,00226$
      0009AE 80 5F            [24] 3020 	sjmp	00111$
      0009B0                       3021 00226$:
      0009B0 BF 61 02         [24] 3022 	cjne	r7,#0x61,00227$
      0009B3 80 1A            [24] 3023 	sjmp	00104$
      0009B5                       3024 00227$:
      0009B5 BF 69 02         [24] 3025 	cjne	r7,#0x69,00228$
      0009B8 80 1E            [24] 3026 	sjmp	00105$
      0009BA                       3027 00228$:
      0009BA BF 73 02         [24] 3028 	cjne	r7,#0x73,00229$
      0009BD 80 22            [24] 3029 	sjmp	00106$
      0009BF                       3030 00229$:
      0009BF BF 75 02         [24] 3031 	cjne	r7,#0x75,00230$
      0009C2 80 26            [24] 3032 	sjmp	00107$
      0009C4                       3033 00230$:
      0009C4 02 09 2F         [24] 3034 	ljmp	00126$
                           0008EA  3035 	Smain$process_uart$255 ==.
                                   3036 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:569: case '\n':
      0009C7                       3037 00103$:
                           0008EA  3038 	Smain$process_uart$256 ==.
                                   3039 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:570: uart_rx_state = UART_INIT;
      0009C7 90 00 89         [24] 3040 	mov	dptr,#_uart_rx_state
      0009CA E4               [12] 3041 	clr	a
      0009CB F0               [24] 3042 	movx	@dptr,a
                           0008EF  3043 	Smain$process_uart$257 ==.
                                   3044 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:572: break;
      0009CC 02 09 2F         [24] 3045 	ljmp	00126$
                           0008F2  3046 	Smain$process_uart$258 ==.
                                   3047 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:573: case 'a':
      0009CF                       3048 00104$:
                           0008F2  3049 	Smain$process_uart$259 ==.
                                   3050 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:574: uart_rx_state = UART_POWER;
      0009CF 90 00 89         [24] 3051 	mov	dptr,#_uart_rx_state
      0009D2 74 01            [12] 3052 	mov	a,#0x01
      0009D4 F0               [24] 3053 	movx	@dptr,a
                           0008F8  3054 	Smain$process_uart$260 ==.
                                   3055 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:575: break;
      0009D5 02 09 2F         [24] 3056 	ljmp	00126$
                           0008FB  3057 	Smain$process_uart$261 ==.
                                   3058 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:576: case 'i':
      0009D8                       3059 00105$:
                           0008FB  3060 	Smain$process_uart$262 ==.
                                   3061 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:577: uart_rx_state = UART_INTL;
      0009D8 90 00 89         [24] 3062 	mov	dptr,#_uart_rx_state
      0009DB 74 03            [12] 3063 	mov	a,#0x03
      0009DD F0               [24] 3064 	movx	@dptr,a
                           000901  3065 	Smain$process_uart$263 ==.
                                   3066 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:578: break;
      0009DE 02 09 2F         [24] 3067 	ljmp	00126$
                           000904  3068 	Smain$process_uart$264 ==.
                                   3069 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:579: case 's':
      0009E1                       3070 00106$:
                           000904  3071 	Smain$process_uart$265 ==.
                                   3072 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:580: uart_rx_state = UART_GERMAN;
      0009E1 90 00 89         [24] 3073 	mov	dptr,#_uart_rx_state
      0009E4 74 02            [12] 3074 	mov	a,#0x02
      0009E6 F0               [24] 3075 	movx	@dptr,a
                           00090A  3076 	Smain$process_uart$266 ==.
                                   3077 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:581: break;
      0009E7 02 09 2F         [24] 3078 	ljmp	00126$
                           00090D  3079 	Smain$process_uart$267 ==.
                                   3080 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:582: case 'u':
      0009EA                       3081 00107$:
                           00090D  3082 	Smain$process_uart$268 ==.
                                   3083 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:583: is_uart_mode = true;
      0009EA 90 00 5B         [24] 3084 	mov	dptr,#_is_uart_mode
      0009ED 74 01            [12] 3085 	mov	a,#0x01
      0009EF F0               [24] 3086 	movx	@dptr,a
                           000913  3087 	Smain$process_uart$269 ==.
                                   3088 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:584: return true;
      0009F0 75 82 01         [24] 3089 	mov	dpl,#0x01
                           000916  3090 	Smain$process_uart$270 ==.
                                   3091 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:585: case '0':
      0009F3 80 70            [24] 3092 	sjmp	00129$
      0009F5                       3093 00108$:
                           000918  3094 	Smain$process_uart$271 ==.
                                   3095 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:586: if( uart_rx_state == UART_POWER )
      0009F5 90 00 89         [24] 3096 	mov	dptr,#_uart_rx_state
      0009F8 E0               [24] 3097 	movx	a,@dptr
      0009F9 FF               [12] 3098 	mov	r7,a
      0009FA BF 01 02         [24] 3099 	cjne	r7,#0x01,00231$
      0009FD 80 03            [24] 3100 	sjmp	00232$
      0009FF                       3101 00231$:
      0009FF 02 09 2F         [24] 3102 	ljmp	00126$
      000A02                       3103 00232$:
                           000925  3104 	Smain$process_uart$272 ==.
                                   3105 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:587: changeMode(next_mode[LIGHT_OFF]);
      000A02 90 19 C7         [24] 3106 	mov	dptr,#_next_mode
      000A05 E4               [12] 3107 	clr	a
      000A06 93               [24] 3108 	movc	a,@a+dptr
      000A07 F5 82            [12] 3109 	mov	dpl,a
      000A09 12 07 6D         [24] 3110 	lcall	_changeMode
                           00092F  3111 	Smain$process_uart$273 ==.
                                   3112 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:588: break;
      000A0C 02 09 2F         [24] 3113 	ljmp	00126$
                           000932  3114 	Smain$process_uart$274 ==.
                                   3115 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:589: case '9':
      000A0F                       3116 00111$:
                           000932  3117 	Smain$process_uart$275 ==.
                                   3118 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:590: if( uart_rx_state == UART_POWER )
      000A0F 90 00 89         [24] 3119 	mov	dptr,#_uart_rx_state
      000A12 E0               [24] 3120 	movx	a,@dptr
      000A13 FF               [12] 3121 	mov	r7,a
      000A14 BF 01 02         [24] 3122 	cjne	r7,#0x01,00233$
      000A17 80 03            [24] 3123 	sjmp	00234$
      000A19                       3124 00233$:
      000A19 02 09 2F         [24] 3125 	ljmp	00126$
      000A1C                       3126 00234$:
                           00093F  3127 	Smain$process_uart$276 ==.
                                   3128 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:591: changeMode(LIGHT_OFF);
      000A1C 75 82 00         [24] 3129 	mov	dpl,#0x00
      000A1F 12 07 6D         [24] 3130 	lcall	_changeMode
                           000945  3131 	Smain$process_uart$277 ==.
                                   3132 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:592: break;
      000A22 02 09 2F         [24] 3133 	ljmp	00126$
                           000948  3134 	Smain$process_uart$278 ==.
                                   3135 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:598: case '6':
      000A25                       3136 00119$:
                           000948  3137 	Smain$process_uart$279 ==.
                                   3138 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:599: lamp_state = UART_INIT;
      000A25 90 00 8A         [24] 3139 	mov	dptr,#_lamp_state
      000A28 E4               [12] 3140 	clr	a
      000A29 F0               [24] 3141 	movx	@dptr,a
                           00094D  3142 	Smain$process_uart$280 ==.
                                   3143 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:600: switch( uart_rx_state ) {
      000A2A 90 00 89         [24] 3144 	mov	dptr,#_uart_rx_state
      000A2D E0               [24] 3145 	movx	a,@dptr
      000A2E FF               [12] 3146 	mov	r7,a
      000A2F BF 02 02         [24] 3147 	cjne	r7,#0x02,00235$
      000A32 80 16            [24] 3148 	sjmp	00121$
      000A34                       3149 00235$:
      000A34 BF 03 02         [24] 3150 	cjne	r7,#0x03,00236$
      000A37 80 03            [24] 3151 	sjmp	00237$
      000A39                       3152 00236$:
      000A39 02 09 2F         [24] 3153 	ljmp	00126$
      000A3C                       3154 00237$:
                           00095F  3155 	Smain$process_uart$281 ==.
                           00095F  3156 	Smain$process_uart$282 ==.
                                   3157 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:602: changeMode(ch - '0');
      000A3C 90 00 1E         [24] 3158 	mov	dptr,#_process_uart_ch_131072_203
      000A3F E0               [24] 3159 	movx	a,@dptr
      000A40 24 D0            [12] 3160 	add	a,#0xd0
      000A42 F5 82            [12] 3161 	mov	dpl,a
      000A44 12 07 6D         [24] 3162 	lcall	_changeMode
                           00096A  3163 	Smain$process_uart$283 ==.
                                   3164 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:603: break;
      000A47 02 09 2F         [24] 3165 	ljmp	00126$
                           00096D  3166 	Smain$process_uart$284 ==.
                                   3167 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:604: case UART_GERMAN:
      000A4A                       3168 00121$:
                           00096D  3169 	Smain$process_uart$285 ==.
                                   3170 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:605: if(ch < '4') {
      000A4A 90 00 1E         [24] 3171 	mov	dptr,#_process_uart_ch_131072_203
      000A4D E0               [24] 3172 	movx	a,@dptr
      000A4E FF               [12] 3173 	mov	r7,a
      000A4F BF 34 00         [24] 3174 	cjne	r7,#0x34,00238$
      000A52                       3175 00238$:
      000A52 40 03            [24] 3176 	jc	00239$
      000A54 02 09 2F         [24] 3177 	ljmp	00126$
      000A57                       3178 00239$:
                           00097A  3179 	Smain$process_uart$286 ==.
                           00097A  3180 	Smain$process_uart$287 ==.
                                   3181 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:606: changeMode(ch - '0' + 6);
      000A57 74 D6            [12] 3182 	mov	a,#0xd6
      000A59 2F               [12] 3183 	add	a,r7
      000A5A F5 82            [12] 3184 	mov	dpl,a
      000A5C 12 07 6D         [24] 3185 	lcall	_changeMode
                           000982  3186 	Smain$process_uart$288 ==.
                           000982  3187 	Smain$process_uart$289 ==.
                                   3188 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:610: }
      000A5F 02 09 2F         [24] 3189 	ljmp	00126$
      000A62                       3190 00128$:
                           000985  3191 	Smain$process_uart$290 ==.
                                   3192 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:613: return false;
      000A62 75 82 00         [24] 3193 	mov	dpl,#0x00
      000A65                       3194 00129$:
                           000988  3195 	Smain$process_uart$291 ==.
                                   3196 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:614: }
                           000988  3197 	Smain$process_uart$292 ==.
                           000988  3198 	XG$process_uart$0$0 ==.
      000A65 22               [24] 3199 	ret
                           000989  3200 	Smain$process_uart$293 ==.
                                   3201 ;------------------------------------------------------------
                                   3202 ;Allocation info for local variables in function 'process_button'
                                   3203 ;------------------------------------------------------------
                           000989  3204 	Smain$process_button$294 ==.
                                   3205 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:616: void process_button(void)
                                   3206 ;	-----------------------------------------
                                   3207 ;	 function process_button
                                   3208 ;	-----------------------------------------
      000A66                       3209 _process_button:
                           000989  3210 	Smain$process_button$295 ==.
                           000989  3211 	Smain$process_button$296 ==.
                                   3212 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:618: if( BUTTON_PIN == 0 ) {
      000A66 20 82 5C         [24] 3213 	jb	_P02,00116$
                           00098C  3214 	Smain$process_button$297 ==.
                           00098C  3215 	Smain$process_button$298 ==.
                                   3216 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:620: button_pressed ++;
      000A69 90 00 7D         [24] 3217 	mov	dptr,#_button_pressed
      000A6C E0               [24] 3218 	movx	a,@dptr
      000A6D 24 01            [12] 3219 	add	a,#0x01
      000A6F F0               [24] 3220 	movx	@dptr,a
      000A70 A3               [24] 3221 	inc	dptr
      000A71 E0               [24] 3222 	movx	a,@dptr
      000A72 34 00            [12] 3223 	addc	a,#0x00
      000A74 F0               [24] 3224 	movx	@dptr,a
      000A75 A3               [24] 3225 	inc	dptr
      000A76 E0               [24] 3226 	movx	a,@dptr
      000A77 34 00            [12] 3227 	addc	a,#0x00
      000A79 F0               [24] 3228 	movx	@dptr,a
      000A7A A3               [24] 3229 	inc	dptr
      000A7B E0               [24] 3230 	movx	a,@dptr
      000A7C 34 00            [12] 3231 	addc	a,#0x00
      000A7E F0               [24] 3232 	movx	@dptr,a
                           0009A2  3233 	Smain$process_button$299 ==.
                                   3234 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:621: button_unpressed = 0;
      000A7F 90 00 81         [24] 3235 	mov	dptr,#_button_unpressed
      000A82 E4               [12] 3236 	clr	a
      000A83 F0               [24] 3237 	movx	@dptr,a
      000A84 A3               [24] 3238 	inc	dptr
      000A85 F0               [24] 3239 	movx	@dptr,a
      000A86 A3               [24] 3240 	inc	dptr
      000A87 F0               [24] 3241 	movx	@dptr,a
      000A88 A3               [24] 3242 	inc	dptr
      000A89 F0               [24] 3243 	movx	@dptr,a
                           0009AD  3244 	Smain$process_button$300 ==.
                                   3245 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:623: if( button_pressed == LONG_PRESS ) { // 길게 눌려졌다면
      000A8A 90 00 7D         [24] 3246 	mov	dptr,#_button_pressed
      000A8D E0               [24] 3247 	movx	a,@dptr
      000A8E FC               [12] 3248 	mov	r4,a
      000A8F A3               [24] 3249 	inc	dptr
      000A90 E0               [24] 3250 	movx	a,@dptr
      000A91 FD               [12] 3251 	mov	r5,a
      000A92 A3               [24] 3252 	inc	dptr
      000A93 E0               [24] 3253 	movx	a,@dptr
      000A94 FE               [12] 3254 	mov	r6,a
      000A95 A3               [24] 3255 	inc	dptr
      000A96 E0               [24] 3256 	movx	a,@dptr
      000A97 FF               [12] 3257 	mov	r7,a
      000A98 BC 90 0B         [24] 3258 	cjne	r4,#0x90,00149$
      000A9B BD 01 08         [24] 3259 	cjne	r5,#0x01,00149$
      000A9E BE 00 05         [24] 3260 	cjne	r6,#0x00,00149$
      000AA1 BF 00 02         [24] 3261 	cjne	r7,#0x00,00149$
      000AA4 80 03            [24] 3262 	sjmp	00150$
      000AA6                       3263 00149$:
      000AA6 02 0B 44         [24] 3264 	ljmp	00118$
      000AA9                       3265 00150$:
                           0009CC  3266 	Smain$process_button$301 ==.
                           0009CC  3267 	Smain$process_button$302 ==.
                                   3268 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:625: if( light_mode != LIGHT_OFF ) { // 전원 버튼의 역할을 한다.
      000AA9 90 00 5A         [24] 3269 	mov	dptr,#_light_mode
      000AAC E0               [24] 3270 	movx	a,@dptr
      000AAD 60 09            [24] 3271 	jz	00102$
                           0009D2  3272 	Smain$process_button$303 ==.
                           0009D2  3273 	Smain$process_button$304 ==.
                                   3274 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:626: changeMode(LIGHT_OFF);
      000AAF 75 82 00         [24] 3275 	mov	dpl,#0x00
      000AB2 12 07 6D         [24] 3276 	lcall	_changeMode
                           0009D8  3277 	Smain$process_button$305 ==.
      000AB5 02 0B 44         [24] 3278 	ljmp	00118$
      000AB8                       3279 00102$:
                           0009DB  3280 	Smain$process_button$306 ==.
                           0009DB  3281 	Smain$process_button$307 ==.
                                   3282 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:628: changeMode(next_mode[LIGHT_OFF]);
      000AB8 90 19 C7         [24] 3283 	mov	dptr,#_next_mode
      000ABB E4               [12] 3284 	clr	a
      000ABC 93               [24] 3285 	movc	a,@a+dptr
      000ABD F5 82            [12] 3286 	mov	dpl,a
      000ABF 12 07 6D         [24] 3287 	lcall	_changeMode
                           0009E5  3288 	Smain$process_button$308 ==.
      000AC2 02 0B 44         [24] 3289 	ljmp	00118$
      000AC5                       3290 00116$:
                           0009E8  3291 	Smain$process_button$309 ==.
                                   3292 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:631: } else if( button_pressed ) {
      000AC5 90 00 7D         [24] 3293 	mov	dptr,#_button_pressed
      000AC8 E0               [24] 3294 	movx	a,@dptr
      000AC9 FC               [12] 3295 	mov	r4,a
      000ACA A3               [24] 3296 	inc	dptr
      000ACB E0               [24] 3297 	movx	a,@dptr
      000ACC FD               [12] 3298 	mov	r5,a
      000ACD A3               [24] 3299 	inc	dptr
      000ACE E0               [24] 3300 	movx	a,@dptr
      000ACF FE               [12] 3301 	mov	r6,a
      000AD0 A3               [24] 3302 	inc	dptr
      000AD1 E0               [24] 3303 	movx	a,@dptr
      000AD2 FF               [12] 3304 	mov	r7,a
      000AD3 90 00 7D         [24] 3305 	mov	dptr,#_button_pressed
      000AD6 E0               [24] 3306 	movx	a,@dptr
      000AD7 F5 F0            [12] 3307 	mov	b,a
      000AD9 A3               [24] 3308 	inc	dptr
      000ADA E0               [24] 3309 	movx	a,@dptr
      000ADB 42 F0            [12] 3310 	orl	b,a
      000ADD A3               [24] 3311 	inc	dptr
      000ADE E0               [24] 3312 	movx	a,@dptr
      000ADF 42 F0            [12] 3313 	orl	b,a
      000AE1 A3               [24] 3314 	inc	dptr
      000AE2 E0               [24] 3315 	movx	a,@dptr
      000AE3 45 F0            [12] 3316 	orl	a,b
      000AE5 60 5D            [24] 3317 	jz	00118$
                           000A0A  3318 	Smain$process_button$310 ==.
                           000A0A  3319 	Smain$process_button$311 ==.
                                   3320 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:633: button_unpressed ++;
      000AE7 90 00 81         [24] 3321 	mov	dptr,#_button_unpressed
      000AEA E0               [24] 3322 	movx	a,@dptr
      000AEB 24 01            [12] 3323 	add	a,#0x01
      000AED F0               [24] 3324 	movx	@dptr,a
      000AEE A3               [24] 3325 	inc	dptr
      000AEF E0               [24] 3326 	movx	a,@dptr
      000AF0 34 00            [12] 3327 	addc	a,#0x00
      000AF2 F0               [24] 3328 	movx	@dptr,a
      000AF3 A3               [24] 3329 	inc	dptr
      000AF4 E0               [24] 3330 	movx	a,@dptr
      000AF5 34 00            [12] 3331 	addc	a,#0x00
      000AF7 F0               [24] 3332 	movx	@dptr,a
      000AF8 A3               [24] 3333 	inc	dptr
      000AF9 E0               [24] 3334 	movx	a,@dptr
      000AFA 34 00            [12] 3335 	addc	a,#0x00
      000AFC F0               [24] 3336 	movx	@dptr,a
                           000A20  3337 	Smain$process_button$312 ==.
                                   3338 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:634: if( button_unpressed > 1 ) { // 두번이상 안눌려졌다고 판단했는데
      000AFD 90 00 81         [24] 3339 	mov	dptr,#_button_unpressed
      000B00 E0               [24] 3340 	movx	a,@dptr
      000B01 F8               [12] 3341 	mov	r0,a
      000B02 A3               [24] 3342 	inc	dptr
      000B03 E0               [24] 3343 	movx	a,@dptr
      000B04 F9               [12] 3344 	mov	r1,a
      000B05 A3               [24] 3345 	inc	dptr
      000B06 E0               [24] 3346 	movx	a,@dptr
      000B07 FA               [12] 3347 	mov	r2,a
      000B08 A3               [24] 3348 	inc	dptr
      000B09 E0               [24] 3349 	movx	a,@dptr
      000B0A FB               [12] 3350 	mov	r3,a
      000B0B C3               [12] 3351 	clr	c
      000B0C 74 01            [12] 3352 	mov	a,#0x01
      000B0E 98               [12] 3353 	subb	a,r0
      000B0F E4               [12] 3354 	clr	a
      000B10 99               [12] 3355 	subb	a,r1
      000B11 E4               [12] 3356 	clr	a
      000B12 9A               [12] 3357 	subb	a,r2
      000B13 E4               [12] 3358 	clr	a
      000B14 9B               [12] 3359 	subb	a,r3
      000B15 50 2D            [24] 3360 	jnc	00118$
                           000A3A  3361 	Smain$process_button$313 ==.
                           000A3A  3362 	Smain$process_button$314 ==.
                                   3363 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:635: if( button_pressed < LONG_PRESS ) { // 짧게 눌렀던 상태라면 다음상태로
      000B17 C3               [12] 3364 	clr	c
      000B18 EC               [12] 3365 	mov	a,r4
      000B19 94 90            [12] 3366 	subb	a,#0x90
      000B1B ED               [12] 3367 	mov	a,r5
      000B1C 94 01            [12] 3368 	subb	a,#0x01
      000B1E EE               [12] 3369 	mov	a,r6
      000B1F 94 00            [12] 3370 	subb	a,#0x00
      000B21 EF               [12] 3371 	mov	a,r7
      000B22 94 00            [12] 3372 	subb	a,#0x00
      000B24 50 09            [24] 3373 	jnc	00110$
                           000A49  3374 	Smain$process_button$315 ==.
                           000A49  3375 	Smain$process_button$316 ==.
                                   3376 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:636: if( light_mode > 0 ) {
      000B26 90 00 5A         [24] 3377 	mov	dptr,#_light_mode
      000B29 E0               [24] 3378 	movx	a,@dptr
      000B2A 60 03            [24] 3379 	jz	00110$
                           000A4F  3380 	Smain$process_button$317 ==.
                           000A4F  3381 	Smain$process_button$318 ==.
                                   3382 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:639: toNextMode();
      000B2C 12 09 0A         [24] 3383 	lcall	_toNextMode
                           000A52  3384 	Smain$process_button$319 ==.
                           000A52  3385 	Smain$process_button$320 ==.
                                   3386 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:643: LS_LOGN(button_pressed);
      000B2F                       3387 00110$:
                           000A52  3388 	Smain$process_button$321 ==.
                                   3389 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:645: button_pressed = button_unpressed = 0;
      000B2F 90 00 81         [24] 3390 	mov	dptr,#_button_unpressed
      000B32 E4               [12] 3391 	clr	a
      000B33 F0               [24] 3392 	movx	@dptr,a
      000B34 A3               [24] 3393 	inc	dptr
      000B35 F0               [24] 3394 	movx	@dptr,a
      000B36 A3               [24] 3395 	inc	dptr
      000B37 F0               [24] 3396 	movx	@dptr,a
      000B38 A3               [24] 3397 	inc	dptr
      000B39 F0               [24] 3398 	movx	@dptr,a
      000B3A 90 00 7D         [24] 3399 	mov	dptr,#_button_pressed
      000B3D F0               [24] 3400 	movx	@dptr,a
      000B3E A3               [24] 3401 	inc	dptr
      000B3F F0               [24] 3402 	movx	@dptr,a
      000B40 A3               [24] 3403 	inc	dptr
      000B41 F0               [24] 3404 	movx	@dptr,a
      000B42 A3               [24] 3405 	inc	dptr
      000B43 F0               [24] 3406 	movx	@dptr,a
                           000A67  3407 	Smain$process_button$322 ==.
      000B44                       3408 00118$:
                           000A67  3409 	Smain$process_button$323 ==.
                                   3410 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:648: }
                           000A67  3411 	Smain$process_button$324 ==.
                           000A67  3412 	XG$process_button$0$0 ==.
      000B44 22               [24] 3413 	ret
                           000A68  3414 	Smain$process_button$325 ==.
                                   3415 ;------------------------------------------------------------
                                   3416 ;Allocation info for local variables in function 'stop_leds'
                                   3417 ;------------------------------------------------------------
                           000A68  3418 	Smain$stop_leds$326 ==.
                                   3419 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:651: void stop_leds(void)
                                   3420 ;	-----------------------------------------
                                   3421 ;	 function stop_leds
                                   3422 ;	-----------------------------------------
      000B45                       3423 _stop_leds:
                           000A68  3424 	Smain$stop_leds$327 ==.
                           000A68  3425 	Smain$stop_leds$328 ==.
                                   3426 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:654: clr_PWMCON0_PWMRUN;
                                   3427 ;	assignBit
      000B45 C2 DF            [12] 3428 	clr	_PWMRUN
                           000A6A  3429 	Smain$stop_leds$329 ==.
                                   3430 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:655: set_SFRS_SFRPAGE;
                                   3431 ;	assignBit
      000B47 A2 AF            [12] 3432 	mov	c,_EA
      000B49 92 00            [24] 3433 	mov	_BIT_TMP,c
                                   3434 ;	assignBit
      000B4B C2 AF            [12] 3435 	clr	_EA
      000B4D 75 C7 AA         [24] 3436 	mov	_TA,#0xaa
      000B50 75 C7 55         [24] 3437 	mov	_TA,#0x55
      000B53 75 91 01         [24] 3438 	mov	_SFRS,#0x01
                                   3439 ;	assignBit
      000B56 A2 00            [12] 3440 	mov	c,_BIT_TMP
      000B58 92 AF            [24] 3441 	mov	_EA,c
                           000A7D  3442 	Smain$stop_leds$330 ==.
                                   3443 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:657: PWM2L = 0;
      000B5A 75 DC 00         [24] 3444 	mov	_PWM2L,#0x00
                           000A80  3445 	Smain$stop_leds$331 ==.
                                   3446 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:658: PWM2H = 0;
      000B5D 75 D4 00         [24] 3447 	mov	_PWM2H,#0x00
                           000A83  3448 	Smain$stop_leds$332 ==.
                                   3449 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:659: PWM4L = 0;
      000B60 75 CC 00         [24] 3450 	mov	_PWM4L,#0x00
                           000A86  3451 	Smain$stop_leds$333 ==.
                                   3452 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:660: PWM4H = 0;
      000B63 75 C4 00         [24] 3453 	mov	_PWM4H,#0x00
                           000A89  3454 	Smain$stop_leds$334 ==.
                                   3455 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:662: clr_SFRS_SFRPAGE;
                                   3456 ;	assignBit
      000B66 A2 AF            [12] 3457 	mov	c,_EA
      000B68 92 00            [24] 3458 	mov	_BIT_TMP,c
                                   3459 ;	assignBit
      000B6A C2 AF            [12] 3460 	clr	_EA
      000B6C 75 C7 AA         [24] 3461 	mov	_TA,#0xaa
      000B6F 75 C7 55         [24] 3462 	mov	_TA,#0x55
      000B72 75 91 00         [24] 3463 	mov	_SFRS,#0x00
                                   3464 ;	assignBit
      000B75 A2 00            [12] 3465 	mov	c,_BIT_TMP
      000B77 92 AF            [24] 3466 	mov	_EA,c
                           000A9C  3467 	Smain$stop_leds$335 ==.
                                   3468 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:663: set_PWMCON0_PWMRUN;
                                   3469 ;	assignBit
      000B79 D2 DF            [12] 3470 	setb	_PWMRUN
                           000A9E  3471 	Smain$stop_leds$336 ==.
                                   3472 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:664: }
                           000A9E  3473 	Smain$stop_leds$337 ==.
                           000A9E  3474 	XG$stop_leds$0$0 ==.
      000B7B 22               [24] 3475 	ret
                           000A9F  3476 	Smain$stop_leds$338 ==.
                                   3477 ;------------------------------------------------------------
                                   3478 ;Allocation info for local variables in function 'activate_leds'
                                   3479 ;------------------------------------------------------------
                           000A9F  3480 	Smain$activate_leds$339 ==.
                                   3481 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:666: void activate_leds(void)
                                   3482 ;	-----------------------------------------
                                   3483 ;	 function activate_leds
                                   3484 ;	-----------------------------------------
      000B7C                       3485 _activate_leds:
                           000A9F  3486 	Smain$activate_leds$340 ==.
                           000A9F  3487 	Smain$activate_leds$341 ==.
                                   3488 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:668: clr_PWMCON0_PWMRUN;
                                   3489 ;	assignBit
      000B7C C2 DF            [12] 3490 	clr	_PWMRUN
                           000AA1  3491 	Smain$activate_leds$342 ==.
                                   3492 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:669: set_SFRS_SFRPAGE;
                                   3493 ;	assignBit
      000B7E A2 AF            [12] 3494 	mov	c,_EA
      000B80 92 00            [24] 3495 	mov	_BIT_TMP,c
                                   3496 ;	assignBit
      000B82 C2 AF            [12] 3497 	clr	_EA
      000B84 75 C7 AA         [24] 3498 	mov	_TA,#0xaa
      000B87 75 C7 55         [24] 3499 	mov	_TA,#0x55
      000B8A 75 91 01         [24] 3500 	mov	_SFRS,#0x01
                                   3501 ;	assignBit
      000B8D A2 00            [12] 3502 	mov	c,_BIT_TMP
      000B8F 92 AF            [24] 3503 	mov	_EA,c
                           000AB4  3504 	Smain$activate_leds$343 ==.
                                   3505 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:671: PWM2L = pwm[0];
      000B91 90 00 5F         [24] 3506 	mov	dptr,#_pwm
      000B94 E0               [24] 3507 	movx	a,@dptr
      000B95 F5 DC            [12] 3508 	mov	_PWM2L,a
                           000ABA  3509 	Smain$activate_leds$344 ==.
                                   3510 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:672: PWM4L = pwm[1];
      000B97 90 00 61         [24] 3511 	mov	dptr,#(_pwm + 0x0002)
      000B9A E0               [24] 3512 	movx	a,@dptr
      000B9B F5 CC            [12] 3513 	mov	_PWM4L,a
                           000AC0  3514 	Smain$activate_leds$345 ==.
                                   3515 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:674: clr_SFRS_SFRPAGE;
                                   3516 ;	assignBit
      000B9D A2 AF            [12] 3517 	mov	c,_EA
      000B9F 92 00            [24] 3518 	mov	_BIT_TMP,c
                                   3519 ;	assignBit
      000BA1 C2 AF            [12] 3520 	clr	_EA
      000BA3 75 C7 AA         [24] 3521 	mov	_TA,#0xaa
      000BA6 75 C7 55         [24] 3522 	mov	_TA,#0x55
      000BA9 75 91 00         [24] 3523 	mov	_SFRS,#0x00
                                   3524 ;	assignBit
      000BAC A2 00            [12] 3525 	mov	c,_BIT_TMP
      000BAE 92 AF            [24] 3526 	mov	_EA,c
                           000AD3  3527 	Smain$activate_leds$346 ==.
                                   3528 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:675: set_PWMCON0_PWMRUN;
                                   3529 ;	assignBit
      000BB0 D2 DF            [12] 3530 	setb	_PWMRUN
                           000AD5  3531 	Smain$activate_leds$347 ==.
                                   3532 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:676: }
                           000AD5  3533 	Smain$activate_leds$348 ==.
                           000AD5  3534 	XG$activate_leds$0$0 ==.
      000BB2 22               [24] 3535 	ret
                           000AD6  3536 	Smain$activate_leds$349 ==.
                                   3537 ;------------------------------------------------------------
                                   3538 ;Allocation info for local variables in function 'mode_changing_control'
                                   3539 ;------------------------------------------------------------
                                   3540 ;light_changing            Allocated with name '_mode_changing_control_light_changing_65536_223'
                                   3541 ;i                         Allocated with name '_mode_changing_control_i_131072_224'
                                   3542 ;------------------------------------------------------------
                           000AD6  3543 	Smain$mode_changing_control$350 ==.
                                   3544 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:683: bool mode_changing_control( void )
                                   3545 ;	-----------------------------------------
                                   3546 ;	 function mode_changing_control
                                   3547 ;	-----------------------------------------
      000BB3                       3548 _mode_changing_control:
                           000AD6  3549 	Smain$mode_changing_control$351 ==.
                           000AD6  3550 	Smain$mode_changing_control$352 ==.
                                   3551 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:685: bool light_changing = false;
      000BB3 90 00 1F         [24] 3552 	mov	dptr,#_mode_changing_control_light_changing_65536_223
      000BB6 E4               [12] 3553 	clr	a
      000BB7 F0               [24] 3554 	movx	@dptr,a
                           000ADB  3555 	Smain$mode_changing_control$353 ==.
                           000ADB  3556 	Smain$mode_changing_control$354 ==.
                                   3557 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:687: for( int i = 0; i < NUM_LEDS; i++ ) {
                           000ADB  3558 	Smain$mode_changing_control$355 ==.
                           000ADB  3559 	Smain$mode_changing_control$356 ==.
                           000ADB  3560 	Smain$mode_changing_control$357 ==.
                           000ADB  3561 	Smain$mode_changing_control$358 ==.
                           000ADB  3562 	Smain$mode_changing_control$358 ==.
                           000ADB  3563 	Smain$mode_changing_control$359 ==.
                           000ADB  3564 	Smain$mode_changing_control$360 ==.
                           000ADB  3565 	Smain$mode_changing_control$360 ==.
                           000ADB  3566 	Smain$mode_changing_control$361 ==.
      000BB8 7E 00            [12] 3567 	mov	r6,#0x00
      000BBA 7F 00            [12] 3568 	mov	r7,#0x00
                           000ADF  3569 	Smain$mode_changing_control$362 ==.
      000BBC                       3570 00132$:
      000BBC C3               [12] 3571 	clr	c
      000BBD EE               [12] 3572 	mov	a,r6
      000BBE 94 02            [12] 3573 	subb	a,#0x02
      000BC0 EF               [12] 3574 	mov	a,r7
      000BC1 64 80            [12] 3575 	xrl	a,#0x80
      000BC3 94 80            [12] 3576 	subb	a,#0x80
      000BC5 40 03            [24] 3577 	jc	00193$
      000BC7 02 0D C9         [24] 3578 	ljmp	00130$
      000BCA                       3579 00193$:
                           000AED  3580 	Smain$mode_changing_control$363 ==.
                                   3581 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:688: switch( light_control_mode[i] ) {
      000BCA EE               [12] 3582 	mov	a,r6
      000BCB 24 63            [12] 3583 	add	a,#_light_control_mode
      000BCD FC               [12] 3584 	mov	r4,a
      000BCE EF               [12] 3585 	mov	a,r7
      000BCF 34 00            [12] 3586 	addc	a,#(_light_control_mode >> 8)
      000BD1 FD               [12] 3587 	mov	r5,a
      000BD2 8C 82            [24] 3588 	mov	dpl,r4
      000BD4 8D 83            [24] 3589 	mov	dph,r5
      000BD6 E0               [24] 3590 	movx	a,@dptr
      000BD7 FB               [12] 3591 	mov	r3,a
      000BD8 BB 01 02         [24] 3592 	cjne	r3,#0x01,00194$
      000BDB 80 0E            [24] 3593 	sjmp	00101$
      000BDD                       3594 00194$:
      000BDD BB 02 02         [24] 3595 	cjne	r3,#0x02,00195$
      000BE0 80 63            [24] 3596 	sjmp	00108$
      000BE2                       3597 00195$:
      000BE2 BB 03 03         [24] 3598 	cjne	r3,#0x03,00196$
      000BE5 02 0D 01         [24] 3599 	ljmp	00117$
      000BE8                       3600 00196$:
      000BE8 02 0D C1         [24] 3601 	ljmp	00133$
                           000B0E  3602 	Smain$mode_changing_control$364 ==.
                                   3603 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:689: case MODE_CHANGING_OFF:
      000BEB                       3604 00101$:
                           000B0E  3605 	Smain$mode_changing_control$365 ==.
                                   3606 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:690: if( pwm[i] > 0) {
      000BEB EE               [12] 3607 	mov	a,r6
      000BEC 2E               [12] 3608 	add	a,r6
      000BED FA               [12] 3609 	mov	r2,a
      000BEE EF               [12] 3610 	mov	a,r7
      000BEF 33               [12] 3611 	rlc	a
      000BF0 FB               [12] 3612 	mov	r3,a
      000BF1 EA               [12] 3613 	mov	a,r2
      000BF2 24 5F            [12] 3614 	add	a,#_pwm
      000BF4 FA               [12] 3615 	mov	r2,a
      000BF5 EB               [12] 3616 	mov	a,r3
      000BF6 34 00            [12] 3617 	addc	a,#(_pwm >> 8)
      000BF8 FB               [12] 3618 	mov	r3,a
      000BF9 8A 82            [24] 3619 	mov	dpl,r2
      000BFB 8B 83            [24] 3620 	mov	dph,r3
      000BFD E0               [24] 3621 	movx	a,@dptr
      000BFE F8               [12] 3622 	mov	r0,a
      000BFF A3               [24] 3623 	inc	dptr
      000C00 E0               [24] 3624 	movx	a,@dptr
      000C01 F9               [12] 3625 	mov	r1,a
      000C02 48               [12] 3626 	orl	a,r0
      000C03 60 22            [24] 3627 	jz	00106$
                           000B28  3628 	Smain$mode_changing_control$366 ==.
                           000B28  3629 	Smain$mode_changing_control$367 ==.
                                   3630 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:691: light_changing = true;
      000C05 C0 06            [24] 3631 	push	ar6
      000C07 C0 07            [24] 3632 	push	ar7
                           000B2C  3633 	Smain$mode_changing_control$368 ==.
      000C09 90 00 1F         [24] 3634 	mov	dptr,#_mode_changing_control_light_changing_65536_223
      000C0C 74 01            [12] 3635 	mov	a,#0x01
      000C0E F0               [24] 3636 	movx	@dptr,a
                           000B32  3637 	Smain$mode_changing_control$369 ==.
                                   3638 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:692: pwm[i] --;
      000C0F E8               [12] 3639 	mov	a,r0
      000C10 24 FF            [12] 3640 	add	a,#0xff
      000C12 FE               [12] 3641 	mov	r6,a
      000C13 E9               [12] 3642 	mov	a,r1
      000C14 34 FF            [12] 3643 	addc	a,#0xff
      000C16 FF               [12] 3644 	mov	r7,a
      000C17 8A 82            [24] 3645 	mov	dpl,r2
      000C19 8B 83            [24] 3646 	mov	dph,r3
      000C1B EE               [12] 3647 	mov	a,r6
      000C1C F0               [24] 3648 	movx	@dptr,a
      000C1D EF               [12] 3649 	mov	a,r7
      000C1E A3               [24] 3650 	inc	dptr
      000C1F F0               [24] 3651 	movx	@dptr,a
                           000B43  3652 	Smain$mode_changing_control$370 ==.
      000C20 D0 07            [24] 3653 	pop	ar7
      000C22 D0 06            [24] 3654 	pop	ar6
      000C24 02 0D C1         [24] 3655 	ljmp	00133$
      000C27                       3656 00106$:
                           000B4A  3657 	Smain$mode_changing_control$371 ==.
                                   3658 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:693: } else if( pwm[i] == 0 ){ // pwm은 unsigned이므로 0보다 작을수는 없음
      000C27 E8               [12] 3659 	mov	a,r0
      000C28 49               [12] 3660 	orl	a,r1
      000C29 70 09            [24] 3661 	jnz	00103$
                           000B4E  3662 	Smain$mode_changing_control$372 ==.
                           000B4E  3663 	Smain$mode_changing_control$373 ==.
                                   3664 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:694: light_control_mode[i] = MODE_STABLE;
      000C2B 8C 82            [24] 3665 	mov	dpl,r4
      000C2D 8D 83            [24] 3666 	mov	dph,r5
      000C2F E4               [12] 3667 	clr	a
      000C30 F0               [24] 3668 	movx	@dptr,a
                           000B54  3669 	Smain$mode_changing_control$374 ==.
      000C31 02 0D C1         [24] 3670 	ljmp	00133$
      000C34                       3671 00103$:
                           000B57  3672 	Smain$mode_changing_control$375 ==.
                           000B57  3673 	Smain$mode_changing_control$376 ==.
                                   3674 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:696: light_changing = true;
      000C34 90 00 1F         [24] 3675 	mov	dptr,#_mode_changing_control_light_changing_65536_223
      000C37 74 01            [12] 3676 	mov	a,#0x01
      000C39 F0               [24] 3677 	movx	@dptr,a
                           000B5D  3678 	Smain$mode_changing_control$377 ==.
                                   3679 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:697: pwm[i] = 0;
      000C3A 8A 82            [24] 3680 	mov	dpl,r2
      000C3C 8B 83            [24] 3681 	mov	dph,r3
      000C3E E4               [12] 3682 	clr	a
      000C3F F0               [24] 3683 	movx	@dptr,a
      000C40 A3               [24] 3684 	inc	dptr
      000C41 F0               [24] 3685 	movx	@dptr,a
                           000B65  3686 	Smain$mode_changing_control$378 ==.
                           000B65  3687 	Smain$mode_changing_control$379 ==.
                                   3688 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:699: break;
      000C42 02 0D C1         [24] 3689 	ljmp	00133$
                           000B68  3690 	Smain$mode_changing_control$380 ==.
                                   3691 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:700: case MODE_CHANGING_UP:
      000C45                       3692 00108$:
                           000B68  3693 	Smain$mode_changing_control$381 ==.
                           000B68  3694 	Smain$mode_changing_control$382 ==.
                                   3695 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:701: if( cur_amp[i] < max_amp[light_mode][i] ) {
      000C45 C0 04            [24] 3696 	push	ar4
      000C47 C0 05            [24] 3697 	push	ar5
      000C49 EE               [12] 3698 	mov	a,r6
      000C4A 2E               [12] 3699 	add	a,r6
      000C4B FA               [12] 3700 	mov	r2,a
      000C4C EF               [12] 3701 	mov	a,r7
      000C4D 33               [12] 3702 	rlc	a
      000C4E FB               [12] 3703 	mov	r3,a
      000C4F EA               [12] 3704 	mov	a,r2
      000C50 24 72            [12] 3705 	add	a,#_cur_amp
      000C52 F5 82            [12] 3706 	mov	dpl,a
      000C54 EB               [12] 3707 	mov	a,r3
      000C55 34 00            [12] 3708 	addc	a,#(_cur_amp >> 8)
      000C57 F5 83            [12] 3709 	mov	dph,a
      000C59 E0               [24] 3710 	movx	a,@dptr
      000C5A F8               [12] 3711 	mov	r0,a
      000C5B A3               [24] 3712 	inc	dptr
      000C5C E0               [24] 3713 	movx	a,@dptr
      000C5D F9               [12] 3714 	mov	r1,a
      000C5E 90 00 5A         [24] 3715 	mov	dptr,#_light_mode
      000C61 E0               [24] 3716 	movx	a,@dptr
      000C62 75 F0 02         [24] 3717 	mov	b,#0x02
      000C65 A4               [48] 3718 	mul	ab
      000C66 24 9D            [12] 3719 	add	a,#_max_amp
      000C68 FC               [12] 3720 	mov	r4,a
      000C69 74 19            [12] 3721 	mov	a,#(_max_amp >> 8)
      000C6B 35 F0            [12] 3722 	addc	a,b
      000C6D FD               [12] 3723 	mov	r5,a
      000C6E EE               [12] 3724 	mov	a,r6
      000C6F 2C               [12] 3725 	add	a,r4
      000C70 F5 82            [12] 3726 	mov	dpl,a
      000C72 EF               [12] 3727 	mov	a,r7
      000C73 3D               [12] 3728 	addc	a,r5
      000C74 F5 83            [12] 3729 	mov	dph,a
      000C76 E4               [12] 3730 	clr	a
      000C77 93               [24] 3731 	movc	a,@a+dptr
      000C78 FD               [12] 3732 	mov	r5,a
      000C79 7C 00            [12] 3733 	mov	r4,#0x00
      000C7B C3               [12] 3734 	clr	c
      000C7C E8               [12] 3735 	mov	a,r0
      000C7D 9D               [12] 3736 	subb	a,r5
      000C7E E9               [12] 3737 	mov	a,r1
      000C7F 9C               [12] 3738 	subb	a,r4
      000C80 D0 05            [24] 3739 	pop	ar5
      000C82 D0 04            [24] 3740 	pop	ar4
      000C84 50 55            [24] 3741 	jnc	00115$
                           000BA9  3742 	Smain$mode_changing_control$383 ==.
                                   3743 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:702: good_amp_count[i] = 0;
      000C86 EE               [12] 3744 	mov	a,r6
      000C87 24 78            [12] 3745 	add	a,#_good_amp_count
      000C89 F5 82            [12] 3746 	mov	dpl,a
      000C8B EF               [12] 3747 	mov	a,r7
      000C8C 34 00            [12] 3748 	addc	a,#(_good_amp_count >> 8)
      000C8E F5 83            [12] 3749 	mov	dph,a
      000C90 E4               [12] 3750 	clr	a
      000C91 F0               [24] 3751 	movx	@dptr,a
                           000BB5  3752 	Smain$mode_changing_control$384 ==.
                                   3753 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:703: light_changing = true;
      000C92 90 00 1F         [24] 3754 	mov	dptr,#_mode_changing_control_light_changing_65536_223
      000C95 04               [12] 3755 	inc	a
      000C96 F0               [24] 3756 	movx	@dptr,a
                           000BBA  3757 	Smain$mode_changing_control$385 ==.
                                   3758 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:704: if( pwm[i] < 190 ) {
      000C97 EA               [12] 3759 	mov	a,r2
      000C98 24 5F            [12] 3760 	add	a,#_pwm
      000C9A FA               [12] 3761 	mov	r2,a
      000C9B EB               [12] 3762 	mov	a,r3
      000C9C 34 00            [12] 3763 	addc	a,#(_pwm >> 8)
      000C9E FB               [12] 3764 	mov	r3,a
      000C9F 8A 82            [24] 3765 	mov	dpl,r2
      000CA1 8B 83            [24] 3766 	mov	dph,r3
      000CA3 E0               [24] 3767 	movx	a,@dptr
      000CA4 F8               [12] 3768 	mov	r0,a
      000CA5 A3               [24] 3769 	inc	dptr
      000CA6 E0               [24] 3770 	movx	a,@dptr
      000CA7 F9               [12] 3771 	mov	r1,a
      000CA8 C0 06            [24] 3772 	push	ar6
      000CAA C0 07            [24] 3773 	push	ar7
      000CAC 88 06            [24] 3774 	mov	ar6,r0
      000CAE 89 07            [24] 3775 	mov	ar7,r1
      000CB0 C3               [12] 3776 	clr	c
      000CB1 EE               [12] 3777 	mov	a,r6
      000CB2 94 BE            [12] 3778 	subb	a,#0xbe
      000CB4 EF               [12] 3779 	mov	a,r7
      000CB5 94 00            [12] 3780 	subb	a,#0x00
      000CB7 D0 07            [24] 3781 	pop	ar7
      000CB9 D0 06            [24] 3782 	pop	ar6
      000CBB 50 11            [24] 3783 	jnc	00110$
                           000BE0  3784 	Smain$mode_changing_control$386 ==.
                           000BE0  3785 	Smain$mode_changing_control$387 ==.
                                   3786 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:705: pwm[i] ++;
      000CBD 08               [12] 3787 	inc	r0
      000CBE B8 00 01         [24] 3788 	cjne	r0,#0x00,00201$
      000CC1 09               [12] 3789 	inc	r1
      000CC2                       3790 00201$:
      000CC2 8A 82            [24] 3791 	mov	dpl,r2
      000CC4 8B 83            [24] 3792 	mov	dph,r3
      000CC6 E8               [12] 3793 	mov	a,r0
      000CC7 F0               [24] 3794 	movx	@dptr,a
      000CC8 E9               [12] 3795 	mov	a,r1
      000CC9 A3               [24] 3796 	inc	dptr
      000CCA F0               [24] 3797 	movx	@dptr,a
                           000BEE  3798 	Smain$mode_changing_control$388 ==.
      000CCB 02 0D C1         [24] 3799 	ljmp	00133$
      000CCE                       3800 00110$:
                           000BF1  3801 	Smain$mode_changing_control$389 ==.
                           000BF1  3802 	Smain$mode_changing_control$390 ==.
                                   3803 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:707: pwm[i] = 190;
      000CCE 8A 82            [24] 3804 	mov	dpl,r2
      000CD0 8B 83            [24] 3805 	mov	dph,r3
      000CD2 74 BE            [12] 3806 	mov	a,#0xbe
      000CD4 F0               [24] 3807 	movx	@dptr,a
      000CD5 E4               [12] 3808 	clr	a
      000CD6 A3               [24] 3809 	inc	dptr
      000CD7 F0               [24] 3810 	movx	@dptr,a
                           000BFB  3811 	Smain$mode_changing_control$391 ==.
      000CD8 02 0D C1         [24] 3812 	ljmp	00133$
      000CDB                       3813 00115$:
                           000BFE  3814 	Smain$mode_changing_control$392 ==.
                                   3815 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:710: good_amp_count[i]++;
      000CDB EE               [12] 3816 	mov	a,r6
      000CDC 24 78            [12] 3817 	add	a,#_good_amp_count
      000CDE FA               [12] 3818 	mov	r2,a
      000CDF EF               [12] 3819 	mov	a,r7
      000CE0 34 00            [12] 3820 	addc	a,#(_good_amp_count >> 8)
      000CE2 FB               [12] 3821 	mov	r3,a
      000CE3 8A 82            [24] 3822 	mov	dpl,r2
      000CE5 8B 83            [24] 3823 	mov	dph,r3
      000CE7 E0               [24] 3824 	movx	a,@dptr
      000CE8 F9               [12] 3825 	mov	r1,a
      000CE9 09               [12] 3826 	inc	r1
      000CEA 8A 82            [24] 3827 	mov	dpl,r2
      000CEC 8B 83            [24] 3828 	mov	dph,r3
      000CEE E9               [12] 3829 	mov	a,r1
      000CEF F0               [24] 3830 	movx	@dptr,a
                           000C13  3831 	Smain$mode_changing_control$393 ==.
                                   3832 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:711: if( good_amp_count[i] > 10 ) {
      000CF0 E9               [12] 3833 	mov	a,r1
      000CF1 24 F5            [12] 3834 	add	a,#0xff - 0x0a
      000CF3 40 03            [24] 3835 	jc	00202$
      000CF5 02 0D C1         [24] 3836 	ljmp	00133$
      000CF8                       3837 00202$:
                           000C1B  3838 	Smain$mode_changing_control$394 ==.
                           000C1B  3839 	Smain$mode_changing_control$395 ==.
                                   3840 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:712: light_control_mode[i] = MODE_STABLE;
      000CF8 8C 82            [24] 3841 	mov	dpl,r4
      000CFA 8D 83            [24] 3842 	mov	dph,r5
      000CFC E4               [12] 3843 	clr	a
      000CFD F0               [24] 3844 	movx	@dptr,a
                           000C21  3845 	Smain$mode_changing_control$396 ==.
                           000C21  3846 	Smain$mode_changing_control$397 ==.
                                   3847 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:715: break;
      000CFE 02 0D C1         [24] 3848 	ljmp	00133$
                           000C24  3849 	Smain$mode_changing_control$398 ==.
                                   3850 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:716: case MODE_CHANGING_DOWN:
      000D01                       3851 00117$:
                           000C24  3852 	Smain$mode_changing_control$399 ==.
                           000C24  3853 	Smain$mode_changing_control$400 ==.
                                   3854 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:717: if( cur_amp[i] > max_amp[light_mode][i] ) {
      000D01 C0 04            [24] 3855 	push	ar4
      000D03 C0 05            [24] 3856 	push	ar5
      000D05 EE               [12] 3857 	mov	a,r6
      000D06 2E               [12] 3858 	add	a,r6
      000D07 FA               [12] 3859 	mov	r2,a
      000D08 EF               [12] 3860 	mov	a,r7
      000D09 33               [12] 3861 	rlc	a
      000D0A FB               [12] 3862 	mov	r3,a
      000D0B EA               [12] 3863 	mov	a,r2
      000D0C 24 72            [12] 3864 	add	a,#_cur_amp
      000D0E F5 82            [12] 3865 	mov	dpl,a
      000D10 EB               [12] 3866 	mov	a,r3
      000D11 34 00            [12] 3867 	addc	a,#(_cur_amp >> 8)
      000D13 F5 83            [12] 3868 	mov	dph,a
      000D15 E0               [24] 3869 	movx	a,@dptr
      000D16 F8               [12] 3870 	mov	r0,a
      000D17 A3               [24] 3871 	inc	dptr
      000D18 E0               [24] 3872 	movx	a,@dptr
      000D19 F9               [12] 3873 	mov	r1,a
      000D1A 90 00 5A         [24] 3874 	mov	dptr,#_light_mode
      000D1D E0               [24] 3875 	movx	a,@dptr
      000D1E 75 F0 02         [24] 3876 	mov	b,#0x02
      000D21 A4               [48] 3877 	mul	ab
      000D22 24 9D            [12] 3878 	add	a,#_max_amp
      000D24 FC               [12] 3879 	mov	r4,a
      000D25 74 19            [12] 3880 	mov	a,#(_max_amp >> 8)
      000D27 35 F0            [12] 3881 	addc	a,b
      000D29 FD               [12] 3882 	mov	r5,a
      000D2A EE               [12] 3883 	mov	a,r6
      000D2B 2C               [12] 3884 	add	a,r4
      000D2C F5 82            [12] 3885 	mov	dpl,a
      000D2E EF               [12] 3886 	mov	a,r7
      000D2F 3D               [12] 3887 	addc	a,r5
      000D30 F5 83            [12] 3888 	mov	dph,a
      000D32 E4               [12] 3889 	clr	a
      000D33 93               [24] 3890 	movc	a,@a+dptr
      000D34 FD               [12] 3891 	mov	r5,a
      000D35 7C 00            [12] 3892 	mov	r4,#0x00
      000D37 C3               [12] 3893 	clr	c
      000D38 ED               [12] 3894 	mov	a,r5
      000D39 98               [12] 3895 	subb	a,r0
      000D3A EC               [12] 3896 	mov	a,r4
      000D3B 99               [12] 3897 	subb	a,r1
      000D3C D0 05            [24] 3898 	pop	ar5
      000D3E D0 04            [24] 3899 	pop	ar4
      000D40 50 5F            [24] 3900 	jnc	00127$
                           000C65  3901 	Smain$mode_changing_control$401 ==.
                                   3902 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:718: good_amp_count[i] = 0;
      000D42 EE               [12] 3903 	mov	a,r6
      000D43 24 78            [12] 3904 	add	a,#_good_amp_count
      000D45 F5 82            [12] 3905 	mov	dpl,a
      000D47 EF               [12] 3906 	mov	a,r7
      000D48 34 00            [12] 3907 	addc	a,#(_good_amp_count >> 8)
      000D4A F5 83            [12] 3908 	mov	dph,a
      000D4C E4               [12] 3909 	clr	a
      000D4D F0               [24] 3910 	movx	@dptr,a
                           000C71  3911 	Smain$mode_changing_control$402 ==.
                                   3912 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:719: light_changing = true;
      000D4E 90 00 1F         [24] 3913 	mov	dptr,#_mode_changing_control_light_changing_65536_223
      000D51 04               [12] 3914 	inc	a
      000D52 F0               [24] 3915 	movx	@dptr,a
                           000C76  3916 	Smain$mode_changing_control$403 ==.
                                   3917 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:720: if( pwm[i] <= 0) {
      000D53 EA               [12] 3918 	mov	a,r2
      000D54 24 5F            [12] 3919 	add	a,#_pwm
      000D56 FA               [12] 3920 	mov	r2,a
      000D57 EB               [12] 3921 	mov	a,r3
      000D58 34 00            [12] 3922 	addc	a,#(_pwm >> 8)
      000D5A FB               [12] 3923 	mov	r3,a
      000D5B 8A 82            [24] 3924 	mov	dpl,r2
      000D5D 8B 83            [24] 3925 	mov	dph,r3
      000D5F E0               [24] 3926 	movx	a,@dptr
      000D60 F8               [12] 3927 	mov	r0,a
      000D61 A3               [24] 3928 	inc	dptr
      000D62 E0               [24] 3929 	movx	a,@dptr
      000D63 F9               [12] 3930 	mov	r1,a
      000D64 48               [12] 3931 	orl	a,r0
      000D65 70 0A            [24] 3932 	jnz	00122$
                           000C8A  3933 	Smain$mode_changing_control$404 ==.
                           000C8A  3934 	Smain$mode_changing_control$405 ==.
                                   3935 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:721: pwm[i] = 0;
      000D67 8A 82            [24] 3936 	mov	dpl,r2
      000D69 8B 83            [24] 3937 	mov	dph,r3
      000D6B E4               [12] 3938 	clr	a
      000D6C F0               [24] 3939 	movx	@dptr,a
      000D6D A3               [24] 3940 	inc	dptr
      000D6E F0               [24] 3941 	movx	@dptr,a
                           000C92  3942 	Smain$mode_changing_control$406 ==.
      000D6F 80 50            [24] 3943 	sjmp	00133$
      000D71                       3944 00122$:
                           000C94  3945 	Smain$mode_changing_control$407 ==.
                           000C94  3946 	Smain$mode_changing_control$408 ==.
                                   3947 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:722: } else if( pwm[i] > 190 ) {
      000D71 C0 02            [24] 3948 	push	ar2
      000D73 C0 03            [24] 3949 	push	ar3
      000D75 88 02            [24] 3950 	mov	ar2,r0
      000D77 89 03            [24] 3951 	mov	ar3,r1
      000D79 C3               [12] 3952 	clr	c
      000D7A 74 BE            [12] 3953 	mov	a,#0xbe
      000D7C 9A               [12] 3954 	subb	a,r2
      000D7D E4               [12] 3955 	clr	a
      000D7E 9B               [12] 3956 	subb	a,r3
      000D7F D0 03            [24] 3957 	pop	ar3
      000D81 D0 02            [24] 3958 	pop	ar2
      000D83 50 0C            [24] 3959 	jnc	00119$
                           000CA8  3960 	Smain$mode_changing_control$409 ==.
                           000CA8  3961 	Smain$mode_changing_control$410 ==.
                                   3962 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:723: pwm[i] = 190;
      000D85 8A 82            [24] 3963 	mov	dpl,r2
      000D87 8B 83            [24] 3964 	mov	dph,r3
      000D89 74 BE            [12] 3965 	mov	a,#0xbe
      000D8B F0               [24] 3966 	movx	@dptr,a
      000D8C E4               [12] 3967 	clr	a
      000D8D A3               [24] 3968 	inc	dptr
      000D8E F0               [24] 3969 	movx	@dptr,a
                           000CB2  3970 	Smain$mode_changing_control$411 ==.
      000D8F 80 30            [24] 3971 	sjmp	00133$
      000D91                       3972 00119$:
                           000CB4  3973 	Smain$mode_changing_control$412 ==.
                           000CB4  3974 	Smain$mode_changing_control$413 ==.
                                   3975 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:725: pwm[i] --;
      000D91 18               [12] 3976 	dec	r0
      000D92 B8 FF 01         [24] 3977 	cjne	r0,#0xff,00206$
      000D95 19               [12] 3978 	dec	r1
      000D96                       3979 00206$:
      000D96 8A 82            [24] 3980 	mov	dpl,r2
      000D98 8B 83            [24] 3981 	mov	dph,r3
      000D9A E8               [12] 3982 	mov	a,r0
      000D9B F0               [24] 3983 	movx	@dptr,a
      000D9C E9               [12] 3984 	mov	a,r1
      000D9D A3               [24] 3985 	inc	dptr
      000D9E F0               [24] 3986 	movx	@dptr,a
                           000CC2  3987 	Smain$mode_changing_control$414 ==.
      000D9F 80 20            [24] 3988 	sjmp	00133$
      000DA1                       3989 00127$:
                           000CC4  3990 	Smain$mode_changing_control$415 ==.
                                   3991 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:728: good_amp_count[i]++;
      000DA1 EE               [12] 3992 	mov	a,r6
      000DA2 24 78            [12] 3993 	add	a,#_good_amp_count
      000DA4 FA               [12] 3994 	mov	r2,a
      000DA5 EF               [12] 3995 	mov	a,r7
      000DA6 34 00            [12] 3996 	addc	a,#(_good_amp_count >> 8)
      000DA8 FB               [12] 3997 	mov	r3,a
      000DA9 8A 82            [24] 3998 	mov	dpl,r2
      000DAB 8B 83            [24] 3999 	mov	dph,r3
      000DAD E0               [24] 4000 	movx	a,@dptr
      000DAE F9               [12] 4001 	mov	r1,a
      000DAF 09               [12] 4002 	inc	r1
      000DB0 8A 82            [24] 4003 	mov	dpl,r2
      000DB2 8B 83            [24] 4004 	mov	dph,r3
      000DB4 E9               [12] 4005 	mov	a,r1
      000DB5 F0               [24] 4006 	movx	@dptr,a
                           000CD9  4007 	Smain$mode_changing_control$416 ==.
                                   4008 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:729: if( good_amp_count[i] > 2 ) {
      000DB6 E9               [12] 4009 	mov	a,r1
      000DB7 24 FD            [12] 4010 	add	a,#0xff - 0x02
      000DB9 50 06            [24] 4011 	jnc	00133$
                           000CDE  4012 	Smain$mode_changing_control$417 ==.
                           000CDE  4013 	Smain$mode_changing_control$418 ==.
                                   4014 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:730: light_control_mode[i] = MODE_STABLE;
      000DBB 8C 82            [24] 4015 	mov	dpl,r4
      000DBD 8D 83            [24] 4016 	mov	dph,r5
      000DBF E4               [12] 4017 	clr	a
      000DC0 F0               [24] 4018 	movx	@dptr,a
                           000CE4  4019 	Smain$mode_changing_control$419 ==.
                           000CE4  4020 	Smain$mode_changing_control$420 ==.
                                   4021 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:734: }
      000DC1                       4022 00133$:
                           000CE4  4023 	Smain$mode_changing_control$421 ==.
                           000CE4  4024 	Smain$mode_changing_control$422 ==.
                                   4025 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:687: for( int i = 0; i < NUM_LEDS; i++ ) {
      000DC1 0E               [12] 4026 	inc	r6
      000DC2 BE 00 01         [24] 4027 	cjne	r6,#0x00,00208$
      000DC5 0F               [12] 4028 	inc	r7
      000DC6                       4029 00208$:
      000DC6 02 0B BC         [24] 4030 	ljmp	00132$
      000DC9                       4031 00130$:
                           000CEC  4032 	Smain$mode_changing_control$423 ==.
                           000CEC  4033 	Smain$mode_changing_control$424 ==.
                                   4034 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:736: return light_changing;
      000DC9 90 00 1F         [24] 4035 	mov	dptr,#_mode_changing_control_light_changing_65536_223
      000DCC E0               [24] 4036 	movx	a,@dptr
                           000CF0  4037 	Smain$mode_changing_control$425 ==.
                                   4038 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:737: }
                           000CF0  4039 	Smain$mode_changing_control$426 ==.
                           000CF0  4040 	XG$mode_changing_control$0$0 ==.
      000DCD F5 82            [12] 4041 	mov	dpl,a
      000DCF 22               [24] 4042 	ret
                           000CF3  4043 	Smain$mode_changing_control$427 ==.
                                   4044 ;------------------------------------------------------------
                                   4045 ;Allocation info for local variables in function 'is_stable'
                                   4046 ;------------------------------------------------------------
                                   4047 ;i                         Allocated with name '_is_stable_i_131072_243'
                                   4048 ;------------------------------------------------------------
                           000CF3  4049 	Smain$is_stable$428 ==.
                                   4050 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:739: bool is_stable( void ) {
                                   4051 ;	-----------------------------------------
                                   4052 ;	 function is_stable
                                   4053 ;	-----------------------------------------
      000DD0                       4054 _is_stable:
                           000CF3  4055 	Smain$is_stable$429 ==.
                           000CF3  4056 	Smain$is_stable$430 ==.
                           000CF3  4057 	Smain$is_stable$431 ==.
                                   4058 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:740: for( int i = 0; i < NUM_LEDS; i++ ) {
                           000CF3  4059 	Smain$is_stable$432 ==.
      000DD0 7E 00            [12] 4060 	mov	r6,#0x00
      000DD2 7F 00            [12] 4061 	mov	r7,#0x00
                           000CF7  4062 	Smain$is_stable$433 ==.
      000DD4                       4063 00105$:
      000DD4 C3               [12] 4064 	clr	c
      000DD5 EE               [12] 4065 	mov	a,r6
      000DD6 94 02            [12] 4066 	subb	a,#0x02
      000DD8 EF               [12] 4067 	mov	a,r7
      000DD9 64 80            [12] 4068 	xrl	a,#0x80
      000DDB 94 80            [12] 4069 	subb	a,#0x80
      000DDD 50 1B            [24] 4070 	jnc	00103$
                           000D02  4071 	Smain$is_stable$434 ==.
                                   4072 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:741: if( light_control_mode[i] != MODE_STABLE ) return false;
      000DDF EE               [12] 4073 	mov	a,r6
      000DE0 24 63            [12] 4074 	add	a,#_light_control_mode
      000DE2 FC               [12] 4075 	mov	r4,a
      000DE3 EF               [12] 4076 	mov	a,r7
      000DE4 34 00            [12] 4077 	addc	a,#(_light_control_mode >> 8)
      000DE6 FD               [12] 4078 	mov	r5,a
      000DE7 8C 82            [24] 4079 	mov	dpl,r4
      000DE9 8D 83            [24] 4080 	mov	dph,r5
      000DEB E0               [24] 4081 	movx	a,@dptr
      000DEC 60 05            [24] 4082 	jz	00106$
      000DEE 75 82 00         [24] 4083 	mov	dpl,#0x00
      000DF1 80 0A            [24] 4084 	sjmp	00107$
      000DF3                       4085 00106$:
                           000D16  4086 	Smain$is_stable$435 ==.
                           000D16  4087 	Smain$is_stable$436 ==.
                                   4088 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:740: for( int i = 0; i < NUM_LEDS; i++ ) {
      000DF3 0E               [12] 4089 	inc	r6
      000DF4 BE 00 DD         [24] 4090 	cjne	r6,#0x00,00105$
      000DF7 0F               [12] 4091 	inc	r7
      000DF8 80 DA            [24] 4092 	sjmp	00105$
      000DFA                       4093 00103$:
                           000D1D  4094 	Smain$is_stable$437 ==.
                           000D1D  4095 	Smain$is_stable$438 ==.
                                   4096 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:744: return true;
      000DFA 75 82 01         [24] 4097 	mov	dpl,#0x01
      000DFD                       4098 00107$:
                           000D20  4099 	Smain$is_stable$439 ==.
                                   4100 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:745: }
                           000D20  4101 	Smain$is_stable$440 ==.
                           000D20  4102 	XG$is_stable$0$0 ==.
      000DFD 22               [24] 4103 	ret
                           000D21  4104 	Smain$is_stable$441 ==.
                                   4105 ;------------------------------------------------------------
                                   4106 ;Allocation info for local variables in function 'mode_stable_control'
                                   4107 ;------------------------------------------------------------
                                   4108 ;light_changing            Allocated with name '_mode_stable_control_light_changing_65536_246'
                                   4109 ;i                         Allocated with name '_mode_stable_control_i_131072_247'
                                   4110 ;t_amp                     Allocated with name '_mode_stable_control_t_amp_196608_248'
                                   4111 ;amp                       Allocated with name '_mode_stable_control_amp_196609_249'
                                   4112 ;------------------------------------------------------------
                           000D21  4113 	Smain$mode_stable_control$442 ==.
                                   4114 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:747: bool mode_stable_control( void )
                                   4115 ;	-----------------------------------------
                                   4116 ;	 function mode_stable_control
                                   4117 ;	-----------------------------------------
      000DFE                       4118 _mode_stable_control:
                           000D21  4119 	Smain$mode_stable_control$443 ==.
                           000D21  4120 	Smain$mode_stable_control$444 ==.
                                   4121 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:749: bool light_changing = false;
      000DFE 90 00 20         [24] 4122 	mov	dptr,#_mode_stable_control_light_changing_65536_246
      000E01 E4               [12] 4123 	clr	a
      000E02 F0               [24] 4124 	movx	@dptr,a
                           000D26  4125 	Smain$mode_stable_control$445 ==.
                                   4126 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:751: cur_temp = acc_temp / sample_count;
      000E03 90 00 65         [24] 4127 	mov	dptr,#_sample_count
      000E06 E0               [24] 4128 	movx	a,@dptr
      000E07 FF               [12] 4129 	mov	r7,a
      000E08 90 00 6E         [24] 4130 	mov	dptr,#_acc_temp
      000E0B E0               [24] 4131 	movx	a,@dptr
      000E0C FB               [12] 4132 	mov	r3,a
      000E0D A3               [24] 4133 	inc	dptr
      000E0E E0               [24] 4134 	movx	a,@dptr
      000E0F FC               [12] 4135 	mov	r4,a
      000E10 A3               [24] 4136 	inc	dptr
      000E11 E0               [24] 4137 	movx	a,@dptr
      000E12 FD               [12] 4138 	mov	r5,a
      000E13 A3               [24] 4139 	inc	dptr
      000E14 E0               [24] 4140 	movx	a,@dptr
      000E15 FE               [12] 4141 	mov	r6,a
      000E16 90 00 40         [24] 4142 	mov	dptr,#__divulong_PARM_2
      000E19 EF               [12] 4143 	mov	a,r7
      000E1A F0               [24] 4144 	movx	@dptr,a
      000E1B E4               [12] 4145 	clr	a
      000E1C A3               [24] 4146 	inc	dptr
      000E1D F0               [24] 4147 	movx	@dptr,a
      000E1E A3               [24] 4148 	inc	dptr
      000E1F F0               [24] 4149 	movx	@dptr,a
      000E20 A3               [24] 4150 	inc	dptr
      000E21 F0               [24] 4151 	movx	@dptr,a
      000E22 8B 82            [24] 4152 	mov	dpl,r3
      000E24 8C 83            [24] 4153 	mov	dph,r4
      000E26 8D F0            [24] 4154 	mov	b,r5
      000E28 EE               [12] 4155 	mov	a,r6
      000E29 12 17 25         [24] 4156 	lcall	__divulong
      000E2C AC 82            [24] 4157 	mov	r4,dpl
      000E2E AD 83            [24] 4158 	mov	r5,dph
      000E30 90 00 76         [24] 4159 	mov	dptr,#_cur_temp
      000E33 EC               [12] 4160 	mov	a,r4
      000E34 F0               [24] 4161 	movx	@dptr,a
      000E35 ED               [12] 4162 	mov	a,r5
      000E36 A3               [24] 4163 	inc	dptr
      000E37 F0               [24] 4164 	movx	@dptr,a
                           000D5B  4165 	Smain$mode_stable_control$446 ==.
                           000D5B  4166 	Smain$mode_stable_control$447 ==.
                                   4167 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:753: for( int i = 0; i < NUM_LEDS; i++ ) {
                           000D5B  4168 	Smain$mode_stable_control$448 ==.
                           000D5B  4169 	Smain$mode_stable_control$448 ==.
                           000D5B  4170 	Smain$mode_stable_control$449 ==.
      000E38 7E 00            [12] 4171 	mov	r6,#0x00
      000E3A 7F 00            [12] 4172 	mov	r7,#0x00
                           000D5F  4173 	Smain$mode_stable_control$450 ==.
      000E3C                       4174 00111$:
      000E3C C3               [12] 4175 	clr	c
      000E3D EE               [12] 4176 	mov	a,r6
      000E3E 94 02            [12] 4177 	subb	a,#0x02
      000E40 EF               [12] 4178 	mov	a,r7
      000E41 64 80            [12] 4179 	xrl	a,#0x80
      000E43 94 80            [12] 4180 	subb	a,#0x80
      000E45 40 03            [24] 4181 	jc	00135$
      000E47 02 0F 1A         [24] 4182 	ljmp	00109$
      000E4A                       4183 00135$:
                           000D6D  4184 	Smain$mode_stable_control$451 ==.
                           000D6D  4185 	Smain$mode_stable_control$452 ==.
                                   4186 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:754: int16_t t_amp = target_amp(light_mode, i);
      000E4A 90 00 5A         [24] 4187 	mov	dptr,#_light_mode
      000E4D E0               [24] 4188 	movx	a,@dptr
      000E4E FD               [12] 4189 	mov	r5,a
      000E4F 8E 04            [24] 4190 	mov	ar4,r6
      000E51 90 00 1B         [24] 4191 	mov	dptr,#_target_amp_PARM_2
      000E54 EC               [12] 4192 	mov	a,r4
      000E55 F0               [24] 4193 	movx	@dptr,a
      000E56 8D 82            [24] 4194 	mov	dpl,r5
      000E58 C0 07            [24] 4195 	push	ar7
      000E5A C0 06            [24] 4196 	push	ar6
      000E5C C0 04            [24] 4197 	push	ar4
      000E5E 12 06 50         [24] 4198 	lcall	_target_amp
      000E61 AD 82            [24] 4199 	mov	r5,dpl
      000E63 D0 04            [24] 4200 	pop	ar4
      000E65 D0 06            [24] 4201 	pop	ar6
      000E67 D0 07            [24] 4202 	pop	ar7
      000E69 7B 00            [12] 4203 	mov	r3,#0x00
                           000D8E  4204 	Smain$mode_stable_control$453 ==.
                                   4205 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:755: if( t_amp <= 0 ) continue;
      000E6B C3               [12] 4206 	clr	c
      000E6C E4               [12] 4207 	clr	a
      000E6D 9D               [12] 4208 	subb	a,r5
      000E6E 74 80            [12] 4209 	mov	a,#(0x00 ^ 0x80)
      000E70 8B F0            [24] 4210 	mov	b,r3
      000E72 63 F0 80         [24] 4211 	xrl	b,#0x80
      000E75 95 F0            [12] 4212 	subb	a,b
      000E77 40 03            [24] 4213 	jc	00136$
      000E79 02 0F 12         [24] 4214 	ljmp	00108$
      000E7C                       4215 00136$:
                           000D9F  4216 	Smain$mode_stable_control$454 ==.
                           000D9F  4217 	Smain$mode_stable_control$455 ==.
                                   4218 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:757: uint16_t amp = avg_amp(i);
      000E7C 8C 82            [24] 4219 	mov	dpl,r4
      000E7E C0 07            [24] 4220 	push	ar7
      000E80 C0 06            [24] 4221 	push	ar6
      000E82 C0 05            [24] 4222 	push	ar5
      000E84 C0 03            [24] 4223 	push	ar3
      000E86 12 05 EB         [24] 4224 	lcall	_avg_amp
      000E89 AA 82            [24] 4225 	mov	r2,dpl
      000E8B AC 83            [24] 4226 	mov	r4,dph
      000E8D D0 03            [24] 4227 	pop	ar3
      000E8F D0 05            [24] 4228 	pop	ar5
      000E91 D0 06            [24] 4229 	pop	ar6
      000E93 D0 07            [24] 4230 	pop	ar7
                           000DB8  4231 	Smain$mode_stable_control$456 ==.
                                   4232 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:758: if( amp < t_amp - AMP_MARGIN ) {
      000E95 ED               [12] 4233 	mov	a,r5
      000E96 24 FE            [12] 4234 	add	a,#0xfe
      000E98 F8               [12] 4235 	mov	r0,a
      000E99 EB               [12] 4236 	mov	a,r3
      000E9A 34 FF            [12] 4237 	addc	a,#0xff
      000E9C F9               [12] 4238 	mov	r1,a
      000E9D C3               [12] 4239 	clr	c
      000E9E EA               [12] 4240 	mov	a,r2
      000E9F 98               [12] 4241 	subb	a,r0
      000EA0 EC               [12] 4242 	mov	a,r4
      000EA1 99               [12] 4243 	subb	a,r1
      000EA2 50 35            [24] 4244 	jnc	00106$
                           000DC7  4245 	Smain$mode_stable_control$457 ==.
                                   4246 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:759: pwm[i] ++;
      000EA4 EE               [12] 4247 	mov	a,r6
      000EA5 2E               [12] 4248 	add	a,r6
      000EA6 F8               [12] 4249 	mov	r0,a
      000EA7 EF               [12] 4250 	mov	a,r7
      000EA8 33               [12] 4251 	rlc	a
      000EA9 F9               [12] 4252 	mov	r1,a
      000EAA E8               [12] 4253 	mov	a,r0
      000EAB 24 5F            [12] 4254 	add	a,#_pwm
      000EAD F8               [12] 4255 	mov	r0,a
      000EAE E9               [12] 4256 	mov	a,r1
      000EAF 34 00            [12] 4257 	addc	a,#(_pwm >> 8)
      000EB1 F9               [12] 4258 	mov	r1,a
                           000DD5  4259 	Smain$mode_stable_control$458 ==.
      000EB2 C0 06            [24] 4260 	push	ar6
      000EB4 C0 07            [24] 4261 	push	ar7
      000EB6 88 82            [24] 4262 	mov	dpl,r0
      000EB8 89 83            [24] 4263 	mov	dph,r1
      000EBA E0               [24] 4264 	movx	a,@dptr
      000EBB FE               [12] 4265 	mov	r6,a
      000EBC A3               [24] 4266 	inc	dptr
      000EBD E0               [24] 4267 	movx	a,@dptr
      000EBE FF               [12] 4268 	mov	r7,a
      000EBF 0E               [12] 4269 	inc	r6
      000EC0 BE 00 01         [24] 4270 	cjne	r6,#0x00,00138$
      000EC3 0F               [12] 4271 	inc	r7
      000EC4                       4272 00138$:
      000EC4 88 82            [24] 4273 	mov	dpl,r0
      000EC6 89 83            [24] 4274 	mov	dph,r1
      000EC8 EE               [12] 4275 	mov	a,r6
      000EC9 F0               [24] 4276 	movx	@dptr,a
      000ECA EF               [12] 4277 	mov	a,r7
      000ECB A3               [24] 4278 	inc	dptr
      000ECC F0               [24] 4279 	movx	@dptr,a
                           000DF0  4280 	Smain$mode_stable_control$459 ==.
                                   4281 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:760: light_changing = true;
      000ECD 90 00 20         [24] 4282 	mov	dptr,#_mode_stable_control_light_changing_65536_246
      000ED0 74 01            [12] 4283 	mov	a,#0x01
      000ED2 F0               [24] 4284 	movx	@dptr,a
      000ED3 D0 07            [24] 4285 	pop	ar7
      000ED5 D0 06            [24] 4286 	pop	ar6
      000ED7 80 39            [24] 4287 	sjmp	00108$
      000ED9                       4288 00106$:
                           000DFC  4289 	Smain$mode_stable_control$460 ==.
                                   4290 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:761: } else if( amp > t_amp + AMP_MARGIN ) {
      000ED9 74 02            [12] 4291 	mov	a,#0x02
      000EDB 2D               [12] 4292 	add	a,r5
      000EDC FD               [12] 4293 	mov	r5,a
      000EDD E4               [12] 4294 	clr	a
      000EDE 3B               [12] 4295 	addc	a,r3
      000EDF FB               [12] 4296 	mov	r3,a
      000EE0 C3               [12] 4297 	clr	c
      000EE1 ED               [12] 4298 	mov	a,r5
      000EE2 9A               [12] 4299 	subb	a,r2
      000EE3 EB               [12] 4300 	mov	a,r3
      000EE4 9C               [12] 4301 	subb	a,r4
      000EE5 50 2B            [24] 4302 	jnc	00108$
                           000E0A  4303 	Smain$mode_stable_control$461 ==.
                                   4304 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:762: pwm[i] --;
      000EE7 EE               [12] 4305 	mov	a,r6
      000EE8 2E               [12] 4306 	add	a,r6
      000EE9 FC               [12] 4307 	mov	r4,a
      000EEA EF               [12] 4308 	mov	a,r7
      000EEB 33               [12] 4309 	rlc	a
      000EEC FD               [12] 4310 	mov	r5,a
      000EED EC               [12] 4311 	mov	a,r4
      000EEE 24 5F            [12] 4312 	add	a,#_pwm
      000EF0 FC               [12] 4313 	mov	r4,a
      000EF1 ED               [12] 4314 	mov	a,r5
      000EF2 34 00            [12] 4315 	addc	a,#(_pwm >> 8)
      000EF4 FD               [12] 4316 	mov	r5,a
      000EF5 8C 82            [24] 4317 	mov	dpl,r4
      000EF7 8D 83            [24] 4318 	mov	dph,r5
      000EF9 E0               [24] 4319 	movx	a,@dptr
      000EFA FA               [12] 4320 	mov	r2,a
      000EFB A3               [24] 4321 	inc	dptr
      000EFC E0               [24] 4322 	movx	a,@dptr
      000EFD FB               [12] 4323 	mov	r3,a
      000EFE 1A               [12] 4324 	dec	r2
      000EFF BA FF 01         [24] 4325 	cjne	r2,#0xff,00140$
      000F02 1B               [12] 4326 	dec	r3
      000F03                       4327 00140$:
      000F03 8C 82            [24] 4328 	mov	dpl,r4
      000F05 8D 83            [24] 4329 	mov	dph,r5
      000F07 EA               [12] 4330 	mov	a,r2
      000F08 F0               [24] 4331 	movx	@dptr,a
      000F09 EB               [12] 4332 	mov	a,r3
      000F0A A3               [24] 4333 	inc	dptr
      000F0B F0               [24] 4334 	movx	@dptr,a
                           000E2F  4335 	Smain$mode_stable_control$462 ==.
                                   4336 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:763: light_changing = true;
      000F0C 90 00 20         [24] 4337 	mov	dptr,#_mode_stable_control_light_changing_65536_246
      000F0F 74 01            [12] 4338 	mov	a,#0x01
      000F11 F0               [24] 4339 	movx	@dptr,a
      000F12                       4340 00108$:
                           000E35  4341 	Smain$mode_stable_control$463 ==.
                                   4342 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:753: for( int i = 0; i < NUM_LEDS; i++ ) {
      000F12 0E               [12] 4343 	inc	r6
      000F13 BE 00 01         [24] 4344 	cjne	r6,#0x00,00141$
      000F16 0F               [12] 4345 	inc	r7
      000F17                       4346 00141$:
      000F17 02 0E 3C         [24] 4347 	ljmp	00111$
      000F1A                       4348 00109$:
                           000E3D  4349 	Smain$mode_stable_control$464 ==.
                                   4350 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:766: return light_changing;
      000F1A 90 00 20         [24] 4351 	mov	dptr,#_mode_stable_control_light_changing_65536_246
      000F1D E0               [24] 4352 	movx	a,@dptr
                           000E41  4353 	Smain$mode_stable_control$465 ==.
                                   4354 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:767: }
                           000E41  4355 	Smain$mode_stable_control$466 ==.
                           000E41  4356 	XG$mode_stable_control$0$0 ==.
      000F1E F5 82            [12] 4357 	mov	dpl,a
      000F20 22               [24] 4358 	ret
                           000E44  4359 	Smain$mode_stable_control$467 ==.
                                   4360 ;------------------------------------------------------------
                                   4361 ;Allocation info for local variables in function 'control_loop'
                                   4362 ;------------------------------------------------------------
                                   4363 ;sloc0                     Allocated with name '_control_loop_sloc0_1_0'
                                   4364 ;light_changing            Allocated with name '_control_loop_light_changing_65536_253'
                                   4365 ;i                         Allocated with name '_control_loop_i_196608_255'
                                   4366 ;------------------------------------------------------------
                           000E44  4367 	Smain$control_loop$468 ==.
                                   4368 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:769: void control_loop( void )
                                   4369 ;	-----------------------------------------
                                   4370 ;	 function control_loop
                                   4371 ;	-----------------------------------------
      000F21                       4372 _control_loop:
                           000E44  4373 	Smain$control_loop$469 ==.
                           000E44  4374 	Smain$control_loop$470 ==.
                                   4375 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:773: sample_amps();
      000F21 12 03 97         [24] 4376 	lcall	_sample_amps
                           000E47  4377 	Smain$control_loop$471 ==.
                                   4378 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:775: light_changing = mode_changing_control();
      000F24 12 0B B3         [24] 4379 	lcall	_mode_changing_control
      000F27 E5 82            [12] 4380 	mov	a,dpl
      000F29 90 00 21         [24] 4381 	mov	dptr,#_control_loop_light_changing_65536_253
      000F2C F0               [24] 4382 	movx	@dptr,a
                           000E50  4383 	Smain$control_loop$472 ==.
                                   4384 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:777: if( is_stable() ) {
      000F2D 12 0D D0         [24] 4385 	lcall	_is_stable
      000F30 E5 82            [12] 4386 	mov	a,dpl
      000F32 70 03            [24] 4387 	jnz	00159$
      000F34 02 10 08         [24] 4388 	ljmp	00114$
      000F37                       4389 00159$:
                           000E5A  4390 	Smain$control_loop$473 ==.
                           000E5A  4391 	Smain$control_loop$474 ==.
                                   4392 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:778: sample_count++;
      000F37 90 00 65         [24] 4393 	mov	dptr,#_sample_count
      000F3A E0               [24] 4394 	movx	a,@dptr
      000F3B 24 01            [12] 4395 	add	a,#0x01
      000F3D F0               [24] 4396 	movx	@dptr,a
                           000E61  4397 	Smain$control_loop$475 ==.
                           000E61  4398 	Smain$control_loop$476 ==.
                                   4399 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:780: for( int i = 0; i < NUM_LEDS; i++ )
                           000E61  4400 	Smain$control_loop$477 ==.
      000F3E 7E 00            [12] 4401 	mov	r6,#0x00
      000F40 7F 00            [12] 4402 	mov	r7,#0x00
      000F42                       4403 00118$:
      000F42 C3               [12] 4404 	clr	c
      000F43 EE               [12] 4405 	mov	a,r6
      000F44 94 02            [12] 4406 	subb	a,#0x02
      000F46 EF               [12] 4407 	mov	a,r7
      000F47 64 80            [12] 4408 	xrl	a,#0x80
      000F49 94 80            [12] 4409 	subb	a,#0x80
      000F4B 50 69            [24] 4410 	jnc	00101$
                           000E70  4411 	Smain$control_loop$478 ==.
                                   4412 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:781: acc_amp[i] += cur_amp[i];
      000F4D EE               [12] 4413 	mov	a,r6
      000F4E 2E               [12] 4414 	add	a,r6
      000F4F FC               [12] 4415 	mov	r4,a
      000F50 EF               [12] 4416 	mov	a,r7
      000F51 33               [12] 4417 	rlc	a
      000F52 FD               [12] 4418 	mov	r5,a
      000F53 EC               [12] 4419 	mov	a,r4
      000F54 2C               [12] 4420 	add	a,r4
      000F55 FC               [12] 4421 	mov	r4,a
      000F56 ED               [12] 4422 	mov	a,r5
      000F57 33               [12] 4423 	rlc	a
      000F58 FD               [12] 4424 	mov	r5,a
      000F59 EC               [12] 4425 	mov	a,r4
      000F5A 24 66            [12] 4426 	add	a,#_acc_amp
      000F5C FC               [12] 4427 	mov	r4,a
      000F5D ED               [12] 4428 	mov	a,r5
      000F5E 34 00            [12] 4429 	addc	a,#(_acc_amp >> 8)
      000F60 FD               [12] 4430 	mov	r5,a
      000F61 8C 82            [24] 4431 	mov	dpl,r4
      000F63 8D 83            [24] 4432 	mov	dph,r5
      000F65 E0               [24] 4433 	movx	a,@dptr
      000F66 F5 22            [12] 4434 	mov	_control_loop_sloc0_1_0,a
      000F68 A3               [24] 4435 	inc	dptr
      000F69 E0               [24] 4436 	movx	a,@dptr
      000F6A F5 23            [12] 4437 	mov	(_control_loop_sloc0_1_0 + 1),a
      000F6C A3               [24] 4438 	inc	dptr
      000F6D E0               [24] 4439 	movx	a,@dptr
      000F6E F5 24            [12] 4440 	mov	(_control_loop_sloc0_1_0 + 2),a
      000F70 A3               [24] 4441 	inc	dptr
      000F71 E0               [24] 4442 	movx	a,@dptr
      000F72 F5 25            [12] 4443 	mov	(_control_loop_sloc0_1_0 + 3),a
      000F74 EE               [12] 4444 	mov	a,r6
      000F75 2E               [12] 4445 	add	a,r6
      000F76 FA               [12] 4446 	mov	r2,a
      000F77 EF               [12] 4447 	mov	a,r7
      000F78 33               [12] 4448 	rlc	a
      000F79 FB               [12] 4449 	mov	r3,a
      000F7A EA               [12] 4450 	mov	a,r2
      000F7B 24 72            [12] 4451 	add	a,#_cur_amp
      000F7D F5 82            [12] 4452 	mov	dpl,a
      000F7F EB               [12] 4453 	mov	a,r3
      000F80 34 00            [12] 4454 	addc	a,#(_cur_amp >> 8)
      000F82 F5 83            [12] 4455 	mov	dph,a
      000F84 E0               [24] 4456 	movx	a,@dptr
      000F85 FA               [12] 4457 	mov	r2,a
      000F86 A3               [24] 4458 	inc	dptr
      000F87 E0               [24] 4459 	movx	a,@dptr
      000F88 FB               [12] 4460 	mov	r3,a
      000F89 8A 00            [24] 4461 	mov	ar0,r2
      000F8B 8B 01            [24] 4462 	mov	ar1,r3
      000F8D E4               [12] 4463 	clr	a
      000F8E FA               [12] 4464 	mov	r2,a
      000F8F FB               [12] 4465 	mov	r3,a
      000F90 E8               [12] 4466 	mov	a,r0
      000F91 25 22            [12] 4467 	add	a,_control_loop_sloc0_1_0
      000F93 F8               [12] 4468 	mov	r0,a
      000F94 E9               [12] 4469 	mov	a,r1
      000F95 35 23            [12] 4470 	addc	a,(_control_loop_sloc0_1_0 + 1)
      000F97 F9               [12] 4471 	mov	r1,a
      000F98 EA               [12] 4472 	mov	a,r2
      000F99 35 24            [12] 4473 	addc	a,(_control_loop_sloc0_1_0 + 2)
      000F9B FA               [12] 4474 	mov	r2,a
      000F9C EB               [12] 4475 	mov	a,r3
      000F9D 35 25            [12] 4476 	addc	a,(_control_loop_sloc0_1_0 + 3)
      000F9F FB               [12] 4477 	mov	r3,a
      000FA0 8C 82            [24] 4478 	mov	dpl,r4
      000FA2 8D 83            [24] 4479 	mov	dph,r5
      000FA4 E8               [12] 4480 	mov	a,r0
      000FA5 F0               [24] 4481 	movx	@dptr,a
      000FA6 E9               [12] 4482 	mov	a,r1
      000FA7 A3               [24] 4483 	inc	dptr
      000FA8 F0               [24] 4484 	movx	@dptr,a
      000FA9 EA               [12] 4485 	mov	a,r2
      000FAA A3               [24] 4486 	inc	dptr
      000FAB F0               [24] 4487 	movx	@dptr,a
      000FAC EB               [12] 4488 	mov	a,r3
      000FAD A3               [24] 4489 	inc	dptr
      000FAE F0               [24] 4490 	movx	@dptr,a
                           000ED2  4491 	Smain$control_loop$479 ==.
                                   4492 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:780: for( int i = 0; i < NUM_LEDS; i++ )
      000FAF 0E               [12] 4493 	inc	r6
      000FB0 BE 00 8F         [24] 4494 	cjne	r6,#0x00,00118$
      000FB3 0F               [12] 4495 	inc	r7
      000FB4 80 8C            [24] 4496 	sjmp	00118$
      000FB6                       4497 00101$:
                           000ED9  4498 	Smain$control_loop$480 ==.
                                   4499 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:783: sample_temperature();
      000FB6 12 04 E4         [24] 4500 	lcall	_sample_temperature
                           000EDC  4501 	Smain$control_loop$481 ==.
                                   4502 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:785: if( flashing[light_mode] ) {
      000FB9 90 00 5A         [24] 4503 	mov	dptr,#_light_mode
      000FBC E0               [24] 4504 	movx	a,@dptr
      000FBD 24 B3            [12] 4505 	add	a,#_flashing
      000FBF FF               [12] 4506 	mov	r7,a
      000FC0 E4               [12] 4507 	clr	a
      000FC1 34 19            [12] 4508 	addc	a,#(_flashing >> 8)
      000FC3 FE               [12] 4509 	mov	r6,a
      000FC4 8F 82            [24] 4510 	mov	dpl,r7
      000FC6 8E 83            [24] 4511 	mov	dph,r6
      000FC8 E4               [12] 4512 	clr	a
      000FC9 93               [24] 4513 	movc	a,@a+dptr
      000FCA 60 13            [24] 4514 	jz	00108$
                           000EEF  4515 	Smain$control_loop$482 ==.
                           000EEF  4516 	Smain$control_loop$483 ==.
                                   4517 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:786: if( sample_count == 1 ) {
      000FCC 90 00 65         [24] 4518 	mov	dptr,#_sample_count
      000FCF E0               [24] 4519 	movx	a,@dptr
      000FD0 FF               [12] 4520 	mov	r7,a
      000FD1 BF 01 05         [24] 4521 	cjne	r7,#0x01,00105$
                           000EF7  4522 	Smain$control_loop$484 ==.
                           000EF7  4523 	Smain$control_loop$485 ==.
                                   4524 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:787: stop_leds();
      000FD4 12 0B 45         [24] 4525 	lcall	_stop_leds
                           000EFA  4526 	Smain$control_loop$486 ==.
      000FD7 80 06            [24] 4527 	sjmp	00108$
      000FD9                       4528 00105$:
                           000EFC  4529 	Smain$control_loop$487 ==.
                                   4530 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:788: } else if( sample_count == FLASHING_ON_COUNT ) {
      000FD9 BF 87 03         [24] 4531 	cjne	r7,#0x87,00108$
                           000EFF  4532 	Smain$control_loop$488 ==.
                           000EFF  4533 	Smain$control_loop$489 ==.
                                   4534 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:789: activate_leds();
      000FDC 12 0B 7C         [24] 4535 	lcall	_activate_leds
                           000F02  4536 	Smain$control_loop$490 ==.
      000FDF                       4537 00108$:
                           000F02  4538 	Smain$control_loop$491 ==.
                                   4539 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:793: if( sample_count >= MAX_SAMPLE_COUNT ) {
      000FDF 90 00 65         [24] 4540 	mov	dptr,#_sample_count
      000FE2 E0               [24] 4541 	movx	a,@dptr
      000FE3 FF               [12] 4542 	mov	r7,a
      000FE4 BF 96 00         [24] 4543 	cjne	r7,#0x96,00167$
      000FE7                       4544 00167$:
      000FE7 40 1F            [24] 4545 	jc	00114$
                           000F0C  4546 	Smain$control_loop$492 ==.
                           000F0C  4547 	Smain$control_loop$493 ==.
                                   4548 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:794: if( !flashing[light_mode] ) {
      000FE9 90 00 5A         [24] 4549 	mov	dptr,#_light_mode
      000FEC E0               [24] 4550 	movx	a,@dptr
      000FED 24 B3            [12] 4551 	add	a,#_flashing
      000FEF FF               [12] 4552 	mov	r7,a
      000FF0 E4               [12] 4553 	clr	a
      000FF1 34 19            [12] 4554 	addc	a,#(_flashing >> 8)
      000FF3 FE               [12] 4555 	mov	r6,a
      000FF4 8F 82            [24] 4556 	mov	dpl,r7
      000FF6 8E 83            [24] 4557 	mov	dph,r6
      000FF8 E4               [12] 4558 	clr	a
      000FF9 93               [24] 4559 	movc	a,@a+dptr
      000FFA 70 09            [24] 4560 	jnz	00110$
                           000F1F  4561 	Smain$control_loop$494 ==.
                           000F1F  4562 	Smain$control_loop$495 ==.
                                   4563 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:795: light_changing = mode_stable_control();
      000FFC 12 0D FE         [24] 4564 	lcall	_mode_stable_control
      000FFF E5 82            [12] 4565 	mov	a,dpl
      001001 90 00 21         [24] 4566 	mov	dptr,#_control_loop_light_changing_65536_253
      001004 F0               [24] 4567 	movx	@dptr,a
                           000F28  4568 	Smain$control_loop$496 ==.
      001005                       4569 00110$:
                           000F28  4570 	Smain$control_loop$497 ==.
                                   4571 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:797: init_sample();
      001005 12 02 AB         [24] 4572 	lcall	_init_sample
                           000F2B  4573 	Smain$control_loop$498 ==.
      001008                       4574 00114$:
                           000F2B  4575 	Smain$control_loop$499 ==.
                                   4576 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:801: if( light_changing ) {
      001008 90 00 21         [24] 4577 	mov	dptr,#_control_loop_light_changing_65536_253
      00100B E0               [24] 4578 	movx	a,@dptr
      00100C 60 03            [24] 4579 	jz	00120$
                           000F31  4580 	Smain$control_loop$500 ==.
                           000F31  4581 	Smain$control_loop$501 ==.
                                   4582 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:802: activate_leds();
      00100E 12 0B 7C         [24] 4583 	lcall	_activate_leds
                           000F34  4584 	Smain$control_loop$502 ==.
      001011                       4585 00120$:
                           000F34  4586 	Smain$control_loop$503 ==.
                                   4587 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:805: }
                           000F34  4588 	Smain$control_loop$504 ==.
                           000F34  4589 	XG$control_loop$0$0 ==.
      001011 22               [24] 4590 	ret
                           000F35  4591 	Smain$control_loop$505 ==.
                                   4592 ;------------------------------------------------------------
                                   4593 ;Allocation info for local variables in function 'wdt_init'
                                   4594 ;------------------------------------------------------------
                           000F35  4595 	Smain$wdt_init$506 ==.
                                   4596 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:808: void wdt_init(void)
                                   4597 ;	-----------------------------------------
                                   4598 ;	 function wdt_init
                                   4599 ;	-----------------------------------------
      001012                       4600 _wdt_init:
                           000F35  4601 	Smain$wdt_init$507 ==.
                           000F35  4602 	Smain$wdt_init$508 ==.
                                   4603 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:810: SFRS=0;								/* Init WDT */
      001012 75 91 00         [24] 4604 	mov	_SFRS,#0x00
                           000F38  4605 	Smain$wdt_init$509 ==.
                                   4606 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:811: BIT_TMP=EA;
                                   4607 ;	assignBit
      001015 A2 AF            [12] 4608 	mov	c,_EA
      001017 92 00            [24] 4609 	mov	_BIT_TMP,c
                           000F3C  4610 	Smain$wdt_init$510 ==.
                                   4611 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:812: EA=0;
                                   4612 ;	assignBit
      001019 C2 AF            [12] 4613 	clr	_EA
                           000F3E  4614 	Smain$wdt_init$511 ==.
                                   4615 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:814: TA=0xAA;
      00101B 75 C7 AA         [24] 4616 	mov	_TA,#0xaa
                           000F41  4617 	Smain$wdt_init$512 ==.
                                   4618 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:815: TA=0x55;
      00101E 75 C7 55         [24] 4619 	mov	_TA,#0x55
                           000F44  4620 	Smain$wdt_init$513 ==.
                                   4621 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:817: WDCON&=0xFF;
      001021 85 AA AA         [24] 4622 	mov	_WDCON,_WDCON
                           000F47  4623 	Smain$wdt_init$514 ==.
                                   4624 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:818: WDCON|= 0x97; // 1001 0111
      001024 43 AA 97         [24] 4625 	orl	_WDCON,#0x97
                           000F4A  4626 	Smain$wdt_init$515 ==.
                                   4627 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:824: EA = BIT_TMP;
                                   4628 ;	assignBit
      001027 A2 00            [12] 4629 	mov	c,_BIT_TMP
      001029 92 AF            [24] 4630 	mov	_EA,c
                           000F4E  4631 	Smain$wdt_init$516 ==.
                                   4632 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:840: EIE|=0x10;
      00102B 43 9B 10         [24] 4633 	orl	_EIE,#0x10
                           000F51  4634 	Smain$wdt_init$517 ==.
                                   4635 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:841: }
                           000F51  4636 	Smain$wdt_init$518 ==.
                           000F51  4637 	XG$wdt_init$0$0 ==.
      00102E 22               [24] 4638 	ret
                           000F52  4639 	Smain$wdt_init$519 ==.
                                   4640 ;------------------------------------------------------------
                                   4641 ;Allocation info for local variables in function 'wdt_clear'
                                   4642 ;------------------------------------------------------------
                           000F52  4643 	Smain$wdt_clear$520 ==.
                                   4644 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:844: void wdt_clear(void)
                                   4645 ;	-----------------------------------------
                                   4646 ;	 function wdt_clear
                                   4647 ;	-----------------------------------------
      00102F                       4648 _wdt_clear:
                           000F52  4649 	Smain$wdt_clear$521 ==.
                           000F52  4650 	Smain$wdt_clear$522 ==.
                                   4651 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:846: BIT_TMP=EA;							/* Clear WDT counter */
                                   4652 ;	assignBit
      00102F A2 AF            [12] 4653 	mov	c,_EA
      001031 92 00            [24] 4654 	mov	_BIT_TMP,c
                           000F56  4655 	Smain$wdt_clear$523 ==.
                                   4656 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:847: EA=0;
                                   4657 ;	assignBit
      001033 C2 AF            [12] 4658 	clr	_EA
                           000F58  4659 	Smain$wdt_clear$524 ==.
                                   4660 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:849: TA=0xAA;
      001035 75 C7 AA         [24] 4661 	mov	_TA,#0xaa
                           000F5B  4662 	Smain$wdt_clear$525 ==.
                                   4663 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:850: TA=0x55;
      001038 75 C7 55         [24] 4664 	mov	_TA,#0x55
                           000F5E  4665 	Smain$wdt_clear$526 ==.
                                   4666 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:852: WDCON|=0x40;
      00103B 43 AA 40         [24] 4667 	orl	_WDCON,#0x40
                           000F61  4668 	Smain$wdt_clear$527 ==.
                                   4669 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:853: EA=BIT_TMP;
                                   4670 ;	assignBit
      00103E A2 00            [12] 4671 	mov	c,_BIT_TMP
      001040 92 AF            [24] 4672 	mov	_EA,c
                           000F65  4673 	Smain$wdt_clear$528 ==.
                                   4674 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:856: }
                           000F65  4675 	Smain$wdt_clear$529 ==.
                           000F65  4676 	XG$wdt_clear$0$0 ==.
      001042 22               [24] 4677 	ret
                           000F66  4678 	Smain$wdt_clear$530 ==.
                                   4679 ;------------------------------------------------------------
                                   4680 ;Allocation info for local variables in function 'main'
                                   4681 ;------------------------------------------------------------
                           000F66  4682 	Smain$main$531 ==.
                                   4683 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:859: void main (void)
                                   4684 ;	-----------------------------------------
                                   4685 ;	 function main
                                   4686 ;	-----------------------------------------
      001043                       4687 _main:
                           000F66  4688 	Smain$main$532 ==.
                           000F66  4689 	Smain$main$533 ==.
                                   4690 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:862: MODIFY_HIRC(HIRC_24);
      001043 75 82 06         [24] 4691 	mov	dpl,#0x06
      001046 12 12 19         [24] 4692 	lcall	_MODIFY_HIRC
                           000F6C  4693 	Smain$main$534 ==.
                                   4694 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:869: init_peripherals_but_button_n_uart();
      001049 12 02 F5         [24] 4695 	lcall	_init_peripherals_but_button_n_uart
                           000F6F  4696 	Smain$main$535 ==.
                                   4697 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:870: uart_interrupt_init();
      00104C 12 02 24         [24] 4698 	lcall	_uart_interrupt_init
                           000F72  4699 	Smain$main$536 ==.
                                   4700 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:875: for( uart_counter = 0; uart_counter < MAX_UART_INIT_COUNTER; uart_counter++ ) {
      00104F 90 00 85         [24] 4701 	mov	dptr,#_uart_counter
      001052 E4               [12] 4702 	clr	a
      001053 F0               [24] 4703 	movx	@dptr,a
      001054 A3               [24] 4704 	inc	dptr
      001055 F0               [24] 4705 	movx	@dptr,a
      001056 A3               [24] 4706 	inc	dptr
      001057 F0               [24] 4707 	movx	@dptr,a
      001058 A3               [24] 4708 	inc	dptr
      001059 F0               [24] 4709 	movx	@dptr,a
      00105A                       4710 00124$:
                           000F7D  4711 	Smain$main$537 ==.
                           000F7D  4712 	Smain$main$538 ==.
                                   4713 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:876: if( process_uart() ) break;
      00105A 12 09 18         [24] 4714 	lcall	_process_uart
      00105D E5 82            [12] 4715 	mov	a,dpl
      00105F 70 51            [24] 4716 	jnz	00103$
                           000F84  4717 	Smain$main$539 ==.
                                   4718 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:877: Timer0_Delay(24000000, 1, PERIOD_UNIT);
      001061 90 00 01         [24] 4719 	mov	dptr,#_Timer0_Delay_PARM_2
      001064 74 01            [12] 4720 	mov	a,#0x01
      001066 F0               [24] 4721 	movx	@dptr,a
      001067 E4               [12] 4722 	clr	a
      001068 A3               [24] 4723 	inc	dptr
      001069 F0               [24] 4724 	movx	@dptr,a
      00106A 90 00 03         [24] 4725 	mov	dptr,#_Timer0_Delay_PARM_3
      00106D 74 E8            [12] 4726 	mov	a,#0xe8
      00106F F0               [24] 4727 	movx	@dptr,a
      001070 74 03            [12] 4728 	mov	a,#0x03
      001072 A3               [24] 4729 	inc	dptr
      001073 F0               [24] 4730 	movx	@dptr,a
      001074 90 36 00         [24] 4731 	mov	dptr,#0x3600
      001077 75 F0 6E         [24] 4732 	mov	b,#0x6e
      00107A 74 01            [12] 4733 	mov	a,#0x01
      00107C 12 00 DD         [24] 4734 	lcall	_Timer0_Delay
                           000FA2  4735 	Smain$main$540 ==.
                           000FA2  4736 	Smain$main$541 ==.
                                   4737 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:875: for( uart_counter = 0; uart_counter < MAX_UART_INIT_COUNTER; uart_counter++ ) {
      00107F 90 00 85         [24] 4738 	mov	dptr,#_uart_counter
      001082 E0               [24] 4739 	movx	a,@dptr
      001083 24 01            [12] 4740 	add	a,#0x01
      001085 F0               [24] 4741 	movx	@dptr,a
      001086 A3               [24] 4742 	inc	dptr
      001087 E0               [24] 4743 	movx	a,@dptr
      001088 34 00            [12] 4744 	addc	a,#0x00
      00108A F0               [24] 4745 	movx	@dptr,a
      00108B A3               [24] 4746 	inc	dptr
      00108C E0               [24] 4747 	movx	a,@dptr
      00108D 34 00            [12] 4748 	addc	a,#0x00
      00108F F0               [24] 4749 	movx	@dptr,a
      001090 A3               [24] 4750 	inc	dptr
      001091 E0               [24] 4751 	movx	a,@dptr
      001092 34 00            [12] 4752 	addc	a,#0x00
      001094 F0               [24] 4753 	movx	@dptr,a
      001095 90 00 85         [24] 4754 	mov	dptr,#_uart_counter
      001098 E0               [24] 4755 	movx	a,@dptr
      001099 FC               [12] 4756 	mov	r4,a
      00109A A3               [24] 4757 	inc	dptr
      00109B E0               [24] 4758 	movx	a,@dptr
      00109C FD               [12] 4759 	mov	r5,a
      00109D A3               [24] 4760 	inc	dptr
      00109E E0               [24] 4761 	movx	a,@dptr
      00109F FE               [12] 4762 	mov	r6,a
      0010A0 A3               [24] 4763 	inc	dptr
      0010A1 E0               [24] 4764 	movx	a,@dptr
      0010A2 FF               [12] 4765 	mov	r7,a
      0010A3 C3               [12] 4766 	clr	c
      0010A4 EC               [12] 4767 	mov	a,r4
      0010A5 94 F4            [12] 4768 	subb	a,#0xf4
      0010A7 ED               [12] 4769 	mov	a,r5
      0010A8 94 01            [12] 4770 	subb	a,#0x01
      0010AA EE               [12] 4771 	mov	a,r6
      0010AB 94 00            [12] 4772 	subb	a,#0x00
      0010AD EF               [12] 4773 	mov	a,r7
      0010AE 94 00            [12] 4774 	subb	a,#0x00
      0010B0 40 A8            [24] 4775 	jc	00124$
      0010B2                       4776 00103$:
                           000FD5  4777 	Smain$main$542 ==.
                                   4778 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:882: if( !is_uart_mode ) {
      0010B2 90 00 5B         [24] 4779 	mov	dptr,#_is_uart_mode
      0010B5 E0               [24] 4780 	movx	a,@dptr
      0010B6 70 03            [24] 4781 	jnz	00105$
                           000FDB  4782 	Smain$main$543 ==.
                           000FDB  4783 	Smain$main$544 ==.
                                   4784 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:883: button_interrupt_init();
      0010B8 12 02 81         [24] 4785 	lcall	_button_interrupt_init
                           000FDE  4786 	Smain$main$545 ==.
      0010BB                       4787 00105$:
                           000FDE  4788 	Smain$main$546 ==.
                                   4789 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:886: wdt_init();
      0010BB 12 10 12         [24] 4790 	lcall	_wdt_init
                           000FE1  4791 	Smain$main$547 ==.
                                   4792 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:888: while(1)
      0010BE                       4793 00122$:
                           000FE1  4794 	Smain$main$548 ==.
                           000FE1  4795 	Smain$main$549 ==.
                                   4796 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:898: if( is_uart_mode ) {
      0010BE 90 00 5B         [24] 4797 	mov	dptr,#_is_uart_mode
      0010C1 E0               [24] 4798 	movx	a,@dptr
      0010C2 60 21            [24] 4799 	jz	00109$
                           000FE7  4800 	Smain$main$550 ==.
                           000FE7  4801 	Smain$main$551 ==.
                                   4802 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:899: if( light_mode == LIGHT_OFF ) {
      0010C4 90 00 5A         [24] 4803 	mov	dptr,#_light_mode
      0010C7 E0               [24] 4804 	movx	a,@dptr
      0010C8 70 16            [24] 4805 	jnz	00107$
                           000FED  4806 	Smain$main$552 ==.
                           000FED  4807 	Smain$main$553 ==.
                                   4808 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:900: uart_counter ++;
      0010CA 90 00 85         [24] 4809 	mov	dptr,#_uart_counter
      0010CD E0               [24] 4810 	movx	a,@dptr
      0010CE 24 01            [12] 4811 	add	a,#0x01
      0010D0 F0               [24] 4812 	movx	@dptr,a
      0010D1 A3               [24] 4813 	inc	dptr
      0010D2 E0               [24] 4814 	movx	a,@dptr
      0010D3 34 00            [12] 4815 	addc	a,#0x00
      0010D5 F0               [24] 4816 	movx	@dptr,a
      0010D6 A3               [24] 4817 	inc	dptr
      0010D7 E0               [24] 4818 	movx	a,@dptr
      0010D8 34 00            [12] 4819 	addc	a,#0x00
      0010DA F0               [24] 4820 	movx	@dptr,a
      0010DB A3               [24] 4821 	inc	dptr
      0010DC E0               [24] 4822 	movx	a,@dptr
      0010DD 34 00            [12] 4823 	addc	a,#0x00
      0010DF F0               [24] 4824 	movx	@dptr,a
                           001003  4825 	Smain$main$554 ==.
      0010E0                       4826 00107$:
                           001003  4827 	Smain$main$555 ==.
                                   4828 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:902: process_uart();
      0010E0 12 09 18         [24] 4829 	lcall	_process_uart
                           001006  4830 	Smain$main$556 ==.
      0010E3 80 03            [24] 4831 	sjmp	00110$
      0010E5                       4832 00109$:
                           001008  4833 	Smain$main$557 ==.
                           001008  4834 	Smain$main$558 ==.
                                   4835 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:904: process_button();
      0010E5 12 0A 66         [24] 4836 	lcall	_process_button
                           00100B  4837 	Smain$main$559 ==.
      0010E8                       4838 00110$:
                           00100B  4839 	Smain$main$560 ==.
                                   4840 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:907: if( light_mode == LIGHT_OFF ) {
      0010E8 90 00 5A         [24] 4841 	mov	dptr,#_light_mode
      0010EB E0               [24] 4842 	movx	a,@dptr
      0010EC 70 67            [24] 4843 	jnz	00120$
                           001011  4844 	Smain$main$561 ==.
                           001011  4845 	Smain$main$562 ==.
                                   4846 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:908: if( (is_uart_mode && uart_counter > MAX_UART_COUNTER) || (!is_uart_mode && button_pressed < 1) ) {
      0010EE 90 00 5B         [24] 4847 	mov	dptr,#_is_uart_mode
      0010F1 E0               [24] 4848 	movx	a,@dptr
      0010F2 60 1B            [24] 4849 	jz	00118$
      0010F4 90 00 85         [24] 4850 	mov	dptr,#_uart_counter
      0010F7 E0               [24] 4851 	movx	a,@dptr
      0010F8 FC               [12] 4852 	mov	r4,a
      0010F9 A3               [24] 4853 	inc	dptr
      0010FA E0               [24] 4854 	movx	a,@dptr
      0010FB FD               [12] 4855 	mov	r5,a
      0010FC A3               [24] 4856 	inc	dptr
      0010FD E0               [24] 4857 	movx	a,@dptr
      0010FE FE               [12] 4858 	mov	r6,a
      0010FF A3               [24] 4859 	inc	dptr
      001100 E0               [24] 4860 	movx	a,@dptr
      001101 FF               [12] 4861 	mov	r7,a
      001102 C3               [12] 4862 	clr	c
      001103 74 88            [12] 4863 	mov	a,#0x88
      001105 9C               [12] 4864 	subb	a,r4
      001106 74 13            [12] 4865 	mov	a,#0x13
      001108 9D               [12] 4866 	subb	a,r5
      001109 E4               [12] 4867 	clr	a
      00110A 9E               [12] 4868 	subb	a,r6
      00110B E4               [12] 4869 	clr	a
      00110C 9F               [12] 4870 	subb	a,r7
      00110D 40 23            [24] 4871 	jc	00114$
      00110F                       4872 00118$:
      00110F 90 00 5B         [24] 4873 	mov	dptr,#_is_uart_mode
      001112 E0               [24] 4874 	movx	a,@dptr
      001113 70 40            [24] 4875 	jnz	00120$
      001115 90 00 7D         [24] 4876 	mov	dptr,#_button_pressed
      001118 E0               [24] 4877 	movx	a,@dptr
      001119 FC               [12] 4878 	mov	r4,a
      00111A A3               [24] 4879 	inc	dptr
      00111B E0               [24] 4880 	movx	a,@dptr
      00111C FD               [12] 4881 	mov	r5,a
      00111D A3               [24] 4882 	inc	dptr
      00111E E0               [24] 4883 	movx	a,@dptr
      00111F FE               [12] 4884 	mov	r6,a
      001120 A3               [24] 4885 	inc	dptr
      001121 E0               [24] 4886 	movx	a,@dptr
      001122 FF               [12] 4887 	mov	r7,a
      001123 C3               [12] 4888 	clr	c
      001124 EC               [12] 4889 	mov	a,r4
      001125 94 01            [12] 4890 	subb	a,#0x01
      001127 ED               [12] 4891 	mov	a,r5
      001128 94 00            [12] 4892 	subb	a,#0x00
      00112A EE               [12] 4893 	mov	a,r6
      00112B 94 00            [12] 4894 	subb	a,#0x00
      00112D EF               [12] 4895 	mov	a,r7
      00112E 94 00            [12] 4896 	subb	a,#0x00
      001130 50 23            [24] 4897 	jnc	00120$
      001132                       4898 00114$:
                           001055  4899 	Smain$main$563 ==.
                           001055  4900 	Smain$main$564 ==.
                                   4901 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:909: stop_leds();
      001132 12 0B 45         [24] 4902 	lcall	_stop_leds
                           001058  4903 	Smain$main$565 ==.
                                   4904 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:910: disable_ntc();
      001135 12 02 A2         [24] 4905 	lcall	_disable_ntc
                           00105B  4906 	Smain$main$566 ==.
                                   4907 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:912: clr_SCON_1_TI_1;
                                   4908 ;	assignBit
      001138 C2 F9            [12] 4909 	clr	_TI_1
                           00105D  4910 	Smain$main$567 ==.
                                   4911 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:913: clr_SCON_1_RI_1;
                                   4912 ;	assignBit
      00113A C2 F8            [12] 4913 	clr	_RI_1
                           00105F  4914 	Smain$main$568 ==.
                                   4915 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:914: set_PCON_IDLE;
      00113C 43 87 01         [24] 4916 	orl	_PCON,#0x01
                           001062  4917 	Smain$main$569 ==.
                                   4918 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:915: CALL_NOP;
      00113F 00               [12] 4919 	nop;
                           001063  4920 	Smain$main$570 ==.
                                   4921 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:916: CALL_NOP;
      001140 00               [12] 4922 	nop;
                           001064  4923 	Smain$main$571 ==.
                                   4924 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:917: clr_PCON_IDLE;
      001141 53 87 FE         [24] 4925 	anl	_PCON,#0xfe
                           001067  4926 	Smain$main$572 ==.
                                   4927 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:919: init_peripherals_but_button_n_uart();
      001144 12 02 F5         [24] 4928 	lcall	_init_peripherals_but_button_n_uart
                           00106A  4929 	Smain$main$573 ==.
                                   4930 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:920: if( is_uart_mode ) {
      001147 90 00 5B         [24] 4931 	mov	dptr,#_is_uart_mode
      00114A E0               [24] 4932 	movx	a,@dptr
      00114B 60 05            [24] 4933 	jz	00112$
                           001070  4934 	Smain$main$574 ==.
                           001070  4935 	Smain$main$575 ==.
                                   4936 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:921: uart_interrupt_init();
      00114D 12 02 24         [24] 4937 	lcall	_uart_interrupt_init
                           001073  4938 	Smain$main$576 ==.
      001150 80 03            [24] 4939 	sjmp	00120$
      001152                       4940 00112$:
                           001075  4941 	Smain$main$577 ==.
                           001075  4942 	Smain$main$578 ==.
                                   4943 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:923: button_interrupt_init();
      001152 12 02 81         [24] 4944 	lcall	_button_interrupt_init
                           001078  4945 	Smain$main$579 ==.
      001155                       4946 00120$:
                           001078  4947 	Smain$main$580 ==.
                                   4948 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:928: control_loop();
      001155 12 0F 21         [24] 4949 	lcall	_control_loop
                           00107B  4950 	Smain$main$581 ==.
                                   4951 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:930: Timer0_Delay(24000000, 1, PERIOD_UNIT);
      001158 90 00 01         [24] 4952 	mov	dptr,#_Timer0_Delay_PARM_2
      00115B 74 01            [12] 4953 	mov	a,#0x01
      00115D F0               [24] 4954 	movx	@dptr,a
      00115E E4               [12] 4955 	clr	a
      00115F A3               [24] 4956 	inc	dptr
      001160 F0               [24] 4957 	movx	@dptr,a
      001161 90 00 03         [24] 4958 	mov	dptr,#_Timer0_Delay_PARM_3
      001164 74 E8            [12] 4959 	mov	a,#0xe8
      001166 F0               [24] 4960 	movx	@dptr,a
      001167 74 03            [12] 4961 	mov	a,#0x03
      001169 A3               [24] 4962 	inc	dptr
      00116A F0               [24] 4963 	movx	@dptr,a
      00116B 90 36 00         [24] 4964 	mov	dptr,#0x3600
      00116E 75 F0 6E         [24] 4965 	mov	b,#0x6e
      001171 74 01            [12] 4966 	mov	a,#0x01
      001173 12 00 DD         [24] 4967 	lcall	_Timer0_Delay
                           001099  4968 	Smain$main$582 ==.
                                   4969 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:932: wdt_clear();
      001176 12 10 2F         [24] 4970 	lcall	_wdt_clear
                           00109C  4971 	Smain$main$583 ==.
      001179 02 10 BE         [24] 4972 	ljmp	00122$
                           00109F  4973 	Smain$main$584 ==.
                                   4974 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c:934: }
                           00109F  4975 	Smain$main$585 ==.
                           00109F  4976 	XG$main$0$0 ==.
      00117C 22               [24] 4977 	ret
                           0010A0  4978 	Smain$main$586 ==.
                                   4979 	.area CSEG    (CODE)
                                   4980 	.area CONST   (CODE)
                           000000  4981 G$max_amp$0_0$0 == .
      00199D                       4982 _max_amp:
      00199D 00                    4983 	.db #0x00	; 0
      00199E 00                    4984 	.db #0x00	; 0
      00199F 00                    4985 	.db #0x00	; 0
      0019A0 87                    4986 	.db #0x87	; 135
      0019A1 36                    4987 	.db #0x36	; 54	'6'
      0019A2 5A                    4988 	.db #0x5a	; 90	'Z'
      0019A3 5A                    4989 	.db #0x5a	; 90	'Z'
      0019A4 00                    4990 	.db #0x00	; 0
      0019A5 36                    4991 	.db #0x36	; 54	'6'
      0019A6 00                    4992 	.db #0x00	; 0
      0019A7 00                    4993 	.db #0x00	; 0
      0019A8 00                    4994 	.db #0x00	; 0
      0019A9 00                    4995 	.db #0x00	; 0
      0019AA 2D                    4996 	.db #0x2d	; 45
      0019AB 00                    4997 	.db #0x00	; 0
      0019AC 87                    4998 	.db #0x87	; 135
      0019AD 00                    4999 	.db #0x00	; 0
      0019AE 2D                    5000 	.db #0x2d	; 45
      0019AF 2D                    5001 	.db #0x2d	; 45
      0019B0 00                    5002 	.db #0x00	; 0
                           000014  5003 G$min_amp$0_0$0 == .
      0019B1                       5004 _min_amp:
      0019B1 2D                    5005 	.db #0x2d	; 45
      0019B2 2D                    5006 	.db #0x2d	; 45
                           000016  5007 G$flashing$0_0$0 == .
      0019B3                       5008 _flashing:
      0019B3 00                    5009 	.db #0x00	; 0
      0019B4 00                    5010 	.db #0x00	; 0
      0019B5 00                    5011 	.db #0x00	; 0
      0019B6 01                    5012 	.db #0x01	; 1
      0019B7 01                    5013 	.db #0x01	; 1
      0019B8 00                    5014 	.db #0x00	; 0
      0019B9 01                    5015 	.db #0x01	; 1
      0019BA 00                    5016 	.db #0x00	; 0
      0019BB 00                    5017 	.db #0x00	; 0
      0019BC 00                    5018 	.db #0x00	; 0
                           000020  5019 G$temp_controlling$0_0$0 == .
      0019BD                       5020 _temp_controlling:
      0019BD 00                    5021 	.db #0x00	; 0
      0019BE 01                    5022 	.db #0x01	; 1
      0019BF 01                    5023 	.db #0x01	; 1
      0019C0 00                    5024 	.db #0x00	; 0
      0019C1 00                    5025 	.db #0x00	; 0
      0019C2 00                    5026 	.db #0x00	; 0
      0019C3 00                    5027 	.db #0x00	; 0
      0019C4 01                    5028 	.db #0x01	; 1
      0019C5 00                    5029 	.db #0x00	; 0
      0019C6 01                    5030 	.db #0x01	; 1
                           00002A  5031 G$next_mode$0_0$0 == .
      0019C7                       5032 _next_mode:
      0019C7 01                    5033 	.db #0x01	; 1
      0019C8 08                    5034 	.db #0x08	; 8
      0019C9 01                    5035 	.db #0x01	; 1
      0019CA 01                    5036 	.db #0x01	; 1
      0019CB 01                    5037 	.db #0x01	; 1
      0019CC 00                    5038 	.db #0x00	; 0
      0019CD 09                    5039 	.db #0x09	; 9
      0019CE 01                    5040 	.db #0x01	; 1
      0019CF 06                    5041 	.db #0x06	; 6
      0019D0 02                    5042 	.db #0x02	; 2
                                   5043 	.area XINIT   (CODE)
                           000000  5044 Fmain$__xinit_light_mode$0_0$0 == .
      0019D1                       5045 __xinit__light_mode:
      0019D1 00                    5046 	.db #0x00	; 0
                           000001  5047 Fmain$__xinit_is_uart_mode$0_0$0 == .
      0019D2                       5048 __xinit__is_uart_mode:
      0019D2 00                    5049 	.db #0x00	;  0
                           000002  5050 Fmain$__xinit_flashing_on$0_0$0 == .
      0019D3                       5051 __xinit__flashing_on:
      0019D3 01                    5052 	.db #0x01	;  1
                           000003  5053 Fmain$__xinit_flashing_count$0_0$0 == .
      0019D4                       5054 __xinit__flashing_count:
      0019D4 00 00                 5055 	.byte #0x00, #0x00	; 0
                           000005  5056 Fmain$__xinit_pwm$0_0$0 == .
      0019D6                       5057 __xinit__pwm:
      0019D6 00 00                 5058 	.byte #0x00, #0x00	; 0
      0019D8 00 00                 5059 	.byte #0x00, #0x00	; 0
                           000009  5060 Fmain$__xinit_light_control_mode$0_0$0 == .
      0019DA                       5061 __xinit__light_control_mode:
      0019DA 00                    5062 	.db #0x00	;  0
      0019DB 00                    5063 	.db #0x00	;  0
                           00000B  5064 Fmain$__xinit_sample_count$0_0$0 == .
      0019DC                       5065 __xinit__sample_count:
      0019DC 00                    5066 	.db #0x00	; 0
                           00000C  5067 Fmain$__xinit_acc_amp$0_0$0 == .
      0019DD                       5068 __xinit__acc_amp:
      0019DD 00 00 00 00           5069 	.byte #0x00, #0x00, #0x00, #0x00	; 0
      0019E1 00 00 00 00           5070 	.byte #0x00, #0x00, #0x00, #0x00	; 0
                           000014  5071 Fmain$__xinit_acc_temp$0_0$0 == .
      0019E5                       5072 __xinit__acc_temp:
      0019E5 00 00 00 00           5073 	.byte #0x00, #0x00, #0x00, #0x00	; 0
                           000018  5074 Fmain$__xinit_cur_amp$0_0$0 == .
      0019E9                       5075 __xinit__cur_amp:
      0019E9 00 00                 5076 	.byte #0x00, #0x00	; 0
      0019EB 00 00                 5077 	.byte #0x00, #0x00	; 0
                           00001C  5078 Fmain$__xinit_cur_temp$0_0$0 == .
      0019ED                       5079 __xinit__cur_temp:
      0019ED 00 00                 5080 	.byte #0x00, #0x00	; 0
                           00001E  5081 Fmain$__xinit_good_amp_count$0_0$0 == .
      0019EF                       5082 __xinit__good_amp_count:
      0019EF 00                    5083 	.db #0x00	; 0
      0019F0 00                    5084 	.db #0x00	; 0
                           000020  5085 Fmain$__xinit_uart1_next_idx$0_0$0 == .
      0019F1                       5086 __xinit__uart1_next_idx:
      0019F1 00                    5087 	.db #0x00	; 0
                           000021  5088 Fmain$__xinit_uart1_read_idx$0_0$0 == .
      0019F2                       5089 __xinit__uart1_read_idx:
      0019F2 00                    5090 	.db #0x00	; 0
                           000022  5091 Fmain$__xinit_uart_flag$0_0$0 == .
      0019F3                       5092 __xinit__uart_flag:
      0019F3 00                    5093 	.db #0x00	;  0
                           000023  5094 Fmain$__xinit_button_pressed$0_0$0 == .
      0019F4                       5095 __xinit__button_pressed:
      0019F4 00 00 00 00           5096 	.byte #0x00, #0x00, #0x00, #0x00	; 0
                           000027  5097 Fmain$__xinit_button_unpressed$0_0$0 == .
      0019F8                       5098 __xinit__button_unpressed:
      0019F8 00 00 00 00           5099 	.byte #0x00, #0x00, #0x00, #0x00	; 0
                           00002B  5100 Fmain$__xinit_uart_counter$0_0$0 == .
      0019FC                       5101 __xinit__uart_counter:
      0019FC 00 00 00 00           5102 	.byte #0x00, #0x00, #0x00, #0x00	; 0
                           00002F  5103 Fmain$__xinit_uart_rx_state$0_0$0 == .
      001A00                       5104 __xinit__uart_rx_state:
      001A00 00                    5105 	.db #0x00	; 0
                           000030  5106 Fmain$__xinit_lamp_state$0_0$0 == .
      001A01                       5107 __xinit__lamp_state:
      001A01 00                    5108 	.db #0x00	; 0
                           000031  5109 Fmain$__xinit_log_counter$0_0$0 == .
      001A02                       5110 __xinit__log_counter:
      001A02 00 00 00 00           5111 	.byte #0x00, #0x00, #0x00, #0x00	; 0
                                   5112 	.area INITIALIZER
                                   5113 	.area CABS    (ABS,CODE)
                                   5114 
                                   5115 	.area .debug_line (NOLOAD)
      000000 00 00 0A 69           5116 	.dw	0,Ldebug_line_end-Ldebug_line_start
      000004                       5117 Ldebug_line_start:
      000004 00 02                 5118 	.dw	2
      000006 00 00 00 B2           5119 	.dw	0,Ldebug_line_stmt-6-Ldebug_line_start
      00000A 01                    5120 	.db	1
      00000B 01                    5121 	.db	1
      00000C FB                    5122 	.db	-5
      00000D 0F                    5123 	.db	15
      00000E 0A                    5124 	.db	10
      00000F 00                    5125 	.db	0
      000010 01                    5126 	.db	1
      000011 01                    5127 	.db	1
      000012 01                    5128 	.db	1
      000013 01                    5129 	.db	1
      000014 00                    5130 	.db	0
      000015 00                    5131 	.db	0
      000016 00                    5132 	.db	0
      000017 01                    5133 	.db	1
      000018 2F 2E 2E 2F 69 6E 63  5134 	.ascii "/../include/mcs51"
             6C 75 64 65 2F 6D 63
             73 35 31
      000029 00                    5135 	.db	0
      00002A 2F 2E 2E 2F 69 6E 63  5136 	.ascii "/../include"
             6C 75 64 65
      000035 00                    5137 	.db	0
      000036 00                    5138 	.db	0
      000037 43 3A 2F 55 73 65 72  5139 	.ascii "C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c"
             73 2F 47 6F 6F 73 6D
             6F 73 2F 44 6F 77 6E
             6C 6F 61 64 73 2F 4D
             53 35 31 5F 42 53 50
             2D 6D 61 73 74 65 72
             2F 4D 53 35 31 5F 42
             53 50 2D 6D 61 73 74
             65 72 2F 4D 53 35 31
             46 42 39 41 45 5F 4D
             53 35 31 58 42 39 41
             45 5F 4D 53 35 31 58
             42 39 42 45 2F 53 61
             6D 70 6C 65 43 6F 64
             65 2F 54 65 6D 70 6C
             61 74 65 2F 50 72 6F
             6A 65 63 74 5F 74 65
             6D 70 2F 6D 61 69 6E
             2E 63
      0000B7 00                    5140 	.db	0
      0000B8 00                    5141 	.uleb128	0
      0000B9 00                    5142 	.uleb128	0
      0000BA 00                    5143 	.uleb128	0
      0000BB 00                    5144 	.db	0
      0000BC                       5145 Ldebug_line_stmt:
      0000BC 00                    5146 	.db	0
      0000BD 05                    5147 	.uleb128	5
      0000BE 02                    5148 	.db	2
      0000BF 00 00 00 DD           5149 	.dw	0,(Smain$Timer0_Delay$0)
      0000C3 03                    5150 	.db	3
      0000C4 FD 01                 5151 	.sleb128	253
      0000C6 01                    5152 	.db	1
      0000C7 09                    5153 	.db	9
      0000C8 00 15                 5154 	.dw	Smain$Timer0_Delay$2-Smain$Timer0_Delay$0
      0000CA 03                    5155 	.db	3
      0000CB 04                    5156 	.sleb128	4
      0000CC 01                    5157 	.db	1
      0000CD 09                    5158 	.db	9
      0000CE 00 03                 5159 	.dw	Smain$Timer0_Delay$3-Smain$Timer0_Delay$2
      0000D0 03                    5160 	.db	3
      0000D1 01                    5161 	.sleb128	1
      0000D2 01                    5162 	.db	1
      0000D3 09                    5163 	.db	9
      0000D4 00 06                 5164 	.dw	Smain$Timer0_Delay$4-Smain$Timer0_Delay$3
      0000D6 03                    5165 	.db	3
      0000D7 01                    5166 	.sleb128	1
      0000D8 01                    5167 	.db	1
      0000D9 09                    5168 	.db	9
      0000DA 00 7B                 5169 	.dw	Smain$Timer0_Delay$5-Smain$Timer0_Delay$4
      0000DC 03                    5170 	.db	3
      0000DD 01                    5171 	.sleb128	1
      0000DE 01                    5172 	.db	1
      0000DF 09                    5173 	.db	9
      0000E0 00 0E                 5174 	.dw	Smain$Timer0_Delay$6-Smain$Timer0_Delay$5
      0000E2 03                    5175 	.db	3
      0000E3 02                    5176 	.sleb128	2
      0000E4 01                    5177 	.db	1
      0000E5 09                    5178 	.db	9
      0000E6 00 0C                 5179 	.dw	Smain$Timer0_Delay$8-Smain$Timer0_Delay$6
      0000E8 03                    5180 	.db	3
      0000E9 02                    5181 	.sleb128	2
      0000EA 01                    5182 	.db	1
      0000EB 09                    5183 	.db	9
      0000EC 00 02                 5184 	.dw	Smain$Timer0_Delay$9-Smain$Timer0_Delay$8
      0000EE 03                    5185 	.db	3
      0000EF 01                    5186 	.sleb128	1
      0000F0 01                    5187 	.db	1
      0000F1 09                    5188 	.db	9
      0000F2 00 02                 5189 	.dw	Smain$Timer0_Delay$10-Smain$Timer0_Delay$9
      0000F4 03                    5190 	.db	3
      0000F5 01                    5191 	.sleb128	1
      0000F6 01                    5192 	.db	1
      0000F7 09                    5193 	.db	9
      0000F8 00 02                 5194 	.dw	Smain$Timer0_Delay$11-Smain$Timer0_Delay$10
      0000FA 03                    5195 	.db	3
      0000FB 01                    5196 	.sleb128	1
      0000FC 01                    5197 	.db	1
      0000FD 09                    5198 	.db	9
      0000FE 00 00                 5199 	.dw	Smain$Timer0_Delay$12-Smain$Timer0_Delay$11
      000100 03                    5200 	.db	3
      000101 01                    5201 	.sleb128	1
      000102 01                    5202 	.db	1
      000103 09                    5203 	.db	9
      000104 00 05                 5204 	.dw	Smain$Timer0_Delay$13-Smain$Timer0_Delay$12
      000106 03                    5205 	.db	3
      000107 01                    5206 	.sleb128	1
      000108 01                    5207 	.db	1
      000109 09                    5208 	.db	9
      00010A 00 02                 5209 	.dw	Smain$Timer0_Delay$14-Smain$Timer0_Delay$13
      00010C 03                    5210 	.db	3
      00010D 01                    5211 	.sleb128	1
      00010E 01                    5212 	.db	1
      00010F 09                    5213 	.db	9
      000110 00 07                 5214 	.dw	Smain$Timer0_Delay$16-Smain$Timer0_Delay$14
      000112 03                    5215 	.db	3
      000113 03                    5216 	.sleb128	3
      000114 01                    5217 	.db	1
      000115 09                    5218 	.db	9
      000116 00 01                 5219 	.dw	1+Smain$Timer0_Delay$17-Smain$Timer0_Delay$16
      000118 00                    5220 	.db	0
      000119 01                    5221 	.uleb128	1
      00011A 01                    5222 	.db	1
      00011B 00                    5223 	.db	0
      00011C 05                    5224 	.uleb128	5
      00011D 02                    5225 	.db	2
      00011E 00 00 01 A5           5226 	.dw	0,(Smain$SerialPort1_ISR$19)
      000122 03                    5227 	.db	3
      000123 A3 02                 5228 	.sleb128	291
      000125 01                    5229 	.db	1
      000126 09                    5230 	.db	9
      000127 00 1F                 5231 	.dw	Smain$SerialPort1_ISR$21-Smain$SerialPort1_ISR$19
      000129 03                    5232 	.db	3
      00012A 02                    5233 	.sleb128	2
      00012B 01                    5234 	.db	1
      00012C 09                    5235 	.db	9
      00012D 00 02                 5236 	.dw	Smain$SerialPort1_ISR$22-Smain$SerialPort1_ISR$21
      00012F 03                    5237 	.db	3
      000130 02                    5238 	.sleb128	2
      000131 01                    5239 	.db	1
      000132 09                    5240 	.db	9
      000133 00 03                 5241 	.dw	Smain$SerialPort1_ISR$24-Smain$SerialPort1_ISR$22
      000135 03                    5242 	.db	3
      000136 02                    5243 	.sleb128	2
      000137 01                    5244 	.db	1
      000138 09                    5245 	.db	9
      000139 00 10                 5246 	.dw	Smain$SerialPort1_ISR$25-Smain$SerialPort1_ISR$24
      00013B 03                    5247 	.db	3
      00013C 01                    5248 	.sleb128	1
      00013D 01                    5249 	.db	1
      00013E 09                    5250 	.db	9
      00013F 00 25                 5251 	.dw	Smain$SerialPort1_ISR$27-Smain$SerialPort1_ISR$25
      000141 03                    5252 	.db	3
      000142 01                    5253 	.sleb128	1
      000143 01                    5254 	.db	1
      000144 09                    5255 	.db	9
      000145 00 02                 5256 	.dw	Smain$SerialPort1_ISR$28-Smain$SerialPort1_ISR$27
      000147 03                    5257 	.db	3
      000148 03                    5258 	.sleb128	3
      000149 01                    5259 	.db	1
      00014A 09                    5260 	.db	9
      00014B 00 00                 5261 	.dw	Smain$SerialPort1_ISR$30-Smain$SerialPort1_ISR$28
      00014D 03                    5262 	.db	3
      00014E 02                    5263 	.sleb128	2
      00014F 01                    5264 	.db	1
      000150 09                    5265 	.db	9
      000151 00 05                 5266 	.dw	Smain$SerialPort1_ISR$32-Smain$SerialPort1_ISR$30
      000153 03                    5267 	.db	3
      000154 04                    5268 	.sleb128	4
      000155 01                    5269 	.db	1
      000156 09                    5270 	.db	9
      000157 00 02                 5271 	.dw	Smain$SerialPort1_ISR$33-Smain$SerialPort1_ISR$32
      000159 03                    5272 	.db	3
      00015A 01                    5273 	.sleb128	1
      00015B 01                    5274 	.db	1
      00015C 09                    5275 	.db	9
      00015D 00 1D                 5276 	.dw	1+Smain$SerialPort1_ISR$34-Smain$SerialPort1_ISR$33
      00015F 00                    5277 	.db	0
      000160 01                    5278 	.uleb128	1
      000161 01                    5279 	.db	1
      000162 00                    5280 	.db	0
      000163 05                    5281 	.uleb128	5
      000164 02                    5282 	.db	2
      000165 00 00 02 24           5283 	.dw	0,(Smain$uart_interrupt_init$36)
      000169 03                    5284 	.db	3
      00016A B9 02                 5285 	.sleb128	313
      00016C 01                    5286 	.db	1
      00016D 09                    5287 	.db	9
      00016E 00 00                 5288 	.dw	Smain$uart_interrupt_init$38-Smain$uart_interrupt_init$36
      000170 03                    5289 	.db	3
      000171 02                    5290 	.sleb128	2
      000172 01                    5291 	.db	1
      000173 09                    5292 	.db	9
      000174 00 20                 5293 	.dw	Smain$uart_interrupt_init$39-Smain$uart_interrupt_init$38
      000176 03                    5294 	.db	3
      000177 02                    5295 	.sleb128	2
      000178 01                    5296 	.db	1
      000179 09                    5297 	.db	9
      00017A 00 03                 5298 	.dw	Smain$uart_interrupt_init$40-Smain$uart_interrupt_init$39
      00017C 03                    5299 	.db	3
      00017D 01                    5300 	.sleb128	1
      00017E 01                    5301 	.db	1
      00017F 09                    5302 	.db	9
      000180 00 01                 5303 	.dw	1+Smain$uart_interrupt_init$41-Smain$uart_interrupt_init$40
      000182 00                    5304 	.db	0
      000183 01                    5305 	.uleb128	1
      000184 01                    5306 	.db	1
      000185 00                    5307 	.db	0
      000186 05                    5308 	.uleb128	5
      000187 02                    5309 	.db	2
      000188 00 00 02 48           5310 	.dw	0,(Smain$PinInterrupt_ISR$43)
      00018C 03                    5311 	.db	3
      00018D CB 02                 5312 	.sleb128	331
      00018F 01                    5313 	.db	1
      000190 09                    5314 	.db	9
      000191 00 08                 5315 	.dw	Smain$PinInterrupt_ISR$45-Smain$PinInterrupt_ISR$43
      000193 03                    5316 	.db	3
      000194 02                    5317 	.sleb128	2
      000195 01                    5318 	.db	1
      000196 09                    5319 	.db	9
      000197 00 02                 5320 	.dw	Smain$PinInterrupt_ISR$46-Smain$PinInterrupt_ISR$45
      000199 03                    5321 	.db	3
      00019A 02                    5322 	.sleb128	2
      00019B 01                    5323 	.db	1
      00019C 09                    5324 	.db	9
      00019D 00 14                 5325 	.dw	Smain$PinInterrupt_ISR$48-Smain$PinInterrupt_ISR$46
      00019F 03                    5326 	.db	3
      0001A0 01                    5327 	.sleb128	1
      0001A1 01                    5328 	.db	1
      0001A2 09                    5329 	.db	9
      0001A3 00 0D                 5330 	.dw	Smain$PinInterrupt_ISR$50-Smain$PinInterrupt_ISR$48
      0001A5 03                    5331 	.db	3
      0001A6 03                    5332 	.sleb128	3
      0001A7 01                    5333 	.db	1
      0001A8 09                    5334 	.db	9
      0001A9 00 03                 5335 	.dw	Smain$PinInterrupt_ISR$51-Smain$PinInterrupt_ISR$50
      0001AB 03                    5336 	.db	3
      0001AC 02                    5337 	.sleb128	2
      0001AD 01                    5338 	.db	1
      0001AE 09                    5339 	.db	9
      0001AF 00 02                 5340 	.dw	Smain$PinInterrupt_ISR$52-Smain$PinInterrupt_ISR$51
      0001B1 03                    5341 	.db	3
      0001B2 01                    5342 	.sleb128	1
      0001B3 01                    5343 	.db	1
      0001B4 09                    5344 	.db	9
      0001B5 00 09                 5345 	.dw	1+Smain$PinInterrupt_ISR$53-Smain$PinInterrupt_ISR$52
      0001B7 00                    5346 	.db	0
      0001B8 01                    5347 	.uleb128	1
      0001B9 01                    5348 	.db	1
      0001BA 00                    5349 	.db	0
      0001BB 05                    5350 	.uleb128	5
      0001BC 02                    5351 	.db	2
      0001BD 00 00 02 81           5352 	.dw	0,(Smain$button_interrupt_init$55)
      0001C1 03                    5353 	.db	3
      0001C2 DA 02                 5354 	.sleb128	346
      0001C4 01                    5355 	.db	1
      0001C5 09                    5356 	.db	9
      0001C6 00 00                 5357 	.dw	Smain$button_interrupt_init$57-Smain$button_interrupt_init$55
      0001C8 03                    5358 	.db	3
      0001C9 03                    5359 	.sleb128	3
      0001CA 01                    5360 	.db	1
      0001CB 09                    5361 	.db	9
      0001CC 00 06                 5362 	.dw	Smain$button_interrupt_init$58-Smain$button_interrupt_init$57
      0001CE 03                    5363 	.db	3
      0001CF 02                    5364 	.sleb128	2
      0001D0 01                    5365 	.db	1
      0001D1 09                    5366 	.db	9
      0001D2 00 02                 5367 	.dw	Smain$button_interrupt_init$59-Smain$button_interrupt_init$58
      0001D4 03                    5368 	.db	3
      0001D5 02                    5369 	.sleb128	2
      0001D6 01                    5370 	.db	1
      0001D7 09                    5371 	.db	9
      0001D8 00 0C                 5372 	.dw	Smain$button_interrupt_init$60-Smain$button_interrupt_init$59
      0001DA 03                    5373 	.db	3
      0001DB 01                    5374 	.sleb128	1
      0001DC 01                    5375 	.db	1
      0001DD 09                    5376 	.db	9
      0001DE 00 03                 5377 	.dw	Smain$button_interrupt_init$61-Smain$button_interrupt_init$60
      0001E0 03                    5378 	.db	3
      0001E1 01                    5379 	.sleb128	1
      0001E2 01                    5380 	.db	1
      0001E3 09                    5381 	.db	9
      0001E4 00 01                 5382 	.dw	1+Smain$button_interrupt_init$62-Smain$button_interrupt_init$61
      0001E6 00                    5383 	.db	0
      0001E7 01                    5384 	.uleb128	1
      0001E8 01                    5385 	.db	1
      0001E9 00                    5386 	.db	0
      0001EA 05                    5387 	.uleb128	5
      0001EB 02                    5388 	.db	2
      0001EC 00 00 02 99           5389 	.dw	0,(Smain$enable_ntc$64)
      0001F0 03                    5390 	.db	3
      0001F1 E5 02                 5391 	.sleb128	357
      0001F3 01                    5392 	.db	1
      0001F4 09                    5393 	.db	9
      0001F5 00 00                 5394 	.dw	Smain$enable_ntc$66-Smain$enable_ntc$64
      0001F7 03                    5395 	.db	3
      0001F8 03                    5396 	.sleb128	3
      0001F9 01                    5397 	.db	1
      0001FA 09                    5398 	.db	9
      0001FB 00 06                 5399 	.dw	Smain$enable_ntc$67-Smain$enable_ntc$66
      0001FD 03                    5400 	.db	3
      0001FE 01                    5401 	.sleb128	1
      0001FF 01                    5402 	.db	1
      000200 09                    5403 	.db	9
      000201 00 02                 5404 	.dw	Smain$enable_ntc$68-Smain$enable_ntc$67
      000203 03                    5405 	.db	3
      000204 02                    5406 	.sleb128	2
      000205 01                    5407 	.db	1
      000206 09                    5408 	.db	9
      000207 00 01                 5409 	.dw	1+Smain$enable_ntc$69-Smain$enable_ntc$68
      000209 00                    5410 	.db	0
      00020A 01                    5411 	.uleb128	1
      00020B 01                    5412 	.db	1
      00020C 00                    5413 	.db	0
      00020D 05                    5414 	.uleb128	5
      00020E 02                    5415 	.db	2
      00020F 00 00 02 A2           5416 	.dw	0,(Smain$disable_ntc$71)
      000213 03                    5417 	.db	3
      000214 ED 02                 5418 	.sleb128	365
      000216 01                    5419 	.db	1
      000217 09                    5420 	.db	9
      000218 00 00                 5421 	.dw	Smain$disable_ntc$73-Smain$disable_ntc$71
      00021A 03                    5422 	.db	3
      00021B 03                    5423 	.sleb128	3
      00021C 01                    5424 	.db	1
      00021D 09                    5425 	.db	9
      00021E 00 06                 5426 	.dw	Smain$disable_ntc$74-Smain$disable_ntc$73
      000220 03                    5427 	.db	3
      000221 01                    5428 	.sleb128	1
      000222 01                    5429 	.db	1
      000223 09                    5430 	.db	9
      000224 00 02                 5431 	.dw	Smain$disable_ntc$75-Smain$disable_ntc$74
      000226 03                    5432 	.db	3
      000227 02                    5433 	.sleb128	2
      000228 01                    5434 	.db	1
      000229 09                    5435 	.db	9
      00022A 00 01                 5436 	.dw	1+Smain$disable_ntc$76-Smain$disable_ntc$75
      00022C 00                    5437 	.db	0
      00022D 01                    5438 	.uleb128	1
      00022E 01                    5439 	.db	1
      00022F 00                    5440 	.db	0
      000230 05                    5441 	.uleb128	5
      000231 02                    5442 	.db	2
      000232 00 00 02 AB           5443 	.dw	0,(Smain$init_sample$78)
      000236 03                    5444 	.db	3
      000237 F5 02                 5445 	.sleb128	373
      000239 01                    5446 	.db	1
      00023A 09                    5447 	.db	9
      00023B 00 00                 5448 	.dw	Smain$init_sample$80-Smain$init_sample$78
      00023D 03                    5449 	.db	3
      00023E 02                    5450 	.sleb128	2
      00023F 01                    5451 	.db	1
      000240 09                    5452 	.db	9
      000241 00 05                 5453 	.dw	Smain$init_sample$81-Smain$init_sample$80
      000243 03                    5454 	.db	3
      000244 01                    5455 	.sleb128	1
      000245 01                    5456 	.db	1
      000246 09                    5457 	.db	9
      000247 00 0A                 5458 	.dw	Smain$init_sample$83-Smain$init_sample$81
      000249 03                    5459 	.db	3
      00024A 02                    5460 	.sleb128	2
      00024B 01                    5461 	.db	1
      00024C 09                    5462 	.db	9
      00024D 00 0F                 5463 	.dw	Smain$init_sample$86-Smain$init_sample$83
      00024F 03                    5464 	.db	3
      000250 01                    5465 	.sleb128	1
      000251 01                    5466 	.db	1
      000252 09                    5467 	.db	9
      000253 00 1E                 5468 	.dw	Smain$init_sample$88-Smain$init_sample$86
      000255 03                    5469 	.db	3
      000256 7F                    5470 	.sleb128	-1
      000257 01                    5471 	.db	1
      000258 09                    5472 	.db	9
      000259 00 07                 5473 	.dw	Smain$init_sample$90-Smain$init_sample$88
      00025B 03                    5474 	.db	3
      00025C 04                    5475 	.sleb128	4
      00025D 01                    5476 	.db	1
      00025E 09                    5477 	.db	9
      00025F 00 06                 5478 	.dw	Smain$init_sample$91-Smain$init_sample$90
      000261 03                    5479 	.db	3
      000262 01                    5480 	.sleb128	1
      000263 01                    5481 	.db	1
      000264 09                    5482 	.db	9
      000265 00 01                 5483 	.dw	1+Smain$init_sample$92-Smain$init_sample$91
      000267 00                    5484 	.db	0
      000268 01                    5485 	.uleb128	1
      000269 01                    5486 	.db	1
      00026A 00                    5487 	.db	0
      00026B 05                    5488 	.uleb128	5
      00026C 02                    5489 	.db	2
      00026D 00 00 02 F5           5490 	.dw	0,(Smain$init_peripherals_but_button_n_uart$94)
      000271 03                    5491 	.db	3
      000272 83 03                 5492 	.sleb128	387
      000274 01                    5493 	.db	1
      000275 09                    5494 	.db	9
      000276 00 00                 5495 	.dw	Smain$init_peripherals_but_button_n_uart$96-Smain$init_peripherals_but_button_n_uart$94
      000278 03                    5496 	.db	3
      000279 02                    5497 	.sleb128	2
      00027A 01                    5498 	.db	1
      00027B 09                    5499 	.db	9
      00027C 00 02                 5500 	.dw	Smain$init_peripherals_but_button_n_uart$97-Smain$init_peripherals_but_button_n_uart$96
      00027E 03                    5501 	.db	3
      00027F 03                    5502 	.sleb128	3
      000280 01                    5503 	.db	1
      000281 09                    5504 	.db	9
      000282 00 03                 5505 	.dw	Smain$init_peripherals_but_button_n_uart$98-Smain$init_peripherals_but_button_n_uart$97
      000284 03                    5506 	.db	3
      000285 01                    5507 	.sleb128	1
      000286 01                    5508 	.db	1
      000287 09                    5509 	.db	9
      000288 00 03                 5510 	.dw	Smain$init_peripherals_but_button_n_uart$99-Smain$init_peripherals_but_button_n_uart$98
      00028A 03                    5511 	.db	3
      00028B 02                    5512 	.sleb128	2
      00028C 01                    5513 	.db	1
      00028D 09                    5514 	.db	9
      00028E 00 06                 5515 	.dw	Smain$init_peripherals_but_button_n_uart$100-Smain$init_peripherals_but_button_n_uart$99
      000290 03                    5516 	.db	3
      000291 04                    5517 	.sleb128	4
      000292 01                    5518 	.db	1
      000293 09                    5519 	.db	9
      000294 00 03                 5520 	.dw	Smain$init_peripherals_but_button_n_uart$101-Smain$init_peripherals_but_button_n_uart$100
      000296 03                    5521 	.db	3
      000297 01                    5522 	.sleb128	1
      000298 01                    5523 	.db	1
      000299 09                    5524 	.db	9
      00029A 00 06                 5525 	.dw	Smain$init_peripherals_but_button_n_uart$102-Smain$init_peripherals_but_button_n_uart$101
      00029C 03                    5526 	.db	3
      00029D 02                    5527 	.sleb128	2
      00029E 01                    5528 	.db	1
      00029F 09                    5529 	.db	9
      0002A0 00 03                 5530 	.dw	Smain$init_peripherals_but_button_n_uart$103-Smain$init_peripherals_but_button_n_uart$102
      0002A2 03                    5531 	.db	3
      0002A3 01                    5532 	.sleb128	1
      0002A4 01                    5533 	.db	1
      0002A5 09                    5534 	.db	9
      0002A6 00 06                 5535 	.dw	Smain$init_peripherals_but_button_n_uart$104-Smain$init_peripherals_but_button_n_uart$103
      0002A8 03                    5536 	.db	3
      0002A9 02                    5537 	.sleb128	2
      0002AA 01                    5538 	.db	1
      0002AB 09                    5539 	.db	9
      0002AC 00 29                 5540 	.dw	Smain$init_peripherals_but_button_n_uart$105-Smain$init_peripherals_but_button_n_uart$104
      0002AE 03                    5541 	.db	3
      0002AF 01                    5542 	.sleb128	1
      0002B0 01                    5543 	.db	1
      0002B1 09                    5544 	.db	9
      0002B2 00 06                 5545 	.dw	Smain$init_peripherals_but_button_n_uart$106-Smain$init_peripherals_but_button_n_uart$105
      0002B4 03                    5546 	.db	3
      0002B5 02                    5547 	.sleb128	2
      0002B6 01                    5548 	.db	1
      0002B7 09                    5549 	.db	9
      0002B8 00 02                 5550 	.dw	Smain$init_peripherals_but_button_n_uart$107-Smain$init_peripherals_but_button_n_uart$106
      0002BA 03                    5551 	.db	3
      0002BB 01                    5552 	.sleb128	1
      0002BC 01                    5553 	.db	1
      0002BD 09                    5554 	.db	9
      0002BE 00 13                 5555 	.dw	Smain$init_peripherals_but_button_n_uart$108-Smain$init_peripherals_but_button_n_uart$107
      0002C0 03                    5556 	.db	3
      0002C1 02                    5557 	.sleb128	2
      0002C2 01                    5558 	.db	1
      0002C3 09                    5559 	.db	9
      0002C4 00 03                 5560 	.dw	Smain$init_peripherals_but_button_n_uart$109-Smain$init_peripherals_but_button_n_uart$108
      0002C6 03                    5561 	.db	3
      0002C7 01                    5562 	.sleb128	1
      0002C8 01                    5563 	.db	1
      0002C9 09                    5564 	.db	9
      0002CA 00 03                 5565 	.dw	Smain$init_peripherals_but_button_n_uart$110-Smain$init_peripherals_but_button_n_uart$109
      0002CC 03                    5566 	.db	3
      0002CD 02                    5567 	.sleb128	2
      0002CE 01                    5568 	.db	1
      0002CF 09                    5569 	.db	9
      0002D0 00 03                 5570 	.dw	Smain$init_peripherals_but_button_n_uart$111-Smain$init_peripherals_but_button_n_uart$110
      0002D2 03                    5571 	.db	3
      0002D3 01                    5572 	.sleb128	1
      0002D4 01                    5573 	.db	1
      0002D5 09                    5574 	.db	9
      0002D6 00 03                 5575 	.dw	Smain$init_peripherals_but_button_n_uart$112-Smain$init_peripherals_but_button_n_uart$111
      0002D8 03                    5576 	.db	3
      0002D9 01                    5577 	.sleb128	1
      0002DA 01                    5578 	.db	1
      0002DB 09                    5579 	.db	9
      0002DC 00 03                 5580 	.dw	Smain$init_peripherals_but_button_n_uart$113-Smain$init_peripherals_but_button_n_uart$112
      0002DE 03                    5581 	.db	3
      0002DF 01                    5582 	.sleb128	1
      0002E0 01                    5583 	.db	1
      0002E1 09                    5584 	.db	9
      0002E2 00 03                 5585 	.dw	Smain$init_peripherals_but_button_n_uart$114-Smain$init_peripherals_but_button_n_uart$113
      0002E4 03                    5586 	.db	3
      0002E5 02                    5587 	.sleb128	2
      0002E6 01                    5588 	.db	1
      0002E7 09                    5589 	.db	9
      0002E8 00 13                 5590 	.dw	Smain$init_peripherals_but_button_n_uart$115-Smain$init_peripherals_but_button_n_uart$114
      0002EA 03                    5591 	.db	3
      0002EB 01                    5592 	.sleb128	1
      0002EC 01                    5593 	.db	1
      0002ED 09                    5594 	.db	9
      0002EE 00 02                 5595 	.dw	Smain$init_peripherals_but_button_n_uart$116-Smain$init_peripherals_but_button_n_uart$115
      0002F0 03                    5596 	.db	3
      0002F1 02                    5597 	.sleb128	2
      0002F2 01                    5598 	.db	1
      0002F3 09                    5599 	.db	9
      0002F4 00 05                 5600 	.dw	Smain$init_peripherals_but_button_n_uart$117-Smain$init_peripherals_but_button_n_uart$116
      0002F6 03                    5601 	.db	3
      0002F7 01                    5602 	.sleb128	1
      0002F8 01                    5603 	.db	1
      0002F9 09                    5604 	.db	9
      0002FA 00 04                 5605 	.dw	Smain$init_peripherals_but_button_n_uart$118-Smain$init_peripherals_but_button_n_uart$117
      0002FC 03                    5606 	.db	3
      0002FD 02                    5607 	.sleb128	2
      0002FE 01                    5608 	.db	1
      0002FF 09                    5609 	.db	9
      000300 00 03                 5610 	.dw	Smain$init_peripherals_but_button_n_uart$119-Smain$init_peripherals_but_button_n_uart$118
      000302 03                    5611 	.db	3
      000303 02                    5612 	.sleb128	2
      000304 01                    5613 	.db	1
      000305 09                    5614 	.db	9
      000306 00 03                 5615 	.dw	Smain$init_peripherals_but_button_n_uart$120-Smain$init_peripherals_but_button_n_uart$119
      000308 03                    5616 	.db	3
      000309 01                    5617 	.sleb128	1
      00030A 01                    5618 	.db	1
      00030B 09                    5619 	.db	9
      00030C 00 07                 5620 	.dw	Smain$init_peripherals_but_button_n_uart$121-Smain$init_peripherals_but_button_n_uart$120
      00030E 03                    5621 	.db	3
      00030F 01                    5622 	.sleb128	1
      000310 01                    5623 	.db	1
      000311 09                    5624 	.db	9
      000312 00 01                 5625 	.dw	1+Smain$init_peripherals_but_button_n_uart$122-Smain$init_peripherals_but_button_n_uart$121
      000314 00                    5626 	.db	0
      000315 01                    5627 	.uleb128	1
      000316 01                    5628 	.db	1
      000317 00                    5629 	.db	0
      000318 05                    5630 	.uleb128	5
      000319 02                    5631 	.db	2
      00031A 00 00 03 97           5632 	.dw	0,(Smain$sample_amps$124)
      00031E 03                    5633 	.db	3
      00031F AF 03                 5634 	.sleb128	431
      000321 01                    5635 	.db	1
      000322 09                    5636 	.db	9
      000323 00 00                 5637 	.dw	Smain$sample_amps$126-Smain$sample_amps$124
      000325 03                    5638 	.db	3
      000326 03                    5639 	.sleb128	3
      000327 01                    5640 	.db	1
      000328 09                    5641 	.db	9
      000329 00 3E                 5642 	.dw	Smain$sample_amps$127-Smain$sample_amps$126
      00032B 03                    5643 	.db	3
      00032C 02                    5644 	.sleb128	2
      00032D 01                    5645 	.db	1
      00032E 09                    5646 	.db	9
      00032F 00 15                 5647 	.dw	Smain$sample_amps$128-Smain$sample_amps$127
      000331 03                    5648 	.db	3
      000332 01                    5649 	.sleb128	1
      000333 01                    5650 	.db	1
      000334 09                    5651 	.db	9
      000335 00 15                 5652 	.dw	Smain$sample_amps$129-Smain$sample_amps$128
      000337 03                    5653 	.db	3
      000338 02                    5654 	.sleb128	2
      000339 01                    5655 	.db	1
      00033A 09                    5656 	.db	9
      00033B 00 03                 5657 	.dw	Smain$sample_amps$130-Smain$sample_amps$129
      00033D 03                    5658 	.db	3
      00033E 01                    5659 	.sleb128	1
      00033F 01                    5660 	.db	1
      000340 09                    5661 	.db	9
      000341 00 25                 5662 	.dw	Smain$sample_amps$131-Smain$sample_amps$130
      000343 03                    5663 	.db	3
      000344 02                    5664 	.sleb128	2
      000345 01                    5665 	.db	1
      000346 09                    5666 	.db	9
      000347 00 16                 5667 	.dw	Smain$sample_amps$132-Smain$sample_amps$131
      000349 03                    5668 	.db	3
      00034A 03                    5669 	.sleb128	3
      00034B 01                    5670 	.db	1
      00034C 09                    5671 	.db	9
      00034D 00 3E                 5672 	.dw	Smain$sample_amps$133-Smain$sample_amps$132
      00034F 03                    5673 	.db	3
      000350 02                    5674 	.sleb128	2
      000351 01                    5675 	.db	1
      000352 09                    5676 	.db	9
      000353 00 15                 5677 	.dw	Smain$sample_amps$134-Smain$sample_amps$133
      000355 03                    5678 	.db	3
      000356 01                    5679 	.sleb128	1
      000357 01                    5680 	.db	1
      000358 09                    5681 	.db	9
      000359 00 15                 5682 	.dw	Smain$sample_amps$135-Smain$sample_amps$134
      00035B 03                    5683 	.db	3
      00035C 02                    5684 	.sleb128	2
      00035D 01                    5685 	.db	1
      00035E 09                    5686 	.db	9
      00035F 00 03                 5687 	.dw	Smain$sample_amps$136-Smain$sample_amps$135
      000361 03                    5688 	.db	3
      000362 01                    5689 	.sleb128	1
      000363 01                    5690 	.db	1
      000364 09                    5691 	.db	9
      000365 00 25                 5692 	.dw	Smain$sample_amps$137-Smain$sample_amps$136
      000367 03                    5693 	.db	3
      000368 02                    5694 	.sleb128	2
      000369 01                    5695 	.db	1
      00036A 09                    5696 	.db	9
      00036B 00 16                 5697 	.dw	Smain$sample_amps$138-Smain$sample_amps$137
      00036D 03                    5698 	.db	3
      00036E 01                    5699 	.sleb128	1
      00036F 01                    5700 	.db	1
      000370 09                    5701 	.db	9
      000371 00 01                 5702 	.dw	1+Smain$sample_amps$139-Smain$sample_amps$138
      000373 00                    5703 	.db	0
      000374 01                    5704 	.uleb128	1
      000375 01                    5705 	.db	1
      000376 00                    5706 	.db	0
      000377 05                    5707 	.uleb128	5
      000378 02                    5708 	.db	2
      000379 00 00 04 E4           5709 	.dw	0,(Smain$sample_temperature$141)
      00037D 03                    5710 	.db	3
      00037E C8 03                 5711 	.sleb128	456
      000380 01                    5712 	.db	1
      000381 09                    5713 	.db	9
      000382 00 00                 5714 	.dw	Smain$sample_temperature$143-Smain$sample_temperature$141
      000384 03                    5715 	.db	3
      000385 03                    5716 	.sleb128	3
      000386 01                    5717 	.db	1
      000387 09                    5718 	.db	9
      000388 00 3E                 5719 	.dw	Smain$sample_temperature$144-Smain$sample_temperature$143
      00038A 03                    5720 	.db	3
      00038B 02                    5721 	.sleb128	2
      00038C 01                    5722 	.db	1
      00038D 09                    5723 	.db	9
      00038E 00 15                 5724 	.dw	Smain$sample_temperature$145-Smain$sample_temperature$144
      000390 03                    5725 	.db	3
      000391 01                    5726 	.sleb128	1
      000392 01                    5727 	.db	1
      000393 09                    5728 	.db	9
      000394 00 15                 5729 	.dw	Smain$sample_temperature$146-Smain$sample_temperature$145
      000396 03                    5730 	.db	3
      000397 02                    5731 	.sleb128	2
      000398 01                    5732 	.db	1
      000399 09                    5733 	.db	9
      00039A 00 03                 5734 	.dw	Smain$sample_temperature$147-Smain$sample_temperature$146
      00039C 03                    5735 	.db	3
      00039D 01                    5736 	.sleb128	1
      00039E 01                    5737 	.db	1
      00039F 09                    5738 	.db	9
      0003A0 00 45                 5739 	.dw	Smain$sample_temperature$148-Smain$sample_temperature$147
      0003A2 03                    5740 	.db	3
      0003A3 02                    5741 	.sleb128	2
      0003A4 01                    5742 	.db	1
      0003A5 09                    5743 	.db	9
      0003A6 00 16                 5744 	.dw	Smain$sample_temperature$149-Smain$sample_temperature$148
      0003A8 03                    5745 	.db	3
      0003A9 02                    5746 	.sleb128	2
      0003AA 01                    5747 	.db	1
      0003AB 09                    5748 	.db	9
      0003AC 00 01                 5749 	.dw	1+Smain$sample_temperature$150-Smain$sample_temperature$149
      0003AE 00                    5750 	.db	0
      0003AF 01                    5751 	.uleb128	1
      0003B0 01                    5752 	.db	1
      0003B1 00                    5753 	.db	0
      0003B2 05                    5754 	.uleb128	5
      0003B3 02                    5755 	.db	2
      0003B4 00 00 05 AB           5756 	.dw	0,(Smain$has_high_beam$152)
      0003B8 03                    5757 	.db	3
      0003B9 D7 03                 5758 	.sleb128	471
      0003BB 01                    5759 	.db	1
      0003BC 09                    5760 	.db	9
      0003BD 00 06                 5761 	.dw	Smain$has_high_beam$154-Smain$has_high_beam$152
      0003BF 03                    5762 	.db	3
      0003C0 02                    5763 	.sleb128	2
      0003C1 01                    5764 	.db	1
      0003C2 09                    5765 	.db	9
      0003C3 00 39                 5766 	.dw	Smain$has_high_beam$155-Smain$has_high_beam$154
      0003C5 03                    5767 	.db	3
      0003C6 01                    5768 	.sleb128	1
      0003C7 01                    5769 	.db	1
      0003C8 09                    5770 	.db	9
      0003C9 00 01                 5771 	.dw	1+Smain$has_high_beam$156-Smain$has_high_beam$155
      0003CB 00                    5772 	.db	0
      0003CC 01                    5773 	.uleb128	1
      0003CD 01                    5774 	.db	1
      0003CE 00                    5775 	.db	0
      0003CF 05                    5776 	.uleb128	5
      0003D0 02                    5777 	.db	2
      0003D1 00 00 05 EB           5778 	.dw	0,(Smain$avg_amp$158)
      0003D5 03                    5779 	.db	3
      0003D6 DC 03                 5780 	.sleb128	476
      0003D8 01                    5781 	.db	1
      0003D9 09                    5782 	.db	9
      0003DA 00 06                 5783 	.dw	Smain$avg_amp$160-Smain$avg_amp$158
      0003DC 03                    5784 	.db	3
      0003DD 01                    5785 	.sleb128	1
      0003DE 01                    5786 	.db	1
      0003DF 09                    5787 	.db	9
      0003E0 00 08                 5788 	.dw	Smain$avg_amp$162-Smain$avg_amp$160
      0003E2 03                    5789 	.db	3
      0003E3 01                    5790 	.sleb128	1
      0003E4 01                    5791 	.db	1
      0003E5 09                    5792 	.db	9
      0003E6 00 3C                 5793 	.dw	Smain$avg_amp$165-Smain$avg_amp$162
      0003E8 03                    5794 	.db	3
      0003E9 02                    5795 	.sleb128	2
      0003EA 01                    5796 	.db	1
      0003EB 09                    5797 	.db	9
      0003EC 00 16                 5798 	.dw	Smain$avg_amp$167-Smain$avg_amp$165
      0003EE 03                    5799 	.db	3
      0003EF 02                    5800 	.sleb128	2
      0003F0 01                    5801 	.db	1
      0003F1 09                    5802 	.db	9
      0003F2 00 01                 5803 	.dw	1+Smain$avg_amp$168-Smain$avg_amp$167
      0003F4 00                    5804 	.db	0
      0003F5 01                    5805 	.uleb128	1
      0003F6 01                    5806 	.db	1
      0003F7 00                    5807 	.db	0
      0003F8 05                    5808 	.uleb128	5
      0003F9 02                    5809 	.db	2
      0003FA 00 00 06 50           5810 	.dw	0,(Smain$target_amp$170)
      0003FE 03                    5811 	.db	3
      0003FF E4 03                 5812 	.sleb128	484
      000401 01                    5813 	.db	1
      000402 09                    5814 	.db	9
      000403 00 06                 5815 	.dw	Smain$target_amp$172-Smain$target_amp$170
      000405 03                    5816 	.db	3
      000406 01                    5817 	.sleb128	1
      000407 01                    5818 	.db	1
      000408 09                    5819 	.db	9
      000409 00 2C                 5820 	.dw	Smain$target_amp$174-Smain$target_amp$172
      00040B 03                    5821 	.db	3
      00040C 01                    5822 	.sleb128	1
      00040D 01                    5823 	.db	1
      00040E 09                    5824 	.db	9
      00040F 00 09                 5825 	.dw	Smain$target_amp$176-Smain$target_amp$174
      000411 03                    5826 	.db	3
      000412 01                    5827 	.sleb128	1
      000413 01                    5828 	.db	1
      000414 09                    5829 	.db	9
      000415 00 23                 5830 	.dw	Smain$target_amp$179-Smain$target_amp$176
      000417 03                    5831 	.db	3
      000418 02                    5832 	.sleb128	2
      000419 01                    5833 	.db	1
      00041A 09                    5834 	.db	9
      00041B 00 1B                 5835 	.dw	Smain$target_amp$180-Smain$target_amp$179
      00041D 03                    5836 	.db	3
      00041E 01                    5837 	.sleb128	1
      00041F 01                    5838 	.db	1
      000420 09                    5839 	.db	9
      000421 00 40                 5840 	.dw	Smain$target_amp$182-Smain$target_amp$180
      000423 03                    5841 	.db	3
      000424 01                    5842 	.sleb128	1
      000425 01                    5843 	.db	1
      000426 09                    5844 	.db	9
      000427 00 43                 5845 	.dw	Smain$target_amp$184-Smain$target_amp$182
      000429 03                    5846 	.db	3
      00042A 03                    5847 	.sleb128	3
      00042B 01                    5848 	.db	1
      00042C 09                    5849 	.db	9
      00042D 00 1E                 5850 	.dw	Smain$target_amp$186-Smain$target_amp$184
      00042F 03                    5851 	.db	3
      000430 02                    5852 	.sleb128	2
      000431 01                    5853 	.db	1
      000432 09                    5854 	.db	9
      000433 00 01                 5855 	.dw	1+Smain$target_amp$187-Smain$target_amp$186
      000435 00                    5856 	.db	0
      000436 01                    5857 	.uleb128	1
      000437 01                    5858 	.db	1
      000438 00                    5859 	.db	0
      000439 05                    5860 	.uleb128	5
      00043A 02                    5861 	.db	2
      00043B 00 00 07 6D           5862 	.dw	0,(Smain$changeMode$189)
      00043F 03                    5863 	.db	3
      000440 FD 03                 5864 	.sleb128	509
      000442 01                    5865 	.db	1
      000443 09                    5866 	.db	9
      000444 00 06                 5867 	.dw	Smain$changeMode$191-Smain$changeMode$189
      000446 03                    5868 	.db	3
      000447 02                    5869 	.sleb128	2
      000448 01                    5870 	.db	1
      000449 09                    5871 	.db	9
      00044A 00 0E                 5872 	.dw	Smain$changeMode$192-Smain$changeMode$191
      00044C 03                    5873 	.db	3
      00044D 01                    5874 	.sleb128	1
      00044E 01                    5875 	.db	1
      00044F 09                    5876 	.db	9
      000450 00 08                 5877 	.dw	Smain$changeMode$193-Smain$changeMode$192
      000452 03                    5878 	.db	3
      000453 01                    5879 	.sleb128	1
      000454 01                    5880 	.db	1
      000455 09                    5881 	.db	9
      000456 00 13                 5882 	.dw	Smain$changeMode$194-Smain$changeMode$193
      000458 03                    5883 	.db	3
      000459 02                    5884 	.sleb128	2
      00045A 01                    5885 	.db	1
      00045B 09                    5886 	.db	9
      00045C 00 12                 5887 	.dw	Smain$changeMode$201-Smain$changeMode$194
      00045E 03                    5888 	.db	3
      00045F 01                    5889 	.sleb128	1
      000460 01                    5890 	.db	1
      000461 09                    5891 	.db	9
      000462 00 1C                 5892 	.dw	Smain$changeMode$202-Smain$changeMode$201
      000464 03                    5893 	.db	3
      000465 01                    5894 	.sleb128	1
      000466 01                    5895 	.db	1
      000467 09                    5896 	.db	9
      000468 00 1B                 5897 	.dw	Smain$changeMode$203-Smain$changeMode$202
      00046A 03                    5898 	.db	3
      00046B 01                    5899 	.sleb128	1
      00046C 01                    5900 	.db	1
      00046D 09                    5901 	.db	9
      00046E 00 0F                 5902 	.dw	Smain$changeMode$204-Smain$changeMode$203
      000470 03                    5903 	.db	3
      000471 01                    5904 	.sleb128	1
      000472 01                    5905 	.db	1
      000473 09                    5906 	.db	9
      000474 00 2A                 5907 	.dw	Smain$changeMode$205-Smain$changeMode$204
      000476 03                    5908 	.db	3
      000477 01                    5909 	.sleb128	1
      000478 01                    5910 	.db	1
      000479 09                    5911 	.db	9
      00047A 00 0F                 5912 	.dw	Smain$changeMode$206-Smain$changeMode$205
      00047C 03                    5913 	.db	3
      00047D 01                    5914 	.sleb128	1
      00047E 01                    5915 	.db	1
      00047F 09                    5916 	.db	9
      000480 00 24                 5917 	.dw	Smain$changeMode$207-Smain$changeMode$206
      000482 03                    5918 	.db	3
      000483 01                    5919 	.sleb128	1
      000484 01                    5920 	.db	1
      000485 09                    5921 	.db	9
      000486 00 0D                 5922 	.dw	Smain$changeMode$209-Smain$changeMode$207
      000488 03                    5923 	.db	3
      000489 79                    5924 	.sleb128	-7
      00048A 01                    5925 	.db	1
      00048B 09                    5926 	.db	9
      00048C 00 08                 5927 	.dw	Smain$changeMode$211-Smain$changeMode$209
      00048E 03                    5928 	.db	3
      00048F 0D                    5929 	.sleb128	13
      000490 01                    5930 	.db	1
      000491 09                    5931 	.db	9
      000492 00 03                 5932 	.dw	Smain$changeMode$213-Smain$changeMode$211
      000494 03                    5933 	.db	3
      000495 01                    5934 	.sleb128	1
      000496 01                    5935 	.db	1
      000497 09                    5936 	.db	9
      000498 00 0F                 5937 	.dw	Smain$changeMode$216-Smain$changeMode$213
      00049A 03                    5938 	.db	3
      00049B 01                    5939 	.sleb128	1
      00049C 01                    5940 	.db	1
      00049D 09                    5941 	.db	9
      00049E 00 0C                 5942 	.dw	Smain$changeMode$218-Smain$changeMode$216
      0004A0 03                    5943 	.db	3
      0004A1 7F                    5944 	.sleb128	-1
      0004A2 01                    5945 	.db	1
      0004A3 09                    5946 	.db	9
      0004A4 00 07                 5947 	.dw	Smain$changeMode$220-Smain$changeMode$218
      0004A6 03                    5948 	.db	3
      0004A7 04                    5949 	.sleb128	4
      0004A8 01                    5950 	.db	1
      0004A9 09                    5951 	.db	9
      0004AA 00 0E                 5952 	.dw	Smain$changeMode$222-Smain$changeMode$220
      0004AC 03                    5953 	.db	3
      0004AD 01                    5954 	.sleb128	1
      0004AE 01                    5955 	.db	1
      0004AF 09                    5956 	.db	9
      0004B0 00 17                 5957 	.dw	Smain$changeMode$226-Smain$changeMode$222
      0004B2 03                    5958 	.db	3
      0004B3 01                    5959 	.sleb128	1
      0004B4 01                    5960 	.db	1
      0004B5 09                    5961 	.db	9
      0004B6 00 34                 5962 	.dw	Smain$changeMode$227-Smain$changeMode$226
      0004B8 03                    5963 	.db	3
      0004B9 01                    5964 	.sleb128	1
      0004BA 01                    5965 	.db	1
      0004BB 09                    5966 	.db	9
      0004BC 00 16                 5967 	.dw	Smain$changeMode$229-Smain$changeMode$227
      0004BE 03                    5968 	.db	3
      0004BF 7E                    5969 	.sleb128	-2
      0004C0 01                    5970 	.db	1
      0004C1 09                    5971 	.db	9
      0004C2 00 07                 5972 	.dw	Smain$changeMode$231-Smain$changeMode$229
      0004C4 03                    5973 	.db	3
      0004C5 06                    5974 	.sleb128	6
      0004C6 01                    5975 	.db	1
      0004C7 09                    5976 	.db	9
      0004C8 00 08                 5977 	.dw	Smain$changeMode$232-Smain$changeMode$231
      0004CA 03                    5978 	.db	3
      0004CB 04                    5979 	.sleb128	4
      0004CC 01                    5980 	.db	1
      0004CD 09                    5981 	.db	9
      0004CE 00 01                 5982 	.dw	1+Smain$changeMode$233-Smain$changeMode$232
      0004D0 00                    5983 	.db	0
      0004D1 01                    5984 	.uleb128	1
      0004D2 01                    5985 	.db	1
      0004D3 00                    5986 	.db	0
      0004D4 05                    5987 	.uleb128	5
      0004D5 02                    5988 	.db	2
      0004D6 00 00 09 0A           5989 	.dw	0,(Smain$toNextMode$235)
      0004DA 03                    5990 	.db	3
      0004DB A5 04                 5991 	.sleb128	549
      0004DD 01                    5992 	.db	1
      0004DE 09                    5993 	.db	9
      0004DF 00 00                 5994 	.dw	Smain$toNextMode$237-Smain$toNextMode$235
      0004E1 03                    5995 	.db	3
      0004E2 02                    5996 	.sleb128	2
      0004E3 01                    5997 	.db	1
      0004E4 09                    5998 	.db	9
      0004E5 00 0D                 5999 	.dw	Smain$toNextMode$238-Smain$toNextMode$237
      0004E7 03                    6000 	.db	3
      0004E8 01                    6001 	.sleb128	1
      0004E9 01                    6002 	.db	1
      0004EA 09                    6003 	.db	9
      0004EB 00 01                 6004 	.dw	1+Smain$toNextMode$239-Smain$toNextMode$238
      0004ED 00                    6005 	.db	0
      0004EE 01                    6006 	.uleb128	1
      0004EF 01                    6007 	.db	1
      0004F0 00                    6008 	.db	0
      0004F1 05                    6009 	.uleb128	5
      0004F2 02                    6010 	.db	2
      0004F3 00 00 09 18           6011 	.dw	0,(Smain$process_uart$241)
      0004F7 03                    6012 	.db	3
      0004F8 AB 04                 6013 	.sleb128	555
      0004FA 01                    6014 	.db	1
      0004FB 09                    6015 	.db	9
      0004FC 00 00                 6016 	.dw	Smain$process_uart$243-Smain$process_uart$241
      0004FE 03                    6017 	.db	3
      0004FF 02                    6018 	.sleb128	2
      000500 01                    6019 	.db	1
      000501 09                    6020 	.db	9
      000502 00 11                 6021 	.dw	Smain$process_uart$245-Smain$process_uart$243
      000504 03                    6022 	.db	3
      000505 01                    6023 	.sleb128	1
      000506 01                    6024 	.db	1
      000507 09                    6025 	.db	9
      000508 00 06                 6026 	.dw	Smain$process_uart$247-Smain$process_uart$245
      00050A 03                    6027 	.db	3
      00050B 03                    6028 	.sleb128	3
      00050C 01                    6029 	.db	1
      00050D 09                    6030 	.db	9
      00050E 00 11                 6031 	.dw	Smain$process_uart$251-Smain$process_uart$247
      000510 03                    6032 	.db	3
      000511 01                    6033 	.sleb128	1
      000512 01                    6034 	.db	1
      000513 09                    6035 	.db	9
      000514 00 0F                 6036 	.dw	Smain$process_uart$252-Smain$process_uart$251
      000516 03                    6037 	.db	3
      000517 01                    6038 	.sleb128	1
      000518 01                    6039 	.db	1
      000519 09                    6040 	.db	9
      00051A 00 1E                 6041 	.dw	Smain$process_uart$253-Smain$process_uart$252
      00051C 03                    6042 	.db	3
      00051D 01                    6043 	.sleb128	1
      00051E 01                    6044 	.db	1
      00051F 09                    6045 	.db	9
      000520 00 0B                 6046 	.dw	Smain$process_uart$254-Smain$process_uart$253
      000522 03                    6047 	.db	3
      000523 03                    6048 	.sleb128	3
      000524 01                    6049 	.db	1
      000525 09                    6050 	.db	9
      000526 00 4F                 6051 	.dw	Smain$process_uart$255-Smain$process_uart$254
      000528 03                    6052 	.db	3
      000529 01                    6053 	.sleb128	1
      00052A 01                    6054 	.db	1
      00052B 09                    6055 	.db	9
      00052C 00 00                 6056 	.dw	Smain$process_uart$256-Smain$process_uart$255
      00052E 03                    6057 	.db	3
      00052F 01                    6058 	.sleb128	1
      000530 01                    6059 	.db	1
      000531 09                    6060 	.db	9
      000532 00 05                 6061 	.dw	Smain$process_uart$257-Smain$process_uart$256
      000534 03                    6062 	.db	3
      000535 02                    6063 	.sleb128	2
      000536 01                    6064 	.db	1
      000537 09                    6065 	.db	9
      000538 00 03                 6066 	.dw	Smain$process_uart$258-Smain$process_uart$257
      00053A 03                    6067 	.db	3
      00053B 01                    6068 	.sleb128	1
      00053C 01                    6069 	.db	1
      00053D 09                    6070 	.db	9
      00053E 00 00                 6071 	.dw	Smain$process_uart$259-Smain$process_uart$258
      000540 03                    6072 	.db	3
      000541 01                    6073 	.sleb128	1
      000542 01                    6074 	.db	1
      000543 09                    6075 	.db	9
      000544 00 06                 6076 	.dw	Smain$process_uart$260-Smain$process_uart$259
      000546 03                    6077 	.db	3
      000547 01                    6078 	.sleb128	1
      000548 01                    6079 	.db	1
      000549 09                    6080 	.db	9
      00054A 00 03                 6081 	.dw	Smain$process_uart$261-Smain$process_uart$260
      00054C 03                    6082 	.db	3
      00054D 01                    6083 	.sleb128	1
      00054E 01                    6084 	.db	1
      00054F 09                    6085 	.db	9
      000550 00 00                 6086 	.dw	Smain$process_uart$262-Smain$process_uart$261
      000552 03                    6087 	.db	3
      000553 01                    6088 	.sleb128	1
      000554 01                    6089 	.db	1
      000555 09                    6090 	.db	9
      000556 00 06                 6091 	.dw	Smain$process_uart$263-Smain$process_uart$262
      000558 03                    6092 	.db	3
      000559 01                    6093 	.sleb128	1
      00055A 01                    6094 	.db	1
      00055B 09                    6095 	.db	9
      00055C 00 03                 6096 	.dw	Smain$process_uart$264-Smain$process_uart$263
      00055E 03                    6097 	.db	3
      00055F 01                    6098 	.sleb128	1
      000560 01                    6099 	.db	1
      000561 09                    6100 	.db	9
      000562 00 00                 6101 	.dw	Smain$process_uart$265-Smain$process_uart$264
      000564 03                    6102 	.db	3
      000565 01                    6103 	.sleb128	1
      000566 01                    6104 	.db	1
      000567 09                    6105 	.db	9
      000568 00 06                 6106 	.dw	Smain$process_uart$266-Smain$process_uart$265
      00056A 03                    6107 	.db	3
      00056B 01                    6108 	.sleb128	1
      00056C 01                    6109 	.db	1
      00056D 09                    6110 	.db	9
      00056E 00 03                 6111 	.dw	Smain$process_uart$267-Smain$process_uart$266
      000570 03                    6112 	.db	3
      000571 01                    6113 	.sleb128	1
      000572 01                    6114 	.db	1
      000573 09                    6115 	.db	9
      000574 00 00                 6116 	.dw	Smain$process_uart$268-Smain$process_uart$267
      000576 03                    6117 	.db	3
      000577 01                    6118 	.sleb128	1
      000578 01                    6119 	.db	1
      000579 09                    6120 	.db	9
      00057A 00 06                 6121 	.dw	Smain$process_uart$269-Smain$process_uart$268
      00057C 03                    6122 	.db	3
      00057D 01                    6123 	.sleb128	1
      00057E 01                    6124 	.db	1
      00057F 09                    6125 	.db	9
      000580 00 03                 6126 	.dw	Smain$process_uart$270-Smain$process_uart$269
      000582 03                    6127 	.db	3
      000583 01                    6128 	.sleb128	1
      000584 01                    6129 	.db	1
      000585 09                    6130 	.db	9
      000586 00 02                 6131 	.dw	Smain$process_uart$271-Smain$process_uart$270
      000588 03                    6132 	.db	3
      000589 01                    6133 	.sleb128	1
      00058A 01                    6134 	.db	1
      00058B 09                    6135 	.db	9
      00058C 00 0D                 6136 	.dw	Smain$process_uart$272-Smain$process_uart$271
      00058E 03                    6137 	.db	3
      00058F 01                    6138 	.sleb128	1
      000590 01                    6139 	.db	1
      000591 09                    6140 	.db	9
      000592 00 0A                 6141 	.dw	Smain$process_uart$273-Smain$process_uart$272
      000594 03                    6142 	.db	3
      000595 01                    6143 	.sleb128	1
      000596 01                    6144 	.db	1
      000597 09                    6145 	.db	9
      000598 00 03                 6146 	.dw	Smain$process_uart$274-Smain$process_uart$273
      00059A 03                    6147 	.db	3
      00059B 01                    6148 	.sleb128	1
      00059C 01                    6149 	.db	1
      00059D 09                    6150 	.db	9
      00059E 00 00                 6151 	.dw	Smain$process_uart$275-Smain$process_uart$274
      0005A0 03                    6152 	.db	3
      0005A1 01                    6153 	.sleb128	1
      0005A2 01                    6154 	.db	1
      0005A3 09                    6155 	.db	9
      0005A4 00 0D                 6156 	.dw	Smain$process_uart$276-Smain$process_uart$275
      0005A6 03                    6157 	.db	3
      0005A7 01                    6158 	.sleb128	1
      0005A8 01                    6159 	.db	1
      0005A9 09                    6160 	.db	9
      0005AA 00 06                 6161 	.dw	Smain$process_uart$277-Smain$process_uart$276
      0005AC 03                    6162 	.db	3
      0005AD 01                    6163 	.sleb128	1
      0005AE 01                    6164 	.db	1
      0005AF 09                    6165 	.db	9
      0005B0 00 03                 6166 	.dw	Smain$process_uart$278-Smain$process_uart$277
      0005B2 03                    6167 	.db	3
      0005B3 06                    6168 	.sleb128	6
      0005B4 01                    6169 	.db	1
      0005B5 09                    6170 	.db	9
      0005B6 00 00                 6171 	.dw	Smain$process_uart$279-Smain$process_uart$278
      0005B8 03                    6172 	.db	3
      0005B9 01                    6173 	.sleb128	1
      0005BA 01                    6174 	.db	1
      0005BB 09                    6175 	.db	9
      0005BC 00 05                 6176 	.dw	Smain$process_uart$280-Smain$process_uart$279
      0005BE 03                    6177 	.db	3
      0005BF 01                    6178 	.sleb128	1
      0005C0 01                    6179 	.db	1
      0005C1 09                    6180 	.db	9
      0005C2 00 12                 6181 	.dw	Smain$process_uart$282-Smain$process_uart$280
      0005C4 03                    6182 	.db	3
      0005C5 02                    6183 	.sleb128	2
      0005C6 01                    6184 	.db	1
      0005C7 09                    6185 	.db	9
      0005C8 00 0B                 6186 	.dw	Smain$process_uart$283-Smain$process_uart$282
      0005CA 03                    6187 	.db	3
      0005CB 01                    6188 	.sleb128	1
      0005CC 01                    6189 	.db	1
      0005CD 09                    6190 	.db	9
      0005CE 00 03                 6191 	.dw	Smain$process_uart$284-Smain$process_uart$283
      0005D0 03                    6192 	.db	3
      0005D1 01                    6193 	.sleb128	1
      0005D2 01                    6194 	.db	1
      0005D3 09                    6195 	.db	9
      0005D4 00 00                 6196 	.dw	Smain$process_uart$285-Smain$process_uart$284
      0005D6 03                    6197 	.db	3
      0005D7 01                    6198 	.sleb128	1
      0005D8 01                    6199 	.db	1
      0005D9 09                    6200 	.db	9
      0005DA 00 0D                 6201 	.dw	Smain$process_uart$287-Smain$process_uart$285
      0005DC 03                    6202 	.db	3
      0005DD 01                    6203 	.sleb128	1
      0005DE 01                    6204 	.db	1
      0005DF 09                    6205 	.db	9
      0005E0 00 08                 6206 	.dw	Smain$process_uart$289-Smain$process_uart$287
      0005E2 03                    6207 	.db	3
      0005E3 04                    6208 	.sleb128	4
      0005E4 01                    6209 	.db	1
      0005E5 09                    6210 	.db	9
      0005E6 00 03                 6211 	.dw	Smain$process_uart$290-Smain$process_uart$289
      0005E8 03                    6212 	.db	3
      0005E9 03                    6213 	.sleb128	3
      0005EA 01                    6214 	.db	1
      0005EB 09                    6215 	.db	9
      0005EC 00 03                 6216 	.dw	Smain$process_uart$291-Smain$process_uart$290
      0005EE 03                    6217 	.db	3
      0005EF 01                    6218 	.sleb128	1
      0005F0 01                    6219 	.db	1
      0005F1 09                    6220 	.db	9
      0005F2 00 01                 6221 	.dw	1+Smain$process_uart$292-Smain$process_uart$291
      0005F4 00                    6222 	.db	0
      0005F5 01                    6223 	.uleb128	1
      0005F6 01                    6224 	.db	1
      0005F7 00                    6225 	.db	0
      0005F8 05                    6226 	.uleb128	5
      0005F9 02                    6227 	.db	2
      0005FA 00 00 0A 66           6228 	.dw	0,(Smain$process_button$294)
      0005FE 03                    6229 	.db	3
      0005FF E7 04                 6230 	.sleb128	615
      000601 01                    6231 	.db	1
      000602 09                    6232 	.db	9
      000603 00 00                 6233 	.dw	Smain$process_button$296-Smain$process_button$294
      000605 03                    6234 	.db	3
      000606 02                    6235 	.sleb128	2
      000607 01                    6236 	.db	1
      000608 09                    6237 	.db	9
      000609 00 03                 6238 	.dw	Smain$process_button$298-Smain$process_button$296
      00060B 03                    6239 	.db	3
      00060C 02                    6240 	.sleb128	2
      00060D 01                    6241 	.db	1
      00060E 09                    6242 	.db	9
      00060F 00 16                 6243 	.dw	Smain$process_button$299-Smain$process_button$298
      000611 03                    6244 	.db	3
      000612 01                    6245 	.sleb128	1
      000613 01                    6246 	.db	1
      000614 09                    6247 	.db	9
      000615 00 0B                 6248 	.dw	Smain$process_button$300-Smain$process_button$299
      000617 03                    6249 	.db	3
      000618 02                    6250 	.sleb128	2
      000619 01                    6251 	.db	1
      00061A 09                    6252 	.db	9
      00061B 00 1F                 6253 	.dw	Smain$process_button$302-Smain$process_button$300
      00061D 03                    6254 	.db	3
      00061E 02                    6255 	.sleb128	2
      00061F 01                    6256 	.db	1
      000620 09                    6257 	.db	9
      000621 00 06                 6258 	.dw	Smain$process_button$304-Smain$process_button$302
      000623 03                    6259 	.db	3
      000624 01                    6260 	.sleb128	1
      000625 01                    6261 	.db	1
      000626 09                    6262 	.db	9
      000627 00 09                 6263 	.dw	Smain$process_button$307-Smain$process_button$304
      000629 03                    6264 	.db	3
      00062A 02                    6265 	.sleb128	2
      00062B 01                    6266 	.db	1
      00062C 09                    6267 	.db	9
      00062D 00 0D                 6268 	.dw	Smain$process_button$309-Smain$process_button$307
      00062F 03                    6269 	.db	3
      000630 03                    6270 	.sleb128	3
      000631 01                    6271 	.db	1
      000632 09                    6272 	.db	9
      000633 00 22                 6273 	.dw	Smain$process_button$311-Smain$process_button$309
      000635 03                    6274 	.db	3
      000636 02                    6275 	.sleb128	2
      000637 01                    6276 	.db	1
      000638 09                    6277 	.db	9
      000639 00 16                 6278 	.dw	Smain$process_button$312-Smain$process_button$311
      00063B 03                    6279 	.db	3
      00063C 01                    6280 	.sleb128	1
      00063D 01                    6281 	.db	1
      00063E 09                    6282 	.db	9
      00063F 00 1A                 6283 	.dw	Smain$process_button$314-Smain$process_button$312
      000641 03                    6284 	.db	3
      000642 01                    6285 	.sleb128	1
      000643 01                    6286 	.db	1
      000644 09                    6287 	.db	9
      000645 00 0F                 6288 	.dw	Smain$process_button$316-Smain$process_button$314
      000647 03                    6289 	.db	3
      000648 01                    6290 	.sleb128	1
      000649 01                    6291 	.db	1
      00064A 09                    6292 	.db	9
      00064B 00 06                 6293 	.dw	Smain$process_button$318-Smain$process_button$316
      00064D 03                    6294 	.db	3
      00064E 03                    6295 	.sleb128	3
      00064F 01                    6296 	.db	1
      000650 09                    6297 	.db	9
      000651 00 03                 6298 	.dw	Smain$process_button$320-Smain$process_button$318
      000653 03                    6299 	.db	3
      000654 04                    6300 	.sleb128	4
      000655 01                    6301 	.db	1
      000656 09                    6302 	.db	9
      000657 00 00                 6303 	.dw	Smain$process_button$321-Smain$process_button$320
      000659 03                    6304 	.db	3
      00065A 02                    6305 	.sleb128	2
      00065B 01                    6306 	.db	1
      00065C 09                    6307 	.db	9
      00065D 00 15                 6308 	.dw	Smain$process_button$323-Smain$process_button$321
      00065F 03                    6309 	.db	3
      000660 03                    6310 	.sleb128	3
      000661 01                    6311 	.db	1
      000662 09                    6312 	.db	9
      000663 00 01                 6313 	.dw	1+Smain$process_button$324-Smain$process_button$323
      000665 00                    6314 	.db	0
      000666 01                    6315 	.uleb128	1
      000667 01                    6316 	.db	1
      000668 00                    6317 	.db	0
      000669 05                    6318 	.uleb128	5
      00066A 02                    6319 	.db	2
      00066B 00 00 0B 45           6320 	.dw	0,(Smain$stop_leds$326)
      00066F 03                    6321 	.db	3
      000670 8A 05                 6322 	.sleb128	650
      000672 01                    6323 	.db	1
      000673 09                    6324 	.db	9
      000674 00 00                 6325 	.dw	Smain$stop_leds$328-Smain$stop_leds$326
      000676 03                    6326 	.db	3
      000677 03                    6327 	.sleb128	3
      000678 01                    6328 	.db	1
      000679 09                    6329 	.db	9
      00067A 00 02                 6330 	.dw	Smain$stop_leds$329-Smain$stop_leds$328
      00067C 03                    6331 	.db	3
      00067D 01                    6332 	.sleb128	1
      00067E 01                    6333 	.db	1
      00067F 09                    6334 	.db	9
      000680 00 13                 6335 	.dw	Smain$stop_leds$330-Smain$stop_leds$329
      000682 03                    6336 	.db	3
      000683 02                    6337 	.sleb128	2
      000684 01                    6338 	.db	1
      000685 09                    6339 	.db	9
      000686 00 03                 6340 	.dw	Smain$stop_leds$331-Smain$stop_leds$330
      000688 03                    6341 	.db	3
      000689 01                    6342 	.sleb128	1
      00068A 01                    6343 	.db	1
      00068B 09                    6344 	.db	9
      00068C 00 03                 6345 	.dw	Smain$stop_leds$332-Smain$stop_leds$331
      00068E 03                    6346 	.db	3
      00068F 01                    6347 	.sleb128	1
      000690 01                    6348 	.db	1
      000691 09                    6349 	.db	9
      000692 00 03                 6350 	.dw	Smain$stop_leds$333-Smain$stop_leds$332
      000694 03                    6351 	.db	3
      000695 01                    6352 	.sleb128	1
      000696 01                    6353 	.db	1
      000697 09                    6354 	.db	9
      000698 00 03                 6355 	.dw	Smain$stop_leds$334-Smain$stop_leds$333
      00069A 03                    6356 	.db	3
      00069B 02                    6357 	.sleb128	2
      00069C 01                    6358 	.db	1
      00069D 09                    6359 	.db	9
      00069E 00 13                 6360 	.dw	Smain$stop_leds$335-Smain$stop_leds$334
      0006A0 03                    6361 	.db	3
      0006A1 01                    6362 	.sleb128	1
      0006A2 01                    6363 	.db	1
      0006A3 09                    6364 	.db	9
      0006A4 00 02                 6365 	.dw	Smain$stop_leds$336-Smain$stop_leds$335
      0006A6 03                    6366 	.db	3
      0006A7 01                    6367 	.sleb128	1
      0006A8 01                    6368 	.db	1
      0006A9 09                    6369 	.db	9
      0006AA 00 01                 6370 	.dw	1+Smain$stop_leds$337-Smain$stop_leds$336
      0006AC 00                    6371 	.db	0
      0006AD 01                    6372 	.uleb128	1
      0006AE 01                    6373 	.db	1
      0006AF 00                    6374 	.db	0
      0006B0 05                    6375 	.uleb128	5
      0006B1 02                    6376 	.db	2
      0006B2 00 00 0B 7C           6377 	.dw	0,(Smain$activate_leds$339)
      0006B6 03                    6378 	.db	3
      0006B7 99 05                 6379 	.sleb128	665
      0006B9 01                    6380 	.db	1
      0006BA 09                    6381 	.db	9
      0006BB 00 00                 6382 	.dw	Smain$activate_leds$341-Smain$activate_leds$339
      0006BD 03                    6383 	.db	3
      0006BE 02                    6384 	.sleb128	2
      0006BF 01                    6385 	.db	1
      0006C0 09                    6386 	.db	9
      0006C1 00 02                 6387 	.dw	Smain$activate_leds$342-Smain$activate_leds$341
      0006C3 03                    6388 	.db	3
      0006C4 01                    6389 	.sleb128	1
      0006C5 01                    6390 	.db	1
      0006C6 09                    6391 	.db	9
      0006C7 00 13                 6392 	.dw	Smain$activate_leds$343-Smain$activate_leds$342
      0006C9 03                    6393 	.db	3
      0006CA 02                    6394 	.sleb128	2
      0006CB 01                    6395 	.db	1
      0006CC 09                    6396 	.db	9
      0006CD 00 06                 6397 	.dw	Smain$activate_leds$344-Smain$activate_leds$343
      0006CF 03                    6398 	.db	3
      0006D0 01                    6399 	.sleb128	1
      0006D1 01                    6400 	.db	1
      0006D2 09                    6401 	.db	9
      0006D3 00 06                 6402 	.dw	Smain$activate_leds$345-Smain$activate_leds$344
      0006D5 03                    6403 	.db	3
      0006D6 02                    6404 	.sleb128	2
      0006D7 01                    6405 	.db	1
      0006D8 09                    6406 	.db	9
      0006D9 00 13                 6407 	.dw	Smain$activate_leds$346-Smain$activate_leds$345
      0006DB 03                    6408 	.db	3
      0006DC 01                    6409 	.sleb128	1
      0006DD 01                    6410 	.db	1
      0006DE 09                    6411 	.db	9
      0006DF 00 02                 6412 	.dw	Smain$activate_leds$347-Smain$activate_leds$346
      0006E1 03                    6413 	.db	3
      0006E2 01                    6414 	.sleb128	1
      0006E3 01                    6415 	.db	1
      0006E4 09                    6416 	.db	9
      0006E5 00 01                 6417 	.dw	1+Smain$activate_leds$348-Smain$activate_leds$347
      0006E7 00                    6418 	.db	0
      0006E8 01                    6419 	.uleb128	1
      0006E9 01                    6420 	.db	1
      0006EA 00                    6421 	.db	0
      0006EB 05                    6422 	.uleb128	5
      0006EC 02                    6423 	.db	2
      0006ED 00 00 0B B3           6424 	.dw	0,(Smain$mode_changing_control$350)
      0006F1 03                    6425 	.db	3
      0006F2 AA 05                 6426 	.sleb128	682
      0006F4 01                    6427 	.db	1
      0006F5 09                    6428 	.db	9
      0006F6 00 00                 6429 	.dw	Smain$mode_changing_control$352-Smain$mode_changing_control$350
      0006F8 03                    6430 	.db	3
      0006F9 02                    6431 	.sleb128	2
      0006FA 01                    6432 	.db	1
      0006FB 09                    6433 	.db	9
      0006FC 00 05                 6434 	.dw	Smain$mode_changing_control$354-Smain$mode_changing_control$352
      0006FE 03                    6435 	.db	3
      0006FF 02                    6436 	.sleb128	2
      000700 01                    6437 	.db	1
      000701 09                    6438 	.db	9
      000702 00 12                 6439 	.dw	Smain$mode_changing_control$363-Smain$mode_changing_control$354
      000704 03                    6440 	.db	3
      000705 01                    6441 	.sleb128	1
      000706 01                    6442 	.db	1
      000707 09                    6443 	.db	9
      000708 00 21                 6444 	.dw	Smain$mode_changing_control$364-Smain$mode_changing_control$363
      00070A 03                    6445 	.db	3
      00070B 01                    6446 	.sleb128	1
      00070C 01                    6447 	.db	1
      00070D 09                    6448 	.db	9
      00070E 00 00                 6449 	.dw	Smain$mode_changing_control$365-Smain$mode_changing_control$364
      000710 03                    6450 	.db	3
      000711 01                    6451 	.sleb128	1
      000712 01                    6452 	.db	1
      000713 09                    6453 	.db	9
      000714 00 1A                 6454 	.dw	Smain$mode_changing_control$367-Smain$mode_changing_control$365
      000716 03                    6455 	.db	3
      000717 01                    6456 	.sleb128	1
      000718 01                    6457 	.db	1
      000719 09                    6458 	.db	9
      00071A 00 0A                 6459 	.dw	Smain$mode_changing_control$369-Smain$mode_changing_control$367
      00071C 03                    6460 	.db	3
      00071D 01                    6461 	.sleb128	1
      00071E 01                    6462 	.db	1
      00071F 09                    6463 	.db	9
      000720 00 18                 6464 	.dw	Smain$mode_changing_control$371-Smain$mode_changing_control$369
      000722 03                    6465 	.db	3
      000723 01                    6466 	.sleb128	1
      000724 01                    6467 	.db	1
      000725 09                    6468 	.db	9
      000726 00 04                 6469 	.dw	Smain$mode_changing_control$373-Smain$mode_changing_control$371
      000728 03                    6470 	.db	3
      000729 01                    6471 	.sleb128	1
      00072A 01                    6472 	.db	1
      00072B 09                    6473 	.db	9
      00072C 00 09                 6474 	.dw	Smain$mode_changing_control$376-Smain$mode_changing_control$373
      00072E 03                    6475 	.db	3
      00072F 02                    6476 	.sleb128	2
      000730 01                    6477 	.db	1
      000731 09                    6478 	.db	9
      000732 00 06                 6479 	.dw	Smain$mode_changing_control$377-Smain$mode_changing_control$376
      000734 03                    6480 	.db	3
      000735 01                    6481 	.sleb128	1
      000736 01                    6482 	.db	1
      000737 09                    6483 	.db	9
      000738 00 08                 6484 	.dw	Smain$mode_changing_control$379-Smain$mode_changing_control$377
      00073A 03                    6485 	.db	3
      00073B 02                    6486 	.sleb128	2
      00073C 01                    6487 	.db	1
      00073D 09                    6488 	.db	9
      00073E 00 03                 6489 	.dw	Smain$mode_changing_control$380-Smain$mode_changing_control$379
      000740 03                    6490 	.db	3
      000741 01                    6491 	.sleb128	1
      000742 01                    6492 	.db	1
      000743 09                    6493 	.db	9
      000744 00 00                 6494 	.dw	Smain$mode_changing_control$382-Smain$mode_changing_control$380
      000746 03                    6495 	.db	3
      000747 01                    6496 	.sleb128	1
      000748 01                    6497 	.db	1
      000749 09                    6498 	.db	9
      00074A 00 41                 6499 	.dw	Smain$mode_changing_control$383-Smain$mode_changing_control$382
      00074C 03                    6500 	.db	3
      00074D 01                    6501 	.sleb128	1
      00074E 01                    6502 	.db	1
      00074F 09                    6503 	.db	9
      000750 00 0C                 6504 	.dw	Smain$mode_changing_control$384-Smain$mode_changing_control$383
      000752 03                    6505 	.db	3
      000753 01                    6506 	.sleb128	1
      000754 01                    6507 	.db	1
      000755 09                    6508 	.db	9
      000756 00 05                 6509 	.dw	Smain$mode_changing_control$385-Smain$mode_changing_control$384
      000758 03                    6510 	.db	3
      000759 01                    6511 	.sleb128	1
      00075A 01                    6512 	.db	1
      00075B 09                    6513 	.db	9
      00075C 00 26                 6514 	.dw	Smain$mode_changing_control$387-Smain$mode_changing_control$385
      00075E 03                    6515 	.db	3
      00075F 01                    6516 	.sleb128	1
      000760 01                    6517 	.db	1
      000761 09                    6518 	.db	9
      000762 00 11                 6519 	.dw	Smain$mode_changing_control$390-Smain$mode_changing_control$387
      000764 03                    6520 	.db	3
      000765 02                    6521 	.sleb128	2
      000766 01                    6522 	.db	1
      000767 09                    6523 	.db	9
      000768 00 0D                 6524 	.dw	Smain$mode_changing_control$392-Smain$mode_changing_control$390
      00076A 03                    6525 	.db	3
      00076B 03                    6526 	.sleb128	3
      00076C 01                    6527 	.db	1
      00076D 09                    6528 	.db	9
      00076E 00 15                 6529 	.dw	Smain$mode_changing_control$393-Smain$mode_changing_control$392
      000770 03                    6530 	.db	3
      000771 01                    6531 	.sleb128	1
      000772 01                    6532 	.db	1
      000773 09                    6533 	.db	9
      000774 00 08                 6534 	.dw	Smain$mode_changing_control$395-Smain$mode_changing_control$393
      000776 03                    6535 	.db	3
      000777 01                    6536 	.sleb128	1
      000778 01                    6537 	.db	1
      000779 09                    6538 	.db	9
      00077A 00 06                 6539 	.dw	Smain$mode_changing_control$397-Smain$mode_changing_control$395
      00077C 03                    6540 	.db	3
      00077D 03                    6541 	.sleb128	3
      00077E 01                    6542 	.db	1
      00077F 09                    6543 	.db	9
      000780 00 03                 6544 	.dw	Smain$mode_changing_control$398-Smain$mode_changing_control$397
      000782 03                    6545 	.db	3
      000783 01                    6546 	.sleb128	1
      000784 01                    6547 	.db	1
      000785 09                    6548 	.db	9
      000786 00 00                 6549 	.dw	Smain$mode_changing_control$400-Smain$mode_changing_control$398
      000788 03                    6550 	.db	3
      000789 01                    6551 	.sleb128	1
      00078A 01                    6552 	.db	1
      00078B 09                    6553 	.db	9
      00078C 00 41                 6554 	.dw	Smain$mode_changing_control$401-Smain$mode_changing_control$400
      00078E 03                    6555 	.db	3
      00078F 01                    6556 	.sleb128	1
      000790 01                    6557 	.db	1
      000791 09                    6558 	.db	9
      000792 00 0C                 6559 	.dw	Smain$mode_changing_control$402-Smain$mode_changing_control$401
      000794 03                    6560 	.db	3
      000795 01                    6561 	.sleb128	1
      000796 01                    6562 	.db	1
      000797 09                    6563 	.db	9
      000798 00 05                 6564 	.dw	Smain$mode_changing_control$403-Smain$mode_changing_control$402
      00079A 03                    6565 	.db	3
      00079B 01                    6566 	.sleb128	1
      00079C 01                    6567 	.db	1
      00079D 09                    6568 	.db	9
      00079E 00 14                 6569 	.dw	Smain$mode_changing_control$405-Smain$mode_changing_control$403
      0007A0 03                    6570 	.db	3
      0007A1 01                    6571 	.sleb128	1
      0007A2 01                    6572 	.db	1
      0007A3 09                    6573 	.db	9
      0007A4 00 0A                 6574 	.dw	Smain$mode_changing_control$408-Smain$mode_changing_control$405
      0007A6 03                    6575 	.db	3
      0007A7 01                    6576 	.sleb128	1
      0007A8 01                    6577 	.db	1
      0007A9 09                    6578 	.db	9
      0007AA 00 14                 6579 	.dw	Smain$mode_changing_control$410-Smain$mode_changing_control$408
      0007AC 03                    6580 	.db	3
      0007AD 01                    6581 	.sleb128	1
      0007AE 01                    6582 	.db	1
      0007AF 09                    6583 	.db	9
      0007B0 00 0C                 6584 	.dw	Smain$mode_changing_control$413-Smain$mode_changing_control$410
      0007B2 03                    6585 	.db	3
      0007B3 02                    6586 	.sleb128	2
      0007B4 01                    6587 	.db	1
      0007B5 09                    6588 	.db	9
      0007B6 00 10                 6589 	.dw	Smain$mode_changing_control$415-Smain$mode_changing_control$413
      0007B8 03                    6590 	.db	3
      0007B9 03                    6591 	.sleb128	3
      0007BA 01                    6592 	.db	1
      0007BB 09                    6593 	.db	9
      0007BC 00 15                 6594 	.dw	Smain$mode_changing_control$416-Smain$mode_changing_control$415
      0007BE 03                    6595 	.db	3
      0007BF 01                    6596 	.sleb128	1
      0007C0 01                    6597 	.db	1
      0007C1 09                    6598 	.db	9
      0007C2 00 05                 6599 	.dw	Smain$mode_changing_control$418-Smain$mode_changing_control$416
      0007C4 03                    6600 	.db	3
      0007C5 01                    6601 	.sleb128	1
      0007C6 01                    6602 	.db	1
      0007C7 09                    6603 	.db	9
      0007C8 00 06                 6604 	.dw	Smain$mode_changing_control$420-Smain$mode_changing_control$418
      0007CA 03                    6605 	.db	3
      0007CB 04                    6606 	.sleb128	4
      0007CC 01                    6607 	.db	1
      0007CD 09                    6608 	.db	9
      0007CE 00 00                 6609 	.dw	Smain$mode_changing_control$422-Smain$mode_changing_control$420
      0007D0 03                    6610 	.db	3
      0007D1 51                    6611 	.sleb128	-47
      0007D2 01                    6612 	.db	1
      0007D3 09                    6613 	.db	9
      0007D4 00 08                 6614 	.dw	Smain$mode_changing_control$424-Smain$mode_changing_control$422
      0007D6 03                    6615 	.db	3
      0007D7 31                    6616 	.sleb128	49
      0007D8 01                    6617 	.db	1
      0007D9 09                    6618 	.db	9
      0007DA 00 04                 6619 	.dw	Smain$mode_changing_control$425-Smain$mode_changing_control$424
      0007DC 03                    6620 	.db	3
      0007DD 01                    6621 	.sleb128	1
      0007DE 01                    6622 	.db	1
      0007DF 09                    6623 	.db	9
      0007E0 00 01                 6624 	.dw	1+Smain$mode_changing_control$426-Smain$mode_changing_control$425
      0007E2 00                    6625 	.db	0
      0007E3 01                    6626 	.uleb128	1
      0007E4 01                    6627 	.db	1
      0007E5 00                    6628 	.db	0
      0007E6 05                    6629 	.uleb128	5
      0007E7 02                    6630 	.db	2
      0007E8 00 00 0D D0           6631 	.dw	0,(Smain$is_stable$428)
      0007EC 03                    6632 	.db	3
      0007ED E2 05                 6633 	.sleb128	738
      0007EF 01                    6634 	.db	1
      0007F0 09                    6635 	.db	9
      0007F1 00 00                 6636 	.dw	Smain$is_stable$431-Smain$is_stable$428
      0007F3 03                    6637 	.db	3
      0007F4 01                    6638 	.sleb128	1
      0007F5 01                    6639 	.db	1
      0007F6 09                    6640 	.db	9
      0007F7 00 0F                 6641 	.dw	Smain$is_stable$434-Smain$is_stable$431
      0007F9 03                    6642 	.db	3
      0007FA 01                    6643 	.sleb128	1
      0007FB 01                    6644 	.db	1
      0007FC 09                    6645 	.db	9
      0007FD 00 14                 6646 	.dw	Smain$is_stable$436-Smain$is_stable$434
      0007FF 03                    6647 	.db	3
      000800 7F                    6648 	.sleb128	-1
      000801 01                    6649 	.db	1
      000802 09                    6650 	.db	9
      000803 00 07                 6651 	.dw	Smain$is_stable$438-Smain$is_stable$436
      000805 03                    6652 	.db	3
      000806 04                    6653 	.sleb128	4
      000807 01                    6654 	.db	1
      000808 09                    6655 	.db	9
      000809 00 03                 6656 	.dw	Smain$is_stable$439-Smain$is_stable$438
      00080B 03                    6657 	.db	3
      00080C 01                    6658 	.sleb128	1
      00080D 01                    6659 	.db	1
      00080E 09                    6660 	.db	9
      00080F 00 01                 6661 	.dw	1+Smain$is_stable$440-Smain$is_stable$439
      000811 00                    6662 	.db	0
      000812 01                    6663 	.uleb128	1
      000813 01                    6664 	.db	1
      000814 00                    6665 	.db	0
      000815 05                    6666 	.uleb128	5
      000816 02                    6667 	.db	2
      000817 00 00 0D FE           6668 	.dw	0,(Smain$mode_stable_control$442)
      00081B 03                    6669 	.db	3
      00081C EA 05                 6670 	.sleb128	746
      00081E 01                    6671 	.db	1
      00081F 09                    6672 	.db	9
      000820 00 00                 6673 	.dw	Smain$mode_stable_control$444-Smain$mode_stable_control$442
      000822 03                    6674 	.db	3
      000823 02                    6675 	.sleb128	2
      000824 01                    6676 	.db	1
      000825 09                    6677 	.db	9
      000826 00 05                 6678 	.dw	Smain$mode_stable_control$445-Smain$mode_stable_control$444
      000828 03                    6679 	.db	3
      000829 02                    6680 	.sleb128	2
      00082A 01                    6681 	.db	1
      00082B 09                    6682 	.db	9
      00082C 00 35                 6683 	.dw	Smain$mode_stable_control$447-Smain$mode_stable_control$445
      00082E 03                    6684 	.db	3
      00082F 02                    6685 	.sleb128	2
      000830 01                    6686 	.db	1
      000831 09                    6687 	.db	9
      000832 00 12                 6688 	.dw	Smain$mode_stable_control$452-Smain$mode_stable_control$447
      000834 03                    6689 	.db	3
      000835 01                    6690 	.sleb128	1
      000836 01                    6691 	.db	1
      000837 09                    6692 	.db	9
      000838 00 21                 6693 	.dw	Smain$mode_stable_control$453-Smain$mode_stable_control$452
      00083A 03                    6694 	.db	3
      00083B 01                    6695 	.sleb128	1
      00083C 01                    6696 	.db	1
      00083D 09                    6697 	.db	9
      00083E 00 11                 6698 	.dw	Smain$mode_stable_control$455-Smain$mode_stable_control$453
      000840 03                    6699 	.db	3
      000841 02                    6700 	.sleb128	2
      000842 01                    6701 	.db	1
      000843 09                    6702 	.db	9
      000844 00 19                 6703 	.dw	Smain$mode_stable_control$456-Smain$mode_stable_control$455
      000846 03                    6704 	.db	3
      000847 01                    6705 	.sleb128	1
      000848 01                    6706 	.db	1
      000849 09                    6707 	.db	9
      00084A 00 0F                 6708 	.dw	Smain$mode_stable_control$457-Smain$mode_stable_control$456
      00084C 03                    6709 	.db	3
      00084D 01                    6710 	.sleb128	1
      00084E 01                    6711 	.db	1
      00084F 09                    6712 	.db	9
      000850 00 29                 6713 	.dw	Smain$mode_stable_control$459-Smain$mode_stable_control$457
      000852 03                    6714 	.db	3
      000853 01                    6715 	.sleb128	1
      000854 01                    6716 	.db	1
      000855 09                    6717 	.db	9
      000856 00 0C                 6718 	.dw	Smain$mode_stable_control$460-Smain$mode_stable_control$459
      000858 03                    6719 	.db	3
      000859 01                    6720 	.sleb128	1
      00085A 01                    6721 	.db	1
      00085B 09                    6722 	.db	9
      00085C 00 0E                 6723 	.dw	Smain$mode_stable_control$461-Smain$mode_stable_control$460
      00085E 03                    6724 	.db	3
      00085F 01                    6725 	.sleb128	1
      000860 01                    6726 	.db	1
      000861 09                    6727 	.db	9
      000862 00 25                 6728 	.dw	Smain$mode_stable_control$462-Smain$mode_stable_control$461
      000864 03                    6729 	.db	3
      000865 01                    6730 	.sleb128	1
      000866 01                    6731 	.db	1
      000867 09                    6732 	.db	9
      000868 00 06                 6733 	.dw	Smain$mode_stable_control$463-Smain$mode_stable_control$462
      00086A 03                    6734 	.db	3
      00086B 76                    6735 	.sleb128	-10
      00086C 01                    6736 	.db	1
      00086D 09                    6737 	.db	9
      00086E 00 08                 6738 	.dw	Smain$mode_stable_control$464-Smain$mode_stable_control$463
      000870 03                    6739 	.db	3
      000871 0D                    6740 	.sleb128	13
      000872 01                    6741 	.db	1
      000873 09                    6742 	.db	9
      000874 00 04                 6743 	.dw	Smain$mode_stable_control$465-Smain$mode_stable_control$464
      000876 03                    6744 	.db	3
      000877 01                    6745 	.sleb128	1
      000878 01                    6746 	.db	1
      000879 09                    6747 	.db	9
      00087A 00 01                 6748 	.dw	1+Smain$mode_stable_control$466-Smain$mode_stable_control$465
      00087C 00                    6749 	.db	0
      00087D 01                    6750 	.uleb128	1
      00087E 01                    6751 	.db	1
      00087F 00                    6752 	.db	0
      000880 05                    6753 	.uleb128	5
      000881 02                    6754 	.db	2
      000882 00 00 0F 21           6755 	.dw	0,(Smain$control_loop$468)
      000886 03                    6756 	.db	3
      000887 80 06                 6757 	.sleb128	768
      000889 01                    6758 	.db	1
      00088A 09                    6759 	.db	9
      00088B 00 00                 6760 	.dw	Smain$control_loop$470-Smain$control_loop$468
      00088D 03                    6761 	.db	3
      00088E 04                    6762 	.sleb128	4
      00088F 01                    6763 	.db	1
      000890 09                    6764 	.db	9
      000891 00 03                 6765 	.dw	Smain$control_loop$471-Smain$control_loop$470
      000893 03                    6766 	.db	3
      000894 02                    6767 	.sleb128	2
      000895 01                    6768 	.db	1
      000896 09                    6769 	.db	9
      000897 00 09                 6770 	.dw	Smain$control_loop$472-Smain$control_loop$471
      000899 03                    6771 	.db	3
      00089A 02                    6772 	.sleb128	2
      00089B 01                    6773 	.db	1
      00089C 09                    6774 	.db	9
      00089D 00 0A                 6775 	.dw	Smain$control_loop$474-Smain$control_loop$472
      00089F 03                    6776 	.db	3
      0008A0 01                    6777 	.sleb128	1
      0008A1 01                    6778 	.db	1
      0008A2 09                    6779 	.db	9
      0008A3 00 07                 6780 	.dw	Smain$control_loop$476-Smain$control_loop$474
      0008A5 03                    6781 	.db	3
      0008A6 02                    6782 	.sleb128	2
      0008A7 01                    6783 	.db	1
      0008A8 09                    6784 	.db	9
      0008A9 00 0F                 6785 	.dw	Smain$control_loop$478-Smain$control_loop$476
      0008AB 03                    6786 	.db	3
      0008AC 01                    6787 	.sleb128	1
      0008AD 01                    6788 	.db	1
      0008AE 09                    6789 	.db	9
      0008AF 00 62                 6790 	.dw	Smain$control_loop$479-Smain$control_loop$478
      0008B1 03                    6791 	.db	3
      0008B2 7F                    6792 	.sleb128	-1
      0008B3 01                    6793 	.db	1
      0008B4 09                    6794 	.db	9
      0008B5 00 07                 6795 	.dw	Smain$control_loop$480-Smain$control_loop$479
      0008B7 03                    6796 	.db	3
      0008B8 03                    6797 	.sleb128	3
      0008B9 01                    6798 	.db	1
      0008BA 09                    6799 	.db	9
      0008BB 00 03                 6800 	.dw	Smain$control_loop$481-Smain$control_loop$480
      0008BD 03                    6801 	.db	3
      0008BE 02                    6802 	.sleb128	2
      0008BF 01                    6803 	.db	1
      0008C0 09                    6804 	.db	9
      0008C1 00 13                 6805 	.dw	Smain$control_loop$483-Smain$control_loop$481
      0008C3 03                    6806 	.db	3
      0008C4 01                    6807 	.sleb128	1
      0008C5 01                    6808 	.db	1
      0008C6 09                    6809 	.db	9
      0008C7 00 08                 6810 	.dw	Smain$control_loop$485-Smain$control_loop$483
      0008C9 03                    6811 	.db	3
      0008CA 01                    6812 	.sleb128	1
      0008CB 01                    6813 	.db	1
      0008CC 09                    6814 	.db	9
      0008CD 00 05                 6815 	.dw	Smain$control_loop$487-Smain$control_loop$485
      0008CF 03                    6816 	.db	3
      0008D0 01                    6817 	.sleb128	1
      0008D1 01                    6818 	.db	1
      0008D2 09                    6819 	.db	9
      0008D3 00 03                 6820 	.dw	Smain$control_loop$489-Smain$control_loop$487
      0008D5 03                    6821 	.db	3
      0008D6 01                    6822 	.sleb128	1
      0008D7 01                    6823 	.db	1
      0008D8 09                    6824 	.db	9
      0008D9 00 03                 6825 	.dw	Smain$control_loop$491-Smain$control_loop$489
      0008DB 03                    6826 	.db	3
      0008DC 04                    6827 	.sleb128	4
      0008DD 01                    6828 	.db	1
      0008DE 09                    6829 	.db	9
      0008DF 00 0A                 6830 	.dw	Smain$control_loop$493-Smain$control_loop$491
      0008E1 03                    6831 	.db	3
      0008E2 01                    6832 	.sleb128	1
      0008E3 01                    6833 	.db	1
      0008E4 09                    6834 	.db	9
      0008E5 00 13                 6835 	.dw	Smain$control_loop$495-Smain$control_loop$493
      0008E7 03                    6836 	.db	3
      0008E8 01                    6837 	.sleb128	1
      0008E9 01                    6838 	.db	1
      0008EA 09                    6839 	.db	9
      0008EB 00 09                 6840 	.dw	Smain$control_loop$497-Smain$control_loop$495
      0008ED 03                    6841 	.db	3
      0008EE 02                    6842 	.sleb128	2
      0008EF 01                    6843 	.db	1
      0008F0 09                    6844 	.db	9
      0008F1 00 03                 6845 	.dw	Smain$control_loop$499-Smain$control_loop$497
      0008F3 03                    6846 	.db	3
      0008F4 04                    6847 	.sleb128	4
      0008F5 01                    6848 	.db	1
      0008F6 09                    6849 	.db	9
      0008F7 00 06                 6850 	.dw	Smain$control_loop$501-Smain$control_loop$499
      0008F9 03                    6851 	.db	3
      0008FA 01                    6852 	.sleb128	1
      0008FB 01                    6853 	.db	1
      0008FC 09                    6854 	.db	9
      0008FD 00 03                 6855 	.dw	Smain$control_loop$503-Smain$control_loop$501
      0008FF 03                    6856 	.db	3
      000900 03                    6857 	.sleb128	3
      000901 01                    6858 	.db	1
      000902 09                    6859 	.db	9
      000903 00 01                 6860 	.dw	1+Smain$control_loop$504-Smain$control_loop$503
      000905 00                    6861 	.db	0
      000906 01                    6862 	.uleb128	1
      000907 01                    6863 	.db	1
      000908 00                    6864 	.db	0
      000909 05                    6865 	.uleb128	5
      00090A 02                    6866 	.db	2
      00090B 00 00 10 12           6867 	.dw	0,(Smain$wdt_init$506)
      00090F 03                    6868 	.db	3
      000910 A7 06                 6869 	.sleb128	807
      000912 01                    6870 	.db	1
      000913 09                    6871 	.db	9
      000914 00 00                 6872 	.dw	Smain$wdt_init$508-Smain$wdt_init$506
      000916 03                    6873 	.db	3
      000917 02                    6874 	.sleb128	2
      000918 01                    6875 	.db	1
      000919 09                    6876 	.db	9
      00091A 00 03                 6877 	.dw	Smain$wdt_init$509-Smain$wdt_init$508
      00091C 03                    6878 	.db	3
      00091D 01                    6879 	.sleb128	1
      00091E 01                    6880 	.db	1
      00091F 09                    6881 	.db	9
      000920 00 04                 6882 	.dw	Smain$wdt_init$510-Smain$wdt_init$509
      000922 03                    6883 	.db	3
      000923 01                    6884 	.sleb128	1
      000924 01                    6885 	.db	1
      000925 09                    6886 	.db	9
      000926 00 02                 6887 	.dw	Smain$wdt_init$511-Smain$wdt_init$510
      000928 03                    6888 	.db	3
      000929 02                    6889 	.sleb128	2
      00092A 01                    6890 	.db	1
      00092B 09                    6891 	.db	9
      00092C 00 03                 6892 	.dw	Smain$wdt_init$512-Smain$wdt_init$511
      00092E 03                    6893 	.db	3
      00092F 01                    6894 	.sleb128	1
      000930 01                    6895 	.db	1
      000931 09                    6896 	.db	9
      000932 00 03                 6897 	.dw	Smain$wdt_init$513-Smain$wdt_init$512
      000934 03                    6898 	.db	3
      000935 02                    6899 	.sleb128	2
      000936 01                    6900 	.db	1
      000937 09                    6901 	.db	9
      000938 00 03                 6902 	.dw	Smain$wdt_init$514-Smain$wdt_init$513
      00093A 03                    6903 	.db	3
      00093B 01                    6904 	.sleb128	1
      00093C 01                    6905 	.db	1
      00093D 09                    6906 	.db	9
      00093E 00 03                 6907 	.dw	Smain$wdt_init$515-Smain$wdt_init$514
      000940 03                    6908 	.db	3
      000941 06                    6909 	.sleb128	6
      000942 01                    6910 	.db	1
      000943 09                    6911 	.db	9
      000944 00 04                 6912 	.dw	Smain$wdt_init$516-Smain$wdt_init$515
      000946 03                    6913 	.db	3
      000947 10                    6914 	.sleb128	16
      000948 01                    6915 	.db	1
      000949 09                    6916 	.db	9
      00094A 00 03                 6917 	.dw	Smain$wdt_init$517-Smain$wdt_init$516
      00094C 03                    6918 	.db	3
      00094D 01                    6919 	.sleb128	1
      00094E 01                    6920 	.db	1
      00094F 09                    6921 	.db	9
      000950 00 01                 6922 	.dw	1+Smain$wdt_init$518-Smain$wdt_init$517
      000952 00                    6923 	.db	0
      000953 01                    6924 	.uleb128	1
      000954 01                    6925 	.db	1
      000955 00                    6926 	.db	0
      000956 05                    6927 	.uleb128	5
      000957 02                    6928 	.db	2
      000958 00 00 10 2F           6929 	.dw	0,(Smain$wdt_clear$520)
      00095C 03                    6930 	.db	3
      00095D CB 06                 6931 	.sleb128	843
      00095F 01                    6932 	.db	1
      000960 09                    6933 	.db	9
      000961 00 00                 6934 	.dw	Smain$wdt_clear$522-Smain$wdt_clear$520
      000963 03                    6935 	.db	3
      000964 02                    6936 	.sleb128	2
      000965 01                    6937 	.db	1
      000966 09                    6938 	.db	9
      000967 00 04                 6939 	.dw	Smain$wdt_clear$523-Smain$wdt_clear$522
      000969 03                    6940 	.db	3
      00096A 01                    6941 	.sleb128	1
      00096B 01                    6942 	.db	1
      00096C 09                    6943 	.db	9
      00096D 00 02                 6944 	.dw	Smain$wdt_clear$524-Smain$wdt_clear$523
      00096F 03                    6945 	.db	3
      000970 02                    6946 	.sleb128	2
      000971 01                    6947 	.db	1
      000972 09                    6948 	.db	9
      000973 00 03                 6949 	.dw	Smain$wdt_clear$525-Smain$wdt_clear$524
      000975 03                    6950 	.db	3
      000976 01                    6951 	.sleb128	1
      000977 01                    6952 	.db	1
      000978 09                    6953 	.db	9
      000979 00 03                 6954 	.dw	Smain$wdt_clear$526-Smain$wdt_clear$525
      00097B 03                    6955 	.db	3
      00097C 02                    6956 	.sleb128	2
      00097D 01                    6957 	.db	1
      00097E 09                    6958 	.db	9
      00097F 00 03                 6959 	.dw	Smain$wdt_clear$527-Smain$wdt_clear$526
      000981 03                    6960 	.db	3
      000982 01                    6961 	.sleb128	1
      000983 01                    6962 	.db	1
      000984 09                    6963 	.db	9
      000985 00 04                 6964 	.dw	Smain$wdt_clear$528-Smain$wdt_clear$527
      000987 03                    6965 	.db	3
      000988 03                    6966 	.sleb128	3
      000989 01                    6967 	.db	1
      00098A 09                    6968 	.db	9
      00098B 00 01                 6969 	.dw	1+Smain$wdt_clear$529-Smain$wdt_clear$528
      00098D 00                    6970 	.db	0
      00098E 01                    6971 	.uleb128	1
      00098F 01                    6972 	.db	1
      000990 00                    6973 	.db	0
      000991 05                    6974 	.uleb128	5
      000992 02                    6975 	.db	2
      000993 00 00 10 43           6976 	.dw	0,(Smain$main$531)
      000997 03                    6977 	.db	3
      000998 DA 06                 6978 	.sleb128	858
      00099A 01                    6979 	.db	1
      00099B 09                    6980 	.db	9
      00099C 00 00                 6981 	.dw	Smain$main$533-Smain$main$531
      00099E 03                    6982 	.db	3
      00099F 03                    6983 	.sleb128	3
      0009A0 01                    6984 	.db	1
      0009A1 09                    6985 	.db	9
      0009A2 00 06                 6986 	.dw	Smain$main$534-Smain$main$533
      0009A4 03                    6987 	.db	3
      0009A5 07                    6988 	.sleb128	7
      0009A6 01                    6989 	.db	1
      0009A7 09                    6990 	.db	9
      0009A8 00 03                 6991 	.dw	Smain$main$535-Smain$main$534
      0009AA 03                    6992 	.db	3
      0009AB 01                    6993 	.sleb128	1
      0009AC 01                    6994 	.db	1
      0009AD 09                    6995 	.db	9
      0009AE 00 03                 6996 	.dw	Smain$main$536-Smain$main$535
      0009B0 03                    6997 	.db	3
      0009B1 05                    6998 	.sleb128	5
      0009B2 01                    6999 	.db	1
      0009B3 09                    7000 	.db	9
      0009B4 00 0B                 7001 	.dw	Smain$main$538-Smain$main$536
      0009B6 03                    7002 	.db	3
      0009B7 01                    7003 	.sleb128	1
      0009B8 01                    7004 	.db	1
      0009B9 09                    7005 	.db	9
      0009BA 00 07                 7006 	.dw	Smain$main$539-Smain$main$538
      0009BC 03                    7007 	.db	3
      0009BD 01                    7008 	.sleb128	1
      0009BE 01                    7009 	.db	1
      0009BF 09                    7010 	.db	9
      0009C0 00 1E                 7011 	.dw	Smain$main$541-Smain$main$539
      0009C2 03                    7012 	.db	3
      0009C3 7E                    7013 	.sleb128	-2
      0009C4 01                    7014 	.db	1
      0009C5 09                    7015 	.db	9
      0009C6 00 33                 7016 	.dw	Smain$main$542-Smain$main$541
      0009C8 03                    7017 	.db	3
      0009C9 07                    7018 	.sleb128	7
      0009CA 01                    7019 	.db	1
      0009CB 09                    7020 	.db	9
      0009CC 00 06                 7021 	.dw	Smain$main$544-Smain$main$542
      0009CE 03                    7022 	.db	3
      0009CF 01                    7023 	.sleb128	1
      0009D0 01                    7024 	.db	1
      0009D1 09                    7025 	.db	9
      0009D2 00 03                 7026 	.dw	Smain$main$546-Smain$main$544
      0009D4 03                    7027 	.db	3
      0009D5 03                    7028 	.sleb128	3
      0009D6 01                    7029 	.db	1
      0009D7 09                    7030 	.db	9
      0009D8 00 03                 7031 	.dw	Smain$main$547-Smain$main$546
      0009DA 03                    7032 	.db	3
      0009DB 02                    7033 	.sleb128	2
      0009DC 01                    7034 	.db	1
      0009DD 09                    7035 	.db	9
      0009DE 00 00                 7036 	.dw	Smain$main$549-Smain$main$547
      0009E0 03                    7037 	.db	3
      0009E1 0A                    7038 	.sleb128	10
      0009E2 01                    7039 	.db	1
      0009E3 09                    7040 	.db	9
      0009E4 00 06                 7041 	.dw	Smain$main$551-Smain$main$549
      0009E6 03                    7042 	.db	3
      0009E7 01                    7043 	.sleb128	1
      0009E8 01                    7044 	.db	1
      0009E9 09                    7045 	.db	9
      0009EA 00 06                 7046 	.dw	Smain$main$553-Smain$main$551
      0009EC 03                    7047 	.db	3
      0009ED 01                    7048 	.sleb128	1
      0009EE 01                    7049 	.db	1
      0009EF 09                    7050 	.db	9
      0009F0 00 16                 7051 	.dw	Smain$main$555-Smain$main$553
      0009F2 03                    7052 	.db	3
      0009F3 02                    7053 	.sleb128	2
      0009F4 01                    7054 	.db	1
      0009F5 09                    7055 	.db	9
      0009F6 00 05                 7056 	.dw	Smain$main$558-Smain$main$555
      0009F8 03                    7057 	.db	3
      0009F9 02                    7058 	.sleb128	2
      0009FA 01                    7059 	.db	1
      0009FB 09                    7060 	.db	9
      0009FC 00 03                 7061 	.dw	Smain$main$560-Smain$main$558
      0009FE 03                    7062 	.db	3
      0009FF 03                    7063 	.sleb128	3
      000A00 01                    7064 	.db	1
      000A01 09                    7065 	.db	9
      000A02 00 06                 7066 	.dw	Smain$main$562-Smain$main$560
      000A04 03                    7067 	.db	3
      000A05 01                    7068 	.sleb128	1
      000A06 01                    7069 	.db	1
      000A07 09                    7070 	.db	9
      000A08 00 44                 7071 	.dw	Smain$main$564-Smain$main$562
      000A0A 03                    7072 	.db	3
      000A0B 01                    7073 	.sleb128	1
      000A0C 01                    7074 	.db	1
      000A0D 09                    7075 	.db	9
      000A0E 00 03                 7076 	.dw	Smain$main$565-Smain$main$564
      000A10 03                    7077 	.db	3
      000A11 01                    7078 	.sleb128	1
      000A12 01                    7079 	.db	1
      000A13 09                    7080 	.db	9
      000A14 00 03                 7081 	.dw	Smain$main$566-Smain$main$565
      000A16 03                    7082 	.db	3
      000A17 02                    7083 	.sleb128	2
      000A18 01                    7084 	.db	1
      000A19 09                    7085 	.db	9
      000A1A 00 02                 7086 	.dw	Smain$main$567-Smain$main$566
      000A1C 03                    7087 	.db	3
      000A1D 01                    7088 	.sleb128	1
      000A1E 01                    7089 	.db	1
      000A1F 09                    7090 	.db	9
      000A20 00 02                 7091 	.dw	Smain$main$568-Smain$main$567
      000A22 03                    7092 	.db	3
      000A23 01                    7093 	.sleb128	1
      000A24 01                    7094 	.db	1
      000A25 09                    7095 	.db	9
      000A26 00 03                 7096 	.dw	Smain$main$569-Smain$main$568
      000A28 03                    7097 	.db	3
      000A29 01                    7098 	.sleb128	1
      000A2A 01                    7099 	.db	1
      000A2B 09                    7100 	.db	9
      000A2C 00 01                 7101 	.dw	Smain$main$570-Smain$main$569
      000A2E 03                    7102 	.db	3
      000A2F 01                    7103 	.sleb128	1
      000A30 01                    7104 	.db	1
      000A31 09                    7105 	.db	9
      000A32 00 01                 7106 	.dw	Smain$main$571-Smain$main$570
      000A34 03                    7107 	.db	3
      000A35 01                    7108 	.sleb128	1
      000A36 01                    7109 	.db	1
      000A37 09                    7110 	.db	9
      000A38 00 03                 7111 	.dw	Smain$main$572-Smain$main$571
      000A3A 03                    7112 	.db	3
      000A3B 02                    7113 	.sleb128	2
      000A3C 01                    7114 	.db	1
      000A3D 09                    7115 	.db	9
      000A3E 00 03                 7116 	.dw	Smain$main$573-Smain$main$572
      000A40 03                    7117 	.db	3
      000A41 01                    7118 	.sleb128	1
      000A42 01                    7119 	.db	1
      000A43 09                    7120 	.db	9
      000A44 00 06                 7121 	.dw	Smain$main$575-Smain$main$573
      000A46 03                    7122 	.db	3
      000A47 01                    7123 	.sleb128	1
      000A48 01                    7124 	.db	1
      000A49 09                    7125 	.db	9
      000A4A 00 05                 7126 	.dw	Smain$main$578-Smain$main$575
      000A4C 03                    7127 	.db	3
      000A4D 02                    7128 	.sleb128	2
      000A4E 01                    7129 	.db	1
      000A4F 09                    7130 	.db	9
      000A50 00 03                 7131 	.dw	Smain$main$580-Smain$main$578
      000A52 03                    7132 	.db	3
      000A53 05                    7133 	.sleb128	5
      000A54 01                    7134 	.db	1
      000A55 09                    7135 	.db	9
      000A56 00 03                 7136 	.dw	Smain$main$581-Smain$main$580
      000A58 03                    7137 	.db	3
      000A59 02                    7138 	.sleb128	2
      000A5A 01                    7139 	.db	1
      000A5B 09                    7140 	.db	9
      000A5C 00 1E                 7141 	.dw	Smain$main$582-Smain$main$581
      000A5E 03                    7142 	.db	3
      000A5F 02                    7143 	.sleb128	2
      000A60 01                    7144 	.db	1
      000A61 09                    7145 	.db	9
      000A62 00 06                 7146 	.dw	Smain$main$584-Smain$main$582
      000A64 03                    7147 	.db	3
      000A65 02                    7148 	.sleb128	2
      000A66 01                    7149 	.db	1
      000A67 09                    7150 	.db	9
      000A68 00 01                 7151 	.dw	1+Smain$main$585-Smain$main$584
      000A6A 00                    7152 	.db	0
      000A6B 01                    7153 	.uleb128	1
      000A6C 01                    7154 	.db	1
      000A6D                       7155 Ldebug_line_end:
                                   7156 
                                   7157 	.area .debug_loc (NOLOAD)
      000000                       7158 Ldebug_loc_start:
      000000 00 00 10 43           7159 	.dw	0,(Smain$main$532)
      000004 00 00 11 7D           7160 	.dw	0,(Smain$main$586)
      000008 00 02                 7161 	.dw	2
      00000A 86                    7162 	.db	134
      00000B 01                    7163 	.sleb128	1
      00000C 00 00 00 00           7164 	.dw	0,0
      000010 00 00 00 00           7165 	.dw	0,0
      000014 00 00 10 2F           7166 	.dw	0,(Smain$wdt_clear$521)
      000018 00 00 10 43           7167 	.dw	0,(Smain$wdt_clear$530)
      00001C 00 02                 7168 	.dw	2
      00001E 86                    7169 	.db	134
      00001F 01                    7170 	.sleb128	1
      000020 00 00 00 00           7171 	.dw	0,0
      000024 00 00 00 00           7172 	.dw	0,0
      000028 00 00 10 12           7173 	.dw	0,(Smain$wdt_init$507)
      00002C 00 00 10 2F           7174 	.dw	0,(Smain$wdt_init$519)
      000030 00 02                 7175 	.dw	2
      000032 86                    7176 	.db	134
      000033 01                    7177 	.sleb128	1
      000034 00 00 00 00           7178 	.dw	0,0
      000038 00 00 00 00           7179 	.dw	0,0
      00003C 00 00 0F 21           7180 	.dw	0,(Smain$control_loop$469)
      000040 00 00 10 12           7181 	.dw	0,(Smain$control_loop$505)
      000044 00 02                 7182 	.dw	2
      000046 86                    7183 	.db	134
      000047 01                    7184 	.sleb128	1
      000048 00 00 00 00           7185 	.dw	0,0
      00004C 00 00 00 00           7186 	.dw	0,0
      000050 00 00 0D FE           7187 	.dw	0,(Smain$mode_stable_control$443)
      000054 00 00 0F 21           7188 	.dw	0,(Smain$mode_stable_control$467)
      000058 00 02                 7189 	.dw	2
      00005A 86                    7190 	.db	134
      00005B 01                    7191 	.sleb128	1
      00005C 00 00 00 00           7192 	.dw	0,0
      000060 00 00 00 00           7193 	.dw	0,0
      000064 00 00 0D D0           7194 	.dw	0,(Smain$is_stable$429)
      000068 00 00 0D FE           7195 	.dw	0,(Smain$is_stable$441)
      00006C 00 02                 7196 	.dw	2
      00006E 86                    7197 	.db	134
      00006F 01                    7198 	.sleb128	1
      000070 00 00 00 00           7199 	.dw	0,0
      000074 00 00 00 00           7200 	.dw	0,0
      000078 00 00 0B B3           7201 	.dw	0,(Smain$mode_changing_control$351)
      00007C 00 00 0D D0           7202 	.dw	0,(Smain$mode_changing_control$427)
      000080 00 02                 7203 	.dw	2
      000082 86                    7204 	.db	134
      000083 01                    7205 	.sleb128	1
      000084 00 00 00 00           7206 	.dw	0,0
      000088 00 00 00 00           7207 	.dw	0,0
      00008C 00 00 0B 7C           7208 	.dw	0,(Smain$activate_leds$340)
      000090 00 00 0B B3           7209 	.dw	0,(Smain$activate_leds$349)
      000094 00 02                 7210 	.dw	2
      000096 86                    7211 	.db	134
      000097 01                    7212 	.sleb128	1
      000098 00 00 00 00           7213 	.dw	0,0
      00009C 00 00 00 00           7214 	.dw	0,0
      0000A0 00 00 0B 45           7215 	.dw	0,(Smain$stop_leds$327)
      0000A4 00 00 0B 7C           7216 	.dw	0,(Smain$stop_leds$338)
      0000A8 00 02                 7217 	.dw	2
      0000AA 86                    7218 	.db	134
      0000AB 01                    7219 	.sleb128	1
      0000AC 00 00 00 00           7220 	.dw	0,0
      0000B0 00 00 00 00           7221 	.dw	0,0
      0000B4 00 00 0A 66           7222 	.dw	0,(Smain$process_button$295)
      0000B8 00 00 0B 45           7223 	.dw	0,(Smain$process_button$325)
      0000BC 00 02                 7224 	.dw	2
      0000BE 86                    7225 	.db	134
      0000BF 01                    7226 	.sleb128	1
      0000C0 00 00 00 00           7227 	.dw	0,0
      0000C4 00 00 00 00           7228 	.dw	0,0
      0000C8 00 00 09 18           7229 	.dw	0,(Smain$process_uart$242)
      0000CC 00 00 0A 66           7230 	.dw	0,(Smain$process_uart$293)
      0000D0 00 02                 7231 	.dw	2
      0000D2 86                    7232 	.db	134
      0000D3 01                    7233 	.sleb128	1
      0000D4 00 00 00 00           7234 	.dw	0,0
      0000D8 00 00 00 00           7235 	.dw	0,0
      0000DC 00 00 09 0A           7236 	.dw	0,(Smain$toNextMode$236)
      0000E0 00 00 09 18           7237 	.dw	0,(Smain$toNextMode$240)
      0000E4 00 02                 7238 	.dw	2
      0000E6 86                    7239 	.db	134
      0000E7 01                    7240 	.sleb128	1
      0000E8 00 00 00 00           7241 	.dw	0,0
      0000EC 00 00 00 00           7242 	.dw	0,0
      0000F0 00 00 07 6D           7243 	.dw	0,(Smain$changeMode$190)
      0000F4 00 00 09 0A           7244 	.dw	0,(Smain$changeMode$234)
      0000F8 00 02                 7245 	.dw	2
      0000FA 86                    7246 	.db	134
      0000FB 01                    7247 	.sleb128	1
      0000FC 00 00 00 00           7248 	.dw	0,0
      000100 00 00 00 00           7249 	.dw	0,0
      000104 00 00 06 50           7250 	.dw	0,(Smain$target_amp$171)
      000108 00 00 07 6D           7251 	.dw	0,(Smain$target_amp$188)
      00010C 00 02                 7252 	.dw	2
      00010E 86                    7253 	.db	134
      00010F 01                    7254 	.sleb128	1
      000110 00 00 00 00           7255 	.dw	0,0
      000114 00 00 00 00           7256 	.dw	0,0
      000118 00 00 05 EB           7257 	.dw	0,(Smain$avg_amp$159)
      00011C 00 00 06 50           7258 	.dw	0,(Smain$avg_amp$169)
      000120 00 02                 7259 	.dw	2
      000122 86                    7260 	.db	134
      000123 01                    7261 	.sleb128	1
      000124 00 00 00 00           7262 	.dw	0,0
      000128 00 00 00 00           7263 	.dw	0,0
      00012C 00 00 05 AB           7264 	.dw	0,(Smain$has_high_beam$153)
      000130 00 00 05 EB           7265 	.dw	0,(Smain$has_high_beam$157)
      000134 00 02                 7266 	.dw	2
      000136 86                    7267 	.db	134
      000137 01                    7268 	.sleb128	1
      000138 00 00 00 00           7269 	.dw	0,0
      00013C 00 00 00 00           7270 	.dw	0,0
      000140 00 00 04 E4           7271 	.dw	0,(Smain$sample_temperature$142)
      000144 00 00 05 AB           7272 	.dw	0,(Smain$sample_temperature$151)
      000148 00 02                 7273 	.dw	2
      00014A 86                    7274 	.db	134
      00014B 01                    7275 	.sleb128	1
      00014C 00 00 00 00           7276 	.dw	0,0
      000150 00 00 00 00           7277 	.dw	0,0
      000154 00 00 03 97           7278 	.dw	0,(Smain$sample_amps$125)
      000158 00 00 04 E4           7279 	.dw	0,(Smain$sample_amps$140)
      00015C 00 02                 7280 	.dw	2
      00015E 86                    7281 	.db	134
      00015F 01                    7282 	.sleb128	1
      000160 00 00 00 00           7283 	.dw	0,0
      000164 00 00 00 00           7284 	.dw	0,0
      000168 00 00 02 F5           7285 	.dw	0,(Smain$init_peripherals_but_button_n_uart$95)
      00016C 00 00 03 97           7286 	.dw	0,(Smain$init_peripherals_but_button_n_uart$123)
      000170 00 02                 7287 	.dw	2
      000172 86                    7288 	.db	134
      000173 01                    7289 	.sleb128	1
      000174 00 00 00 00           7290 	.dw	0,0
      000178 00 00 00 00           7291 	.dw	0,0
      00017C 00 00 02 AB           7292 	.dw	0,(Smain$init_sample$79)
      000180 00 00 02 F5           7293 	.dw	0,(Smain$init_sample$93)
      000184 00 02                 7294 	.dw	2
      000186 86                    7295 	.db	134
      000187 01                    7296 	.sleb128	1
      000188 00 00 00 00           7297 	.dw	0,0
      00018C 00 00 00 00           7298 	.dw	0,0
      000190 00 00 02 A2           7299 	.dw	0,(Smain$disable_ntc$72)
      000194 00 00 02 AB           7300 	.dw	0,(Smain$disable_ntc$77)
      000198 00 02                 7301 	.dw	2
      00019A 86                    7302 	.db	134
      00019B 01                    7303 	.sleb128	1
      00019C 00 00 00 00           7304 	.dw	0,0
      0001A0 00 00 00 00           7305 	.dw	0,0
      0001A4 00 00 02 99           7306 	.dw	0,(Smain$enable_ntc$65)
      0001A8 00 00 02 A2           7307 	.dw	0,(Smain$enable_ntc$70)
      0001AC 00 02                 7308 	.dw	2
      0001AE 86                    7309 	.db	134
      0001AF 01                    7310 	.sleb128	1
      0001B0 00 00 00 00           7311 	.dw	0,0
      0001B4 00 00 00 00           7312 	.dw	0,0
      0001B8 00 00 02 81           7313 	.dw	0,(Smain$button_interrupt_init$56)
      0001BC 00 00 02 99           7314 	.dw	0,(Smain$button_interrupt_init$63)
      0001C0 00 02                 7315 	.dw	2
      0001C2 86                    7316 	.db	134
      0001C3 01                    7317 	.sleb128	1
      0001C4 00 00 00 00           7318 	.dw	0,0
      0001C8 00 00 00 00           7319 	.dw	0,0
      0001CC 00 00 02 50           7320 	.dw	0,(Smain$PinInterrupt_ISR$44)
      0001D0 00 00 02 81           7321 	.dw	0,(Smain$PinInterrupt_ISR$54)
      0001D4 00 02                 7322 	.dw	2
      0001D6 86                    7323 	.db	134
      0001D7 01                    7324 	.sleb128	1
      0001D8 00 00 00 00           7325 	.dw	0,0
      0001DC 00 00 00 00           7326 	.dw	0,0
      0001E0 00 00 02 24           7327 	.dw	0,(Smain$uart_interrupt_init$37)
      0001E4 00 00 02 48           7328 	.dw	0,(Smain$uart_interrupt_init$42)
      0001E8 00 02                 7329 	.dw	2
      0001EA 86                    7330 	.db	134
      0001EB 01                    7331 	.sleb128	1
      0001EC 00 00 00 00           7332 	.dw	0,0
      0001F0 00 00 00 00           7333 	.dw	0,0
      0001F4 00 00 01 C4           7334 	.dw	0,(Smain$SerialPort1_ISR$20)
      0001F8 00 00 02 24           7335 	.dw	0,(Smain$SerialPort1_ISR$35)
      0001FC 00 02                 7336 	.dw	2
      0001FE 86                    7337 	.db	134
      0001FF 01                    7338 	.sleb128	1
      000200 00 00 00 00           7339 	.dw	0,0
      000204 00 00 00 00           7340 	.dw	0,0
      000208 00 00 00 DD           7341 	.dw	0,(Smain$Timer0_Delay$1)
      00020C 00 00 01 A5           7342 	.dw	0,(Smain$Timer0_Delay$18)
      000210 00 02                 7343 	.dw	2
      000212 86                    7344 	.db	134
      000213 01                    7345 	.sleb128	1
      000214 00 00 00 00           7346 	.dw	0,0
      000218 00 00 00 00           7347 	.dw	0,0
                                   7348 
                                   7349 	.area .debug_abbrev (NOLOAD)
      000000                       7350 Ldebug_abbrev:
      000000 01                    7351 	.uleb128	1
      000001 11                    7352 	.uleb128	17
      000002 01                    7353 	.db	1
      000003 03                    7354 	.uleb128	3
      000004 08                    7355 	.uleb128	8
      000005 10                    7356 	.uleb128	16
      000006 06                    7357 	.uleb128	6
      000007 13                    7358 	.uleb128	19
      000008 0B                    7359 	.uleb128	11
      000009 25                    7360 	.uleb128	37
      00000A 08                    7361 	.uleb128	8
      00000B 00                    7362 	.uleb128	0
      00000C 00                    7363 	.uleb128	0
      00000D 02                    7364 	.uleb128	2
      00000E 2E                    7365 	.uleb128	46
      00000F 01                    7366 	.db	1
      000010 01                    7367 	.uleb128	1
      000011 13                    7368 	.uleb128	19
      000012 03                    7369 	.uleb128	3
      000013 08                    7370 	.uleb128	8
      000014 11                    7371 	.uleb128	17
      000015 01                    7372 	.uleb128	1
      000016 12                    7373 	.uleb128	18
      000017 01                    7374 	.uleb128	1
      000018 3F                    7375 	.uleb128	63
      000019 0C                    7376 	.uleb128	12
      00001A 40                    7377 	.uleb128	64
      00001B 06                    7378 	.uleb128	6
      00001C 00                    7379 	.uleb128	0
      00001D 00                    7380 	.uleb128	0
      00001E 03                    7381 	.uleb128	3
      00001F 05                    7382 	.uleb128	5
      000020 00                    7383 	.db	0
      000021 02                    7384 	.uleb128	2
      000022 0A                    7385 	.uleb128	10
      000023 03                    7386 	.uleb128	3
      000024 08                    7387 	.uleb128	8
      000025 49                    7388 	.uleb128	73
      000026 13                    7389 	.uleb128	19
      000027 00                    7390 	.uleb128	0
      000028 00                    7391 	.uleb128	0
      000029 04                    7392 	.uleb128	4
      00002A 05                    7393 	.uleb128	5
      00002B 00                    7394 	.db	0
      00002C 03                    7395 	.uleb128	3
      00002D 08                    7396 	.uleb128	8
      00002E 49                    7397 	.uleb128	73
      00002F 13                    7398 	.uleb128	19
      000030 00                    7399 	.uleb128	0
      000031 00                    7400 	.uleb128	0
      000032 05                    7401 	.uleb128	5
      000033 0B                    7402 	.uleb128	11
      000034 00                    7403 	.db	0
      000035 11                    7404 	.uleb128	17
      000036 01                    7405 	.uleb128	1
      000037 12                    7406 	.uleb128	18
      000038 01                    7407 	.uleb128	1
      000039 00                    7408 	.uleb128	0
      00003A 00                    7409 	.uleb128	0
      00003B 06                    7410 	.uleb128	6
      00003C 34                    7411 	.uleb128	52
      00003D 00                    7412 	.db	0
      00003E 03                    7413 	.uleb128	3
      00003F 08                    7414 	.uleb128	8
      000040 49                    7415 	.uleb128	73
      000041 13                    7416 	.uleb128	19
      000042 00                    7417 	.uleb128	0
      000043 00                    7418 	.uleb128	0
      000044 07                    7419 	.uleb128	7
      000045 24                    7420 	.uleb128	36
      000046 00                    7421 	.db	0
      000047 03                    7422 	.uleb128	3
      000048 08                    7423 	.uleb128	8
      000049 0B                    7424 	.uleb128	11
      00004A 0B                    7425 	.uleb128	11
      00004B 3E                    7426 	.uleb128	62
      00004C 0B                    7427 	.uleb128	11
      00004D 00                    7428 	.uleb128	0
      00004E 00                    7429 	.uleb128	0
      00004F 08                    7430 	.uleb128	8
      000050 2E                    7431 	.uleb128	46
      000051 01                    7432 	.db	1
      000052 01                    7433 	.uleb128	1
      000053 13                    7434 	.uleb128	19
      000054 03                    7435 	.uleb128	3
      000055 08                    7436 	.uleb128	8
      000056 11                    7437 	.uleb128	17
      000057 01                    7438 	.uleb128	1
      000058 12                    7439 	.uleb128	18
      000059 01                    7440 	.uleb128	1
      00005A 36                    7441 	.uleb128	54
      00005B 0B                    7442 	.uleb128	11
      00005C 3F                    7443 	.uleb128	63
      00005D 0C                    7444 	.uleb128	12
      00005E 40                    7445 	.uleb128	64
      00005F 06                    7446 	.uleb128	6
      000060 00                    7447 	.uleb128	0
      000061 00                    7448 	.uleb128	0
      000062 09                    7449 	.uleb128	9
      000063 2E                    7450 	.uleb128	46
      000064 00                    7451 	.db	0
      000065 03                    7452 	.uleb128	3
      000066 08                    7453 	.uleb128	8
      000067 11                    7454 	.uleb128	17
      000068 01                    7455 	.uleb128	1
      000069 12                    7456 	.uleb128	18
      00006A 01                    7457 	.uleb128	1
      00006B 3F                    7458 	.uleb128	63
      00006C 0C                    7459 	.uleb128	12
      00006D 40                    7460 	.uleb128	64
      00006E 06                    7461 	.uleb128	6
      00006F 00                    7462 	.uleb128	0
      000070 00                    7463 	.uleb128	0
      000071 0A                    7464 	.uleb128	10
      000072 0B                    7465 	.uleb128	11
      000073 01                    7466 	.db	1
      000074 11                    7467 	.uleb128	17
      000075 01                    7468 	.uleb128	1
      000076 12                    7469 	.uleb128	18
      000077 01                    7470 	.uleb128	1
      000078 00                    7471 	.uleb128	0
      000079 00                    7472 	.uleb128	0
      00007A 0B                    7473 	.uleb128	11
      00007B 2E                    7474 	.uleb128	46
      00007C 01                    7475 	.db	1
      00007D 01                    7476 	.uleb128	1
      00007E 13                    7477 	.uleb128	19
      00007F 03                    7478 	.uleb128	3
      000080 08                    7479 	.uleb128	8
      000081 11                    7480 	.uleb128	17
      000082 01                    7481 	.uleb128	1
      000083 12                    7482 	.uleb128	18
      000084 01                    7483 	.uleb128	1
      000085 3F                    7484 	.uleb128	63
      000086 0C                    7485 	.uleb128	12
      000087 40                    7486 	.uleb128	64
      000088 06                    7487 	.uleb128	6
      000089 49                    7488 	.uleb128	73
      00008A 13                    7489 	.uleb128	19
      00008B 00                    7490 	.uleb128	0
      00008C 00                    7491 	.uleb128	0
      00008D 0C                    7492 	.uleb128	12
      00008E 0B                    7493 	.uleb128	11
      00008F 01                    7494 	.db	1
      000090 01                    7495 	.uleb128	1
      000091 13                    7496 	.uleb128	19
      000092 11                    7497 	.uleb128	17
      000093 01                    7498 	.uleb128	1
      000094 00                    7499 	.uleb128	0
      000095 00                    7500 	.uleb128	0
      000096 0D                    7501 	.uleb128	13
      000097 0B                    7502 	.uleb128	11
      000098 01                    7503 	.db	1
      000099 01                    7504 	.uleb128	1
      00009A 13                    7505 	.uleb128	19
      00009B 11                    7506 	.uleb128	17
      00009C 01                    7507 	.uleb128	1
      00009D 12                    7508 	.uleb128	18
      00009E 01                    7509 	.uleb128	1
      00009F 00                    7510 	.uleb128	0
      0000A0 00                    7511 	.uleb128	0
      0000A1 0E                    7512 	.uleb128	14
      0000A2 0B                    7513 	.uleb128	11
      0000A3 01                    7514 	.db	1
      0000A4 01                    7515 	.uleb128	1
      0000A5 13                    7516 	.uleb128	19
      0000A6 00                    7517 	.uleb128	0
      0000A7 00                    7518 	.uleb128	0
      0000A8 0F                    7519 	.uleb128	15
      0000A9 0B                    7520 	.uleb128	11
      0000AA 01                    7521 	.db	1
      0000AB 11                    7522 	.uleb128	17
      0000AC 01                    7523 	.uleb128	1
      0000AD 00                    7524 	.uleb128	0
      0000AE 00                    7525 	.uleb128	0
      0000AF 10                    7526 	.uleb128	16
      0000B0 34                    7527 	.uleb128	52
      0000B1 00                    7528 	.db	0
      0000B2 02                    7529 	.uleb128	2
      0000B3 0A                    7530 	.uleb128	10
      0000B4 03                    7531 	.uleb128	3
      0000B5 08                    7532 	.uleb128	8
      0000B6 49                    7533 	.uleb128	73
      0000B7 13                    7534 	.uleb128	19
      0000B8 00                    7535 	.uleb128	0
      0000B9 00                    7536 	.uleb128	0
      0000BA 11                    7537 	.uleb128	17
      0000BB 0B                    7538 	.uleb128	11
      0000BC 00                    7539 	.db	0
      0000BD 00                    7540 	.uleb128	0
      0000BE 00                    7541 	.uleb128	0
      0000BF 12                    7542 	.uleb128	18
      0000C0 34                    7543 	.uleb128	52
      0000C1 00                    7544 	.db	0
      0000C2 02                    7545 	.uleb128	2
      0000C3 0A                    7546 	.uleb128	10
      0000C4 03                    7547 	.uleb128	3
      0000C5 08                    7548 	.uleb128	8
      0000C6 3C                    7549 	.uleb128	60
      0000C7 0C                    7550 	.uleb128	12
      0000C8 3F                    7551 	.uleb128	63
      0000C9 0C                    7552 	.uleb128	12
      0000CA 49                    7553 	.uleb128	73
      0000CB 13                    7554 	.uleb128	19
      0000CC 00                    7555 	.uleb128	0
      0000CD 00                    7556 	.uleb128	0
      0000CE 13                    7557 	.uleb128	19
      0000CF 01                    7558 	.uleb128	1
      0000D0 01                    7559 	.db	1
      0000D1 01                    7560 	.uleb128	1
      0000D2 13                    7561 	.uleb128	19
      0000D3 0B                    7562 	.uleb128	11
      0000D4 0B                    7563 	.uleb128	11
      0000D5 49                    7564 	.uleb128	73
      0000D6 13                    7565 	.uleb128	19
      0000D7 00                    7566 	.uleb128	0
      0000D8 00                    7567 	.uleb128	0
      0000D9 14                    7568 	.uleb128	20
      0000DA 21                    7569 	.uleb128	33
      0000DB 00                    7570 	.db	0
      0000DC 2F                    7571 	.uleb128	47
      0000DD 0B                    7572 	.uleb128	11
      0000DE 00                    7573 	.uleb128	0
      0000DF 00                    7574 	.uleb128	0
      0000E0 15                    7575 	.uleb128	21
      0000E1 34                    7576 	.uleb128	52
      0000E2 00                    7577 	.db	0
      0000E3 02                    7578 	.uleb128	2
      0000E4 0A                    7579 	.uleb128	10
      0000E5 03                    7580 	.uleb128	3
      0000E6 08                    7581 	.uleb128	8
      0000E7 3F                    7582 	.uleb128	63
      0000E8 0C                    7583 	.uleb128	12
      0000E9 49                    7584 	.uleb128	73
      0000EA 13                    7585 	.uleb128	19
      0000EB 00                    7586 	.uleb128	0
      0000EC 00                    7587 	.uleb128	0
      0000ED 16                    7588 	.uleb128	22
      0000EE 35                    7589 	.uleb128	53
      0000EF 00                    7590 	.db	0
      0000F0 49                    7591 	.uleb128	73
      0000F1 13                    7592 	.uleb128	19
      0000F2 00                    7593 	.uleb128	0
      0000F3 00                    7594 	.uleb128	0
      0000F4 17                    7595 	.uleb128	23
      0000F5 26                    7596 	.uleb128	38
      0000F6 00                    7597 	.db	0
      0000F7 49                    7598 	.uleb128	73
      0000F8 13                    7599 	.uleb128	19
      0000F9 00                    7600 	.uleb128	0
      0000FA 00                    7601 	.uleb128	0
      0000FB 00                    7602 	.uleb128	0
                                   7603 
                                   7604 	.area .debug_info (NOLOAD)
      000000 00 00 1E 3A           7605 	.dw	0,Ldebug_info_end-Ldebug_info_start
      000004                       7606 Ldebug_info_start:
      000004 00 02                 7607 	.dw	2
      000006 00 00 00 00           7608 	.dw	0,(Ldebug_abbrev)
      00000A 04                    7609 	.db	4
      00000B 01                    7610 	.uleb128	1
      00000C 43 3A 2F 55 73 65 72  7611 	.ascii "C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/SampleCode/Template/Project_temp/main.c"
             73 2F 47 6F 6F 73 6D
             6F 73 2F 44 6F 77 6E
             6C 6F 61 64 73 2F 4D
             53 35 31 5F 42 53 50
             2D 6D 61 73 74 65 72
             2F 4D 53 35 31 5F 42
             53 50 2D 6D 61 73 74
             65 72 2F 4D 53 35 31
             46 42 39 41 45 5F 4D
             53 35 31 58 42 39 41
             45 5F 4D 53 35 31 58
             42 39 42 45 2F 53 61
             6D 70 6C 65 43 6F 64
             65 2F 54 65 6D 70 6C
             61 74 65 2F 50 72 6F
             6A 65 63 74 5F 74 65
             6D 70 2F 6D 61 69 6E
             2E 63
      00008C 00                    7612 	.db	0
      00008D 00 00 00 00           7613 	.dw	0,(Ldebug_line_start+-4)
      000091 01                    7614 	.db	1
      000092 53 44 43 43 20 76 65  7615 	.ascii "SDCC version 4.2.6 #13647"
             72 73 69 6F 6E 20 34
             2E 32 2E 36 20 23 31
             33 36 34 37
      0000AB 00                    7616 	.db	0
      0000AC 02                    7617 	.uleb128	2
      0000AD 00 00 01 1E           7618 	.dw	0,286
      0000B1 54 69 6D 65 72 30 5F  7619 	.ascii "Timer0_Delay"
             44 65 6C 61 79
      0000BD 00                    7620 	.db	0
      0000BE 00 00 00 DD           7621 	.dw	0,(_Timer0_Delay)
      0000C2 00 00 01 A5           7622 	.dw	0,(XG$Timer0_Delay$0$0+1)
      0000C6 01                    7623 	.db	1
      0000C7 00 00 02 08           7624 	.dw	0,(Ldebug_loc_start+520)
      0000CB 03                    7625 	.uleb128	3
      0000CC 05                    7626 	.db	5
      0000CD 03                    7627 	.db	3
      0000CE 00 00 00 05           7628 	.dw	0,(_Timer0_Delay_u32SYSCLK_65536_145)
      0000D2 75 33 32 53 59 53 43  7629 	.ascii "u32SYSCLK"
             4C 4B
      0000DB 00                    7630 	.db	0
      0000DC 00 00 01 1E           7631 	.dw	0,286
      0000E0 04                    7632 	.uleb128	4
      0000E1 75 31 36 43 4E 54     7633 	.ascii "u16CNT"
      0000E7 00                    7634 	.db	0
      0000E8 00 00 01 2F           7635 	.dw	0,303
      0000EC 04                    7636 	.uleb128	4
      0000ED 75 31 36 44 4C 59 55  7637 	.ascii "u16DLYUnit"
             6E 69 74
      0000F7 00                    7638 	.db	0
      0000F8 00 00 01 2F           7639 	.dw	0,303
      0000FC 05                    7640 	.uleb128	5
      0000FD 00 00 01 90           7641 	.dw	0,(Smain$Timer0_Delay$7)
      000101 00 00 01 A2           7642 	.dw	0,(Smain$Timer0_Delay$15)
      000105 06                    7643 	.uleb128	6
      000106 54 4C 30 54 4D 50     7644 	.ascii "TL0TMP"
      00010C 00                    7645 	.db	0
      00010D 00 00 03 55           7646 	.dw	0,853
      000111 06                    7647 	.uleb128	6
      000112 54 48 30 54 4D 50     7648 	.ascii "TH0TMP"
      000118 00                    7649 	.db	0
      000119 00 00 03 55           7650 	.dw	0,853
      00011D 00                    7651 	.uleb128	0
      00011E 07                    7652 	.uleb128	7
      00011F 75 6E 73 69 67 6E 65  7653 	.ascii "unsigned long"
             64 20 6C 6F 6E 67
      00012C 00                    7654 	.db	0
      00012D 04                    7655 	.db	4
      00012E 07                    7656 	.db	7
      00012F 07                    7657 	.uleb128	7
      000130 75 6E 73 69 67 6E 65  7658 	.ascii "unsigned int"
             64 20 69 6E 74
      00013C 00                    7659 	.db	0
      00013D 02                    7660 	.db	2
      00013E 07                    7661 	.db	7
      00013F 08                    7662 	.uleb128	8
      000140 00 00 01 75           7663 	.dw	0,373
      000144 53 65 72 69 61 6C 50  7664 	.ascii "SerialPort1_ISR"
             6F 72 74 31 5F 49 53
             52
      000153 00                    7665 	.db	0
      000154 00 00 01 A5           7666 	.dw	0,(_SerialPort1_ISR)
      000158 00 00 02 24           7667 	.dw	0,(XG$SerialPort1_ISR$0$0+1)
      00015C 03                    7668 	.db	3
      00015D 01                    7669 	.db	1
      00015E 00 00 01 F4           7670 	.dw	0,(Ldebug_loc_start+500)
      000162 05                    7671 	.uleb128	5
      000163 00 00 01 C9           7672 	.dw	0,(Smain$SerialPort1_ISR$23)
      000167 00 00 01 E5           7673 	.dw	0,(Smain$SerialPort1_ISR$26)
      00016B 05                    7674 	.uleb128	5
      00016C 00 00 02 00           7675 	.dw	0,(Smain$SerialPort1_ISR$29)
      000170 00 00 02 05           7676 	.dw	0,(Smain$SerialPort1_ISR$31)
      000174 00                    7677 	.uleb128	0
      000175 09                    7678 	.uleb128	9
      000176 75 61 72 74 5F 69 6E  7679 	.ascii "uart_interrupt_init"
             74 65 72 72 75 70 74
             5F 69 6E 69 74
      000189 00                    7680 	.db	0
      00018A 00 00 02 24           7681 	.dw	0,(_uart_interrupt_init)
      00018E 00 00 02 48           7682 	.dw	0,(XG$uart_interrupt_init$0$0+1)
      000192 01                    7683 	.db	1
      000193 00 00 01 E0           7684 	.dw	0,(Ldebug_loc_start+480)
      000197 08                    7685 	.uleb128	8
      000198 00 00 01 C5           7686 	.dw	0,453
      00019C 50 69 6E 49 6E 74 65  7687 	.ascii "PinInterrupt_ISR"
             72 72 75 70 74 5F 49
             53 52
      0001AC 00                    7688 	.db	0
      0001AD 00 00 02 48           7689 	.dw	0,(_PinInterrupt_ISR)
      0001B1 00 00 02 81           7690 	.dw	0,(XG$PinInterrupt_ISR$0$0+1)
      0001B5 03                    7691 	.db	3
      0001B6 01                    7692 	.db	1
      0001B7 00 00 01 CC           7693 	.dw	0,(Ldebug_loc_start+460)
      0001BB 05                    7694 	.uleb128	5
      0001BC 00 00 02 66           7695 	.dw	0,(Smain$PinInterrupt_ISR$47)
      0001C0 00 00 02 73           7696 	.dw	0,(Smain$PinInterrupt_ISR$49)
      0001C4 00                    7697 	.uleb128	0
      0001C5 09                    7698 	.uleb128	9
      0001C6 62 75 74 74 6F 6E 5F  7699 	.ascii "button_interrupt_init"
             69 6E 74 65 72 72 75
             70 74 5F 69 6E 69 74
      0001DB 00                    7700 	.db	0
      0001DC 00 00 02 81           7701 	.dw	0,(_button_interrupt_init)
      0001E0 00 00 02 99           7702 	.dw	0,(XG$button_interrupt_init$0$0+1)
      0001E4 01                    7703 	.db	1
      0001E5 00 00 01 B8           7704 	.dw	0,(Ldebug_loc_start+440)
      0001E9 09                    7705 	.uleb128	9
      0001EA 65 6E 61 62 6C 65 5F  7706 	.ascii "enable_ntc"
             6E 74 63
      0001F4 00                    7707 	.db	0
      0001F5 00 00 02 99           7708 	.dw	0,(_enable_ntc)
      0001F9 00 00 02 A2           7709 	.dw	0,(XG$enable_ntc$0$0+1)
      0001FD 01                    7710 	.db	1
      0001FE 00 00 01 A4           7711 	.dw	0,(Ldebug_loc_start+420)
      000202 09                    7712 	.uleb128	9
      000203 64 69 73 61 62 6C 65  7713 	.ascii "disable_ntc"
             5F 6E 74 63
      00020E 00                    7714 	.db	0
      00020F 00 00 02 A2           7715 	.dw	0,(_disable_ntc)
      000213 00 00 02 AB           7716 	.dw	0,(XG$disable_ntc$0$0+1)
      000217 01                    7717 	.db	1
      000218 00 00 01 90           7718 	.dw	0,(Ldebug_loc_start+400)
      00021C 02                    7719 	.uleb128	2
      00021D 00 00 02 55           7720 	.dw	0,597
      000221 69 6E 69 74 5F 73 61  7721 	.ascii "init_sample"
             6D 70 6C 65
      00022C 00                    7722 	.db	0
      00022D 00 00 02 AB           7723 	.dw	0,(_init_sample)
      000231 00 00 02 F5           7724 	.dw	0,(XG$init_sample$0$0+1)
      000235 01                    7725 	.db	1
      000236 00 00 01 7C           7726 	.dw	0,(Ldebug_loc_start+380)
      00023A 0A                    7727 	.uleb128	10
      00023B 00 00 02 BE           7728 	.dw	0,(Smain$init_sample$85)
      00023F 00 00 02 EE           7729 	.dw	0,(Smain$init_sample$89)
      000243 05                    7730 	.uleb128	5
      000244 00 00 02 BA           7731 	.dw	0,(Smain$init_sample$82)
      000248 00 00 02 BA           7732 	.dw	0,(Smain$init_sample$84)
      00024C 06                    7733 	.uleb128	6
      00024D 69                    7734 	.ascii "i"
      00024E 00                    7735 	.db	0
      00024F 00 00 08 FA           7736 	.dw	0,2298
      000253 00                    7737 	.uleb128	0
      000254 00                    7738 	.uleb128	0
      000255 09                    7739 	.uleb128	9
      000256 69 6E 69 74 5F 70 65  7740 	.ascii "init_peripherals_but_button_n_uart"
             72 69 70 68 65 72 61
             6C 73 5F 62 75 74 5F
             62 75 74 74 6F 6E 5F
             6E 5F 75 61 72 74
      000278 00                    7741 	.db	0
      000279 00 00 02 F5           7742 	.dw	0,(_init_peripherals_but_button_n_uart)
      00027D 00 00 03 97           7743 	.dw	0,(XG$init_peripherals_but_button_n_uart$0$0+1)
      000281 01                    7744 	.db	1
      000282 00 00 01 68           7745 	.dw	0,(Ldebug_loc_start+360)
      000286 09                    7746 	.uleb128	9
      000287 73 61 6D 70 6C 65 5F  7747 	.ascii "sample_amps"
             61 6D 70 73
      000292 00                    7748 	.db	0
      000293 00 00 03 97           7749 	.dw	0,(_sample_amps)
      000297 00 00 04 E4           7750 	.dw	0,(XG$sample_amps$0$0+1)
      00029B 01                    7751 	.db	1
      00029C 00 00 01 54           7752 	.dw	0,(Ldebug_loc_start+340)
      0002A0 09                    7753 	.uleb128	9
      0002A1 73 61 6D 70 6C 65 5F  7754 	.ascii "sample_temperature"
             74 65 6D 70 65 72 61
             74 75 72 65
      0002B3 00                    7755 	.db	0
      0002B4 00 00 04 E4           7756 	.dw	0,(_sample_temperature)
      0002B8 00 00 05 AB           7757 	.dw	0,(XG$sample_temperature$0$0+1)
      0002BC 01                    7758 	.db	1
      0002BD 00 00 01 40           7759 	.dw	0,(Ldebug_loc_start+320)
      0002C1 07                    7760 	.uleb128	7
      0002C2 73 69 67 6E 65 64 20  7761 	.ascii "signed char"
             63 68 61 72
      0002CD 00                    7762 	.db	0
      0002CE 01                    7763 	.db	1
      0002CF 05                    7764 	.db	5
      0002D0 0B                    7765 	.uleb128	11
      0002D1 00 00 03 05           7766 	.dw	0,773
      0002D5 68 61 73 5F 68 69 67  7767 	.ascii "has_high_beam"
             68 5F 62 65 61 6D
      0002E2 00                    7768 	.db	0
      0002E3 00 00 05 AB           7769 	.dw	0,(_has_high_beam)
      0002E7 00 00 05 EB           7770 	.dw	0,(XG$has_high_beam$0$0+1)
      0002EB 01                    7771 	.db	1
      0002EC 00 00 01 2C           7772 	.dw	0,(Ldebug_loc_start+300)
      0002F0 00 00 02 C1           7773 	.dw	0,705
      0002F4 03                    7774 	.uleb128	3
      0002F5 05                    7775 	.db	5
      0002F6 03                    7776 	.db	3
      0002F7 00 00 00 19           7777 	.dw	0,(_has_high_beam_mode_65536_173)
      0002FB 6D 6F 64 65           7778 	.ascii "mode"
      0002FF 00                    7779 	.db	0
      000300 00 00 02 C1           7780 	.dw	0,705
      000304 00                    7781 	.uleb128	0
      000305 07                    7782 	.uleb128	7
      000306 75 6E 73 69 67 6E 65  7783 	.ascii "unsigned int"
             64 20 69 6E 74
      000312 00                    7784 	.db	0
      000313 02                    7785 	.db	2
      000314 07                    7786 	.db	7
      000315 0B                    7787 	.uleb128	11
      000316 00 00 03 55           7788 	.dw	0,853
      00031A 61 76 67 5F 61 6D 70  7789 	.ascii "avg_amp"
      000321 00                    7790 	.db	0
      000322 00 00 05 EB           7791 	.dw	0,(_avg_amp)
      000326 00 00 06 4C           7792 	.dw	0,(XG$avg_amp$0$0+1)
      00032A 01                    7793 	.db	1
      00032B 00 00 01 18           7794 	.dw	0,(Ldebug_loc_start+280)
      00032F 00 00 03 05           7795 	.dw	0,773
      000333 03                    7796 	.uleb128	3
      000334 05                    7797 	.db	5
      000335 03                    7798 	.db	3
      000336 00 00 00 1A           7799 	.dw	0,(_avg_amp_idx_65536_175)
      00033A 69 64 78              7800 	.ascii "idx"
      00033D 00                    7801 	.db	0
      00033E 00 00 03 55           7802 	.dw	0,853
      000342 05                    7803 	.uleb128	5
      000343 00 00 05 F9           7804 	.dw	0,(Smain$avg_amp$161)
      000347 00 00 06 22           7805 	.dw	0,(Smain$avg_amp$163)
      00034B 05                    7806 	.uleb128	5
      00034C 00 00 06 35           7807 	.dw	0,(Smain$avg_amp$164)
      000350 00 00 06 4B           7808 	.dw	0,(Smain$avg_amp$166)
      000354 00                    7809 	.uleb128	0
      000355 07                    7810 	.uleb128	7
      000356 75 6E 73 69 67 6E 65  7811 	.ascii "unsigned char"
             64 20 63 68 61 72
      000363 00                    7812 	.db	0
      000364 01                    7813 	.db	1
      000365 08                    7814 	.db	8
      000366 0B                    7815 	.uleb128	11
      000367 00 00 03 D5           7816 	.dw	0,981
      00036B 74 61 72 67 65 74 5F  7817 	.ascii "target_amp"
             61 6D 70
      000375 00                    7818 	.db	0
      000376 00 00 06 50           7819 	.dw	0,(_target_amp)
      00037A 00 00 07 6B           7820 	.dw	0,(XG$target_amp$0$0+1)
      00037E 01                    7821 	.db	1
      00037F 00 00 01 04           7822 	.dw	0,(Ldebug_loc_start+260)
      000383 00 00 03 55           7823 	.dw	0,853
      000387 03                    7824 	.uleb128	3
      000388 05                    7825 	.db	5
      000389 03                    7826 	.db	3
      00038A 00 00 00 1C           7827 	.dw	0,(_target_amp_mode_65536_179)
      00038E 6D 6F 64 65           7828 	.ascii "mode"
      000392 00                    7829 	.db	0
      000393 00 00 03 55           7830 	.dw	0,853
      000397 04                    7831 	.uleb128	4
      000398 69 64 78              7832 	.ascii "idx"
      00039B 00                    7833 	.db	0
      00039C 00 00 03 55           7834 	.dw	0,853
      0003A0 0C                    7835 	.uleb128	12
      0003A1 00 00 03 CB           7836 	.dw	0,971
      0003A5 00 00 06 82           7837 	.dw	0,(Smain$target_amp$173)
      0003A9 05                    7838 	.uleb128	5
      0003AA 00 00 06 8B           7839 	.dw	0,(Smain$target_amp$175)
      0003AE 00 00 06 AE           7840 	.dw	0,(Smain$target_amp$177)
      0003B2 0A                    7841 	.uleb128	10
      0003B3 00 00 06 AE           7842 	.dw	0,(Smain$target_amp$178)
      0003B7 00 00 06 E3           7843 	.dw	0,(Smain$target_amp$181)
      0003BB 06                    7844 	.uleb128	6
      0003BC 6D                    7845 	.ascii "m"
      0003BD 00                    7846 	.db	0
      0003BE 00 00 01 1E           7847 	.dw	0,286
      0003C2 06                    7848 	.uleb128	6
      0003C3 61                    7849 	.ascii "a"
      0003C4 00                    7850 	.db	0
      0003C5 00 00 01 1E           7851 	.dw	0,286
      0003C9 00                    7852 	.uleb128	0
      0003CA 00                    7853 	.uleb128	0
      0003CB 05                    7854 	.uleb128	5
      0003CC 00 00 07 4C           7855 	.dw	0,(Smain$target_amp$183)
      0003D0 00 00 07 6A           7856 	.dw	0,(Smain$target_amp$185)
      0003D4 00                    7857 	.uleb128	0
      0003D5 02                    7858 	.uleb128	2
      0003D6 00 00 04 95           7859 	.dw	0,1173
      0003DA 63 68 61 6E 67 65 4D  7860 	.ascii "changeMode"
             6F 64 65
      0003E4 00                    7861 	.db	0
      0003E5 00 00 07 6D           7862 	.dw	0,(_changeMode)
      0003E9 00 00 09 0A           7863 	.dw	0,(XG$changeMode$0$0+1)
      0003ED 01                    7864 	.db	1
      0003EE 00 00 00 F0           7865 	.dw	0,(Ldebug_loc_start+240)
      0003F2 03                    7866 	.uleb128	3
      0003F3 05                    7867 	.db	5
      0003F4 03                    7868 	.db	3
      0003F5 00 00 00 1D           7869 	.dw	0,(_changeMode_new_mode_65536_185)
      0003F9 6E 65 77 5F 6D 6F 64  7870 	.ascii "new_mode"
             65
      000401 00                    7871 	.db	0
      000402 00 00 03 55           7872 	.dw	0,853
      000406 0D                    7873 	.uleb128	13
      000407 00 00 04 4C           7874 	.dw	0,1100
      00040B 00 00 07 A0           7875 	.dw	0,(Smain$changeMode$200)
      00040F 00 00 08 66           7876 	.dw	0,(Smain$changeMode$210)
      000413 0C                    7877 	.uleb128	12
      000414 00 00 04 44           7878 	.dw	0,1092
      000418 00 00 07 9C           7879 	.dw	0,(Smain$changeMode$195)
      00041C 05                    7880 	.uleb128	5
      00041D 00 00 07 9C           7881 	.dw	0,(Smain$changeMode$198)
      000421 00 00 07 9C           7882 	.dw	0,(Smain$changeMode$199)
      000425 05                    7883 	.uleb128	5
      000426 00 00 07 9C           7884 	.dw	0,(Smain$changeMode$197)
      00042A 00 00 07 9C           7885 	.dw	0,(Smain$changeMode$198)
      00042E 05                    7886 	.uleb128	5
      00042F 00 00 07 9C           7887 	.dw	0,(Smain$changeMode$196)
      000433 00 00 07 9C           7888 	.dw	0,(Smain$changeMode$197)
      000437 06                    7889 	.uleb128	6
      000438 74 61 72 67 65 74     7890 	.ascii "target"
      00043E 00                    7891 	.db	0
      00043F 00 00 09 01           7892 	.dw	0,2305
      000443 00                    7893 	.uleb128	0
      000444 06                    7894 	.uleb128	6
      000445 69                    7895 	.ascii "i"
      000446 00                    7896 	.db	0
      000447 00 00 08 FA           7897 	.dw	0,2298
      00044B 00                    7898 	.uleb128	0
      00044C 0D                    7899 	.uleb128	13
      00044D 00 00 04 6A           7900 	.dw	0,1130
      000451 00 00 08 6D           7901 	.dw	0,(Smain$changeMode$215)
      000455 00 00 08 8B           7902 	.dw	0,(Smain$changeMode$219)
      000459 05                    7903 	.uleb128	5
      00045A 00 00 08 69           7904 	.dw	0,(Smain$changeMode$212)
      00045E 00 00 08 69           7905 	.dw	0,(Smain$changeMode$214)
      000462 06                    7906 	.uleb128	6
      000463 69                    7907 	.ascii "i"
      000464 00                    7908 	.db	0
      000465 00 00 08 FA           7909 	.dw	0,2298
      000469 00                    7910 	.uleb128	0
      00046A 0A                    7911 	.uleb128	10
      00046B 00 00 08 A5           7912 	.dw	0,(Smain$changeMode$225)
      00046F 00 00 08 FB           7913 	.dw	0,(Smain$changeMode$230)
      000473 0E                    7914 	.uleb128	14
      000474 00 00 04 8C           7915 	.dw	0,1164
      000478 0A                    7916 	.uleb128	10
      000479 00 00 08 99           7917 	.dw	0,(Smain$changeMode$223)
      00047D 00 00 08 A1           7918 	.dw	0,(Smain$changeMode$224)
      000481 05                    7919 	.uleb128	5
      000482 00 00 08 99           7920 	.dw	0,(Smain$changeMode$221)
      000486 00 00 08 99           7921 	.dw	0,(Smain$changeMode$223)
      00048A 00                    7922 	.uleb128	0
      00048B 00                    7923 	.uleb128	0
      00048C 06                    7924 	.uleb128	6
      00048D 69                    7925 	.ascii "i"
      00048E 00                    7926 	.db	0
      00048F 00 00 08 FA           7927 	.dw	0,2298
      000493 00                    7928 	.uleb128	0
      000494 00                    7929 	.uleb128	0
      000495 09                    7930 	.uleb128	9
      000496 74 6F 4E 65 78 74 4D  7931 	.ascii "toNextMode"
             6F 64 65
      0004A0 00                    7932 	.db	0
      0004A1 00 00 09 0A           7933 	.dw	0,(_toNextMode)
      0004A5 00 00 09 18           7934 	.dw	0,(XG$toNextMode$0$0+1)
      0004A9 01                    7935 	.db	1
      0004AA 00 00 00 DC           7936 	.dw	0,(Ldebug_loc_start+220)
      0004AE 07                    7937 	.uleb128	7
      0004AF 5F 42 6F 6F 6C        7938 	.ascii "_Bool"
      0004B4 00                    7939 	.db	0
      0004B5 01                    7940 	.db	1
      0004B6 02                    7941 	.db	2
      0004B7 0B                    7942 	.uleb128	11
      0004B8 00 00 05 15           7943 	.dw	0,1301
      0004BC 70 72 6F 63 65 73 73  7944 	.ascii "process_uart"
             5F 75 61 72 74
      0004C8 00                    7945 	.db	0
      0004C9 00 00 09 18           7946 	.dw	0,(_process_uart)
      0004CD 00 00 0A 66           7947 	.dw	0,(XG$process_uart$0$0+1)
      0004D1 01                    7948 	.db	1
      0004D2 00 00 00 C8           7949 	.dw	0,(Ldebug_loc_start+200)
      0004D6 00 00 04 AE           7950 	.dw	0,1198
      0004DA 05                    7951 	.uleb128	5
      0004DB 00 00 09 29           7952 	.dw	0,(Smain$process_uart$244)
      0004DF 00 00 09 2F           7953 	.dw	0,(Smain$process_uart$246)
      0004E3 0F                    7954 	.uleb128	15
      0004E4 00 00 09 2F           7955 	.dw	0,(Smain$process_uart$248)
      0004E8 0D                    7956 	.uleb128	13
      0004E9 00 00 05 05           7957 	.dw	0,1285
      0004ED 00 00 09 2F           7958 	.dw	0,(Smain$process_uart$249)
      0004F1 00 00 09 2F           7959 	.dw	0,(Smain$process_uart$250)
      0004F5 0F                    7960 	.uleb128	15
      0004F6 00 00 0A 3C           7961 	.dw	0,(Smain$process_uart$281)
      0004FA 05                    7962 	.uleb128	5
      0004FB 00 00 0A 57           7963 	.dw	0,(Smain$process_uart$286)
      0004FF 00 00 0A 5F           7964 	.dw	0,(Smain$process_uart$288)
      000503 00                    7965 	.uleb128	0
      000504 00                    7966 	.uleb128	0
      000505 10                    7967 	.uleb128	16
      000506 05                    7968 	.db	5
      000507 03                    7969 	.db	3
      000508 00 00 00 1E           7970 	.dw	0,(_process_uart_ch_131072_203)
      00050C 63 68                 7971 	.ascii "ch"
      00050E 00                    7972 	.db	0
      00050F 00 00 03 55           7973 	.dw	0,853
      000513 00                    7974 	.uleb128	0
      000514 00                    7975 	.uleb128	0
      000515 02                    7976 	.uleb128	2
      000516 00 00 05 7D           7977 	.dw	0,1405
      00051A 70 72 6F 63 65 73 73  7978 	.ascii "process_button"
             5F 62 75 74 74 6F 6E
      000528 00                    7979 	.db	0
      000529 00 00 0A 66           7980 	.dw	0,(_process_button)
      00052D 00 00 0B 45           7981 	.dw	0,(XG$process_button$0$0+1)
      000531 01                    7982 	.db	1
      000532 00 00 00 B4           7983 	.dw	0,(Ldebug_loc_start+180)
      000536 0C                    7984 	.uleb128	12
      000537 00 00 05 58           7985 	.dw	0,1368
      00053B 00 00 0A 69           7986 	.dw	0,(Smain$process_button$297)
      00053F 0F                    7987 	.uleb128	15
      000540 00 00 0A A9           7988 	.dw	0,(Smain$process_button$301)
      000544 05                    7989 	.uleb128	5
      000545 00 00 0A AF           7990 	.dw	0,(Smain$process_button$303)
      000549 00 00 0A B5           7991 	.dw	0,(Smain$process_button$305)
      00054D 05                    7992 	.uleb128	5
      00054E 00 00 0A B8           7993 	.dw	0,(Smain$process_button$306)
      000552 00 00 0A C2           7994 	.dw	0,(Smain$process_button$308)
      000556 00                    7995 	.uleb128	0
      000557 00                    7996 	.uleb128	0
      000558 0F                    7997 	.uleb128	15
      000559 00 00 0A E7           7998 	.dw	0,(Smain$process_button$310)
      00055D 0A                    7999 	.uleb128	10
      00055E 00 00 0B 17           8000 	.dw	0,(Smain$process_button$313)
      000562 00 00 0B 44           8001 	.dw	0,(Smain$process_button$322)
      000566 0C                    8002 	.uleb128	12
      000567 00 00 05 79           8003 	.dw	0,1401
      00056B 00 00 0B 26           8004 	.dw	0,(Smain$process_button$315)
      00056F 05                    8005 	.uleb128	5
      000570 00 00 0B 2C           8006 	.dw	0,(Smain$process_button$317)
      000574 00 00 0B 2F           8007 	.dw	0,(Smain$process_button$319)
      000578 00                    8008 	.uleb128	0
      000579 11                    8009 	.uleb128	17
      00057A 00                    8010 	.uleb128	0
      00057B 00                    8011 	.uleb128	0
      00057C 00                    8012 	.uleb128	0
      00057D 09                    8013 	.uleb128	9
      00057E 73 74 6F 70 5F 6C 65  8014 	.ascii "stop_leds"
             64 73
      000587 00                    8015 	.db	0
      000588 00 00 0B 45           8016 	.dw	0,(_stop_leds)
      00058C 00 00 0B 7C           8017 	.dw	0,(XG$stop_leds$0$0+1)
      000590 01                    8018 	.db	1
      000591 00 00 00 A0           8019 	.dw	0,(Ldebug_loc_start+160)
      000595 09                    8020 	.uleb128	9
      000596 61 63 74 69 76 61 74  8021 	.ascii "activate_leds"
             65 5F 6C 65 64 73
      0005A3 00                    8022 	.db	0
      0005A4 00 00 0B 7C           8023 	.dw	0,(_activate_leds)
      0005A8 00 00 0B B3           8024 	.dw	0,(XG$activate_leds$0$0+1)
      0005AC 01                    8025 	.db	1
      0005AD 00 00 00 8C           8026 	.dw	0,(Ldebug_loc_start+140)
      0005B1 0B                    8027 	.uleb128	11
      0005B2 00 00 06 B3           8028 	.dw	0,1715
      0005B6 6D 6F 64 65 5F 63 68  8029 	.ascii "mode_changing_control"
             61 6E 67 69 6E 67 5F
             63 6F 6E 74 72 6F 6C
      0005CB 00                    8030 	.db	0
      0005CC 00 00 0B B3           8031 	.dw	0,(_mode_changing_control)
      0005D0 00 00 0D CE           8032 	.dw	0,(XG$mode_changing_control$0$0+1)
      0005D4 01                    8033 	.db	1
      0005D5 00 00 00 78           8034 	.dw	0,(Ldebug_loc_start+120)
      0005D9 00 00 04 AE           8035 	.dw	0,1198
      0005DD 0D                    8036 	.uleb128	13
      0005DE 00 00 06 98           8037 	.dw	0,1688
      0005E2 00 00 0B BC           8038 	.dw	0,(Smain$mode_changing_control$362)
      0005E6 00 00 0D C9           8039 	.dw	0,(Smain$mode_changing_control$423)
      0005EA 0D                    8040 	.uleb128	13
      0005EB 00 00 06 90           8041 	.dw	0,1680
      0005EF 00 00 0B B8           8042 	.dw	0,(Smain$mode_changing_control$358)
      0005F3 00 00 0D C1           8043 	.dw	0,(Smain$mode_changing_control$421)
      0005F7 0A                    8044 	.uleb128	10
      0005F8 00 00 0B B8           8045 	.dw	0,(Smain$mode_changing_control$353)
      0005FC 00 00 0D 01           8046 	.dw	0,(Smain$mode_changing_control$399)
      000600 05                    8047 	.uleb128	5
      000601 00 00 0C 09           8048 	.dw	0,(Smain$mode_changing_control$368)
      000605 00 00 0C 20           8049 	.dw	0,(Smain$mode_changing_control$370)
      000609 05                    8050 	.uleb128	5
      00060A 00 00 0C 2B           8051 	.dw	0,(Smain$mode_changing_control$372)
      00060E 00 00 0C 31           8052 	.dw	0,(Smain$mode_changing_control$374)
      000612 05                    8053 	.uleb128	5
      000613 00 00 0C 34           8054 	.dw	0,(Smain$mode_changing_control$375)
      000617 00 00 0C 42           8055 	.dw	0,(Smain$mode_changing_control$378)
      00061B 0D                    8056 	.uleb128	13
      00061C 00 00 06 3B           8057 	.dw	0,1595
      000620 00 00 0B B8           8058 	.dw	0,(Smain$mode_changing_control$355)
      000624 00 00 0B B8           8059 	.dw	0,(Smain$mode_changing_control$356)
      000628 05                    8060 	.uleb128	5
      000629 00 00 0C BD           8061 	.dw	0,(Smain$mode_changing_control$386)
      00062D 00 00 0C CB           8062 	.dw	0,(Smain$mode_changing_control$388)
      000631 05                    8063 	.uleb128	5
      000632 00 00 0C CE           8064 	.dw	0,(Smain$mode_changing_control$389)
      000636 00 00 0C D8           8065 	.dw	0,(Smain$mode_changing_control$391)
      00063A 00                    8066 	.uleb128	0
      00063B 0D                    8067 	.uleb128	13
      00063C 00 00 06 52           8068 	.dw	0,1618
      000640 00 00 0B B8           8069 	.dw	0,(Smain$mode_changing_control$360)
      000644 00 00 0B B8           8070 	.dw	0,(Smain$mode_changing_control$361)
      000648 05                    8071 	.uleb128	5
      000649 00 00 0C F8           8072 	.dw	0,(Smain$mode_changing_control$394)
      00064D 00 00 0C FE           8073 	.dw	0,(Smain$mode_changing_control$396)
      000651 00                    8074 	.uleb128	0
      000652 0D                    8075 	.uleb128	13
      000653 00 00 06 7B           8076 	.dw	0,1659
      000657 00 00 0B B8           8077 	.dw	0,(Smain$mode_changing_control$357)
      00065B 00 00 0D 71           8078 	.dw	0,(Smain$mode_changing_control$407)
      00065F 05                    8079 	.uleb128	5
      000660 00 00 0D 67           8080 	.dw	0,(Smain$mode_changing_control$404)
      000664 00 00 0D 6F           8081 	.dw	0,(Smain$mode_changing_control$406)
      000668 05                    8082 	.uleb128	5
      000669 00 00 0D 85           8083 	.dw	0,(Smain$mode_changing_control$409)
      00066D 00 00 0D 8F           8084 	.dw	0,(Smain$mode_changing_control$411)
      000671 05                    8085 	.uleb128	5
      000672 00 00 0D 91           8086 	.dw	0,(Smain$mode_changing_control$412)
      000676 00 00 0D 9F           8087 	.dw	0,(Smain$mode_changing_control$414)
      00067A 00                    8088 	.uleb128	0
      00067B 0A                    8089 	.uleb128	10
      00067C 00 00 0B B8           8090 	.dw	0,(Smain$mode_changing_control$359)
      000680 00 00 0B B8           8091 	.dw	0,(Smain$mode_changing_control$360)
      000684 05                    8092 	.uleb128	5
      000685 00 00 0D BB           8093 	.dw	0,(Smain$mode_changing_control$417)
      000689 00 00 0D C1           8094 	.dw	0,(Smain$mode_changing_control$419)
      00068D 00                    8095 	.uleb128	0
      00068E 00                    8096 	.uleb128	0
      00068F 00                    8097 	.uleb128	0
      000690 06                    8098 	.uleb128	6
      000691 69                    8099 	.ascii "i"
      000692 00                    8100 	.db	0
      000693 00 00 08 FA           8101 	.dw	0,2298
      000697 00                    8102 	.uleb128	0
      000698 10                    8103 	.uleb128	16
      000699 05                    8104 	.db	5
      00069A 03                    8105 	.db	3
      00069B 00 00 00 1F           8106 	.dw	0,(_mode_changing_control_light_changing_65536_223)
      00069F 6C 69 67 68 74 5F 63  8107 	.ascii "light_changing"
             68 61 6E 67 69 6E 67
      0006AD 00                    8108 	.db	0
      0006AE 00 00 04 AE           8109 	.dw	0,1198
      0006B2 00                    8110 	.uleb128	0
      0006B3 0B                    8111 	.uleb128	11
      0006B4 00 00 06 EE           8112 	.dw	0,1774
      0006B8 69 73 5F 73 74 61 62  8113 	.ascii "is_stable"
             6C 65
      0006C1 00                    8114 	.db	0
      0006C2 00 00 0D D0           8115 	.dw	0,(_is_stable)
      0006C6 00 00 0D FE           8116 	.dw	0,(XG$is_stable$0$0+1)
      0006CA 01                    8117 	.db	1
      0006CB 00 00 00 64           8118 	.dw	0,(Ldebug_loc_start+100)
      0006CF 00 00 04 AE           8119 	.dw	0,1198
      0006D3 0A                    8120 	.uleb128	10
      0006D4 00 00 0D D4           8121 	.dw	0,(Smain$is_stable$433)
      0006D8 00 00 0D FA           8122 	.dw	0,(Smain$is_stable$437)
      0006DC 05                    8123 	.uleb128	5
      0006DD 00 00 0D D0           8124 	.dw	0,(Smain$is_stable$430)
      0006E1 00 00 0D D0           8125 	.dw	0,(Smain$is_stable$432)
      0006E5 06                    8126 	.uleb128	6
      0006E6 69                    8127 	.ascii "i"
      0006E7 00                    8128 	.db	0
      0006E8 00 00 08 FA           8129 	.dw	0,2298
      0006EC 00                    8130 	.uleb128	0
      0006ED 00                    8131 	.uleb128	0
      0006EE 0B                    8132 	.uleb128	11
      0006EF 00 00 07 82           8133 	.dw	0,1922
      0006F3 6D 6F 64 65 5F 73 74  8134 	.ascii "mode_stable_control"
             61 62 6C 65 5F 63 6F
             6E 74 72 6F 6C
      000706 00                    8135 	.db	0
      000707 00 00 0D FE           8136 	.dw	0,(_mode_stable_control)
      00070B 00 00 0F 1F           8137 	.dw	0,(XG$mode_stable_control$0$0+1)
      00070F 01                    8138 	.db	1
      000710 00 00 00 50           8139 	.dw	0,(Ldebug_loc_start+80)
      000714 00 00 04 AE           8140 	.dw	0,1198
      000718 0C                    8141 	.uleb128	12
      000719 00 00 07 67           8142 	.dw	0,1895
      00071D 00 00 0E 3C           8143 	.dw	0,(Smain$mode_stable_control$450)
      000721 0C                    8144 	.uleb128	12
      000722 00 00 07 5F           8145 	.dw	0,1887
      000726 00 00 0E 4A           8146 	.dw	0,(Smain$mode_stable_control$451)
      00072A 0D                    8147 	.uleb128	13
      00072B 00 00 07 53           8148 	.dw	0,1875
      00072F 00 00 0E 7C           8149 	.dw	0,(Smain$mode_stable_control$454)
      000733 00 00 0E B2           8150 	.dw	0,(Smain$mode_stable_control$458)
      000737 05                    8151 	.uleb128	5
      000738 00 00 0E 38           8152 	.dw	0,(Smain$mode_stable_control$448)
      00073C 00 00 0E 38           8153 	.dw	0,(Smain$mode_stable_control$449)
      000740 05                    8154 	.uleb128	5
      000741 00 00 0E 38           8155 	.dw	0,(Smain$mode_stable_control$446)
      000745 00 00 0E 38           8156 	.dw	0,(Smain$mode_stable_control$448)
      000749 06                    8157 	.uleb128	6
      00074A 61 6D 70              8158 	.ascii "amp"
      00074D 00                    8159 	.db	0
      00074E 00 00 03 05           8160 	.dw	0,773
      000752 00                    8161 	.uleb128	0
      000753 06                    8162 	.uleb128	6
      000754 74 5F 61 6D 70        8163 	.ascii "t_amp"
      000759 00                    8164 	.db	0
      00075A 00 00 09 01           8165 	.dw	0,2305
      00075E 00                    8166 	.uleb128	0
      00075F 06                    8167 	.uleb128	6
      000760 69                    8168 	.ascii "i"
      000761 00                    8169 	.db	0
      000762 00 00 08 FA           8170 	.dw	0,2298
      000766 00                    8171 	.uleb128	0
      000767 10                    8172 	.uleb128	16
      000768 05                    8173 	.db	5
      000769 03                    8174 	.db	3
      00076A 00 00 00 20           8175 	.dw	0,(_mode_stable_control_light_changing_65536_246)
      00076E 6C 69 67 68 74 5F 63  8176 	.ascii "light_changing"
             68 61 6E 67 69 6E 67
      00077C 00                    8177 	.db	0
      00077D 00 00 04 AE           8178 	.dw	0,1198
      000781 00                    8179 	.uleb128	0
      000782 02                    8180 	.uleb128	2
      000783 00 00 08 13           8181 	.dw	0,2067
      000787 63 6F 6E 74 72 6F 6C  8182 	.ascii "control_loop"
             5F 6C 6F 6F 70
      000793 00                    8183 	.db	0
      000794 00 00 0F 21           8184 	.dw	0,(_control_loop)
      000798 00 00 10 12           8185 	.dw	0,(XG$control_loop$0$0+1)
      00079C 01                    8186 	.db	1
      00079D 00 00 00 3C           8187 	.dw	0,(Ldebug_loc_start+60)
      0007A1 0C                    8188 	.uleb128	12
      0007A2 00 00 07 EF           8189 	.dw	0,2031
      0007A6 00 00 0F 37           8190 	.dw	0,(Smain$control_loop$473)
      0007AA 0D                    8191 	.uleb128	13
      0007AB 00 00 07 BF           8192 	.dw	0,1983
      0007AF 00 00 0F 3E           8193 	.dw	0,(Smain$control_loop$475)
      0007B3 00 00 0F 3E           8194 	.dw	0,(Smain$control_loop$477)
      0007B7 06                    8195 	.uleb128	6
      0007B8 69                    8196 	.ascii "i"
      0007B9 00                    8197 	.db	0
      0007BA 00 00 08 FA           8198 	.dw	0,2298
      0007BE 00                    8199 	.uleb128	0
      0007BF 0C                    8200 	.uleb128	12
      0007C0 00 00 07 DB           8201 	.dw	0,2011
      0007C4 00 00 0F CC           8202 	.dw	0,(Smain$control_loop$482)
      0007C8 05                    8203 	.uleb128	5
      0007C9 00 00 0F D4           8204 	.dw	0,(Smain$control_loop$484)
      0007CD 00 00 0F D7           8205 	.dw	0,(Smain$control_loop$486)
      0007D1 05                    8206 	.uleb128	5
      0007D2 00 00 0F DC           8207 	.dw	0,(Smain$control_loop$488)
      0007D6 00 00 0F DF           8208 	.dw	0,(Smain$control_loop$490)
      0007DA 00                    8209 	.uleb128	0
      0007DB 0A                    8210 	.uleb128	10
      0007DC 00 00 0F E9           8211 	.dw	0,(Smain$control_loop$492)
      0007E0 00 00 10 08           8212 	.dw	0,(Smain$control_loop$498)
      0007E4 05                    8213 	.uleb128	5
      0007E5 00 00 0F FC           8214 	.dw	0,(Smain$control_loop$494)
      0007E9 00 00 10 05           8215 	.dw	0,(Smain$control_loop$496)
      0007ED 00                    8216 	.uleb128	0
      0007EE 00                    8217 	.uleb128	0
      0007EF 05                    8218 	.uleb128	5
      0007F0 00 00 10 0E           8219 	.dw	0,(Smain$control_loop$500)
      0007F4 00 00 10 11           8220 	.dw	0,(Smain$control_loop$502)
      0007F8 10                    8221 	.uleb128	16
      0007F9 05                    8222 	.db	5
      0007FA 03                    8223 	.db	3
      0007FB 00 00 00 21           8224 	.dw	0,(_control_loop_light_changing_65536_253)
      0007FF 6C 69 67 68 74 5F 63  8225 	.ascii "light_changing"
             68 61 6E 67 69 6E 67
      00080D 00                    8226 	.db	0
      00080E 00 00 04 AE           8227 	.dw	0,1198
      000812 00                    8228 	.uleb128	0
      000813 09                    8229 	.uleb128	9
      000814 77 64 74 5F 69 6E 69  8230 	.ascii "wdt_init"
             74
      00081C 00                    8231 	.db	0
      00081D 00 00 10 12           8232 	.dw	0,(_wdt_init)
      000821 00 00 10 2F           8233 	.dw	0,(XG$wdt_init$0$0+1)
      000825 01                    8234 	.db	1
      000826 00 00 00 28           8235 	.dw	0,(Ldebug_loc_start+40)
      00082A 09                    8236 	.uleb128	9
      00082B 77 64 74 5F 63 6C 65  8237 	.ascii "wdt_clear"
             61 72
      000834 00                    8238 	.db	0
      000835 00 00 10 2F           8239 	.dw	0,(_wdt_clear)
      000839 00 00 10 43           8240 	.dw	0,(XG$wdt_clear$0$0+1)
      00083D 01                    8241 	.db	1
      00083E 00 00 00 14           8242 	.dw	0,(Ldebug_loc_start+20)
      000842 02                    8243 	.uleb128	2
      000843 00 00 08 B4           8244 	.dw	0,2228
      000847 6D 61 69 6E           8245 	.ascii "main"
      00084B 00                    8246 	.db	0
      00084C 00 00 10 43           8247 	.dw	0,(_main)
      000850 00 00 11 7D           8248 	.dw	0,(XG$main$0$0+1)
      000854 01                    8249 	.db	1
      000855 00 00 00 00           8250 	.dw	0,(Ldebug_loc_start)
      000859 05                    8251 	.uleb128	5
      00085A 00 00 10 5A           8252 	.dw	0,(Smain$main$537)
      00085E 00 00 10 7F           8253 	.dw	0,(Smain$main$540)
      000862 05                    8254 	.uleb128	5
      000863 00 00 10 B8           8255 	.dw	0,(Smain$main$543)
      000867 00 00 10 BB           8256 	.dw	0,(Smain$main$545)
      00086B 0A                    8257 	.uleb128	10
      00086C 00 00 10 BE           8258 	.dw	0,(Smain$main$548)
      000870 00 00 11 79           8259 	.dw	0,(Smain$main$583)
      000874 0D                    8260 	.uleb128	13
      000875 00 00 08 8B           8261 	.dw	0,2187
      000879 00 00 10 C4           8262 	.dw	0,(Smain$main$550)
      00087D 00 00 10 E3           8263 	.dw	0,(Smain$main$556)
      000881 05                    8264 	.uleb128	5
      000882 00 00 10 CA           8265 	.dw	0,(Smain$main$552)
      000886 00 00 10 E0           8266 	.dw	0,(Smain$main$554)
      00088A 00                    8267 	.uleb128	0
      00088B 05                    8268 	.uleb128	5
      00088C 00 00 10 E5           8269 	.dw	0,(Smain$main$557)
      000890 00 00 10 E8           8270 	.dw	0,(Smain$main$559)
      000894 0F                    8271 	.uleb128	15
      000895 00 00 10 EE           8272 	.dw	0,(Smain$main$561)
      000899 0F                    8273 	.uleb128	15
      00089A 00 00 11 32           8274 	.dw	0,(Smain$main$563)
      00089E 05                    8275 	.uleb128	5
      00089F 00 00 11 4D           8276 	.dw	0,(Smain$main$574)
      0008A3 00 00 11 50           8277 	.dw	0,(Smain$main$576)
      0008A7 05                    8278 	.uleb128	5
      0008A8 00 00 11 52           8279 	.dw	0,(Smain$main$577)
      0008AC 00 00 11 55           8280 	.dw	0,(Smain$main$579)
      0008B0 00                    8281 	.uleb128	0
      0008B1 00                    8282 	.uleb128	0
      0008B2 00                    8283 	.uleb128	0
      0008B3 00                    8284 	.uleb128	0
      0008B4 07                    8285 	.uleb128	7
      0008B5 5F 62 69 74           8286 	.ascii "_bit"
      0008B9 00                    8287 	.db	0
      0008BA 01                    8288 	.db	1
      0008BB 08                    8289 	.db	8
      0008BC 12                    8290 	.uleb128	18
      0008BD 05                    8291 	.db	5
      0008BE 03                    8292 	.db	3
      0008BF 00 00 00 00           8293 	.dw	0,(_BIT_TMP)
      0008C3 42 49 54 5F 54 4D 50  8294 	.ascii "BIT_TMP"
      0008CA 00                    8295 	.db	0
      0008CB 01                    8296 	.db	1
      0008CC 01                    8297 	.db	1
      0008CD 00 00 08 B4           8298 	.dw	0,2228
      0008D1 13                    8299 	.uleb128	19
      0008D2 00 00 08 DE           8300 	.dw	0,2270
      0008D6 10                    8301 	.db	16
      0008D7 00 00 03 55           8302 	.dw	0,853
      0008DB 14                    8303 	.uleb128	20
      0008DC 0F                    8304 	.db	15
      0008DD 00                    8305 	.uleb128	0
      0008DE 15                    8306 	.uleb128	21
      0008DF 05                    8307 	.db	5
      0008E0 03                    8308 	.db	3
      0008E1 00 00 00 09           8309 	.dw	0,(_uart1_rx_buffer)
      0008E5 75 61 72 74 31 5F 72  8310 	.ascii "uart1_rx_buffer"
             78 5F 62 75 66 66 65
             72
      0008F4 00                    8311 	.db	0
      0008F5 01                    8312 	.db	1
      0008F6 00 00 08 D1           8313 	.dw	0,2257
      0008FA 07                    8314 	.uleb128	7
      0008FB 69 6E 74              8315 	.ascii "int"
      0008FE 00                    8316 	.db	0
      0008FF 02                    8317 	.db	2
      000900 05                    8318 	.db	5
      000901 07                    8319 	.uleb128	7
      000902 69 6E 74              8320 	.ascii "int"
      000905 00                    8321 	.db	0
      000906 02                    8322 	.db	2
      000907 05                    8323 	.db	5
      000908 15                    8324 	.uleb128	21
      000909 05                    8325 	.db	5
      00090A 03                    8326 	.db	3
      00090B 00 00 00 5A           8327 	.dw	0,(_light_mode)
      00090F 6C 69 67 68 74 5F 6D  8328 	.ascii "light_mode"
             6F 64 65
      000919 00                    8329 	.db	0
      00091A 01                    8330 	.db	1
      00091B 00 00 03 55           8331 	.dw	0,853
      00091F 15                    8332 	.uleb128	21
      000920 05                    8333 	.db	5
      000921 03                    8334 	.db	3
      000922 00 00 00 5B           8335 	.dw	0,(_is_uart_mode)
      000926 69 73 5F 75 61 72 74  8336 	.ascii "is_uart_mode"
             5F 6D 6F 64 65
      000932 00                    8337 	.db	0
      000933 01                    8338 	.db	1
      000934 00 00 04 AE           8339 	.dw	0,1198
      000938 15                    8340 	.uleb128	21
      000939 05                    8341 	.db	5
      00093A 03                    8342 	.db	3
      00093B 00 00 00 5C           8343 	.dw	0,(_flashing_on)
      00093F 66 6C 61 73 68 69 6E  8344 	.ascii "flashing_on"
             67 5F 6F 6E
      00094A 00                    8345 	.db	0
      00094B 01                    8346 	.db	1
      00094C 00 00 04 AE           8347 	.dw	0,1198
      000950 15                    8348 	.uleb128	21
      000951 05                    8349 	.db	5
      000952 03                    8350 	.db	3
      000953 00 00 00 5D           8351 	.dw	0,(_flashing_count)
      000957 66 6C 61 73 68 69 6E  8352 	.ascii "flashing_count"
             67 5F 63 6F 75 6E 74
      000965 00                    8353 	.db	0
      000966 01                    8354 	.db	1
      000967 00 00 03 05           8355 	.dw	0,773
      00096B 13                    8356 	.uleb128	19
      00096C 00 00 09 78           8357 	.dw	0,2424
      000970 04                    8358 	.db	4
      000971 00 00 03 05           8359 	.dw	0,773
      000975 14                    8360 	.uleb128	20
      000976 01                    8361 	.db	1
      000977 00                    8362 	.uleb128	0
      000978 15                    8363 	.uleb128	21
      000979 05                    8364 	.db	5
      00097A 03                    8365 	.db	3
      00097B 00 00 00 5F           8366 	.dw	0,(_pwm)
      00097F 70 77 6D              8367 	.ascii "pwm"
      000982 00                    8368 	.db	0
      000983 01                    8369 	.db	1
      000984 00 00 09 6B           8370 	.dw	0,2411
      000988 13                    8371 	.uleb128	19
      000989 00 00 09 95           8372 	.dw	0,2453
      00098D 02                    8373 	.db	2
      00098E 00 00 02 C1           8374 	.dw	0,705
      000992 14                    8375 	.uleb128	20
      000993 01                    8376 	.db	1
      000994 00                    8377 	.uleb128	0
      000995 15                    8378 	.uleb128	21
      000996 05                    8379 	.db	5
      000997 03                    8380 	.db	3
      000998 00 00 00 63           8381 	.dw	0,(_light_control_mode)
      00099C 6C 69 67 68 74 5F 63  8382 	.ascii "light_control_mode"
             6F 6E 74 72 6F 6C 5F
             6D 6F 64 65
      0009AE 00                    8383 	.db	0
      0009AF 01                    8384 	.db	1
      0009B0 00 00 09 88           8385 	.dw	0,2440
      0009B4 15                    8386 	.uleb128	21
      0009B5 05                    8387 	.db	5
      0009B6 03                    8388 	.db	3
      0009B7 00 00 00 65           8389 	.dw	0,(_sample_count)
      0009BB 73 61 6D 70 6C 65 5F  8390 	.ascii "sample_count"
             63 6F 75 6E 74
      0009C7 00                    8391 	.db	0
      0009C8 01                    8392 	.db	1
      0009C9 00 00 03 55           8393 	.dw	0,853
      0009CD 13                    8394 	.uleb128	19
      0009CE 00 00 09 DA           8395 	.dw	0,2522
      0009D2 08                    8396 	.db	8
      0009D3 00 00 01 1E           8397 	.dw	0,286
      0009D7 14                    8398 	.uleb128	20
      0009D8 01                    8399 	.db	1
      0009D9 00                    8400 	.uleb128	0
      0009DA 15                    8401 	.uleb128	21
      0009DB 05                    8402 	.db	5
      0009DC 03                    8403 	.db	3
      0009DD 00 00 00 66           8404 	.dw	0,(_acc_amp)
      0009E1 61 63 63 5F 61 6D 70  8405 	.ascii "acc_amp"
      0009E8 00                    8406 	.db	0
      0009E9 01                    8407 	.db	1
      0009EA 00 00 09 CD           8408 	.dw	0,2509
      0009EE 15                    8409 	.uleb128	21
      0009EF 05                    8410 	.db	5
      0009F0 03                    8411 	.db	3
      0009F1 00 00 00 6E           8412 	.dw	0,(_acc_temp)
      0009F5 61 63 63 5F 74 65 6D  8413 	.ascii "acc_temp"
             70
      0009FD 00                    8414 	.db	0
      0009FE 01                    8415 	.db	1
      0009FF 00 00 01 1E           8416 	.dw	0,286
      000A03 15                    8417 	.uleb128	21
      000A04 05                    8418 	.db	5
      000A05 03                    8419 	.db	3
      000A06 00 00 00 72           8420 	.dw	0,(_cur_amp)
      000A0A 63 75 72 5F 61 6D 70  8421 	.ascii "cur_amp"
      000A11 00                    8422 	.db	0
      000A12 01                    8423 	.db	1
      000A13 00 00 09 6B           8424 	.dw	0,2411
      000A17 15                    8425 	.uleb128	21
      000A18 05                    8426 	.db	5
      000A19 03                    8427 	.db	3
      000A1A 00 00 00 76           8428 	.dw	0,(_cur_temp)
      000A1E 63 75 72 5F 74 65 6D  8429 	.ascii "cur_temp"
             70
      000A26 00                    8430 	.db	0
      000A27 01                    8431 	.db	1
      000A28 00 00 03 05           8432 	.dw	0,773
      000A2C 13                    8433 	.uleb128	19
      000A2D 00 00 0A 39           8434 	.dw	0,2617
      000A31 02                    8435 	.db	2
      000A32 00 00 03 55           8436 	.dw	0,853
      000A36 14                    8437 	.uleb128	20
      000A37 01                    8438 	.db	1
      000A38 00                    8439 	.uleb128	0
      000A39 15                    8440 	.uleb128	21
      000A3A 05                    8441 	.db	5
      000A3B 03                    8442 	.db	3
      000A3C 00 00 00 78           8443 	.dw	0,(_good_amp_count)
      000A40 67 6F 6F 64 5F 61 6D  8444 	.ascii "good_amp_count"
             70 5F 63 6F 75 6E 74
      000A4E 00                    8445 	.db	0
      000A4F 01                    8446 	.db	1
      000A50 00 00 0A 2C           8447 	.dw	0,2604
      000A54 15                    8448 	.uleb128	21
      000A55 05                    8449 	.db	5
      000A56 03                    8450 	.db	3
      000A57 00 00 00 7A           8451 	.dw	0,(_uart1_next_idx)
      000A5B 75 61 72 74 31 5F 6E  8452 	.ascii "uart1_next_idx"
             65 78 74 5F 69 64 78
      000A69 00                    8453 	.db	0
      000A6A 01                    8454 	.db	1
      000A6B 00 00 03 55           8455 	.dw	0,853
      000A6F 15                    8456 	.uleb128	21
      000A70 05                    8457 	.db	5
      000A71 03                    8458 	.db	3
      000A72 00 00 00 7B           8459 	.dw	0,(_uart1_read_idx)
      000A76 75 61 72 74 31 5F 72  8460 	.ascii "uart1_read_idx"
             65 61 64 5F 69 64 78
      000A84 00                    8461 	.db	0
      000A85 01                    8462 	.db	1
      000A86 00 00 03 55           8463 	.dw	0,853
      000A8A 15                    8464 	.uleb128	21
      000A8B 05                    8465 	.db	5
      000A8C 03                    8466 	.db	3
      000A8D 00 00 00 7C           8467 	.dw	0,(_uart_flag)
      000A91 75 61 72 74 5F 66 6C  8468 	.ascii "uart_flag"
             61 67
      000A9A 00                    8469 	.db	0
      000A9B 01                    8470 	.db	1
      000A9C 00 00 02 C1           8471 	.dw	0,705
      000AA0 15                    8472 	.uleb128	21
      000AA1 05                    8473 	.db	5
      000AA2 03                    8474 	.db	3
      000AA3 00 00 00 7D           8475 	.dw	0,(_button_pressed)
      000AA7 62 75 74 74 6F 6E 5F  8476 	.ascii "button_pressed"
             70 72 65 73 73 65 64
      000AB5 00                    8477 	.db	0
      000AB6 01                    8478 	.db	1
      000AB7 00 00 01 1E           8479 	.dw	0,286
      000ABB 15                    8480 	.uleb128	21
      000ABC 05                    8481 	.db	5
      000ABD 03                    8482 	.db	3
      000ABE 00 00 00 81           8483 	.dw	0,(_button_unpressed)
      000AC2 62 75 74 74 6F 6E 5F  8484 	.ascii "button_unpressed"
             75 6E 70 72 65 73 73
             65 64
      000AD2 00                    8485 	.db	0
      000AD3 01                    8486 	.db	1
      000AD4 00 00 01 1E           8487 	.dw	0,286
      000AD8 15                    8488 	.uleb128	21
      000AD9 05                    8489 	.db	5
      000ADA 03                    8490 	.db	3
      000ADB 00 00 00 85           8491 	.dw	0,(_uart_counter)
      000ADF 75 61 72 74 5F 63 6F  8492 	.ascii "uart_counter"
             75 6E 74 65 72
      000AEB 00                    8493 	.db	0
      000AEC 01                    8494 	.db	1
      000AED 00 00 01 1E           8495 	.dw	0,286
      000AF1 15                    8496 	.uleb128	21
      000AF2 05                    8497 	.db	5
      000AF3 03                    8498 	.db	3
      000AF4 00 00 00 89           8499 	.dw	0,(_uart_rx_state)
      000AF8 75 61 72 74 5F 72 78  8500 	.ascii "uart_rx_state"
             5F 73 74 61 74 65
      000B05 00                    8501 	.db	0
      000B06 01                    8502 	.db	1
      000B07 00 00 03 55           8503 	.dw	0,853
      000B0B 15                    8504 	.uleb128	21
      000B0C 05                    8505 	.db	5
      000B0D 03                    8506 	.db	3
      000B0E 00 00 00 8A           8507 	.dw	0,(_lamp_state)
      000B12 6C 61 6D 70 5F 73 74  8508 	.ascii "lamp_state"
             61 74 65
      000B1C 00                    8509 	.db	0
      000B1D 01                    8510 	.db	1
      000B1E 00 00 03 55           8511 	.dw	0,853
      000B22 15                    8512 	.uleb128	21
      000B23 05                    8513 	.db	5
      000B24 03                    8514 	.db	3
      000B25 00 00 00 8B           8515 	.dw	0,(_log_counter)
      000B29 6C 6F 67 5F 63 6F 75  8516 	.ascii "log_counter"
             6E 74 65 72
      000B34 00                    8517 	.db	0
      000B35 01                    8518 	.db	1
      000B36 00 00 01 1E           8519 	.dw	0,286
      000B3A 16                    8520 	.uleb128	22
      000B3B 00 00 03 55           8521 	.dw	0,853
      000B3F 15                    8522 	.uleb128	21
      000B40 05                    8523 	.db	5
      000B41 03                    8524 	.db	3
      000B42 00 00 00 80           8525 	.dw	0,(_P0)
      000B46 50 30                 8526 	.ascii "P0"
      000B48 00                    8527 	.db	0
      000B49 01                    8528 	.db	1
      000B4A 00 00 0B 3A           8529 	.dw	0,2874
      000B4E 15                    8530 	.uleb128	21
      000B4F 05                    8531 	.db	5
      000B50 03                    8532 	.db	3
      000B51 00 00 00 81           8533 	.dw	0,(_SP)
      000B55 53 50                 8534 	.ascii "SP"
      000B57 00                    8535 	.db	0
      000B58 01                    8536 	.db	1
      000B59 00 00 0B 3A           8537 	.dw	0,2874
      000B5D 15                    8538 	.uleb128	21
      000B5E 05                    8539 	.db	5
      000B5F 03                    8540 	.db	3
      000B60 00 00 00 82           8541 	.dw	0,(_DPL)
      000B64 44 50 4C              8542 	.ascii "DPL"
      000B67 00                    8543 	.db	0
      000B68 01                    8544 	.db	1
      000B69 00 00 0B 3A           8545 	.dw	0,2874
      000B6D 15                    8546 	.uleb128	21
      000B6E 05                    8547 	.db	5
      000B6F 03                    8548 	.db	3
      000B70 00 00 00 83           8549 	.dw	0,(_DPH)
      000B74 44 50 48              8550 	.ascii "DPH"
      000B77 00                    8551 	.db	0
      000B78 01                    8552 	.db	1
      000B79 00 00 0B 3A           8553 	.dw	0,2874
      000B7D 15                    8554 	.uleb128	21
      000B7E 05                    8555 	.db	5
      000B7F 03                    8556 	.db	3
      000B80 00 00 00 84           8557 	.dw	0,(_RCTRIM0)
      000B84 52 43 54 52 49 4D 30  8558 	.ascii "RCTRIM0"
      000B8B 00                    8559 	.db	0
      000B8C 01                    8560 	.db	1
      000B8D 00 00 0B 3A           8561 	.dw	0,2874
      000B91 15                    8562 	.uleb128	21
      000B92 05                    8563 	.db	5
      000B93 03                    8564 	.db	3
      000B94 00 00 00 85           8565 	.dw	0,(_RCTRIM1)
      000B98 52 43 54 52 49 4D 31  8566 	.ascii "RCTRIM1"
      000B9F 00                    8567 	.db	0
      000BA0 01                    8568 	.db	1
      000BA1 00 00 0B 3A           8569 	.dw	0,2874
      000BA5 15                    8570 	.uleb128	21
      000BA6 05                    8571 	.db	5
      000BA7 03                    8572 	.db	3
      000BA8 00 00 00 86           8573 	.dw	0,(_RWK)
      000BAC 52 57 4B              8574 	.ascii "RWK"
      000BAF 00                    8575 	.db	0
      000BB0 01                    8576 	.db	1
      000BB1 00 00 0B 3A           8577 	.dw	0,2874
      000BB5 15                    8578 	.uleb128	21
      000BB6 05                    8579 	.db	5
      000BB7 03                    8580 	.db	3
      000BB8 00 00 00 87           8581 	.dw	0,(_PCON)
      000BBC 50 43 4F 4E           8582 	.ascii "PCON"
      000BC0 00                    8583 	.db	0
      000BC1 01                    8584 	.db	1
      000BC2 00 00 0B 3A           8585 	.dw	0,2874
      000BC6 15                    8586 	.uleb128	21
      000BC7 05                    8587 	.db	5
      000BC8 03                    8588 	.db	3
      000BC9 00 00 00 88           8589 	.dw	0,(_TCON)
      000BCD 54 43 4F 4E           8590 	.ascii "TCON"
      000BD1 00                    8591 	.db	0
      000BD2 01                    8592 	.db	1
      000BD3 00 00 0B 3A           8593 	.dw	0,2874
      000BD7 15                    8594 	.uleb128	21
      000BD8 05                    8595 	.db	5
      000BD9 03                    8596 	.db	3
      000BDA 00 00 00 89           8597 	.dw	0,(_TMOD)
      000BDE 54 4D 4F 44           8598 	.ascii "TMOD"
      000BE2 00                    8599 	.db	0
      000BE3 01                    8600 	.db	1
      000BE4 00 00 0B 3A           8601 	.dw	0,2874
      000BE8 15                    8602 	.uleb128	21
      000BE9 05                    8603 	.db	5
      000BEA 03                    8604 	.db	3
      000BEB 00 00 00 8A           8605 	.dw	0,(_TL0)
      000BEF 54 4C 30              8606 	.ascii "TL0"
      000BF2 00                    8607 	.db	0
      000BF3 01                    8608 	.db	1
      000BF4 00 00 0B 3A           8609 	.dw	0,2874
      000BF8 15                    8610 	.uleb128	21
      000BF9 05                    8611 	.db	5
      000BFA 03                    8612 	.db	3
      000BFB 00 00 00 8B           8613 	.dw	0,(_TL1)
      000BFF 54 4C 31              8614 	.ascii "TL1"
      000C02 00                    8615 	.db	0
      000C03 01                    8616 	.db	1
      000C04 00 00 0B 3A           8617 	.dw	0,2874
      000C08 15                    8618 	.uleb128	21
      000C09 05                    8619 	.db	5
      000C0A 03                    8620 	.db	3
      000C0B 00 00 00 8C           8621 	.dw	0,(_TH0)
      000C0F 54 48 30              8622 	.ascii "TH0"
      000C12 00                    8623 	.db	0
      000C13 01                    8624 	.db	1
      000C14 00 00 0B 3A           8625 	.dw	0,2874
      000C18 15                    8626 	.uleb128	21
      000C19 05                    8627 	.db	5
      000C1A 03                    8628 	.db	3
      000C1B 00 00 00 8D           8629 	.dw	0,(_TH1)
      000C1F 54 48 31              8630 	.ascii "TH1"
      000C22 00                    8631 	.db	0
      000C23 01                    8632 	.db	1
      000C24 00 00 0B 3A           8633 	.dw	0,2874
      000C28 15                    8634 	.uleb128	21
      000C29 05                    8635 	.db	5
      000C2A 03                    8636 	.db	3
      000C2B 00 00 00 8E           8637 	.dw	0,(_CKCON)
      000C2F 43 4B 43 4F 4E        8638 	.ascii "CKCON"
      000C34 00                    8639 	.db	0
      000C35 01                    8640 	.db	1
      000C36 00 00 0B 3A           8641 	.dw	0,2874
      000C3A 15                    8642 	.uleb128	21
      000C3B 05                    8643 	.db	5
      000C3C 03                    8644 	.db	3
      000C3D 00 00 00 8F           8645 	.dw	0,(_WKCON)
      000C41 57 4B 43 4F 4E        8646 	.ascii "WKCON"
      000C46 00                    8647 	.db	0
      000C47 01                    8648 	.db	1
      000C48 00 00 0B 3A           8649 	.dw	0,2874
      000C4C 15                    8650 	.uleb128	21
      000C4D 05                    8651 	.db	5
      000C4E 03                    8652 	.db	3
      000C4F 00 00 00 90           8653 	.dw	0,(_P1)
      000C53 50 31                 8654 	.ascii "P1"
      000C55 00                    8655 	.db	0
      000C56 01                    8656 	.db	1
      000C57 00 00 0B 3A           8657 	.dw	0,2874
      000C5B 15                    8658 	.uleb128	21
      000C5C 05                    8659 	.db	5
      000C5D 03                    8660 	.db	3
      000C5E 00 00 00 91           8661 	.dw	0,(_SFRS)
      000C62 53 46 52 53           8662 	.ascii "SFRS"
      000C66 00                    8663 	.db	0
      000C67 01                    8664 	.db	1
      000C68 00 00 0B 3A           8665 	.dw	0,2874
      000C6C 15                    8666 	.uleb128	21
      000C6D 05                    8667 	.db	5
      000C6E 03                    8668 	.db	3
      000C6F 00 00 00 92           8669 	.dw	0,(_CAPCON0)
      000C73 43 41 50 43 4F 4E 30  8670 	.ascii "CAPCON0"
      000C7A 00                    8671 	.db	0
      000C7B 01                    8672 	.db	1
      000C7C 00 00 0B 3A           8673 	.dw	0,2874
      000C80 15                    8674 	.uleb128	21
      000C81 05                    8675 	.db	5
      000C82 03                    8676 	.db	3
      000C83 00 00 00 93           8677 	.dw	0,(_CAPCON1)
      000C87 43 41 50 43 4F 4E 31  8678 	.ascii "CAPCON1"
      000C8E 00                    8679 	.db	0
      000C8F 01                    8680 	.db	1
      000C90 00 00 0B 3A           8681 	.dw	0,2874
      000C94 15                    8682 	.uleb128	21
      000C95 05                    8683 	.db	5
      000C96 03                    8684 	.db	3
      000C97 00 00 00 94           8685 	.dw	0,(_CAPCON2)
      000C9B 43 41 50 43 4F 4E 32  8686 	.ascii "CAPCON2"
      000CA2 00                    8687 	.db	0
      000CA3 01                    8688 	.db	1
      000CA4 00 00 0B 3A           8689 	.dw	0,2874
      000CA8 15                    8690 	.uleb128	21
      000CA9 05                    8691 	.db	5
      000CAA 03                    8692 	.db	3
      000CAB 00 00 00 95           8693 	.dw	0,(_CKDIV)
      000CAF 43 4B 44 49 56        8694 	.ascii "CKDIV"
      000CB4 00                    8695 	.db	0
      000CB5 01                    8696 	.db	1
      000CB6 00 00 0B 3A           8697 	.dw	0,2874
      000CBA 15                    8698 	.uleb128	21
      000CBB 05                    8699 	.db	5
      000CBC 03                    8700 	.db	3
      000CBD 00 00 00 96           8701 	.dw	0,(_CKSWT)
      000CC1 43 4B 53 57 54        8702 	.ascii "CKSWT"
      000CC6 00                    8703 	.db	0
      000CC7 01                    8704 	.db	1
      000CC8 00 00 0B 3A           8705 	.dw	0,2874
      000CCC 15                    8706 	.uleb128	21
      000CCD 05                    8707 	.db	5
      000CCE 03                    8708 	.db	3
      000CCF 00 00 00 97           8709 	.dw	0,(_CKEN)
      000CD3 43 4B 45 4E           8710 	.ascii "CKEN"
      000CD7 00                    8711 	.db	0
      000CD8 01                    8712 	.db	1
      000CD9 00 00 0B 3A           8713 	.dw	0,2874
      000CDD 15                    8714 	.uleb128	21
      000CDE 05                    8715 	.db	5
      000CDF 03                    8716 	.db	3
      000CE0 00 00 00 98           8717 	.dw	0,(_SCON)
      000CE4 53 43 4F 4E           8718 	.ascii "SCON"
      000CE8 00                    8719 	.db	0
      000CE9 01                    8720 	.db	1
      000CEA 00 00 0B 3A           8721 	.dw	0,2874
      000CEE 15                    8722 	.uleb128	21
      000CEF 05                    8723 	.db	5
      000CF0 03                    8724 	.db	3
      000CF1 00 00 00 99           8725 	.dw	0,(_SBUF)
      000CF5 53 42 55 46           8726 	.ascii "SBUF"
      000CF9 00                    8727 	.db	0
      000CFA 01                    8728 	.db	1
      000CFB 00 00 0B 3A           8729 	.dw	0,2874
      000CFF 15                    8730 	.uleb128	21
      000D00 05                    8731 	.db	5
      000D01 03                    8732 	.db	3
      000D02 00 00 00 9A           8733 	.dw	0,(_SBUF_1)
      000D06 53 42 55 46 5F 31     8734 	.ascii "SBUF_1"
      000D0C 00                    8735 	.db	0
      000D0D 01                    8736 	.db	1
      000D0E 00 00 0B 3A           8737 	.dw	0,2874
      000D12 15                    8738 	.uleb128	21
      000D13 05                    8739 	.db	5
      000D14 03                    8740 	.db	3
      000D15 00 00 00 9B           8741 	.dw	0,(_EIE)
      000D19 45 49 45              8742 	.ascii "EIE"
      000D1C 00                    8743 	.db	0
      000D1D 01                    8744 	.db	1
      000D1E 00 00 0B 3A           8745 	.dw	0,2874
      000D22 15                    8746 	.uleb128	21
      000D23 05                    8747 	.db	5
      000D24 03                    8748 	.db	3
      000D25 00 00 00 9C           8749 	.dw	0,(_EIE1)
      000D29 45 49 45 31           8750 	.ascii "EIE1"
      000D2D 00                    8751 	.db	0
      000D2E 01                    8752 	.db	1
      000D2F 00 00 0B 3A           8753 	.dw	0,2874
      000D33 15                    8754 	.uleb128	21
      000D34 05                    8755 	.db	5
      000D35 03                    8756 	.db	3
      000D36 00 00 00 9F           8757 	.dw	0,(_CHPCON)
      000D3A 43 48 50 43 4F 4E     8758 	.ascii "CHPCON"
      000D40 00                    8759 	.db	0
      000D41 01                    8760 	.db	1
      000D42 00 00 0B 3A           8761 	.dw	0,2874
      000D46 15                    8762 	.uleb128	21
      000D47 05                    8763 	.db	5
      000D48 03                    8764 	.db	3
      000D49 00 00 00 A0           8765 	.dw	0,(_P2)
      000D4D 50 32                 8766 	.ascii "P2"
      000D4F 00                    8767 	.db	0
      000D50 01                    8768 	.db	1
      000D51 00 00 0B 3A           8769 	.dw	0,2874
      000D55 15                    8770 	.uleb128	21
      000D56 05                    8771 	.db	5
      000D57 03                    8772 	.db	3
      000D58 00 00 00 A2           8773 	.dw	0,(_AUXR1)
      000D5C 41 55 58 52 31        8774 	.ascii "AUXR1"
      000D61 00                    8775 	.db	0
      000D62 01                    8776 	.db	1
      000D63 00 00 0B 3A           8777 	.dw	0,2874
      000D67 15                    8778 	.uleb128	21
      000D68 05                    8779 	.db	5
      000D69 03                    8780 	.db	3
      000D6A 00 00 00 A3           8781 	.dw	0,(_BODCON0)
      000D6E 42 4F 44 43 4F 4E 30  8782 	.ascii "BODCON0"
      000D75 00                    8783 	.db	0
      000D76 01                    8784 	.db	1
      000D77 00 00 0B 3A           8785 	.dw	0,2874
      000D7B 15                    8786 	.uleb128	21
      000D7C 05                    8787 	.db	5
      000D7D 03                    8788 	.db	3
      000D7E 00 00 00 A4           8789 	.dw	0,(_IAPTRG)
      000D82 49 41 50 54 52 47     8790 	.ascii "IAPTRG"
      000D88 00                    8791 	.db	0
      000D89 01                    8792 	.db	1
      000D8A 00 00 0B 3A           8793 	.dw	0,2874
      000D8E 15                    8794 	.uleb128	21
      000D8F 05                    8795 	.db	5
      000D90 03                    8796 	.db	3
      000D91 00 00 00 A5           8797 	.dw	0,(_IAPUEN)
      000D95 49 41 50 55 45 4E     8798 	.ascii "IAPUEN"
      000D9B 00                    8799 	.db	0
      000D9C 01                    8800 	.db	1
      000D9D 00 00 0B 3A           8801 	.dw	0,2874
      000DA1 15                    8802 	.uleb128	21
      000DA2 05                    8803 	.db	5
      000DA3 03                    8804 	.db	3
      000DA4 00 00 00 A6           8805 	.dw	0,(_IAPAL)
      000DA8 49 41 50 41 4C        8806 	.ascii "IAPAL"
      000DAD 00                    8807 	.db	0
      000DAE 01                    8808 	.db	1
      000DAF 00 00 0B 3A           8809 	.dw	0,2874
      000DB3 15                    8810 	.uleb128	21
      000DB4 05                    8811 	.db	5
      000DB5 03                    8812 	.db	3
      000DB6 00 00 00 A7           8813 	.dw	0,(_IAPAH)
      000DBA 49 41 50 41 48        8814 	.ascii "IAPAH"
      000DBF 00                    8815 	.db	0
      000DC0 01                    8816 	.db	1
      000DC1 00 00 0B 3A           8817 	.dw	0,2874
      000DC5 15                    8818 	.uleb128	21
      000DC6 05                    8819 	.db	5
      000DC7 03                    8820 	.db	3
      000DC8 00 00 00 A8           8821 	.dw	0,(_IE)
      000DCC 49 45                 8822 	.ascii "IE"
      000DCE 00                    8823 	.db	0
      000DCF 01                    8824 	.db	1
      000DD0 00 00 0B 3A           8825 	.dw	0,2874
      000DD4 15                    8826 	.uleb128	21
      000DD5 05                    8827 	.db	5
      000DD6 03                    8828 	.db	3
      000DD7 00 00 00 A9           8829 	.dw	0,(_SADDR)
      000DDB 53 41 44 44 52        8830 	.ascii "SADDR"
      000DE0 00                    8831 	.db	0
      000DE1 01                    8832 	.db	1
      000DE2 00 00 0B 3A           8833 	.dw	0,2874
      000DE6 15                    8834 	.uleb128	21
      000DE7 05                    8835 	.db	5
      000DE8 03                    8836 	.db	3
      000DE9 00 00 00 AA           8837 	.dw	0,(_WDCON)
      000DED 57 44 43 4F 4E        8838 	.ascii "WDCON"
      000DF2 00                    8839 	.db	0
      000DF3 01                    8840 	.db	1
      000DF4 00 00 0B 3A           8841 	.dw	0,2874
      000DF8 15                    8842 	.uleb128	21
      000DF9 05                    8843 	.db	5
      000DFA 03                    8844 	.db	3
      000DFB 00 00 00 AB           8845 	.dw	0,(_BODCON1)
      000DFF 42 4F 44 43 4F 4E 31  8846 	.ascii "BODCON1"
      000E06 00                    8847 	.db	0
      000E07 01                    8848 	.db	1
      000E08 00 00 0B 3A           8849 	.dw	0,2874
      000E0C 15                    8850 	.uleb128	21
      000E0D 05                    8851 	.db	5
      000E0E 03                    8852 	.db	3
      000E0F 00 00 00 AC           8853 	.dw	0,(_P3M1)
      000E13 50 33 4D 31           8854 	.ascii "P3M1"
      000E17 00                    8855 	.db	0
      000E18 01                    8856 	.db	1
      000E19 00 00 0B 3A           8857 	.dw	0,2874
      000E1D 15                    8858 	.uleb128	21
      000E1E 05                    8859 	.db	5
      000E1F 03                    8860 	.db	3
      000E20 00 00 00 AC           8861 	.dw	0,(_P3S)
      000E24 50 33 53              8862 	.ascii "P3S"
      000E27 00                    8863 	.db	0
      000E28 01                    8864 	.db	1
      000E29 00 00 0B 3A           8865 	.dw	0,2874
      000E2D 15                    8866 	.uleb128	21
      000E2E 05                    8867 	.db	5
      000E2F 03                    8868 	.db	3
      000E30 00 00 00 AD           8869 	.dw	0,(_P3M2)
      000E34 50 33 4D 32           8870 	.ascii "P3M2"
      000E38 00                    8871 	.db	0
      000E39 01                    8872 	.db	1
      000E3A 00 00 0B 3A           8873 	.dw	0,2874
      000E3E 15                    8874 	.uleb128	21
      000E3F 05                    8875 	.db	5
      000E40 03                    8876 	.db	3
      000E41 00 00 00 AD           8877 	.dw	0,(_P3SR)
      000E45 50 33 53 52           8878 	.ascii "P3SR"
      000E49 00                    8879 	.db	0
      000E4A 01                    8880 	.db	1
      000E4B 00 00 0B 3A           8881 	.dw	0,2874
      000E4F 15                    8882 	.uleb128	21
      000E50 05                    8883 	.db	5
      000E51 03                    8884 	.db	3
      000E52 00 00 00 AE           8885 	.dw	0,(_IAPFD)
      000E56 49 41 50 46 44        8886 	.ascii "IAPFD"
      000E5B 00                    8887 	.db	0
      000E5C 01                    8888 	.db	1
      000E5D 00 00 0B 3A           8889 	.dw	0,2874
      000E61 15                    8890 	.uleb128	21
      000E62 05                    8891 	.db	5
      000E63 03                    8892 	.db	3
      000E64 00 00 00 AF           8893 	.dw	0,(_IAPCN)
      000E68 49 41 50 43 4E        8894 	.ascii "IAPCN"
      000E6D 00                    8895 	.db	0
      000E6E 01                    8896 	.db	1
      000E6F 00 00 0B 3A           8897 	.dw	0,2874
      000E73 15                    8898 	.uleb128	21
      000E74 05                    8899 	.db	5
      000E75 03                    8900 	.db	3
      000E76 00 00 00 B0           8901 	.dw	0,(_P3)
      000E7A 50 33                 8902 	.ascii "P3"
      000E7C 00                    8903 	.db	0
      000E7D 01                    8904 	.db	1
      000E7E 00 00 0B 3A           8905 	.dw	0,2874
      000E82 15                    8906 	.uleb128	21
      000E83 05                    8907 	.db	5
      000E84 03                    8908 	.db	3
      000E85 00 00 00 B1           8909 	.dw	0,(_P0M1)
      000E89 50 30 4D 31           8910 	.ascii "P0M1"
      000E8D 00                    8911 	.db	0
      000E8E 01                    8912 	.db	1
      000E8F 00 00 0B 3A           8913 	.dw	0,2874
      000E93 15                    8914 	.uleb128	21
      000E94 05                    8915 	.db	5
      000E95 03                    8916 	.db	3
      000E96 00 00 00 B1           8917 	.dw	0,(_P0S)
      000E9A 50 30 53              8918 	.ascii "P0S"
      000E9D 00                    8919 	.db	0
      000E9E 01                    8920 	.db	1
      000E9F 00 00 0B 3A           8921 	.dw	0,2874
      000EA3 15                    8922 	.uleb128	21
      000EA4 05                    8923 	.db	5
      000EA5 03                    8924 	.db	3
      000EA6 00 00 00 B2           8925 	.dw	0,(_P0M2)
      000EAA 50 30 4D 32           8926 	.ascii "P0M2"
      000EAE 00                    8927 	.db	0
      000EAF 01                    8928 	.db	1
      000EB0 00 00 0B 3A           8929 	.dw	0,2874
      000EB4 15                    8930 	.uleb128	21
      000EB5 05                    8931 	.db	5
      000EB6 03                    8932 	.db	3
      000EB7 00 00 00 B2           8933 	.dw	0,(_P0SR)
      000EBB 50 30 53 52           8934 	.ascii "P0SR"
      000EBF 00                    8935 	.db	0
      000EC0 01                    8936 	.db	1
      000EC1 00 00 0B 3A           8937 	.dw	0,2874
      000EC5 15                    8938 	.uleb128	21
      000EC6 05                    8939 	.db	5
      000EC7 03                    8940 	.db	3
      000EC8 00 00 00 B3           8941 	.dw	0,(_P1M1)
      000ECC 50 31 4D 31           8942 	.ascii "P1M1"
      000ED0 00                    8943 	.db	0
      000ED1 01                    8944 	.db	1
      000ED2 00 00 0B 3A           8945 	.dw	0,2874
      000ED6 15                    8946 	.uleb128	21
      000ED7 05                    8947 	.db	5
      000ED8 03                    8948 	.db	3
      000ED9 00 00 00 B3           8949 	.dw	0,(_P1S)
      000EDD 50 31 53              8950 	.ascii "P1S"
      000EE0 00                    8951 	.db	0
      000EE1 01                    8952 	.db	1
      000EE2 00 00 0B 3A           8953 	.dw	0,2874
      000EE6 15                    8954 	.uleb128	21
      000EE7 05                    8955 	.db	5
      000EE8 03                    8956 	.db	3
      000EE9 00 00 00 B4           8957 	.dw	0,(_P1M2)
      000EED 50 31 4D 32           8958 	.ascii "P1M2"
      000EF1 00                    8959 	.db	0
      000EF2 01                    8960 	.db	1
      000EF3 00 00 0B 3A           8961 	.dw	0,2874
      000EF7 15                    8962 	.uleb128	21
      000EF8 05                    8963 	.db	5
      000EF9 03                    8964 	.db	3
      000EFA 00 00 00 B4           8965 	.dw	0,(_P1SR)
      000EFE 50 31 53 52           8966 	.ascii "P1SR"
      000F02 00                    8967 	.db	0
      000F03 01                    8968 	.db	1
      000F04 00 00 0B 3A           8969 	.dw	0,2874
      000F08 15                    8970 	.uleb128	21
      000F09 05                    8971 	.db	5
      000F0A 03                    8972 	.db	3
      000F0B 00 00 00 B5           8973 	.dw	0,(_P2S)
      000F0F 50 32 53              8974 	.ascii "P2S"
      000F12 00                    8975 	.db	0
      000F13 01                    8976 	.db	1
      000F14 00 00 0B 3A           8977 	.dw	0,2874
      000F18 15                    8978 	.uleb128	21
      000F19 05                    8979 	.db	5
      000F1A 03                    8980 	.db	3
      000F1B 00 00 00 B7           8981 	.dw	0,(_IPH)
      000F1F 49 50 48              8982 	.ascii "IPH"
      000F22 00                    8983 	.db	0
      000F23 01                    8984 	.db	1
      000F24 00 00 0B 3A           8985 	.dw	0,2874
      000F28 15                    8986 	.uleb128	21
      000F29 05                    8987 	.db	5
      000F2A 03                    8988 	.db	3
      000F2B 00 00 00 B7           8989 	.dw	0,(_PWMINTC)
      000F2F 50 57 4D 49 4E 54 43  8990 	.ascii "PWMINTC"
      000F36 00                    8991 	.db	0
      000F37 01                    8992 	.db	1
      000F38 00 00 0B 3A           8993 	.dw	0,2874
      000F3C 15                    8994 	.uleb128	21
      000F3D 05                    8995 	.db	5
      000F3E 03                    8996 	.db	3
      000F3F 00 00 00 B8           8997 	.dw	0,(_IP)
      000F43 49 50                 8998 	.ascii "IP"
      000F45 00                    8999 	.db	0
      000F46 01                    9000 	.db	1
      000F47 00 00 0B 3A           9001 	.dw	0,2874
      000F4B 15                    9002 	.uleb128	21
      000F4C 05                    9003 	.db	5
      000F4D 03                    9004 	.db	3
      000F4E 00 00 00 B9           9005 	.dw	0,(_SADEN)
      000F52 53 41 44 45 4E        9006 	.ascii "SADEN"
      000F57 00                    9007 	.db	0
      000F58 01                    9008 	.db	1
      000F59 00 00 0B 3A           9009 	.dw	0,2874
      000F5D 15                    9010 	.uleb128	21
      000F5E 05                    9011 	.db	5
      000F5F 03                    9012 	.db	3
      000F60 00 00 00 BA           9013 	.dw	0,(_SADEN_1)
      000F64 53 41 44 45 4E 5F 31  9014 	.ascii "SADEN_1"
      000F6B 00                    9015 	.db	0
      000F6C 01                    9016 	.db	1
      000F6D 00 00 0B 3A           9017 	.dw	0,2874
      000F71 15                    9018 	.uleb128	21
      000F72 05                    9019 	.db	5
      000F73 03                    9020 	.db	3
      000F74 00 00 00 BB           9021 	.dw	0,(_SADDR_1)
      000F78 53 41 44 44 52 5F 31  9022 	.ascii "SADDR_1"
      000F7F 00                    9023 	.db	0
      000F80 01                    9024 	.db	1
      000F81 00 00 0B 3A           9025 	.dw	0,2874
      000F85 15                    9026 	.uleb128	21
      000F86 05                    9027 	.db	5
      000F87 03                    9028 	.db	3
      000F88 00 00 00 BC           9029 	.dw	0,(_I2DAT)
      000F8C 49 32 44 41 54        9030 	.ascii "I2DAT"
      000F91 00                    9031 	.db	0
      000F92 01                    9032 	.db	1
      000F93 00 00 0B 3A           9033 	.dw	0,2874
      000F97 15                    9034 	.uleb128	21
      000F98 05                    9035 	.db	5
      000F99 03                    9036 	.db	3
      000F9A 00 00 00 BD           9037 	.dw	0,(_I2STAT)
      000F9E 49 32 53 54 41 54     9038 	.ascii "I2STAT"
      000FA4 00                    9039 	.db	0
      000FA5 01                    9040 	.db	1
      000FA6 00 00 0B 3A           9041 	.dw	0,2874
      000FAA 15                    9042 	.uleb128	21
      000FAB 05                    9043 	.db	5
      000FAC 03                    9044 	.db	3
      000FAD 00 00 00 BE           9045 	.dw	0,(_I2CLK)
      000FB1 49 32 43 4C 4B        9046 	.ascii "I2CLK"
      000FB6 00                    9047 	.db	0
      000FB7 01                    9048 	.db	1
      000FB8 00 00 0B 3A           9049 	.dw	0,2874
      000FBC 15                    9050 	.uleb128	21
      000FBD 05                    9051 	.db	5
      000FBE 03                    9052 	.db	3
      000FBF 00 00 00 BF           9053 	.dw	0,(_I2TOC)
      000FC3 49 32 54 4F 43        9054 	.ascii "I2TOC"
      000FC8 00                    9055 	.db	0
      000FC9 01                    9056 	.db	1
      000FCA 00 00 0B 3A           9057 	.dw	0,2874
      000FCE 15                    9058 	.uleb128	21
      000FCF 05                    9059 	.db	5
      000FD0 03                    9060 	.db	3
      000FD1 00 00 00 C0           9061 	.dw	0,(_I2CON)
      000FD5 49 32 43 4F 4E        9062 	.ascii "I2CON"
      000FDA 00                    9063 	.db	0
      000FDB 01                    9064 	.db	1
      000FDC 00 00 0B 3A           9065 	.dw	0,2874
      000FE0 15                    9066 	.uleb128	21
      000FE1 05                    9067 	.db	5
      000FE2 03                    9068 	.db	3
      000FE3 00 00 00 C1           9069 	.dw	0,(_I2ADDR)
      000FE7 49 32 41 44 44 52     9070 	.ascii "I2ADDR"
      000FED 00                    9071 	.db	0
      000FEE 01                    9072 	.db	1
      000FEF 00 00 0B 3A           9073 	.dw	0,2874
      000FF3 15                    9074 	.uleb128	21
      000FF4 05                    9075 	.db	5
      000FF5 03                    9076 	.db	3
      000FF6 00 00 00 C2           9077 	.dw	0,(_ADCRL)
      000FFA 41 44 43 52 4C        9078 	.ascii "ADCRL"
      000FFF 00                    9079 	.db	0
      001000 01                    9080 	.db	1
      001001 00 00 0B 3A           9081 	.dw	0,2874
      001005 15                    9082 	.uleb128	21
      001006 05                    9083 	.db	5
      001007 03                    9084 	.db	3
      001008 00 00 00 C3           9085 	.dw	0,(_ADCRH)
      00100C 41 44 43 52 48        9086 	.ascii "ADCRH"
      001011 00                    9087 	.db	0
      001012 01                    9088 	.db	1
      001013 00 00 0B 3A           9089 	.dw	0,2874
      001017 15                    9090 	.uleb128	21
      001018 05                    9091 	.db	5
      001019 03                    9092 	.db	3
      00101A 00 00 00 C4           9093 	.dw	0,(_T3CON)
      00101E 54 33 43 4F 4E        9094 	.ascii "T3CON"
      001023 00                    9095 	.db	0
      001024 01                    9096 	.db	1
      001025 00 00 0B 3A           9097 	.dw	0,2874
      001029 15                    9098 	.uleb128	21
      00102A 05                    9099 	.db	5
      00102B 03                    9100 	.db	3
      00102C 00 00 00 C4           9101 	.dw	0,(_PWM4H)
      001030 50 57 4D 34 48        9102 	.ascii "PWM4H"
      001035 00                    9103 	.db	0
      001036 01                    9104 	.db	1
      001037 00 00 0B 3A           9105 	.dw	0,2874
      00103B 15                    9106 	.uleb128	21
      00103C 05                    9107 	.db	5
      00103D 03                    9108 	.db	3
      00103E 00 00 00 C5           9109 	.dw	0,(_RL3)
      001042 52 4C 33              9110 	.ascii "RL3"
      001045 00                    9111 	.db	0
      001046 01                    9112 	.db	1
      001047 00 00 0B 3A           9113 	.dw	0,2874
      00104B 15                    9114 	.uleb128	21
      00104C 05                    9115 	.db	5
      00104D 03                    9116 	.db	3
      00104E 00 00 00 C5           9117 	.dw	0,(_PWM5H)
      001052 50 57 4D 35 48        9118 	.ascii "PWM5H"
      001057 00                    9119 	.db	0
      001058 01                    9120 	.db	1
      001059 00 00 0B 3A           9121 	.dw	0,2874
      00105D 15                    9122 	.uleb128	21
      00105E 05                    9123 	.db	5
      00105F 03                    9124 	.db	3
      001060 00 00 00 C6           9125 	.dw	0,(_RH3)
      001064 52 48 33              9126 	.ascii "RH3"
      001067 00                    9127 	.db	0
      001068 01                    9128 	.db	1
      001069 00 00 0B 3A           9129 	.dw	0,2874
      00106D 15                    9130 	.uleb128	21
      00106E 05                    9131 	.db	5
      00106F 03                    9132 	.db	3
      001070 00 00 00 C6           9133 	.dw	0,(_PIOCON1)
      001074 50 49 4F 43 4F 4E 31  9134 	.ascii "PIOCON1"
      00107B 00                    9135 	.db	0
      00107C 01                    9136 	.db	1
      00107D 00 00 0B 3A           9137 	.dw	0,2874
      001081 15                    9138 	.uleb128	21
      001082 05                    9139 	.db	5
      001083 03                    9140 	.db	3
      001084 00 00 00 C7           9141 	.dw	0,(_TA)
      001088 54 41                 9142 	.ascii "TA"
      00108A 00                    9143 	.db	0
      00108B 01                    9144 	.db	1
      00108C 00 00 0B 3A           9145 	.dw	0,2874
      001090 15                    9146 	.uleb128	21
      001091 05                    9147 	.db	5
      001092 03                    9148 	.db	3
      001093 00 00 00 C8           9149 	.dw	0,(_T2CON)
      001097 54 32 43 4F 4E        9150 	.ascii "T2CON"
      00109C 00                    9151 	.db	0
      00109D 01                    9152 	.db	1
      00109E 00 00 0B 3A           9153 	.dw	0,2874
      0010A2 15                    9154 	.uleb128	21
      0010A3 05                    9155 	.db	5
      0010A4 03                    9156 	.db	3
      0010A5 00 00 00 C9           9157 	.dw	0,(_T2MOD)
      0010A9 54 32 4D 4F 44        9158 	.ascii "T2MOD"
      0010AE 00                    9159 	.db	0
      0010AF 01                    9160 	.db	1
      0010B0 00 00 0B 3A           9161 	.dw	0,2874
      0010B4 15                    9162 	.uleb128	21
      0010B5 05                    9163 	.db	5
      0010B6 03                    9164 	.db	3
      0010B7 00 00 00 CA           9165 	.dw	0,(_RCMP2L)
      0010BB 52 43 4D 50 32 4C     9166 	.ascii "RCMP2L"
      0010C1 00                    9167 	.db	0
      0010C2 01                    9168 	.db	1
      0010C3 00 00 0B 3A           9169 	.dw	0,2874
      0010C7 15                    9170 	.uleb128	21
      0010C8 05                    9171 	.db	5
      0010C9 03                    9172 	.db	3
      0010CA 00 00 00 CB           9173 	.dw	0,(_RCMP2H)
      0010CE 52 43 4D 50 32 48     9174 	.ascii "RCMP2H"
      0010D4 00                    9175 	.db	0
      0010D5 01                    9176 	.db	1
      0010D6 00 00 0B 3A           9177 	.dw	0,2874
      0010DA 15                    9178 	.uleb128	21
      0010DB 05                    9179 	.db	5
      0010DC 03                    9180 	.db	3
      0010DD 00 00 00 CC           9181 	.dw	0,(_TL2)
      0010E1 54 4C 32              9182 	.ascii "TL2"
      0010E4 00                    9183 	.db	0
      0010E5 01                    9184 	.db	1
      0010E6 00 00 0B 3A           9185 	.dw	0,2874
      0010EA 15                    9186 	.uleb128	21
      0010EB 05                    9187 	.db	5
      0010EC 03                    9188 	.db	3
      0010ED 00 00 00 CC           9189 	.dw	0,(_PWM4L)
      0010F1 50 57 4D 34 4C        9190 	.ascii "PWM4L"
      0010F6 00                    9191 	.db	0
      0010F7 01                    9192 	.db	1
      0010F8 00 00 0B 3A           9193 	.dw	0,2874
      0010FC 15                    9194 	.uleb128	21
      0010FD 05                    9195 	.db	5
      0010FE 03                    9196 	.db	3
      0010FF 00 00 00 CD           9197 	.dw	0,(_TH2)
      001103 54 48 32              9198 	.ascii "TH2"
      001106 00                    9199 	.db	0
      001107 01                    9200 	.db	1
      001108 00 00 0B 3A           9201 	.dw	0,2874
      00110C 15                    9202 	.uleb128	21
      00110D 05                    9203 	.db	5
      00110E 03                    9204 	.db	3
      00110F 00 00 00 CD           9205 	.dw	0,(_PWM5L)
      001113 50 57 4D 35 4C        9206 	.ascii "PWM5L"
      001118 00                    9207 	.db	0
      001119 01                    9208 	.db	1
      00111A 00 00 0B 3A           9209 	.dw	0,2874
      00111E 15                    9210 	.uleb128	21
      00111F 05                    9211 	.db	5
      001120 03                    9212 	.db	3
      001121 00 00 00 CE           9213 	.dw	0,(_ADCMPL)
      001125 41 44 43 4D 50 4C     9214 	.ascii "ADCMPL"
      00112B 00                    9215 	.db	0
      00112C 01                    9216 	.db	1
      00112D 00 00 0B 3A           9217 	.dw	0,2874
      001131 15                    9218 	.uleb128	21
      001132 05                    9219 	.db	5
      001133 03                    9220 	.db	3
      001134 00 00 00 CF           9221 	.dw	0,(_ADCMPH)
      001138 41 44 43 4D 50 48     9222 	.ascii "ADCMPH"
      00113E 00                    9223 	.db	0
      00113F 01                    9224 	.db	1
      001140 00 00 0B 3A           9225 	.dw	0,2874
      001144 15                    9226 	.uleb128	21
      001145 05                    9227 	.db	5
      001146 03                    9228 	.db	3
      001147 00 00 00 D0           9229 	.dw	0,(_PSW)
      00114B 50 53 57              9230 	.ascii "PSW"
      00114E 00                    9231 	.db	0
      00114F 01                    9232 	.db	1
      001150 00 00 0B 3A           9233 	.dw	0,2874
      001154 15                    9234 	.uleb128	21
      001155 05                    9235 	.db	5
      001156 03                    9236 	.db	3
      001157 00 00 00 D1           9237 	.dw	0,(_PWMPH)
      00115B 50 57 4D 50 48        9238 	.ascii "PWMPH"
      001160 00                    9239 	.db	0
      001161 01                    9240 	.db	1
      001162 00 00 0B 3A           9241 	.dw	0,2874
      001166 15                    9242 	.uleb128	21
      001167 05                    9243 	.db	5
      001168 03                    9244 	.db	3
      001169 00 00 00 D2           9245 	.dw	0,(_PWM0H)
      00116D 50 57 4D 30 48        9246 	.ascii "PWM0H"
      001172 00                    9247 	.db	0
      001173 01                    9248 	.db	1
      001174 00 00 0B 3A           9249 	.dw	0,2874
      001178 15                    9250 	.uleb128	21
      001179 05                    9251 	.db	5
      00117A 03                    9252 	.db	3
      00117B 00 00 00 D3           9253 	.dw	0,(_PWM1H)
      00117F 50 57 4D 31 48        9254 	.ascii "PWM1H"
      001184 00                    9255 	.db	0
      001185 01                    9256 	.db	1
      001186 00 00 0B 3A           9257 	.dw	0,2874
      00118A 15                    9258 	.uleb128	21
      00118B 05                    9259 	.db	5
      00118C 03                    9260 	.db	3
      00118D 00 00 00 D4           9261 	.dw	0,(_PWM2H)
      001191 50 57 4D 32 48        9262 	.ascii "PWM2H"
      001196 00                    9263 	.db	0
      001197 01                    9264 	.db	1
      001198 00 00 0B 3A           9265 	.dw	0,2874
      00119C 15                    9266 	.uleb128	21
      00119D 05                    9267 	.db	5
      00119E 03                    9268 	.db	3
      00119F 00 00 00 D5           9269 	.dw	0,(_PWM3H)
      0011A3 50 57 4D 33 48        9270 	.ascii "PWM3H"
      0011A8 00                    9271 	.db	0
      0011A9 01                    9272 	.db	1
      0011AA 00 00 0B 3A           9273 	.dw	0,2874
      0011AE 15                    9274 	.uleb128	21
      0011AF 05                    9275 	.db	5
      0011B0 03                    9276 	.db	3
      0011B1 00 00 00 D6           9277 	.dw	0,(_PNP)
      0011B5 50 4E 50              9278 	.ascii "PNP"
      0011B8 00                    9279 	.db	0
      0011B9 01                    9280 	.db	1
      0011BA 00 00 0B 3A           9281 	.dw	0,2874
      0011BE 15                    9282 	.uleb128	21
      0011BF 05                    9283 	.db	5
      0011C0 03                    9284 	.db	3
      0011C1 00 00 00 D7           9285 	.dw	0,(_FBD)
      0011C5 46 42 44              9286 	.ascii "FBD"
      0011C8 00                    9287 	.db	0
      0011C9 01                    9288 	.db	1
      0011CA 00 00 0B 3A           9289 	.dw	0,2874
      0011CE 15                    9290 	.uleb128	21
      0011CF 05                    9291 	.db	5
      0011D0 03                    9292 	.db	3
      0011D1 00 00 00 D8           9293 	.dw	0,(_PWMCON0)
      0011D5 50 57 4D 43 4F 4E 30  9294 	.ascii "PWMCON0"
      0011DC 00                    9295 	.db	0
      0011DD 01                    9296 	.db	1
      0011DE 00 00 0B 3A           9297 	.dw	0,2874
      0011E2 15                    9298 	.uleb128	21
      0011E3 05                    9299 	.db	5
      0011E4 03                    9300 	.db	3
      0011E5 00 00 00 D9           9301 	.dw	0,(_PWMPL)
      0011E9 50 57 4D 50 4C        9302 	.ascii "PWMPL"
      0011EE 00                    9303 	.db	0
      0011EF 01                    9304 	.db	1
      0011F0 00 00 0B 3A           9305 	.dw	0,2874
      0011F4 15                    9306 	.uleb128	21
      0011F5 05                    9307 	.db	5
      0011F6 03                    9308 	.db	3
      0011F7 00 00 00 DA           9309 	.dw	0,(_PWM0L)
      0011FB 50 57 4D 30 4C        9310 	.ascii "PWM0L"
      001200 00                    9311 	.db	0
      001201 01                    9312 	.db	1
      001202 00 00 0B 3A           9313 	.dw	0,2874
      001206 15                    9314 	.uleb128	21
      001207 05                    9315 	.db	5
      001208 03                    9316 	.db	3
      001209 00 00 00 DB           9317 	.dw	0,(_PWM1L)
      00120D 50 57 4D 31 4C        9318 	.ascii "PWM1L"
      001212 00                    9319 	.db	0
      001213 01                    9320 	.db	1
      001214 00 00 0B 3A           9321 	.dw	0,2874
      001218 15                    9322 	.uleb128	21
      001219 05                    9323 	.db	5
      00121A 03                    9324 	.db	3
      00121B 00 00 00 DC           9325 	.dw	0,(_PWM2L)
      00121F 50 57 4D 32 4C        9326 	.ascii "PWM2L"
      001224 00                    9327 	.db	0
      001225 01                    9328 	.db	1
      001226 00 00 0B 3A           9329 	.dw	0,2874
      00122A 15                    9330 	.uleb128	21
      00122B 05                    9331 	.db	5
      00122C 03                    9332 	.db	3
      00122D 00 00 00 DD           9333 	.dw	0,(_PWM3L)
      001231 50 57 4D 33 4C        9334 	.ascii "PWM3L"
      001236 00                    9335 	.db	0
      001237 01                    9336 	.db	1
      001238 00 00 0B 3A           9337 	.dw	0,2874
      00123C 15                    9338 	.uleb128	21
      00123D 05                    9339 	.db	5
      00123E 03                    9340 	.db	3
      00123F 00 00 00 DE           9341 	.dw	0,(_PIOCON0)
      001243 50 49 4F 43 4F 4E 30  9342 	.ascii "PIOCON0"
      00124A 00                    9343 	.db	0
      00124B 01                    9344 	.db	1
      00124C 00 00 0B 3A           9345 	.dw	0,2874
      001250 15                    9346 	.uleb128	21
      001251 05                    9347 	.db	5
      001252 03                    9348 	.db	3
      001253 00 00 00 DF           9349 	.dw	0,(_PWMCON1)
      001257 50 57 4D 43 4F 4E 31  9350 	.ascii "PWMCON1"
      00125E 00                    9351 	.db	0
      00125F 01                    9352 	.db	1
      001260 00 00 0B 3A           9353 	.dw	0,2874
      001264 15                    9354 	.uleb128	21
      001265 05                    9355 	.db	5
      001266 03                    9356 	.db	3
      001267 00 00 00 E0           9357 	.dw	0,(_ACC)
      00126B 41 43 43              9358 	.ascii "ACC"
      00126E 00                    9359 	.db	0
      00126F 01                    9360 	.db	1
      001270 00 00 0B 3A           9361 	.dw	0,2874
      001274 15                    9362 	.uleb128	21
      001275 05                    9363 	.db	5
      001276 03                    9364 	.db	3
      001277 00 00 00 E1           9365 	.dw	0,(_ADCCON1)
      00127B 41 44 43 43 4F 4E 31  9366 	.ascii "ADCCON1"
      001282 00                    9367 	.db	0
      001283 01                    9368 	.db	1
      001284 00 00 0B 3A           9369 	.dw	0,2874
      001288 15                    9370 	.uleb128	21
      001289 05                    9371 	.db	5
      00128A 03                    9372 	.db	3
      00128B 00 00 00 E2           9373 	.dw	0,(_ADCCON2)
      00128F 41 44 43 43 4F 4E 32  9374 	.ascii "ADCCON2"
      001296 00                    9375 	.db	0
      001297 01                    9376 	.db	1
      001298 00 00 0B 3A           9377 	.dw	0,2874
      00129C 15                    9378 	.uleb128	21
      00129D 05                    9379 	.db	5
      00129E 03                    9380 	.db	3
      00129F 00 00 00 E3           9381 	.dw	0,(_ADCDLY)
      0012A3 41 44 43 44 4C 59     9382 	.ascii "ADCDLY"
      0012A9 00                    9383 	.db	0
      0012AA 01                    9384 	.db	1
      0012AB 00 00 0B 3A           9385 	.dw	0,2874
      0012AF 15                    9386 	.uleb128	21
      0012B0 05                    9387 	.db	5
      0012B1 03                    9388 	.db	3
      0012B2 00 00 00 E4           9389 	.dw	0,(_C0L)
      0012B6 43 30 4C              9390 	.ascii "C0L"
      0012B9 00                    9391 	.db	0
      0012BA 01                    9392 	.db	1
      0012BB 00 00 0B 3A           9393 	.dw	0,2874
      0012BF 15                    9394 	.uleb128	21
      0012C0 05                    9395 	.db	5
      0012C1 03                    9396 	.db	3
      0012C2 00 00 00 E5           9397 	.dw	0,(_C0H)
      0012C6 43 30 48              9398 	.ascii "C0H"
      0012C9 00                    9399 	.db	0
      0012CA 01                    9400 	.db	1
      0012CB 00 00 0B 3A           9401 	.dw	0,2874
      0012CF 15                    9402 	.uleb128	21
      0012D0 05                    9403 	.db	5
      0012D1 03                    9404 	.db	3
      0012D2 00 00 00 E6           9405 	.dw	0,(_C1L)
      0012D6 43 31 4C              9406 	.ascii "C1L"
      0012D9 00                    9407 	.db	0
      0012DA 01                    9408 	.db	1
      0012DB 00 00 0B 3A           9409 	.dw	0,2874
      0012DF 15                    9410 	.uleb128	21
      0012E0 05                    9411 	.db	5
      0012E1 03                    9412 	.db	3
      0012E2 00 00 00 E7           9413 	.dw	0,(_C1H)
      0012E6 43 31 48              9414 	.ascii "C1H"
      0012E9 00                    9415 	.db	0
      0012EA 01                    9416 	.db	1
      0012EB 00 00 0B 3A           9417 	.dw	0,2874
      0012EF 15                    9418 	.uleb128	21
      0012F0 05                    9419 	.db	5
      0012F1 03                    9420 	.db	3
      0012F2 00 00 00 E8           9421 	.dw	0,(_ADCCON0)
      0012F6 41 44 43 43 4F 4E 30  9422 	.ascii "ADCCON0"
      0012FD 00                    9423 	.db	0
      0012FE 01                    9424 	.db	1
      0012FF 00 00 0B 3A           9425 	.dw	0,2874
      001303 15                    9426 	.uleb128	21
      001304 05                    9427 	.db	5
      001305 03                    9428 	.db	3
      001306 00 00 00 E9           9429 	.dw	0,(_PICON)
      00130A 50 49 43 4F 4E        9430 	.ascii "PICON"
      00130F 00                    9431 	.db	0
      001310 01                    9432 	.db	1
      001311 00 00 0B 3A           9433 	.dw	0,2874
      001315 15                    9434 	.uleb128	21
      001316 05                    9435 	.db	5
      001317 03                    9436 	.db	3
      001318 00 00 00 EA           9437 	.dw	0,(_PINEN)
      00131C 50 49 4E 45 4E        9438 	.ascii "PINEN"
      001321 00                    9439 	.db	0
      001322 01                    9440 	.db	1
      001323 00 00 0B 3A           9441 	.dw	0,2874
      001327 15                    9442 	.uleb128	21
      001328 05                    9443 	.db	5
      001329 03                    9444 	.db	3
      00132A 00 00 00 EB           9445 	.dw	0,(_PIPEN)
      00132E 50 49 50 45 4E        9446 	.ascii "PIPEN"
      001333 00                    9447 	.db	0
      001334 01                    9448 	.db	1
      001335 00 00 0B 3A           9449 	.dw	0,2874
      001339 15                    9450 	.uleb128	21
      00133A 05                    9451 	.db	5
      00133B 03                    9452 	.db	3
      00133C 00 00 00 EC           9453 	.dw	0,(_PIF)
      001340 50 49 46              9454 	.ascii "PIF"
      001343 00                    9455 	.db	0
      001344 01                    9456 	.db	1
      001345 00 00 0B 3A           9457 	.dw	0,2874
      001349 15                    9458 	.uleb128	21
      00134A 05                    9459 	.db	5
      00134B 03                    9460 	.db	3
      00134C 00 00 00 ED           9461 	.dw	0,(_C2L)
      001350 43 32 4C              9462 	.ascii "C2L"
      001353 00                    9463 	.db	0
      001354 01                    9464 	.db	1
      001355 00 00 0B 3A           9465 	.dw	0,2874
      001359 15                    9466 	.uleb128	21
      00135A 05                    9467 	.db	5
      00135B 03                    9468 	.db	3
      00135C 00 00 00 EE           9469 	.dw	0,(_C2H)
      001360 43 32 48              9470 	.ascii "C2H"
      001363 00                    9471 	.db	0
      001364 01                    9472 	.db	1
      001365 00 00 0B 3A           9473 	.dw	0,2874
      001369 15                    9474 	.uleb128	21
      00136A 05                    9475 	.db	5
      00136B 03                    9476 	.db	3
      00136C 00 00 00 EF           9477 	.dw	0,(_EIP)
      001370 45 49 50              9478 	.ascii "EIP"
      001373 00                    9479 	.db	0
      001374 01                    9480 	.db	1
      001375 00 00 0B 3A           9481 	.dw	0,2874
      001379 15                    9482 	.uleb128	21
      00137A 05                    9483 	.db	5
      00137B 03                    9484 	.db	3
      00137C 00 00 00 F0           9485 	.dw	0,(_B)
      001380 42                    9486 	.ascii "B"
      001381 00                    9487 	.db	0
      001382 01                    9488 	.db	1
      001383 00 00 0B 3A           9489 	.dw	0,2874
      001387 15                    9490 	.uleb128	21
      001388 05                    9491 	.db	5
      001389 03                    9492 	.db	3
      00138A 00 00 00 F1           9493 	.dw	0,(_CAPCON3)
      00138E 43 41 50 43 4F 4E 33  9494 	.ascii "CAPCON3"
      001395 00                    9495 	.db	0
      001396 01                    9496 	.db	1
      001397 00 00 0B 3A           9497 	.dw	0,2874
      00139B 15                    9498 	.uleb128	21
      00139C 05                    9499 	.db	5
      00139D 03                    9500 	.db	3
      00139E 00 00 00 F2           9501 	.dw	0,(_CAPCON4)
      0013A2 43 41 50 43 4F 4E 34  9502 	.ascii "CAPCON4"
      0013A9 00                    9503 	.db	0
      0013AA 01                    9504 	.db	1
      0013AB 00 00 0B 3A           9505 	.dw	0,2874
      0013AF 15                    9506 	.uleb128	21
      0013B0 05                    9507 	.db	5
      0013B1 03                    9508 	.db	3
      0013B2 00 00 00 F3           9509 	.dw	0,(_SPCR)
      0013B6 53 50 43 52           9510 	.ascii "SPCR"
      0013BA 00                    9511 	.db	0
      0013BB 01                    9512 	.db	1
      0013BC 00 00 0B 3A           9513 	.dw	0,2874
      0013C0 15                    9514 	.uleb128	21
      0013C1 05                    9515 	.db	5
      0013C2 03                    9516 	.db	3
      0013C3 00 00 00 F3           9517 	.dw	0,(_SPCR2)
      0013C7 53 50 43 52 32        9518 	.ascii "SPCR2"
      0013CC 00                    9519 	.db	0
      0013CD 01                    9520 	.db	1
      0013CE 00 00 0B 3A           9521 	.dw	0,2874
      0013D2 15                    9522 	.uleb128	21
      0013D3 05                    9523 	.db	5
      0013D4 03                    9524 	.db	3
      0013D5 00 00 00 F4           9525 	.dw	0,(_SPSR)
      0013D9 53 50 53 52           9526 	.ascii "SPSR"
      0013DD 00                    9527 	.db	0
      0013DE 01                    9528 	.db	1
      0013DF 00 00 0B 3A           9529 	.dw	0,2874
      0013E3 15                    9530 	.uleb128	21
      0013E4 05                    9531 	.db	5
      0013E5 03                    9532 	.db	3
      0013E6 00 00 00 F5           9533 	.dw	0,(_SPDR)
      0013EA 53 50 44 52           9534 	.ascii "SPDR"
      0013EE 00                    9535 	.db	0
      0013EF 01                    9536 	.db	1
      0013F0 00 00 0B 3A           9537 	.dw	0,2874
      0013F4 15                    9538 	.uleb128	21
      0013F5 05                    9539 	.db	5
      0013F6 03                    9540 	.db	3
      0013F7 00 00 00 F6           9541 	.dw	0,(_AINDIDS)
      0013FB 41 49 4E 44 49 44 53  9542 	.ascii "AINDIDS"
      001402 00                    9543 	.db	0
      001403 01                    9544 	.db	1
      001404 00 00 0B 3A           9545 	.dw	0,2874
      001408 15                    9546 	.uleb128	21
      001409 05                    9547 	.db	5
      00140A 03                    9548 	.db	3
      00140B 00 00 00 F7           9549 	.dw	0,(_EIPH)
      00140F 45 49 50 48           9550 	.ascii "EIPH"
      001413 00                    9551 	.db	0
      001414 01                    9552 	.db	1
      001415 00 00 0B 3A           9553 	.dw	0,2874
      001419 15                    9554 	.uleb128	21
      00141A 05                    9555 	.db	5
      00141B 03                    9556 	.db	3
      00141C 00 00 00 F8           9557 	.dw	0,(_SCON_1)
      001420 53 43 4F 4E 5F 31     9558 	.ascii "SCON_1"
      001426 00                    9559 	.db	0
      001427 01                    9560 	.db	1
      001428 00 00 0B 3A           9561 	.dw	0,2874
      00142C 15                    9562 	.uleb128	21
      00142D 05                    9563 	.db	5
      00142E 03                    9564 	.db	3
      00142F 00 00 00 F9           9565 	.dw	0,(_PDTEN)
      001433 50 44 54 45 4E        9566 	.ascii "PDTEN"
      001438 00                    9567 	.db	0
      001439 01                    9568 	.db	1
      00143A 00 00 0B 3A           9569 	.dw	0,2874
      00143E 15                    9570 	.uleb128	21
      00143F 05                    9571 	.db	5
      001440 03                    9572 	.db	3
      001441 00 00 00 FA           9573 	.dw	0,(_PDTCNT)
      001445 50 44 54 43 4E 54     9574 	.ascii "PDTCNT"
      00144B 00                    9575 	.db	0
      00144C 01                    9576 	.db	1
      00144D 00 00 0B 3A           9577 	.dw	0,2874
      001451 15                    9578 	.uleb128	21
      001452 05                    9579 	.db	5
      001453 03                    9580 	.db	3
      001454 00 00 00 FB           9581 	.dw	0,(_PMEN)
      001458 50 4D 45 4E           9582 	.ascii "PMEN"
      00145C 00                    9583 	.db	0
      00145D 01                    9584 	.db	1
      00145E 00 00 0B 3A           9585 	.dw	0,2874
      001462 15                    9586 	.uleb128	21
      001463 05                    9587 	.db	5
      001464 03                    9588 	.db	3
      001465 00 00 00 FC           9589 	.dw	0,(_PMD)
      001469 50 4D 44              9590 	.ascii "PMD"
      00146C 00                    9591 	.db	0
      00146D 01                    9592 	.db	1
      00146E 00 00 0B 3A           9593 	.dw	0,2874
      001472 15                    9594 	.uleb128	21
      001473 05                    9595 	.db	5
      001474 03                    9596 	.db	3
      001475 00 00 00 FE           9597 	.dw	0,(_EIP1)
      001479 45 49 50 31           9598 	.ascii "EIP1"
      00147D 00                    9599 	.db	0
      00147E 01                    9600 	.db	1
      00147F 00 00 0B 3A           9601 	.dw	0,2874
      001483 15                    9602 	.uleb128	21
      001484 05                    9603 	.db	5
      001485 03                    9604 	.db	3
      001486 00 00 00 FF           9605 	.dw	0,(_EIPH1)
      00148A 45 49 50 48 31        9606 	.ascii "EIPH1"
      00148F 00                    9607 	.db	0
      001490 01                    9608 	.db	1
      001491 00 00 0B 3A           9609 	.dw	0,2874
      001495 07                    9610 	.uleb128	7
      001496 5F 73 62 69 74        9611 	.ascii "_sbit"
      00149B 00                    9612 	.db	0
      00149C 01                    9613 	.db	1
      00149D 08                    9614 	.db	8
      00149E 16                    9615 	.uleb128	22
      00149F 00 00 14 95           9616 	.dw	0,5269
      0014A3 15                    9617 	.uleb128	21
      0014A4 05                    9618 	.db	5
      0014A5 03                    9619 	.db	3
      0014A6 00 00 00 FF           9620 	.dw	0,(_SM0_1)
      0014AA 53 4D 30 5F 31        9621 	.ascii "SM0_1"
      0014AF 00                    9622 	.db	0
      0014B0 01                    9623 	.db	1
      0014B1 00 00 14 9E           9624 	.dw	0,5278
      0014B5 15                    9625 	.uleb128	21
      0014B6 05                    9626 	.db	5
      0014B7 03                    9627 	.db	3
      0014B8 00 00 00 FF           9628 	.dw	0,(_FE_1)
      0014BC 46 45 5F 31           9629 	.ascii "FE_1"
      0014C0 00                    9630 	.db	0
      0014C1 01                    9631 	.db	1
      0014C2 00 00 14 9E           9632 	.dw	0,5278
      0014C6 15                    9633 	.uleb128	21
      0014C7 05                    9634 	.db	5
      0014C8 03                    9635 	.db	3
      0014C9 00 00 00 FE           9636 	.dw	0,(_SM1_1)
      0014CD 53 4D 31 5F 31        9637 	.ascii "SM1_1"
      0014D2 00                    9638 	.db	0
      0014D3 01                    9639 	.db	1
      0014D4 00 00 14 9E           9640 	.dw	0,5278
      0014D8 15                    9641 	.uleb128	21
      0014D9 05                    9642 	.db	5
      0014DA 03                    9643 	.db	3
      0014DB 00 00 00 FD           9644 	.dw	0,(_SM2_1)
      0014DF 53 4D 32 5F 31        9645 	.ascii "SM2_1"
      0014E4 00                    9646 	.db	0
      0014E5 01                    9647 	.db	1
      0014E6 00 00 14 9E           9648 	.dw	0,5278
      0014EA 15                    9649 	.uleb128	21
      0014EB 05                    9650 	.db	5
      0014EC 03                    9651 	.db	3
      0014ED 00 00 00 FC           9652 	.dw	0,(_REN_1)
      0014F1 52 45 4E 5F 31        9653 	.ascii "REN_1"
      0014F6 00                    9654 	.db	0
      0014F7 01                    9655 	.db	1
      0014F8 00 00 14 9E           9656 	.dw	0,5278
      0014FC 15                    9657 	.uleb128	21
      0014FD 05                    9658 	.db	5
      0014FE 03                    9659 	.db	3
      0014FF 00 00 00 FB           9660 	.dw	0,(_TB8_1)
      001503 54 42 38 5F 31        9661 	.ascii "TB8_1"
      001508 00                    9662 	.db	0
      001509 01                    9663 	.db	1
      00150A 00 00 14 9E           9664 	.dw	0,5278
      00150E 15                    9665 	.uleb128	21
      00150F 05                    9666 	.db	5
      001510 03                    9667 	.db	3
      001511 00 00 00 FA           9668 	.dw	0,(_RB8_1)
      001515 52 42 38 5F 31        9669 	.ascii "RB8_1"
      00151A 00                    9670 	.db	0
      00151B 01                    9671 	.db	1
      00151C 00 00 14 9E           9672 	.dw	0,5278
      001520 15                    9673 	.uleb128	21
      001521 05                    9674 	.db	5
      001522 03                    9675 	.db	3
      001523 00 00 00 F9           9676 	.dw	0,(_TI_1)
      001527 54 49 5F 31           9677 	.ascii "TI_1"
      00152B 00                    9678 	.db	0
      00152C 01                    9679 	.db	1
      00152D 00 00 14 9E           9680 	.dw	0,5278
      001531 15                    9681 	.uleb128	21
      001532 05                    9682 	.db	5
      001533 03                    9683 	.db	3
      001534 00 00 00 F8           9684 	.dw	0,(_RI_1)
      001538 52 49 5F 31           9685 	.ascii "RI_1"
      00153C 00                    9686 	.db	0
      00153D 01                    9687 	.db	1
      00153E 00 00 14 9E           9688 	.dw	0,5278
      001542 15                    9689 	.uleb128	21
      001543 05                    9690 	.db	5
      001544 03                    9691 	.db	3
      001545 00 00 00 EF           9692 	.dw	0,(_ADCF)
      001549 41 44 43 46           9693 	.ascii "ADCF"
      00154D 00                    9694 	.db	0
      00154E 01                    9695 	.db	1
      00154F 00 00 14 9E           9696 	.dw	0,5278
      001553 15                    9697 	.uleb128	21
      001554 05                    9698 	.db	5
      001555 03                    9699 	.db	3
      001556 00 00 00 EE           9700 	.dw	0,(_ADCS)
      00155A 41 44 43 53           9701 	.ascii "ADCS"
      00155E 00                    9702 	.db	0
      00155F 01                    9703 	.db	1
      001560 00 00 14 9E           9704 	.dw	0,5278
      001564 15                    9705 	.uleb128	21
      001565 05                    9706 	.db	5
      001566 03                    9707 	.db	3
      001567 00 00 00 ED           9708 	.dw	0,(_ETGSEL1)
      00156B 45 54 47 53 45 4C 31  9709 	.ascii "ETGSEL1"
      001572 00                    9710 	.db	0
      001573 01                    9711 	.db	1
      001574 00 00 14 9E           9712 	.dw	0,5278
      001578 15                    9713 	.uleb128	21
      001579 05                    9714 	.db	5
      00157A 03                    9715 	.db	3
      00157B 00 00 00 EC           9716 	.dw	0,(_ETGSEL0)
      00157F 45 54 47 53 45 4C 30  9717 	.ascii "ETGSEL0"
      001586 00                    9718 	.db	0
      001587 01                    9719 	.db	1
      001588 00 00 14 9E           9720 	.dw	0,5278
      00158C 15                    9721 	.uleb128	21
      00158D 05                    9722 	.db	5
      00158E 03                    9723 	.db	3
      00158F 00 00 00 EB           9724 	.dw	0,(_ADCHS3)
      001593 41 44 43 48 53 33     9725 	.ascii "ADCHS3"
      001599 00                    9726 	.db	0
      00159A 01                    9727 	.db	1
      00159B 00 00 14 9E           9728 	.dw	0,5278
      00159F 15                    9729 	.uleb128	21
      0015A0 05                    9730 	.db	5
      0015A1 03                    9731 	.db	3
      0015A2 00 00 00 EA           9732 	.dw	0,(_ADCHS2)
      0015A6 41 44 43 48 53 32     9733 	.ascii "ADCHS2"
      0015AC 00                    9734 	.db	0
      0015AD 01                    9735 	.db	1
      0015AE 00 00 14 9E           9736 	.dw	0,5278
      0015B2 15                    9737 	.uleb128	21
      0015B3 05                    9738 	.db	5
      0015B4 03                    9739 	.db	3
      0015B5 00 00 00 E9           9740 	.dw	0,(_ADCHS1)
      0015B9 41 44 43 48 53 31     9741 	.ascii "ADCHS1"
      0015BF 00                    9742 	.db	0
      0015C0 01                    9743 	.db	1
      0015C1 00 00 14 9E           9744 	.dw	0,5278
      0015C5 15                    9745 	.uleb128	21
      0015C6 05                    9746 	.db	5
      0015C7 03                    9747 	.db	3
      0015C8 00 00 00 E8           9748 	.dw	0,(_ADCHS0)
      0015CC 41 44 43 48 53 30     9749 	.ascii "ADCHS0"
      0015D2 00                    9750 	.db	0
      0015D3 01                    9751 	.db	1
      0015D4 00 00 14 9E           9752 	.dw	0,5278
      0015D8 15                    9753 	.uleb128	21
      0015D9 05                    9754 	.db	5
      0015DA 03                    9755 	.db	3
      0015DB 00 00 00 DF           9756 	.dw	0,(_PWMRUN)
      0015DF 50 57 4D 52 55 4E     9757 	.ascii "PWMRUN"
      0015E5 00                    9758 	.db	0
      0015E6 01                    9759 	.db	1
      0015E7 00 00 14 9E           9760 	.dw	0,5278
      0015EB 15                    9761 	.uleb128	21
      0015EC 05                    9762 	.db	5
      0015ED 03                    9763 	.db	3
      0015EE 00 00 00 DE           9764 	.dw	0,(_LOAD)
      0015F2 4C 4F 41 44           9765 	.ascii "LOAD"
      0015F6 00                    9766 	.db	0
      0015F7 01                    9767 	.db	1
      0015F8 00 00 14 9E           9768 	.dw	0,5278
      0015FC 15                    9769 	.uleb128	21
      0015FD 05                    9770 	.db	5
      0015FE 03                    9771 	.db	3
      0015FF 00 00 00 DD           9772 	.dw	0,(_PWMF)
      001603 50 57 4D 46           9773 	.ascii "PWMF"
      001607 00                    9774 	.db	0
      001608 01                    9775 	.db	1
      001609 00 00 14 9E           9776 	.dw	0,5278
      00160D 15                    9777 	.uleb128	21
      00160E 05                    9778 	.db	5
      00160F 03                    9779 	.db	3
      001610 00 00 00 DC           9780 	.dw	0,(_CLRPWM)
      001614 43 4C 52 50 57 4D     9781 	.ascii "CLRPWM"
      00161A 00                    9782 	.db	0
      00161B 01                    9783 	.db	1
      00161C 00 00 14 9E           9784 	.dw	0,5278
      001620 15                    9785 	.uleb128	21
      001621 05                    9786 	.db	5
      001622 03                    9787 	.db	3
      001623 00 00 00 D7           9788 	.dw	0,(_CY)
      001627 43 59                 9789 	.ascii "CY"
      001629 00                    9790 	.db	0
      00162A 01                    9791 	.db	1
      00162B 00 00 14 9E           9792 	.dw	0,5278
      00162F 15                    9793 	.uleb128	21
      001630 05                    9794 	.db	5
      001631 03                    9795 	.db	3
      001632 00 00 00 D6           9796 	.dw	0,(_AC)
      001636 41 43                 9797 	.ascii "AC"
      001638 00                    9798 	.db	0
      001639 01                    9799 	.db	1
      00163A 00 00 14 9E           9800 	.dw	0,5278
      00163E 15                    9801 	.uleb128	21
      00163F 05                    9802 	.db	5
      001640 03                    9803 	.db	3
      001641 00 00 00 D5           9804 	.dw	0,(_F0)
      001645 46 30                 9805 	.ascii "F0"
      001647 00                    9806 	.db	0
      001648 01                    9807 	.db	1
      001649 00 00 14 9E           9808 	.dw	0,5278
      00164D 15                    9809 	.uleb128	21
      00164E 05                    9810 	.db	5
      00164F 03                    9811 	.db	3
      001650 00 00 00 D4           9812 	.dw	0,(_RS1)
      001654 52 53 31              9813 	.ascii "RS1"
      001657 00                    9814 	.db	0
      001658 01                    9815 	.db	1
      001659 00 00 14 9E           9816 	.dw	0,5278
      00165D 15                    9817 	.uleb128	21
      00165E 05                    9818 	.db	5
      00165F 03                    9819 	.db	3
      001660 00 00 00 D3           9820 	.dw	0,(_RS0)
      001664 52 53 30              9821 	.ascii "RS0"
      001667 00                    9822 	.db	0
      001668 01                    9823 	.db	1
      001669 00 00 14 9E           9824 	.dw	0,5278
      00166D 15                    9825 	.uleb128	21
      00166E 05                    9826 	.db	5
      00166F 03                    9827 	.db	3
      001670 00 00 00 D2           9828 	.dw	0,(_OV)
      001674 4F 56                 9829 	.ascii "OV"
      001676 00                    9830 	.db	0
      001677 01                    9831 	.db	1
      001678 00 00 14 9E           9832 	.dw	0,5278
      00167C 15                    9833 	.uleb128	21
      00167D 05                    9834 	.db	5
      00167E 03                    9835 	.db	3
      00167F 00 00 00 D0           9836 	.dw	0,(_P)
      001683 50                    9837 	.ascii "P"
      001684 00                    9838 	.db	0
      001685 01                    9839 	.db	1
      001686 00 00 14 9E           9840 	.dw	0,5278
      00168A 15                    9841 	.uleb128	21
      00168B 05                    9842 	.db	5
      00168C 03                    9843 	.db	3
      00168D 00 00 00 CF           9844 	.dw	0,(_TF2)
      001691 54 46 32              9845 	.ascii "TF2"
      001694 00                    9846 	.db	0
      001695 01                    9847 	.db	1
      001696 00 00 14 9E           9848 	.dw	0,5278
      00169A 15                    9849 	.uleb128	21
      00169B 05                    9850 	.db	5
      00169C 03                    9851 	.db	3
      00169D 00 00 00 CA           9852 	.dw	0,(_TR2)
      0016A1 54 52 32              9853 	.ascii "TR2"
      0016A4 00                    9854 	.db	0
      0016A5 01                    9855 	.db	1
      0016A6 00 00 14 9E           9856 	.dw	0,5278
      0016AA 15                    9857 	.uleb128	21
      0016AB 05                    9858 	.db	5
      0016AC 03                    9859 	.db	3
      0016AD 00 00 00 C8           9860 	.dw	0,(_CM_RL2)
      0016B1 43 4D 5F 52 4C 32     9861 	.ascii "CM_RL2"
      0016B7 00                    9862 	.db	0
      0016B8 01                    9863 	.db	1
      0016B9 00 00 14 9E           9864 	.dw	0,5278
      0016BD 15                    9865 	.uleb128	21
      0016BE 05                    9866 	.db	5
      0016BF 03                    9867 	.db	3
      0016C0 00 00 00 C6           9868 	.dw	0,(_I2CEN)
      0016C4 49 32 43 45 4E        9869 	.ascii "I2CEN"
      0016C9 00                    9870 	.db	0
      0016CA 01                    9871 	.db	1
      0016CB 00 00 14 9E           9872 	.dw	0,5278
      0016CF 15                    9873 	.uleb128	21
      0016D0 05                    9874 	.db	5
      0016D1 03                    9875 	.db	3
      0016D2 00 00 00 C5           9876 	.dw	0,(_STA)
      0016D6 53 54 41              9877 	.ascii "STA"
      0016D9 00                    9878 	.db	0
      0016DA 01                    9879 	.db	1
      0016DB 00 00 14 9E           9880 	.dw	0,5278
      0016DF 15                    9881 	.uleb128	21
      0016E0 05                    9882 	.db	5
      0016E1 03                    9883 	.db	3
      0016E2 00 00 00 C4           9884 	.dw	0,(_STO)
      0016E6 53 54 4F              9885 	.ascii "STO"
      0016E9 00                    9886 	.db	0
      0016EA 01                    9887 	.db	1
      0016EB 00 00 14 9E           9888 	.dw	0,5278
      0016EF 15                    9889 	.uleb128	21
      0016F0 05                    9890 	.db	5
      0016F1 03                    9891 	.db	3
      0016F2 00 00 00 C3           9892 	.dw	0,(_SI)
      0016F6 53 49                 9893 	.ascii "SI"
      0016F8 00                    9894 	.db	0
      0016F9 01                    9895 	.db	1
      0016FA 00 00 14 9E           9896 	.dw	0,5278
      0016FE 15                    9897 	.uleb128	21
      0016FF 05                    9898 	.db	5
      001700 03                    9899 	.db	3
      001701 00 00 00 C2           9900 	.dw	0,(_AA)
      001705 41 41                 9901 	.ascii "AA"
      001707 00                    9902 	.db	0
      001708 01                    9903 	.db	1
      001709 00 00 14 9E           9904 	.dw	0,5278
      00170D 15                    9905 	.uleb128	21
      00170E 05                    9906 	.db	5
      00170F 03                    9907 	.db	3
      001710 00 00 00 C0           9908 	.dw	0,(_I2CPX)
      001714 49 32 43 50 58        9909 	.ascii "I2CPX"
      001719 00                    9910 	.db	0
      00171A 01                    9911 	.db	1
      00171B 00 00 14 9E           9912 	.dw	0,5278
      00171F 15                    9913 	.uleb128	21
      001720 05                    9914 	.db	5
      001721 03                    9915 	.db	3
      001722 00 00 00 BE           9916 	.dw	0,(_PADC)
      001726 50 41 44 43           9917 	.ascii "PADC"
      00172A 00                    9918 	.db	0
      00172B 01                    9919 	.db	1
      00172C 00 00 14 9E           9920 	.dw	0,5278
      001730 15                    9921 	.uleb128	21
      001731 05                    9922 	.db	5
      001732 03                    9923 	.db	3
      001733 00 00 00 BD           9924 	.dw	0,(_PBOD)
      001737 50 42 4F 44           9925 	.ascii "PBOD"
      00173B 00                    9926 	.db	0
      00173C 01                    9927 	.db	1
      00173D 00 00 14 9E           9928 	.dw	0,5278
      001741 15                    9929 	.uleb128	21
      001742 05                    9930 	.db	5
      001743 03                    9931 	.db	3
      001744 00 00 00 BC           9932 	.dw	0,(_PS)
      001748 50 53                 9933 	.ascii "PS"
      00174A 00                    9934 	.db	0
      00174B 01                    9935 	.db	1
      00174C 00 00 14 9E           9936 	.dw	0,5278
      001750 15                    9937 	.uleb128	21
      001751 05                    9938 	.db	5
      001752 03                    9939 	.db	3
      001753 00 00 00 BB           9940 	.dw	0,(_PT1)
      001757 50 54 31              9941 	.ascii "PT1"
      00175A 00                    9942 	.db	0
      00175B 01                    9943 	.db	1
      00175C 00 00 14 9E           9944 	.dw	0,5278
      001760 15                    9945 	.uleb128	21
      001761 05                    9946 	.db	5
      001762 03                    9947 	.db	3
      001763 00 00 00 BA           9948 	.dw	0,(_PX1)
      001767 50 58 31              9949 	.ascii "PX1"
      00176A 00                    9950 	.db	0
      00176B 01                    9951 	.db	1
      00176C 00 00 14 9E           9952 	.dw	0,5278
      001770 15                    9953 	.uleb128	21
      001771 05                    9954 	.db	5
      001772 03                    9955 	.db	3
      001773 00 00 00 B9           9956 	.dw	0,(_PT0)
      001777 50 54 30              9957 	.ascii "PT0"
      00177A 00                    9958 	.db	0
      00177B 01                    9959 	.db	1
      00177C 00 00 14 9E           9960 	.dw	0,5278
      001780 15                    9961 	.uleb128	21
      001781 05                    9962 	.db	5
      001782 03                    9963 	.db	3
      001783 00 00 00 B8           9964 	.dw	0,(_PX0)
      001787 50 58 30              9965 	.ascii "PX0"
      00178A 00                    9966 	.db	0
      00178B 01                    9967 	.db	1
      00178C 00 00 14 9E           9968 	.dw	0,5278
      001790 15                    9969 	.uleb128	21
      001791 05                    9970 	.db	5
      001792 03                    9971 	.db	3
      001793 00 00 00 B0           9972 	.dw	0,(_P30)
      001797 50 33 30              9973 	.ascii "P30"
      00179A 00                    9974 	.db	0
      00179B 01                    9975 	.db	1
      00179C 00 00 14 9E           9976 	.dw	0,5278
      0017A0 15                    9977 	.uleb128	21
      0017A1 05                    9978 	.db	5
      0017A2 03                    9979 	.db	3
      0017A3 00 00 00 AF           9980 	.dw	0,(_EA)
      0017A7 45 41                 9981 	.ascii "EA"
      0017A9 00                    9982 	.db	0
      0017AA 01                    9983 	.db	1
      0017AB 00 00 14 9E           9984 	.dw	0,5278
      0017AF 15                    9985 	.uleb128	21
      0017B0 05                    9986 	.db	5
      0017B1 03                    9987 	.db	3
      0017B2 00 00 00 AE           9988 	.dw	0,(_EADC)
      0017B6 45 41 44 43           9989 	.ascii "EADC"
      0017BA 00                    9990 	.db	0
      0017BB 01                    9991 	.db	1
      0017BC 00 00 14 9E           9992 	.dw	0,5278
      0017C0 15                    9993 	.uleb128	21
      0017C1 05                    9994 	.db	5
      0017C2 03                    9995 	.db	3
      0017C3 00 00 00 AD           9996 	.dw	0,(_EBOD)
      0017C7 45 42 4F 44           9997 	.ascii "EBOD"
      0017CB 00                    9998 	.db	0
      0017CC 01                    9999 	.db	1
      0017CD 00 00 14 9E          10000 	.dw	0,5278
      0017D1 15                   10001 	.uleb128	21
      0017D2 05                   10002 	.db	5
      0017D3 03                   10003 	.db	3
      0017D4 00 00 00 AC          10004 	.dw	0,(_ES)
      0017D8 45 53                10005 	.ascii "ES"
      0017DA 00                   10006 	.db	0
      0017DB 01                   10007 	.db	1
      0017DC 00 00 14 9E          10008 	.dw	0,5278
      0017E0 15                   10009 	.uleb128	21
      0017E1 05                   10010 	.db	5
      0017E2 03                   10011 	.db	3
      0017E3 00 00 00 AB          10012 	.dw	0,(_ET1)
      0017E7 45 54 31             10013 	.ascii "ET1"
      0017EA 00                   10014 	.db	0
      0017EB 01                   10015 	.db	1
      0017EC 00 00 14 9E          10016 	.dw	0,5278
      0017F0 15                   10017 	.uleb128	21
      0017F1 05                   10018 	.db	5
      0017F2 03                   10019 	.db	3
      0017F3 00 00 00 AA          10020 	.dw	0,(_EX1)
      0017F7 45 58 31             10021 	.ascii "EX1"
      0017FA 00                   10022 	.db	0
      0017FB 01                   10023 	.db	1
      0017FC 00 00 14 9E          10024 	.dw	0,5278
      001800 15                   10025 	.uleb128	21
      001801 05                   10026 	.db	5
      001802 03                   10027 	.db	3
      001803 00 00 00 A9          10028 	.dw	0,(_ET0)
      001807 45 54 30             10029 	.ascii "ET0"
      00180A 00                   10030 	.db	0
      00180B 01                   10031 	.db	1
      00180C 00 00 14 9E          10032 	.dw	0,5278
      001810 15                   10033 	.uleb128	21
      001811 05                   10034 	.db	5
      001812 03                   10035 	.db	3
      001813 00 00 00 A8          10036 	.dw	0,(_EX0)
      001817 45 58 30             10037 	.ascii "EX0"
      00181A 00                   10038 	.db	0
      00181B 01                   10039 	.db	1
      00181C 00 00 14 9E          10040 	.dw	0,5278
      001820 15                   10041 	.uleb128	21
      001821 05                   10042 	.db	5
      001822 03                   10043 	.db	3
      001823 00 00 00 A0          10044 	.dw	0,(_P20)
      001827 50 32 30             10045 	.ascii "P20"
      00182A 00                   10046 	.db	0
      00182B 01                   10047 	.db	1
      00182C 00 00 14 9E          10048 	.dw	0,5278
      001830 15                   10049 	.uleb128	21
      001831 05                   10050 	.db	5
      001832 03                   10051 	.db	3
      001833 00 00 00 9F          10052 	.dw	0,(_SM0)
      001837 53 4D 30             10053 	.ascii "SM0"
      00183A 00                   10054 	.db	0
      00183B 01                   10055 	.db	1
      00183C 00 00 14 9E          10056 	.dw	0,5278
      001840 15                   10057 	.uleb128	21
      001841 05                   10058 	.db	5
      001842 03                   10059 	.db	3
      001843 00 00 00 9F          10060 	.dw	0,(_FE)
      001847 46 45                10061 	.ascii "FE"
      001849 00                   10062 	.db	0
      00184A 01                   10063 	.db	1
      00184B 00 00 14 9E          10064 	.dw	0,5278
      00184F 15                   10065 	.uleb128	21
      001850 05                   10066 	.db	5
      001851 03                   10067 	.db	3
      001852 00 00 00 9E          10068 	.dw	0,(_SM1)
      001856 53 4D 31             10069 	.ascii "SM1"
      001859 00                   10070 	.db	0
      00185A 01                   10071 	.db	1
      00185B 00 00 14 9E          10072 	.dw	0,5278
      00185F 15                   10073 	.uleb128	21
      001860 05                   10074 	.db	5
      001861 03                   10075 	.db	3
      001862 00 00 00 9D          10076 	.dw	0,(_SM2)
      001866 53 4D 32             10077 	.ascii "SM2"
      001869 00                   10078 	.db	0
      00186A 01                   10079 	.db	1
      00186B 00 00 14 9E          10080 	.dw	0,5278
      00186F 15                   10081 	.uleb128	21
      001870 05                   10082 	.db	5
      001871 03                   10083 	.db	3
      001872 00 00 00 9C          10084 	.dw	0,(_REN)
      001876 52 45 4E             10085 	.ascii "REN"
      001879 00                   10086 	.db	0
      00187A 01                   10087 	.db	1
      00187B 00 00 14 9E          10088 	.dw	0,5278
      00187F 15                   10089 	.uleb128	21
      001880 05                   10090 	.db	5
      001881 03                   10091 	.db	3
      001882 00 00 00 9B          10092 	.dw	0,(_TB8)
      001886 54 42 38             10093 	.ascii "TB8"
      001889 00                   10094 	.db	0
      00188A 01                   10095 	.db	1
      00188B 00 00 14 9E          10096 	.dw	0,5278
      00188F 15                   10097 	.uleb128	21
      001890 05                   10098 	.db	5
      001891 03                   10099 	.db	3
      001892 00 00 00 9A          10100 	.dw	0,(_RB8)
      001896 52 42 38             10101 	.ascii "RB8"
      001899 00                   10102 	.db	0
      00189A 01                   10103 	.db	1
      00189B 00 00 14 9E          10104 	.dw	0,5278
      00189F 15                   10105 	.uleb128	21
      0018A0 05                   10106 	.db	5
      0018A1 03                   10107 	.db	3
      0018A2 00 00 00 99          10108 	.dw	0,(_TI)
      0018A6 54 49                10109 	.ascii "TI"
      0018A8 00                   10110 	.db	0
      0018A9 01                   10111 	.db	1
      0018AA 00 00 14 9E          10112 	.dw	0,5278
      0018AE 15                   10113 	.uleb128	21
      0018AF 05                   10114 	.db	5
      0018B0 03                   10115 	.db	3
      0018B1 00 00 00 98          10116 	.dw	0,(_RI)
      0018B5 52 49                10117 	.ascii "RI"
      0018B7 00                   10118 	.db	0
      0018B8 01                   10119 	.db	1
      0018B9 00 00 14 9E          10120 	.dw	0,5278
      0018BD 15                   10121 	.uleb128	21
      0018BE 05                   10122 	.db	5
      0018BF 03                   10123 	.db	3
      0018C0 00 00 00 97          10124 	.dw	0,(_P17)
      0018C4 50 31 37             10125 	.ascii "P17"
      0018C7 00                   10126 	.db	0
      0018C8 01                   10127 	.db	1
      0018C9 00 00 14 9E          10128 	.dw	0,5278
      0018CD 15                   10129 	.uleb128	21
      0018CE 05                   10130 	.db	5
      0018CF 03                   10131 	.db	3
      0018D0 00 00 00 96          10132 	.dw	0,(_P16)
      0018D4 50 31 36             10133 	.ascii "P16"
      0018D7 00                   10134 	.db	0
      0018D8 01                   10135 	.db	1
      0018D9 00 00 14 9E          10136 	.dw	0,5278
      0018DD 15                   10137 	.uleb128	21
      0018DE 05                   10138 	.db	5
      0018DF 03                   10139 	.db	3
      0018E0 00 00 00 96          10140 	.dw	0,(_TXD_1)
      0018E4 54 58 44 5F 31       10141 	.ascii "TXD_1"
      0018E9 00                   10142 	.db	0
      0018EA 01                   10143 	.db	1
      0018EB 00 00 14 9E          10144 	.dw	0,5278
      0018EF 15                   10145 	.uleb128	21
      0018F0 05                   10146 	.db	5
      0018F1 03                   10147 	.db	3
      0018F2 00 00 00 95          10148 	.dw	0,(_P15)
      0018F6 50 31 35             10149 	.ascii "P15"
      0018F9 00                   10150 	.db	0
      0018FA 01                   10151 	.db	1
      0018FB 00 00 14 9E          10152 	.dw	0,5278
      0018FF 15                   10153 	.uleb128	21
      001900 05                   10154 	.db	5
      001901 03                   10155 	.db	3
      001902 00 00 00 94          10156 	.dw	0,(_P14)
      001906 50 31 34             10157 	.ascii "P14"
      001909 00                   10158 	.db	0
      00190A 01                   10159 	.db	1
      00190B 00 00 14 9E          10160 	.dw	0,5278
      00190F 15                   10161 	.uleb128	21
      001910 05                   10162 	.db	5
      001911 03                   10163 	.db	3
      001912 00 00 00 94          10164 	.dw	0,(_SDA)
      001916 53 44 41             10165 	.ascii "SDA"
      001919 00                   10166 	.db	0
      00191A 01                   10167 	.db	1
      00191B 00 00 14 9E          10168 	.dw	0,5278
      00191F 15                   10169 	.uleb128	21
      001920 05                   10170 	.db	5
      001921 03                   10171 	.db	3
      001922 00 00 00 93          10172 	.dw	0,(_P13)
      001926 50 31 33             10173 	.ascii "P13"
      001929 00                   10174 	.db	0
      00192A 01                   10175 	.db	1
      00192B 00 00 14 9E          10176 	.dw	0,5278
      00192F 15                   10177 	.uleb128	21
      001930 05                   10178 	.db	5
      001931 03                   10179 	.db	3
      001932 00 00 00 93          10180 	.dw	0,(_SCL)
      001936 53 43 4C             10181 	.ascii "SCL"
      001939 00                   10182 	.db	0
      00193A 01                   10183 	.db	1
      00193B 00 00 14 9E          10184 	.dw	0,5278
      00193F 15                   10185 	.uleb128	21
      001940 05                   10186 	.db	5
      001941 03                   10187 	.db	3
      001942 00 00 00 92          10188 	.dw	0,(_P12)
      001946 50 31 32             10189 	.ascii "P12"
      001949 00                   10190 	.db	0
      00194A 01                   10191 	.db	1
      00194B 00 00 14 9E          10192 	.dw	0,5278
      00194F 15                   10193 	.uleb128	21
      001950 05                   10194 	.db	5
      001951 03                   10195 	.db	3
      001952 00 00 00 91          10196 	.dw	0,(_P11)
      001956 50 31 31             10197 	.ascii "P11"
      001959 00                   10198 	.db	0
      00195A 01                   10199 	.db	1
      00195B 00 00 14 9E          10200 	.dw	0,5278
      00195F 15                   10201 	.uleb128	21
      001960 05                   10202 	.db	5
      001961 03                   10203 	.db	3
      001962 00 00 00 90          10204 	.dw	0,(_P10)
      001966 50 31 30             10205 	.ascii "P10"
      001969 00                   10206 	.db	0
      00196A 01                   10207 	.db	1
      00196B 00 00 14 9E          10208 	.dw	0,5278
      00196F 15                   10209 	.uleb128	21
      001970 05                   10210 	.db	5
      001971 03                   10211 	.db	3
      001972 00 00 00 8F          10212 	.dw	0,(_TF1)
      001976 54 46 31             10213 	.ascii "TF1"
      001979 00                   10214 	.db	0
      00197A 01                   10215 	.db	1
      00197B 00 00 14 9E          10216 	.dw	0,5278
      00197F 15                   10217 	.uleb128	21
      001980 05                   10218 	.db	5
      001981 03                   10219 	.db	3
      001982 00 00 00 8E          10220 	.dw	0,(_TR1)
      001986 54 52 31             10221 	.ascii "TR1"
      001989 00                   10222 	.db	0
      00198A 01                   10223 	.db	1
      00198B 00 00 14 9E          10224 	.dw	0,5278
      00198F 15                   10225 	.uleb128	21
      001990 05                   10226 	.db	5
      001991 03                   10227 	.db	3
      001992 00 00 00 8D          10228 	.dw	0,(_TF0)
      001996 54 46 30             10229 	.ascii "TF0"
      001999 00                   10230 	.db	0
      00199A 01                   10231 	.db	1
      00199B 00 00 14 9E          10232 	.dw	0,5278
      00199F 15                   10233 	.uleb128	21
      0019A0 05                   10234 	.db	5
      0019A1 03                   10235 	.db	3
      0019A2 00 00 00 8C          10236 	.dw	0,(_TR0)
      0019A6 54 52 30             10237 	.ascii "TR0"
      0019A9 00                   10238 	.db	0
      0019AA 01                   10239 	.db	1
      0019AB 00 00 14 9E          10240 	.dw	0,5278
      0019AF 15                   10241 	.uleb128	21
      0019B0 05                   10242 	.db	5
      0019B1 03                   10243 	.db	3
      0019B2 00 00 00 8B          10244 	.dw	0,(_IE1)
      0019B6 49 45 31             10245 	.ascii "IE1"
      0019B9 00                   10246 	.db	0
      0019BA 01                   10247 	.db	1
      0019BB 00 00 14 9E          10248 	.dw	0,5278
      0019BF 15                   10249 	.uleb128	21
      0019C0 05                   10250 	.db	5
      0019C1 03                   10251 	.db	3
      0019C2 00 00 00 8A          10252 	.dw	0,(_IT1)
      0019C6 49 54 31             10253 	.ascii "IT1"
      0019C9 00                   10254 	.db	0
      0019CA 01                   10255 	.db	1
      0019CB 00 00 14 9E          10256 	.dw	0,5278
      0019CF 15                   10257 	.uleb128	21
      0019D0 05                   10258 	.db	5
      0019D1 03                   10259 	.db	3
      0019D2 00 00 00 89          10260 	.dw	0,(_IE0)
      0019D6 49 45 30             10261 	.ascii "IE0"
      0019D9 00                   10262 	.db	0
      0019DA 01                   10263 	.db	1
      0019DB 00 00 14 9E          10264 	.dw	0,5278
      0019DF 15                   10265 	.uleb128	21
      0019E0 05                   10266 	.db	5
      0019E1 03                   10267 	.db	3
      0019E2 00 00 00 88          10268 	.dw	0,(_IT0)
      0019E6 49 54 30             10269 	.ascii "IT0"
      0019E9 00                   10270 	.db	0
      0019EA 01                   10271 	.db	1
      0019EB 00 00 14 9E          10272 	.dw	0,5278
      0019EF 15                   10273 	.uleb128	21
      0019F0 05                   10274 	.db	5
      0019F1 03                   10275 	.db	3
      0019F2 00 00 00 87          10276 	.dw	0,(_P07)
      0019F6 50 30 37             10277 	.ascii "P07"
      0019F9 00                   10278 	.db	0
      0019FA 01                   10279 	.db	1
      0019FB 00 00 14 9E          10280 	.dw	0,5278
      0019FF 15                   10281 	.uleb128	21
      001A00 05                   10282 	.db	5
      001A01 03                   10283 	.db	3
      001A02 00 00 00 87          10284 	.dw	0,(_RXD)
      001A06 52 58 44             10285 	.ascii "RXD"
      001A09 00                   10286 	.db	0
      001A0A 01                   10287 	.db	1
      001A0B 00 00 14 9E          10288 	.dw	0,5278
      001A0F 15                   10289 	.uleb128	21
      001A10 05                   10290 	.db	5
      001A11 03                   10291 	.db	3
      001A12 00 00 00 86          10292 	.dw	0,(_P06)
      001A16 50 30 36             10293 	.ascii "P06"
      001A19 00                   10294 	.db	0
      001A1A 01                   10295 	.db	1
      001A1B 00 00 14 9E          10296 	.dw	0,5278
      001A1F 15                   10297 	.uleb128	21
      001A20 05                   10298 	.db	5
      001A21 03                   10299 	.db	3
      001A22 00 00 00 86          10300 	.dw	0,(_TXD)
      001A26 54 58 44             10301 	.ascii "TXD"
      001A29 00                   10302 	.db	0
      001A2A 01                   10303 	.db	1
      001A2B 00 00 14 9E          10304 	.dw	0,5278
      001A2F 15                   10305 	.uleb128	21
      001A30 05                   10306 	.db	5
      001A31 03                   10307 	.db	3
      001A32 00 00 00 85          10308 	.dw	0,(_P05)
      001A36 50 30 35             10309 	.ascii "P05"
      001A39 00                   10310 	.db	0
      001A3A 01                   10311 	.db	1
      001A3B 00 00 14 9E          10312 	.dw	0,5278
      001A3F 15                   10313 	.uleb128	21
      001A40 05                   10314 	.db	5
      001A41 03                   10315 	.db	3
      001A42 00 00 00 84          10316 	.dw	0,(_P04)
      001A46 50 30 34             10317 	.ascii "P04"
      001A49 00                   10318 	.db	0
      001A4A 01                   10319 	.db	1
      001A4B 00 00 14 9E          10320 	.dw	0,5278
      001A4F 15                   10321 	.uleb128	21
      001A50 05                   10322 	.db	5
      001A51 03                   10323 	.db	3
      001A52 00 00 00 84          10324 	.dw	0,(_STADC)
      001A56 53 54 41 44 43       10325 	.ascii "STADC"
      001A5B 00                   10326 	.db	0
      001A5C 01                   10327 	.db	1
      001A5D 00 00 14 9E          10328 	.dw	0,5278
      001A61 15                   10329 	.uleb128	21
      001A62 05                   10330 	.db	5
      001A63 03                   10331 	.db	3
      001A64 00 00 00 83          10332 	.dw	0,(_P03)
      001A68 50 30 33             10333 	.ascii "P03"
      001A6B 00                   10334 	.db	0
      001A6C 01                   10335 	.db	1
      001A6D 00 00 14 9E          10336 	.dw	0,5278
      001A71 15                   10337 	.uleb128	21
      001A72 05                   10338 	.db	5
      001A73 03                   10339 	.db	3
      001A74 00 00 00 82          10340 	.dw	0,(_P02)
      001A78 50 30 32             10341 	.ascii "P02"
      001A7B 00                   10342 	.db	0
      001A7C 01                   10343 	.db	1
      001A7D 00 00 14 9E          10344 	.dw	0,5278
      001A81 15                   10345 	.uleb128	21
      001A82 05                   10346 	.db	5
      001A83 03                   10347 	.db	3
      001A84 00 00 00 82          10348 	.dw	0,(_RXD_1)
      001A88 52 58 44 5F 31       10349 	.ascii "RXD_1"
      001A8D 00                   10350 	.db	0
      001A8E 01                   10351 	.db	1
      001A8F 00 00 14 9E          10352 	.dw	0,5278
      001A93 15                   10353 	.uleb128	21
      001A94 05                   10354 	.db	5
      001A95 03                   10355 	.db	3
      001A96 00 00 00 81          10356 	.dw	0,(_P01)
      001A9A 50 30 31             10357 	.ascii "P01"
      001A9D 00                   10358 	.db	0
      001A9E 01                   10359 	.db	1
      001A9F 00 00 14 9E          10360 	.dw	0,5278
      001AA3 15                   10361 	.uleb128	21
      001AA4 05                   10362 	.db	5
      001AA5 03                   10363 	.db	3
      001AA6 00 00 00 81          10364 	.dw	0,(_MISO)
      001AAA 4D 49 53 4F          10365 	.ascii "MISO"
      001AAE 00                   10366 	.db	0
      001AAF 01                   10367 	.db	1
      001AB0 00 00 14 9E          10368 	.dw	0,5278
      001AB4 15                   10369 	.uleb128	21
      001AB5 05                   10370 	.db	5
      001AB6 03                   10371 	.db	3
      001AB7 00 00 00 80          10372 	.dw	0,(_P00)
      001ABB 50 30 30             10373 	.ascii "P00"
      001ABE 00                   10374 	.db	0
      001ABF 01                   10375 	.db	1
      001AC0 00 00 14 9E          10376 	.dw	0,5278
      001AC4 15                   10377 	.uleb128	21
      001AC5 05                   10378 	.db	5
      001AC6 03                   10379 	.db	3
      001AC7 00 00 00 80          10380 	.dw	0,(_MOSI)
      001ACB 4D 4F 53 49          10381 	.ascii "MOSI"
      001ACF 00                   10382 	.db	0
      001AD0 01                   10383 	.db	1
      001AD1 00 00 14 9E          10384 	.dw	0,5278
      001AD5 17                   10385 	.uleb128	23
      001AD6 00 00 03 55          10386 	.dw	0,853
      001ADA 13                   10387 	.uleb128	19
      001ADB 00 00 1A E7          10388 	.dw	0,6887
      001ADF 02                   10389 	.db	2
      001AE0 00 00 1A D5          10390 	.dw	0,6869
      001AE4 14                   10391 	.uleb128	20
      001AE5 01                   10392 	.db	1
      001AE6 00                   10393 	.uleb128	0
      001AE7 13                   10394 	.uleb128	19
      001AE8 00 00 1A F4          10395 	.dw	0,6900
      001AEC 14                   10396 	.db	20
      001AED 00 00 1A DA          10397 	.dw	0,6874
      001AF1 14                   10398 	.uleb128	20
      001AF2 09                   10399 	.db	9
      001AF3 00                   10400 	.uleb128	0
      001AF4 15                   10401 	.uleb128	21
      001AF5 05                   10402 	.db	5
      001AF6 03                   10403 	.db	3
      001AF7 00 00 19 9D          10404 	.dw	0,(_max_amp)
      001AFB 6D 61 78 5F 61 6D 70 10405 	.ascii "max_amp"
      001B02 00                   10406 	.db	0
      001B03 01                   10407 	.db	1
      001B04 00 00 1A E7          10408 	.dw	0,6887
      001B08 15                   10409 	.uleb128	21
      001B09 05                   10410 	.db	5
      001B0A 03                   10411 	.db	3
      001B0B 00 00 19 B1          10412 	.dw	0,(_min_amp)
      001B0F 6D 69 6E 5F 61 6D 70 10413 	.ascii "min_amp"
      001B16 00                   10414 	.db	0
      001B17 01                   10415 	.db	1
      001B18 00 00 1A DA          10416 	.dw	0,6874
      001B1C 13                   10417 	.uleb128	19
      001B1D 00 00 1B 29          10418 	.dw	0,6953
      001B21 0A                   10419 	.db	10
      001B22 00 00 1A D5          10420 	.dw	0,6869
      001B26 14                   10421 	.uleb128	20
      001B27 09                   10422 	.db	9
      001B28 00                   10423 	.uleb128	0
      001B29 15                   10424 	.uleb128	21
      001B2A 05                   10425 	.db	5
      001B2B 03                   10426 	.db	3
      001B2C 00 00 19 B3          10427 	.dw	0,(_flashing)
      001B30 66 6C 61 73 68 69 6E 10428 	.ascii "flashing"
             67
      001B38 00                   10429 	.db	0
      001B39 01                   10430 	.db	1
      001B3A 00 00 1B 1C          10431 	.dw	0,6940
      001B3E 15                   10432 	.uleb128	21
      001B3F 05                   10433 	.db	5
      001B40 03                   10434 	.db	3
      001B41 00 00 19 BD          10435 	.dw	0,(_temp_controlling)
      001B45 74 65 6D 70 5F 63 6F 10436 	.ascii "temp_controlling"
             6E 74 72 6F 6C 6C 69
             6E 67
      001B55 00                   10437 	.db	0
      001B56 01                   10438 	.db	1
      001B57 00 00 1B 1C          10439 	.dw	0,6940
      001B5B 15                   10440 	.uleb128	21
      001B5C 05                   10441 	.db	5
      001B5D 03                   10442 	.db	3
      001B5E 00 00 19 C7          10443 	.dw	0,(_next_mode)
      001B62 6E 65 78 74 5F 6D 6F 10444 	.ascii "next_mode"
             64 65
      001B6B 00                   10445 	.db	0
      001B6C 01                   10446 	.db	1
      001B6D 00 00 1B 1C          10447 	.dw	0,6940
      001B71 10                   10448 	.uleb128	16
      001B72 05                   10449 	.db	5
      001B73 03                   10450 	.db	3
      001B74 00 00 19 D1          10451 	.dw	0,(__xinit__light_mode)
      001B78 5F 5F 78 69 6E 69 74 10452 	.ascii "__xinit_light_mode"
             5F 6C 69 67 68 74 5F
             6D 6F 64 65
      001B8A 00                   10453 	.db	0
      001B8B 00 00 1A D5          10454 	.dw	0,6869
      001B8F 17                   10455 	.uleb128	23
      001B90 00 00 04 AE          10456 	.dw	0,1198
      001B94 10                   10457 	.uleb128	16
      001B95 05                   10458 	.db	5
      001B96 03                   10459 	.db	3
      001B97 00 00 19 D2          10460 	.dw	0,(__xinit__is_uart_mode)
      001B9B 5F 5F 78 69 6E 69 74 10461 	.ascii "__xinit_is_uart_mode"
             5F 69 73 5F 75 61 72
             74 5F 6D 6F 64 65
      001BAF 00                   10462 	.db	0
      001BB0 00 00 1B 8F          10463 	.dw	0,7055
      001BB4 10                   10464 	.uleb128	16
      001BB5 05                   10465 	.db	5
      001BB6 03                   10466 	.db	3
      001BB7 00 00 19 D3          10467 	.dw	0,(__xinit__flashing_on)
      001BBB 5F 5F 78 69 6E 69 74 10468 	.ascii "__xinit_flashing_on"
             5F 66 6C 61 73 68 69
             6E 67 5F 6F 6E
      001BCE 00                   10469 	.db	0
      001BCF 00 00 1B 8F          10470 	.dw	0,7055
      001BD3 17                   10471 	.uleb128	23
      001BD4 00 00 03 05          10472 	.dw	0,773
      001BD8 10                   10473 	.uleb128	16
      001BD9 05                   10474 	.db	5
      001BDA 03                   10475 	.db	3
      001BDB 00 00 19 D4          10476 	.dw	0,(__xinit__flashing_count)
      001BDF 5F 5F 78 69 6E 69 74 10477 	.ascii "__xinit_flashing_count"
             5F 66 6C 61 73 68 69
             6E 67 5F 63 6F 75 6E
             74
      001BF5 00                   10478 	.db	0
      001BF6 00 00 1B D3          10479 	.dw	0,7123
      001BFA 13                   10480 	.uleb128	19
      001BFB 00 00 1C 07          10481 	.dw	0,7175
      001BFF 04                   10482 	.db	4
      001C00 00 00 1B D3          10483 	.dw	0,7123
      001C04 14                   10484 	.uleb128	20
      001C05 01                   10485 	.db	1
      001C06 00                   10486 	.uleb128	0
      001C07 10                   10487 	.uleb128	16
      001C08 05                   10488 	.db	5
      001C09 03                   10489 	.db	3
      001C0A 00 00 19 D6          10490 	.dw	0,(__xinit__pwm)
      001C0E 5F 5F 78 69 6E 69 74 10491 	.ascii "__xinit_pwm"
             5F 70 77 6D
      001C19 00                   10492 	.db	0
      001C1A 00 00 1B FA          10493 	.dw	0,7162
      001C1E 17                   10494 	.uleb128	23
      001C1F 00 00 02 C1          10495 	.dw	0,705
      001C23 13                   10496 	.uleb128	19
      001C24 00 00 1C 30          10497 	.dw	0,7216
      001C28 02                   10498 	.db	2
      001C29 00 00 1C 1E          10499 	.dw	0,7198
      001C2D 14                   10500 	.uleb128	20
      001C2E 01                   10501 	.db	1
      001C2F 00                   10502 	.uleb128	0
      001C30 10                   10503 	.uleb128	16
      001C31 05                   10504 	.db	5
      001C32 03                   10505 	.db	3
      001C33 00 00 19 DA          10506 	.dw	0,(__xinit__light_control_mode)
      001C37 5F 5F 78 69 6E 69 74 10507 	.ascii "__xinit_light_control_mode"
             5F 6C 69 67 68 74 5F
             63 6F 6E 74 72 6F 6C
             5F 6D 6F 64 65
      001C51 00                   10508 	.db	0
      001C52 00 00 1C 23          10509 	.dw	0,7203
      001C56 10                   10510 	.uleb128	16
      001C57 05                   10511 	.db	5
      001C58 03                   10512 	.db	3
      001C59 00 00 19 DC          10513 	.dw	0,(__xinit__sample_count)
      001C5D 5F 5F 78 69 6E 69 74 10514 	.ascii "__xinit_sample_count"
             5F 73 61 6D 70 6C 65
             5F 63 6F 75 6E 74
      001C71 00                   10515 	.db	0
      001C72 00 00 1A D5          10516 	.dw	0,6869
      001C76 17                   10517 	.uleb128	23
      001C77 00 00 01 1E          10518 	.dw	0,286
      001C7B 13                   10519 	.uleb128	19
      001C7C 00 00 1C 88          10520 	.dw	0,7304
      001C80 08                   10521 	.db	8
      001C81 00 00 1C 76          10522 	.dw	0,7286
      001C85 14                   10523 	.uleb128	20
      001C86 01                   10524 	.db	1
      001C87 00                   10525 	.uleb128	0
      001C88 10                   10526 	.uleb128	16
      001C89 05                   10527 	.db	5
      001C8A 03                   10528 	.db	3
      001C8B 00 00 19 DD          10529 	.dw	0,(__xinit__acc_amp)
      001C8F 5F 5F 78 69 6E 69 74 10530 	.ascii "__xinit_acc_amp"
             5F 61 63 63 5F 61 6D
             70
      001C9E 00                   10531 	.db	0
      001C9F 00 00 1C 7B          10532 	.dw	0,7291
      001CA3 10                   10533 	.uleb128	16
      001CA4 05                   10534 	.db	5
      001CA5 03                   10535 	.db	3
      001CA6 00 00 19 E5          10536 	.dw	0,(__xinit__acc_temp)
      001CAA 5F 5F 78 69 6E 69 74 10537 	.ascii "__xinit_acc_temp"
             5F 61 63 63 5F 74 65
             6D 70
      001CBA 00                   10538 	.db	0
      001CBB 00 00 1C 76          10539 	.dw	0,7286
      001CBF 10                   10540 	.uleb128	16
      001CC0 05                   10541 	.db	5
      001CC1 03                   10542 	.db	3
      001CC2 00 00 19 E9          10543 	.dw	0,(__xinit__cur_amp)
      001CC6 5F 5F 78 69 6E 69 74 10544 	.ascii "__xinit_cur_amp"
             5F 63 75 72 5F 61 6D
             70
      001CD5 00                   10545 	.db	0
      001CD6 00 00 1B FA          10546 	.dw	0,7162
      001CDA 10                   10547 	.uleb128	16
      001CDB 05                   10548 	.db	5
      001CDC 03                   10549 	.db	3
      001CDD 00 00 19 ED          10550 	.dw	0,(__xinit__cur_temp)
      001CE1 5F 5F 78 69 6E 69 74 10551 	.ascii "__xinit_cur_temp"
             5F 63 75 72 5F 74 65
             6D 70
      001CF1 00                   10552 	.db	0
      001CF2 00 00 1B D3          10553 	.dw	0,7123
      001CF6 10                   10554 	.uleb128	16
      001CF7 05                   10555 	.db	5
      001CF8 03                   10556 	.db	3
      001CF9 00 00 19 EF          10557 	.dw	0,(__xinit__good_amp_count)
      001CFD 5F 5F 78 69 6E 69 74 10558 	.ascii "__xinit_good_amp_count"
             5F 67 6F 6F 64 5F 61
             6D 70 5F 63 6F 75 6E
             74
      001D13 00                   10559 	.db	0
      001D14 00 00 1A DA          10560 	.dw	0,6874
      001D18 10                   10561 	.uleb128	16
      001D19 05                   10562 	.db	5
      001D1A 03                   10563 	.db	3
      001D1B 00 00 19 F1          10564 	.dw	0,(__xinit__uart1_next_idx)
      001D1F 5F 5F 78 69 6E 69 74 10565 	.ascii "__xinit_uart1_next_idx"
             5F 75 61 72 74 31 5F
             6E 65 78 74 5F 69 64
             78
      001D35 00                   10566 	.db	0
      001D36 00 00 1A D5          10567 	.dw	0,6869
      001D3A 10                   10568 	.uleb128	16
      001D3B 05                   10569 	.db	5
      001D3C 03                   10570 	.db	3
      001D3D 00 00 19 F2          10571 	.dw	0,(__xinit__uart1_read_idx)
      001D41 5F 5F 78 69 6E 69 74 10572 	.ascii "__xinit_uart1_read_idx"
             5F 75 61 72 74 31 5F
             72 65 61 64 5F 69 64
             78
      001D57 00                   10573 	.db	0
      001D58 00 00 1A D5          10574 	.dw	0,6869
      001D5C 10                   10575 	.uleb128	16
      001D5D 05                   10576 	.db	5
      001D5E 03                   10577 	.db	3
      001D5F 00 00 19 F3          10578 	.dw	0,(__xinit__uart_flag)
      001D63 5F 5F 78 69 6E 69 74 10579 	.ascii "__xinit_uart_flag"
             5F 75 61 72 74 5F 66
             6C 61 67
      001D74 00                   10580 	.db	0
      001D75 00 00 1C 1E          10581 	.dw	0,7198
      001D79 10                   10582 	.uleb128	16
      001D7A 05                   10583 	.db	5
      001D7B 03                   10584 	.db	3
      001D7C 00 00 19 F4          10585 	.dw	0,(__xinit__button_pressed)
      001D80 5F 5F 78 69 6E 69 74 10586 	.ascii "__xinit_button_pressed"
             5F 62 75 74 74 6F 6E
             5F 70 72 65 73 73 65
             64
      001D96 00                   10587 	.db	0
      001D97 00 00 1C 76          10588 	.dw	0,7286
      001D9B 10                   10589 	.uleb128	16
      001D9C 05                   10590 	.db	5
      001D9D 03                   10591 	.db	3
      001D9E 00 00 19 F8          10592 	.dw	0,(__xinit__button_unpressed)
      001DA2 5F 5F 78 69 6E 69 74 10593 	.ascii "__xinit_button_unpressed"
             5F 62 75 74 74 6F 6E
             5F 75 6E 70 72 65 73
             73 65 64
      001DBA 00                   10594 	.db	0
      001DBB 00 00 1C 76          10595 	.dw	0,7286
      001DBF 10                   10596 	.uleb128	16
      001DC0 05                   10597 	.db	5
      001DC1 03                   10598 	.db	3
      001DC2 00 00 19 FC          10599 	.dw	0,(__xinit__uart_counter)
      001DC6 5F 5F 78 69 6E 69 74 10600 	.ascii "__xinit_uart_counter"
             5F 75 61 72 74 5F 63
             6F 75 6E 74 65 72
      001DDA 00                   10601 	.db	0
      001DDB 00 00 1C 76          10602 	.dw	0,7286
      001DDF 10                   10603 	.uleb128	16
      001DE0 05                   10604 	.db	5
      001DE1 03                   10605 	.db	3
      001DE2 00 00 1A 00          10606 	.dw	0,(__xinit__uart_rx_state)
      001DE6 5F 5F 78 69 6E 69 74 10607 	.ascii "__xinit_uart_rx_state"
             5F 75 61 72 74 5F 72
             78 5F 73 74 61 74 65
      001DFB 00                   10608 	.db	0
      001DFC 00 00 1A D5          10609 	.dw	0,6869
      001E00 10                   10610 	.uleb128	16
      001E01 05                   10611 	.db	5
      001E02 03                   10612 	.db	3
      001E03 00 00 1A 01          10613 	.dw	0,(__xinit__lamp_state)
      001E07 5F 5F 78 69 6E 69 74 10614 	.ascii "__xinit_lamp_state"
             5F 6C 61 6D 70 5F 73
             74 61 74 65
      001E19 00                   10615 	.db	0
      001E1A 00 00 1A D5          10616 	.dw	0,6869
      001E1E 10                   10617 	.uleb128	16
      001E1F 05                   10618 	.db	5
      001E20 03                   10619 	.db	3
      001E21 00 00 1A 02          10620 	.dw	0,(__xinit__log_counter)
      001E25 5F 5F 78 69 6E 69 74 10621 	.ascii "__xinit_log_counter"
             5F 6C 6F 67 5F 63 6F
             75 6E 74 65 72
      001E38 00                   10622 	.db	0
      001E39 00 00 1C 76          10623 	.dw	0,7286
      001E3D 00                   10624 	.uleb128	0
      001E3E                      10625 Ldebug_info_end:
                                  10626 
                                  10627 	.area .debug_pubnames (NOLOAD)
      000000 00 00 0C 01          10628 	.dw	0,Ldebug_pubnames_end-Ldebug_pubnames_start
      000004                      10629 Ldebug_pubnames_start:
      000004 00 02                10630 	.dw	2
      000006 00 00 00 00          10631 	.dw	0,(Ldebug_info_start-4)
      00000A 00 00 1E 3E          10632 	.dw	0,4+Ldebug_info_end-Ldebug_info_start
      00000E 00 00 00 AC          10633 	.dw	0,172
      000012 54 69 6D 65 72 30 5F 10634 	.ascii "Timer0_Delay"
             44 65 6C 61 79
      00001E 00                   10635 	.db	0
      00001F 00 00 01 3F          10636 	.dw	0,319
      000023 53 65 72 69 61 6C 50 10637 	.ascii "SerialPort1_ISR"
             6F 72 74 31 5F 49 53
             52
      000032 00                   10638 	.db	0
      000033 00 00 01 75          10639 	.dw	0,373
      000037 75 61 72 74 5F 69 6E 10640 	.ascii "uart_interrupt_init"
             74 65 72 72 75 70 74
             5F 69 6E 69 74
      00004A 00                   10641 	.db	0
      00004B 00 00 01 97          10642 	.dw	0,407
      00004F 50 69 6E 49 6E 74 65 10643 	.ascii "PinInterrupt_ISR"
             72 72 75 70 74 5F 49
             53 52
      00005F 00                   10644 	.db	0
      000060 00 00 01 C5          10645 	.dw	0,453
      000064 62 75 74 74 6F 6E 5F 10646 	.ascii "button_interrupt_init"
             69 6E 74 65 72 72 75
             70 74 5F 69 6E 69 74
      000079 00                   10647 	.db	0
      00007A 00 00 01 E9          10648 	.dw	0,489
      00007E 65 6E 61 62 6C 65 5F 10649 	.ascii "enable_ntc"
             6E 74 63
      000088 00                   10650 	.db	0
      000089 00 00 02 02          10651 	.dw	0,514
      00008D 64 69 73 61 62 6C 65 10652 	.ascii "disable_ntc"
             5F 6E 74 63
      000098 00                   10653 	.db	0
      000099 00 00 02 1C          10654 	.dw	0,540
      00009D 69 6E 69 74 5F 73 61 10655 	.ascii "init_sample"
             6D 70 6C 65
      0000A8 00                   10656 	.db	0
      0000A9 00 00 02 55          10657 	.dw	0,597
      0000AD 69 6E 69 74 5F 70 65 10658 	.ascii "init_peripherals_but_button_n_uart"
             72 69 70 68 65 72 61
             6C 73 5F 62 75 74 5F
             62 75 74 74 6F 6E 5F
             6E 5F 75 61 72 74
      0000CF 00                   10659 	.db	0
      0000D0 00 00 02 86          10660 	.dw	0,646
      0000D4 73 61 6D 70 6C 65 5F 10661 	.ascii "sample_amps"
             61 6D 70 73
      0000DF 00                   10662 	.db	0
      0000E0 00 00 02 A0          10663 	.dw	0,672
      0000E4 73 61 6D 70 6C 65 5F 10664 	.ascii "sample_temperature"
             74 65 6D 70 65 72 61
             74 75 72 65
      0000F6 00                   10665 	.db	0
      0000F7 00 00 02 D0          10666 	.dw	0,720
      0000FB 68 61 73 5F 68 69 67 10667 	.ascii "has_high_beam"
             68 5F 62 65 61 6D
      000108 00                   10668 	.db	0
      000109 00 00 03 15          10669 	.dw	0,789
      00010D 61 76 67 5F 61 6D 70 10670 	.ascii "avg_amp"
      000114 00                   10671 	.db	0
      000115 00 00 03 66          10672 	.dw	0,870
      000119 74 61 72 67 65 74 5F 10673 	.ascii "target_amp"
             61 6D 70
      000123 00                   10674 	.db	0
      000124 00 00 03 D5          10675 	.dw	0,981
      000128 63 68 61 6E 67 65 4D 10676 	.ascii "changeMode"
             6F 64 65
      000132 00                   10677 	.db	0
      000133 00 00 04 95          10678 	.dw	0,1173
      000137 74 6F 4E 65 78 74 4D 10679 	.ascii "toNextMode"
             6F 64 65
      000141 00                   10680 	.db	0
      000142 00 00 04 B7          10681 	.dw	0,1207
      000146 70 72 6F 63 65 73 73 10682 	.ascii "process_uart"
             5F 75 61 72 74
      000152 00                   10683 	.db	0
      000153 00 00 05 15          10684 	.dw	0,1301
      000157 70 72 6F 63 65 73 73 10685 	.ascii "process_button"
             5F 62 75 74 74 6F 6E
      000165 00                   10686 	.db	0
      000166 00 00 05 7D          10687 	.dw	0,1405
      00016A 73 74 6F 70 5F 6C 65 10688 	.ascii "stop_leds"
             64 73
      000173 00                   10689 	.db	0
      000174 00 00 05 95          10690 	.dw	0,1429
      000178 61 63 74 69 76 61 74 10691 	.ascii "activate_leds"
             65 5F 6C 65 64 73
      000185 00                   10692 	.db	0
      000186 00 00 05 B1          10693 	.dw	0,1457
      00018A 6D 6F 64 65 5F 63 68 10694 	.ascii "mode_changing_control"
             61 6E 67 69 6E 67 5F
             63 6F 6E 74 72 6F 6C
      00019F 00                   10695 	.db	0
      0001A0 00 00 06 B3          10696 	.dw	0,1715
      0001A4 69 73 5F 73 74 61 62 10697 	.ascii "is_stable"
             6C 65
      0001AD 00                   10698 	.db	0
      0001AE 00 00 06 EE          10699 	.dw	0,1774
      0001B2 6D 6F 64 65 5F 73 74 10700 	.ascii "mode_stable_control"
             61 62 6C 65 5F 63 6F
             6E 74 72 6F 6C
      0001C5 00                   10701 	.db	0
      0001C6 00 00 07 82          10702 	.dw	0,1922
      0001CA 63 6F 6E 74 72 6F 6C 10703 	.ascii "control_loop"
             5F 6C 6F 6F 70
      0001D6 00                   10704 	.db	0
      0001D7 00 00 08 13          10705 	.dw	0,2067
      0001DB 77 64 74 5F 69 6E 69 10706 	.ascii "wdt_init"
             74
      0001E3 00                   10707 	.db	0
      0001E4 00 00 08 2A          10708 	.dw	0,2090
      0001E8 77 64 74 5F 63 6C 65 10709 	.ascii "wdt_clear"
             61 72
      0001F1 00                   10710 	.db	0
      0001F2 00 00 08 42          10711 	.dw	0,2114
      0001F6 6D 61 69 6E          10712 	.ascii "main"
      0001FA 00                   10713 	.db	0
      0001FB 00 00 08 BC          10714 	.dw	0,2236
      0001FF 42 49 54 5F 54 4D 50 10715 	.ascii "BIT_TMP"
      000206 00                   10716 	.db	0
      000207 00 00 08 DE          10717 	.dw	0,2270
      00020B 75 61 72 74 31 5F 72 10718 	.ascii "uart1_rx_buffer"
             78 5F 62 75 66 66 65
             72
      00021A 00                   10719 	.db	0
      00021B 00 00 09 08          10720 	.dw	0,2312
      00021F 6C 69 67 68 74 5F 6D 10721 	.ascii "light_mode"
             6F 64 65
      000229 00                   10722 	.db	0
      00022A 00 00 09 1F          10723 	.dw	0,2335
      00022E 69 73 5F 75 61 72 74 10724 	.ascii "is_uart_mode"
             5F 6D 6F 64 65
      00023A 00                   10725 	.db	0
      00023B 00 00 09 38          10726 	.dw	0,2360
      00023F 66 6C 61 73 68 69 6E 10727 	.ascii "flashing_on"
             67 5F 6F 6E
      00024A 00                   10728 	.db	0
      00024B 00 00 09 50          10729 	.dw	0,2384
      00024F 66 6C 61 73 68 69 6E 10730 	.ascii "flashing_count"
             67 5F 63 6F 75 6E 74
      00025D 00                   10731 	.db	0
      00025E 00 00 09 78          10732 	.dw	0,2424
      000262 70 77 6D             10733 	.ascii "pwm"
      000265 00                   10734 	.db	0
      000266 00 00 09 95          10735 	.dw	0,2453
      00026A 6C 69 67 68 74 5F 63 10736 	.ascii "light_control_mode"
             6F 6E 74 72 6F 6C 5F
             6D 6F 64 65
      00027C 00                   10737 	.db	0
      00027D 00 00 09 B4          10738 	.dw	0,2484
      000281 73 61 6D 70 6C 65 5F 10739 	.ascii "sample_count"
             63 6F 75 6E 74
      00028D 00                   10740 	.db	0
      00028E 00 00 09 DA          10741 	.dw	0,2522
      000292 61 63 63 5F 61 6D 70 10742 	.ascii "acc_amp"
      000299 00                   10743 	.db	0
      00029A 00 00 09 EE          10744 	.dw	0,2542
      00029E 61 63 63 5F 74 65 6D 10745 	.ascii "acc_temp"
             70
      0002A6 00                   10746 	.db	0
      0002A7 00 00 0A 03          10747 	.dw	0,2563
      0002AB 63 75 72 5F 61 6D 70 10748 	.ascii "cur_amp"
      0002B2 00                   10749 	.db	0
      0002B3 00 00 0A 17          10750 	.dw	0,2583
      0002B7 63 75 72 5F 74 65 6D 10751 	.ascii "cur_temp"
             70
      0002BF 00                   10752 	.db	0
      0002C0 00 00 0A 39          10753 	.dw	0,2617
      0002C4 67 6F 6F 64 5F 61 6D 10754 	.ascii "good_amp_count"
             70 5F 63 6F 75 6E 74
      0002D2 00                   10755 	.db	0
      0002D3 00 00 0A 54          10756 	.dw	0,2644
      0002D7 75 61 72 74 31 5F 6E 10757 	.ascii "uart1_next_idx"
             65 78 74 5F 69 64 78
      0002E5 00                   10758 	.db	0
      0002E6 00 00 0A 6F          10759 	.dw	0,2671
      0002EA 75 61 72 74 31 5F 72 10760 	.ascii "uart1_read_idx"
             65 61 64 5F 69 64 78
      0002F8 00                   10761 	.db	0
      0002F9 00 00 0A 8A          10762 	.dw	0,2698
      0002FD 75 61 72 74 5F 66 6C 10763 	.ascii "uart_flag"
             61 67
      000306 00                   10764 	.db	0
      000307 00 00 0A A0          10765 	.dw	0,2720
      00030B 62 75 74 74 6F 6E 5F 10766 	.ascii "button_pressed"
             70 72 65 73 73 65 64
      000319 00                   10767 	.db	0
      00031A 00 00 0A BB          10768 	.dw	0,2747
      00031E 62 75 74 74 6F 6E 5F 10769 	.ascii "button_unpressed"
             75 6E 70 72 65 73 73
             65 64
      00032E 00                   10770 	.db	0
      00032F 00 00 0A D8          10771 	.dw	0,2776
      000333 75 61 72 74 5F 63 6F 10772 	.ascii "uart_counter"
             75 6E 74 65 72
      00033F 00                   10773 	.db	0
      000340 00 00 0A F1          10774 	.dw	0,2801
      000344 75 61 72 74 5F 72 78 10775 	.ascii "uart_rx_state"
             5F 73 74 61 74 65
      000351 00                   10776 	.db	0
      000352 00 00 0B 0B          10777 	.dw	0,2827
      000356 6C 61 6D 70 5F 73 74 10778 	.ascii "lamp_state"
             61 74 65
      000360 00                   10779 	.db	0
      000361 00 00 0B 22          10780 	.dw	0,2850
      000365 6C 6F 67 5F 63 6F 75 10781 	.ascii "log_counter"
             6E 74 65 72
      000370 00                   10782 	.db	0
      000371 00 00 0B 3F          10783 	.dw	0,2879
      000375 50 30                10784 	.ascii "P0"
      000377 00                   10785 	.db	0
      000378 00 00 0B 4E          10786 	.dw	0,2894
      00037C 53 50                10787 	.ascii "SP"
      00037E 00                   10788 	.db	0
      00037F 00 00 0B 5D          10789 	.dw	0,2909
      000383 44 50 4C             10790 	.ascii "DPL"
      000386 00                   10791 	.db	0
      000387 00 00 0B 6D          10792 	.dw	0,2925
      00038B 44 50 48             10793 	.ascii "DPH"
      00038E 00                   10794 	.db	0
      00038F 00 00 0B 7D          10795 	.dw	0,2941
      000393 52 43 54 52 49 4D 30 10796 	.ascii "RCTRIM0"
      00039A 00                   10797 	.db	0
      00039B 00 00 0B 91          10798 	.dw	0,2961
      00039F 52 43 54 52 49 4D 31 10799 	.ascii "RCTRIM1"
      0003A6 00                   10800 	.db	0
      0003A7 00 00 0B A5          10801 	.dw	0,2981
      0003AB 52 57 4B             10802 	.ascii "RWK"
      0003AE 00                   10803 	.db	0
      0003AF 00 00 0B B5          10804 	.dw	0,2997
      0003B3 50 43 4F 4E          10805 	.ascii "PCON"
      0003B7 00                   10806 	.db	0
      0003B8 00 00 0B C6          10807 	.dw	0,3014
      0003BC 54 43 4F 4E          10808 	.ascii "TCON"
      0003C0 00                   10809 	.db	0
      0003C1 00 00 0B D7          10810 	.dw	0,3031
      0003C5 54 4D 4F 44          10811 	.ascii "TMOD"
      0003C9 00                   10812 	.db	0
      0003CA 00 00 0B E8          10813 	.dw	0,3048
      0003CE 54 4C 30             10814 	.ascii "TL0"
      0003D1 00                   10815 	.db	0
      0003D2 00 00 0B F8          10816 	.dw	0,3064
      0003D6 54 4C 31             10817 	.ascii "TL1"
      0003D9 00                   10818 	.db	0
      0003DA 00 00 0C 08          10819 	.dw	0,3080
      0003DE 54 48 30             10820 	.ascii "TH0"
      0003E1 00                   10821 	.db	0
      0003E2 00 00 0C 18          10822 	.dw	0,3096
      0003E6 54 48 31             10823 	.ascii "TH1"
      0003E9 00                   10824 	.db	0
      0003EA 00 00 0C 28          10825 	.dw	0,3112
      0003EE 43 4B 43 4F 4E       10826 	.ascii "CKCON"
      0003F3 00                   10827 	.db	0
      0003F4 00 00 0C 3A          10828 	.dw	0,3130
      0003F8 57 4B 43 4F 4E       10829 	.ascii "WKCON"
      0003FD 00                   10830 	.db	0
      0003FE 00 00 0C 4C          10831 	.dw	0,3148
      000402 50 31                10832 	.ascii "P1"
      000404 00                   10833 	.db	0
      000405 00 00 0C 5B          10834 	.dw	0,3163
      000409 53 46 52 53          10835 	.ascii "SFRS"
      00040D 00                   10836 	.db	0
      00040E 00 00 0C 6C          10837 	.dw	0,3180
      000412 43 41 50 43 4F 4E 30 10838 	.ascii "CAPCON0"
      000419 00                   10839 	.db	0
      00041A 00 00 0C 80          10840 	.dw	0,3200
      00041E 43 41 50 43 4F 4E 31 10841 	.ascii "CAPCON1"
      000425 00                   10842 	.db	0
      000426 00 00 0C 94          10843 	.dw	0,3220
      00042A 43 41 50 43 4F 4E 32 10844 	.ascii "CAPCON2"
      000431 00                   10845 	.db	0
      000432 00 00 0C A8          10846 	.dw	0,3240
      000436 43 4B 44 49 56       10847 	.ascii "CKDIV"
      00043B 00                   10848 	.db	0
      00043C 00 00 0C BA          10849 	.dw	0,3258
      000440 43 4B 53 57 54       10850 	.ascii "CKSWT"
      000445 00                   10851 	.db	0
      000446 00 00 0C CC          10852 	.dw	0,3276
      00044A 43 4B 45 4E          10853 	.ascii "CKEN"
      00044E 00                   10854 	.db	0
      00044F 00 00 0C DD          10855 	.dw	0,3293
      000453 53 43 4F 4E          10856 	.ascii "SCON"
      000457 00                   10857 	.db	0
      000458 00 00 0C EE          10858 	.dw	0,3310
      00045C 53 42 55 46          10859 	.ascii "SBUF"
      000460 00                   10860 	.db	0
      000461 00 00 0C FF          10861 	.dw	0,3327
      000465 53 42 55 46 5F 31    10862 	.ascii "SBUF_1"
      00046B 00                   10863 	.db	0
      00046C 00 00 0D 12          10864 	.dw	0,3346
      000470 45 49 45             10865 	.ascii "EIE"
      000473 00                   10866 	.db	0
      000474 00 00 0D 22          10867 	.dw	0,3362
      000478 45 49 45 31          10868 	.ascii "EIE1"
      00047C 00                   10869 	.db	0
      00047D 00 00 0D 33          10870 	.dw	0,3379
      000481 43 48 50 43 4F 4E    10871 	.ascii "CHPCON"
      000487 00                   10872 	.db	0
      000488 00 00 0D 46          10873 	.dw	0,3398
      00048C 50 32                10874 	.ascii "P2"
      00048E 00                   10875 	.db	0
      00048F 00 00 0D 55          10876 	.dw	0,3413
      000493 41 55 58 52 31       10877 	.ascii "AUXR1"
      000498 00                   10878 	.db	0
      000499 00 00 0D 67          10879 	.dw	0,3431
      00049D 42 4F 44 43 4F 4E 30 10880 	.ascii "BODCON0"
      0004A4 00                   10881 	.db	0
      0004A5 00 00 0D 7B          10882 	.dw	0,3451
      0004A9 49 41 50 54 52 47    10883 	.ascii "IAPTRG"
      0004AF 00                   10884 	.db	0
      0004B0 00 00 0D 8E          10885 	.dw	0,3470
      0004B4 49 41 50 55 45 4E    10886 	.ascii "IAPUEN"
      0004BA 00                   10887 	.db	0
      0004BB 00 00 0D A1          10888 	.dw	0,3489
      0004BF 49 41 50 41 4C       10889 	.ascii "IAPAL"
      0004C4 00                   10890 	.db	0
      0004C5 00 00 0D B3          10891 	.dw	0,3507
      0004C9 49 41 50 41 48       10892 	.ascii "IAPAH"
      0004CE 00                   10893 	.db	0
      0004CF 00 00 0D C5          10894 	.dw	0,3525
      0004D3 49 45                10895 	.ascii "IE"
      0004D5 00                   10896 	.db	0
      0004D6 00 00 0D D4          10897 	.dw	0,3540
      0004DA 53 41 44 44 52       10898 	.ascii "SADDR"
      0004DF 00                   10899 	.db	0
      0004E0 00 00 0D E6          10900 	.dw	0,3558
      0004E4 57 44 43 4F 4E       10901 	.ascii "WDCON"
      0004E9 00                   10902 	.db	0
      0004EA 00 00 0D F8          10903 	.dw	0,3576
      0004EE 42 4F 44 43 4F 4E 31 10904 	.ascii "BODCON1"
      0004F5 00                   10905 	.db	0
      0004F6 00 00 0E 0C          10906 	.dw	0,3596
      0004FA 50 33 4D 31          10907 	.ascii "P3M1"
      0004FE 00                   10908 	.db	0
      0004FF 00 00 0E 1D          10909 	.dw	0,3613
      000503 50 33 53             10910 	.ascii "P3S"
      000506 00                   10911 	.db	0
      000507 00 00 0E 2D          10912 	.dw	0,3629
      00050B 50 33 4D 32          10913 	.ascii "P3M2"
      00050F 00                   10914 	.db	0
      000510 00 00 0E 3E          10915 	.dw	0,3646
      000514 50 33 53 52          10916 	.ascii "P3SR"
      000518 00                   10917 	.db	0
      000519 00 00 0E 4F          10918 	.dw	0,3663
      00051D 49 41 50 46 44       10919 	.ascii "IAPFD"
      000522 00                   10920 	.db	0
      000523 00 00 0E 61          10921 	.dw	0,3681
      000527 49 41 50 43 4E       10922 	.ascii "IAPCN"
      00052C 00                   10923 	.db	0
      00052D 00 00 0E 73          10924 	.dw	0,3699
      000531 50 33                10925 	.ascii "P3"
      000533 00                   10926 	.db	0
      000534 00 00 0E 82          10927 	.dw	0,3714
      000538 50 30 4D 31          10928 	.ascii "P0M1"
      00053C 00                   10929 	.db	0
      00053D 00 00 0E 93          10930 	.dw	0,3731
      000541 50 30 53             10931 	.ascii "P0S"
      000544 00                   10932 	.db	0
      000545 00 00 0E A3          10933 	.dw	0,3747
      000549 50 30 4D 32          10934 	.ascii "P0M2"
      00054D 00                   10935 	.db	0
      00054E 00 00 0E B4          10936 	.dw	0,3764
      000552 50 30 53 52          10937 	.ascii "P0SR"
      000556 00                   10938 	.db	0
      000557 00 00 0E C5          10939 	.dw	0,3781
      00055B 50 31 4D 31          10940 	.ascii "P1M1"
      00055F 00                   10941 	.db	0
      000560 00 00 0E D6          10942 	.dw	0,3798
      000564 50 31 53             10943 	.ascii "P1S"
      000567 00                   10944 	.db	0
      000568 00 00 0E E6          10945 	.dw	0,3814
      00056C 50 31 4D 32          10946 	.ascii "P1M2"
      000570 00                   10947 	.db	0
      000571 00 00 0E F7          10948 	.dw	0,3831
      000575 50 31 53 52          10949 	.ascii "P1SR"
      000579 00                   10950 	.db	0
      00057A 00 00 0F 08          10951 	.dw	0,3848
      00057E 50 32 53             10952 	.ascii "P2S"
      000581 00                   10953 	.db	0
      000582 00 00 0F 18          10954 	.dw	0,3864
      000586 49 50 48             10955 	.ascii "IPH"
      000589 00                   10956 	.db	0
      00058A 00 00 0F 28          10957 	.dw	0,3880
      00058E 50 57 4D 49 4E 54 43 10958 	.ascii "PWMINTC"
      000595 00                   10959 	.db	0
      000596 00 00 0F 3C          10960 	.dw	0,3900
      00059A 49 50                10961 	.ascii "IP"
      00059C 00                   10962 	.db	0
      00059D 00 00 0F 4B          10963 	.dw	0,3915
      0005A1 53 41 44 45 4E       10964 	.ascii "SADEN"
      0005A6 00                   10965 	.db	0
      0005A7 00 00 0F 5D          10966 	.dw	0,3933
      0005AB 53 41 44 45 4E 5F 31 10967 	.ascii "SADEN_1"
      0005B2 00                   10968 	.db	0
      0005B3 00 00 0F 71          10969 	.dw	0,3953
      0005B7 53 41 44 44 52 5F 31 10970 	.ascii "SADDR_1"
      0005BE 00                   10971 	.db	0
      0005BF 00 00 0F 85          10972 	.dw	0,3973
      0005C3 49 32 44 41 54       10973 	.ascii "I2DAT"
      0005C8 00                   10974 	.db	0
      0005C9 00 00 0F 97          10975 	.dw	0,3991
      0005CD 49 32 53 54 41 54    10976 	.ascii "I2STAT"
      0005D3 00                   10977 	.db	0
      0005D4 00 00 0F AA          10978 	.dw	0,4010
      0005D8 49 32 43 4C 4B       10979 	.ascii "I2CLK"
      0005DD 00                   10980 	.db	0
      0005DE 00 00 0F BC          10981 	.dw	0,4028
      0005E2 49 32 54 4F 43       10982 	.ascii "I2TOC"
      0005E7 00                   10983 	.db	0
      0005E8 00 00 0F CE          10984 	.dw	0,4046
      0005EC 49 32 43 4F 4E       10985 	.ascii "I2CON"
      0005F1 00                   10986 	.db	0
      0005F2 00 00 0F E0          10987 	.dw	0,4064
      0005F6 49 32 41 44 44 52    10988 	.ascii "I2ADDR"
      0005FC 00                   10989 	.db	0
      0005FD 00 00 0F F3          10990 	.dw	0,4083
      000601 41 44 43 52 4C       10991 	.ascii "ADCRL"
      000606 00                   10992 	.db	0
      000607 00 00 10 05          10993 	.dw	0,4101
      00060B 41 44 43 52 48       10994 	.ascii "ADCRH"
      000610 00                   10995 	.db	0
      000611 00 00 10 17          10996 	.dw	0,4119
      000615 54 33 43 4F 4E       10997 	.ascii "T3CON"
      00061A 00                   10998 	.db	0
      00061B 00 00 10 29          10999 	.dw	0,4137
      00061F 50 57 4D 34 48       11000 	.ascii "PWM4H"
      000624 00                   11001 	.db	0
      000625 00 00 10 3B          11002 	.dw	0,4155
      000629 52 4C 33             11003 	.ascii "RL3"
      00062C 00                   11004 	.db	0
      00062D 00 00 10 4B          11005 	.dw	0,4171
      000631 50 57 4D 35 48       11006 	.ascii "PWM5H"
      000636 00                   11007 	.db	0
      000637 00 00 10 5D          11008 	.dw	0,4189
      00063B 52 48 33             11009 	.ascii "RH3"
      00063E 00                   11010 	.db	0
      00063F 00 00 10 6D          11011 	.dw	0,4205
      000643 50 49 4F 43 4F 4E 31 11012 	.ascii "PIOCON1"
      00064A 00                   11013 	.db	0
      00064B 00 00 10 81          11014 	.dw	0,4225
      00064F 54 41                11015 	.ascii "TA"
      000651 00                   11016 	.db	0
      000652 00 00 10 90          11017 	.dw	0,4240
      000656 54 32 43 4F 4E       11018 	.ascii "T2CON"
      00065B 00                   11019 	.db	0
      00065C 00 00 10 A2          11020 	.dw	0,4258
      000660 54 32 4D 4F 44       11021 	.ascii "T2MOD"
      000665 00                   11022 	.db	0
      000666 00 00 10 B4          11023 	.dw	0,4276
      00066A 52 43 4D 50 32 4C    11024 	.ascii "RCMP2L"
      000670 00                   11025 	.db	0
      000671 00 00 10 C7          11026 	.dw	0,4295
      000675 52 43 4D 50 32 48    11027 	.ascii "RCMP2H"
      00067B 00                   11028 	.db	0
      00067C 00 00 10 DA          11029 	.dw	0,4314
      000680 54 4C 32             11030 	.ascii "TL2"
      000683 00                   11031 	.db	0
      000684 00 00 10 EA          11032 	.dw	0,4330
      000688 50 57 4D 34 4C       11033 	.ascii "PWM4L"
      00068D 00                   11034 	.db	0
      00068E 00 00 10 FC          11035 	.dw	0,4348
      000692 54 48 32             11036 	.ascii "TH2"
      000695 00                   11037 	.db	0
      000696 00 00 11 0C          11038 	.dw	0,4364
      00069A 50 57 4D 35 4C       11039 	.ascii "PWM5L"
      00069F 00                   11040 	.db	0
      0006A0 00 00 11 1E          11041 	.dw	0,4382
      0006A4 41 44 43 4D 50 4C    11042 	.ascii "ADCMPL"
      0006AA 00                   11043 	.db	0
      0006AB 00 00 11 31          11044 	.dw	0,4401
      0006AF 41 44 43 4D 50 48    11045 	.ascii "ADCMPH"
      0006B5 00                   11046 	.db	0
      0006B6 00 00 11 44          11047 	.dw	0,4420
      0006BA 50 53 57             11048 	.ascii "PSW"
      0006BD 00                   11049 	.db	0
      0006BE 00 00 11 54          11050 	.dw	0,4436
      0006C2 50 57 4D 50 48       11051 	.ascii "PWMPH"
      0006C7 00                   11052 	.db	0
      0006C8 00 00 11 66          11053 	.dw	0,4454
      0006CC 50 57 4D 30 48       11054 	.ascii "PWM0H"
      0006D1 00                   11055 	.db	0
      0006D2 00 00 11 78          11056 	.dw	0,4472
      0006D6 50 57 4D 31 48       11057 	.ascii "PWM1H"
      0006DB 00                   11058 	.db	0
      0006DC 00 00 11 8A          11059 	.dw	0,4490
      0006E0 50 57 4D 32 48       11060 	.ascii "PWM2H"
      0006E5 00                   11061 	.db	0
      0006E6 00 00 11 9C          11062 	.dw	0,4508
      0006EA 50 57 4D 33 48       11063 	.ascii "PWM3H"
      0006EF 00                   11064 	.db	0
      0006F0 00 00 11 AE          11065 	.dw	0,4526
      0006F4 50 4E 50             11066 	.ascii "PNP"
      0006F7 00                   11067 	.db	0
      0006F8 00 00 11 BE          11068 	.dw	0,4542
      0006FC 46 42 44             11069 	.ascii "FBD"
      0006FF 00                   11070 	.db	0
      000700 00 00 11 CE          11071 	.dw	0,4558
      000704 50 57 4D 43 4F 4E 30 11072 	.ascii "PWMCON0"
      00070B 00                   11073 	.db	0
      00070C 00 00 11 E2          11074 	.dw	0,4578
      000710 50 57 4D 50 4C       11075 	.ascii "PWMPL"
      000715 00                   11076 	.db	0
      000716 00 00 11 F4          11077 	.dw	0,4596
      00071A 50 57 4D 30 4C       11078 	.ascii "PWM0L"
      00071F 00                   11079 	.db	0
      000720 00 00 12 06          11080 	.dw	0,4614
      000724 50 57 4D 31 4C       11081 	.ascii "PWM1L"
      000729 00                   11082 	.db	0
      00072A 00 00 12 18          11083 	.dw	0,4632
      00072E 50 57 4D 32 4C       11084 	.ascii "PWM2L"
      000733 00                   11085 	.db	0
      000734 00 00 12 2A          11086 	.dw	0,4650
      000738 50 57 4D 33 4C       11087 	.ascii "PWM3L"
      00073D 00                   11088 	.db	0
      00073E 00 00 12 3C          11089 	.dw	0,4668
      000742 50 49 4F 43 4F 4E 30 11090 	.ascii "PIOCON0"
      000749 00                   11091 	.db	0
      00074A 00 00 12 50          11092 	.dw	0,4688
      00074E 50 57 4D 43 4F 4E 31 11093 	.ascii "PWMCON1"
      000755 00                   11094 	.db	0
      000756 00 00 12 64          11095 	.dw	0,4708
      00075A 41 43 43             11096 	.ascii "ACC"
      00075D 00                   11097 	.db	0
      00075E 00 00 12 74          11098 	.dw	0,4724
      000762 41 44 43 43 4F 4E 31 11099 	.ascii "ADCCON1"
      000769 00                   11100 	.db	0
      00076A 00 00 12 88          11101 	.dw	0,4744
      00076E 41 44 43 43 4F 4E 32 11102 	.ascii "ADCCON2"
      000775 00                   11103 	.db	0
      000776 00 00 12 9C          11104 	.dw	0,4764
      00077A 41 44 43 44 4C 59    11105 	.ascii "ADCDLY"
      000780 00                   11106 	.db	0
      000781 00 00 12 AF          11107 	.dw	0,4783
      000785 43 30 4C             11108 	.ascii "C0L"
      000788 00                   11109 	.db	0
      000789 00 00 12 BF          11110 	.dw	0,4799
      00078D 43 30 48             11111 	.ascii "C0H"
      000790 00                   11112 	.db	0
      000791 00 00 12 CF          11113 	.dw	0,4815
      000795 43 31 4C             11114 	.ascii "C1L"
      000798 00                   11115 	.db	0
      000799 00 00 12 DF          11116 	.dw	0,4831
      00079D 43 31 48             11117 	.ascii "C1H"
      0007A0 00                   11118 	.db	0
      0007A1 00 00 12 EF          11119 	.dw	0,4847
      0007A5 41 44 43 43 4F 4E 30 11120 	.ascii "ADCCON0"
      0007AC 00                   11121 	.db	0
      0007AD 00 00 13 03          11122 	.dw	0,4867
      0007B1 50 49 43 4F 4E       11123 	.ascii "PICON"
      0007B6 00                   11124 	.db	0
      0007B7 00 00 13 15          11125 	.dw	0,4885
      0007BB 50 49 4E 45 4E       11126 	.ascii "PINEN"
      0007C0 00                   11127 	.db	0
      0007C1 00 00 13 27          11128 	.dw	0,4903
      0007C5 50 49 50 45 4E       11129 	.ascii "PIPEN"
      0007CA 00                   11130 	.db	0
      0007CB 00 00 13 39          11131 	.dw	0,4921
      0007CF 50 49 46             11132 	.ascii "PIF"
      0007D2 00                   11133 	.db	0
      0007D3 00 00 13 49          11134 	.dw	0,4937
      0007D7 43 32 4C             11135 	.ascii "C2L"
      0007DA 00                   11136 	.db	0
      0007DB 00 00 13 59          11137 	.dw	0,4953
      0007DF 43 32 48             11138 	.ascii "C2H"
      0007E2 00                   11139 	.db	0
      0007E3 00 00 13 69          11140 	.dw	0,4969
      0007E7 45 49 50             11141 	.ascii "EIP"
      0007EA 00                   11142 	.db	0
      0007EB 00 00 13 79          11143 	.dw	0,4985
      0007EF 42                   11144 	.ascii "B"
      0007F0 00                   11145 	.db	0
      0007F1 00 00 13 87          11146 	.dw	0,4999
      0007F5 43 41 50 43 4F 4E 33 11147 	.ascii "CAPCON3"
      0007FC 00                   11148 	.db	0
      0007FD 00 00 13 9B          11149 	.dw	0,5019
      000801 43 41 50 43 4F 4E 34 11150 	.ascii "CAPCON4"
      000808 00                   11151 	.db	0
      000809 00 00 13 AF          11152 	.dw	0,5039
      00080D 53 50 43 52          11153 	.ascii "SPCR"
      000811 00                   11154 	.db	0
      000812 00 00 13 C0          11155 	.dw	0,5056
      000816 53 50 43 52 32       11156 	.ascii "SPCR2"
      00081B 00                   11157 	.db	0
      00081C 00 00 13 D2          11158 	.dw	0,5074
      000820 53 50 53 52          11159 	.ascii "SPSR"
      000824 00                   11160 	.db	0
      000825 00 00 13 E3          11161 	.dw	0,5091
      000829 53 50 44 52          11162 	.ascii "SPDR"
      00082D 00                   11163 	.db	0
      00082E 00 00 13 F4          11164 	.dw	0,5108
      000832 41 49 4E 44 49 44 53 11165 	.ascii "AINDIDS"
      000839 00                   11166 	.db	0
      00083A 00 00 14 08          11167 	.dw	0,5128
      00083E 45 49 50 48          11168 	.ascii "EIPH"
      000842 00                   11169 	.db	0
      000843 00 00 14 19          11170 	.dw	0,5145
      000847 53 43 4F 4E 5F 31    11171 	.ascii "SCON_1"
      00084D 00                   11172 	.db	0
      00084E 00 00 14 2C          11173 	.dw	0,5164
      000852 50 44 54 45 4E       11174 	.ascii "PDTEN"
      000857 00                   11175 	.db	0
      000858 00 00 14 3E          11176 	.dw	0,5182
      00085C 50 44 54 43 4E 54    11177 	.ascii "PDTCNT"
      000862 00                   11178 	.db	0
      000863 00 00 14 51          11179 	.dw	0,5201
      000867 50 4D 45 4E          11180 	.ascii "PMEN"
      00086B 00                   11181 	.db	0
      00086C 00 00 14 62          11182 	.dw	0,5218
      000870 50 4D 44             11183 	.ascii "PMD"
      000873 00                   11184 	.db	0
      000874 00 00 14 72          11185 	.dw	0,5234
      000878 45 49 50 31          11186 	.ascii "EIP1"
      00087C 00                   11187 	.db	0
      00087D 00 00 14 83          11188 	.dw	0,5251
      000881 45 49 50 48 31       11189 	.ascii "EIPH1"
      000886 00                   11190 	.db	0
      000887 00 00 14 A3          11191 	.dw	0,5283
      00088B 53 4D 30 5F 31       11192 	.ascii "SM0_1"
      000890 00                   11193 	.db	0
      000891 00 00 14 B5          11194 	.dw	0,5301
      000895 46 45 5F 31          11195 	.ascii "FE_1"
      000899 00                   11196 	.db	0
      00089A 00 00 14 C6          11197 	.dw	0,5318
      00089E 53 4D 31 5F 31       11198 	.ascii "SM1_1"
      0008A3 00                   11199 	.db	0
      0008A4 00 00 14 D8          11200 	.dw	0,5336
      0008A8 53 4D 32 5F 31       11201 	.ascii "SM2_1"
      0008AD 00                   11202 	.db	0
      0008AE 00 00 14 EA          11203 	.dw	0,5354
      0008B2 52 45 4E 5F 31       11204 	.ascii "REN_1"
      0008B7 00                   11205 	.db	0
      0008B8 00 00 14 FC          11206 	.dw	0,5372
      0008BC 54 42 38 5F 31       11207 	.ascii "TB8_1"
      0008C1 00                   11208 	.db	0
      0008C2 00 00 15 0E          11209 	.dw	0,5390
      0008C6 52 42 38 5F 31       11210 	.ascii "RB8_1"
      0008CB 00                   11211 	.db	0
      0008CC 00 00 15 20          11212 	.dw	0,5408
      0008D0 54 49 5F 31          11213 	.ascii "TI_1"
      0008D4 00                   11214 	.db	0
      0008D5 00 00 15 31          11215 	.dw	0,5425
      0008D9 52 49 5F 31          11216 	.ascii "RI_1"
      0008DD 00                   11217 	.db	0
      0008DE 00 00 15 42          11218 	.dw	0,5442
      0008E2 41 44 43 46          11219 	.ascii "ADCF"
      0008E6 00                   11220 	.db	0
      0008E7 00 00 15 53          11221 	.dw	0,5459
      0008EB 41 44 43 53          11222 	.ascii "ADCS"
      0008EF 00                   11223 	.db	0
      0008F0 00 00 15 64          11224 	.dw	0,5476
      0008F4 45 54 47 53 45 4C 31 11225 	.ascii "ETGSEL1"
      0008FB 00                   11226 	.db	0
      0008FC 00 00 15 78          11227 	.dw	0,5496
      000900 45 54 47 53 45 4C 30 11228 	.ascii "ETGSEL0"
      000907 00                   11229 	.db	0
      000908 00 00 15 8C          11230 	.dw	0,5516
      00090C 41 44 43 48 53 33    11231 	.ascii "ADCHS3"
      000912 00                   11232 	.db	0
      000913 00 00 15 9F          11233 	.dw	0,5535
      000917 41 44 43 48 53 32    11234 	.ascii "ADCHS2"
      00091D 00                   11235 	.db	0
      00091E 00 00 15 B2          11236 	.dw	0,5554
      000922 41 44 43 48 53 31    11237 	.ascii "ADCHS1"
      000928 00                   11238 	.db	0
      000929 00 00 15 C5          11239 	.dw	0,5573
      00092D 41 44 43 48 53 30    11240 	.ascii "ADCHS0"
      000933 00                   11241 	.db	0
      000934 00 00 15 D8          11242 	.dw	0,5592
      000938 50 57 4D 52 55 4E    11243 	.ascii "PWMRUN"
      00093E 00                   11244 	.db	0
      00093F 00 00 15 EB          11245 	.dw	0,5611
      000943 4C 4F 41 44          11246 	.ascii "LOAD"
      000947 00                   11247 	.db	0
      000948 00 00 15 FC          11248 	.dw	0,5628
      00094C 50 57 4D 46          11249 	.ascii "PWMF"
      000950 00                   11250 	.db	0
      000951 00 00 16 0D          11251 	.dw	0,5645
      000955 43 4C 52 50 57 4D    11252 	.ascii "CLRPWM"
      00095B 00                   11253 	.db	0
      00095C 00 00 16 20          11254 	.dw	0,5664
      000960 43 59                11255 	.ascii "CY"
      000962 00                   11256 	.db	0
      000963 00 00 16 2F          11257 	.dw	0,5679
      000967 41 43                11258 	.ascii "AC"
      000969 00                   11259 	.db	0
      00096A 00 00 16 3E          11260 	.dw	0,5694
      00096E 46 30                11261 	.ascii "F0"
      000970 00                   11262 	.db	0
      000971 00 00 16 4D          11263 	.dw	0,5709
      000975 52 53 31             11264 	.ascii "RS1"
      000978 00                   11265 	.db	0
      000979 00 00 16 5D          11266 	.dw	0,5725
      00097D 52 53 30             11267 	.ascii "RS0"
      000980 00                   11268 	.db	0
      000981 00 00 16 6D          11269 	.dw	0,5741
      000985 4F 56                11270 	.ascii "OV"
      000987 00                   11271 	.db	0
      000988 00 00 16 7C          11272 	.dw	0,5756
      00098C 50                   11273 	.ascii "P"
      00098D 00                   11274 	.db	0
      00098E 00 00 16 8A          11275 	.dw	0,5770
      000992 54 46 32             11276 	.ascii "TF2"
      000995 00                   11277 	.db	0
      000996 00 00 16 9A          11278 	.dw	0,5786
      00099A 54 52 32             11279 	.ascii "TR2"
      00099D 00                   11280 	.db	0
      00099E 00 00 16 AA          11281 	.dw	0,5802
      0009A2 43 4D 5F 52 4C 32    11282 	.ascii "CM_RL2"
      0009A8 00                   11283 	.db	0
      0009A9 00 00 16 BD          11284 	.dw	0,5821
      0009AD 49 32 43 45 4E       11285 	.ascii "I2CEN"
      0009B2 00                   11286 	.db	0
      0009B3 00 00 16 CF          11287 	.dw	0,5839
      0009B7 53 54 41             11288 	.ascii "STA"
      0009BA 00                   11289 	.db	0
      0009BB 00 00 16 DF          11290 	.dw	0,5855
      0009BF 53 54 4F             11291 	.ascii "STO"
      0009C2 00                   11292 	.db	0
      0009C3 00 00 16 EF          11293 	.dw	0,5871
      0009C7 53 49                11294 	.ascii "SI"
      0009C9 00                   11295 	.db	0
      0009CA 00 00 16 FE          11296 	.dw	0,5886
      0009CE 41 41                11297 	.ascii "AA"
      0009D0 00                   11298 	.db	0
      0009D1 00 00 17 0D          11299 	.dw	0,5901
      0009D5 49 32 43 50 58       11300 	.ascii "I2CPX"
      0009DA 00                   11301 	.db	0
      0009DB 00 00 17 1F          11302 	.dw	0,5919
      0009DF 50 41 44 43          11303 	.ascii "PADC"
      0009E3 00                   11304 	.db	0
      0009E4 00 00 17 30          11305 	.dw	0,5936
      0009E8 50 42 4F 44          11306 	.ascii "PBOD"
      0009EC 00                   11307 	.db	0
      0009ED 00 00 17 41          11308 	.dw	0,5953
      0009F1 50 53                11309 	.ascii "PS"
      0009F3 00                   11310 	.db	0
      0009F4 00 00 17 50          11311 	.dw	0,5968
      0009F8 50 54 31             11312 	.ascii "PT1"
      0009FB 00                   11313 	.db	0
      0009FC 00 00 17 60          11314 	.dw	0,5984
      000A00 50 58 31             11315 	.ascii "PX1"
      000A03 00                   11316 	.db	0
      000A04 00 00 17 70          11317 	.dw	0,6000
      000A08 50 54 30             11318 	.ascii "PT0"
      000A0B 00                   11319 	.db	0
      000A0C 00 00 17 80          11320 	.dw	0,6016
      000A10 50 58 30             11321 	.ascii "PX0"
      000A13 00                   11322 	.db	0
      000A14 00 00 17 90          11323 	.dw	0,6032
      000A18 50 33 30             11324 	.ascii "P30"
      000A1B 00                   11325 	.db	0
      000A1C 00 00 17 A0          11326 	.dw	0,6048
      000A20 45 41                11327 	.ascii "EA"
      000A22 00                   11328 	.db	0
      000A23 00 00 17 AF          11329 	.dw	0,6063
      000A27 45 41 44 43          11330 	.ascii "EADC"
      000A2B 00                   11331 	.db	0
      000A2C 00 00 17 C0          11332 	.dw	0,6080
      000A30 45 42 4F 44          11333 	.ascii "EBOD"
      000A34 00                   11334 	.db	0
      000A35 00 00 17 D1          11335 	.dw	0,6097
      000A39 45 53                11336 	.ascii "ES"
      000A3B 00                   11337 	.db	0
      000A3C 00 00 17 E0          11338 	.dw	0,6112
      000A40 45 54 31             11339 	.ascii "ET1"
      000A43 00                   11340 	.db	0
      000A44 00 00 17 F0          11341 	.dw	0,6128
      000A48 45 58 31             11342 	.ascii "EX1"
      000A4B 00                   11343 	.db	0
      000A4C 00 00 18 00          11344 	.dw	0,6144
      000A50 45 54 30             11345 	.ascii "ET0"
      000A53 00                   11346 	.db	0
      000A54 00 00 18 10          11347 	.dw	0,6160
      000A58 45 58 30             11348 	.ascii "EX0"
      000A5B 00                   11349 	.db	0
      000A5C 00 00 18 20          11350 	.dw	0,6176
      000A60 50 32 30             11351 	.ascii "P20"
      000A63 00                   11352 	.db	0
      000A64 00 00 18 30          11353 	.dw	0,6192
      000A68 53 4D 30             11354 	.ascii "SM0"
      000A6B 00                   11355 	.db	0
      000A6C 00 00 18 40          11356 	.dw	0,6208
      000A70 46 45                11357 	.ascii "FE"
      000A72 00                   11358 	.db	0
      000A73 00 00 18 4F          11359 	.dw	0,6223
      000A77 53 4D 31             11360 	.ascii "SM1"
      000A7A 00                   11361 	.db	0
      000A7B 00 00 18 5F          11362 	.dw	0,6239
      000A7F 53 4D 32             11363 	.ascii "SM2"
      000A82 00                   11364 	.db	0
      000A83 00 00 18 6F          11365 	.dw	0,6255
      000A87 52 45 4E             11366 	.ascii "REN"
      000A8A 00                   11367 	.db	0
      000A8B 00 00 18 7F          11368 	.dw	0,6271
      000A8F 54 42 38             11369 	.ascii "TB8"
      000A92 00                   11370 	.db	0
      000A93 00 00 18 8F          11371 	.dw	0,6287
      000A97 52 42 38             11372 	.ascii "RB8"
      000A9A 00                   11373 	.db	0
      000A9B 00 00 18 9F          11374 	.dw	0,6303
      000A9F 54 49                11375 	.ascii "TI"
      000AA1 00                   11376 	.db	0
      000AA2 00 00 18 AE          11377 	.dw	0,6318
      000AA6 52 49                11378 	.ascii "RI"
      000AA8 00                   11379 	.db	0
      000AA9 00 00 18 BD          11380 	.dw	0,6333
      000AAD 50 31 37             11381 	.ascii "P17"
      000AB0 00                   11382 	.db	0
      000AB1 00 00 18 CD          11383 	.dw	0,6349
      000AB5 50 31 36             11384 	.ascii "P16"
      000AB8 00                   11385 	.db	0
      000AB9 00 00 18 DD          11386 	.dw	0,6365
      000ABD 54 58 44 5F 31       11387 	.ascii "TXD_1"
      000AC2 00                   11388 	.db	0
      000AC3 00 00 18 EF          11389 	.dw	0,6383
      000AC7 50 31 35             11390 	.ascii "P15"
      000ACA 00                   11391 	.db	0
      000ACB 00 00 18 FF          11392 	.dw	0,6399
      000ACF 50 31 34             11393 	.ascii "P14"
      000AD2 00                   11394 	.db	0
      000AD3 00 00 19 0F          11395 	.dw	0,6415
      000AD7 53 44 41             11396 	.ascii "SDA"
      000ADA 00                   11397 	.db	0
      000ADB 00 00 19 1F          11398 	.dw	0,6431
      000ADF 50 31 33             11399 	.ascii "P13"
      000AE2 00                   11400 	.db	0
      000AE3 00 00 19 2F          11401 	.dw	0,6447
      000AE7 53 43 4C             11402 	.ascii "SCL"
      000AEA 00                   11403 	.db	0
      000AEB 00 00 19 3F          11404 	.dw	0,6463
      000AEF 50 31 32             11405 	.ascii "P12"
      000AF2 00                   11406 	.db	0
      000AF3 00 00 19 4F          11407 	.dw	0,6479
      000AF7 50 31 31             11408 	.ascii "P11"
      000AFA 00                   11409 	.db	0
      000AFB 00 00 19 5F          11410 	.dw	0,6495
      000AFF 50 31 30             11411 	.ascii "P10"
      000B02 00                   11412 	.db	0
      000B03 00 00 19 6F          11413 	.dw	0,6511
      000B07 54 46 31             11414 	.ascii "TF1"
      000B0A 00                   11415 	.db	0
      000B0B 00 00 19 7F          11416 	.dw	0,6527
      000B0F 54 52 31             11417 	.ascii "TR1"
      000B12 00                   11418 	.db	0
      000B13 00 00 19 8F          11419 	.dw	0,6543
      000B17 54 46 30             11420 	.ascii "TF0"
      000B1A 00                   11421 	.db	0
      000B1B 00 00 19 9F          11422 	.dw	0,6559
      000B1F 54 52 30             11423 	.ascii "TR0"
      000B22 00                   11424 	.db	0
      000B23 00 00 19 AF          11425 	.dw	0,6575
      000B27 49 45 31             11426 	.ascii "IE1"
      000B2A 00                   11427 	.db	0
      000B2B 00 00 19 BF          11428 	.dw	0,6591
      000B2F 49 54 31             11429 	.ascii "IT1"
      000B32 00                   11430 	.db	0
      000B33 00 00 19 CF          11431 	.dw	0,6607
      000B37 49 45 30             11432 	.ascii "IE0"
      000B3A 00                   11433 	.db	0
      000B3B 00 00 19 DF          11434 	.dw	0,6623
      000B3F 49 54 30             11435 	.ascii "IT0"
      000B42 00                   11436 	.db	0
      000B43 00 00 19 EF          11437 	.dw	0,6639
      000B47 50 30 37             11438 	.ascii "P07"
      000B4A 00                   11439 	.db	0
      000B4B 00 00 19 FF          11440 	.dw	0,6655
      000B4F 52 58 44             11441 	.ascii "RXD"
      000B52 00                   11442 	.db	0
      000B53 00 00 1A 0F          11443 	.dw	0,6671
      000B57 50 30 36             11444 	.ascii "P06"
      000B5A 00                   11445 	.db	0
      000B5B 00 00 1A 1F          11446 	.dw	0,6687
      000B5F 54 58 44             11447 	.ascii "TXD"
      000B62 00                   11448 	.db	0
      000B63 00 00 1A 2F          11449 	.dw	0,6703
      000B67 50 30 35             11450 	.ascii "P05"
      000B6A 00                   11451 	.db	0
      000B6B 00 00 1A 3F          11452 	.dw	0,6719
      000B6F 50 30 34             11453 	.ascii "P04"
      000B72 00                   11454 	.db	0
      000B73 00 00 1A 4F          11455 	.dw	0,6735
      000B77 53 54 41 44 43       11456 	.ascii "STADC"
      000B7C 00                   11457 	.db	0
      000B7D 00 00 1A 61          11458 	.dw	0,6753
      000B81 50 30 33             11459 	.ascii "P03"
      000B84 00                   11460 	.db	0
      000B85 00 00 1A 71          11461 	.dw	0,6769
      000B89 50 30 32             11462 	.ascii "P02"
      000B8C 00                   11463 	.db	0
      000B8D 00 00 1A 81          11464 	.dw	0,6785
      000B91 52 58 44 5F 31       11465 	.ascii "RXD_1"
      000B96 00                   11466 	.db	0
      000B97 00 00 1A 93          11467 	.dw	0,6803
      000B9B 50 30 31             11468 	.ascii "P01"
      000B9E 00                   11469 	.db	0
      000B9F 00 00 1A A3          11470 	.dw	0,6819
      000BA3 4D 49 53 4F          11471 	.ascii "MISO"
      000BA7 00                   11472 	.db	0
      000BA8 00 00 1A B4          11473 	.dw	0,6836
      000BAC 50 30 30             11474 	.ascii "P00"
      000BAF 00                   11475 	.db	0
      000BB0 00 00 1A C4          11476 	.dw	0,6852
      000BB4 4D 4F 53 49          11477 	.ascii "MOSI"
      000BB8 00                   11478 	.db	0
      000BB9 00 00 1A F4          11479 	.dw	0,6900
      000BBD 6D 61 78 5F 61 6D 70 11480 	.ascii "max_amp"
      000BC4 00                   11481 	.db	0
      000BC5 00 00 1B 08          11482 	.dw	0,6920
      000BC9 6D 69 6E 5F 61 6D 70 11483 	.ascii "min_amp"
      000BD0 00                   11484 	.db	0
      000BD1 00 00 1B 29          11485 	.dw	0,6953
      000BD5 66 6C 61 73 68 69 6E 11486 	.ascii "flashing"
             67
      000BDD 00                   11487 	.db	0
      000BDE 00 00 1B 3E          11488 	.dw	0,6974
      000BE2 74 65 6D 70 5F 63 6F 11489 	.ascii "temp_controlling"
             6E 74 72 6F 6C 6C 69
             6E 67
      000BF2 00                   11490 	.db	0
      000BF3 00 00 1B 5B          11491 	.dw	0,7003
      000BF7 6E 65 78 74 5F 6D 6F 11492 	.ascii "next_mode"
             64 65
      000C00 00                   11493 	.db	0
      000C01 00 00 00 00          11494 	.dw	0,0
      000C05                      11495 Ldebug_pubnames_end:
                                  11496 
                                  11497 	.area .debug_frame (NOLOAD)
      000000 00 00                11498 	.dw	0
      000002 00 10                11499 	.dw	Ldebug_CIE0_end-Ldebug_CIE0_start
      000004                      11500 Ldebug_CIE0_start:
      000004 FF FF                11501 	.dw	0xffff
      000006 FF FF                11502 	.dw	0xffff
      000008 01                   11503 	.db	1
      000009 00                   11504 	.db	0
      00000A 01                   11505 	.uleb128	1
      00000B 01                   11506 	.sleb128	1
      00000C 09                   11507 	.db	9
      00000D 0C                   11508 	.db	12
      00000E 16                   11509 	.uleb128	22
      00000F 02                   11510 	.uleb128	2
      000010 89                   11511 	.db	137
      000011 01                   11512 	.uleb128	1
      000012 00                   11513 	.db	0
      000013 00                   11514 	.db	0
      000014                      11515 Ldebug_CIE0_end:
      000014 00 00 00 14          11516 	.dw	0,20
      000018 00 00 00 00          11517 	.dw	0,(Ldebug_CIE0_start-4)
      00001C 00 00 10 43          11518 	.dw	0,(Smain$main$532)	;initial loc
      000020 00 00 01 3A          11519 	.dw	0,Smain$main$586-Smain$main$532
      000024 01                   11520 	.db	1
      000025 00 00 10 43          11521 	.dw	0,(Smain$main$532)
      000029 0E                   11522 	.db	14
      00002A 02                   11523 	.uleb128	2
      00002B 00                   11524 	.db	0
                                  11525 
                                  11526 	.area .debug_frame (NOLOAD)
      00002C 00 00                11527 	.dw	0
      00002E 00 10                11528 	.dw	Ldebug_CIE1_end-Ldebug_CIE1_start
      000030                      11529 Ldebug_CIE1_start:
      000030 FF FF                11530 	.dw	0xffff
      000032 FF FF                11531 	.dw	0xffff
      000034 01                   11532 	.db	1
      000035 00                   11533 	.db	0
      000036 01                   11534 	.uleb128	1
      000037 01                   11535 	.sleb128	1
      000038 09                   11536 	.db	9
      000039 0C                   11537 	.db	12
      00003A 16                   11538 	.uleb128	22
      00003B 02                   11539 	.uleb128	2
      00003C 89                   11540 	.db	137
      00003D 01                   11541 	.uleb128	1
      00003E 00                   11542 	.db	0
      00003F 00                   11543 	.db	0
      000040                      11544 Ldebug_CIE1_end:
      000040 00 00 00 14          11545 	.dw	0,20
      000044 00 00 00 2C          11546 	.dw	0,(Ldebug_CIE1_start-4)
      000048 00 00 10 2F          11547 	.dw	0,(Smain$wdt_clear$521)	;initial loc
      00004C 00 00 00 14          11548 	.dw	0,Smain$wdt_clear$530-Smain$wdt_clear$521
      000050 01                   11549 	.db	1
      000051 00 00 10 2F          11550 	.dw	0,(Smain$wdt_clear$521)
      000055 0E                   11551 	.db	14
      000056 02                   11552 	.uleb128	2
      000057 00                   11553 	.db	0
                                  11554 
                                  11555 	.area .debug_frame (NOLOAD)
      000058 00 00                11556 	.dw	0
      00005A 00 10                11557 	.dw	Ldebug_CIE2_end-Ldebug_CIE2_start
      00005C                      11558 Ldebug_CIE2_start:
      00005C FF FF                11559 	.dw	0xffff
      00005E FF FF                11560 	.dw	0xffff
      000060 01                   11561 	.db	1
      000061 00                   11562 	.db	0
      000062 01                   11563 	.uleb128	1
      000063 01                   11564 	.sleb128	1
      000064 09                   11565 	.db	9
      000065 0C                   11566 	.db	12
      000066 16                   11567 	.uleb128	22
      000067 02                   11568 	.uleb128	2
      000068 89                   11569 	.db	137
      000069 01                   11570 	.uleb128	1
      00006A 00                   11571 	.db	0
      00006B 00                   11572 	.db	0
      00006C                      11573 Ldebug_CIE2_end:
      00006C 00 00 00 14          11574 	.dw	0,20
      000070 00 00 00 58          11575 	.dw	0,(Ldebug_CIE2_start-4)
      000074 00 00 10 12          11576 	.dw	0,(Smain$wdt_init$507)	;initial loc
      000078 00 00 00 1D          11577 	.dw	0,Smain$wdt_init$519-Smain$wdt_init$507
      00007C 01                   11578 	.db	1
      00007D 00 00 10 12          11579 	.dw	0,(Smain$wdt_init$507)
      000081 0E                   11580 	.db	14
      000082 02                   11581 	.uleb128	2
      000083 00                   11582 	.db	0
                                  11583 
                                  11584 	.area .debug_frame (NOLOAD)
      000084 00 00                11585 	.dw	0
      000086 00 10                11586 	.dw	Ldebug_CIE3_end-Ldebug_CIE3_start
      000088                      11587 Ldebug_CIE3_start:
      000088 FF FF                11588 	.dw	0xffff
      00008A FF FF                11589 	.dw	0xffff
      00008C 01                   11590 	.db	1
      00008D 00                   11591 	.db	0
      00008E 01                   11592 	.uleb128	1
      00008F 01                   11593 	.sleb128	1
      000090 09                   11594 	.db	9
      000091 0C                   11595 	.db	12
      000092 16                   11596 	.uleb128	22
      000093 02                   11597 	.uleb128	2
      000094 89                   11598 	.db	137
      000095 01                   11599 	.uleb128	1
      000096 00                   11600 	.db	0
      000097 00                   11601 	.db	0
      000098                      11602 Ldebug_CIE3_end:
      000098 00 00 00 14          11603 	.dw	0,20
      00009C 00 00 00 84          11604 	.dw	0,(Ldebug_CIE3_start-4)
      0000A0 00 00 0F 21          11605 	.dw	0,(Smain$control_loop$469)	;initial loc
      0000A4 00 00 00 F1          11606 	.dw	0,Smain$control_loop$505-Smain$control_loop$469
      0000A8 01                   11607 	.db	1
      0000A9 00 00 0F 21          11608 	.dw	0,(Smain$control_loop$469)
      0000AD 0E                   11609 	.db	14
      0000AE 02                   11610 	.uleb128	2
      0000AF 00                   11611 	.db	0
                                  11612 
                                  11613 	.area .debug_frame (NOLOAD)
      0000B0 00 00                11614 	.dw	0
      0000B2 00 10                11615 	.dw	Ldebug_CIE4_end-Ldebug_CIE4_start
      0000B4                      11616 Ldebug_CIE4_start:
      0000B4 FF FF                11617 	.dw	0xffff
      0000B6 FF FF                11618 	.dw	0xffff
      0000B8 01                   11619 	.db	1
      0000B9 00                   11620 	.db	0
      0000BA 01                   11621 	.uleb128	1
      0000BB 01                   11622 	.sleb128	1
      0000BC 09                   11623 	.db	9
      0000BD 0C                   11624 	.db	12
      0000BE 16                   11625 	.uleb128	22
      0000BF 02                   11626 	.uleb128	2
      0000C0 89                   11627 	.db	137
      0000C1 01                   11628 	.uleb128	1
      0000C2 00                   11629 	.db	0
      0000C3 00                   11630 	.db	0
      0000C4                      11631 Ldebug_CIE4_end:
      0000C4 00 00 00 14          11632 	.dw	0,20
      0000C8 00 00 00 B0          11633 	.dw	0,(Ldebug_CIE4_start-4)
      0000CC 00 00 0D FE          11634 	.dw	0,(Smain$mode_stable_control$443)	;initial loc
      0000D0 00 00 01 23          11635 	.dw	0,Smain$mode_stable_control$467-Smain$mode_stable_control$443
      0000D4 01                   11636 	.db	1
      0000D5 00 00 0D FE          11637 	.dw	0,(Smain$mode_stable_control$443)
      0000D9 0E                   11638 	.db	14
      0000DA 02                   11639 	.uleb128	2
      0000DB 00                   11640 	.db	0
                                  11641 
                                  11642 	.area .debug_frame (NOLOAD)
      0000DC 00 00                11643 	.dw	0
      0000DE 00 10                11644 	.dw	Ldebug_CIE5_end-Ldebug_CIE5_start
      0000E0                      11645 Ldebug_CIE5_start:
      0000E0 FF FF                11646 	.dw	0xffff
      0000E2 FF FF                11647 	.dw	0xffff
      0000E4 01                   11648 	.db	1
      0000E5 00                   11649 	.db	0
      0000E6 01                   11650 	.uleb128	1
      0000E7 01                   11651 	.sleb128	1
      0000E8 09                   11652 	.db	9
      0000E9 0C                   11653 	.db	12
      0000EA 16                   11654 	.uleb128	22
      0000EB 02                   11655 	.uleb128	2
      0000EC 89                   11656 	.db	137
      0000ED 01                   11657 	.uleb128	1
      0000EE 00                   11658 	.db	0
      0000EF 00                   11659 	.db	0
      0000F0                      11660 Ldebug_CIE5_end:
      0000F0 00 00 00 14          11661 	.dw	0,20
      0000F4 00 00 00 DC          11662 	.dw	0,(Ldebug_CIE5_start-4)
      0000F8 00 00 0D D0          11663 	.dw	0,(Smain$is_stable$429)	;initial loc
      0000FC 00 00 00 2E          11664 	.dw	0,Smain$is_stable$441-Smain$is_stable$429
      000100 01                   11665 	.db	1
      000101 00 00 0D D0          11666 	.dw	0,(Smain$is_stable$429)
      000105 0E                   11667 	.db	14
      000106 02                   11668 	.uleb128	2
      000107 00                   11669 	.db	0
                                  11670 
                                  11671 	.area .debug_frame (NOLOAD)
      000108 00 00                11672 	.dw	0
      00010A 00 10                11673 	.dw	Ldebug_CIE6_end-Ldebug_CIE6_start
      00010C                      11674 Ldebug_CIE6_start:
      00010C FF FF                11675 	.dw	0xffff
      00010E FF FF                11676 	.dw	0xffff
      000110 01                   11677 	.db	1
      000111 00                   11678 	.db	0
      000112 01                   11679 	.uleb128	1
      000113 01                   11680 	.sleb128	1
      000114 09                   11681 	.db	9
      000115 0C                   11682 	.db	12
      000116 16                   11683 	.uleb128	22
      000117 02                   11684 	.uleb128	2
      000118 89                   11685 	.db	137
      000119 01                   11686 	.uleb128	1
      00011A 00                   11687 	.db	0
      00011B 00                   11688 	.db	0
      00011C                      11689 Ldebug_CIE6_end:
      00011C 00 00 00 14          11690 	.dw	0,20
      000120 00 00 01 08          11691 	.dw	0,(Ldebug_CIE6_start-4)
      000124 00 00 0B B3          11692 	.dw	0,(Smain$mode_changing_control$351)	;initial loc
      000128 00 00 02 1D          11693 	.dw	0,Smain$mode_changing_control$427-Smain$mode_changing_control$351
      00012C 01                   11694 	.db	1
      00012D 00 00 0B B3          11695 	.dw	0,(Smain$mode_changing_control$351)
      000131 0E                   11696 	.db	14
      000132 02                   11697 	.uleb128	2
      000133 00                   11698 	.db	0
                                  11699 
                                  11700 	.area .debug_frame (NOLOAD)
      000134 00 00                11701 	.dw	0
      000136 00 10                11702 	.dw	Ldebug_CIE7_end-Ldebug_CIE7_start
      000138                      11703 Ldebug_CIE7_start:
      000138 FF FF                11704 	.dw	0xffff
      00013A FF FF                11705 	.dw	0xffff
      00013C 01                   11706 	.db	1
      00013D 00                   11707 	.db	0
      00013E 01                   11708 	.uleb128	1
      00013F 01                   11709 	.sleb128	1
      000140 09                   11710 	.db	9
      000141 0C                   11711 	.db	12
      000142 16                   11712 	.uleb128	22
      000143 02                   11713 	.uleb128	2
      000144 89                   11714 	.db	137
      000145 01                   11715 	.uleb128	1
      000146 00                   11716 	.db	0
      000147 00                   11717 	.db	0
      000148                      11718 Ldebug_CIE7_end:
      000148 00 00 00 14          11719 	.dw	0,20
      00014C 00 00 01 34          11720 	.dw	0,(Ldebug_CIE7_start-4)
      000150 00 00 0B 7C          11721 	.dw	0,(Smain$activate_leds$340)	;initial loc
      000154 00 00 00 37          11722 	.dw	0,Smain$activate_leds$349-Smain$activate_leds$340
      000158 01                   11723 	.db	1
      000159 00 00 0B 7C          11724 	.dw	0,(Smain$activate_leds$340)
      00015D 0E                   11725 	.db	14
      00015E 02                   11726 	.uleb128	2
      00015F 00                   11727 	.db	0
                                  11728 
                                  11729 	.area .debug_frame (NOLOAD)
      000160 00 00                11730 	.dw	0
      000162 00 10                11731 	.dw	Ldebug_CIE8_end-Ldebug_CIE8_start
      000164                      11732 Ldebug_CIE8_start:
      000164 FF FF                11733 	.dw	0xffff
      000166 FF FF                11734 	.dw	0xffff
      000168 01                   11735 	.db	1
      000169 00                   11736 	.db	0
      00016A 01                   11737 	.uleb128	1
      00016B 01                   11738 	.sleb128	1
      00016C 09                   11739 	.db	9
      00016D 0C                   11740 	.db	12
      00016E 16                   11741 	.uleb128	22
      00016F 02                   11742 	.uleb128	2
      000170 89                   11743 	.db	137
      000171 01                   11744 	.uleb128	1
      000172 00                   11745 	.db	0
      000173 00                   11746 	.db	0
      000174                      11747 Ldebug_CIE8_end:
      000174 00 00 00 14          11748 	.dw	0,20
      000178 00 00 01 60          11749 	.dw	0,(Ldebug_CIE8_start-4)
      00017C 00 00 0B 45          11750 	.dw	0,(Smain$stop_leds$327)	;initial loc
      000180 00 00 00 37          11751 	.dw	0,Smain$stop_leds$338-Smain$stop_leds$327
      000184 01                   11752 	.db	1
      000185 00 00 0B 45          11753 	.dw	0,(Smain$stop_leds$327)
      000189 0E                   11754 	.db	14
      00018A 02                   11755 	.uleb128	2
      00018B 00                   11756 	.db	0
                                  11757 
                                  11758 	.area .debug_frame (NOLOAD)
      00018C 00 00                11759 	.dw	0
      00018E 00 10                11760 	.dw	Ldebug_CIE9_end-Ldebug_CIE9_start
      000190                      11761 Ldebug_CIE9_start:
      000190 FF FF                11762 	.dw	0xffff
      000192 FF FF                11763 	.dw	0xffff
      000194 01                   11764 	.db	1
      000195 00                   11765 	.db	0
      000196 01                   11766 	.uleb128	1
      000197 01                   11767 	.sleb128	1
      000198 09                   11768 	.db	9
      000199 0C                   11769 	.db	12
      00019A 16                   11770 	.uleb128	22
      00019B 02                   11771 	.uleb128	2
      00019C 89                   11772 	.db	137
      00019D 01                   11773 	.uleb128	1
      00019E 00                   11774 	.db	0
      00019F 00                   11775 	.db	0
      0001A0                      11776 Ldebug_CIE9_end:
      0001A0 00 00 00 14          11777 	.dw	0,20
      0001A4 00 00 01 8C          11778 	.dw	0,(Ldebug_CIE9_start-4)
      0001A8 00 00 0A 66          11779 	.dw	0,(Smain$process_button$295)	;initial loc
      0001AC 00 00 00 DF          11780 	.dw	0,Smain$process_button$325-Smain$process_button$295
      0001B0 01                   11781 	.db	1
      0001B1 00 00 0A 66          11782 	.dw	0,(Smain$process_button$295)
      0001B5 0E                   11783 	.db	14
      0001B6 02                   11784 	.uleb128	2
      0001B7 00                   11785 	.db	0
                                  11786 
                                  11787 	.area .debug_frame (NOLOAD)
      0001B8 00 00                11788 	.dw	0
      0001BA 00 10                11789 	.dw	Ldebug_CIE10_end-Ldebug_CIE10_start
      0001BC                      11790 Ldebug_CIE10_start:
      0001BC FF FF                11791 	.dw	0xffff
      0001BE FF FF                11792 	.dw	0xffff
      0001C0 01                   11793 	.db	1
      0001C1 00                   11794 	.db	0
      0001C2 01                   11795 	.uleb128	1
      0001C3 01                   11796 	.sleb128	1
      0001C4 09                   11797 	.db	9
      0001C5 0C                   11798 	.db	12
      0001C6 16                   11799 	.uleb128	22
      0001C7 02                   11800 	.uleb128	2
      0001C8 89                   11801 	.db	137
      0001C9 01                   11802 	.uleb128	1
      0001CA 00                   11803 	.db	0
      0001CB 00                   11804 	.db	0
      0001CC                      11805 Ldebug_CIE10_end:
      0001CC 00 00 00 14          11806 	.dw	0,20
      0001D0 00 00 01 B8          11807 	.dw	0,(Ldebug_CIE10_start-4)
      0001D4 00 00 09 18          11808 	.dw	0,(Smain$process_uart$242)	;initial loc
      0001D8 00 00 01 4E          11809 	.dw	0,Smain$process_uart$293-Smain$process_uart$242
      0001DC 01                   11810 	.db	1
      0001DD 00 00 09 18          11811 	.dw	0,(Smain$process_uart$242)
      0001E1 0E                   11812 	.db	14
      0001E2 02                   11813 	.uleb128	2
      0001E3 00                   11814 	.db	0
                                  11815 
                                  11816 	.area .debug_frame (NOLOAD)
      0001E4 00 00                11817 	.dw	0
      0001E6 00 10                11818 	.dw	Ldebug_CIE11_end-Ldebug_CIE11_start
      0001E8                      11819 Ldebug_CIE11_start:
      0001E8 FF FF                11820 	.dw	0xffff
      0001EA FF FF                11821 	.dw	0xffff
      0001EC 01                   11822 	.db	1
      0001ED 00                   11823 	.db	0
      0001EE 01                   11824 	.uleb128	1
      0001EF 01                   11825 	.sleb128	1
      0001F0 09                   11826 	.db	9
      0001F1 0C                   11827 	.db	12
      0001F2 16                   11828 	.uleb128	22
      0001F3 02                   11829 	.uleb128	2
      0001F4 89                   11830 	.db	137
      0001F5 01                   11831 	.uleb128	1
      0001F6 00                   11832 	.db	0
      0001F7 00                   11833 	.db	0
      0001F8                      11834 Ldebug_CIE11_end:
      0001F8 00 00 00 14          11835 	.dw	0,20
      0001FC 00 00 01 E4          11836 	.dw	0,(Ldebug_CIE11_start-4)
      000200 00 00 09 0A          11837 	.dw	0,(Smain$toNextMode$236)	;initial loc
      000204 00 00 00 0E          11838 	.dw	0,Smain$toNextMode$240-Smain$toNextMode$236
      000208 01                   11839 	.db	1
      000209 00 00 09 0A          11840 	.dw	0,(Smain$toNextMode$236)
      00020D 0E                   11841 	.db	14
      00020E 02                   11842 	.uleb128	2
      00020F 00                   11843 	.db	0
                                  11844 
                                  11845 	.area .debug_frame (NOLOAD)
      000210 00 00                11846 	.dw	0
      000212 00 10                11847 	.dw	Ldebug_CIE12_end-Ldebug_CIE12_start
      000214                      11848 Ldebug_CIE12_start:
      000214 FF FF                11849 	.dw	0xffff
      000216 FF FF                11850 	.dw	0xffff
      000218 01                   11851 	.db	1
      000219 00                   11852 	.db	0
      00021A 01                   11853 	.uleb128	1
      00021B 01                   11854 	.sleb128	1
      00021C 09                   11855 	.db	9
      00021D 0C                   11856 	.db	12
      00021E 16                   11857 	.uleb128	22
      00021F 02                   11858 	.uleb128	2
      000220 89                   11859 	.db	137
      000221 01                   11860 	.uleb128	1
      000222 00                   11861 	.db	0
      000223 00                   11862 	.db	0
      000224                      11863 Ldebug_CIE12_end:
      000224 00 00 00 14          11864 	.dw	0,20
      000228 00 00 02 10          11865 	.dw	0,(Ldebug_CIE12_start-4)
      00022C 00 00 07 6D          11866 	.dw	0,(Smain$changeMode$190)	;initial loc
      000230 00 00 01 9D          11867 	.dw	0,Smain$changeMode$234-Smain$changeMode$190
      000234 01                   11868 	.db	1
      000235 00 00 07 6D          11869 	.dw	0,(Smain$changeMode$190)
      000239 0E                   11870 	.db	14
      00023A 02                   11871 	.uleb128	2
      00023B 00                   11872 	.db	0
                                  11873 
                                  11874 	.area .debug_frame (NOLOAD)
      00023C 00 00                11875 	.dw	0
      00023E 00 10                11876 	.dw	Ldebug_CIE13_end-Ldebug_CIE13_start
      000240                      11877 Ldebug_CIE13_start:
      000240 FF FF                11878 	.dw	0xffff
      000242 FF FF                11879 	.dw	0xffff
      000244 01                   11880 	.db	1
      000245 00                   11881 	.db	0
      000246 01                   11882 	.uleb128	1
      000247 01                   11883 	.sleb128	1
      000248 09                   11884 	.db	9
      000249 0C                   11885 	.db	12
      00024A 16                   11886 	.uleb128	22
      00024B 02                   11887 	.uleb128	2
      00024C 89                   11888 	.db	137
      00024D 01                   11889 	.uleb128	1
      00024E 00                   11890 	.db	0
      00024F 00                   11891 	.db	0
      000250                      11892 Ldebug_CIE13_end:
      000250 00 00 00 14          11893 	.dw	0,20
      000254 00 00 02 3C          11894 	.dw	0,(Ldebug_CIE13_start-4)
      000258 00 00 06 50          11895 	.dw	0,(Smain$target_amp$171)	;initial loc
      00025C 00 00 01 1D          11896 	.dw	0,Smain$target_amp$188-Smain$target_amp$171
      000260 01                   11897 	.db	1
      000261 00 00 06 50          11898 	.dw	0,(Smain$target_amp$171)
      000265 0E                   11899 	.db	14
      000266 02                   11900 	.uleb128	2
      000267 00                   11901 	.db	0
                                  11902 
                                  11903 	.area .debug_frame (NOLOAD)
      000268 00 00                11904 	.dw	0
      00026A 00 10                11905 	.dw	Ldebug_CIE14_end-Ldebug_CIE14_start
      00026C                      11906 Ldebug_CIE14_start:
      00026C FF FF                11907 	.dw	0xffff
      00026E FF FF                11908 	.dw	0xffff
      000270 01                   11909 	.db	1
      000271 00                   11910 	.db	0
      000272 01                   11911 	.uleb128	1
      000273 01                   11912 	.sleb128	1
      000274 09                   11913 	.db	9
      000275 0C                   11914 	.db	12
      000276 16                   11915 	.uleb128	22
      000277 02                   11916 	.uleb128	2
      000278 89                   11917 	.db	137
      000279 01                   11918 	.uleb128	1
      00027A 00                   11919 	.db	0
      00027B 00                   11920 	.db	0
      00027C                      11921 Ldebug_CIE14_end:
      00027C 00 00 00 14          11922 	.dw	0,20
      000280 00 00 02 68          11923 	.dw	0,(Ldebug_CIE14_start-4)
      000284 00 00 05 EB          11924 	.dw	0,(Smain$avg_amp$159)	;initial loc
      000288 00 00 00 65          11925 	.dw	0,Smain$avg_amp$169-Smain$avg_amp$159
      00028C 01                   11926 	.db	1
      00028D 00 00 05 EB          11927 	.dw	0,(Smain$avg_amp$159)
      000291 0E                   11928 	.db	14
      000292 02                   11929 	.uleb128	2
      000293 00                   11930 	.db	0
                                  11931 
                                  11932 	.area .debug_frame (NOLOAD)
      000294 00 00                11933 	.dw	0
      000296 00 10                11934 	.dw	Ldebug_CIE15_end-Ldebug_CIE15_start
      000298                      11935 Ldebug_CIE15_start:
      000298 FF FF                11936 	.dw	0xffff
      00029A FF FF                11937 	.dw	0xffff
      00029C 01                   11938 	.db	1
      00029D 00                   11939 	.db	0
      00029E 01                   11940 	.uleb128	1
      00029F 01                   11941 	.sleb128	1
      0002A0 09                   11942 	.db	9
      0002A1 0C                   11943 	.db	12
      0002A2 16                   11944 	.uleb128	22
      0002A3 02                   11945 	.uleb128	2
      0002A4 89                   11946 	.db	137
      0002A5 01                   11947 	.uleb128	1
      0002A6 00                   11948 	.db	0
      0002A7 00                   11949 	.db	0
      0002A8                      11950 Ldebug_CIE15_end:
      0002A8 00 00 00 14          11951 	.dw	0,20
      0002AC 00 00 02 94          11952 	.dw	0,(Ldebug_CIE15_start-4)
      0002B0 00 00 05 AB          11953 	.dw	0,(Smain$has_high_beam$153)	;initial loc
      0002B4 00 00 00 40          11954 	.dw	0,Smain$has_high_beam$157-Smain$has_high_beam$153
      0002B8 01                   11955 	.db	1
      0002B9 00 00 05 AB          11956 	.dw	0,(Smain$has_high_beam$153)
      0002BD 0E                   11957 	.db	14
      0002BE 02                   11958 	.uleb128	2
      0002BF 00                   11959 	.db	0
                                  11960 
                                  11961 	.area .debug_frame (NOLOAD)
      0002C0 00 00                11962 	.dw	0
      0002C2 00 10                11963 	.dw	Ldebug_CIE16_end-Ldebug_CIE16_start
      0002C4                      11964 Ldebug_CIE16_start:
      0002C4 FF FF                11965 	.dw	0xffff
      0002C6 FF FF                11966 	.dw	0xffff
      0002C8 01                   11967 	.db	1
      0002C9 00                   11968 	.db	0
      0002CA 01                   11969 	.uleb128	1
      0002CB 01                   11970 	.sleb128	1
      0002CC 09                   11971 	.db	9
      0002CD 0C                   11972 	.db	12
      0002CE 16                   11973 	.uleb128	22
      0002CF 02                   11974 	.uleb128	2
      0002D0 89                   11975 	.db	137
      0002D1 01                   11976 	.uleb128	1
      0002D2 00                   11977 	.db	0
      0002D3 00                   11978 	.db	0
      0002D4                      11979 Ldebug_CIE16_end:
      0002D4 00 00 00 14          11980 	.dw	0,20
      0002D8 00 00 02 C0          11981 	.dw	0,(Ldebug_CIE16_start-4)
      0002DC 00 00 04 E4          11982 	.dw	0,(Smain$sample_temperature$142)	;initial loc
      0002E0 00 00 00 C7          11983 	.dw	0,Smain$sample_temperature$151-Smain$sample_temperature$142
      0002E4 01                   11984 	.db	1
      0002E5 00 00 04 E4          11985 	.dw	0,(Smain$sample_temperature$142)
      0002E9 0E                   11986 	.db	14
      0002EA 02                   11987 	.uleb128	2
      0002EB 00                   11988 	.db	0
                                  11989 
                                  11990 	.area .debug_frame (NOLOAD)
      0002EC 00 00                11991 	.dw	0
      0002EE 00 10                11992 	.dw	Ldebug_CIE17_end-Ldebug_CIE17_start
      0002F0                      11993 Ldebug_CIE17_start:
      0002F0 FF FF                11994 	.dw	0xffff
      0002F2 FF FF                11995 	.dw	0xffff
      0002F4 01                   11996 	.db	1
      0002F5 00                   11997 	.db	0
      0002F6 01                   11998 	.uleb128	1
      0002F7 01                   11999 	.sleb128	1
      0002F8 09                   12000 	.db	9
      0002F9 0C                   12001 	.db	12
      0002FA 16                   12002 	.uleb128	22
      0002FB 02                   12003 	.uleb128	2
      0002FC 89                   12004 	.db	137
      0002FD 01                   12005 	.uleb128	1
      0002FE 00                   12006 	.db	0
      0002FF 00                   12007 	.db	0
      000300                      12008 Ldebug_CIE17_end:
      000300 00 00 00 14          12009 	.dw	0,20
      000304 00 00 02 EC          12010 	.dw	0,(Ldebug_CIE17_start-4)
      000308 00 00 03 97          12011 	.dw	0,(Smain$sample_amps$125)	;initial loc
      00030C 00 00 01 4D          12012 	.dw	0,Smain$sample_amps$140-Smain$sample_amps$125
      000310 01                   12013 	.db	1
      000311 00 00 03 97          12014 	.dw	0,(Smain$sample_amps$125)
      000315 0E                   12015 	.db	14
      000316 02                   12016 	.uleb128	2
      000317 00                   12017 	.db	0
                                  12018 
                                  12019 	.area .debug_frame (NOLOAD)
      000318 00 00                12020 	.dw	0
      00031A 00 10                12021 	.dw	Ldebug_CIE18_end-Ldebug_CIE18_start
      00031C                      12022 Ldebug_CIE18_start:
      00031C FF FF                12023 	.dw	0xffff
      00031E FF FF                12024 	.dw	0xffff
      000320 01                   12025 	.db	1
      000321 00                   12026 	.db	0
      000322 01                   12027 	.uleb128	1
      000323 01                   12028 	.sleb128	1
      000324 09                   12029 	.db	9
      000325 0C                   12030 	.db	12
      000326 16                   12031 	.uleb128	22
      000327 02                   12032 	.uleb128	2
      000328 89                   12033 	.db	137
      000329 01                   12034 	.uleb128	1
      00032A 00                   12035 	.db	0
      00032B 00                   12036 	.db	0
      00032C                      12037 Ldebug_CIE18_end:
      00032C 00 00 00 14          12038 	.dw	0,20
      000330 00 00 03 18          12039 	.dw	0,(Ldebug_CIE18_start-4)
      000334 00 00 02 F5          12040 	.dw	0,(Smain$init_peripherals_but_button_n_uart$95)	;initial loc
      000338 00 00 00 A2          12041 	.dw	0,Smain$init_peripherals_but_button_n_uart$123-Smain$init_peripherals_but_button_n_uart$95
      00033C 01                   12042 	.db	1
      00033D 00 00 02 F5          12043 	.dw	0,(Smain$init_peripherals_but_button_n_uart$95)
      000341 0E                   12044 	.db	14
      000342 02                   12045 	.uleb128	2
      000343 00                   12046 	.db	0
                                  12047 
                                  12048 	.area .debug_frame (NOLOAD)
      000344 00 00                12049 	.dw	0
      000346 00 10                12050 	.dw	Ldebug_CIE19_end-Ldebug_CIE19_start
      000348                      12051 Ldebug_CIE19_start:
      000348 FF FF                12052 	.dw	0xffff
      00034A FF FF                12053 	.dw	0xffff
      00034C 01                   12054 	.db	1
      00034D 00                   12055 	.db	0
      00034E 01                   12056 	.uleb128	1
      00034F 01                   12057 	.sleb128	1
      000350 09                   12058 	.db	9
      000351 0C                   12059 	.db	12
      000352 16                   12060 	.uleb128	22
      000353 02                   12061 	.uleb128	2
      000354 89                   12062 	.db	137
      000355 01                   12063 	.uleb128	1
      000356 00                   12064 	.db	0
      000357 00                   12065 	.db	0
      000358                      12066 Ldebug_CIE19_end:
      000358 00 00 00 14          12067 	.dw	0,20
      00035C 00 00 03 44          12068 	.dw	0,(Ldebug_CIE19_start-4)
      000360 00 00 02 AB          12069 	.dw	0,(Smain$init_sample$79)	;initial loc
      000364 00 00 00 4A          12070 	.dw	0,Smain$init_sample$93-Smain$init_sample$79
      000368 01                   12071 	.db	1
      000369 00 00 02 AB          12072 	.dw	0,(Smain$init_sample$79)
      00036D 0E                   12073 	.db	14
      00036E 02                   12074 	.uleb128	2
      00036F 00                   12075 	.db	0
                                  12076 
                                  12077 	.area .debug_frame (NOLOAD)
      000370 00 00                12078 	.dw	0
      000372 00 10                12079 	.dw	Ldebug_CIE20_end-Ldebug_CIE20_start
      000374                      12080 Ldebug_CIE20_start:
      000374 FF FF                12081 	.dw	0xffff
      000376 FF FF                12082 	.dw	0xffff
      000378 01                   12083 	.db	1
      000379 00                   12084 	.db	0
      00037A 01                   12085 	.uleb128	1
      00037B 01                   12086 	.sleb128	1
      00037C 09                   12087 	.db	9
      00037D 0C                   12088 	.db	12
      00037E 16                   12089 	.uleb128	22
      00037F 02                   12090 	.uleb128	2
      000380 89                   12091 	.db	137
      000381 01                   12092 	.uleb128	1
      000382 00                   12093 	.db	0
      000383 00                   12094 	.db	0
      000384                      12095 Ldebug_CIE20_end:
      000384 00 00 00 14          12096 	.dw	0,20
      000388 00 00 03 70          12097 	.dw	0,(Ldebug_CIE20_start-4)
      00038C 00 00 02 A2          12098 	.dw	0,(Smain$disable_ntc$72)	;initial loc
      000390 00 00 00 09          12099 	.dw	0,Smain$disable_ntc$77-Smain$disable_ntc$72
      000394 01                   12100 	.db	1
      000395 00 00 02 A2          12101 	.dw	0,(Smain$disable_ntc$72)
      000399 0E                   12102 	.db	14
      00039A 02                   12103 	.uleb128	2
      00039B 00                   12104 	.db	0
                                  12105 
                                  12106 	.area .debug_frame (NOLOAD)
      00039C 00 00                12107 	.dw	0
      00039E 00 10                12108 	.dw	Ldebug_CIE21_end-Ldebug_CIE21_start
      0003A0                      12109 Ldebug_CIE21_start:
      0003A0 FF FF                12110 	.dw	0xffff
      0003A2 FF FF                12111 	.dw	0xffff
      0003A4 01                   12112 	.db	1
      0003A5 00                   12113 	.db	0
      0003A6 01                   12114 	.uleb128	1
      0003A7 01                   12115 	.sleb128	1
      0003A8 09                   12116 	.db	9
      0003A9 0C                   12117 	.db	12
      0003AA 16                   12118 	.uleb128	22
      0003AB 02                   12119 	.uleb128	2
      0003AC 89                   12120 	.db	137
      0003AD 01                   12121 	.uleb128	1
      0003AE 00                   12122 	.db	0
      0003AF 00                   12123 	.db	0
      0003B0                      12124 Ldebug_CIE21_end:
      0003B0 00 00 00 14          12125 	.dw	0,20
      0003B4 00 00 03 9C          12126 	.dw	0,(Ldebug_CIE21_start-4)
      0003B8 00 00 02 99          12127 	.dw	0,(Smain$enable_ntc$65)	;initial loc
      0003BC 00 00 00 09          12128 	.dw	0,Smain$enable_ntc$70-Smain$enable_ntc$65
      0003C0 01                   12129 	.db	1
      0003C1 00 00 02 99          12130 	.dw	0,(Smain$enable_ntc$65)
      0003C5 0E                   12131 	.db	14
      0003C6 02                   12132 	.uleb128	2
      0003C7 00                   12133 	.db	0
                                  12134 
                                  12135 	.area .debug_frame (NOLOAD)
      0003C8 00 00                12136 	.dw	0
      0003CA 00 10                12137 	.dw	Ldebug_CIE22_end-Ldebug_CIE22_start
      0003CC                      12138 Ldebug_CIE22_start:
      0003CC FF FF                12139 	.dw	0xffff
      0003CE FF FF                12140 	.dw	0xffff
      0003D0 01                   12141 	.db	1
      0003D1 00                   12142 	.db	0
      0003D2 01                   12143 	.uleb128	1
      0003D3 01                   12144 	.sleb128	1
      0003D4 09                   12145 	.db	9
      0003D5 0C                   12146 	.db	12
      0003D6 16                   12147 	.uleb128	22
      0003D7 02                   12148 	.uleb128	2
      0003D8 89                   12149 	.db	137
      0003D9 01                   12150 	.uleb128	1
      0003DA 00                   12151 	.db	0
      0003DB 00                   12152 	.db	0
      0003DC                      12153 Ldebug_CIE22_end:
      0003DC 00 00 00 14          12154 	.dw	0,20
      0003E0 00 00 03 C8          12155 	.dw	0,(Ldebug_CIE22_start-4)
      0003E4 00 00 02 81          12156 	.dw	0,(Smain$button_interrupt_init$56)	;initial loc
      0003E8 00 00 00 18          12157 	.dw	0,Smain$button_interrupt_init$63-Smain$button_interrupt_init$56
      0003EC 01                   12158 	.db	1
      0003ED 00 00 02 81          12159 	.dw	0,(Smain$button_interrupt_init$56)
      0003F1 0E                   12160 	.db	14
      0003F2 02                   12161 	.uleb128	2
      0003F3 00                   12162 	.db	0
                                  12163 
                                  12164 	.area .debug_frame (NOLOAD)
      0003F4 00 00                12165 	.dw	0
      0003F6 00 10                12166 	.dw	Ldebug_CIE23_end-Ldebug_CIE23_start
      0003F8                      12167 Ldebug_CIE23_start:
      0003F8 FF FF                12168 	.dw	0xffff
      0003FA FF FF                12169 	.dw	0xffff
      0003FC 01                   12170 	.db	1
      0003FD 00                   12171 	.db	0
      0003FE 01                   12172 	.uleb128	1
      0003FF 01                   12173 	.sleb128	1
      000400 09                   12174 	.db	9
      000401 0C                   12175 	.db	12
      000402 16                   12176 	.uleb128	22
      000403 06                   12177 	.uleb128	6
      000404 89                   12178 	.db	137
      000405 01                   12179 	.uleb128	1
      000406 00                   12180 	.db	0
      000407 00                   12181 	.db	0
      000408                      12182 Ldebug_CIE23_end:
      000408 00 00 00 14          12183 	.dw	0,20
      00040C 00 00 03 F4          12184 	.dw	0,(Ldebug_CIE23_start-4)
      000410 00 00 02 50          12185 	.dw	0,(Smain$PinInterrupt_ISR$44)	;initial loc
      000414 00 00 00 31          12186 	.dw	0,Smain$PinInterrupt_ISR$54-Smain$PinInterrupt_ISR$44
      000418 01                   12187 	.db	1
      000419 00 00 02 50          12188 	.dw	0,(Smain$PinInterrupt_ISR$44)
      00041D 0E                   12189 	.db	14
      00041E 06                   12190 	.uleb128	6
      00041F 00                   12191 	.db	0
                                  12192 
                                  12193 	.area .debug_frame (NOLOAD)
      000420 00 00                12194 	.dw	0
      000422 00 10                12195 	.dw	Ldebug_CIE24_end-Ldebug_CIE24_start
      000424                      12196 Ldebug_CIE24_start:
      000424 FF FF                12197 	.dw	0xffff
      000426 FF FF                12198 	.dw	0xffff
      000428 01                   12199 	.db	1
      000429 00                   12200 	.db	0
      00042A 01                   12201 	.uleb128	1
      00042B 01                   12202 	.sleb128	1
      00042C 09                   12203 	.db	9
      00042D 0C                   12204 	.db	12
      00042E 16                   12205 	.uleb128	22
      00042F 02                   12206 	.uleb128	2
      000430 89                   12207 	.db	137
      000431 01                   12208 	.uleb128	1
      000432 00                   12209 	.db	0
      000433 00                   12210 	.db	0
      000434                      12211 Ldebug_CIE24_end:
      000434 00 00 00 14          12212 	.dw	0,20
      000438 00 00 04 20          12213 	.dw	0,(Ldebug_CIE24_start-4)
      00043C 00 00 02 24          12214 	.dw	0,(Smain$uart_interrupt_init$37)	;initial loc
      000440 00 00 00 24          12215 	.dw	0,Smain$uart_interrupt_init$42-Smain$uart_interrupt_init$37
      000444 01                   12216 	.db	1
      000445 00 00 02 24          12217 	.dw	0,(Smain$uart_interrupt_init$37)
      000449 0E                   12218 	.db	14
      00044A 02                   12219 	.uleb128	2
      00044B 00                   12220 	.db	0
                                  12221 
                                  12222 	.area .debug_frame (NOLOAD)
      00044C 00 00                12223 	.dw	0
      00044E 00 10                12224 	.dw	Ldebug_CIE25_end-Ldebug_CIE25_start
      000450                      12225 Ldebug_CIE25_start:
      000450 FF FF                12226 	.dw	0xffff
      000452 FF FF                12227 	.dw	0xffff
      000454 01                   12228 	.db	1
      000455 00                   12229 	.db	0
      000456 01                   12230 	.uleb128	1
      000457 01                   12231 	.sleb128	1
      000458 09                   12232 	.db	9
      000459 0C                   12233 	.db	12
      00045A 16                   12234 	.uleb128	22
      00045B 06                   12235 	.uleb128	6
      00045C 89                   12236 	.db	137
      00045D 01                   12237 	.uleb128	1
      00045E 00                   12238 	.db	0
      00045F 00                   12239 	.db	0
      000460                      12240 Ldebug_CIE25_end:
      000460 00 00 00 14          12241 	.dw	0,20
      000464 00 00 04 4C          12242 	.dw	0,(Ldebug_CIE25_start-4)
      000468 00 00 01 C4          12243 	.dw	0,(Smain$SerialPort1_ISR$20)	;initial loc
      00046C 00 00 00 60          12244 	.dw	0,Smain$SerialPort1_ISR$35-Smain$SerialPort1_ISR$20
      000470 01                   12245 	.db	1
      000471 00 00 01 C4          12246 	.dw	0,(Smain$SerialPort1_ISR$20)
      000475 0E                   12247 	.db	14
      000476 06                   12248 	.uleb128	6
      000477 00                   12249 	.db	0
                                  12250 
                                  12251 	.area .debug_frame (NOLOAD)
      000478 00 00                12252 	.dw	0
      00047A 00 10                12253 	.dw	Ldebug_CIE26_end-Ldebug_CIE26_start
      00047C                      12254 Ldebug_CIE26_start:
      00047C FF FF                12255 	.dw	0xffff
      00047E FF FF                12256 	.dw	0xffff
      000480 01                   12257 	.db	1
      000481 00                   12258 	.db	0
      000482 01                   12259 	.uleb128	1
      000483 01                   12260 	.sleb128	1
      000484 09                   12261 	.db	9
      000485 0C                   12262 	.db	12
      000486 16                   12263 	.uleb128	22
      000487 02                   12264 	.uleb128	2
      000488 89                   12265 	.db	137
      000489 01                   12266 	.uleb128	1
      00048A 00                   12267 	.db	0
      00048B 00                   12268 	.db	0
      00048C                      12269 Ldebug_CIE26_end:
      00048C 00 00 00 14          12270 	.dw	0,20
      000490 00 00 04 78          12271 	.dw	0,(Ldebug_CIE26_start-4)
      000494 00 00 00 DD          12272 	.dw	0,(Smain$Timer0_Delay$1)	;initial loc
      000498 00 00 00 C8          12273 	.dw	0,Smain$Timer0_Delay$18-Smain$Timer0_Delay$1
      00049C 01                   12274 	.db	1
      00049D 00 00 00 DD          12275 	.dw	0,(Smain$Timer0_Delay$1)
      0004A1 0E                   12276 	.db	14
      0004A2 02                   12277 	.uleb128	2
      0004A3 00                   12278 	.db	0
