                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.2.6 #13647 (MINGW32)
                                      4 ;--------------------------------------------------------
                                      5 	.module common
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _MOSI
                                     12 	.globl _P00
                                     13 	.globl _MISO
                                     14 	.globl _P01
                                     15 	.globl _RXD_1
                                     16 	.globl _P02
                                     17 	.globl _P03
                                     18 	.globl _STADC
                                     19 	.globl _P04
                                     20 	.globl _P05
                                     21 	.globl _TXD
                                     22 	.globl _P06
                                     23 	.globl _RXD
                                     24 	.globl _P07
                                     25 	.globl _IT0
                                     26 	.globl _IE0
                                     27 	.globl _IT1
                                     28 	.globl _IE1
                                     29 	.globl _TR0
                                     30 	.globl _TF0
                                     31 	.globl _TR1
                                     32 	.globl _TF1
                                     33 	.globl _P10
                                     34 	.globl _P11
                                     35 	.globl _P12
                                     36 	.globl _SCL
                                     37 	.globl _P13
                                     38 	.globl _SDA
                                     39 	.globl _P14
                                     40 	.globl _P15
                                     41 	.globl _TXD_1
                                     42 	.globl _P16
                                     43 	.globl _P17
                                     44 	.globl _RI
                                     45 	.globl _TI
                                     46 	.globl _RB8
                                     47 	.globl _TB8
                                     48 	.globl _REN
                                     49 	.globl _SM2
                                     50 	.globl _SM1
                                     51 	.globl _FE
                                     52 	.globl _SM0
                                     53 	.globl _P20
                                     54 	.globl _EX0
                                     55 	.globl _ET0
                                     56 	.globl _EX1
                                     57 	.globl _ET1
                                     58 	.globl _ES
                                     59 	.globl _EBOD
                                     60 	.globl _EADC
                                     61 	.globl _EA
                                     62 	.globl _P30
                                     63 	.globl _PX0
                                     64 	.globl _PT0
                                     65 	.globl _PX1
                                     66 	.globl _PT1
                                     67 	.globl _PS
                                     68 	.globl _PBOD
                                     69 	.globl _PADC
                                     70 	.globl _I2CPX
                                     71 	.globl _AA
                                     72 	.globl _SI
                                     73 	.globl _STO
                                     74 	.globl _STA
                                     75 	.globl _I2CEN
                                     76 	.globl _CM_RL2
                                     77 	.globl _TR2
                                     78 	.globl _TF2
                                     79 	.globl _P
                                     80 	.globl _OV
                                     81 	.globl _RS0
                                     82 	.globl _RS1
                                     83 	.globl _F0
                                     84 	.globl _AC
                                     85 	.globl _CY
                                     86 	.globl _CLRPWM
                                     87 	.globl _PWMF
                                     88 	.globl _LOAD
                                     89 	.globl _PWMRUN
                                     90 	.globl _ADCHS0
                                     91 	.globl _ADCHS1
                                     92 	.globl _ADCHS2
                                     93 	.globl _ADCHS3
                                     94 	.globl _ETGSEL0
                                     95 	.globl _ETGSEL1
                                     96 	.globl _ADCS
                                     97 	.globl _ADCF
                                     98 	.globl _RI_1
                                     99 	.globl _TI_1
                                    100 	.globl _RB8_1
                                    101 	.globl _TB8_1
                                    102 	.globl _REN_1
                                    103 	.globl _SM2_1
                                    104 	.globl _SM1_1
                                    105 	.globl _FE_1
                                    106 	.globl _SM0_1
                                    107 	.globl _EIPH1
                                    108 	.globl _EIP1
                                    109 	.globl _PMD
                                    110 	.globl _PMEN
                                    111 	.globl _PDTCNT
                                    112 	.globl _PDTEN
                                    113 	.globl _SCON_1
                                    114 	.globl _EIPH
                                    115 	.globl _AINDIDS
                                    116 	.globl _SPDR
                                    117 	.globl _SPSR
                                    118 	.globl _SPCR2
                                    119 	.globl _SPCR
                                    120 	.globl _CAPCON4
                                    121 	.globl _CAPCON3
                                    122 	.globl _B
                                    123 	.globl _EIP
                                    124 	.globl _C2H
                                    125 	.globl _C2L
                                    126 	.globl _PIF
                                    127 	.globl _PIPEN
                                    128 	.globl _PINEN
                                    129 	.globl _PICON
                                    130 	.globl _ADCCON0
                                    131 	.globl _C1H
                                    132 	.globl _C1L
                                    133 	.globl _C0H
                                    134 	.globl _C0L
                                    135 	.globl _ADCDLY
                                    136 	.globl _ADCCON2
                                    137 	.globl _ADCCON1
                                    138 	.globl _ACC
                                    139 	.globl _PWMCON1
                                    140 	.globl _PIOCON0
                                    141 	.globl _PWM3L
                                    142 	.globl _PWM2L
                                    143 	.globl _PWM1L
                                    144 	.globl _PWM0L
                                    145 	.globl _PWMPL
                                    146 	.globl _PWMCON0
                                    147 	.globl _FBD
                                    148 	.globl _PNP
                                    149 	.globl _PWM3H
                                    150 	.globl _PWM2H
                                    151 	.globl _PWM1H
                                    152 	.globl _PWM0H
                                    153 	.globl _PWMPH
                                    154 	.globl _PSW
                                    155 	.globl _ADCMPH
                                    156 	.globl _ADCMPL
                                    157 	.globl _PWM5L
                                    158 	.globl _TH2
                                    159 	.globl _PWM4L
                                    160 	.globl _TL2
                                    161 	.globl _RCMP2H
                                    162 	.globl _RCMP2L
                                    163 	.globl _T2MOD
                                    164 	.globl _T2CON
                                    165 	.globl _TA
                                    166 	.globl _PIOCON1
                                    167 	.globl _RH3
                                    168 	.globl _PWM5H
                                    169 	.globl _RL3
                                    170 	.globl _PWM4H
                                    171 	.globl _T3CON
                                    172 	.globl _ADCRH
                                    173 	.globl _ADCRL
                                    174 	.globl _I2ADDR
                                    175 	.globl _I2CON
                                    176 	.globl _I2TOC
                                    177 	.globl _I2CLK
                                    178 	.globl _I2STAT
                                    179 	.globl _I2DAT
                                    180 	.globl _SADDR_1
                                    181 	.globl _SADEN_1
                                    182 	.globl _SADEN
                                    183 	.globl _IP
                                    184 	.globl _PWMINTC
                                    185 	.globl _IPH
                                    186 	.globl _P2S
                                    187 	.globl _P1SR
                                    188 	.globl _P1M2
                                    189 	.globl _P1S
                                    190 	.globl _P1M1
                                    191 	.globl _P0SR
                                    192 	.globl _P0M2
                                    193 	.globl _P0S
                                    194 	.globl _P0M1
                                    195 	.globl _P3
                                    196 	.globl _IAPCN
                                    197 	.globl _IAPFD
                                    198 	.globl _P3SR
                                    199 	.globl _P3M2
                                    200 	.globl _P3S
                                    201 	.globl _P3M1
                                    202 	.globl _BODCON1
                                    203 	.globl _WDCON
                                    204 	.globl _SADDR
                                    205 	.globl _IE
                                    206 	.globl _IAPAH
                                    207 	.globl _IAPAL
                                    208 	.globl _IAPUEN
                                    209 	.globl _IAPTRG
                                    210 	.globl _BODCON0
                                    211 	.globl _AUXR1
                                    212 	.globl _P2
                                    213 	.globl _CHPCON
                                    214 	.globl _EIE1
                                    215 	.globl _EIE
                                    216 	.globl _SBUF_1
                                    217 	.globl _SBUF
                                    218 	.globl _SCON
                                    219 	.globl _CKEN
                                    220 	.globl _CKSWT
                                    221 	.globl _CKDIV
                                    222 	.globl _CAPCON2
                                    223 	.globl _CAPCON1
                                    224 	.globl _CAPCON0
                                    225 	.globl _SFRS
                                    226 	.globl _P1
                                    227 	.globl _WKCON
                                    228 	.globl _CKCON
                                    229 	.globl _TH1
                                    230 	.globl _TH0
                                    231 	.globl _TL1
                                    232 	.globl _TL0
                                    233 	.globl _TMOD
                                    234 	.globl _TCON
                                    235 	.globl _PCON
                                    236 	.globl _RWK
                                    237 	.globl _RCTRIM1
                                    238 	.globl _RCTRIM0
                                    239 	.globl _DPH
                                    240 	.globl _DPL
                                    241 	.globl _SP
                                    242 	.globl _P0
                                    243 	.globl _BIT_TMP
                                    244 	.globl _SFRS_TMP
                                    245 	.globl _BYTE_TMP
                                    246 	.globl _TA_REG_TMP
                                    247 	.globl _Read_APROM_BYTE
                                    248 	.globl _Software_Reset
                                    249 	.globl _PowerDown_Mode
                                    250 	.globl _Idle_Mode
                                    251 	.globl __delay_
                                    252 	.globl _Global_Interrupt
                                    253 ;--------------------------------------------------------
                                    254 ; special function registers
                                    255 ;--------------------------------------------------------
                                    256 	.area RSEG    (ABS,DATA)
      000000                        257 	.org 0x0000
                           000080   258 G$P0$0_0$0 == 0x0080
                           000080   259 _P0	=	0x0080
                           000081   260 G$SP$0_0$0 == 0x0081
                           000081   261 _SP	=	0x0081
                           000082   262 G$DPL$0_0$0 == 0x0082
                           000082   263 _DPL	=	0x0082
                           000083   264 G$DPH$0_0$0 == 0x0083
                           000083   265 _DPH	=	0x0083
                           000084   266 G$RCTRIM0$0_0$0 == 0x0084
                           000084   267 _RCTRIM0	=	0x0084
                           000085   268 G$RCTRIM1$0_0$0 == 0x0085
                           000085   269 _RCTRIM1	=	0x0085
                           000086   270 G$RWK$0_0$0 == 0x0086
                           000086   271 _RWK	=	0x0086
                           000087   272 G$PCON$0_0$0 == 0x0087
                           000087   273 _PCON	=	0x0087
                           000088   274 G$TCON$0_0$0 == 0x0088
                           000088   275 _TCON	=	0x0088
                           000089   276 G$TMOD$0_0$0 == 0x0089
                           000089   277 _TMOD	=	0x0089
                           00008A   278 G$TL0$0_0$0 == 0x008a
                           00008A   279 _TL0	=	0x008a
                           00008B   280 G$TL1$0_0$0 == 0x008b
                           00008B   281 _TL1	=	0x008b
                           00008C   282 G$TH0$0_0$0 == 0x008c
                           00008C   283 _TH0	=	0x008c
                           00008D   284 G$TH1$0_0$0 == 0x008d
                           00008D   285 _TH1	=	0x008d
                           00008E   286 G$CKCON$0_0$0 == 0x008e
                           00008E   287 _CKCON	=	0x008e
                           00008F   288 G$WKCON$0_0$0 == 0x008f
                           00008F   289 _WKCON	=	0x008f
                           000090   290 G$P1$0_0$0 == 0x0090
                           000090   291 _P1	=	0x0090
                           000091   292 G$SFRS$0_0$0 == 0x0091
                           000091   293 _SFRS	=	0x0091
                           000092   294 G$CAPCON0$0_0$0 == 0x0092
                           000092   295 _CAPCON0	=	0x0092
                           000093   296 G$CAPCON1$0_0$0 == 0x0093
                           000093   297 _CAPCON1	=	0x0093
                           000094   298 G$CAPCON2$0_0$0 == 0x0094
                           000094   299 _CAPCON2	=	0x0094
                           000095   300 G$CKDIV$0_0$0 == 0x0095
                           000095   301 _CKDIV	=	0x0095
                           000096   302 G$CKSWT$0_0$0 == 0x0096
                           000096   303 _CKSWT	=	0x0096
                           000097   304 G$CKEN$0_0$0 == 0x0097
                           000097   305 _CKEN	=	0x0097
                           000098   306 G$SCON$0_0$0 == 0x0098
                           000098   307 _SCON	=	0x0098
                           000099   308 G$SBUF$0_0$0 == 0x0099
                           000099   309 _SBUF	=	0x0099
                           00009A   310 G$SBUF_1$0_0$0 == 0x009a
                           00009A   311 _SBUF_1	=	0x009a
                           00009B   312 G$EIE$0_0$0 == 0x009b
                           00009B   313 _EIE	=	0x009b
                           00009C   314 G$EIE1$0_0$0 == 0x009c
                           00009C   315 _EIE1	=	0x009c
                           00009F   316 G$CHPCON$0_0$0 == 0x009f
                           00009F   317 _CHPCON	=	0x009f
                           0000A0   318 G$P2$0_0$0 == 0x00a0
                           0000A0   319 _P2	=	0x00a0
                           0000A2   320 G$AUXR1$0_0$0 == 0x00a2
                           0000A2   321 _AUXR1	=	0x00a2
                           0000A3   322 G$BODCON0$0_0$0 == 0x00a3
                           0000A3   323 _BODCON0	=	0x00a3
                           0000A4   324 G$IAPTRG$0_0$0 == 0x00a4
                           0000A4   325 _IAPTRG	=	0x00a4
                           0000A5   326 G$IAPUEN$0_0$0 == 0x00a5
                           0000A5   327 _IAPUEN	=	0x00a5
                           0000A6   328 G$IAPAL$0_0$0 == 0x00a6
                           0000A6   329 _IAPAL	=	0x00a6
                           0000A7   330 G$IAPAH$0_0$0 == 0x00a7
                           0000A7   331 _IAPAH	=	0x00a7
                           0000A8   332 G$IE$0_0$0 == 0x00a8
                           0000A8   333 _IE	=	0x00a8
                           0000A9   334 G$SADDR$0_0$0 == 0x00a9
                           0000A9   335 _SADDR	=	0x00a9
                           0000AA   336 G$WDCON$0_0$0 == 0x00aa
                           0000AA   337 _WDCON	=	0x00aa
                           0000AB   338 G$BODCON1$0_0$0 == 0x00ab
                           0000AB   339 _BODCON1	=	0x00ab
                           0000AC   340 G$P3M1$0_0$0 == 0x00ac
                           0000AC   341 _P3M1	=	0x00ac
                           0000AC   342 G$P3S$0_0$0 == 0x00ac
                           0000AC   343 _P3S	=	0x00ac
                           0000AD   344 G$P3M2$0_0$0 == 0x00ad
                           0000AD   345 _P3M2	=	0x00ad
                           0000AD   346 G$P3SR$0_0$0 == 0x00ad
                           0000AD   347 _P3SR	=	0x00ad
                           0000AE   348 G$IAPFD$0_0$0 == 0x00ae
                           0000AE   349 _IAPFD	=	0x00ae
                           0000AF   350 G$IAPCN$0_0$0 == 0x00af
                           0000AF   351 _IAPCN	=	0x00af
                           0000B0   352 G$P3$0_0$0 == 0x00b0
                           0000B0   353 _P3	=	0x00b0
                           0000B1   354 G$P0M1$0_0$0 == 0x00b1
                           0000B1   355 _P0M1	=	0x00b1
                           0000B1   356 G$P0S$0_0$0 == 0x00b1
                           0000B1   357 _P0S	=	0x00b1
                           0000B2   358 G$P0M2$0_0$0 == 0x00b2
                           0000B2   359 _P0M2	=	0x00b2
                           0000B2   360 G$P0SR$0_0$0 == 0x00b2
                           0000B2   361 _P0SR	=	0x00b2
                           0000B3   362 G$P1M1$0_0$0 == 0x00b3
                           0000B3   363 _P1M1	=	0x00b3
                           0000B3   364 G$P1S$0_0$0 == 0x00b3
                           0000B3   365 _P1S	=	0x00b3
                           0000B4   366 G$P1M2$0_0$0 == 0x00b4
                           0000B4   367 _P1M2	=	0x00b4
                           0000B4   368 G$P1SR$0_0$0 == 0x00b4
                           0000B4   369 _P1SR	=	0x00b4
                           0000B5   370 G$P2S$0_0$0 == 0x00b5
                           0000B5   371 _P2S	=	0x00b5
                           0000B7   372 G$IPH$0_0$0 == 0x00b7
                           0000B7   373 _IPH	=	0x00b7
                           0000B7   374 G$PWMINTC$0_0$0 == 0x00b7
                           0000B7   375 _PWMINTC	=	0x00b7
                           0000B8   376 G$IP$0_0$0 == 0x00b8
                           0000B8   377 _IP	=	0x00b8
                           0000B9   378 G$SADEN$0_0$0 == 0x00b9
                           0000B9   379 _SADEN	=	0x00b9
                           0000BA   380 G$SADEN_1$0_0$0 == 0x00ba
                           0000BA   381 _SADEN_1	=	0x00ba
                           0000BB   382 G$SADDR_1$0_0$0 == 0x00bb
                           0000BB   383 _SADDR_1	=	0x00bb
                           0000BC   384 G$I2DAT$0_0$0 == 0x00bc
                           0000BC   385 _I2DAT	=	0x00bc
                           0000BD   386 G$I2STAT$0_0$0 == 0x00bd
                           0000BD   387 _I2STAT	=	0x00bd
                           0000BE   388 G$I2CLK$0_0$0 == 0x00be
                           0000BE   389 _I2CLK	=	0x00be
                           0000BF   390 G$I2TOC$0_0$0 == 0x00bf
                           0000BF   391 _I2TOC	=	0x00bf
                           0000C0   392 G$I2CON$0_0$0 == 0x00c0
                           0000C0   393 _I2CON	=	0x00c0
                           0000C1   394 G$I2ADDR$0_0$0 == 0x00c1
                           0000C1   395 _I2ADDR	=	0x00c1
                           0000C2   396 G$ADCRL$0_0$0 == 0x00c2
                           0000C2   397 _ADCRL	=	0x00c2
                           0000C3   398 G$ADCRH$0_0$0 == 0x00c3
                           0000C3   399 _ADCRH	=	0x00c3
                           0000C4   400 G$T3CON$0_0$0 == 0x00c4
                           0000C4   401 _T3CON	=	0x00c4
                           0000C4   402 G$PWM4H$0_0$0 == 0x00c4
                           0000C4   403 _PWM4H	=	0x00c4
                           0000C5   404 G$RL3$0_0$0 == 0x00c5
                           0000C5   405 _RL3	=	0x00c5
                           0000C5   406 G$PWM5H$0_0$0 == 0x00c5
                           0000C5   407 _PWM5H	=	0x00c5
                           0000C6   408 G$RH3$0_0$0 == 0x00c6
                           0000C6   409 _RH3	=	0x00c6
                           0000C6   410 G$PIOCON1$0_0$0 == 0x00c6
                           0000C6   411 _PIOCON1	=	0x00c6
                           0000C7   412 G$TA$0_0$0 == 0x00c7
                           0000C7   413 _TA	=	0x00c7
                           0000C8   414 G$T2CON$0_0$0 == 0x00c8
                           0000C8   415 _T2CON	=	0x00c8
                           0000C9   416 G$T2MOD$0_0$0 == 0x00c9
                           0000C9   417 _T2MOD	=	0x00c9
                           0000CA   418 G$RCMP2L$0_0$0 == 0x00ca
                           0000CA   419 _RCMP2L	=	0x00ca
                           0000CB   420 G$RCMP2H$0_0$0 == 0x00cb
                           0000CB   421 _RCMP2H	=	0x00cb
                           0000CC   422 G$TL2$0_0$0 == 0x00cc
                           0000CC   423 _TL2	=	0x00cc
                           0000CC   424 G$PWM4L$0_0$0 == 0x00cc
                           0000CC   425 _PWM4L	=	0x00cc
                           0000CD   426 G$TH2$0_0$0 == 0x00cd
                           0000CD   427 _TH2	=	0x00cd
                           0000CD   428 G$PWM5L$0_0$0 == 0x00cd
                           0000CD   429 _PWM5L	=	0x00cd
                           0000CE   430 G$ADCMPL$0_0$0 == 0x00ce
                           0000CE   431 _ADCMPL	=	0x00ce
                           0000CF   432 G$ADCMPH$0_0$0 == 0x00cf
                           0000CF   433 _ADCMPH	=	0x00cf
                           0000D0   434 G$PSW$0_0$0 == 0x00d0
                           0000D0   435 _PSW	=	0x00d0
                           0000D1   436 G$PWMPH$0_0$0 == 0x00d1
                           0000D1   437 _PWMPH	=	0x00d1
                           0000D2   438 G$PWM0H$0_0$0 == 0x00d2
                           0000D2   439 _PWM0H	=	0x00d2
                           0000D3   440 G$PWM1H$0_0$0 == 0x00d3
                           0000D3   441 _PWM1H	=	0x00d3
                           0000D4   442 G$PWM2H$0_0$0 == 0x00d4
                           0000D4   443 _PWM2H	=	0x00d4
                           0000D5   444 G$PWM3H$0_0$0 == 0x00d5
                           0000D5   445 _PWM3H	=	0x00d5
                           0000D6   446 G$PNP$0_0$0 == 0x00d6
                           0000D6   447 _PNP	=	0x00d6
                           0000D7   448 G$FBD$0_0$0 == 0x00d7
                           0000D7   449 _FBD	=	0x00d7
                           0000D8   450 G$PWMCON0$0_0$0 == 0x00d8
                           0000D8   451 _PWMCON0	=	0x00d8
                           0000D9   452 G$PWMPL$0_0$0 == 0x00d9
                           0000D9   453 _PWMPL	=	0x00d9
                           0000DA   454 G$PWM0L$0_0$0 == 0x00da
                           0000DA   455 _PWM0L	=	0x00da
                           0000DB   456 G$PWM1L$0_0$0 == 0x00db
                           0000DB   457 _PWM1L	=	0x00db
                           0000DC   458 G$PWM2L$0_0$0 == 0x00dc
                           0000DC   459 _PWM2L	=	0x00dc
                           0000DD   460 G$PWM3L$0_0$0 == 0x00dd
                           0000DD   461 _PWM3L	=	0x00dd
                           0000DE   462 G$PIOCON0$0_0$0 == 0x00de
                           0000DE   463 _PIOCON0	=	0x00de
                           0000DF   464 G$PWMCON1$0_0$0 == 0x00df
                           0000DF   465 _PWMCON1	=	0x00df
                           0000E0   466 G$ACC$0_0$0 == 0x00e0
                           0000E0   467 _ACC	=	0x00e0
                           0000E1   468 G$ADCCON1$0_0$0 == 0x00e1
                           0000E1   469 _ADCCON1	=	0x00e1
                           0000E2   470 G$ADCCON2$0_0$0 == 0x00e2
                           0000E2   471 _ADCCON2	=	0x00e2
                           0000E3   472 G$ADCDLY$0_0$0 == 0x00e3
                           0000E3   473 _ADCDLY	=	0x00e3
                           0000E4   474 G$C0L$0_0$0 == 0x00e4
                           0000E4   475 _C0L	=	0x00e4
                           0000E5   476 G$C0H$0_0$0 == 0x00e5
                           0000E5   477 _C0H	=	0x00e5
                           0000E6   478 G$C1L$0_0$0 == 0x00e6
                           0000E6   479 _C1L	=	0x00e6
                           0000E7   480 G$C1H$0_0$0 == 0x00e7
                           0000E7   481 _C1H	=	0x00e7
                           0000E8   482 G$ADCCON0$0_0$0 == 0x00e8
                           0000E8   483 _ADCCON0	=	0x00e8
                           0000E9   484 G$PICON$0_0$0 == 0x00e9
                           0000E9   485 _PICON	=	0x00e9
                           0000EA   486 G$PINEN$0_0$0 == 0x00ea
                           0000EA   487 _PINEN	=	0x00ea
                           0000EB   488 G$PIPEN$0_0$0 == 0x00eb
                           0000EB   489 _PIPEN	=	0x00eb
                           0000EC   490 G$PIF$0_0$0 == 0x00ec
                           0000EC   491 _PIF	=	0x00ec
                           0000ED   492 G$C2L$0_0$0 == 0x00ed
                           0000ED   493 _C2L	=	0x00ed
                           0000EE   494 G$C2H$0_0$0 == 0x00ee
                           0000EE   495 _C2H	=	0x00ee
                           0000EF   496 G$EIP$0_0$0 == 0x00ef
                           0000EF   497 _EIP	=	0x00ef
                           0000F0   498 G$B$0_0$0 == 0x00f0
                           0000F0   499 _B	=	0x00f0
                           0000F1   500 G$CAPCON3$0_0$0 == 0x00f1
                           0000F1   501 _CAPCON3	=	0x00f1
                           0000F2   502 G$CAPCON4$0_0$0 == 0x00f2
                           0000F2   503 _CAPCON4	=	0x00f2
                           0000F3   504 G$SPCR$0_0$0 == 0x00f3
                           0000F3   505 _SPCR	=	0x00f3
                           0000F3   506 G$SPCR2$0_0$0 == 0x00f3
                           0000F3   507 _SPCR2	=	0x00f3
                           0000F4   508 G$SPSR$0_0$0 == 0x00f4
                           0000F4   509 _SPSR	=	0x00f4
                           0000F5   510 G$SPDR$0_0$0 == 0x00f5
                           0000F5   511 _SPDR	=	0x00f5
                           0000F6   512 G$AINDIDS$0_0$0 == 0x00f6
                           0000F6   513 _AINDIDS	=	0x00f6
                           0000F7   514 G$EIPH$0_0$0 == 0x00f7
                           0000F7   515 _EIPH	=	0x00f7
                           0000F8   516 G$SCON_1$0_0$0 == 0x00f8
                           0000F8   517 _SCON_1	=	0x00f8
                           0000F9   518 G$PDTEN$0_0$0 == 0x00f9
                           0000F9   519 _PDTEN	=	0x00f9
                           0000FA   520 G$PDTCNT$0_0$0 == 0x00fa
                           0000FA   521 _PDTCNT	=	0x00fa
                           0000FB   522 G$PMEN$0_0$0 == 0x00fb
                           0000FB   523 _PMEN	=	0x00fb
                           0000FC   524 G$PMD$0_0$0 == 0x00fc
                           0000FC   525 _PMD	=	0x00fc
                           0000FE   526 G$EIP1$0_0$0 == 0x00fe
                           0000FE   527 _EIP1	=	0x00fe
                           0000FF   528 G$EIPH1$0_0$0 == 0x00ff
                           0000FF   529 _EIPH1	=	0x00ff
                                    530 ;--------------------------------------------------------
                                    531 ; special function bits
                                    532 ;--------------------------------------------------------
                                    533 	.area RSEG    (ABS,DATA)
      000000                        534 	.org 0x0000
                           0000FF   535 G$SM0_1$0_0$0 == 0x00ff
                           0000FF   536 _SM0_1	=	0x00ff
                           0000FF   537 G$FE_1$0_0$0 == 0x00ff
                           0000FF   538 _FE_1	=	0x00ff
                           0000FE   539 G$SM1_1$0_0$0 == 0x00fe
                           0000FE   540 _SM1_1	=	0x00fe
                           0000FD   541 G$SM2_1$0_0$0 == 0x00fd
                           0000FD   542 _SM2_1	=	0x00fd
                           0000FC   543 G$REN_1$0_0$0 == 0x00fc
                           0000FC   544 _REN_1	=	0x00fc
                           0000FB   545 G$TB8_1$0_0$0 == 0x00fb
                           0000FB   546 _TB8_1	=	0x00fb
                           0000FA   547 G$RB8_1$0_0$0 == 0x00fa
                           0000FA   548 _RB8_1	=	0x00fa
                           0000F9   549 G$TI_1$0_0$0 == 0x00f9
                           0000F9   550 _TI_1	=	0x00f9
                           0000F8   551 G$RI_1$0_0$0 == 0x00f8
                           0000F8   552 _RI_1	=	0x00f8
                           0000EF   553 G$ADCF$0_0$0 == 0x00ef
                           0000EF   554 _ADCF	=	0x00ef
                           0000EE   555 G$ADCS$0_0$0 == 0x00ee
                           0000EE   556 _ADCS	=	0x00ee
                           0000ED   557 G$ETGSEL1$0_0$0 == 0x00ed
                           0000ED   558 _ETGSEL1	=	0x00ed
                           0000EC   559 G$ETGSEL0$0_0$0 == 0x00ec
                           0000EC   560 _ETGSEL0	=	0x00ec
                           0000EB   561 G$ADCHS3$0_0$0 == 0x00eb
                           0000EB   562 _ADCHS3	=	0x00eb
                           0000EA   563 G$ADCHS2$0_0$0 == 0x00ea
                           0000EA   564 _ADCHS2	=	0x00ea
                           0000E9   565 G$ADCHS1$0_0$0 == 0x00e9
                           0000E9   566 _ADCHS1	=	0x00e9
                           0000E8   567 G$ADCHS0$0_0$0 == 0x00e8
                           0000E8   568 _ADCHS0	=	0x00e8
                           0000DF   569 G$PWMRUN$0_0$0 == 0x00df
                           0000DF   570 _PWMRUN	=	0x00df
                           0000DE   571 G$LOAD$0_0$0 == 0x00de
                           0000DE   572 _LOAD	=	0x00de
                           0000DD   573 G$PWMF$0_0$0 == 0x00dd
                           0000DD   574 _PWMF	=	0x00dd
                           0000DC   575 G$CLRPWM$0_0$0 == 0x00dc
                           0000DC   576 _CLRPWM	=	0x00dc
                           0000D7   577 G$CY$0_0$0 == 0x00d7
                           0000D7   578 _CY	=	0x00d7
                           0000D6   579 G$AC$0_0$0 == 0x00d6
                           0000D6   580 _AC	=	0x00d6
                           0000D5   581 G$F0$0_0$0 == 0x00d5
                           0000D5   582 _F0	=	0x00d5
                           0000D4   583 G$RS1$0_0$0 == 0x00d4
                           0000D4   584 _RS1	=	0x00d4
                           0000D3   585 G$RS0$0_0$0 == 0x00d3
                           0000D3   586 _RS0	=	0x00d3
                           0000D2   587 G$OV$0_0$0 == 0x00d2
                           0000D2   588 _OV	=	0x00d2
                           0000D0   589 G$P$0_0$0 == 0x00d0
                           0000D0   590 _P	=	0x00d0
                           0000CF   591 G$TF2$0_0$0 == 0x00cf
                           0000CF   592 _TF2	=	0x00cf
                           0000CA   593 G$TR2$0_0$0 == 0x00ca
                           0000CA   594 _TR2	=	0x00ca
                           0000C8   595 G$CM_RL2$0_0$0 == 0x00c8
                           0000C8   596 _CM_RL2	=	0x00c8
                           0000C6   597 G$I2CEN$0_0$0 == 0x00c6
                           0000C6   598 _I2CEN	=	0x00c6
                           0000C5   599 G$STA$0_0$0 == 0x00c5
                           0000C5   600 _STA	=	0x00c5
                           0000C4   601 G$STO$0_0$0 == 0x00c4
                           0000C4   602 _STO	=	0x00c4
                           0000C3   603 G$SI$0_0$0 == 0x00c3
                           0000C3   604 _SI	=	0x00c3
                           0000C2   605 G$AA$0_0$0 == 0x00c2
                           0000C2   606 _AA	=	0x00c2
                           0000C0   607 G$I2CPX$0_0$0 == 0x00c0
                           0000C0   608 _I2CPX	=	0x00c0
                           0000BE   609 G$PADC$0_0$0 == 0x00be
                           0000BE   610 _PADC	=	0x00be
                           0000BD   611 G$PBOD$0_0$0 == 0x00bd
                           0000BD   612 _PBOD	=	0x00bd
                           0000BC   613 G$PS$0_0$0 == 0x00bc
                           0000BC   614 _PS	=	0x00bc
                           0000BB   615 G$PT1$0_0$0 == 0x00bb
                           0000BB   616 _PT1	=	0x00bb
                           0000BA   617 G$PX1$0_0$0 == 0x00ba
                           0000BA   618 _PX1	=	0x00ba
                           0000B9   619 G$PT0$0_0$0 == 0x00b9
                           0000B9   620 _PT0	=	0x00b9
                           0000B8   621 G$PX0$0_0$0 == 0x00b8
                           0000B8   622 _PX0	=	0x00b8
                           0000B0   623 G$P30$0_0$0 == 0x00b0
                           0000B0   624 _P30	=	0x00b0
                           0000AF   625 G$EA$0_0$0 == 0x00af
                           0000AF   626 _EA	=	0x00af
                           0000AE   627 G$EADC$0_0$0 == 0x00ae
                           0000AE   628 _EADC	=	0x00ae
                           0000AD   629 G$EBOD$0_0$0 == 0x00ad
                           0000AD   630 _EBOD	=	0x00ad
                           0000AC   631 G$ES$0_0$0 == 0x00ac
                           0000AC   632 _ES	=	0x00ac
                           0000AB   633 G$ET1$0_0$0 == 0x00ab
                           0000AB   634 _ET1	=	0x00ab
                           0000AA   635 G$EX1$0_0$0 == 0x00aa
                           0000AA   636 _EX1	=	0x00aa
                           0000A9   637 G$ET0$0_0$0 == 0x00a9
                           0000A9   638 _ET0	=	0x00a9
                           0000A8   639 G$EX0$0_0$0 == 0x00a8
                           0000A8   640 _EX0	=	0x00a8
                           0000A0   641 G$P20$0_0$0 == 0x00a0
                           0000A0   642 _P20	=	0x00a0
                           00009F   643 G$SM0$0_0$0 == 0x009f
                           00009F   644 _SM0	=	0x009f
                           00009F   645 G$FE$0_0$0 == 0x009f
                           00009F   646 _FE	=	0x009f
                           00009E   647 G$SM1$0_0$0 == 0x009e
                           00009E   648 _SM1	=	0x009e
                           00009D   649 G$SM2$0_0$0 == 0x009d
                           00009D   650 _SM2	=	0x009d
                           00009C   651 G$REN$0_0$0 == 0x009c
                           00009C   652 _REN	=	0x009c
                           00009B   653 G$TB8$0_0$0 == 0x009b
                           00009B   654 _TB8	=	0x009b
                           00009A   655 G$RB8$0_0$0 == 0x009a
                           00009A   656 _RB8	=	0x009a
                           000099   657 G$TI$0_0$0 == 0x0099
                           000099   658 _TI	=	0x0099
                           000098   659 G$RI$0_0$0 == 0x0098
                           000098   660 _RI	=	0x0098
                           000097   661 G$P17$0_0$0 == 0x0097
                           000097   662 _P17	=	0x0097
                           000096   663 G$P16$0_0$0 == 0x0096
                           000096   664 _P16	=	0x0096
                           000096   665 G$TXD_1$0_0$0 == 0x0096
                           000096   666 _TXD_1	=	0x0096
                           000095   667 G$P15$0_0$0 == 0x0095
                           000095   668 _P15	=	0x0095
                           000094   669 G$P14$0_0$0 == 0x0094
                           000094   670 _P14	=	0x0094
                           000094   671 G$SDA$0_0$0 == 0x0094
                           000094   672 _SDA	=	0x0094
                           000093   673 G$P13$0_0$0 == 0x0093
                           000093   674 _P13	=	0x0093
                           000093   675 G$SCL$0_0$0 == 0x0093
                           000093   676 _SCL	=	0x0093
                           000092   677 G$P12$0_0$0 == 0x0092
                           000092   678 _P12	=	0x0092
                           000091   679 G$P11$0_0$0 == 0x0091
                           000091   680 _P11	=	0x0091
                           000090   681 G$P10$0_0$0 == 0x0090
                           000090   682 _P10	=	0x0090
                           00008F   683 G$TF1$0_0$0 == 0x008f
                           00008F   684 _TF1	=	0x008f
                           00008E   685 G$TR1$0_0$0 == 0x008e
                           00008E   686 _TR1	=	0x008e
                           00008D   687 G$TF0$0_0$0 == 0x008d
                           00008D   688 _TF0	=	0x008d
                           00008C   689 G$TR0$0_0$0 == 0x008c
                           00008C   690 _TR0	=	0x008c
                           00008B   691 G$IE1$0_0$0 == 0x008b
                           00008B   692 _IE1	=	0x008b
                           00008A   693 G$IT1$0_0$0 == 0x008a
                           00008A   694 _IT1	=	0x008a
                           000089   695 G$IE0$0_0$0 == 0x0089
                           000089   696 _IE0	=	0x0089
                           000088   697 G$IT0$0_0$0 == 0x0088
                           000088   698 _IT0	=	0x0088
                           000087   699 G$P07$0_0$0 == 0x0087
                           000087   700 _P07	=	0x0087
                           000087   701 G$RXD$0_0$0 == 0x0087
                           000087   702 _RXD	=	0x0087
                           000086   703 G$P06$0_0$0 == 0x0086
                           000086   704 _P06	=	0x0086
                           000086   705 G$TXD$0_0$0 == 0x0086
                           000086   706 _TXD	=	0x0086
                           000085   707 G$P05$0_0$0 == 0x0085
                           000085   708 _P05	=	0x0085
                           000084   709 G$P04$0_0$0 == 0x0084
                           000084   710 _P04	=	0x0084
                           000084   711 G$STADC$0_0$0 == 0x0084
                           000084   712 _STADC	=	0x0084
                           000083   713 G$P03$0_0$0 == 0x0083
                           000083   714 _P03	=	0x0083
                           000082   715 G$P02$0_0$0 == 0x0082
                           000082   716 _P02	=	0x0082
                           000082   717 G$RXD_1$0_0$0 == 0x0082
                           000082   718 _RXD_1	=	0x0082
                           000081   719 G$P01$0_0$0 == 0x0081
                           000081   720 _P01	=	0x0081
                           000081   721 G$MISO$0_0$0 == 0x0081
                           000081   722 _MISO	=	0x0081
                           000080   723 G$P00$0_0$0 == 0x0080
                           000080   724 _P00	=	0x0080
                           000080   725 G$MOSI$0_0$0 == 0x0080
                           000080   726 _MOSI	=	0x0080
                                    727 ;--------------------------------------------------------
                                    728 ; overlayable register banks
                                    729 ;--------------------------------------------------------
                                    730 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        731 	.ds 8
                                    732 ;--------------------------------------------------------
                                    733 ; internal ram data
                                    734 ;--------------------------------------------------------
                                    735 	.area DSEG    (DATA)
                           000000   736 G$TA_REG_TMP$0_0$0==.
      00002A                        737 _TA_REG_TMP::
      00002A                        738 	.ds 1
                           000001   739 G$BYTE_TMP$0_0$0==.
      00002B                        740 _BYTE_TMP::
      00002B                        741 	.ds 1
                           000002   742 G$SFRS_TMP$0_0$0==.
      00002C                        743 _SFRS_TMP::
      00002C                        744 	.ds 1
                                    745 ;--------------------------------------------------------
                                    746 ; internal ram data
                                    747 ;--------------------------------------------------------
                                    748 	.area INITIALIZED
                                    749 ;--------------------------------------------------------
                                    750 ; overlayable items in internal ram
                                    751 ;--------------------------------------------------------
                                    752 ;--------------------------------------------------------
                                    753 ; indirectly addressable internal ram data
                                    754 ;--------------------------------------------------------
                                    755 	.area ISEG    (DATA)
                                    756 ;--------------------------------------------------------
                                    757 ; absolute internal ram data
                                    758 ;--------------------------------------------------------
                                    759 	.area IABS    (ABS,DATA)
                                    760 	.area IABS    (ABS,DATA)
                                    761 ;--------------------------------------------------------
                                    762 ; bit data
                                    763 ;--------------------------------------------------------
                                    764 	.area BSEG    (BIT)
                           000000   765 G$BIT_TMP$0_0$0==.
      000000                        766 _BIT_TMP::
      000000                        767 	.ds 1
                                    768 ;--------------------------------------------------------
                                    769 ; paged external ram data
                                    770 ;--------------------------------------------------------
                                    771 	.area PSEG    (PAG,XDATA)
                                    772 ;--------------------------------------------------------
                                    773 ; uninitialized external ram data
                                    774 ;--------------------------------------------------------
                                    775 	.area XSEG    (XDATA)
                           000000   776 Lcommon.Read_APROM_BYTE$u16_addr$1_0$145==.
      00002B                        777 _Read_APROM_BYTE_u16_addr_65536_145:
      00002B                        778 	.ds 2
                           000002   779 Lcommon.Software_Reset$u8Bootarea$1_0$147==.
      00002D                        780 _Software_Reset_u8Bootarea_65536_147:
      00002D                        781 	.ds 1
                           000003   782 Lcommon.PowerDown_Mode$PDStatus$1_0$149==.
      00002E                        783 _PowerDown_Mode_PDStatus_65536_149:
      00002E                        784 	.ds 1
                           000004   785 Lcommon.Idle_Mode$IdleStatus$1_0$152==.
      00002F                        786 _Idle_Mode_IdleStatus_65536_152:
      00002F                        787 	.ds 1
                           000005   788 Lcommon.Global_Interrupt$u8IntStatus$1_0$161==.
      000030                        789 _Global_Interrupt_u8IntStatus_65536_161:
      000030                        790 	.ds 1
                                    791 ;--------------------------------------------------------
                                    792 ; absolute external ram data
                                    793 ;--------------------------------------------------------
                                    794 	.area XABS    (ABS,XDATA)
                                    795 ;--------------------------------------------------------
                                    796 ; initialized external ram data
                                    797 ;--------------------------------------------------------
                                    798 	.area XISEG   (XDATA)
                                    799 	.area HOME    (CODE)
                                    800 	.area GSINIT0 (CODE)
                                    801 	.area GSINIT1 (CODE)
                                    802 	.area GSINIT2 (CODE)
                                    803 	.area GSINIT3 (CODE)
                                    804 	.area GSINIT4 (CODE)
                                    805 	.area GSINIT5 (CODE)
                                    806 	.area GSINIT  (CODE)
                                    807 	.area GSFINAL (CODE)
                                    808 	.area CSEG    (CODE)
                                    809 ;--------------------------------------------------------
                                    810 ; global & static initialisations
                                    811 ;--------------------------------------------------------
                                    812 	.area HOME    (CODE)
                                    813 	.area GSINIT  (CODE)
                                    814 	.area GSFINAL (CODE)
                                    815 	.area GSINIT  (CODE)
                                    816 ;--------------------------------------------------------
                                    817 ; Home
                                    818 ;--------------------------------------------------------
                                    819 	.area HOME    (CODE)
                                    820 	.area HOME    (CODE)
                                    821 ;--------------------------------------------------------
                                    822 ; code
                                    823 ;--------------------------------------------------------
                                    824 	.area CSEG    (CODE)
                                    825 ;------------------------------------------------------------
                                    826 ;Allocation info for local variables in function 'Read_APROM_BYTE'
                                    827 ;------------------------------------------------------------
                                    828 ;u16_addr                  Allocated with name '_Read_APROM_BYTE_u16_addr_65536_145'
                                    829 ;rdata                     Allocated with name '_Read_APROM_BYTE_rdata_65536_146'
                                    830 ;------------------------------------------------------------
                           000000   831 	Scommon$Read_APROM_BYTE$0 ==.
                                    832 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/common.c:34: uint8_t Read_APROM_BYTE(const uint16_t __code *u16_addr)
                                    833 ;	-----------------------------------------
                                    834 ;	 function Read_APROM_BYTE
                                    835 ;	-----------------------------------------
      001479                        836 _Read_APROM_BYTE:
                           000007   837 	ar7 = 0x07
                           000006   838 	ar6 = 0x06
                           000005   839 	ar5 = 0x05
                           000004   840 	ar4 = 0x04
                           000003   841 	ar3 = 0x03
                           000002   842 	ar2 = 0x02
                           000001   843 	ar1 = 0x01
                           000000   844 	ar0 = 0x00
                           000000   845 	Scommon$Read_APROM_BYTE$1 ==.
      001479 AF 83            [24]  846 	mov	r7,dph
      00147B E5 82            [12]  847 	mov	a,dpl
      00147D 90 00 2B         [24]  848 	mov	dptr,#_Read_APROM_BYTE_u16_addr_65536_145
      001480 F0               [24]  849 	movx	@dptr,a
      001481 EF               [12]  850 	mov	a,r7
      001482 A3               [24]  851 	inc	dptr
      001483 F0               [24]  852 	movx	@dptr,a
                           00000B   853 	Scommon$Read_APROM_BYTE$2 ==.
                                    854 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/common.c:39: rdata = *u16_addr >> 8;
      001484 90 00 2B         [24]  855 	mov	dptr,#_Read_APROM_BYTE_u16_addr_65536_145
      001487 E0               [24]  856 	movx	a,@dptr
      001488 FE               [12]  857 	mov	r6,a
      001489 A3               [24]  858 	inc	dptr
      00148A E0               [24]  859 	movx	a,@dptr
      00148B FF               [12]  860 	mov	r7,a
      00148C 8E 82            [24]  861 	mov	dpl,r6
      00148E 8F 83            [24]  862 	mov	dph,r7
      001490 E4               [12]  863 	clr	a
      001491 93               [24]  864 	movc	a,@a+dptr
      001492 A3               [24]  865 	inc	dptr
      001493 E4               [12]  866 	clr	a
      001494 93               [24]  867 	movc	a,@a+dptr
                           00001C   868 	Scommon$Read_APROM_BYTE$3 ==.
                                    869 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/common.c:40: return rdata;
                           00001C   870 	Scommon$Read_APROM_BYTE$4 ==.
                                    871 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/common.c:41: }
                           00001C   872 	Scommon$Read_APROM_BYTE$5 ==.
                           00001C   873 	XG$Read_APROM_BYTE$0$0 ==.
      001495 F5 82            [12]  874 	mov	dpl,a
      001497 22               [24]  875 	ret
                           00001F   876 	Scommon$Read_APROM_BYTE$6 ==.
                                    877 ;------------------------------------------------------------
                                    878 ;Allocation info for local variables in function 'Software_Reset'
                                    879 ;------------------------------------------------------------
                                    880 ;u8Bootarea                Allocated with name '_Software_Reset_u8Bootarea_65536_147'
                                    881 ;boottemp                  Allocated with name '_Software_Reset_boottemp_65536_148'
                                    882 ;------------------------------------------------------------
                           00001F   883 	Scommon$Software_Reset$7 ==.
                                    884 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/common.c:52: void Software_Reset(uint8_t u8Bootarea)
                                    885 ;	-----------------------------------------
                                    886 ;	 function Software_Reset
                                    887 ;	-----------------------------------------
      001498                        888 _Software_Reset:
                           00001F   889 	Scommon$Software_Reset$8 ==.
      001498 E5 82            [12]  890 	mov	a,dpl
      00149A 90 00 2D         [24]  891 	mov	dptr,#_Software_Reset_u8Bootarea_65536_147
      00149D F0               [24]  892 	movx	@dptr,a
                           000025   893 	Scommon$Software_Reset$9 ==.
                                    894 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/common.c:55: boottemp = (0x80|u8Bootarea);
      00149E E0               [24]  895 	movx	a,@dptr
      00149F 44 80            [12]  896 	orl	a,#0x80
      0014A1 FF               [12]  897 	mov	r7,a
                           000029   898 	Scommon$Software_Reset$10 ==.
                                    899 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/common.c:56: TA = 0xAA;
      0014A2 75 C7 AA         [24]  900 	mov	_TA,#0xaa
                           00002C   901 	Scommon$Software_Reset$11 ==.
                                    902 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/common.c:57: TA = 0x55;
      0014A5 75 C7 55         [24]  903 	mov	_TA,#0x55
                           00002F   904 	Scommon$Software_Reset$12 ==.
                                    905 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/common.c:58: CHPCON = boottemp;                   //software reset enable
      0014A8 8F 9F            [24]  906 	mov	_CHPCON,r7
                           000031   907 	Scommon$Software_Reset$13 ==.
                                    908 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/common.c:59: }
                           000031   909 	Scommon$Software_Reset$14 ==.
                           000031   910 	XG$Software_Reset$0$0 ==.
      0014AA 22               [24]  911 	ret
                           000032   912 	Scommon$Software_Reset$15 ==.
                                    913 ;------------------------------------------------------------
                                    914 ;Allocation info for local variables in function 'PowerDown_Mode'
                                    915 ;------------------------------------------------------------
                                    916 ;PDStatus                  Allocated with name '_PowerDown_Mode_PDStatus_65536_149'
                                    917 ;------------------------------------------------------------
                           000032   918 	Scommon$PowerDown_Mode$16 ==.
                                    919 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/common.c:68: void PowerDown_Mode(uint8_t PDStatus)
                                    920 ;	-----------------------------------------
                                    921 ;	 function PowerDown_Mode
                                    922 ;	-----------------------------------------
      0014AB                        923 _PowerDown_Mode:
                           000032   924 	Scommon$PowerDown_Mode$17 ==.
      0014AB E5 82            [12]  925 	mov	a,dpl
      0014AD 90 00 2E         [24]  926 	mov	dptr,#_PowerDown_Mode_PDStatus_65536_149
      0014B0 F0               [24]  927 	movx	@dptr,a
                           000038   928 	Scommon$PowerDown_Mode$18 ==.
                                    929 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/common.c:70: if (PDStatus)
      0014B1 E0               [24]  930 	movx	a,@dptr
      0014B2 60 05            [24]  931 	jz	00103$
                           00003B   932 	Scommon$PowerDown_Mode$19 ==.
                           00003B   933 	Scommon$PowerDown_Mode$20 ==.
                                    934 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/common.c:72: ENABLE_POWERDOWN_MODE;
      0014B4 43 87 02         [24]  935 	orl	_PCON,#0x02
                           00003E   936 	Scommon$PowerDown_Mode$21 ==.
                                    937 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/common.c:73: CALL_NOP;
      0014B7 00               [12]  938 	nop;
                           00003F   939 	Scommon$PowerDown_Mode$22 ==.
                                    940 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/common.c:74: CALL_NOP;
      0014B8 00               [12]  941 	nop;
                           000040   942 	Scommon$PowerDown_Mode$23 ==.
      0014B9                        943 00103$:
                           000040   944 	Scommon$PowerDown_Mode$24 ==.
                                    945 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/common.c:76: }
                           000040   946 	Scommon$PowerDown_Mode$25 ==.
                           000040   947 	XG$PowerDown_Mode$0$0 ==.
      0014B9 22               [24]  948 	ret
                           000041   949 	Scommon$PowerDown_Mode$26 ==.
                                    950 ;------------------------------------------------------------
                                    951 ;Allocation info for local variables in function 'Idle_Mode'
                                    952 ;------------------------------------------------------------
                                    953 ;IdleStatus                Allocated with name '_Idle_Mode_IdleStatus_65536_152'
                                    954 ;------------------------------------------------------------
                           000041   955 	Scommon$Idle_Mode$27 ==.
                                    956 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/common.c:85: void Idle_Mode(uint8_t IdleStatus)
                                    957 ;	-----------------------------------------
                                    958 ;	 function Idle_Mode
                                    959 ;	-----------------------------------------
      0014BA                        960 _Idle_Mode:
                           000041   961 	Scommon$Idle_Mode$28 ==.
      0014BA E5 82            [12]  962 	mov	a,dpl
      0014BC 90 00 2F         [24]  963 	mov	dptr,#_Idle_Mode_IdleStatus_65536_152
      0014BF F0               [24]  964 	movx	@dptr,a
                           000047   965 	Scommon$Idle_Mode$29 ==.
                                    966 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/common.c:87: if (IdleStatus)
      0014C0 E0               [24]  967 	movx	a,@dptr
      0014C1 60 05            [24]  968 	jz	00103$
                           00004A   969 	Scommon$Idle_Mode$30 ==.
                           00004A   970 	Scommon$Idle_Mode$31 ==.
                                    971 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/common.c:89: ENABLE_IDLE_MODE;
      0014C3 43 87 01         [24]  972 	orl	_PCON,#0x01
                           00004D   973 	Scommon$Idle_Mode$32 ==.
                                    974 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/common.c:90: CALL_NOP;
      0014C6 00               [12]  975 	nop;
                           00004E   976 	Scommon$Idle_Mode$33 ==.
                                    977 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/common.c:91: CALL_NOP;
      0014C7 00               [12]  978 	nop;
                           00004F   979 	Scommon$Idle_Mode$34 ==.
      0014C8                        980 00103$:
                           00004F   981 	Scommon$Idle_Mode$35 ==.
                                    982 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/common.c:93: }
                           00004F   983 	Scommon$Idle_Mode$36 ==.
                           00004F   984 	XG$Idle_Mode$0$0 ==.
      0014C8 22               [24]  985 	ret
                           000050   986 	Scommon$Idle_Mode$37 ==.
                                    987 ;------------------------------------------------------------
                                    988 ;Allocation info for local variables in function '_delay_'
                                    989 ;------------------------------------------------------------
                                    990 ;t1                        Allocated with name '__delay__t1_65536_156'
                                    991 ;t2                        Allocated with name '__delay__t2_65536_156'
                                    992 ;------------------------------------------------------------
                           000050   993 	Scommon$_delay_$38 ==.
                                    994 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/common.c:102: void _delay_(void)
                                    995 ;	-----------------------------------------
                                    996 ;	 function _delay_
                                    997 ;	-----------------------------------------
      0014C9                        998 __delay_:
                           000050   999 	Scommon$_delay_$39 ==.
                           000050  1000 	Scommon$_delay_$40 ==.
                                   1001 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/common.c:106: for (t2=0;t2<0x1A;t2++)
      0014C9 7F 00            [12] 1002 	mov	r7,#0x00
                           000052  1003 	Scommon$_delay_$41 ==.
                                   1004 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/common.c:108: for (t1=0;t1<0x7f;t1++)
      0014CB                       1005 00110$:
      0014CB 7E 7F            [12] 1006 	mov	r6,#0x7f
                           000054  1007 	Scommon$_delay_$42 ==.
      0014CD                       1008 00105$:
                           000054  1009 	Scommon$_delay_$43 ==.
                           000054  1010 	Scommon$_delay_$44 ==.
                                   1011 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/common.c:110: CALL_NOP;
      0014CD 00               [12] 1012 	nop;
                           000055  1013 	Scommon$_delay_$45 ==.
                                   1014 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/common.c:108: for (t1=0;t1<0x7f;t1++)
      0014CE DE FD            [24] 1015 	djnz	r6,00105$
                           000057  1016 	Scommon$_delay_$46 ==.
                           000057  1017 	Scommon$_delay_$47 ==.
                                   1018 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/common.c:106: for (t2=0;t2<0x1A;t2++)
      0014D0 0F               [12] 1019 	inc	r7
      0014D1 BF 1A 00         [24] 1020 	cjne	r7,#0x1a,00125$
      0014D4                       1021 00125$:
      0014D4 40 F5            [24] 1022 	jc	00110$
                           00005D  1023 	Scommon$_delay_$48 ==.
                                   1024 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/common.c:113: }
                           00005D  1025 	Scommon$_delay_$49 ==.
                           00005D  1026 	XG$_delay_$0$0 ==.
      0014D6 22               [24] 1027 	ret
                           00005E  1028 	Scommon$_delay_$50 ==.
                                   1029 ;------------------------------------------------------------
                                   1030 ;Allocation info for local variables in function 'Global_Interrupt'
                                   1031 ;------------------------------------------------------------
                                   1032 ;u8IntStatus               Allocated with name '_Global_Interrupt_u8IntStatus_65536_161'
                                   1033 ;------------------------------------------------------------
                           00005E  1034 	Scommon$Global_Interrupt$51 ==.
                                   1035 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/common.c:122: void Global_Interrupt(uint8_t u8IntStatus)
                                   1036 ;	-----------------------------------------
                                   1037 ;	 function Global_Interrupt
                                   1038 ;	-----------------------------------------
      0014D7                       1039 _Global_Interrupt:
                           00005E  1040 	Scommon$Global_Interrupt$52 ==.
      0014D7 E5 82            [12] 1041 	mov	a,dpl
      0014D9 90 00 30         [24] 1042 	mov	dptr,#_Global_Interrupt_u8IntStatus_65536_161
      0014DC F0               [24] 1043 	movx	@dptr,a
                           000064  1044 	Scommon$Global_Interrupt$53 ==.
                                   1045 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/common.c:124: EA = u8IntStatus;
      0014DD E0               [24] 1046 	movx	a,@dptr
                                   1047 ;	assignBit
      0014DE 24 FF            [12] 1048 	add	a,#0xff
      0014E0 92 AF            [24] 1049 	mov	_EA,c
                           000069  1050 	Scommon$Global_Interrupt$54 ==.
                                   1051 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/common.c:125: }
                           000069  1052 	Scommon$Global_Interrupt$55 ==.
                           000069  1053 	XG$Global_Interrupt$0$0 ==.
      0014E2 22               [24] 1054 	ret
                           00006A  1055 	Scommon$Global_Interrupt$56 ==.
                                   1056 	.area CSEG    (CODE)
                                   1057 	.area CONST   (CODE)
                                   1058 	.area XINIT   (CODE)
                                   1059 	.area INITIALIZER
                                   1060 	.area CABS    (ABS,CODE)
                                   1061 
                                   1062 	.area .debug_line (NOLOAD)
      000B9C 00 00 01 AF           1063 	.dw	0,Ldebug_line_end-Ldebug_line_start
      000BA0                       1064 Ldebug_line_start:
      000BA0 00 02                 1065 	.dw	2
      000BA2 00 00 00 A9           1066 	.dw	0,Ldebug_line_stmt-6-Ldebug_line_start
      000BA6 01                    1067 	.db	1
      000BA7 01                    1068 	.db	1
      000BA8 FB                    1069 	.db	-5
      000BA9 0F                    1070 	.db	15
      000BAA 0A                    1071 	.db	10
      000BAB 00                    1072 	.db	0
      000BAC 01                    1073 	.db	1
      000BAD 01                    1074 	.db	1
      000BAE 01                    1075 	.db	1
      000BAF 01                    1076 	.db	1
      000BB0 00                    1077 	.db	0
      000BB1 00                    1078 	.db	0
      000BB2 00                    1079 	.db	0
      000BB3 01                    1080 	.db	1
      000BB4 2F 2E 2E 2F 69 6E 63  1081 	.ascii "/../include/mcs51"
             6C 75 64 65 2F 6D 63
             73 35 31
      000BC5 00                    1082 	.db	0
      000BC6 2F 2E 2E 2F 69 6E 63  1083 	.ascii "/../include"
             6C 75 64 65
      000BD1 00                    1084 	.db	0
      000BD2 00                    1085 	.db	0
      000BD3 43 3A 2F 55 73 65 72  1086 	.ascii "C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/common.c"
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
             42 39 42 45 2F 4C 69
             62 72 61 72 79 2F 53
             74 64 44 72 69 76 65
             72 2F 73 72 63 2F 63
             6F 6D 6D 6F 6E 2E 63
      000C4A 00                    1087 	.db	0
      000C4B 00                    1088 	.uleb128	0
      000C4C 00                    1089 	.uleb128	0
      000C4D 00                    1090 	.uleb128	0
      000C4E 00                    1091 	.db	0
      000C4F                       1092 Ldebug_line_stmt:
      000C4F 00                    1093 	.db	0
      000C50 05                    1094 	.uleb128	5
      000C51 02                    1095 	.db	2
      000C52 00 00 14 79           1096 	.dw	0,(Scommon$Read_APROM_BYTE$0)
      000C56 03                    1097 	.db	3
      000C57 21                    1098 	.sleb128	33
      000C58 01                    1099 	.db	1
      000C59 09                    1100 	.db	9
      000C5A 00 0B                 1101 	.dw	Scommon$Read_APROM_BYTE$2-Scommon$Read_APROM_BYTE$0
      000C5C 03                    1102 	.db	3
      000C5D 05                    1103 	.sleb128	5
      000C5E 01                    1104 	.db	1
      000C5F 09                    1105 	.db	9
      000C60 00 11                 1106 	.dw	Scommon$Read_APROM_BYTE$3-Scommon$Read_APROM_BYTE$2
      000C62 03                    1107 	.db	3
      000C63 01                    1108 	.sleb128	1
      000C64 01                    1109 	.db	1
      000C65 09                    1110 	.db	9
      000C66 00 00                 1111 	.dw	Scommon$Read_APROM_BYTE$4-Scommon$Read_APROM_BYTE$3
      000C68 03                    1112 	.db	3
      000C69 01                    1113 	.sleb128	1
      000C6A 01                    1114 	.db	1
      000C6B 09                    1115 	.db	9
      000C6C 00 01                 1116 	.dw	1+Scommon$Read_APROM_BYTE$5-Scommon$Read_APROM_BYTE$4
      000C6E 00                    1117 	.db	0
      000C6F 01                    1118 	.uleb128	1
      000C70 01                    1119 	.db	1
      000C71 00                    1120 	.db	0
      000C72 05                    1121 	.uleb128	5
      000C73 02                    1122 	.db	2
      000C74 00 00 14 98           1123 	.dw	0,(Scommon$Software_Reset$7)
      000C78 03                    1124 	.db	3
      000C79 33                    1125 	.sleb128	51
      000C7A 01                    1126 	.db	1
      000C7B 09                    1127 	.db	9
      000C7C 00 06                 1128 	.dw	Scommon$Software_Reset$9-Scommon$Software_Reset$7
      000C7E 03                    1129 	.db	3
      000C7F 03                    1130 	.sleb128	3
      000C80 01                    1131 	.db	1
      000C81 09                    1132 	.db	9
      000C82 00 04                 1133 	.dw	Scommon$Software_Reset$10-Scommon$Software_Reset$9
      000C84 03                    1134 	.db	3
      000C85 01                    1135 	.sleb128	1
      000C86 01                    1136 	.db	1
      000C87 09                    1137 	.db	9
      000C88 00 03                 1138 	.dw	Scommon$Software_Reset$11-Scommon$Software_Reset$10
      000C8A 03                    1139 	.db	3
      000C8B 01                    1140 	.sleb128	1
      000C8C 01                    1141 	.db	1
      000C8D 09                    1142 	.db	9
      000C8E 00 03                 1143 	.dw	Scommon$Software_Reset$12-Scommon$Software_Reset$11
      000C90 03                    1144 	.db	3
      000C91 01                    1145 	.sleb128	1
      000C92 01                    1146 	.db	1
      000C93 09                    1147 	.db	9
      000C94 00 02                 1148 	.dw	Scommon$Software_Reset$13-Scommon$Software_Reset$12
      000C96 03                    1149 	.db	3
      000C97 01                    1150 	.sleb128	1
      000C98 01                    1151 	.db	1
      000C99 09                    1152 	.db	9
      000C9A 00 01                 1153 	.dw	1+Scommon$Software_Reset$14-Scommon$Software_Reset$13
      000C9C 00                    1154 	.db	0
      000C9D 01                    1155 	.uleb128	1
      000C9E 01                    1156 	.db	1
      000C9F 00                    1157 	.db	0
      000CA0 05                    1158 	.uleb128	5
      000CA1 02                    1159 	.db	2
      000CA2 00 00 14 AB           1160 	.dw	0,(Scommon$PowerDown_Mode$16)
      000CA6 03                    1161 	.db	3
      000CA7 C3 00                 1162 	.sleb128	67
      000CA9 01                    1163 	.db	1
      000CAA 09                    1164 	.db	9
      000CAB 00 06                 1165 	.dw	Scommon$PowerDown_Mode$18-Scommon$PowerDown_Mode$16
      000CAD 03                    1166 	.db	3
      000CAE 02                    1167 	.sleb128	2
      000CAF 01                    1168 	.db	1
      000CB0 09                    1169 	.db	9
      000CB1 00 03                 1170 	.dw	Scommon$PowerDown_Mode$20-Scommon$PowerDown_Mode$18
      000CB3 03                    1171 	.db	3
      000CB4 02                    1172 	.sleb128	2
      000CB5 01                    1173 	.db	1
      000CB6 09                    1174 	.db	9
      000CB7 00 03                 1175 	.dw	Scommon$PowerDown_Mode$21-Scommon$PowerDown_Mode$20
      000CB9 03                    1176 	.db	3
      000CBA 01                    1177 	.sleb128	1
      000CBB 01                    1178 	.db	1
      000CBC 09                    1179 	.db	9
      000CBD 00 01                 1180 	.dw	Scommon$PowerDown_Mode$22-Scommon$PowerDown_Mode$21
      000CBF 03                    1181 	.db	3
      000CC0 01                    1182 	.sleb128	1
      000CC1 01                    1183 	.db	1
      000CC2 09                    1184 	.db	9
      000CC3 00 01                 1185 	.dw	Scommon$PowerDown_Mode$24-Scommon$PowerDown_Mode$22
      000CC5 03                    1186 	.db	3
      000CC6 02                    1187 	.sleb128	2
      000CC7 01                    1188 	.db	1
      000CC8 09                    1189 	.db	9
      000CC9 00 01                 1190 	.dw	1+Scommon$PowerDown_Mode$25-Scommon$PowerDown_Mode$24
      000CCB 00                    1191 	.db	0
      000CCC 01                    1192 	.uleb128	1
      000CCD 01                    1193 	.db	1
      000CCE 00                    1194 	.db	0
      000CCF 05                    1195 	.uleb128	5
      000CD0 02                    1196 	.db	2
      000CD1 00 00 14 BA           1197 	.dw	0,(Scommon$Idle_Mode$27)
      000CD5 03                    1198 	.db	3
      000CD6 D4 00                 1199 	.sleb128	84
      000CD8 01                    1200 	.db	1
      000CD9 09                    1201 	.db	9
      000CDA 00 06                 1202 	.dw	Scommon$Idle_Mode$29-Scommon$Idle_Mode$27
      000CDC 03                    1203 	.db	3
      000CDD 02                    1204 	.sleb128	2
      000CDE 01                    1205 	.db	1
      000CDF 09                    1206 	.db	9
      000CE0 00 03                 1207 	.dw	Scommon$Idle_Mode$31-Scommon$Idle_Mode$29
      000CE2 03                    1208 	.db	3
      000CE3 02                    1209 	.sleb128	2
      000CE4 01                    1210 	.db	1
      000CE5 09                    1211 	.db	9
      000CE6 00 03                 1212 	.dw	Scommon$Idle_Mode$32-Scommon$Idle_Mode$31
      000CE8 03                    1213 	.db	3
      000CE9 01                    1214 	.sleb128	1
      000CEA 01                    1215 	.db	1
      000CEB 09                    1216 	.db	9
      000CEC 00 01                 1217 	.dw	Scommon$Idle_Mode$33-Scommon$Idle_Mode$32
      000CEE 03                    1218 	.db	3
      000CEF 01                    1219 	.sleb128	1
      000CF0 01                    1220 	.db	1
      000CF1 09                    1221 	.db	9
      000CF2 00 01                 1222 	.dw	Scommon$Idle_Mode$35-Scommon$Idle_Mode$33
      000CF4 03                    1223 	.db	3
      000CF5 02                    1224 	.sleb128	2
      000CF6 01                    1225 	.db	1
      000CF7 09                    1226 	.db	9
      000CF8 00 01                 1227 	.dw	1+Scommon$Idle_Mode$36-Scommon$Idle_Mode$35
      000CFA 00                    1228 	.db	0
      000CFB 01                    1229 	.uleb128	1
      000CFC 01                    1230 	.db	1
      000CFD 00                    1231 	.db	0
      000CFE 05                    1232 	.uleb128	5
      000CFF 02                    1233 	.db	2
      000D00 00 00 14 C9           1234 	.dw	0,(Scommon$_delay_$38)
      000D04 03                    1235 	.db	3
      000D05 E5 00                 1236 	.sleb128	101
      000D07 01                    1237 	.db	1
      000D08 09                    1238 	.db	9
      000D09 00 00                 1239 	.dw	Scommon$_delay_$40-Scommon$_delay_$38
      000D0B 03                    1240 	.db	3
      000D0C 04                    1241 	.sleb128	4
      000D0D 01                    1242 	.db	1
      000D0E 09                    1243 	.db	9
      000D0F 00 02                 1244 	.dw	Scommon$_delay_$41-Scommon$_delay_$40
      000D11 03                    1245 	.db	3
      000D12 02                    1246 	.sleb128	2
      000D13 01                    1247 	.db	1
      000D14 09                    1248 	.db	9
      000D15 00 02                 1249 	.dw	Scommon$_delay_$44-Scommon$_delay_$41
      000D17 03                    1250 	.db	3
      000D18 02                    1251 	.sleb128	2
      000D19 01                    1252 	.db	1
      000D1A 09                    1253 	.db	9
      000D1B 00 01                 1254 	.dw	Scommon$_delay_$45-Scommon$_delay_$44
      000D1D 03                    1255 	.db	3
      000D1E 7E                    1256 	.sleb128	-2
      000D1F 01                    1257 	.db	1
      000D20 09                    1258 	.db	9
      000D21 00 02                 1259 	.dw	Scommon$_delay_$47-Scommon$_delay_$45
      000D23 03                    1260 	.db	3
      000D24 7E                    1261 	.sleb128	-2
      000D25 01                    1262 	.db	1
      000D26 09                    1263 	.db	9
      000D27 00 06                 1264 	.dw	Scommon$_delay_$48-Scommon$_delay_$47
      000D29 03                    1265 	.db	3
      000D2A 07                    1266 	.sleb128	7
      000D2B 01                    1267 	.db	1
      000D2C 09                    1268 	.db	9
      000D2D 00 01                 1269 	.dw	1+Scommon$_delay_$49-Scommon$_delay_$48
      000D2F 00                    1270 	.db	0
      000D30 01                    1271 	.uleb128	1
      000D31 01                    1272 	.db	1
      000D32 00                    1273 	.db	0
      000D33 05                    1274 	.uleb128	5
      000D34 02                    1275 	.db	2
      000D35 00 00 14 D7           1276 	.dw	0,(Scommon$Global_Interrupt$51)
      000D39 03                    1277 	.db	3
      000D3A F9 00                 1278 	.sleb128	121
      000D3C 01                    1279 	.db	1
      000D3D 09                    1280 	.db	9
      000D3E 00 06                 1281 	.dw	Scommon$Global_Interrupt$53-Scommon$Global_Interrupt$51
      000D40 03                    1282 	.db	3
      000D41 02                    1283 	.sleb128	2
      000D42 01                    1284 	.db	1
      000D43 09                    1285 	.db	9
      000D44 00 05                 1286 	.dw	Scommon$Global_Interrupt$54-Scommon$Global_Interrupt$53
      000D46 03                    1287 	.db	3
      000D47 01                    1288 	.sleb128	1
      000D48 01                    1289 	.db	1
      000D49 09                    1290 	.db	9
      000D4A 00 01                 1291 	.dw	1+Scommon$Global_Interrupt$55-Scommon$Global_Interrupt$54
      000D4C 00                    1292 	.db	0
      000D4D 01                    1293 	.uleb128	1
      000D4E 01                    1294 	.db	1
      000D4F                       1295 Ldebug_line_end:
                                   1296 
                                   1297 	.area .debug_loc (NOLOAD)
      000258                       1298 Ldebug_loc_start:
      000258 00 00 14 D7           1299 	.dw	0,(Scommon$Global_Interrupt$52)
      00025C 00 00 14 E3           1300 	.dw	0,(Scommon$Global_Interrupt$56)
      000260 00 02                 1301 	.dw	2
      000262 86                    1302 	.db	134
      000263 01                    1303 	.sleb128	1
      000264 00 00 00 00           1304 	.dw	0,0
      000268 00 00 00 00           1305 	.dw	0,0
      00026C 00 00 14 C9           1306 	.dw	0,(Scommon$_delay_$39)
      000270 00 00 14 D7           1307 	.dw	0,(Scommon$_delay_$50)
      000274 00 02                 1308 	.dw	2
      000276 86                    1309 	.db	134
      000277 01                    1310 	.sleb128	1
      000278 00 00 00 00           1311 	.dw	0,0
      00027C 00 00 00 00           1312 	.dw	0,0
      000280 00 00 14 BA           1313 	.dw	0,(Scommon$Idle_Mode$28)
      000284 00 00 14 C9           1314 	.dw	0,(Scommon$Idle_Mode$37)
      000288 00 02                 1315 	.dw	2
      00028A 86                    1316 	.db	134
      00028B 01                    1317 	.sleb128	1
      00028C 00 00 00 00           1318 	.dw	0,0
      000290 00 00 00 00           1319 	.dw	0,0
      000294 00 00 14 AB           1320 	.dw	0,(Scommon$PowerDown_Mode$17)
      000298 00 00 14 BA           1321 	.dw	0,(Scommon$PowerDown_Mode$26)
      00029C 00 02                 1322 	.dw	2
      00029E 86                    1323 	.db	134
      00029F 01                    1324 	.sleb128	1
      0002A0 00 00 00 00           1325 	.dw	0,0
      0002A4 00 00 00 00           1326 	.dw	0,0
      0002A8 00 00 14 98           1327 	.dw	0,(Scommon$Software_Reset$8)
      0002AC 00 00 14 AB           1328 	.dw	0,(Scommon$Software_Reset$15)
      0002B0 00 02                 1329 	.dw	2
      0002B2 86                    1330 	.db	134
      0002B3 01                    1331 	.sleb128	1
      0002B4 00 00 00 00           1332 	.dw	0,0
      0002B8 00 00 00 00           1333 	.dw	0,0
      0002BC 00 00 14 79           1334 	.dw	0,(Scommon$Read_APROM_BYTE$1)
      0002C0 00 00 14 98           1335 	.dw	0,(Scommon$Read_APROM_BYTE$6)
      0002C4 00 02                 1336 	.dw	2
      0002C6 86                    1337 	.db	134
      0002C7 01                    1338 	.sleb128	1
      0002C8 00 00 00 00           1339 	.dw	0,0
      0002CC 00 00 00 00           1340 	.dw	0,0
                                   1341 
                                   1342 	.area .debug_abbrev (NOLOAD)
      0000F7                       1343 Ldebug_abbrev:
      0000F7 01                    1344 	.uleb128	1
      0000F8 11                    1345 	.uleb128	17
      0000F9 01                    1346 	.db	1
      0000FA 03                    1347 	.uleb128	3
      0000FB 08                    1348 	.uleb128	8
      0000FC 10                    1349 	.uleb128	16
      0000FD 06                    1350 	.uleb128	6
      0000FE 13                    1351 	.uleb128	19
      0000FF 0B                    1352 	.uleb128	11
      000100 25                    1353 	.uleb128	37
      000101 08                    1354 	.uleb128	8
      000102 00                    1355 	.uleb128	0
      000103 00                    1356 	.uleb128	0
      000104 02                    1357 	.uleb128	2
      000105 24                    1358 	.uleb128	36
      000106 00                    1359 	.db	0
      000107 03                    1360 	.uleb128	3
      000108 08                    1361 	.uleb128	8
      000109 0B                    1362 	.uleb128	11
      00010A 0B                    1363 	.uleb128	11
      00010B 3E                    1364 	.uleb128	62
      00010C 0B                    1365 	.uleb128	11
      00010D 00                    1366 	.uleb128	0
      00010E 00                    1367 	.uleb128	0
      00010F 03                    1368 	.uleb128	3
      000110 2E                    1369 	.uleb128	46
      000111 01                    1370 	.db	1
      000112 01                    1371 	.uleb128	1
      000113 13                    1372 	.uleb128	19
      000114 03                    1373 	.uleb128	3
      000115 08                    1374 	.uleb128	8
      000116 11                    1375 	.uleb128	17
      000117 01                    1376 	.uleb128	1
      000118 12                    1377 	.uleb128	18
      000119 01                    1378 	.uleb128	1
      00011A 3F                    1379 	.uleb128	63
      00011B 0C                    1380 	.uleb128	12
      00011C 40                    1381 	.uleb128	64
      00011D 06                    1382 	.uleb128	6
      00011E 49                    1383 	.uleb128	73
      00011F 13                    1384 	.uleb128	19
      000120 00                    1385 	.uleb128	0
      000121 00                    1386 	.uleb128	0
      000122 04                    1387 	.uleb128	4
      000123 26                    1388 	.uleb128	38
      000124 00                    1389 	.db	0
      000125 49                    1390 	.uleb128	73
      000126 13                    1391 	.uleb128	19
      000127 00                    1392 	.uleb128	0
      000128 00                    1393 	.uleb128	0
      000129 05                    1394 	.uleb128	5
      00012A 0F                    1395 	.uleb128	15
      00012B 00                    1396 	.db	0
      00012C 0B                    1397 	.uleb128	11
      00012D 0B                    1398 	.uleb128	11
      00012E 49                    1399 	.uleb128	73
      00012F 13                    1400 	.uleb128	19
      000130 00                    1401 	.uleb128	0
      000131 00                    1402 	.uleb128	0
      000132 06                    1403 	.uleb128	6
      000133 05                    1404 	.uleb128	5
      000134 00                    1405 	.db	0
      000135 02                    1406 	.uleb128	2
      000136 0A                    1407 	.uleb128	10
      000137 03                    1408 	.uleb128	3
      000138 08                    1409 	.uleb128	8
      000139 49                    1410 	.uleb128	73
      00013A 13                    1411 	.uleb128	19
      00013B 00                    1412 	.uleb128	0
      00013C 00                    1413 	.uleb128	0
      00013D 07                    1414 	.uleb128	7
      00013E 34                    1415 	.uleb128	52
      00013F 00                    1416 	.db	0
      000140 03                    1417 	.uleb128	3
      000141 08                    1418 	.uleb128	8
      000142 49                    1419 	.uleb128	73
      000143 13                    1420 	.uleb128	19
      000144 00                    1421 	.uleb128	0
      000145 00                    1422 	.uleb128	0
      000146 08                    1423 	.uleb128	8
      000147 2E                    1424 	.uleb128	46
      000148 01                    1425 	.db	1
      000149 01                    1426 	.uleb128	1
      00014A 13                    1427 	.uleb128	19
      00014B 03                    1428 	.uleb128	3
      00014C 08                    1429 	.uleb128	8
      00014D 11                    1430 	.uleb128	17
      00014E 01                    1431 	.uleb128	1
      00014F 12                    1432 	.uleb128	18
      000150 01                    1433 	.uleb128	1
      000151 3F                    1434 	.uleb128	63
      000152 0C                    1435 	.uleb128	12
      000153 40                    1436 	.uleb128	64
      000154 06                    1437 	.uleb128	6
      000155 00                    1438 	.uleb128	0
      000156 00                    1439 	.uleb128	0
      000157 09                    1440 	.uleb128	9
      000158 0B                    1441 	.uleb128	11
      000159 00                    1442 	.db	0
      00015A 11                    1443 	.uleb128	17
      00015B 01                    1444 	.uleb128	1
      00015C 12                    1445 	.uleb128	18
      00015D 01                    1446 	.uleb128	1
      00015E 00                    1447 	.uleb128	0
      00015F 00                    1448 	.uleb128	0
      000160 0A                    1449 	.uleb128	10
      000161 0B                    1450 	.uleb128	11
      000162 01                    1451 	.db	1
      000163 01                    1452 	.uleb128	1
      000164 13                    1453 	.uleb128	19
      000165 11                    1454 	.uleb128	17
      000166 01                    1455 	.uleb128	1
      000167 00                    1456 	.uleb128	0
      000168 00                    1457 	.uleb128	0
      000169 0B                    1458 	.uleb128	11
      00016A 34                    1459 	.uleb128	52
      00016B 00                    1460 	.db	0
      00016C 02                    1461 	.uleb128	2
      00016D 0A                    1462 	.uleb128	10
      00016E 03                    1463 	.uleb128	3
      00016F 08                    1464 	.uleb128	8
      000170 3F                    1465 	.uleb128	63
      000171 0C                    1466 	.uleb128	12
      000172 49                    1467 	.uleb128	73
      000173 13                    1468 	.uleb128	19
      000174 00                    1469 	.uleb128	0
      000175 00                    1470 	.uleb128	0
      000176 0C                    1471 	.uleb128	12
      000177 35                    1472 	.uleb128	53
      000178 00                    1473 	.db	0
      000179 49                    1474 	.uleb128	73
      00017A 13                    1475 	.uleb128	19
      00017B 00                    1476 	.uleb128	0
      00017C 00                    1477 	.uleb128	0
      00017D 00                    1478 	.uleb128	0
                                   1479 
                                   1480 	.area .debug_info (NOLOAD)
      001F4B 00 00 12 44           1481 	.dw	0,Ldebug_info_end-Ldebug_info_start
      001F4F                       1482 Ldebug_info_start:
      001F4F 00 02                 1483 	.dw	2
      001F51 00 00 00 F7           1484 	.dw	0,(Ldebug_abbrev)
      001F55 04                    1485 	.db	4
      001F56 01                    1486 	.uleb128	1
      001F57 43 3A 2F 55 73 65 72  1487 	.ascii "C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/common.c"
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
             42 39 42 45 2F 4C 69
             62 72 61 72 79 2F 53
             74 64 44 72 69 76 65
             72 2F 73 72 63 2F 63
             6F 6D 6D 6F 6E 2E 63
      001FCE 00                    1488 	.db	0
      001FCF 00 00 0B 9C           1489 	.dw	0,(Ldebug_line_start+-4)
      001FD3 01                    1490 	.db	1
      001FD4 53 44 43 43 20 76 65  1491 	.ascii "SDCC version 4.2.6 #13647"
             72 73 69 6F 6E 20 34
             2E 32 2E 36 20 23 31
             33 36 34 37
      001FED 00                    1492 	.db	0
      001FEE 02                    1493 	.uleb128	2
      001FEF 75 6E 73 69 67 6E 65  1494 	.ascii "unsigned char"
             64 20 63 68 61 72
      001FFC 00                    1495 	.db	0
      001FFD 01                    1496 	.db	1
      001FFE 08                    1497 	.db	8
      001FFF 03                    1498 	.uleb128	3
      002000 00 00 01 05           1499 	.dw	0,261
      002004 52 65 61 64 5F 41 50  1500 	.ascii "Read_APROM_BYTE"
             52 4F 4D 5F 42 59 54
             45
      002013 00                    1501 	.db	0
      002014 00 00 14 79           1502 	.dw	0,(_Read_APROM_BYTE)
      002018 00 00 14 96           1503 	.dw	0,(XG$Read_APROM_BYTE$0$0+1)
      00201C 01                    1504 	.db	1
      00201D 00 00 02 BC           1505 	.dw	0,(Ldebug_loc_start+100)
      002021 00 00 00 A3           1506 	.dw	0,163
      002025 04                    1507 	.uleb128	4
      002026 00 00 01 05           1508 	.dw	0,261
      00202A 05                    1509 	.uleb128	5
      00202B 02                    1510 	.db	2
      00202C 00 00 00 DA           1511 	.dw	0,218
      002030 06                    1512 	.uleb128	6
      002031 05                    1513 	.db	5
      002032 03                    1514 	.db	3
      002033 00 00 00 2B           1515 	.dw	0,(_Read_APROM_BYTE_u16_addr_65536_145)
      002037 75 31 36 5F 61 64 64  1516 	.ascii "u16_addr"
             72
      00203F 00                    1517 	.db	0
      002040 00 00 00 DF           1518 	.dw	0,223
      002044 07                    1519 	.uleb128	7
      002045 72 64 61 74 61        1520 	.ascii "rdata"
      00204A 00                    1521 	.db	0
      00204B 00 00 00 A3           1522 	.dw	0,163
      00204F 00                    1523 	.uleb128	0
      002050 02                    1524 	.uleb128	2
      002051 75 6E 73 69 67 6E 65  1525 	.ascii "unsigned int"
             64 20 69 6E 74
      00205D 00                    1526 	.db	0
      00205E 02                    1527 	.db	2
      00205F 07                    1528 	.db	7
      002060 08                    1529 	.uleb128	8
      002061 00 00 01 5B           1530 	.dw	0,347
      002065 53 6F 66 74 77 61 72  1531 	.ascii "Software_Reset"
             65 5F 52 65 73 65 74
      002073 00                    1532 	.db	0
      002074 00 00 14 98           1533 	.dw	0,(_Software_Reset)
      002078 00 00 14 AB           1534 	.dw	0,(XG$Software_Reset$0$0+1)
      00207C 01                    1535 	.db	1
      00207D 00 00 02 A8           1536 	.dw	0,(Ldebug_loc_start+80)
      002081 06                    1537 	.uleb128	6
      002082 05                    1538 	.db	5
      002083 03                    1539 	.db	3
      002084 00 00 00 2D           1540 	.dw	0,(_Software_Reset_u8Bootarea_65536_147)
      002088 75 38 42 6F 6F 74 61  1541 	.ascii "u8Bootarea"
             72 65 61
      002092 00                    1542 	.db	0
      002093 00 00 00 A3           1543 	.dw	0,163
      002097 07                    1544 	.uleb128	7
      002098 62 6F 6F 74 74 65 6D  1545 	.ascii "boottemp"
             70
      0020A0 00                    1546 	.db	0
      0020A1 00 00 00 A3           1547 	.dw	0,163
      0020A5 00                    1548 	.uleb128	0
      0020A6 08                    1549 	.uleb128	8
      0020A7 00 00 01 9A           1550 	.dw	0,410
      0020AB 50 6F 77 65 72 44 6F  1551 	.ascii "PowerDown_Mode"
             77 6E 5F 4D 6F 64 65
      0020B9 00                    1552 	.db	0
      0020BA 00 00 14 AB           1553 	.dw	0,(_PowerDown_Mode)
      0020BE 00 00 14 BA           1554 	.dw	0,(XG$PowerDown_Mode$0$0+1)
      0020C2 01                    1555 	.db	1
      0020C3 00 00 02 94           1556 	.dw	0,(Ldebug_loc_start+60)
      0020C7 06                    1557 	.uleb128	6
      0020C8 05                    1558 	.db	5
      0020C9 03                    1559 	.db	3
      0020CA 00 00 00 2E           1560 	.dw	0,(_PowerDown_Mode_PDStatus_65536_149)
      0020CE 50 44 53 74 61 74 75  1561 	.ascii "PDStatus"
             73
      0020D6 00                    1562 	.db	0
      0020D7 00 00 00 A3           1563 	.dw	0,163
      0020DB 09                    1564 	.uleb128	9
      0020DC 00 00 14 B4           1565 	.dw	0,(Scommon$PowerDown_Mode$19)
      0020E0 00 00 14 B9           1566 	.dw	0,(Scommon$PowerDown_Mode$23)
      0020E4 00                    1567 	.uleb128	0
      0020E5 08                    1568 	.uleb128	8
      0020E6 00 00 01 D6           1569 	.dw	0,470
      0020EA 49 64 6C 65 5F 4D 6F  1570 	.ascii "Idle_Mode"
             64 65
      0020F3 00                    1571 	.db	0
      0020F4 00 00 14 BA           1572 	.dw	0,(_Idle_Mode)
      0020F8 00 00 14 C9           1573 	.dw	0,(XG$Idle_Mode$0$0+1)
      0020FC 01                    1574 	.db	1
      0020FD 00 00 02 80           1575 	.dw	0,(Ldebug_loc_start+40)
      002101 06                    1576 	.uleb128	6
      002102 05                    1577 	.db	5
      002103 03                    1578 	.db	3
      002104 00 00 00 2F           1579 	.dw	0,(_Idle_Mode_IdleStatus_65536_152)
      002108 49 64 6C 65 53 74 61  1580 	.ascii "IdleStatus"
             74 75 73
      002112 00                    1581 	.db	0
      002113 00 00 00 A3           1582 	.dw	0,163
      002117 09                    1583 	.uleb128	9
      002118 00 00 14 C3           1584 	.dw	0,(Scommon$Idle_Mode$30)
      00211C 00 00 14 C8           1585 	.dw	0,(Scommon$Idle_Mode$34)
      002120 00                    1586 	.uleb128	0
      002121 08                    1587 	.uleb128	8
      002122 00 00 02 14           1588 	.dw	0,532
      002126 5F 64 65 6C 61 79 5F  1589 	.ascii "_delay_"
      00212D 00                    1590 	.db	0
      00212E 00 00 14 C9           1591 	.dw	0,(__delay_)
      002132 00 00 14 D7           1592 	.dw	0,(XG$_delay_$0$0+1)
      002136 01                    1593 	.db	1
      002137 00 00 02 6C           1594 	.dw	0,(Ldebug_loc_start+20)
      00213B 0A                    1595 	.uleb128	10
      00213C 00 00 02 03           1596 	.dw	0,515
      002140 00 00 14 CD           1597 	.dw	0,(Scommon$_delay_$42)
      002144 09                    1598 	.uleb128	9
      002145 00 00 14 CD           1599 	.dw	0,(Scommon$_delay_$43)
      002149 00 00 14 D0           1600 	.dw	0,(Scommon$_delay_$46)
      00214D 00                    1601 	.uleb128	0
      00214E 07                    1602 	.uleb128	7
      00214F 74 31                 1603 	.ascii "t1"
      002151 00                    1604 	.db	0
      002152 00 00 00 A3           1605 	.dw	0,163
      002156 07                    1606 	.uleb128	7
      002157 74 32                 1607 	.ascii "t2"
      002159 00                    1608 	.db	0
      00215A 00 00 00 A3           1609 	.dw	0,163
      00215E 00                    1610 	.uleb128	0
      00215F 08                    1611 	.uleb128	8
      002160 00 00 02 4F           1612 	.dw	0,591
      002164 47 6C 6F 62 61 6C 5F  1613 	.ascii "Global_Interrupt"
             49 6E 74 65 72 72 75
             70 74
      002174 00                    1614 	.db	0
      002175 00 00 14 D7           1615 	.dw	0,(_Global_Interrupt)
      002179 00 00 14 E3           1616 	.dw	0,(XG$Global_Interrupt$0$0+1)
      00217D 01                    1617 	.db	1
      00217E 00 00 02 58           1618 	.dw	0,(Ldebug_loc_start)
      002182 06                    1619 	.uleb128	6
      002183 05                    1620 	.db	5
      002184 03                    1621 	.db	3
      002185 00 00 00 30           1622 	.dw	0,(_Global_Interrupt_u8IntStatus_65536_161)
      002189 75 38 49 6E 74 53 74  1623 	.ascii "u8IntStatus"
             61 74 75 73
      002194 00                    1624 	.db	0
      002195 00 00 00 A3           1625 	.dw	0,163
      002199 00                    1626 	.uleb128	0
      00219A 0B                    1627 	.uleb128	11
      00219B 05                    1628 	.db	5
      00219C 03                    1629 	.db	3
      00219D 00 00 00 2A           1630 	.dw	0,(_TA_REG_TMP)
      0021A1 54 41 5F 52 45 47 5F  1631 	.ascii "TA_REG_TMP"
             54 4D 50
      0021AB 00                    1632 	.db	0
      0021AC 01                    1633 	.db	1
      0021AD 00 00 00 A3           1634 	.dw	0,163
      0021B1 0B                    1635 	.uleb128	11
      0021B2 05                    1636 	.db	5
      0021B3 03                    1637 	.db	3
      0021B4 00 00 00 2B           1638 	.dw	0,(_BYTE_TMP)
      0021B8 42 59 54 45 5F 54 4D  1639 	.ascii "BYTE_TMP"
             50
      0021C0 00                    1640 	.db	0
      0021C1 01                    1641 	.db	1
      0021C2 00 00 00 A3           1642 	.dw	0,163
      0021C6 0B                    1643 	.uleb128	11
      0021C7 05                    1644 	.db	5
      0021C8 03                    1645 	.db	3
      0021C9 00 00 00 2C           1646 	.dw	0,(_SFRS_TMP)
      0021CD 53 46 52 53 5F 54 4D  1647 	.ascii "SFRS_TMP"
             50
      0021D5 00                    1648 	.db	0
      0021D6 01                    1649 	.db	1
      0021D7 00 00 00 A3           1650 	.dw	0,163
      0021DB 02                    1651 	.uleb128	2
      0021DC 5F 62 69 74           1652 	.ascii "_bit"
      0021E0 00                    1653 	.db	0
      0021E1 01                    1654 	.db	1
      0021E2 08                    1655 	.db	8
      0021E3 0B                    1656 	.uleb128	11
      0021E4 05                    1657 	.db	5
      0021E5 03                    1658 	.db	3
      0021E6 00 00 00 00           1659 	.dw	0,(_BIT_TMP)
      0021EA 42 49 54 5F 54 4D 50  1660 	.ascii "BIT_TMP"
      0021F1 00                    1661 	.db	0
      0021F2 01                    1662 	.db	1
      0021F3 00 00 02 90           1663 	.dw	0,656
      0021F7 0C                    1664 	.uleb128	12
      0021F8 00 00 00 A3           1665 	.dw	0,163
      0021FC 0B                    1666 	.uleb128	11
      0021FD 05                    1667 	.db	5
      0021FE 03                    1668 	.db	3
      0021FF 00 00 00 80           1669 	.dw	0,(_P0)
      002203 50 30                 1670 	.ascii "P0"
      002205 00                    1671 	.db	0
      002206 01                    1672 	.db	1
      002207 00 00 02 AC           1673 	.dw	0,684
      00220B 0B                    1674 	.uleb128	11
      00220C 05                    1675 	.db	5
      00220D 03                    1676 	.db	3
      00220E 00 00 00 81           1677 	.dw	0,(_SP)
      002212 53 50                 1678 	.ascii "SP"
      002214 00                    1679 	.db	0
      002215 01                    1680 	.db	1
      002216 00 00 02 AC           1681 	.dw	0,684
      00221A 0B                    1682 	.uleb128	11
      00221B 05                    1683 	.db	5
      00221C 03                    1684 	.db	3
      00221D 00 00 00 82           1685 	.dw	0,(_DPL)
      002221 44 50 4C              1686 	.ascii "DPL"
      002224 00                    1687 	.db	0
      002225 01                    1688 	.db	1
      002226 00 00 02 AC           1689 	.dw	0,684
      00222A 0B                    1690 	.uleb128	11
      00222B 05                    1691 	.db	5
      00222C 03                    1692 	.db	3
      00222D 00 00 00 83           1693 	.dw	0,(_DPH)
      002231 44 50 48              1694 	.ascii "DPH"
      002234 00                    1695 	.db	0
      002235 01                    1696 	.db	1
      002236 00 00 02 AC           1697 	.dw	0,684
      00223A 0B                    1698 	.uleb128	11
      00223B 05                    1699 	.db	5
      00223C 03                    1700 	.db	3
      00223D 00 00 00 84           1701 	.dw	0,(_RCTRIM0)
      002241 52 43 54 52 49 4D 30  1702 	.ascii "RCTRIM0"
      002248 00                    1703 	.db	0
      002249 01                    1704 	.db	1
      00224A 00 00 02 AC           1705 	.dw	0,684
      00224E 0B                    1706 	.uleb128	11
      00224F 05                    1707 	.db	5
      002250 03                    1708 	.db	3
      002251 00 00 00 85           1709 	.dw	0,(_RCTRIM1)
      002255 52 43 54 52 49 4D 31  1710 	.ascii "RCTRIM1"
      00225C 00                    1711 	.db	0
      00225D 01                    1712 	.db	1
      00225E 00 00 02 AC           1713 	.dw	0,684
      002262 0B                    1714 	.uleb128	11
      002263 05                    1715 	.db	5
      002264 03                    1716 	.db	3
      002265 00 00 00 86           1717 	.dw	0,(_RWK)
      002269 52 57 4B              1718 	.ascii "RWK"
      00226C 00                    1719 	.db	0
      00226D 01                    1720 	.db	1
      00226E 00 00 02 AC           1721 	.dw	0,684
      002272 0B                    1722 	.uleb128	11
      002273 05                    1723 	.db	5
      002274 03                    1724 	.db	3
      002275 00 00 00 87           1725 	.dw	0,(_PCON)
      002279 50 43 4F 4E           1726 	.ascii "PCON"
      00227D 00                    1727 	.db	0
      00227E 01                    1728 	.db	1
      00227F 00 00 02 AC           1729 	.dw	0,684
      002283 0B                    1730 	.uleb128	11
      002284 05                    1731 	.db	5
      002285 03                    1732 	.db	3
      002286 00 00 00 88           1733 	.dw	0,(_TCON)
      00228A 54 43 4F 4E           1734 	.ascii "TCON"
      00228E 00                    1735 	.db	0
      00228F 01                    1736 	.db	1
      002290 00 00 02 AC           1737 	.dw	0,684
      002294 0B                    1738 	.uleb128	11
      002295 05                    1739 	.db	5
      002296 03                    1740 	.db	3
      002297 00 00 00 89           1741 	.dw	0,(_TMOD)
      00229B 54 4D 4F 44           1742 	.ascii "TMOD"
      00229F 00                    1743 	.db	0
      0022A0 01                    1744 	.db	1
      0022A1 00 00 02 AC           1745 	.dw	0,684
      0022A5 0B                    1746 	.uleb128	11
      0022A6 05                    1747 	.db	5
      0022A7 03                    1748 	.db	3
      0022A8 00 00 00 8A           1749 	.dw	0,(_TL0)
      0022AC 54 4C 30              1750 	.ascii "TL0"
      0022AF 00                    1751 	.db	0
      0022B0 01                    1752 	.db	1
      0022B1 00 00 02 AC           1753 	.dw	0,684
      0022B5 0B                    1754 	.uleb128	11
      0022B6 05                    1755 	.db	5
      0022B7 03                    1756 	.db	3
      0022B8 00 00 00 8B           1757 	.dw	0,(_TL1)
      0022BC 54 4C 31              1758 	.ascii "TL1"
      0022BF 00                    1759 	.db	0
      0022C0 01                    1760 	.db	1
      0022C1 00 00 02 AC           1761 	.dw	0,684
      0022C5 0B                    1762 	.uleb128	11
      0022C6 05                    1763 	.db	5
      0022C7 03                    1764 	.db	3
      0022C8 00 00 00 8C           1765 	.dw	0,(_TH0)
      0022CC 54 48 30              1766 	.ascii "TH0"
      0022CF 00                    1767 	.db	0
      0022D0 01                    1768 	.db	1
      0022D1 00 00 02 AC           1769 	.dw	0,684
      0022D5 0B                    1770 	.uleb128	11
      0022D6 05                    1771 	.db	5
      0022D7 03                    1772 	.db	3
      0022D8 00 00 00 8D           1773 	.dw	0,(_TH1)
      0022DC 54 48 31              1774 	.ascii "TH1"
      0022DF 00                    1775 	.db	0
      0022E0 01                    1776 	.db	1
      0022E1 00 00 02 AC           1777 	.dw	0,684
      0022E5 0B                    1778 	.uleb128	11
      0022E6 05                    1779 	.db	5
      0022E7 03                    1780 	.db	3
      0022E8 00 00 00 8E           1781 	.dw	0,(_CKCON)
      0022EC 43 4B 43 4F 4E        1782 	.ascii "CKCON"
      0022F1 00                    1783 	.db	0
      0022F2 01                    1784 	.db	1
      0022F3 00 00 02 AC           1785 	.dw	0,684
      0022F7 0B                    1786 	.uleb128	11
      0022F8 05                    1787 	.db	5
      0022F9 03                    1788 	.db	3
      0022FA 00 00 00 8F           1789 	.dw	0,(_WKCON)
      0022FE 57 4B 43 4F 4E        1790 	.ascii "WKCON"
      002303 00                    1791 	.db	0
      002304 01                    1792 	.db	1
      002305 00 00 02 AC           1793 	.dw	0,684
      002309 0B                    1794 	.uleb128	11
      00230A 05                    1795 	.db	5
      00230B 03                    1796 	.db	3
      00230C 00 00 00 90           1797 	.dw	0,(_P1)
      002310 50 31                 1798 	.ascii "P1"
      002312 00                    1799 	.db	0
      002313 01                    1800 	.db	1
      002314 00 00 02 AC           1801 	.dw	0,684
      002318 0B                    1802 	.uleb128	11
      002319 05                    1803 	.db	5
      00231A 03                    1804 	.db	3
      00231B 00 00 00 91           1805 	.dw	0,(_SFRS)
      00231F 53 46 52 53           1806 	.ascii "SFRS"
      002323 00                    1807 	.db	0
      002324 01                    1808 	.db	1
      002325 00 00 02 AC           1809 	.dw	0,684
      002329 0B                    1810 	.uleb128	11
      00232A 05                    1811 	.db	5
      00232B 03                    1812 	.db	3
      00232C 00 00 00 92           1813 	.dw	0,(_CAPCON0)
      002330 43 41 50 43 4F 4E 30  1814 	.ascii "CAPCON0"
      002337 00                    1815 	.db	0
      002338 01                    1816 	.db	1
      002339 00 00 02 AC           1817 	.dw	0,684
      00233D 0B                    1818 	.uleb128	11
      00233E 05                    1819 	.db	5
      00233F 03                    1820 	.db	3
      002340 00 00 00 93           1821 	.dw	0,(_CAPCON1)
      002344 43 41 50 43 4F 4E 31  1822 	.ascii "CAPCON1"
      00234B 00                    1823 	.db	0
      00234C 01                    1824 	.db	1
      00234D 00 00 02 AC           1825 	.dw	0,684
      002351 0B                    1826 	.uleb128	11
      002352 05                    1827 	.db	5
      002353 03                    1828 	.db	3
      002354 00 00 00 94           1829 	.dw	0,(_CAPCON2)
      002358 43 41 50 43 4F 4E 32  1830 	.ascii "CAPCON2"
      00235F 00                    1831 	.db	0
      002360 01                    1832 	.db	1
      002361 00 00 02 AC           1833 	.dw	0,684
      002365 0B                    1834 	.uleb128	11
      002366 05                    1835 	.db	5
      002367 03                    1836 	.db	3
      002368 00 00 00 95           1837 	.dw	0,(_CKDIV)
      00236C 43 4B 44 49 56        1838 	.ascii "CKDIV"
      002371 00                    1839 	.db	0
      002372 01                    1840 	.db	1
      002373 00 00 02 AC           1841 	.dw	0,684
      002377 0B                    1842 	.uleb128	11
      002378 05                    1843 	.db	5
      002379 03                    1844 	.db	3
      00237A 00 00 00 96           1845 	.dw	0,(_CKSWT)
      00237E 43 4B 53 57 54        1846 	.ascii "CKSWT"
      002383 00                    1847 	.db	0
      002384 01                    1848 	.db	1
      002385 00 00 02 AC           1849 	.dw	0,684
      002389 0B                    1850 	.uleb128	11
      00238A 05                    1851 	.db	5
      00238B 03                    1852 	.db	3
      00238C 00 00 00 97           1853 	.dw	0,(_CKEN)
      002390 43 4B 45 4E           1854 	.ascii "CKEN"
      002394 00                    1855 	.db	0
      002395 01                    1856 	.db	1
      002396 00 00 02 AC           1857 	.dw	0,684
      00239A 0B                    1858 	.uleb128	11
      00239B 05                    1859 	.db	5
      00239C 03                    1860 	.db	3
      00239D 00 00 00 98           1861 	.dw	0,(_SCON)
      0023A1 53 43 4F 4E           1862 	.ascii "SCON"
      0023A5 00                    1863 	.db	0
      0023A6 01                    1864 	.db	1
      0023A7 00 00 02 AC           1865 	.dw	0,684
      0023AB 0B                    1866 	.uleb128	11
      0023AC 05                    1867 	.db	5
      0023AD 03                    1868 	.db	3
      0023AE 00 00 00 99           1869 	.dw	0,(_SBUF)
      0023B2 53 42 55 46           1870 	.ascii "SBUF"
      0023B6 00                    1871 	.db	0
      0023B7 01                    1872 	.db	1
      0023B8 00 00 02 AC           1873 	.dw	0,684
      0023BC 0B                    1874 	.uleb128	11
      0023BD 05                    1875 	.db	5
      0023BE 03                    1876 	.db	3
      0023BF 00 00 00 9A           1877 	.dw	0,(_SBUF_1)
      0023C3 53 42 55 46 5F 31     1878 	.ascii "SBUF_1"
      0023C9 00                    1879 	.db	0
      0023CA 01                    1880 	.db	1
      0023CB 00 00 02 AC           1881 	.dw	0,684
      0023CF 0B                    1882 	.uleb128	11
      0023D0 05                    1883 	.db	5
      0023D1 03                    1884 	.db	3
      0023D2 00 00 00 9B           1885 	.dw	0,(_EIE)
      0023D6 45 49 45              1886 	.ascii "EIE"
      0023D9 00                    1887 	.db	0
      0023DA 01                    1888 	.db	1
      0023DB 00 00 02 AC           1889 	.dw	0,684
      0023DF 0B                    1890 	.uleb128	11
      0023E0 05                    1891 	.db	5
      0023E1 03                    1892 	.db	3
      0023E2 00 00 00 9C           1893 	.dw	0,(_EIE1)
      0023E6 45 49 45 31           1894 	.ascii "EIE1"
      0023EA 00                    1895 	.db	0
      0023EB 01                    1896 	.db	1
      0023EC 00 00 02 AC           1897 	.dw	0,684
      0023F0 0B                    1898 	.uleb128	11
      0023F1 05                    1899 	.db	5
      0023F2 03                    1900 	.db	3
      0023F3 00 00 00 9F           1901 	.dw	0,(_CHPCON)
      0023F7 43 48 50 43 4F 4E     1902 	.ascii "CHPCON"
      0023FD 00                    1903 	.db	0
      0023FE 01                    1904 	.db	1
      0023FF 00 00 02 AC           1905 	.dw	0,684
      002403 0B                    1906 	.uleb128	11
      002404 05                    1907 	.db	5
      002405 03                    1908 	.db	3
      002406 00 00 00 A0           1909 	.dw	0,(_P2)
      00240A 50 32                 1910 	.ascii "P2"
      00240C 00                    1911 	.db	0
      00240D 01                    1912 	.db	1
      00240E 00 00 02 AC           1913 	.dw	0,684
      002412 0B                    1914 	.uleb128	11
      002413 05                    1915 	.db	5
      002414 03                    1916 	.db	3
      002415 00 00 00 A2           1917 	.dw	0,(_AUXR1)
      002419 41 55 58 52 31        1918 	.ascii "AUXR1"
      00241E 00                    1919 	.db	0
      00241F 01                    1920 	.db	1
      002420 00 00 02 AC           1921 	.dw	0,684
      002424 0B                    1922 	.uleb128	11
      002425 05                    1923 	.db	5
      002426 03                    1924 	.db	3
      002427 00 00 00 A3           1925 	.dw	0,(_BODCON0)
      00242B 42 4F 44 43 4F 4E 30  1926 	.ascii "BODCON0"
      002432 00                    1927 	.db	0
      002433 01                    1928 	.db	1
      002434 00 00 02 AC           1929 	.dw	0,684
      002438 0B                    1930 	.uleb128	11
      002439 05                    1931 	.db	5
      00243A 03                    1932 	.db	3
      00243B 00 00 00 A4           1933 	.dw	0,(_IAPTRG)
      00243F 49 41 50 54 52 47     1934 	.ascii "IAPTRG"
      002445 00                    1935 	.db	0
      002446 01                    1936 	.db	1
      002447 00 00 02 AC           1937 	.dw	0,684
      00244B 0B                    1938 	.uleb128	11
      00244C 05                    1939 	.db	5
      00244D 03                    1940 	.db	3
      00244E 00 00 00 A5           1941 	.dw	0,(_IAPUEN)
      002452 49 41 50 55 45 4E     1942 	.ascii "IAPUEN"
      002458 00                    1943 	.db	0
      002459 01                    1944 	.db	1
      00245A 00 00 02 AC           1945 	.dw	0,684
      00245E 0B                    1946 	.uleb128	11
      00245F 05                    1947 	.db	5
      002460 03                    1948 	.db	3
      002461 00 00 00 A6           1949 	.dw	0,(_IAPAL)
      002465 49 41 50 41 4C        1950 	.ascii "IAPAL"
      00246A 00                    1951 	.db	0
      00246B 01                    1952 	.db	1
      00246C 00 00 02 AC           1953 	.dw	0,684
      002470 0B                    1954 	.uleb128	11
      002471 05                    1955 	.db	5
      002472 03                    1956 	.db	3
      002473 00 00 00 A7           1957 	.dw	0,(_IAPAH)
      002477 49 41 50 41 48        1958 	.ascii "IAPAH"
      00247C 00                    1959 	.db	0
      00247D 01                    1960 	.db	1
      00247E 00 00 02 AC           1961 	.dw	0,684
      002482 0B                    1962 	.uleb128	11
      002483 05                    1963 	.db	5
      002484 03                    1964 	.db	3
      002485 00 00 00 A8           1965 	.dw	0,(_IE)
      002489 49 45                 1966 	.ascii "IE"
      00248B 00                    1967 	.db	0
      00248C 01                    1968 	.db	1
      00248D 00 00 02 AC           1969 	.dw	0,684
      002491 0B                    1970 	.uleb128	11
      002492 05                    1971 	.db	5
      002493 03                    1972 	.db	3
      002494 00 00 00 A9           1973 	.dw	0,(_SADDR)
      002498 53 41 44 44 52        1974 	.ascii "SADDR"
      00249D 00                    1975 	.db	0
      00249E 01                    1976 	.db	1
      00249F 00 00 02 AC           1977 	.dw	0,684
      0024A3 0B                    1978 	.uleb128	11
      0024A4 05                    1979 	.db	5
      0024A5 03                    1980 	.db	3
      0024A6 00 00 00 AA           1981 	.dw	0,(_WDCON)
      0024AA 57 44 43 4F 4E        1982 	.ascii "WDCON"
      0024AF 00                    1983 	.db	0
      0024B0 01                    1984 	.db	1
      0024B1 00 00 02 AC           1985 	.dw	0,684
      0024B5 0B                    1986 	.uleb128	11
      0024B6 05                    1987 	.db	5
      0024B7 03                    1988 	.db	3
      0024B8 00 00 00 AB           1989 	.dw	0,(_BODCON1)
      0024BC 42 4F 44 43 4F 4E 31  1990 	.ascii "BODCON1"
      0024C3 00                    1991 	.db	0
      0024C4 01                    1992 	.db	1
      0024C5 00 00 02 AC           1993 	.dw	0,684
      0024C9 0B                    1994 	.uleb128	11
      0024CA 05                    1995 	.db	5
      0024CB 03                    1996 	.db	3
      0024CC 00 00 00 AC           1997 	.dw	0,(_P3M1)
      0024D0 50 33 4D 31           1998 	.ascii "P3M1"
      0024D4 00                    1999 	.db	0
      0024D5 01                    2000 	.db	1
      0024D6 00 00 02 AC           2001 	.dw	0,684
      0024DA 0B                    2002 	.uleb128	11
      0024DB 05                    2003 	.db	5
      0024DC 03                    2004 	.db	3
      0024DD 00 00 00 AC           2005 	.dw	0,(_P3S)
      0024E1 50 33 53              2006 	.ascii "P3S"
      0024E4 00                    2007 	.db	0
      0024E5 01                    2008 	.db	1
      0024E6 00 00 02 AC           2009 	.dw	0,684
      0024EA 0B                    2010 	.uleb128	11
      0024EB 05                    2011 	.db	5
      0024EC 03                    2012 	.db	3
      0024ED 00 00 00 AD           2013 	.dw	0,(_P3M2)
      0024F1 50 33 4D 32           2014 	.ascii "P3M2"
      0024F5 00                    2015 	.db	0
      0024F6 01                    2016 	.db	1
      0024F7 00 00 02 AC           2017 	.dw	0,684
      0024FB 0B                    2018 	.uleb128	11
      0024FC 05                    2019 	.db	5
      0024FD 03                    2020 	.db	3
      0024FE 00 00 00 AD           2021 	.dw	0,(_P3SR)
      002502 50 33 53 52           2022 	.ascii "P3SR"
      002506 00                    2023 	.db	0
      002507 01                    2024 	.db	1
      002508 00 00 02 AC           2025 	.dw	0,684
      00250C 0B                    2026 	.uleb128	11
      00250D 05                    2027 	.db	5
      00250E 03                    2028 	.db	3
      00250F 00 00 00 AE           2029 	.dw	0,(_IAPFD)
      002513 49 41 50 46 44        2030 	.ascii "IAPFD"
      002518 00                    2031 	.db	0
      002519 01                    2032 	.db	1
      00251A 00 00 02 AC           2033 	.dw	0,684
      00251E 0B                    2034 	.uleb128	11
      00251F 05                    2035 	.db	5
      002520 03                    2036 	.db	3
      002521 00 00 00 AF           2037 	.dw	0,(_IAPCN)
      002525 49 41 50 43 4E        2038 	.ascii "IAPCN"
      00252A 00                    2039 	.db	0
      00252B 01                    2040 	.db	1
      00252C 00 00 02 AC           2041 	.dw	0,684
      002530 0B                    2042 	.uleb128	11
      002531 05                    2043 	.db	5
      002532 03                    2044 	.db	3
      002533 00 00 00 B0           2045 	.dw	0,(_P3)
      002537 50 33                 2046 	.ascii "P3"
      002539 00                    2047 	.db	0
      00253A 01                    2048 	.db	1
      00253B 00 00 02 AC           2049 	.dw	0,684
      00253F 0B                    2050 	.uleb128	11
      002540 05                    2051 	.db	5
      002541 03                    2052 	.db	3
      002542 00 00 00 B1           2053 	.dw	0,(_P0M1)
      002546 50 30 4D 31           2054 	.ascii "P0M1"
      00254A 00                    2055 	.db	0
      00254B 01                    2056 	.db	1
      00254C 00 00 02 AC           2057 	.dw	0,684
      002550 0B                    2058 	.uleb128	11
      002551 05                    2059 	.db	5
      002552 03                    2060 	.db	3
      002553 00 00 00 B1           2061 	.dw	0,(_P0S)
      002557 50 30 53              2062 	.ascii "P0S"
      00255A 00                    2063 	.db	0
      00255B 01                    2064 	.db	1
      00255C 00 00 02 AC           2065 	.dw	0,684
      002560 0B                    2066 	.uleb128	11
      002561 05                    2067 	.db	5
      002562 03                    2068 	.db	3
      002563 00 00 00 B2           2069 	.dw	0,(_P0M2)
      002567 50 30 4D 32           2070 	.ascii "P0M2"
      00256B 00                    2071 	.db	0
      00256C 01                    2072 	.db	1
      00256D 00 00 02 AC           2073 	.dw	0,684
      002571 0B                    2074 	.uleb128	11
      002572 05                    2075 	.db	5
      002573 03                    2076 	.db	3
      002574 00 00 00 B2           2077 	.dw	0,(_P0SR)
      002578 50 30 53 52           2078 	.ascii "P0SR"
      00257C 00                    2079 	.db	0
      00257D 01                    2080 	.db	1
      00257E 00 00 02 AC           2081 	.dw	0,684
      002582 0B                    2082 	.uleb128	11
      002583 05                    2083 	.db	5
      002584 03                    2084 	.db	3
      002585 00 00 00 B3           2085 	.dw	0,(_P1M1)
      002589 50 31 4D 31           2086 	.ascii "P1M1"
      00258D 00                    2087 	.db	0
      00258E 01                    2088 	.db	1
      00258F 00 00 02 AC           2089 	.dw	0,684
      002593 0B                    2090 	.uleb128	11
      002594 05                    2091 	.db	5
      002595 03                    2092 	.db	3
      002596 00 00 00 B3           2093 	.dw	0,(_P1S)
      00259A 50 31 53              2094 	.ascii "P1S"
      00259D 00                    2095 	.db	0
      00259E 01                    2096 	.db	1
      00259F 00 00 02 AC           2097 	.dw	0,684
      0025A3 0B                    2098 	.uleb128	11
      0025A4 05                    2099 	.db	5
      0025A5 03                    2100 	.db	3
      0025A6 00 00 00 B4           2101 	.dw	0,(_P1M2)
      0025AA 50 31 4D 32           2102 	.ascii "P1M2"
      0025AE 00                    2103 	.db	0
      0025AF 01                    2104 	.db	1
      0025B0 00 00 02 AC           2105 	.dw	0,684
      0025B4 0B                    2106 	.uleb128	11
      0025B5 05                    2107 	.db	5
      0025B6 03                    2108 	.db	3
      0025B7 00 00 00 B4           2109 	.dw	0,(_P1SR)
      0025BB 50 31 53 52           2110 	.ascii "P1SR"
      0025BF 00                    2111 	.db	0
      0025C0 01                    2112 	.db	1
      0025C1 00 00 02 AC           2113 	.dw	0,684
      0025C5 0B                    2114 	.uleb128	11
      0025C6 05                    2115 	.db	5
      0025C7 03                    2116 	.db	3
      0025C8 00 00 00 B5           2117 	.dw	0,(_P2S)
      0025CC 50 32 53              2118 	.ascii "P2S"
      0025CF 00                    2119 	.db	0
      0025D0 01                    2120 	.db	1
      0025D1 00 00 02 AC           2121 	.dw	0,684
      0025D5 0B                    2122 	.uleb128	11
      0025D6 05                    2123 	.db	5
      0025D7 03                    2124 	.db	3
      0025D8 00 00 00 B7           2125 	.dw	0,(_IPH)
      0025DC 49 50 48              2126 	.ascii "IPH"
      0025DF 00                    2127 	.db	0
      0025E0 01                    2128 	.db	1
      0025E1 00 00 02 AC           2129 	.dw	0,684
      0025E5 0B                    2130 	.uleb128	11
      0025E6 05                    2131 	.db	5
      0025E7 03                    2132 	.db	3
      0025E8 00 00 00 B7           2133 	.dw	0,(_PWMINTC)
      0025EC 50 57 4D 49 4E 54 43  2134 	.ascii "PWMINTC"
      0025F3 00                    2135 	.db	0
      0025F4 01                    2136 	.db	1
      0025F5 00 00 02 AC           2137 	.dw	0,684
      0025F9 0B                    2138 	.uleb128	11
      0025FA 05                    2139 	.db	5
      0025FB 03                    2140 	.db	3
      0025FC 00 00 00 B8           2141 	.dw	0,(_IP)
      002600 49 50                 2142 	.ascii "IP"
      002602 00                    2143 	.db	0
      002603 01                    2144 	.db	1
      002604 00 00 02 AC           2145 	.dw	0,684
      002608 0B                    2146 	.uleb128	11
      002609 05                    2147 	.db	5
      00260A 03                    2148 	.db	3
      00260B 00 00 00 B9           2149 	.dw	0,(_SADEN)
      00260F 53 41 44 45 4E        2150 	.ascii "SADEN"
      002614 00                    2151 	.db	0
      002615 01                    2152 	.db	1
      002616 00 00 02 AC           2153 	.dw	0,684
      00261A 0B                    2154 	.uleb128	11
      00261B 05                    2155 	.db	5
      00261C 03                    2156 	.db	3
      00261D 00 00 00 BA           2157 	.dw	0,(_SADEN_1)
      002621 53 41 44 45 4E 5F 31  2158 	.ascii "SADEN_1"
      002628 00                    2159 	.db	0
      002629 01                    2160 	.db	1
      00262A 00 00 02 AC           2161 	.dw	0,684
      00262E 0B                    2162 	.uleb128	11
      00262F 05                    2163 	.db	5
      002630 03                    2164 	.db	3
      002631 00 00 00 BB           2165 	.dw	0,(_SADDR_1)
      002635 53 41 44 44 52 5F 31  2166 	.ascii "SADDR_1"
      00263C 00                    2167 	.db	0
      00263D 01                    2168 	.db	1
      00263E 00 00 02 AC           2169 	.dw	0,684
      002642 0B                    2170 	.uleb128	11
      002643 05                    2171 	.db	5
      002644 03                    2172 	.db	3
      002645 00 00 00 BC           2173 	.dw	0,(_I2DAT)
      002649 49 32 44 41 54        2174 	.ascii "I2DAT"
      00264E 00                    2175 	.db	0
      00264F 01                    2176 	.db	1
      002650 00 00 02 AC           2177 	.dw	0,684
      002654 0B                    2178 	.uleb128	11
      002655 05                    2179 	.db	5
      002656 03                    2180 	.db	3
      002657 00 00 00 BD           2181 	.dw	0,(_I2STAT)
      00265B 49 32 53 54 41 54     2182 	.ascii "I2STAT"
      002661 00                    2183 	.db	0
      002662 01                    2184 	.db	1
      002663 00 00 02 AC           2185 	.dw	0,684
      002667 0B                    2186 	.uleb128	11
      002668 05                    2187 	.db	5
      002669 03                    2188 	.db	3
      00266A 00 00 00 BE           2189 	.dw	0,(_I2CLK)
      00266E 49 32 43 4C 4B        2190 	.ascii "I2CLK"
      002673 00                    2191 	.db	0
      002674 01                    2192 	.db	1
      002675 00 00 02 AC           2193 	.dw	0,684
      002679 0B                    2194 	.uleb128	11
      00267A 05                    2195 	.db	5
      00267B 03                    2196 	.db	3
      00267C 00 00 00 BF           2197 	.dw	0,(_I2TOC)
      002680 49 32 54 4F 43        2198 	.ascii "I2TOC"
      002685 00                    2199 	.db	0
      002686 01                    2200 	.db	1
      002687 00 00 02 AC           2201 	.dw	0,684
      00268B 0B                    2202 	.uleb128	11
      00268C 05                    2203 	.db	5
      00268D 03                    2204 	.db	3
      00268E 00 00 00 C0           2205 	.dw	0,(_I2CON)
      002692 49 32 43 4F 4E        2206 	.ascii "I2CON"
      002697 00                    2207 	.db	0
      002698 01                    2208 	.db	1
      002699 00 00 02 AC           2209 	.dw	0,684
      00269D 0B                    2210 	.uleb128	11
      00269E 05                    2211 	.db	5
      00269F 03                    2212 	.db	3
      0026A0 00 00 00 C1           2213 	.dw	0,(_I2ADDR)
      0026A4 49 32 41 44 44 52     2214 	.ascii "I2ADDR"
      0026AA 00                    2215 	.db	0
      0026AB 01                    2216 	.db	1
      0026AC 00 00 02 AC           2217 	.dw	0,684
      0026B0 0B                    2218 	.uleb128	11
      0026B1 05                    2219 	.db	5
      0026B2 03                    2220 	.db	3
      0026B3 00 00 00 C2           2221 	.dw	0,(_ADCRL)
      0026B7 41 44 43 52 4C        2222 	.ascii "ADCRL"
      0026BC 00                    2223 	.db	0
      0026BD 01                    2224 	.db	1
      0026BE 00 00 02 AC           2225 	.dw	0,684
      0026C2 0B                    2226 	.uleb128	11
      0026C3 05                    2227 	.db	5
      0026C4 03                    2228 	.db	3
      0026C5 00 00 00 C3           2229 	.dw	0,(_ADCRH)
      0026C9 41 44 43 52 48        2230 	.ascii "ADCRH"
      0026CE 00                    2231 	.db	0
      0026CF 01                    2232 	.db	1
      0026D0 00 00 02 AC           2233 	.dw	0,684
      0026D4 0B                    2234 	.uleb128	11
      0026D5 05                    2235 	.db	5
      0026D6 03                    2236 	.db	3
      0026D7 00 00 00 C4           2237 	.dw	0,(_T3CON)
      0026DB 54 33 43 4F 4E        2238 	.ascii "T3CON"
      0026E0 00                    2239 	.db	0
      0026E1 01                    2240 	.db	1
      0026E2 00 00 02 AC           2241 	.dw	0,684
      0026E6 0B                    2242 	.uleb128	11
      0026E7 05                    2243 	.db	5
      0026E8 03                    2244 	.db	3
      0026E9 00 00 00 C4           2245 	.dw	0,(_PWM4H)
      0026ED 50 57 4D 34 48        2246 	.ascii "PWM4H"
      0026F2 00                    2247 	.db	0
      0026F3 01                    2248 	.db	1
      0026F4 00 00 02 AC           2249 	.dw	0,684
      0026F8 0B                    2250 	.uleb128	11
      0026F9 05                    2251 	.db	5
      0026FA 03                    2252 	.db	3
      0026FB 00 00 00 C5           2253 	.dw	0,(_RL3)
      0026FF 52 4C 33              2254 	.ascii "RL3"
      002702 00                    2255 	.db	0
      002703 01                    2256 	.db	1
      002704 00 00 02 AC           2257 	.dw	0,684
      002708 0B                    2258 	.uleb128	11
      002709 05                    2259 	.db	5
      00270A 03                    2260 	.db	3
      00270B 00 00 00 C5           2261 	.dw	0,(_PWM5H)
      00270F 50 57 4D 35 48        2262 	.ascii "PWM5H"
      002714 00                    2263 	.db	0
      002715 01                    2264 	.db	1
      002716 00 00 02 AC           2265 	.dw	0,684
      00271A 0B                    2266 	.uleb128	11
      00271B 05                    2267 	.db	5
      00271C 03                    2268 	.db	3
      00271D 00 00 00 C6           2269 	.dw	0,(_RH3)
      002721 52 48 33              2270 	.ascii "RH3"
      002724 00                    2271 	.db	0
      002725 01                    2272 	.db	1
      002726 00 00 02 AC           2273 	.dw	0,684
      00272A 0B                    2274 	.uleb128	11
      00272B 05                    2275 	.db	5
      00272C 03                    2276 	.db	3
      00272D 00 00 00 C6           2277 	.dw	0,(_PIOCON1)
      002731 50 49 4F 43 4F 4E 31  2278 	.ascii "PIOCON1"
      002738 00                    2279 	.db	0
      002739 01                    2280 	.db	1
      00273A 00 00 02 AC           2281 	.dw	0,684
      00273E 0B                    2282 	.uleb128	11
      00273F 05                    2283 	.db	5
      002740 03                    2284 	.db	3
      002741 00 00 00 C7           2285 	.dw	0,(_TA)
      002745 54 41                 2286 	.ascii "TA"
      002747 00                    2287 	.db	0
      002748 01                    2288 	.db	1
      002749 00 00 02 AC           2289 	.dw	0,684
      00274D 0B                    2290 	.uleb128	11
      00274E 05                    2291 	.db	5
      00274F 03                    2292 	.db	3
      002750 00 00 00 C8           2293 	.dw	0,(_T2CON)
      002754 54 32 43 4F 4E        2294 	.ascii "T2CON"
      002759 00                    2295 	.db	0
      00275A 01                    2296 	.db	1
      00275B 00 00 02 AC           2297 	.dw	0,684
      00275F 0B                    2298 	.uleb128	11
      002760 05                    2299 	.db	5
      002761 03                    2300 	.db	3
      002762 00 00 00 C9           2301 	.dw	0,(_T2MOD)
      002766 54 32 4D 4F 44        2302 	.ascii "T2MOD"
      00276B 00                    2303 	.db	0
      00276C 01                    2304 	.db	1
      00276D 00 00 02 AC           2305 	.dw	0,684
      002771 0B                    2306 	.uleb128	11
      002772 05                    2307 	.db	5
      002773 03                    2308 	.db	3
      002774 00 00 00 CA           2309 	.dw	0,(_RCMP2L)
      002778 52 43 4D 50 32 4C     2310 	.ascii "RCMP2L"
      00277E 00                    2311 	.db	0
      00277F 01                    2312 	.db	1
      002780 00 00 02 AC           2313 	.dw	0,684
      002784 0B                    2314 	.uleb128	11
      002785 05                    2315 	.db	5
      002786 03                    2316 	.db	3
      002787 00 00 00 CB           2317 	.dw	0,(_RCMP2H)
      00278B 52 43 4D 50 32 48     2318 	.ascii "RCMP2H"
      002791 00                    2319 	.db	0
      002792 01                    2320 	.db	1
      002793 00 00 02 AC           2321 	.dw	0,684
      002797 0B                    2322 	.uleb128	11
      002798 05                    2323 	.db	5
      002799 03                    2324 	.db	3
      00279A 00 00 00 CC           2325 	.dw	0,(_TL2)
      00279E 54 4C 32              2326 	.ascii "TL2"
      0027A1 00                    2327 	.db	0
      0027A2 01                    2328 	.db	1
      0027A3 00 00 02 AC           2329 	.dw	0,684
      0027A7 0B                    2330 	.uleb128	11
      0027A8 05                    2331 	.db	5
      0027A9 03                    2332 	.db	3
      0027AA 00 00 00 CC           2333 	.dw	0,(_PWM4L)
      0027AE 50 57 4D 34 4C        2334 	.ascii "PWM4L"
      0027B3 00                    2335 	.db	0
      0027B4 01                    2336 	.db	1
      0027B5 00 00 02 AC           2337 	.dw	0,684
      0027B9 0B                    2338 	.uleb128	11
      0027BA 05                    2339 	.db	5
      0027BB 03                    2340 	.db	3
      0027BC 00 00 00 CD           2341 	.dw	0,(_TH2)
      0027C0 54 48 32              2342 	.ascii "TH2"
      0027C3 00                    2343 	.db	0
      0027C4 01                    2344 	.db	1
      0027C5 00 00 02 AC           2345 	.dw	0,684
      0027C9 0B                    2346 	.uleb128	11
      0027CA 05                    2347 	.db	5
      0027CB 03                    2348 	.db	3
      0027CC 00 00 00 CD           2349 	.dw	0,(_PWM5L)
      0027D0 50 57 4D 35 4C        2350 	.ascii "PWM5L"
      0027D5 00                    2351 	.db	0
      0027D6 01                    2352 	.db	1
      0027D7 00 00 02 AC           2353 	.dw	0,684
      0027DB 0B                    2354 	.uleb128	11
      0027DC 05                    2355 	.db	5
      0027DD 03                    2356 	.db	3
      0027DE 00 00 00 CE           2357 	.dw	0,(_ADCMPL)
      0027E2 41 44 43 4D 50 4C     2358 	.ascii "ADCMPL"
      0027E8 00                    2359 	.db	0
      0027E9 01                    2360 	.db	1
      0027EA 00 00 02 AC           2361 	.dw	0,684
      0027EE 0B                    2362 	.uleb128	11
      0027EF 05                    2363 	.db	5
      0027F0 03                    2364 	.db	3
      0027F1 00 00 00 CF           2365 	.dw	0,(_ADCMPH)
      0027F5 41 44 43 4D 50 48     2366 	.ascii "ADCMPH"
      0027FB 00                    2367 	.db	0
      0027FC 01                    2368 	.db	1
      0027FD 00 00 02 AC           2369 	.dw	0,684
      002801 0B                    2370 	.uleb128	11
      002802 05                    2371 	.db	5
      002803 03                    2372 	.db	3
      002804 00 00 00 D0           2373 	.dw	0,(_PSW)
      002808 50 53 57              2374 	.ascii "PSW"
      00280B 00                    2375 	.db	0
      00280C 01                    2376 	.db	1
      00280D 00 00 02 AC           2377 	.dw	0,684
      002811 0B                    2378 	.uleb128	11
      002812 05                    2379 	.db	5
      002813 03                    2380 	.db	3
      002814 00 00 00 D1           2381 	.dw	0,(_PWMPH)
      002818 50 57 4D 50 48        2382 	.ascii "PWMPH"
      00281D 00                    2383 	.db	0
      00281E 01                    2384 	.db	1
      00281F 00 00 02 AC           2385 	.dw	0,684
      002823 0B                    2386 	.uleb128	11
      002824 05                    2387 	.db	5
      002825 03                    2388 	.db	3
      002826 00 00 00 D2           2389 	.dw	0,(_PWM0H)
      00282A 50 57 4D 30 48        2390 	.ascii "PWM0H"
      00282F 00                    2391 	.db	0
      002830 01                    2392 	.db	1
      002831 00 00 02 AC           2393 	.dw	0,684
      002835 0B                    2394 	.uleb128	11
      002836 05                    2395 	.db	5
      002837 03                    2396 	.db	3
      002838 00 00 00 D3           2397 	.dw	0,(_PWM1H)
      00283C 50 57 4D 31 48        2398 	.ascii "PWM1H"
      002841 00                    2399 	.db	0
      002842 01                    2400 	.db	1
      002843 00 00 02 AC           2401 	.dw	0,684
      002847 0B                    2402 	.uleb128	11
      002848 05                    2403 	.db	5
      002849 03                    2404 	.db	3
      00284A 00 00 00 D4           2405 	.dw	0,(_PWM2H)
      00284E 50 57 4D 32 48        2406 	.ascii "PWM2H"
      002853 00                    2407 	.db	0
      002854 01                    2408 	.db	1
      002855 00 00 02 AC           2409 	.dw	0,684
      002859 0B                    2410 	.uleb128	11
      00285A 05                    2411 	.db	5
      00285B 03                    2412 	.db	3
      00285C 00 00 00 D5           2413 	.dw	0,(_PWM3H)
      002860 50 57 4D 33 48        2414 	.ascii "PWM3H"
      002865 00                    2415 	.db	0
      002866 01                    2416 	.db	1
      002867 00 00 02 AC           2417 	.dw	0,684
      00286B 0B                    2418 	.uleb128	11
      00286C 05                    2419 	.db	5
      00286D 03                    2420 	.db	3
      00286E 00 00 00 D6           2421 	.dw	0,(_PNP)
      002872 50 4E 50              2422 	.ascii "PNP"
      002875 00                    2423 	.db	0
      002876 01                    2424 	.db	1
      002877 00 00 02 AC           2425 	.dw	0,684
      00287B 0B                    2426 	.uleb128	11
      00287C 05                    2427 	.db	5
      00287D 03                    2428 	.db	3
      00287E 00 00 00 D7           2429 	.dw	0,(_FBD)
      002882 46 42 44              2430 	.ascii "FBD"
      002885 00                    2431 	.db	0
      002886 01                    2432 	.db	1
      002887 00 00 02 AC           2433 	.dw	0,684
      00288B 0B                    2434 	.uleb128	11
      00288C 05                    2435 	.db	5
      00288D 03                    2436 	.db	3
      00288E 00 00 00 D8           2437 	.dw	0,(_PWMCON0)
      002892 50 57 4D 43 4F 4E 30  2438 	.ascii "PWMCON0"
      002899 00                    2439 	.db	0
      00289A 01                    2440 	.db	1
      00289B 00 00 02 AC           2441 	.dw	0,684
      00289F 0B                    2442 	.uleb128	11
      0028A0 05                    2443 	.db	5
      0028A1 03                    2444 	.db	3
      0028A2 00 00 00 D9           2445 	.dw	0,(_PWMPL)
      0028A6 50 57 4D 50 4C        2446 	.ascii "PWMPL"
      0028AB 00                    2447 	.db	0
      0028AC 01                    2448 	.db	1
      0028AD 00 00 02 AC           2449 	.dw	0,684
      0028B1 0B                    2450 	.uleb128	11
      0028B2 05                    2451 	.db	5
      0028B3 03                    2452 	.db	3
      0028B4 00 00 00 DA           2453 	.dw	0,(_PWM0L)
      0028B8 50 57 4D 30 4C        2454 	.ascii "PWM0L"
      0028BD 00                    2455 	.db	0
      0028BE 01                    2456 	.db	1
      0028BF 00 00 02 AC           2457 	.dw	0,684
      0028C3 0B                    2458 	.uleb128	11
      0028C4 05                    2459 	.db	5
      0028C5 03                    2460 	.db	3
      0028C6 00 00 00 DB           2461 	.dw	0,(_PWM1L)
      0028CA 50 57 4D 31 4C        2462 	.ascii "PWM1L"
      0028CF 00                    2463 	.db	0
      0028D0 01                    2464 	.db	1
      0028D1 00 00 02 AC           2465 	.dw	0,684
      0028D5 0B                    2466 	.uleb128	11
      0028D6 05                    2467 	.db	5
      0028D7 03                    2468 	.db	3
      0028D8 00 00 00 DC           2469 	.dw	0,(_PWM2L)
      0028DC 50 57 4D 32 4C        2470 	.ascii "PWM2L"
      0028E1 00                    2471 	.db	0
      0028E2 01                    2472 	.db	1
      0028E3 00 00 02 AC           2473 	.dw	0,684
      0028E7 0B                    2474 	.uleb128	11
      0028E8 05                    2475 	.db	5
      0028E9 03                    2476 	.db	3
      0028EA 00 00 00 DD           2477 	.dw	0,(_PWM3L)
      0028EE 50 57 4D 33 4C        2478 	.ascii "PWM3L"
      0028F3 00                    2479 	.db	0
      0028F4 01                    2480 	.db	1
      0028F5 00 00 02 AC           2481 	.dw	0,684
      0028F9 0B                    2482 	.uleb128	11
      0028FA 05                    2483 	.db	5
      0028FB 03                    2484 	.db	3
      0028FC 00 00 00 DE           2485 	.dw	0,(_PIOCON0)
      002900 50 49 4F 43 4F 4E 30  2486 	.ascii "PIOCON0"
      002907 00                    2487 	.db	0
      002908 01                    2488 	.db	1
      002909 00 00 02 AC           2489 	.dw	0,684
      00290D 0B                    2490 	.uleb128	11
      00290E 05                    2491 	.db	5
      00290F 03                    2492 	.db	3
      002910 00 00 00 DF           2493 	.dw	0,(_PWMCON1)
      002914 50 57 4D 43 4F 4E 31  2494 	.ascii "PWMCON1"
      00291B 00                    2495 	.db	0
      00291C 01                    2496 	.db	1
      00291D 00 00 02 AC           2497 	.dw	0,684
      002921 0B                    2498 	.uleb128	11
      002922 05                    2499 	.db	5
      002923 03                    2500 	.db	3
      002924 00 00 00 E0           2501 	.dw	0,(_ACC)
      002928 41 43 43              2502 	.ascii "ACC"
      00292B 00                    2503 	.db	0
      00292C 01                    2504 	.db	1
      00292D 00 00 02 AC           2505 	.dw	0,684
      002931 0B                    2506 	.uleb128	11
      002932 05                    2507 	.db	5
      002933 03                    2508 	.db	3
      002934 00 00 00 E1           2509 	.dw	0,(_ADCCON1)
      002938 41 44 43 43 4F 4E 31  2510 	.ascii "ADCCON1"
      00293F 00                    2511 	.db	0
      002940 01                    2512 	.db	1
      002941 00 00 02 AC           2513 	.dw	0,684
      002945 0B                    2514 	.uleb128	11
      002946 05                    2515 	.db	5
      002947 03                    2516 	.db	3
      002948 00 00 00 E2           2517 	.dw	0,(_ADCCON2)
      00294C 41 44 43 43 4F 4E 32  2518 	.ascii "ADCCON2"
      002953 00                    2519 	.db	0
      002954 01                    2520 	.db	1
      002955 00 00 02 AC           2521 	.dw	0,684
      002959 0B                    2522 	.uleb128	11
      00295A 05                    2523 	.db	5
      00295B 03                    2524 	.db	3
      00295C 00 00 00 E3           2525 	.dw	0,(_ADCDLY)
      002960 41 44 43 44 4C 59     2526 	.ascii "ADCDLY"
      002966 00                    2527 	.db	0
      002967 01                    2528 	.db	1
      002968 00 00 02 AC           2529 	.dw	0,684
      00296C 0B                    2530 	.uleb128	11
      00296D 05                    2531 	.db	5
      00296E 03                    2532 	.db	3
      00296F 00 00 00 E4           2533 	.dw	0,(_C0L)
      002973 43 30 4C              2534 	.ascii "C0L"
      002976 00                    2535 	.db	0
      002977 01                    2536 	.db	1
      002978 00 00 02 AC           2537 	.dw	0,684
      00297C 0B                    2538 	.uleb128	11
      00297D 05                    2539 	.db	5
      00297E 03                    2540 	.db	3
      00297F 00 00 00 E5           2541 	.dw	0,(_C0H)
      002983 43 30 48              2542 	.ascii "C0H"
      002986 00                    2543 	.db	0
      002987 01                    2544 	.db	1
      002988 00 00 02 AC           2545 	.dw	0,684
      00298C 0B                    2546 	.uleb128	11
      00298D 05                    2547 	.db	5
      00298E 03                    2548 	.db	3
      00298F 00 00 00 E6           2549 	.dw	0,(_C1L)
      002993 43 31 4C              2550 	.ascii "C1L"
      002996 00                    2551 	.db	0
      002997 01                    2552 	.db	1
      002998 00 00 02 AC           2553 	.dw	0,684
      00299C 0B                    2554 	.uleb128	11
      00299D 05                    2555 	.db	5
      00299E 03                    2556 	.db	3
      00299F 00 00 00 E7           2557 	.dw	0,(_C1H)
      0029A3 43 31 48              2558 	.ascii "C1H"
      0029A6 00                    2559 	.db	0
      0029A7 01                    2560 	.db	1
      0029A8 00 00 02 AC           2561 	.dw	0,684
      0029AC 0B                    2562 	.uleb128	11
      0029AD 05                    2563 	.db	5
      0029AE 03                    2564 	.db	3
      0029AF 00 00 00 E8           2565 	.dw	0,(_ADCCON0)
      0029B3 41 44 43 43 4F 4E 30  2566 	.ascii "ADCCON0"
      0029BA 00                    2567 	.db	0
      0029BB 01                    2568 	.db	1
      0029BC 00 00 02 AC           2569 	.dw	0,684
      0029C0 0B                    2570 	.uleb128	11
      0029C1 05                    2571 	.db	5
      0029C2 03                    2572 	.db	3
      0029C3 00 00 00 E9           2573 	.dw	0,(_PICON)
      0029C7 50 49 43 4F 4E        2574 	.ascii "PICON"
      0029CC 00                    2575 	.db	0
      0029CD 01                    2576 	.db	1
      0029CE 00 00 02 AC           2577 	.dw	0,684
      0029D2 0B                    2578 	.uleb128	11
      0029D3 05                    2579 	.db	5
      0029D4 03                    2580 	.db	3
      0029D5 00 00 00 EA           2581 	.dw	0,(_PINEN)
      0029D9 50 49 4E 45 4E        2582 	.ascii "PINEN"
      0029DE 00                    2583 	.db	0
      0029DF 01                    2584 	.db	1
      0029E0 00 00 02 AC           2585 	.dw	0,684
      0029E4 0B                    2586 	.uleb128	11
      0029E5 05                    2587 	.db	5
      0029E6 03                    2588 	.db	3
      0029E7 00 00 00 EB           2589 	.dw	0,(_PIPEN)
      0029EB 50 49 50 45 4E        2590 	.ascii "PIPEN"
      0029F0 00                    2591 	.db	0
      0029F1 01                    2592 	.db	1
      0029F2 00 00 02 AC           2593 	.dw	0,684
      0029F6 0B                    2594 	.uleb128	11
      0029F7 05                    2595 	.db	5
      0029F8 03                    2596 	.db	3
      0029F9 00 00 00 EC           2597 	.dw	0,(_PIF)
      0029FD 50 49 46              2598 	.ascii "PIF"
      002A00 00                    2599 	.db	0
      002A01 01                    2600 	.db	1
      002A02 00 00 02 AC           2601 	.dw	0,684
      002A06 0B                    2602 	.uleb128	11
      002A07 05                    2603 	.db	5
      002A08 03                    2604 	.db	3
      002A09 00 00 00 ED           2605 	.dw	0,(_C2L)
      002A0D 43 32 4C              2606 	.ascii "C2L"
      002A10 00                    2607 	.db	0
      002A11 01                    2608 	.db	1
      002A12 00 00 02 AC           2609 	.dw	0,684
      002A16 0B                    2610 	.uleb128	11
      002A17 05                    2611 	.db	5
      002A18 03                    2612 	.db	3
      002A19 00 00 00 EE           2613 	.dw	0,(_C2H)
      002A1D 43 32 48              2614 	.ascii "C2H"
      002A20 00                    2615 	.db	0
      002A21 01                    2616 	.db	1
      002A22 00 00 02 AC           2617 	.dw	0,684
      002A26 0B                    2618 	.uleb128	11
      002A27 05                    2619 	.db	5
      002A28 03                    2620 	.db	3
      002A29 00 00 00 EF           2621 	.dw	0,(_EIP)
      002A2D 45 49 50              2622 	.ascii "EIP"
      002A30 00                    2623 	.db	0
      002A31 01                    2624 	.db	1
      002A32 00 00 02 AC           2625 	.dw	0,684
      002A36 0B                    2626 	.uleb128	11
      002A37 05                    2627 	.db	5
      002A38 03                    2628 	.db	3
      002A39 00 00 00 F0           2629 	.dw	0,(_B)
      002A3D 42                    2630 	.ascii "B"
      002A3E 00                    2631 	.db	0
      002A3F 01                    2632 	.db	1
      002A40 00 00 02 AC           2633 	.dw	0,684
      002A44 0B                    2634 	.uleb128	11
      002A45 05                    2635 	.db	5
      002A46 03                    2636 	.db	3
      002A47 00 00 00 F1           2637 	.dw	0,(_CAPCON3)
      002A4B 43 41 50 43 4F 4E 33  2638 	.ascii "CAPCON3"
      002A52 00                    2639 	.db	0
      002A53 01                    2640 	.db	1
      002A54 00 00 02 AC           2641 	.dw	0,684
      002A58 0B                    2642 	.uleb128	11
      002A59 05                    2643 	.db	5
      002A5A 03                    2644 	.db	3
      002A5B 00 00 00 F2           2645 	.dw	0,(_CAPCON4)
      002A5F 43 41 50 43 4F 4E 34  2646 	.ascii "CAPCON4"
      002A66 00                    2647 	.db	0
      002A67 01                    2648 	.db	1
      002A68 00 00 02 AC           2649 	.dw	0,684
      002A6C 0B                    2650 	.uleb128	11
      002A6D 05                    2651 	.db	5
      002A6E 03                    2652 	.db	3
      002A6F 00 00 00 F3           2653 	.dw	0,(_SPCR)
      002A73 53 50 43 52           2654 	.ascii "SPCR"
      002A77 00                    2655 	.db	0
      002A78 01                    2656 	.db	1
      002A79 00 00 02 AC           2657 	.dw	0,684
      002A7D 0B                    2658 	.uleb128	11
      002A7E 05                    2659 	.db	5
      002A7F 03                    2660 	.db	3
      002A80 00 00 00 F3           2661 	.dw	0,(_SPCR2)
      002A84 53 50 43 52 32        2662 	.ascii "SPCR2"
      002A89 00                    2663 	.db	0
      002A8A 01                    2664 	.db	1
      002A8B 00 00 02 AC           2665 	.dw	0,684
      002A8F 0B                    2666 	.uleb128	11
      002A90 05                    2667 	.db	5
      002A91 03                    2668 	.db	3
      002A92 00 00 00 F4           2669 	.dw	0,(_SPSR)
      002A96 53 50 53 52           2670 	.ascii "SPSR"
      002A9A 00                    2671 	.db	0
      002A9B 01                    2672 	.db	1
      002A9C 00 00 02 AC           2673 	.dw	0,684
      002AA0 0B                    2674 	.uleb128	11
      002AA1 05                    2675 	.db	5
      002AA2 03                    2676 	.db	3
      002AA3 00 00 00 F5           2677 	.dw	0,(_SPDR)
      002AA7 53 50 44 52           2678 	.ascii "SPDR"
      002AAB 00                    2679 	.db	0
      002AAC 01                    2680 	.db	1
      002AAD 00 00 02 AC           2681 	.dw	0,684
      002AB1 0B                    2682 	.uleb128	11
      002AB2 05                    2683 	.db	5
      002AB3 03                    2684 	.db	3
      002AB4 00 00 00 F6           2685 	.dw	0,(_AINDIDS)
      002AB8 41 49 4E 44 49 44 53  2686 	.ascii "AINDIDS"
      002ABF 00                    2687 	.db	0
      002AC0 01                    2688 	.db	1
      002AC1 00 00 02 AC           2689 	.dw	0,684
      002AC5 0B                    2690 	.uleb128	11
      002AC6 05                    2691 	.db	5
      002AC7 03                    2692 	.db	3
      002AC8 00 00 00 F7           2693 	.dw	0,(_EIPH)
      002ACC 45 49 50 48           2694 	.ascii "EIPH"
      002AD0 00                    2695 	.db	0
      002AD1 01                    2696 	.db	1
      002AD2 00 00 02 AC           2697 	.dw	0,684
      002AD6 0B                    2698 	.uleb128	11
      002AD7 05                    2699 	.db	5
      002AD8 03                    2700 	.db	3
      002AD9 00 00 00 F8           2701 	.dw	0,(_SCON_1)
      002ADD 53 43 4F 4E 5F 31     2702 	.ascii "SCON_1"
      002AE3 00                    2703 	.db	0
      002AE4 01                    2704 	.db	1
      002AE5 00 00 02 AC           2705 	.dw	0,684
      002AE9 0B                    2706 	.uleb128	11
      002AEA 05                    2707 	.db	5
      002AEB 03                    2708 	.db	3
      002AEC 00 00 00 F9           2709 	.dw	0,(_PDTEN)
      002AF0 50 44 54 45 4E        2710 	.ascii "PDTEN"
      002AF5 00                    2711 	.db	0
      002AF6 01                    2712 	.db	1
      002AF7 00 00 02 AC           2713 	.dw	0,684
      002AFB 0B                    2714 	.uleb128	11
      002AFC 05                    2715 	.db	5
      002AFD 03                    2716 	.db	3
      002AFE 00 00 00 FA           2717 	.dw	0,(_PDTCNT)
      002B02 50 44 54 43 4E 54     2718 	.ascii "PDTCNT"
      002B08 00                    2719 	.db	0
      002B09 01                    2720 	.db	1
      002B0A 00 00 02 AC           2721 	.dw	0,684
      002B0E 0B                    2722 	.uleb128	11
      002B0F 05                    2723 	.db	5
      002B10 03                    2724 	.db	3
      002B11 00 00 00 FB           2725 	.dw	0,(_PMEN)
      002B15 50 4D 45 4E           2726 	.ascii "PMEN"
      002B19 00                    2727 	.db	0
      002B1A 01                    2728 	.db	1
      002B1B 00 00 02 AC           2729 	.dw	0,684
      002B1F 0B                    2730 	.uleb128	11
      002B20 05                    2731 	.db	5
      002B21 03                    2732 	.db	3
      002B22 00 00 00 FC           2733 	.dw	0,(_PMD)
      002B26 50 4D 44              2734 	.ascii "PMD"
      002B29 00                    2735 	.db	0
      002B2A 01                    2736 	.db	1
      002B2B 00 00 02 AC           2737 	.dw	0,684
      002B2F 0B                    2738 	.uleb128	11
      002B30 05                    2739 	.db	5
      002B31 03                    2740 	.db	3
      002B32 00 00 00 FE           2741 	.dw	0,(_EIP1)
      002B36 45 49 50 31           2742 	.ascii "EIP1"
      002B3A 00                    2743 	.db	0
      002B3B 01                    2744 	.db	1
      002B3C 00 00 02 AC           2745 	.dw	0,684
      002B40 0B                    2746 	.uleb128	11
      002B41 05                    2747 	.db	5
      002B42 03                    2748 	.db	3
      002B43 00 00 00 FF           2749 	.dw	0,(_EIPH1)
      002B47 45 49 50 48 31        2750 	.ascii "EIPH1"
      002B4C 00                    2751 	.db	0
      002B4D 01                    2752 	.db	1
      002B4E 00 00 02 AC           2753 	.dw	0,684
      002B52 02                    2754 	.uleb128	2
      002B53 5F 73 62 69 74        2755 	.ascii "_sbit"
      002B58 00                    2756 	.db	0
      002B59 01                    2757 	.db	1
      002B5A 08                    2758 	.db	8
      002B5B 0C                    2759 	.uleb128	12
      002B5C 00 00 0C 07           2760 	.dw	0,3079
      002B60 0B                    2761 	.uleb128	11
      002B61 05                    2762 	.db	5
      002B62 03                    2763 	.db	3
      002B63 00 00 00 FF           2764 	.dw	0,(_SM0_1)
      002B67 53 4D 30 5F 31        2765 	.ascii "SM0_1"
      002B6C 00                    2766 	.db	0
      002B6D 01                    2767 	.db	1
      002B6E 00 00 0C 10           2768 	.dw	0,3088
      002B72 0B                    2769 	.uleb128	11
      002B73 05                    2770 	.db	5
      002B74 03                    2771 	.db	3
      002B75 00 00 00 FF           2772 	.dw	0,(_FE_1)
      002B79 46 45 5F 31           2773 	.ascii "FE_1"
      002B7D 00                    2774 	.db	0
      002B7E 01                    2775 	.db	1
      002B7F 00 00 0C 10           2776 	.dw	0,3088
      002B83 0B                    2777 	.uleb128	11
      002B84 05                    2778 	.db	5
      002B85 03                    2779 	.db	3
      002B86 00 00 00 FE           2780 	.dw	0,(_SM1_1)
      002B8A 53 4D 31 5F 31        2781 	.ascii "SM1_1"
      002B8F 00                    2782 	.db	0
      002B90 01                    2783 	.db	1
      002B91 00 00 0C 10           2784 	.dw	0,3088
      002B95 0B                    2785 	.uleb128	11
      002B96 05                    2786 	.db	5
      002B97 03                    2787 	.db	3
      002B98 00 00 00 FD           2788 	.dw	0,(_SM2_1)
      002B9C 53 4D 32 5F 31        2789 	.ascii "SM2_1"
      002BA1 00                    2790 	.db	0
      002BA2 01                    2791 	.db	1
      002BA3 00 00 0C 10           2792 	.dw	0,3088
      002BA7 0B                    2793 	.uleb128	11
      002BA8 05                    2794 	.db	5
      002BA9 03                    2795 	.db	3
      002BAA 00 00 00 FC           2796 	.dw	0,(_REN_1)
      002BAE 52 45 4E 5F 31        2797 	.ascii "REN_1"
      002BB3 00                    2798 	.db	0
      002BB4 01                    2799 	.db	1
      002BB5 00 00 0C 10           2800 	.dw	0,3088
      002BB9 0B                    2801 	.uleb128	11
      002BBA 05                    2802 	.db	5
      002BBB 03                    2803 	.db	3
      002BBC 00 00 00 FB           2804 	.dw	0,(_TB8_1)
      002BC0 54 42 38 5F 31        2805 	.ascii "TB8_1"
      002BC5 00                    2806 	.db	0
      002BC6 01                    2807 	.db	1
      002BC7 00 00 0C 10           2808 	.dw	0,3088
      002BCB 0B                    2809 	.uleb128	11
      002BCC 05                    2810 	.db	5
      002BCD 03                    2811 	.db	3
      002BCE 00 00 00 FA           2812 	.dw	0,(_RB8_1)
      002BD2 52 42 38 5F 31        2813 	.ascii "RB8_1"
      002BD7 00                    2814 	.db	0
      002BD8 01                    2815 	.db	1
      002BD9 00 00 0C 10           2816 	.dw	0,3088
      002BDD 0B                    2817 	.uleb128	11
      002BDE 05                    2818 	.db	5
      002BDF 03                    2819 	.db	3
      002BE0 00 00 00 F9           2820 	.dw	0,(_TI_1)
      002BE4 54 49 5F 31           2821 	.ascii "TI_1"
      002BE8 00                    2822 	.db	0
      002BE9 01                    2823 	.db	1
      002BEA 00 00 0C 10           2824 	.dw	0,3088
      002BEE 0B                    2825 	.uleb128	11
      002BEF 05                    2826 	.db	5
      002BF0 03                    2827 	.db	3
      002BF1 00 00 00 F8           2828 	.dw	0,(_RI_1)
      002BF5 52 49 5F 31           2829 	.ascii "RI_1"
      002BF9 00                    2830 	.db	0
      002BFA 01                    2831 	.db	1
      002BFB 00 00 0C 10           2832 	.dw	0,3088
      002BFF 0B                    2833 	.uleb128	11
      002C00 05                    2834 	.db	5
      002C01 03                    2835 	.db	3
      002C02 00 00 00 EF           2836 	.dw	0,(_ADCF)
      002C06 41 44 43 46           2837 	.ascii "ADCF"
      002C0A 00                    2838 	.db	0
      002C0B 01                    2839 	.db	1
      002C0C 00 00 0C 10           2840 	.dw	0,3088
      002C10 0B                    2841 	.uleb128	11
      002C11 05                    2842 	.db	5
      002C12 03                    2843 	.db	3
      002C13 00 00 00 EE           2844 	.dw	0,(_ADCS)
      002C17 41 44 43 53           2845 	.ascii "ADCS"
      002C1B 00                    2846 	.db	0
      002C1C 01                    2847 	.db	1
      002C1D 00 00 0C 10           2848 	.dw	0,3088
      002C21 0B                    2849 	.uleb128	11
      002C22 05                    2850 	.db	5
      002C23 03                    2851 	.db	3
      002C24 00 00 00 ED           2852 	.dw	0,(_ETGSEL1)
      002C28 45 54 47 53 45 4C 31  2853 	.ascii "ETGSEL1"
      002C2F 00                    2854 	.db	0
      002C30 01                    2855 	.db	1
      002C31 00 00 0C 10           2856 	.dw	0,3088
      002C35 0B                    2857 	.uleb128	11
      002C36 05                    2858 	.db	5
      002C37 03                    2859 	.db	3
      002C38 00 00 00 EC           2860 	.dw	0,(_ETGSEL0)
      002C3C 45 54 47 53 45 4C 30  2861 	.ascii "ETGSEL0"
      002C43 00                    2862 	.db	0
      002C44 01                    2863 	.db	1
      002C45 00 00 0C 10           2864 	.dw	0,3088
      002C49 0B                    2865 	.uleb128	11
      002C4A 05                    2866 	.db	5
      002C4B 03                    2867 	.db	3
      002C4C 00 00 00 EB           2868 	.dw	0,(_ADCHS3)
      002C50 41 44 43 48 53 33     2869 	.ascii "ADCHS3"
      002C56 00                    2870 	.db	0
      002C57 01                    2871 	.db	1
      002C58 00 00 0C 10           2872 	.dw	0,3088
      002C5C 0B                    2873 	.uleb128	11
      002C5D 05                    2874 	.db	5
      002C5E 03                    2875 	.db	3
      002C5F 00 00 00 EA           2876 	.dw	0,(_ADCHS2)
      002C63 41 44 43 48 53 32     2877 	.ascii "ADCHS2"
      002C69 00                    2878 	.db	0
      002C6A 01                    2879 	.db	1
      002C6B 00 00 0C 10           2880 	.dw	0,3088
      002C6F 0B                    2881 	.uleb128	11
      002C70 05                    2882 	.db	5
      002C71 03                    2883 	.db	3
      002C72 00 00 00 E9           2884 	.dw	0,(_ADCHS1)
      002C76 41 44 43 48 53 31     2885 	.ascii "ADCHS1"
      002C7C 00                    2886 	.db	0
      002C7D 01                    2887 	.db	1
      002C7E 00 00 0C 10           2888 	.dw	0,3088
      002C82 0B                    2889 	.uleb128	11
      002C83 05                    2890 	.db	5
      002C84 03                    2891 	.db	3
      002C85 00 00 00 E8           2892 	.dw	0,(_ADCHS0)
      002C89 41 44 43 48 53 30     2893 	.ascii "ADCHS0"
      002C8F 00                    2894 	.db	0
      002C90 01                    2895 	.db	1
      002C91 00 00 0C 10           2896 	.dw	0,3088
      002C95 0B                    2897 	.uleb128	11
      002C96 05                    2898 	.db	5
      002C97 03                    2899 	.db	3
      002C98 00 00 00 DF           2900 	.dw	0,(_PWMRUN)
      002C9C 50 57 4D 52 55 4E     2901 	.ascii "PWMRUN"
      002CA2 00                    2902 	.db	0
      002CA3 01                    2903 	.db	1
      002CA4 00 00 0C 10           2904 	.dw	0,3088
      002CA8 0B                    2905 	.uleb128	11
      002CA9 05                    2906 	.db	5
      002CAA 03                    2907 	.db	3
      002CAB 00 00 00 DE           2908 	.dw	0,(_LOAD)
      002CAF 4C 4F 41 44           2909 	.ascii "LOAD"
      002CB3 00                    2910 	.db	0
      002CB4 01                    2911 	.db	1
      002CB5 00 00 0C 10           2912 	.dw	0,3088
      002CB9 0B                    2913 	.uleb128	11
      002CBA 05                    2914 	.db	5
      002CBB 03                    2915 	.db	3
      002CBC 00 00 00 DD           2916 	.dw	0,(_PWMF)
      002CC0 50 57 4D 46           2917 	.ascii "PWMF"
      002CC4 00                    2918 	.db	0
      002CC5 01                    2919 	.db	1
      002CC6 00 00 0C 10           2920 	.dw	0,3088
      002CCA 0B                    2921 	.uleb128	11
      002CCB 05                    2922 	.db	5
      002CCC 03                    2923 	.db	3
      002CCD 00 00 00 DC           2924 	.dw	0,(_CLRPWM)
      002CD1 43 4C 52 50 57 4D     2925 	.ascii "CLRPWM"
      002CD7 00                    2926 	.db	0
      002CD8 01                    2927 	.db	1
      002CD9 00 00 0C 10           2928 	.dw	0,3088
      002CDD 0B                    2929 	.uleb128	11
      002CDE 05                    2930 	.db	5
      002CDF 03                    2931 	.db	3
      002CE0 00 00 00 D7           2932 	.dw	0,(_CY)
      002CE4 43 59                 2933 	.ascii "CY"
      002CE6 00                    2934 	.db	0
      002CE7 01                    2935 	.db	1
      002CE8 00 00 0C 10           2936 	.dw	0,3088
      002CEC 0B                    2937 	.uleb128	11
      002CED 05                    2938 	.db	5
      002CEE 03                    2939 	.db	3
      002CEF 00 00 00 D6           2940 	.dw	0,(_AC)
      002CF3 41 43                 2941 	.ascii "AC"
      002CF5 00                    2942 	.db	0
      002CF6 01                    2943 	.db	1
      002CF7 00 00 0C 10           2944 	.dw	0,3088
      002CFB 0B                    2945 	.uleb128	11
      002CFC 05                    2946 	.db	5
      002CFD 03                    2947 	.db	3
      002CFE 00 00 00 D5           2948 	.dw	0,(_F0)
      002D02 46 30                 2949 	.ascii "F0"
      002D04 00                    2950 	.db	0
      002D05 01                    2951 	.db	1
      002D06 00 00 0C 10           2952 	.dw	0,3088
      002D0A 0B                    2953 	.uleb128	11
      002D0B 05                    2954 	.db	5
      002D0C 03                    2955 	.db	3
      002D0D 00 00 00 D4           2956 	.dw	0,(_RS1)
      002D11 52 53 31              2957 	.ascii "RS1"
      002D14 00                    2958 	.db	0
      002D15 01                    2959 	.db	1
      002D16 00 00 0C 10           2960 	.dw	0,3088
      002D1A 0B                    2961 	.uleb128	11
      002D1B 05                    2962 	.db	5
      002D1C 03                    2963 	.db	3
      002D1D 00 00 00 D3           2964 	.dw	0,(_RS0)
      002D21 52 53 30              2965 	.ascii "RS0"
      002D24 00                    2966 	.db	0
      002D25 01                    2967 	.db	1
      002D26 00 00 0C 10           2968 	.dw	0,3088
      002D2A 0B                    2969 	.uleb128	11
      002D2B 05                    2970 	.db	5
      002D2C 03                    2971 	.db	3
      002D2D 00 00 00 D2           2972 	.dw	0,(_OV)
      002D31 4F 56                 2973 	.ascii "OV"
      002D33 00                    2974 	.db	0
      002D34 01                    2975 	.db	1
      002D35 00 00 0C 10           2976 	.dw	0,3088
      002D39 0B                    2977 	.uleb128	11
      002D3A 05                    2978 	.db	5
      002D3B 03                    2979 	.db	3
      002D3C 00 00 00 D0           2980 	.dw	0,(_P)
      002D40 50                    2981 	.ascii "P"
      002D41 00                    2982 	.db	0
      002D42 01                    2983 	.db	1
      002D43 00 00 0C 10           2984 	.dw	0,3088
      002D47 0B                    2985 	.uleb128	11
      002D48 05                    2986 	.db	5
      002D49 03                    2987 	.db	3
      002D4A 00 00 00 CF           2988 	.dw	0,(_TF2)
      002D4E 54 46 32              2989 	.ascii "TF2"
      002D51 00                    2990 	.db	0
      002D52 01                    2991 	.db	1
      002D53 00 00 0C 10           2992 	.dw	0,3088
      002D57 0B                    2993 	.uleb128	11
      002D58 05                    2994 	.db	5
      002D59 03                    2995 	.db	3
      002D5A 00 00 00 CA           2996 	.dw	0,(_TR2)
      002D5E 54 52 32              2997 	.ascii "TR2"
      002D61 00                    2998 	.db	0
      002D62 01                    2999 	.db	1
      002D63 00 00 0C 10           3000 	.dw	0,3088
      002D67 0B                    3001 	.uleb128	11
      002D68 05                    3002 	.db	5
      002D69 03                    3003 	.db	3
      002D6A 00 00 00 C8           3004 	.dw	0,(_CM_RL2)
      002D6E 43 4D 5F 52 4C 32     3005 	.ascii "CM_RL2"
      002D74 00                    3006 	.db	0
      002D75 01                    3007 	.db	1
      002D76 00 00 0C 10           3008 	.dw	0,3088
      002D7A 0B                    3009 	.uleb128	11
      002D7B 05                    3010 	.db	5
      002D7C 03                    3011 	.db	3
      002D7D 00 00 00 C6           3012 	.dw	0,(_I2CEN)
      002D81 49 32 43 45 4E        3013 	.ascii "I2CEN"
      002D86 00                    3014 	.db	0
      002D87 01                    3015 	.db	1
      002D88 00 00 0C 10           3016 	.dw	0,3088
      002D8C 0B                    3017 	.uleb128	11
      002D8D 05                    3018 	.db	5
      002D8E 03                    3019 	.db	3
      002D8F 00 00 00 C5           3020 	.dw	0,(_STA)
      002D93 53 54 41              3021 	.ascii "STA"
      002D96 00                    3022 	.db	0
      002D97 01                    3023 	.db	1
      002D98 00 00 0C 10           3024 	.dw	0,3088
      002D9C 0B                    3025 	.uleb128	11
      002D9D 05                    3026 	.db	5
      002D9E 03                    3027 	.db	3
      002D9F 00 00 00 C4           3028 	.dw	0,(_STO)
      002DA3 53 54 4F              3029 	.ascii "STO"
      002DA6 00                    3030 	.db	0
      002DA7 01                    3031 	.db	1
      002DA8 00 00 0C 10           3032 	.dw	0,3088
      002DAC 0B                    3033 	.uleb128	11
      002DAD 05                    3034 	.db	5
      002DAE 03                    3035 	.db	3
      002DAF 00 00 00 C3           3036 	.dw	0,(_SI)
      002DB3 53 49                 3037 	.ascii "SI"
      002DB5 00                    3038 	.db	0
      002DB6 01                    3039 	.db	1
      002DB7 00 00 0C 10           3040 	.dw	0,3088
      002DBB 0B                    3041 	.uleb128	11
      002DBC 05                    3042 	.db	5
      002DBD 03                    3043 	.db	3
      002DBE 00 00 00 C2           3044 	.dw	0,(_AA)
      002DC2 41 41                 3045 	.ascii "AA"
      002DC4 00                    3046 	.db	0
      002DC5 01                    3047 	.db	1
      002DC6 00 00 0C 10           3048 	.dw	0,3088
      002DCA 0B                    3049 	.uleb128	11
      002DCB 05                    3050 	.db	5
      002DCC 03                    3051 	.db	3
      002DCD 00 00 00 C0           3052 	.dw	0,(_I2CPX)
      002DD1 49 32 43 50 58        3053 	.ascii "I2CPX"
      002DD6 00                    3054 	.db	0
      002DD7 01                    3055 	.db	1
      002DD8 00 00 0C 10           3056 	.dw	0,3088
      002DDC 0B                    3057 	.uleb128	11
      002DDD 05                    3058 	.db	5
      002DDE 03                    3059 	.db	3
      002DDF 00 00 00 BE           3060 	.dw	0,(_PADC)
      002DE3 50 41 44 43           3061 	.ascii "PADC"
      002DE7 00                    3062 	.db	0
      002DE8 01                    3063 	.db	1
      002DE9 00 00 0C 10           3064 	.dw	0,3088
      002DED 0B                    3065 	.uleb128	11
      002DEE 05                    3066 	.db	5
      002DEF 03                    3067 	.db	3
      002DF0 00 00 00 BD           3068 	.dw	0,(_PBOD)
      002DF4 50 42 4F 44           3069 	.ascii "PBOD"
      002DF8 00                    3070 	.db	0
      002DF9 01                    3071 	.db	1
      002DFA 00 00 0C 10           3072 	.dw	0,3088
      002DFE 0B                    3073 	.uleb128	11
      002DFF 05                    3074 	.db	5
      002E00 03                    3075 	.db	3
      002E01 00 00 00 BC           3076 	.dw	0,(_PS)
      002E05 50 53                 3077 	.ascii "PS"
      002E07 00                    3078 	.db	0
      002E08 01                    3079 	.db	1
      002E09 00 00 0C 10           3080 	.dw	0,3088
      002E0D 0B                    3081 	.uleb128	11
      002E0E 05                    3082 	.db	5
      002E0F 03                    3083 	.db	3
      002E10 00 00 00 BB           3084 	.dw	0,(_PT1)
      002E14 50 54 31              3085 	.ascii "PT1"
      002E17 00                    3086 	.db	0
      002E18 01                    3087 	.db	1
      002E19 00 00 0C 10           3088 	.dw	0,3088
      002E1D 0B                    3089 	.uleb128	11
      002E1E 05                    3090 	.db	5
      002E1F 03                    3091 	.db	3
      002E20 00 00 00 BA           3092 	.dw	0,(_PX1)
      002E24 50 58 31              3093 	.ascii "PX1"
      002E27 00                    3094 	.db	0
      002E28 01                    3095 	.db	1
      002E29 00 00 0C 10           3096 	.dw	0,3088
      002E2D 0B                    3097 	.uleb128	11
      002E2E 05                    3098 	.db	5
      002E2F 03                    3099 	.db	3
      002E30 00 00 00 B9           3100 	.dw	0,(_PT0)
      002E34 50 54 30              3101 	.ascii "PT0"
      002E37 00                    3102 	.db	0
      002E38 01                    3103 	.db	1
      002E39 00 00 0C 10           3104 	.dw	0,3088
      002E3D 0B                    3105 	.uleb128	11
      002E3E 05                    3106 	.db	5
      002E3F 03                    3107 	.db	3
      002E40 00 00 00 B8           3108 	.dw	0,(_PX0)
      002E44 50 58 30              3109 	.ascii "PX0"
      002E47 00                    3110 	.db	0
      002E48 01                    3111 	.db	1
      002E49 00 00 0C 10           3112 	.dw	0,3088
      002E4D 0B                    3113 	.uleb128	11
      002E4E 05                    3114 	.db	5
      002E4F 03                    3115 	.db	3
      002E50 00 00 00 B0           3116 	.dw	0,(_P30)
      002E54 50 33 30              3117 	.ascii "P30"
      002E57 00                    3118 	.db	0
      002E58 01                    3119 	.db	1
      002E59 00 00 0C 10           3120 	.dw	0,3088
      002E5D 0B                    3121 	.uleb128	11
      002E5E 05                    3122 	.db	5
      002E5F 03                    3123 	.db	3
      002E60 00 00 00 AF           3124 	.dw	0,(_EA)
      002E64 45 41                 3125 	.ascii "EA"
      002E66 00                    3126 	.db	0
      002E67 01                    3127 	.db	1
      002E68 00 00 0C 10           3128 	.dw	0,3088
      002E6C 0B                    3129 	.uleb128	11
      002E6D 05                    3130 	.db	5
      002E6E 03                    3131 	.db	3
      002E6F 00 00 00 AE           3132 	.dw	0,(_EADC)
      002E73 45 41 44 43           3133 	.ascii "EADC"
      002E77 00                    3134 	.db	0
      002E78 01                    3135 	.db	1
      002E79 00 00 0C 10           3136 	.dw	0,3088
      002E7D 0B                    3137 	.uleb128	11
      002E7E 05                    3138 	.db	5
      002E7F 03                    3139 	.db	3
      002E80 00 00 00 AD           3140 	.dw	0,(_EBOD)
      002E84 45 42 4F 44           3141 	.ascii "EBOD"
      002E88 00                    3142 	.db	0
      002E89 01                    3143 	.db	1
      002E8A 00 00 0C 10           3144 	.dw	0,3088
      002E8E 0B                    3145 	.uleb128	11
      002E8F 05                    3146 	.db	5
      002E90 03                    3147 	.db	3
      002E91 00 00 00 AC           3148 	.dw	0,(_ES)
      002E95 45 53                 3149 	.ascii "ES"
      002E97 00                    3150 	.db	0
      002E98 01                    3151 	.db	1
      002E99 00 00 0C 10           3152 	.dw	0,3088
      002E9D 0B                    3153 	.uleb128	11
      002E9E 05                    3154 	.db	5
      002E9F 03                    3155 	.db	3
      002EA0 00 00 00 AB           3156 	.dw	0,(_ET1)
      002EA4 45 54 31              3157 	.ascii "ET1"
      002EA7 00                    3158 	.db	0
      002EA8 01                    3159 	.db	1
      002EA9 00 00 0C 10           3160 	.dw	0,3088
      002EAD 0B                    3161 	.uleb128	11
      002EAE 05                    3162 	.db	5
      002EAF 03                    3163 	.db	3
      002EB0 00 00 00 AA           3164 	.dw	0,(_EX1)
      002EB4 45 58 31              3165 	.ascii "EX1"
      002EB7 00                    3166 	.db	0
      002EB8 01                    3167 	.db	1
      002EB9 00 00 0C 10           3168 	.dw	0,3088
      002EBD 0B                    3169 	.uleb128	11
      002EBE 05                    3170 	.db	5
      002EBF 03                    3171 	.db	3
      002EC0 00 00 00 A9           3172 	.dw	0,(_ET0)
      002EC4 45 54 30              3173 	.ascii "ET0"
      002EC7 00                    3174 	.db	0
      002EC8 01                    3175 	.db	1
      002EC9 00 00 0C 10           3176 	.dw	0,3088
      002ECD 0B                    3177 	.uleb128	11
      002ECE 05                    3178 	.db	5
      002ECF 03                    3179 	.db	3
      002ED0 00 00 00 A8           3180 	.dw	0,(_EX0)
      002ED4 45 58 30              3181 	.ascii "EX0"
      002ED7 00                    3182 	.db	0
      002ED8 01                    3183 	.db	1
      002ED9 00 00 0C 10           3184 	.dw	0,3088
      002EDD 0B                    3185 	.uleb128	11
      002EDE 05                    3186 	.db	5
      002EDF 03                    3187 	.db	3
      002EE0 00 00 00 A0           3188 	.dw	0,(_P20)
      002EE4 50 32 30              3189 	.ascii "P20"
      002EE7 00                    3190 	.db	0
      002EE8 01                    3191 	.db	1
      002EE9 00 00 0C 10           3192 	.dw	0,3088
      002EED 0B                    3193 	.uleb128	11
      002EEE 05                    3194 	.db	5
      002EEF 03                    3195 	.db	3
      002EF0 00 00 00 9F           3196 	.dw	0,(_SM0)
      002EF4 53 4D 30              3197 	.ascii "SM0"
      002EF7 00                    3198 	.db	0
      002EF8 01                    3199 	.db	1
      002EF9 00 00 0C 10           3200 	.dw	0,3088
      002EFD 0B                    3201 	.uleb128	11
      002EFE 05                    3202 	.db	5
      002EFF 03                    3203 	.db	3
      002F00 00 00 00 9F           3204 	.dw	0,(_FE)
      002F04 46 45                 3205 	.ascii "FE"
      002F06 00                    3206 	.db	0
      002F07 01                    3207 	.db	1
      002F08 00 00 0C 10           3208 	.dw	0,3088
      002F0C 0B                    3209 	.uleb128	11
      002F0D 05                    3210 	.db	5
      002F0E 03                    3211 	.db	3
      002F0F 00 00 00 9E           3212 	.dw	0,(_SM1)
      002F13 53 4D 31              3213 	.ascii "SM1"
      002F16 00                    3214 	.db	0
      002F17 01                    3215 	.db	1
      002F18 00 00 0C 10           3216 	.dw	0,3088
      002F1C 0B                    3217 	.uleb128	11
      002F1D 05                    3218 	.db	5
      002F1E 03                    3219 	.db	3
      002F1F 00 00 00 9D           3220 	.dw	0,(_SM2)
      002F23 53 4D 32              3221 	.ascii "SM2"
      002F26 00                    3222 	.db	0
      002F27 01                    3223 	.db	1
      002F28 00 00 0C 10           3224 	.dw	0,3088
      002F2C 0B                    3225 	.uleb128	11
      002F2D 05                    3226 	.db	5
      002F2E 03                    3227 	.db	3
      002F2F 00 00 00 9C           3228 	.dw	0,(_REN)
      002F33 52 45 4E              3229 	.ascii "REN"
      002F36 00                    3230 	.db	0
      002F37 01                    3231 	.db	1
      002F38 00 00 0C 10           3232 	.dw	0,3088
      002F3C 0B                    3233 	.uleb128	11
      002F3D 05                    3234 	.db	5
      002F3E 03                    3235 	.db	3
      002F3F 00 00 00 9B           3236 	.dw	0,(_TB8)
      002F43 54 42 38              3237 	.ascii "TB8"
      002F46 00                    3238 	.db	0
      002F47 01                    3239 	.db	1
      002F48 00 00 0C 10           3240 	.dw	0,3088
      002F4C 0B                    3241 	.uleb128	11
      002F4D 05                    3242 	.db	5
      002F4E 03                    3243 	.db	3
      002F4F 00 00 00 9A           3244 	.dw	0,(_RB8)
      002F53 52 42 38              3245 	.ascii "RB8"
      002F56 00                    3246 	.db	0
      002F57 01                    3247 	.db	1
      002F58 00 00 0C 10           3248 	.dw	0,3088
      002F5C 0B                    3249 	.uleb128	11
      002F5D 05                    3250 	.db	5
      002F5E 03                    3251 	.db	3
      002F5F 00 00 00 99           3252 	.dw	0,(_TI)
      002F63 54 49                 3253 	.ascii "TI"
      002F65 00                    3254 	.db	0
      002F66 01                    3255 	.db	1
      002F67 00 00 0C 10           3256 	.dw	0,3088
      002F6B 0B                    3257 	.uleb128	11
      002F6C 05                    3258 	.db	5
      002F6D 03                    3259 	.db	3
      002F6E 00 00 00 98           3260 	.dw	0,(_RI)
      002F72 52 49                 3261 	.ascii "RI"
      002F74 00                    3262 	.db	0
      002F75 01                    3263 	.db	1
      002F76 00 00 0C 10           3264 	.dw	0,3088
      002F7A 0B                    3265 	.uleb128	11
      002F7B 05                    3266 	.db	5
      002F7C 03                    3267 	.db	3
      002F7D 00 00 00 97           3268 	.dw	0,(_P17)
      002F81 50 31 37              3269 	.ascii "P17"
      002F84 00                    3270 	.db	0
      002F85 01                    3271 	.db	1
      002F86 00 00 0C 10           3272 	.dw	0,3088
      002F8A 0B                    3273 	.uleb128	11
      002F8B 05                    3274 	.db	5
      002F8C 03                    3275 	.db	3
      002F8D 00 00 00 96           3276 	.dw	0,(_P16)
      002F91 50 31 36              3277 	.ascii "P16"
      002F94 00                    3278 	.db	0
      002F95 01                    3279 	.db	1
      002F96 00 00 0C 10           3280 	.dw	0,3088
      002F9A 0B                    3281 	.uleb128	11
      002F9B 05                    3282 	.db	5
      002F9C 03                    3283 	.db	3
      002F9D 00 00 00 96           3284 	.dw	0,(_TXD_1)
      002FA1 54 58 44 5F 31        3285 	.ascii "TXD_1"
      002FA6 00                    3286 	.db	0
      002FA7 01                    3287 	.db	1
      002FA8 00 00 0C 10           3288 	.dw	0,3088
      002FAC 0B                    3289 	.uleb128	11
      002FAD 05                    3290 	.db	5
      002FAE 03                    3291 	.db	3
      002FAF 00 00 00 95           3292 	.dw	0,(_P15)
      002FB3 50 31 35              3293 	.ascii "P15"
      002FB6 00                    3294 	.db	0
      002FB7 01                    3295 	.db	1
      002FB8 00 00 0C 10           3296 	.dw	0,3088
      002FBC 0B                    3297 	.uleb128	11
      002FBD 05                    3298 	.db	5
      002FBE 03                    3299 	.db	3
      002FBF 00 00 00 94           3300 	.dw	0,(_P14)
      002FC3 50 31 34              3301 	.ascii "P14"
      002FC6 00                    3302 	.db	0
      002FC7 01                    3303 	.db	1
      002FC8 00 00 0C 10           3304 	.dw	0,3088
      002FCC 0B                    3305 	.uleb128	11
      002FCD 05                    3306 	.db	5
      002FCE 03                    3307 	.db	3
      002FCF 00 00 00 94           3308 	.dw	0,(_SDA)
      002FD3 53 44 41              3309 	.ascii "SDA"
      002FD6 00                    3310 	.db	0
      002FD7 01                    3311 	.db	1
      002FD8 00 00 0C 10           3312 	.dw	0,3088
      002FDC 0B                    3313 	.uleb128	11
      002FDD 05                    3314 	.db	5
      002FDE 03                    3315 	.db	3
      002FDF 00 00 00 93           3316 	.dw	0,(_P13)
      002FE3 50 31 33              3317 	.ascii "P13"
      002FE6 00                    3318 	.db	0
      002FE7 01                    3319 	.db	1
      002FE8 00 00 0C 10           3320 	.dw	0,3088
      002FEC 0B                    3321 	.uleb128	11
      002FED 05                    3322 	.db	5
      002FEE 03                    3323 	.db	3
      002FEF 00 00 00 93           3324 	.dw	0,(_SCL)
      002FF3 53 43 4C              3325 	.ascii "SCL"
      002FF6 00                    3326 	.db	0
      002FF7 01                    3327 	.db	1
      002FF8 00 00 0C 10           3328 	.dw	0,3088
      002FFC 0B                    3329 	.uleb128	11
      002FFD 05                    3330 	.db	5
      002FFE 03                    3331 	.db	3
      002FFF 00 00 00 92           3332 	.dw	0,(_P12)
      003003 50 31 32              3333 	.ascii "P12"
      003006 00                    3334 	.db	0
      003007 01                    3335 	.db	1
      003008 00 00 0C 10           3336 	.dw	0,3088
      00300C 0B                    3337 	.uleb128	11
      00300D 05                    3338 	.db	5
      00300E 03                    3339 	.db	3
      00300F 00 00 00 91           3340 	.dw	0,(_P11)
      003013 50 31 31              3341 	.ascii "P11"
      003016 00                    3342 	.db	0
      003017 01                    3343 	.db	1
      003018 00 00 0C 10           3344 	.dw	0,3088
      00301C 0B                    3345 	.uleb128	11
      00301D 05                    3346 	.db	5
      00301E 03                    3347 	.db	3
      00301F 00 00 00 90           3348 	.dw	0,(_P10)
      003023 50 31 30              3349 	.ascii "P10"
      003026 00                    3350 	.db	0
      003027 01                    3351 	.db	1
      003028 00 00 0C 10           3352 	.dw	0,3088
      00302C 0B                    3353 	.uleb128	11
      00302D 05                    3354 	.db	5
      00302E 03                    3355 	.db	3
      00302F 00 00 00 8F           3356 	.dw	0,(_TF1)
      003033 54 46 31              3357 	.ascii "TF1"
      003036 00                    3358 	.db	0
      003037 01                    3359 	.db	1
      003038 00 00 0C 10           3360 	.dw	0,3088
      00303C 0B                    3361 	.uleb128	11
      00303D 05                    3362 	.db	5
      00303E 03                    3363 	.db	3
      00303F 00 00 00 8E           3364 	.dw	0,(_TR1)
      003043 54 52 31              3365 	.ascii "TR1"
      003046 00                    3366 	.db	0
      003047 01                    3367 	.db	1
      003048 00 00 0C 10           3368 	.dw	0,3088
      00304C 0B                    3369 	.uleb128	11
      00304D 05                    3370 	.db	5
      00304E 03                    3371 	.db	3
      00304F 00 00 00 8D           3372 	.dw	0,(_TF0)
      003053 54 46 30              3373 	.ascii "TF0"
      003056 00                    3374 	.db	0
      003057 01                    3375 	.db	1
      003058 00 00 0C 10           3376 	.dw	0,3088
      00305C 0B                    3377 	.uleb128	11
      00305D 05                    3378 	.db	5
      00305E 03                    3379 	.db	3
      00305F 00 00 00 8C           3380 	.dw	0,(_TR0)
      003063 54 52 30              3381 	.ascii "TR0"
      003066 00                    3382 	.db	0
      003067 01                    3383 	.db	1
      003068 00 00 0C 10           3384 	.dw	0,3088
      00306C 0B                    3385 	.uleb128	11
      00306D 05                    3386 	.db	5
      00306E 03                    3387 	.db	3
      00306F 00 00 00 8B           3388 	.dw	0,(_IE1)
      003073 49 45 31              3389 	.ascii "IE1"
      003076 00                    3390 	.db	0
      003077 01                    3391 	.db	1
      003078 00 00 0C 10           3392 	.dw	0,3088
      00307C 0B                    3393 	.uleb128	11
      00307D 05                    3394 	.db	5
      00307E 03                    3395 	.db	3
      00307F 00 00 00 8A           3396 	.dw	0,(_IT1)
      003083 49 54 31              3397 	.ascii "IT1"
      003086 00                    3398 	.db	0
      003087 01                    3399 	.db	1
      003088 00 00 0C 10           3400 	.dw	0,3088
      00308C 0B                    3401 	.uleb128	11
      00308D 05                    3402 	.db	5
      00308E 03                    3403 	.db	3
      00308F 00 00 00 89           3404 	.dw	0,(_IE0)
      003093 49 45 30              3405 	.ascii "IE0"
      003096 00                    3406 	.db	0
      003097 01                    3407 	.db	1
      003098 00 00 0C 10           3408 	.dw	0,3088
      00309C 0B                    3409 	.uleb128	11
      00309D 05                    3410 	.db	5
      00309E 03                    3411 	.db	3
      00309F 00 00 00 88           3412 	.dw	0,(_IT0)
      0030A3 49 54 30              3413 	.ascii "IT0"
      0030A6 00                    3414 	.db	0
      0030A7 01                    3415 	.db	1
      0030A8 00 00 0C 10           3416 	.dw	0,3088
      0030AC 0B                    3417 	.uleb128	11
      0030AD 05                    3418 	.db	5
      0030AE 03                    3419 	.db	3
      0030AF 00 00 00 87           3420 	.dw	0,(_P07)
      0030B3 50 30 37              3421 	.ascii "P07"
      0030B6 00                    3422 	.db	0
      0030B7 01                    3423 	.db	1
      0030B8 00 00 0C 10           3424 	.dw	0,3088
      0030BC 0B                    3425 	.uleb128	11
      0030BD 05                    3426 	.db	5
      0030BE 03                    3427 	.db	3
      0030BF 00 00 00 87           3428 	.dw	0,(_RXD)
      0030C3 52 58 44              3429 	.ascii "RXD"
      0030C6 00                    3430 	.db	0
      0030C7 01                    3431 	.db	1
      0030C8 00 00 0C 10           3432 	.dw	0,3088
      0030CC 0B                    3433 	.uleb128	11
      0030CD 05                    3434 	.db	5
      0030CE 03                    3435 	.db	3
      0030CF 00 00 00 86           3436 	.dw	0,(_P06)
      0030D3 50 30 36              3437 	.ascii "P06"
      0030D6 00                    3438 	.db	0
      0030D7 01                    3439 	.db	1
      0030D8 00 00 0C 10           3440 	.dw	0,3088
      0030DC 0B                    3441 	.uleb128	11
      0030DD 05                    3442 	.db	5
      0030DE 03                    3443 	.db	3
      0030DF 00 00 00 86           3444 	.dw	0,(_TXD)
      0030E3 54 58 44              3445 	.ascii "TXD"
      0030E6 00                    3446 	.db	0
      0030E7 01                    3447 	.db	1
      0030E8 00 00 0C 10           3448 	.dw	0,3088
      0030EC 0B                    3449 	.uleb128	11
      0030ED 05                    3450 	.db	5
      0030EE 03                    3451 	.db	3
      0030EF 00 00 00 85           3452 	.dw	0,(_P05)
      0030F3 50 30 35              3453 	.ascii "P05"
      0030F6 00                    3454 	.db	0
      0030F7 01                    3455 	.db	1
      0030F8 00 00 0C 10           3456 	.dw	0,3088
      0030FC 0B                    3457 	.uleb128	11
      0030FD 05                    3458 	.db	5
      0030FE 03                    3459 	.db	3
      0030FF 00 00 00 84           3460 	.dw	0,(_P04)
      003103 50 30 34              3461 	.ascii "P04"
      003106 00                    3462 	.db	0
      003107 01                    3463 	.db	1
      003108 00 00 0C 10           3464 	.dw	0,3088
      00310C 0B                    3465 	.uleb128	11
      00310D 05                    3466 	.db	5
      00310E 03                    3467 	.db	3
      00310F 00 00 00 84           3468 	.dw	0,(_STADC)
      003113 53 54 41 44 43        3469 	.ascii "STADC"
      003118 00                    3470 	.db	0
      003119 01                    3471 	.db	1
      00311A 00 00 0C 10           3472 	.dw	0,3088
      00311E 0B                    3473 	.uleb128	11
      00311F 05                    3474 	.db	5
      003120 03                    3475 	.db	3
      003121 00 00 00 83           3476 	.dw	0,(_P03)
      003125 50 30 33              3477 	.ascii "P03"
      003128 00                    3478 	.db	0
      003129 01                    3479 	.db	1
      00312A 00 00 0C 10           3480 	.dw	0,3088
      00312E 0B                    3481 	.uleb128	11
      00312F 05                    3482 	.db	5
      003130 03                    3483 	.db	3
      003131 00 00 00 82           3484 	.dw	0,(_P02)
      003135 50 30 32              3485 	.ascii "P02"
      003138 00                    3486 	.db	0
      003139 01                    3487 	.db	1
      00313A 00 00 0C 10           3488 	.dw	0,3088
      00313E 0B                    3489 	.uleb128	11
      00313F 05                    3490 	.db	5
      003140 03                    3491 	.db	3
      003141 00 00 00 82           3492 	.dw	0,(_RXD_1)
      003145 52 58 44 5F 31        3493 	.ascii "RXD_1"
      00314A 00                    3494 	.db	0
      00314B 01                    3495 	.db	1
      00314C 00 00 0C 10           3496 	.dw	0,3088
      003150 0B                    3497 	.uleb128	11
      003151 05                    3498 	.db	5
      003152 03                    3499 	.db	3
      003153 00 00 00 81           3500 	.dw	0,(_P01)
      003157 50 30 31              3501 	.ascii "P01"
      00315A 00                    3502 	.db	0
      00315B 01                    3503 	.db	1
      00315C 00 00 0C 10           3504 	.dw	0,3088
      003160 0B                    3505 	.uleb128	11
      003161 05                    3506 	.db	5
      003162 03                    3507 	.db	3
      003163 00 00 00 81           3508 	.dw	0,(_MISO)
      003167 4D 49 53 4F           3509 	.ascii "MISO"
      00316B 00                    3510 	.db	0
      00316C 01                    3511 	.db	1
      00316D 00 00 0C 10           3512 	.dw	0,3088
      003171 0B                    3513 	.uleb128	11
      003172 05                    3514 	.db	5
      003173 03                    3515 	.db	3
      003174 00 00 00 80           3516 	.dw	0,(_P00)
      003178 50 30 30              3517 	.ascii "P00"
      00317B 00                    3518 	.db	0
      00317C 01                    3519 	.db	1
      00317D 00 00 0C 10           3520 	.dw	0,3088
      003181 0B                    3521 	.uleb128	11
      003182 05                    3522 	.db	5
      003183 03                    3523 	.db	3
      003184 00 00 00 80           3524 	.dw	0,(_MOSI)
      003188 4D 4F 53 49           3525 	.ascii "MOSI"
      00318C 00                    3526 	.db	0
      00318D 01                    3527 	.db	1
      00318E 00 00 0C 10           3528 	.dw	0,3088
      003192 00                    3529 	.uleb128	0
      003193                       3530 Ldebug_info_end:
                                   3531 
                                   3532 	.area .debug_pubnames (NOLOAD)
      000C3A 00 00 08 F4           3533 	.dw	0,Ldebug_pubnames_end-Ldebug_pubnames_start
      000C3E                       3534 Ldebug_pubnames_start:
      000C3E 00 02                 3535 	.dw	2
      000C40 00 00 1F 4B           3536 	.dw	0,(Ldebug_info_start-4)
      000C44 00 00 12 48           3537 	.dw	0,4+Ldebug_info_end-Ldebug_info_start
      000C48 00 00 00 B4           3538 	.dw	0,180
      000C4C 52 65 61 64 5F 41 50  3539 	.ascii "Read_APROM_BYTE"
             52 4F 4D 5F 42 59 54
             45
      000C5B 00                    3540 	.db	0
      000C5C 00 00 01 15           3541 	.dw	0,277
      000C60 53 6F 66 74 77 61 72  3542 	.ascii "Software_Reset"
             65 5F 52 65 73 65 74
      000C6E 00                    3543 	.db	0
      000C6F 00 00 01 5B           3544 	.dw	0,347
      000C73 50 6F 77 65 72 44 6F  3545 	.ascii "PowerDown_Mode"
             77 6E 5F 4D 6F 64 65
      000C81 00                    3546 	.db	0
      000C82 00 00 01 9A           3547 	.dw	0,410
      000C86 49 64 6C 65 5F 4D 6F  3548 	.ascii "Idle_Mode"
             64 65
      000C8F 00                    3549 	.db	0
      000C90 00 00 01 D6           3550 	.dw	0,470
      000C94 5F 64 65 6C 61 79 5F  3551 	.ascii "_delay_"
      000C9B 00                    3552 	.db	0
      000C9C 00 00 02 14           3553 	.dw	0,532
      000CA0 47 6C 6F 62 61 6C 5F  3554 	.ascii "Global_Interrupt"
             49 6E 74 65 72 72 75
             70 74
      000CB0 00                    3555 	.db	0
      000CB1 00 00 02 4F           3556 	.dw	0,591
      000CB5 54 41 5F 52 45 47 5F  3557 	.ascii "TA_REG_TMP"
             54 4D 50
      000CBF 00                    3558 	.db	0
      000CC0 00 00 02 66           3559 	.dw	0,614
      000CC4 42 59 54 45 5F 54 4D  3560 	.ascii "BYTE_TMP"
             50
      000CCC 00                    3561 	.db	0
      000CCD 00 00 02 7B           3562 	.dw	0,635
      000CD1 53 46 52 53 5F 54 4D  3563 	.ascii "SFRS_TMP"
             50
      000CD9 00                    3564 	.db	0
      000CDA 00 00 02 98           3565 	.dw	0,664
      000CDE 42 49 54 5F 54 4D 50  3566 	.ascii "BIT_TMP"
      000CE5 00                    3567 	.db	0
      000CE6 00 00 02 B1           3568 	.dw	0,689
      000CEA 50 30                 3569 	.ascii "P0"
      000CEC 00                    3570 	.db	0
      000CED 00 00 02 C0           3571 	.dw	0,704
      000CF1 53 50                 3572 	.ascii "SP"
      000CF3 00                    3573 	.db	0
      000CF4 00 00 02 CF           3574 	.dw	0,719
      000CF8 44 50 4C              3575 	.ascii "DPL"
      000CFB 00                    3576 	.db	0
      000CFC 00 00 02 DF           3577 	.dw	0,735
      000D00 44 50 48              3578 	.ascii "DPH"
      000D03 00                    3579 	.db	0
      000D04 00 00 02 EF           3580 	.dw	0,751
      000D08 52 43 54 52 49 4D 30  3581 	.ascii "RCTRIM0"
      000D0F 00                    3582 	.db	0
      000D10 00 00 03 03           3583 	.dw	0,771
      000D14 52 43 54 52 49 4D 31  3584 	.ascii "RCTRIM1"
      000D1B 00                    3585 	.db	0
      000D1C 00 00 03 17           3586 	.dw	0,791
      000D20 52 57 4B              3587 	.ascii "RWK"
      000D23 00                    3588 	.db	0
      000D24 00 00 03 27           3589 	.dw	0,807
      000D28 50 43 4F 4E           3590 	.ascii "PCON"
      000D2C 00                    3591 	.db	0
      000D2D 00 00 03 38           3592 	.dw	0,824
      000D31 54 43 4F 4E           3593 	.ascii "TCON"
      000D35 00                    3594 	.db	0
      000D36 00 00 03 49           3595 	.dw	0,841
      000D3A 54 4D 4F 44           3596 	.ascii "TMOD"
      000D3E 00                    3597 	.db	0
      000D3F 00 00 03 5A           3598 	.dw	0,858
      000D43 54 4C 30              3599 	.ascii "TL0"
      000D46 00                    3600 	.db	0
      000D47 00 00 03 6A           3601 	.dw	0,874
      000D4B 54 4C 31              3602 	.ascii "TL1"
      000D4E 00                    3603 	.db	0
      000D4F 00 00 03 7A           3604 	.dw	0,890
      000D53 54 48 30              3605 	.ascii "TH0"
      000D56 00                    3606 	.db	0
      000D57 00 00 03 8A           3607 	.dw	0,906
      000D5B 54 48 31              3608 	.ascii "TH1"
      000D5E 00                    3609 	.db	0
      000D5F 00 00 03 9A           3610 	.dw	0,922
      000D63 43 4B 43 4F 4E        3611 	.ascii "CKCON"
      000D68 00                    3612 	.db	0
      000D69 00 00 03 AC           3613 	.dw	0,940
      000D6D 57 4B 43 4F 4E        3614 	.ascii "WKCON"
      000D72 00                    3615 	.db	0
      000D73 00 00 03 BE           3616 	.dw	0,958
      000D77 50 31                 3617 	.ascii "P1"
      000D79 00                    3618 	.db	0
      000D7A 00 00 03 CD           3619 	.dw	0,973
      000D7E 53 46 52 53           3620 	.ascii "SFRS"
      000D82 00                    3621 	.db	0
      000D83 00 00 03 DE           3622 	.dw	0,990
      000D87 43 41 50 43 4F 4E 30  3623 	.ascii "CAPCON0"
      000D8E 00                    3624 	.db	0
      000D8F 00 00 03 F2           3625 	.dw	0,1010
      000D93 43 41 50 43 4F 4E 31  3626 	.ascii "CAPCON1"
      000D9A 00                    3627 	.db	0
      000D9B 00 00 04 06           3628 	.dw	0,1030
      000D9F 43 41 50 43 4F 4E 32  3629 	.ascii "CAPCON2"
      000DA6 00                    3630 	.db	0
      000DA7 00 00 04 1A           3631 	.dw	0,1050
      000DAB 43 4B 44 49 56        3632 	.ascii "CKDIV"
      000DB0 00                    3633 	.db	0
      000DB1 00 00 04 2C           3634 	.dw	0,1068
      000DB5 43 4B 53 57 54        3635 	.ascii "CKSWT"
      000DBA 00                    3636 	.db	0
      000DBB 00 00 04 3E           3637 	.dw	0,1086
      000DBF 43 4B 45 4E           3638 	.ascii "CKEN"
      000DC3 00                    3639 	.db	0
      000DC4 00 00 04 4F           3640 	.dw	0,1103
      000DC8 53 43 4F 4E           3641 	.ascii "SCON"
      000DCC 00                    3642 	.db	0
      000DCD 00 00 04 60           3643 	.dw	0,1120
      000DD1 53 42 55 46           3644 	.ascii "SBUF"
      000DD5 00                    3645 	.db	0
      000DD6 00 00 04 71           3646 	.dw	0,1137
      000DDA 53 42 55 46 5F 31     3647 	.ascii "SBUF_1"
      000DE0 00                    3648 	.db	0
      000DE1 00 00 04 84           3649 	.dw	0,1156
      000DE5 45 49 45              3650 	.ascii "EIE"
      000DE8 00                    3651 	.db	0
      000DE9 00 00 04 94           3652 	.dw	0,1172
      000DED 45 49 45 31           3653 	.ascii "EIE1"
      000DF1 00                    3654 	.db	0
      000DF2 00 00 04 A5           3655 	.dw	0,1189
      000DF6 43 48 50 43 4F 4E     3656 	.ascii "CHPCON"
      000DFC 00                    3657 	.db	0
      000DFD 00 00 04 B8           3658 	.dw	0,1208
      000E01 50 32                 3659 	.ascii "P2"
      000E03 00                    3660 	.db	0
      000E04 00 00 04 C7           3661 	.dw	0,1223
      000E08 41 55 58 52 31        3662 	.ascii "AUXR1"
      000E0D 00                    3663 	.db	0
      000E0E 00 00 04 D9           3664 	.dw	0,1241
      000E12 42 4F 44 43 4F 4E 30  3665 	.ascii "BODCON0"
      000E19 00                    3666 	.db	0
      000E1A 00 00 04 ED           3667 	.dw	0,1261
      000E1E 49 41 50 54 52 47     3668 	.ascii "IAPTRG"
      000E24 00                    3669 	.db	0
      000E25 00 00 05 00           3670 	.dw	0,1280
      000E29 49 41 50 55 45 4E     3671 	.ascii "IAPUEN"
      000E2F 00                    3672 	.db	0
      000E30 00 00 05 13           3673 	.dw	0,1299
      000E34 49 41 50 41 4C        3674 	.ascii "IAPAL"
      000E39 00                    3675 	.db	0
      000E3A 00 00 05 25           3676 	.dw	0,1317
      000E3E 49 41 50 41 48        3677 	.ascii "IAPAH"
      000E43 00                    3678 	.db	0
      000E44 00 00 05 37           3679 	.dw	0,1335
      000E48 49 45                 3680 	.ascii "IE"
      000E4A 00                    3681 	.db	0
      000E4B 00 00 05 46           3682 	.dw	0,1350
      000E4F 53 41 44 44 52        3683 	.ascii "SADDR"
      000E54 00                    3684 	.db	0
      000E55 00 00 05 58           3685 	.dw	0,1368
      000E59 57 44 43 4F 4E        3686 	.ascii "WDCON"
      000E5E 00                    3687 	.db	0
      000E5F 00 00 05 6A           3688 	.dw	0,1386
      000E63 42 4F 44 43 4F 4E 31  3689 	.ascii "BODCON1"
      000E6A 00                    3690 	.db	0
      000E6B 00 00 05 7E           3691 	.dw	0,1406
      000E6F 50 33 4D 31           3692 	.ascii "P3M1"
      000E73 00                    3693 	.db	0
      000E74 00 00 05 8F           3694 	.dw	0,1423
      000E78 50 33 53              3695 	.ascii "P3S"
      000E7B 00                    3696 	.db	0
      000E7C 00 00 05 9F           3697 	.dw	0,1439
      000E80 50 33 4D 32           3698 	.ascii "P3M2"
      000E84 00                    3699 	.db	0
      000E85 00 00 05 B0           3700 	.dw	0,1456
      000E89 50 33 53 52           3701 	.ascii "P3SR"
      000E8D 00                    3702 	.db	0
      000E8E 00 00 05 C1           3703 	.dw	0,1473
      000E92 49 41 50 46 44        3704 	.ascii "IAPFD"
      000E97 00                    3705 	.db	0
      000E98 00 00 05 D3           3706 	.dw	0,1491
      000E9C 49 41 50 43 4E        3707 	.ascii "IAPCN"
      000EA1 00                    3708 	.db	0
      000EA2 00 00 05 E5           3709 	.dw	0,1509
      000EA6 50 33                 3710 	.ascii "P3"
      000EA8 00                    3711 	.db	0
      000EA9 00 00 05 F4           3712 	.dw	0,1524
      000EAD 50 30 4D 31           3713 	.ascii "P0M1"
      000EB1 00                    3714 	.db	0
      000EB2 00 00 06 05           3715 	.dw	0,1541
      000EB6 50 30 53              3716 	.ascii "P0S"
      000EB9 00                    3717 	.db	0
      000EBA 00 00 06 15           3718 	.dw	0,1557
      000EBE 50 30 4D 32           3719 	.ascii "P0M2"
      000EC2 00                    3720 	.db	0
      000EC3 00 00 06 26           3721 	.dw	0,1574
      000EC7 50 30 53 52           3722 	.ascii "P0SR"
      000ECB 00                    3723 	.db	0
      000ECC 00 00 06 37           3724 	.dw	0,1591
      000ED0 50 31 4D 31           3725 	.ascii "P1M1"
      000ED4 00                    3726 	.db	0
      000ED5 00 00 06 48           3727 	.dw	0,1608
      000ED9 50 31 53              3728 	.ascii "P1S"
      000EDC 00                    3729 	.db	0
      000EDD 00 00 06 58           3730 	.dw	0,1624
      000EE1 50 31 4D 32           3731 	.ascii "P1M2"
      000EE5 00                    3732 	.db	0
      000EE6 00 00 06 69           3733 	.dw	0,1641
      000EEA 50 31 53 52           3734 	.ascii "P1SR"
      000EEE 00                    3735 	.db	0
      000EEF 00 00 06 7A           3736 	.dw	0,1658
      000EF3 50 32 53              3737 	.ascii "P2S"
      000EF6 00                    3738 	.db	0
      000EF7 00 00 06 8A           3739 	.dw	0,1674
      000EFB 49 50 48              3740 	.ascii "IPH"
      000EFE 00                    3741 	.db	0
      000EFF 00 00 06 9A           3742 	.dw	0,1690
      000F03 50 57 4D 49 4E 54 43  3743 	.ascii "PWMINTC"
      000F0A 00                    3744 	.db	0
      000F0B 00 00 06 AE           3745 	.dw	0,1710
      000F0F 49 50                 3746 	.ascii "IP"
      000F11 00                    3747 	.db	0
      000F12 00 00 06 BD           3748 	.dw	0,1725
      000F16 53 41 44 45 4E        3749 	.ascii "SADEN"
      000F1B 00                    3750 	.db	0
      000F1C 00 00 06 CF           3751 	.dw	0,1743
      000F20 53 41 44 45 4E 5F 31  3752 	.ascii "SADEN_1"
      000F27 00                    3753 	.db	0
      000F28 00 00 06 E3           3754 	.dw	0,1763
      000F2C 53 41 44 44 52 5F 31  3755 	.ascii "SADDR_1"
      000F33 00                    3756 	.db	0
      000F34 00 00 06 F7           3757 	.dw	0,1783
      000F38 49 32 44 41 54        3758 	.ascii "I2DAT"
      000F3D 00                    3759 	.db	0
      000F3E 00 00 07 09           3760 	.dw	0,1801
      000F42 49 32 53 54 41 54     3761 	.ascii "I2STAT"
      000F48 00                    3762 	.db	0
      000F49 00 00 07 1C           3763 	.dw	0,1820
      000F4D 49 32 43 4C 4B        3764 	.ascii "I2CLK"
      000F52 00                    3765 	.db	0
      000F53 00 00 07 2E           3766 	.dw	0,1838
      000F57 49 32 54 4F 43        3767 	.ascii "I2TOC"
      000F5C 00                    3768 	.db	0
      000F5D 00 00 07 40           3769 	.dw	0,1856
      000F61 49 32 43 4F 4E        3770 	.ascii "I2CON"
      000F66 00                    3771 	.db	0
      000F67 00 00 07 52           3772 	.dw	0,1874
      000F6B 49 32 41 44 44 52     3773 	.ascii "I2ADDR"
      000F71 00                    3774 	.db	0
      000F72 00 00 07 65           3775 	.dw	0,1893
      000F76 41 44 43 52 4C        3776 	.ascii "ADCRL"
      000F7B 00                    3777 	.db	0
      000F7C 00 00 07 77           3778 	.dw	0,1911
      000F80 41 44 43 52 48        3779 	.ascii "ADCRH"
      000F85 00                    3780 	.db	0
      000F86 00 00 07 89           3781 	.dw	0,1929
      000F8A 54 33 43 4F 4E        3782 	.ascii "T3CON"
      000F8F 00                    3783 	.db	0
      000F90 00 00 07 9B           3784 	.dw	0,1947
      000F94 50 57 4D 34 48        3785 	.ascii "PWM4H"
      000F99 00                    3786 	.db	0
      000F9A 00 00 07 AD           3787 	.dw	0,1965
      000F9E 52 4C 33              3788 	.ascii "RL3"
      000FA1 00                    3789 	.db	0
      000FA2 00 00 07 BD           3790 	.dw	0,1981
      000FA6 50 57 4D 35 48        3791 	.ascii "PWM5H"
      000FAB 00                    3792 	.db	0
      000FAC 00 00 07 CF           3793 	.dw	0,1999
      000FB0 52 48 33              3794 	.ascii "RH3"
      000FB3 00                    3795 	.db	0
      000FB4 00 00 07 DF           3796 	.dw	0,2015
      000FB8 50 49 4F 43 4F 4E 31  3797 	.ascii "PIOCON1"
      000FBF 00                    3798 	.db	0
      000FC0 00 00 07 F3           3799 	.dw	0,2035
      000FC4 54 41                 3800 	.ascii "TA"
      000FC6 00                    3801 	.db	0
      000FC7 00 00 08 02           3802 	.dw	0,2050
      000FCB 54 32 43 4F 4E        3803 	.ascii "T2CON"
      000FD0 00                    3804 	.db	0
      000FD1 00 00 08 14           3805 	.dw	0,2068
      000FD5 54 32 4D 4F 44        3806 	.ascii "T2MOD"
      000FDA 00                    3807 	.db	0
      000FDB 00 00 08 26           3808 	.dw	0,2086
      000FDF 52 43 4D 50 32 4C     3809 	.ascii "RCMP2L"
      000FE5 00                    3810 	.db	0
      000FE6 00 00 08 39           3811 	.dw	0,2105
      000FEA 52 43 4D 50 32 48     3812 	.ascii "RCMP2H"
      000FF0 00                    3813 	.db	0
      000FF1 00 00 08 4C           3814 	.dw	0,2124
      000FF5 54 4C 32              3815 	.ascii "TL2"
      000FF8 00                    3816 	.db	0
      000FF9 00 00 08 5C           3817 	.dw	0,2140
      000FFD 50 57 4D 34 4C        3818 	.ascii "PWM4L"
      001002 00                    3819 	.db	0
      001003 00 00 08 6E           3820 	.dw	0,2158
      001007 54 48 32              3821 	.ascii "TH2"
      00100A 00                    3822 	.db	0
      00100B 00 00 08 7E           3823 	.dw	0,2174
      00100F 50 57 4D 35 4C        3824 	.ascii "PWM5L"
      001014 00                    3825 	.db	0
      001015 00 00 08 90           3826 	.dw	0,2192
      001019 41 44 43 4D 50 4C     3827 	.ascii "ADCMPL"
      00101F 00                    3828 	.db	0
      001020 00 00 08 A3           3829 	.dw	0,2211
      001024 41 44 43 4D 50 48     3830 	.ascii "ADCMPH"
      00102A 00                    3831 	.db	0
      00102B 00 00 08 B6           3832 	.dw	0,2230
      00102F 50 53 57              3833 	.ascii "PSW"
      001032 00                    3834 	.db	0
      001033 00 00 08 C6           3835 	.dw	0,2246
      001037 50 57 4D 50 48        3836 	.ascii "PWMPH"
      00103C 00                    3837 	.db	0
      00103D 00 00 08 D8           3838 	.dw	0,2264
      001041 50 57 4D 30 48        3839 	.ascii "PWM0H"
      001046 00                    3840 	.db	0
      001047 00 00 08 EA           3841 	.dw	0,2282
      00104B 50 57 4D 31 48        3842 	.ascii "PWM1H"
      001050 00                    3843 	.db	0
      001051 00 00 08 FC           3844 	.dw	0,2300
      001055 50 57 4D 32 48        3845 	.ascii "PWM2H"
      00105A 00                    3846 	.db	0
      00105B 00 00 09 0E           3847 	.dw	0,2318
      00105F 50 57 4D 33 48        3848 	.ascii "PWM3H"
      001064 00                    3849 	.db	0
      001065 00 00 09 20           3850 	.dw	0,2336
      001069 50 4E 50              3851 	.ascii "PNP"
      00106C 00                    3852 	.db	0
      00106D 00 00 09 30           3853 	.dw	0,2352
      001071 46 42 44              3854 	.ascii "FBD"
      001074 00                    3855 	.db	0
      001075 00 00 09 40           3856 	.dw	0,2368
      001079 50 57 4D 43 4F 4E 30  3857 	.ascii "PWMCON0"
      001080 00                    3858 	.db	0
      001081 00 00 09 54           3859 	.dw	0,2388
      001085 50 57 4D 50 4C        3860 	.ascii "PWMPL"
      00108A 00                    3861 	.db	0
      00108B 00 00 09 66           3862 	.dw	0,2406
      00108F 50 57 4D 30 4C        3863 	.ascii "PWM0L"
      001094 00                    3864 	.db	0
      001095 00 00 09 78           3865 	.dw	0,2424
      001099 50 57 4D 31 4C        3866 	.ascii "PWM1L"
      00109E 00                    3867 	.db	0
      00109F 00 00 09 8A           3868 	.dw	0,2442
      0010A3 50 57 4D 32 4C        3869 	.ascii "PWM2L"
      0010A8 00                    3870 	.db	0
      0010A9 00 00 09 9C           3871 	.dw	0,2460
      0010AD 50 57 4D 33 4C        3872 	.ascii "PWM3L"
      0010B2 00                    3873 	.db	0
      0010B3 00 00 09 AE           3874 	.dw	0,2478
      0010B7 50 49 4F 43 4F 4E 30  3875 	.ascii "PIOCON0"
      0010BE 00                    3876 	.db	0
      0010BF 00 00 09 C2           3877 	.dw	0,2498
      0010C3 50 57 4D 43 4F 4E 31  3878 	.ascii "PWMCON1"
      0010CA 00                    3879 	.db	0
      0010CB 00 00 09 D6           3880 	.dw	0,2518
      0010CF 41 43 43              3881 	.ascii "ACC"
      0010D2 00                    3882 	.db	0
      0010D3 00 00 09 E6           3883 	.dw	0,2534
      0010D7 41 44 43 43 4F 4E 31  3884 	.ascii "ADCCON1"
      0010DE 00                    3885 	.db	0
      0010DF 00 00 09 FA           3886 	.dw	0,2554
      0010E3 41 44 43 43 4F 4E 32  3887 	.ascii "ADCCON2"
      0010EA 00                    3888 	.db	0
      0010EB 00 00 0A 0E           3889 	.dw	0,2574
      0010EF 41 44 43 44 4C 59     3890 	.ascii "ADCDLY"
      0010F5 00                    3891 	.db	0
      0010F6 00 00 0A 21           3892 	.dw	0,2593
      0010FA 43 30 4C              3893 	.ascii "C0L"
      0010FD 00                    3894 	.db	0
      0010FE 00 00 0A 31           3895 	.dw	0,2609
      001102 43 30 48              3896 	.ascii "C0H"
      001105 00                    3897 	.db	0
      001106 00 00 0A 41           3898 	.dw	0,2625
      00110A 43 31 4C              3899 	.ascii "C1L"
      00110D 00                    3900 	.db	0
      00110E 00 00 0A 51           3901 	.dw	0,2641
      001112 43 31 48              3902 	.ascii "C1H"
      001115 00                    3903 	.db	0
      001116 00 00 0A 61           3904 	.dw	0,2657
      00111A 41 44 43 43 4F 4E 30  3905 	.ascii "ADCCON0"
      001121 00                    3906 	.db	0
      001122 00 00 0A 75           3907 	.dw	0,2677
      001126 50 49 43 4F 4E        3908 	.ascii "PICON"
      00112B 00                    3909 	.db	0
      00112C 00 00 0A 87           3910 	.dw	0,2695
      001130 50 49 4E 45 4E        3911 	.ascii "PINEN"
      001135 00                    3912 	.db	0
      001136 00 00 0A 99           3913 	.dw	0,2713
      00113A 50 49 50 45 4E        3914 	.ascii "PIPEN"
      00113F 00                    3915 	.db	0
      001140 00 00 0A AB           3916 	.dw	0,2731
      001144 50 49 46              3917 	.ascii "PIF"
      001147 00                    3918 	.db	0
      001148 00 00 0A BB           3919 	.dw	0,2747
      00114C 43 32 4C              3920 	.ascii "C2L"
      00114F 00                    3921 	.db	0
      001150 00 00 0A CB           3922 	.dw	0,2763
      001154 43 32 48              3923 	.ascii "C2H"
      001157 00                    3924 	.db	0
      001158 00 00 0A DB           3925 	.dw	0,2779
      00115C 45 49 50              3926 	.ascii "EIP"
      00115F 00                    3927 	.db	0
      001160 00 00 0A EB           3928 	.dw	0,2795
      001164 42                    3929 	.ascii "B"
      001165 00                    3930 	.db	0
      001166 00 00 0A F9           3931 	.dw	0,2809
      00116A 43 41 50 43 4F 4E 33  3932 	.ascii "CAPCON3"
      001171 00                    3933 	.db	0
      001172 00 00 0B 0D           3934 	.dw	0,2829
      001176 43 41 50 43 4F 4E 34  3935 	.ascii "CAPCON4"
      00117D 00                    3936 	.db	0
      00117E 00 00 0B 21           3937 	.dw	0,2849
      001182 53 50 43 52           3938 	.ascii "SPCR"
      001186 00                    3939 	.db	0
      001187 00 00 0B 32           3940 	.dw	0,2866
      00118B 53 50 43 52 32        3941 	.ascii "SPCR2"
      001190 00                    3942 	.db	0
      001191 00 00 0B 44           3943 	.dw	0,2884
      001195 53 50 53 52           3944 	.ascii "SPSR"
      001199 00                    3945 	.db	0
      00119A 00 00 0B 55           3946 	.dw	0,2901
      00119E 53 50 44 52           3947 	.ascii "SPDR"
      0011A2 00                    3948 	.db	0
      0011A3 00 00 0B 66           3949 	.dw	0,2918
      0011A7 41 49 4E 44 49 44 53  3950 	.ascii "AINDIDS"
      0011AE 00                    3951 	.db	0
      0011AF 00 00 0B 7A           3952 	.dw	0,2938
      0011B3 45 49 50 48           3953 	.ascii "EIPH"
      0011B7 00                    3954 	.db	0
      0011B8 00 00 0B 8B           3955 	.dw	0,2955
      0011BC 53 43 4F 4E 5F 31     3956 	.ascii "SCON_1"
      0011C2 00                    3957 	.db	0
      0011C3 00 00 0B 9E           3958 	.dw	0,2974
      0011C7 50 44 54 45 4E        3959 	.ascii "PDTEN"
      0011CC 00                    3960 	.db	0
      0011CD 00 00 0B B0           3961 	.dw	0,2992
      0011D1 50 44 54 43 4E 54     3962 	.ascii "PDTCNT"
      0011D7 00                    3963 	.db	0
      0011D8 00 00 0B C3           3964 	.dw	0,3011
      0011DC 50 4D 45 4E           3965 	.ascii "PMEN"
      0011E0 00                    3966 	.db	0
      0011E1 00 00 0B D4           3967 	.dw	0,3028
      0011E5 50 4D 44              3968 	.ascii "PMD"
      0011E8 00                    3969 	.db	0
      0011E9 00 00 0B E4           3970 	.dw	0,3044
      0011ED 45 49 50 31           3971 	.ascii "EIP1"
      0011F1 00                    3972 	.db	0
      0011F2 00 00 0B F5           3973 	.dw	0,3061
      0011F6 45 49 50 48 31        3974 	.ascii "EIPH1"
      0011FB 00                    3975 	.db	0
      0011FC 00 00 0C 15           3976 	.dw	0,3093
      001200 53 4D 30 5F 31        3977 	.ascii "SM0_1"
      001205 00                    3978 	.db	0
      001206 00 00 0C 27           3979 	.dw	0,3111
      00120A 46 45 5F 31           3980 	.ascii "FE_1"
      00120E 00                    3981 	.db	0
      00120F 00 00 0C 38           3982 	.dw	0,3128
      001213 53 4D 31 5F 31        3983 	.ascii "SM1_1"
      001218 00                    3984 	.db	0
      001219 00 00 0C 4A           3985 	.dw	0,3146
      00121D 53 4D 32 5F 31        3986 	.ascii "SM2_1"
      001222 00                    3987 	.db	0
      001223 00 00 0C 5C           3988 	.dw	0,3164
      001227 52 45 4E 5F 31        3989 	.ascii "REN_1"
      00122C 00                    3990 	.db	0
      00122D 00 00 0C 6E           3991 	.dw	0,3182
      001231 54 42 38 5F 31        3992 	.ascii "TB8_1"
      001236 00                    3993 	.db	0
      001237 00 00 0C 80           3994 	.dw	0,3200
      00123B 52 42 38 5F 31        3995 	.ascii "RB8_1"
      001240 00                    3996 	.db	0
      001241 00 00 0C 92           3997 	.dw	0,3218
      001245 54 49 5F 31           3998 	.ascii "TI_1"
      001249 00                    3999 	.db	0
      00124A 00 00 0C A3           4000 	.dw	0,3235
      00124E 52 49 5F 31           4001 	.ascii "RI_1"
      001252 00                    4002 	.db	0
      001253 00 00 0C B4           4003 	.dw	0,3252
      001257 41 44 43 46           4004 	.ascii "ADCF"
      00125B 00                    4005 	.db	0
      00125C 00 00 0C C5           4006 	.dw	0,3269
      001260 41 44 43 53           4007 	.ascii "ADCS"
      001264 00                    4008 	.db	0
      001265 00 00 0C D6           4009 	.dw	0,3286
      001269 45 54 47 53 45 4C 31  4010 	.ascii "ETGSEL1"
      001270 00                    4011 	.db	0
      001271 00 00 0C EA           4012 	.dw	0,3306
      001275 45 54 47 53 45 4C 30  4013 	.ascii "ETGSEL0"
      00127C 00                    4014 	.db	0
      00127D 00 00 0C FE           4015 	.dw	0,3326
      001281 41 44 43 48 53 33     4016 	.ascii "ADCHS3"
      001287 00                    4017 	.db	0
      001288 00 00 0D 11           4018 	.dw	0,3345
      00128C 41 44 43 48 53 32     4019 	.ascii "ADCHS2"
      001292 00                    4020 	.db	0
      001293 00 00 0D 24           4021 	.dw	0,3364
      001297 41 44 43 48 53 31     4022 	.ascii "ADCHS1"
      00129D 00                    4023 	.db	0
      00129E 00 00 0D 37           4024 	.dw	0,3383
      0012A2 41 44 43 48 53 30     4025 	.ascii "ADCHS0"
      0012A8 00                    4026 	.db	0
      0012A9 00 00 0D 4A           4027 	.dw	0,3402
      0012AD 50 57 4D 52 55 4E     4028 	.ascii "PWMRUN"
      0012B3 00                    4029 	.db	0
      0012B4 00 00 0D 5D           4030 	.dw	0,3421
      0012B8 4C 4F 41 44           4031 	.ascii "LOAD"
      0012BC 00                    4032 	.db	0
      0012BD 00 00 0D 6E           4033 	.dw	0,3438
      0012C1 50 57 4D 46           4034 	.ascii "PWMF"
      0012C5 00                    4035 	.db	0
      0012C6 00 00 0D 7F           4036 	.dw	0,3455
      0012CA 43 4C 52 50 57 4D     4037 	.ascii "CLRPWM"
      0012D0 00                    4038 	.db	0
      0012D1 00 00 0D 92           4039 	.dw	0,3474
      0012D5 43 59                 4040 	.ascii "CY"
      0012D7 00                    4041 	.db	0
      0012D8 00 00 0D A1           4042 	.dw	0,3489
      0012DC 41 43                 4043 	.ascii "AC"
      0012DE 00                    4044 	.db	0
      0012DF 00 00 0D B0           4045 	.dw	0,3504
      0012E3 46 30                 4046 	.ascii "F0"
      0012E5 00                    4047 	.db	0
      0012E6 00 00 0D BF           4048 	.dw	0,3519
      0012EA 52 53 31              4049 	.ascii "RS1"
      0012ED 00                    4050 	.db	0
      0012EE 00 00 0D CF           4051 	.dw	0,3535
      0012F2 52 53 30              4052 	.ascii "RS0"
      0012F5 00                    4053 	.db	0
      0012F6 00 00 0D DF           4054 	.dw	0,3551
      0012FA 4F 56                 4055 	.ascii "OV"
      0012FC 00                    4056 	.db	0
      0012FD 00 00 0D EE           4057 	.dw	0,3566
      001301 50                    4058 	.ascii "P"
      001302 00                    4059 	.db	0
      001303 00 00 0D FC           4060 	.dw	0,3580
      001307 54 46 32              4061 	.ascii "TF2"
      00130A 00                    4062 	.db	0
      00130B 00 00 0E 0C           4063 	.dw	0,3596
      00130F 54 52 32              4064 	.ascii "TR2"
      001312 00                    4065 	.db	0
      001313 00 00 0E 1C           4066 	.dw	0,3612
      001317 43 4D 5F 52 4C 32     4067 	.ascii "CM_RL2"
      00131D 00                    4068 	.db	0
      00131E 00 00 0E 2F           4069 	.dw	0,3631
      001322 49 32 43 45 4E        4070 	.ascii "I2CEN"
      001327 00                    4071 	.db	0
      001328 00 00 0E 41           4072 	.dw	0,3649
      00132C 53 54 41              4073 	.ascii "STA"
      00132F 00                    4074 	.db	0
      001330 00 00 0E 51           4075 	.dw	0,3665
      001334 53 54 4F              4076 	.ascii "STO"
      001337 00                    4077 	.db	0
      001338 00 00 0E 61           4078 	.dw	0,3681
      00133C 53 49                 4079 	.ascii "SI"
      00133E 00                    4080 	.db	0
      00133F 00 00 0E 70           4081 	.dw	0,3696
      001343 41 41                 4082 	.ascii "AA"
      001345 00                    4083 	.db	0
      001346 00 00 0E 7F           4084 	.dw	0,3711
      00134A 49 32 43 50 58        4085 	.ascii "I2CPX"
      00134F 00                    4086 	.db	0
      001350 00 00 0E 91           4087 	.dw	0,3729
      001354 50 41 44 43           4088 	.ascii "PADC"
      001358 00                    4089 	.db	0
      001359 00 00 0E A2           4090 	.dw	0,3746
      00135D 50 42 4F 44           4091 	.ascii "PBOD"
      001361 00                    4092 	.db	0
      001362 00 00 0E B3           4093 	.dw	0,3763
      001366 50 53                 4094 	.ascii "PS"
      001368 00                    4095 	.db	0
      001369 00 00 0E C2           4096 	.dw	0,3778
      00136D 50 54 31              4097 	.ascii "PT1"
      001370 00                    4098 	.db	0
      001371 00 00 0E D2           4099 	.dw	0,3794
      001375 50 58 31              4100 	.ascii "PX1"
      001378 00                    4101 	.db	0
      001379 00 00 0E E2           4102 	.dw	0,3810
      00137D 50 54 30              4103 	.ascii "PT0"
      001380 00                    4104 	.db	0
      001381 00 00 0E F2           4105 	.dw	0,3826
      001385 50 58 30              4106 	.ascii "PX0"
      001388 00                    4107 	.db	0
      001389 00 00 0F 02           4108 	.dw	0,3842
      00138D 50 33 30              4109 	.ascii "P30"
      001390 00                    4110 	.db	0
      001391 00 00 0F 12           4111 	.dw	0,3858
      001395 45 41                 4112 	.ascii "EA"
      001397 00                    4113 	.db	0
      001398 00 00 0F 21           4114 	.dw	0,3873
      00139C 45 41 44 43           4115 	.ascii "EADC"
      0013A0 00                    4116 	.db	0
      0013A1 00 00 0F 32           4117 	.dw	0,3890
      0013A5 45 42 4F 44           4118 	.ascii "EBOD"
      0013A9 00                    4119 	.db	0
      0013AA 00 00 0F 43           4120 	.dw	0,3907
      0013AE 45 53                 4121 	.ascii "ES"
      0013B0 00                    4122 	.db	0
      0013B1 00 00 0F 52           4123 	.dw	0,3922
      0013B5 45 54 31              4124 	.ascii "ET1"
      0013B8 00                    4125 	.db	0
      0013B9 00 00 0F 62           4126 	.dw	0,3938
      0013BD 45 58 31              4127 	.ascii "EX1"
      0013C0 00                    4128 	.db	0
      0013C1 00 00 0F 72           4129 	.dw	0,3954
      0013C5 45 54 30              4130 	.ascii "ET0"
      0013C8 00                    4131 	.db	0
      0013C9 00 00 0F 82           4132 	.dw	0,3970
      0013CD 45 58 30              4133 	.ascii "EX0"
      0013D0 00                    4134 	.db	0
      0013D1 00 00 0F 92           4135 	.dw	0,3986
      0013D5 50 32 30              4136 	.ascii "P20"
      0013D8 00                    4137 	.db	0
      0013D9 00 00 0F A2           4138 	.dw	0,4002
      0013DD 53 4D 30              4139 	.ascii "SM0"
      0013E0 00                    4140 	.db	0
      0013E1 00 00 0F B2           4141 	.dw	0,4018
      0013E5 46 45                 4142 	.ascii "FE"
      0013E7 00                    4143 	.db	0
      0013E8 00 00 0F C1           4144 	.dw	0,4033
      0013EC 53 4D 31              4145 	.ascii "SM1"
      0013EF 00                    4146 	.db	0
      0013F0 00 00 0F D1           4147 	.dw	0,4049
      0013F4 53 4D 32              4148 	.ascii "SM2"
      0013F7 00                    4149 	.db	0
      0013F8 00 00 0F E1           4150 	.dw	0,4065
      0013FC 52 45 4E              4151 	.ascii "REN"
      0013FF 00                    4152 	.db	0
      001400 00 00 0F F1           4153 	.dw	0,4081
      001404 54 42 38              4154 	.ascii "TB8"
      001407 00                    4155 	.db	0
      001408 00 00 10 01           4156 	.dw	0,4097
      00140C 52 42 38              4157 	.ascii "RB8"
      00140F 00                    4158 	.db	0
      001410 00 00 10 11           4159 	.dw	0,4113
      001414 54 49                 4160 	.ascii "TI"
      001416 00                    4161 	.db	0
      001417 00 00 10 20           4162 	.dw	0,4128
      00141B 52 49                 4163 	.ascii "RI"
      00141D 00                    4164 	.db	0
      00141E 00 00 10 2F           4165 	.dw	0,4143
      001422 50 31 37              4166 	.ascii "P17"
      001425 00                    4167 	.db	0
      001426 00 00 10 3F           4168 	.dw	0,4159
      00142A 50 31 36              4169 	.ascii "P16"
      00142D 00                    4170 	.db	0
      00142E 00 00 10 4F           4171 	.dw	0,4175
      001432 54 58 44 5F 31        4172 	.ascii "TXD_1"
      001437 00                    4173 	.db	0
      001438 00 00 10 61           4174 	.dw	0,4193
      00143C 50 31 35              4175 	.ascii "P15"
      00143F 00                    4176 	.db	0
      001440 00 00 10 71           4177 	.dw	0,4209
      001444 50 31 34              4178 	.ascii "P14"
      001447 00                    4179 	.db	0
      001448 00 00 10 81           4180 	.dw	0,4225
      00144C 53 44 41              4181 	.ascii "SDA"
      00144F 00                    4182 	.db	0
      001450 00 00 10 91           4183 	.dw	0,4241
      001454 50 31 33              4184 	.ascii "P13"
      001457 00                    4185 	.db	0
      001458 00 00 10 A1           4186 	.dw	0,4257
      00145C 53 43 4C              4187 	.ascii "SCL"
      00145F 00                    4188 	.db	0
      001460 00 00 10 B1           4189 	.dw	0,4273
      001464 50 31 32              4190 	.ascii "P12"
      001467 00                    4191 	.db	0
      001468 00 00 10 C1           4192 	.dw	0,4289
      00146C 50 31 31              4193 	.ascii "P11"
      00146F 00                    4194 	.db	0
      001470 00 00 10 D1           4195 	.dw	0,4305
      001474 50 31 30              4196 	.ascii "P10"
      001477 00                    4197 	.db	0
      001478 00 00 10 E1           4198 	.dw	0,4321
      00147C 54 46 31              4199 	.ascii "TF1"
      00147F 00                    4200 	.db	0
      001480 00 00 10 F1           4201 	.dw	0,4337
      001484 54 52 31              4202 	.ascii "TR1"
      001487 00                    4203 	.db	0
      001488 00 00 11 01           4204 	.dw	0,4353
      00148C 54 46 30              4205 	.ascii "TF0"
      00148F 00                    4206 	.db	0
      001490 00 00 11 11           4207 	.dw	0,4369
      001494 54 52 30              4208 	.ascii "TR0"
      001497 00                    4209 	.db	0
      001498 00 00 11 21           4210 	.dw	0,4385
      00149C 49 45 31              4211 	.ascii "IE1"
      00149F 00                    4212 	.db	0
      0014A0 00 00 11 31           4213 	.dw	0,4401
      0014A4 49 54 31              4214 	.ascii "IT1"
      0014A7 00                    4215 	.db	0
      0014A8 00 00 11 41           4216 	.dw	0,4417
      0014AC 49 45 30              4217 	.ascii "IE0"
      0014AF 00                    4218 	.db	0
      0014B0 00 00 11 51           4219 	.dw	0,4433
      0014B4 49 54 30              4220 	.ascii "IT0"
      0014B7 00                    4221 	.db	0
      0014B8 00 00 11 61           4222 	.dw	0,4449
      0014BC 50 30 37              4223 	.ascii "P07"
      0014BF 00                    4224 	.db	0
      0014C0 00 00 11 71           4225 	.dw	0,4465
      0014C4 52 58 44              4226 	.ascii "RXD"
      0014C7 00                    4227 	.db	0
      0014C8 00 00 11 81           4228 	.dw	0,4481
      0014CC 50 30 36              4229 	.ascii "P06"
      0014CF 00                    4230 	.db	0
      0014D0 00 00 11 91           4231 	.dw	0,4497
      0014D4 54 58 44              4232 	.ascii "TXD"
      0014D7 00                    4233 	.db	0
      0014D8 00 00 11 A1           4234 	.dw	0,4513
      0014DC 50 30 35              4235 	.ascii "P05"
      0014DF 00                    4236 	.db	0
      0014E0 00 00 11 B1           4237 	.dw	0,4529
      0014E4 50 30 34              4238 	.ascii "P04"
      0014E7 00                    4239 	.db	0
      0014E8 00 00 11 C1           4240 	.dw	0,4545
      0014EC 53 54 41 44 43        4241 	.ascii "STADC"
      0014F1 00                    4242 	.db	0
      0014F2 00 00 11 D3           4243 	.dw	0,4563
      0014F6 50 30 33              4244 	.ascii "P03"
      0014F9 00                    4245 	.db	0
      0014FA 00 00 11 E3           4246 	.dw	0,4579
      0014FE 50 30 32              4247 	.ascii "P02"
      001501 00                    4248 	.db	0
      001502 00 00 11 F3           4249 	.dw	0,4595
      001506 52 58 44 5F 31        4250 	.ascii "RXD_1"
      00150B 00                    4251 	.db	0
      00150C 00 00 12 05           4252 	.dw	0,4613
      001510 50 30 31              4253 	.ascii "P01"
      001513 00                    4254 	.db	0
      001514 00 00 12 15           4255 	.dw	0,4629
      001518 4D 49 53 4F           4256 	.ascii "MISO"
      00151C 00                    4257 	.db	0
      00151D 00 00 12 26           4258 	.dw	0,4646
      001521 50 30 30              4259 	.ascii "P00"
      001524 00                    4260 	.db	0
      001525 00 00 12 36           4261 	.dw	0,4662
      001529 4D 4F 53 49           4262 	.ascii "MOSI"
      00152D 00                    4263 	.db	0
      00152E 00 00 00 00           4264 	.dw	0,0
      001532                       4265 Ldebug_pubnames_end:
                                   4266 
                                   4267 	.area .debug_frame (NOLOAD)
      000528 00 00                 4268 	.dw	0
      00052A 00 10                 4269 	.dw	Ldebug_CIE0_end-Ldebug_CIE0_start
      00052C                       4270 Ldebug_CIE0_start:
      00052C FF FF                 4271 	.dw	0xffff
      00052E FF FF                 4272 	.dw	0xffff
      000530 01                    4273 	.db	1
      000531 00                    4274 	.db	0
      000532 01                    4275 	.uleb128	1
      000533 01                    4276 	.sleb128	1
      000534 09                    4277 	.db	9
      000535 0C                    4278 	.db	12
      000536 16                    4279 	.uleb128	22
      000537 02                    4280 	.uleb128	2
      000538 89                    4281 	.db	137
      000539 01                    4282 	.uleb128	1
      00053A 00                    4283 	.db	0
      00053B 00                    4284 	.db	0
      00053C                       4285 Ldebug_CIE0_end:
      00053C 00 00 00 14           4286 	.dw	0,20
      000540 00 00 05 28           4287 	.dw	0,(Ldebug_CIE0_start-4)
      000544 00 00 14 D7           4288 	.dw	0,(Scommon$Global_Interrupt$52)	;initial loc
      000548 00 00 00 0C           4289 	.dw	0,Scommon$Global_Interrupt$56-Scommon$Global_Interrupt$52
      00054C 01                    4290 	.db	1
      00054D 00 00 14 D7           4291 	.dw	0,(Scommon$Global_Interrupt$52)
      000551 0E                    4292 	.db	14
      000552 02                    4293 	.uleb128	2
      000553 00                    4294 	.db	0
                                   4295 
                                   4296 	.area .debug_frame (NOLOAD)
      000554 00 00                 4297 	.dw	0
      000556 00 10                 4298 	.dw	Ldebug_CIE1_end-Ldebug_CIE1_start
      000558                       4299 Ldebug_CIE1_start:
      000558 FF FF                 4300 	.dw	0xffff
      00055A FF FF                 4301 	.dw	0xffff
      00055C 01                    4302 	.db	1
      00055D 00                    4303 	.db	0
      00055E 01                    4304 	.uleb128	1
      00055F 01                    4305 	.sleb128	1
      000560 09                    4306 	.db	9
      000561 0C                    4307 	.db	12
      000562 16                    4308 	.uleb128	22
      000563 02                    4309 	.uleb128	2
      000564 89                    4310 	.db	137
      000565 01                    4311 	.uleb128	1
      000566 00                    4312 	.db	0
      000567 00                    4313 	.db	0
      000568                       4314 Ldebug_CIE1_end:
      000568 00 00 00 14           4315 	.dw	0,20
      00056C 00 00 05 54           4316 	.dw	0,(Ldebug_CIE1_start-4)
      000570 00 00 14 C9           4317 	.dw	0,(Scommon$_delay_$39)	;initial loc
      000574 00 00 00 0E           4318 	.dw	0,Scommon$_delay_$50-Scommon$_delay_$39
      000578 01                    4319 	.db	1
      000579 00 00 14 C9           4320 	.dw	0,(Scommon$_delay_$39)
      00057D 0E                    4321 	.db	14
      00057E 02                    4322 	.uleb128	2
      00057F 00                    4323 	.db	0
                                   4324 
                                   4325 	.area .debug_frame (NOLOAD)
      000580 00 00                 4326 	.dw	0
      000582 00 10                 4327 	.dw	Ldebug_CIE2_end-Ldebug_CIE2_start
      000584                       4328 Ldebug_CIE2_start:
      000584 FF FF                 4329 	.dw	0xffff
      000586 FF FF                 4330 	.dw	0xffff
      000588 01                    4331 	.db	1
      000589 00                    4332 	.db	0
      00058A 01                    4333 	.uleb128	1
      00058B 01                    4334 	.sleb128	1
      00058C 09                    4335 	.db	9
      00058D 0C                    4336 	.db	12
      00058E 16                    4337 	.uleb128	22
      00058F 02                    4338 	.uleb128	2
      000590 89                    4339 	.db	137
      000591 01                    4340 	.uleb128	1
      000592 00                    4341 	.db	0
      000593 00                    4342 	.db	0
      000594                       4343 Ldebug_CIE2_end:
      000594 00 00 00 14           4344 	.dw	0,20
      000598 00 00 05 80           4345 	.dw	0,(Ldebug_CIE2_start-4)
      00059C 00 00 14 BA           4346 	.dw	0,(Scommon$Idle_Mode$28)	;initial loc
      0005A0 00 00 00 0F           4347 	.dw	0,Scommon$Idle_Mode$37-Scommon$Idle_Mode$28
      0005A4 01                    4348 	.db	1
      0005A5 00 00 14 BA           4349 	.dw	0,(Scommon$Idle_Mode$28)
      0005A9 0E                    4350 	.db	14
      0005AA 02                    4351 	.uleb128	2
      0005AB 00                    4352 	.db	0
                                   4353 
                                   4354 	.area .debug_frame (NOLOAD)
      0005AC 00 00                 4355 	.dw	0
      0005AE 00 10                 4356 	.dw	Ldebug_CIE3_end-Ldebug_CIE3_start
      0005B0                       4357 Ldebug_CIE3_start:
      0005B0 FF FF                 4358 	.dw	0xffff
      0005B2 FF FF                 4359 	.dw	0xffff
      0005B4 01                    4360 	.db	1
      0005B5 00                    4361 	.db	0
      0005B6 01                    4362 	.uleb128	1
      0005B7 01                    4363 	.sleb128	1
      0005B8 09                    4364 	.db	9
      0005B9 0C                    4365 	.db	12
      0005BA 16                    4366 	.uleb128	22
      0005BB 02                    4367 	.uleb128	2
      0005BC 89                    4368 	.db	137
      0005BD 01                    4369 	.uleb128	1
      0005BE 00                    4370 	.db	0
      0005BF 00                    4371 	.db	0
      0005C0                       4372 Ldebug_CIE3_end:
      0005C0 00 00 00 14           4373 	.dw	0,20
      0005C4 00 00 05 AC           4374 	.dw	0,(Ldebug_CIE3_start-4)
      0005C8 00 00 14 AB           4375 	.dw	0,(Scommon$PowerDown_Mode$17)	;initial loc
      0005CC 00 00 00 0F           4376 	.dw	0,Scommon$PowerDown_Mode$26-Scommon$PowerDown_Mode$17
      0005D0 01                    4377 	.db	1
      0005D1 00 00 14 AB           4378 	.dw	0,(Scommon$PowerDown_Mode$17)
      0005D5 0E                    4379 	.db	14
      0005D6 02                    4380 	.uleb128	2
      0005D7 00                    4381 	.db	0
                                   4382 
                                   4383 	.area .debug_frame (NOLOAD)
      0005D8 00 00                 4384 	.dw	0
      0005DA 00 10                 4385 	.dw	Ldebug_CIE4_end-Ldebug_CIE4_start
      0005DC                       4386 Ldebug_CIE4_start:
      0005DC FF FF                 4387 	.dw	0xffff
      0005DE FF FF                 4388 	.dw	0xffff
      0005E0 01                    4389 	.db	1
      0005E1 00                    4390 	.db	0
      0005E2 01                    4391 	.uleb128	1
      0005E3 01                    4392 	.sleb128	1
      0005E4 09                    4393 	.db	9
      0005E5 0C                    4394 	.db	12
      0005E6 16                    4395 	.uleb128	22
      0005E7 02                    4396 	.uleb128	2
      0005E8 89                    4397 	.db	137
      0005E9 01                    4398 	.uleb128	1
      0005EA 00                    4399 	.db	0
      0005EB 00                    4400 	.db	0
      0005EC                       4401 Ldebug_CIE4_end:
      0005EC 00 00 00 14           4402 	.dw	0,20
      0005F0 00 00 05 D8           4403 	.dw	0,(Ldebug_CIE4_start-4)
      0005F4 00 00 14 98           4404 	.dw	0,(Scommon$Software_Reset$8)	;initial loc
      0005F8 00 00 00 13           4405 	.dw	0,Scommon$Software_Reset$15-Scommon$Software_Reset$8
      0005FC 01                    4406 	.db	1
      0005FD 00 00 14 98           4407 	.dw	0,(Scommon$Software_Reset$8)
      000601 0E                    4408 	.db	14
      000602 02                    4409 	.uleb128	2
      000603 00                    4410 	.db	0
                                   4411 
                                   4412 	.area .debug_frame (NOLOAD)
      000604 00 00                 4413 	.dw	0
      000606 00 10                 4414 	.dw	Ldebug_CIE5_end-Ldebug_CIE5_start
      000608                       4415 Ldebug_CIE5_start:
      000608 FF FF                 4416 	.dw	0xffff
      00060A FF FF                 4417 	.dw	0xffff
      00060C 01                    4418 	.db	1
      00060D 00                    4419 	.db	0
      00060E 01                    4420 	.uleb128	1
      00060F 01                    4421 	.sleb128	1
      000610 09                    4422 	.db	9
      000611 0C                    4423 	.db	12
      000612 16                    4424 	.uleb128	22
      000613 02                    4425 	.uleb128	2
      000614 89                    4426 	.db	137
      000615 01                    4427 	.uleb128	1
      000616 00                    4428 	.db	0
      000617 00                    4429 	.db	0
      000618                       4430 Ldebug_CIE5_end:
      000618 00 00 00 14           4431 	.dw	0,20
      00061C 00 00 06 04           4432 	.dw	0,(Ldebug_CIE5_start-4)
      000620 00 00 14 79           4433 	.dw	0,(Scommon$Read_APROM_BYTE$1)	;initial loc
      000624 00 00 00 1F           4434 	.dw	0,Scommon$Read_APROM_BYTE$6-Scommon$Read_APROM_BYTE$1
      000628 01                    4435 	.db	1
      000629 00 00 14 79           4436 	.dw	0,(Scommon$Read_APROM_BYTE$1)
      00062D 0E                    4437 	.db	14
      00062E 02                    4438 	.uleb128	2
      00062F 00                    4439 	.db	0
