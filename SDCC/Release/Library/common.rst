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
      000026                        737 _TA_REG_TMP::
      000026                        738 	.ds 1
                           000001   739 G$BYTE_TMP$0_0$0==.
      000027                        740 _BYTE_TMP::
      000027                        741 	.ds 1
                           000002   742 G$SFRS_TMP$0_0$0==.
      000028                        743 _SFRS_TMP::
      000028                        744 	.ds 1
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
      000022                        777 _Read_APROM_BYTE_u16_addr_65536_145:
      000022                        778 	.ds 2
                           000002   779 Lcommon.Software_Reset$u8Bootarea$1_0$147==.
      000024                        780 _Software_Reset_u8Bootarea_65536_147:
      000024                        781 	.ds 1
                           000003   782 Lcommon.PowerDown_Mode$PDStatus$1_0$149==.
      000025                        783 _PowerDown_Mode_PDStatus_65536_149:
      000025                        784 	.ds 1
                           000004   785 Lcommon.Idle_Mode$IdleStatus$1_0$152==.
      000026                        786 _Idle_Mode_IdleStatus_65536_152:
      000026                        787 	.ds 1
                           000005   788 Lcommon.Global_Interrupt$u8IntStatus$1_0$161==.
      000027                        789 _Global_Interrupt_u8IntStatus_65536_161:
      000027                        790 	.ds 1
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
      00117D                        836 _Read_APROM_BYTE:
                           000007   837 	ar7 = 0x07
                           000006   838 	ar6 = 0x06
                           000005   839 	ar5 = 0x05
                           000004   840 	ar4 = 0x04
                           000003   841 	ar3 = 0x03
                           000002   842 	ar2 = 0x02
                           000001   843 	ar1 = 0x01
                           000000   844 	ar0 = 0x00
                           000000   845 	Scommon$Read_APROM_BYTE$1 ==.
      00117D AF 83            [24]  846 	mov	r7,dph
      00117F E5 82            [12]  847 	mov	a,dpl
      001181 90 00 22         [24]  848 	mov	dptr,#_Read_APROM_BYTE_u16_addr_65536_145
      001184 F0               [24]  849 	movx	@dptr,a
      001185 EF               [12]  850 	mov	a,r7
      001186 A3               [24]  851 	inc	dptr
      001187 F0               [24]  852 	movx	@dptr,a
                           00000B   853 	Scommon$Read_APROM_BYTE$2 ==.
                                    854 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/common.c:39: rdata = *u16_addr >> 8;
      001188 90 00 22         [24]  855 	mov	dptr,#_Read_APROM_BYTE_u16_addr_65536_145
      00118B E0               [24]  856 	movx	a,@dptr
      00118C FE               [12]  857 	mov	r6,a
      00118D A3               [24]  858 	inc	dptr
      00118E E0               [24]  859 	movx	a,@dptr
      00118F FF               [12]  860 	mov	r7,a
      001190 8E 82            [24]  861 	mov	dpl,r6
      001192 8F 83            [24]  862 	mov	dph,r7
      001194 E4               [12]  863 	clr	a
      001195 93               [24]  864 	movc	a,@a+dptr
      001196 A3               [24]  865 	inc	dptr
      001197 E4               [12]  866 	clr	a
      001198 93               [24]  867 	movc	a,@a+dptr
                           00001C   868 	Scommon$Read_APROM_BYTE$3 ==.
                                    869 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/common.c:40: return rdata;
                           00001C   870 	Scommon$Read_APROM_BYTE$4 ==.
                                    871 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/common.c:41: }
                           00001C   872 	Scommon$Read_APROM_BYTE$5 ==.
                           00001C   873 	XG$Read_APROM_BYTE$0$0 ==.
      001199 F5 82            [12]  874 	mov	dpl,a
      00119B 22               [24]  875 	ret
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
      00119C                        888 _Software_Reset:
                           00001F   889 	Scommon$Software_Reset$8 ==.
      00119C E5 82            [12]  890 	mov	a,dpl
      00119E 90 00 24         [24]  891 	mov	dptr,#_Software_Reset_u8Bootarea_65536_147
      0011A1 F0               [24]  892 	movx	@dptr,a
                           000025   893 	Scommon$Software_Reset$9 ==.
                                    894 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/common.c:55: boottemp = (0x80|u8Bootarea);
      0011A2 E0               [24]  895 	movx	a,@dptr
      0011A3 44 80            [12]  896 	orl	a,#0x80
      0011A5 FF               [12]  897 	mov	r7,a
                           000029   898 	Scommon$Software_Reset$10 ==.
                                    899 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/common.c:56: TA = 0xAA;
      0011A6 75 C7 AA         [24]  900 	mov	_TA,#0xaa
                           00002C   901 	Scommon$Software_Reset$11 ==.
                                    902 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/common.c:57: TA = 0x55;
      0011A9 75 C7 55         [24]  903 	mov	_TA,#0x55
                           00002F   904 	Scommon$Software_Reset$12 ==.
                                    905 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/common.c:58: CHPCON = boottemp;                   //software reset enable
      0011AC 8F 9F            [24]  906 	mov	_CHPCON,r7
                           000031   907 	Scommon$Software_Reset$13 ==.
                                    908 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/common.c:59: }
                           000031   909 	Scommon$Software_Reset$14 ==.
                           000031   910 	XG$Software_Reset$0$0 ==.
      0011AE 22               [24]  911 	ret
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
      0011AF                        923 _PowerDown_Mode:
                           000032   924 	Scommon$PowerDown_Mode$17 ==.
      0011AF E5 82            [12]  925 	mov	a,dpl
      0011B1 90 00 25         [24]  926 	mov	dptr,#_PowerDown_Mode_PDStatus_65536_149
      0011B4 F0               [24]  927 	movx	@dptr,a
                           000038   928 	Scommon$PowerDown_Mode$18 ==.
                                    929 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/common.c:70: if (PDStatus)
      0011B5 E0               [24]  930 	movx	a,@dptr
      0011B6 60 05            [24]  931 	jz	00103$
                           00003B   932 	Scommon$PowerDown_Mode$19 ==.
                           00003B   933 	Scommon$PowerDown_Mode$20 ==.
                                    934 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/common.c:72: ENABLE_POWERDOWN_MODE;
      0011B8 43 87 02         [24]  935 	orl	_PCON,#0x02
                           00003E   936 	Scommon$PowerDown_Mode$21 ==.
                                    937 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/common.c:73: CALL_NOP;
      0011BB 00               [12]  938 	nop;
                           00003F   939 	Scommon$PowerDown_Mode$22 ==.
                                    940 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/common.c:74: CALL_NOP;
      0011BC 00               [12]  941 	nop;
                           000040   942 	Scommon$PowerDown_Mode$23 ==.
      0011BD                        943 00103$:
                           000040   944 	Scommon$PowerDown_Mode$24 ==.
                                    945 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/common.c:76: }
                           000040   946 	Scommon$PowerDown_Mode$25 ==.
                           000040   947 	XG$PowerDown_Mode$0$0 ==.
      0011BD 22               [24]  948 	ret
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
      0011BE                        960 _Idle_Mode:
                           000041   961 	Scommon$Idle_Mode$28 ==.
      0011BE E5 82            [12]  962 	mov	a,dpl
      0011C0 90 00 26         [24]  963 	mov	dptr,#_Idle_Mode_IdleStatus_65536_152
      0011C3 F0               [24]  964 	movx	@dptr,a
                           000047   965 	Scommon$Idle_Mode$29 ==.
                                    966 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/common.c:87: if (IdleStatus)
      0011C4 E0               [24]  967 	movx	a,@dptr
      0011C5 60 05            [24]  968 	jz	00103$
                           00004A   969 	Scommon$Idle_Mode$30 ==.
                           00004A   970 	Scommon$Idle_Mode$31 ==.
                                    971 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/common.c:89: ENABLE_IDLE_MODE;
      0011C7 43 87 01         [24]  972 	orl	_PCON,#0x01
                           00004D   973 	Scommon$Idle_Mode$32 ==.
                                    974 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/common.c:90: CALL_NOP;
      0011CA 00               [12]  975 	nop;
                           00004E   976 	Scommon$Idle_Mode$33 ==.
                                    977 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/common.c:91: CALL_NOP;
      0011CB 00               [12]  978 	nop;
                           00004F   979 	Scommon$Idle_Mode$34 ==.
      0011CC                        980 00103$:
                           00004F   981 	Scommon$Idle_Mode$35 ==.
                                    982 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/common.c:93: }
                           00004F   983 	Scommon$Idle_Mode$36 ==.
                           00004F   984 	XG$Idle_Mode$0$0 ==.
      0011CC 22               [24]  985 	ret
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
      0011CD                        998 __delay_:
                           000050   999 	Scommon$_delay_$39 ==.
                           000050  1000 	Scommon$_delay_$40 ==.
                                   1001 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/common.c:106: for (t2=0;t2<0x1A;t2++)
      0011CD 7F 00            [12] 1002 	mov	r7,#0x00
                           000052  1003 	Scommon$_delay_$41 ==.
                                   1004 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/common.c:108: for (t1=0;t1<0x7f;t1++)
      0011CF                       1005 00110$:
      0011CF 7E 7F            [12] 1006 	mov	r6,#0x7f
                           000054  1007 	Scommon$_delay_$42 ==.
      0011D1                       1008 00105$:
                           000054  1009 	Scommon$_delay_$43 ==.
                           000054  1010 	Scommon$_delay_$44 ==.
                                   1011 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/common.c:110: CALL_NOP;
      0011D1 00               [12] 1012 	nop;
                           000055  1013 	Scommon$_delay_$45 ==.
                                   1014 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/common.c:108: for (t1=0;t1<0x7f;t1++)
      0011D2 DE FD            [24] 1015 	djnz	r6,00105$
                           000057  1016 	Scommon$_delay_$46 ==.
                           000057  1017 	Scommon$_delay_$47 ==.
                                   1018 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/common.c:106: for (t2=0;t2<0x1A;t2++)
      0011D4 0F               [12] 1019 	inc	r7
      0011D5 BF 1A 00         [24] 1020 	cjne	r7,#0x1a,00125$
      0011D8                       1021 00125$:
      0011D8 40 F5            [24] 1022 	jc	00110$
                           00005D  1023 	Scommon$_delay_$48 ==.
                                   1024 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/common.c:113: }
                           00005D  1025 	Scommon$_delay_$49 ==.
                           00005D  1026 	XG$_delay_$0$0 ==.
      0011DA 22               [24] 1027 	ret
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
      0011DB                       1039 _Global_Interrupt:
                           00005E  1040 	Scommon$Global_Interrupt$52 ==.
      0011DB E5 82            [12] 1041 	mov	a,dpl
      0011DD 90 00 27         [24] 1042 	mov	dptr,#_Global_Interrupt_u8IntStatus_65536_161
      0011E0 F0               [24] 1043 	movx	@dptr,a
                           000064  1044 	Scommon$Global_Interrupt$53 ==.
                                   1045 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/common.c:124: EA = u8IntStatus;
      0011E1 E0               [24] 1046 	movx	a,@dptr
                                   1047 ;	assignBit
      0011E2 24 FF            [12] 1048 	add	a,#0xff
      0011E4 92 AF            [24] 1049 	mov	_EA,c
                           000069  1050 	Scommon$Global_Interrupt$54 ==.
                                   1051 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/common.c:125: }
                           000069  1052 	Scommon$Global_Interrupt$55 ==.
                           000069  1053 	XG$Global_Interrupt$0$0 ==.
      0011E6 22               [24] 1054 	ret
                           00006A  1055 	Scommon$Global_Interrupt$56 ==.
                                   1056 	.area CSEG    (CODE)
                                   1057 	.area CONST   (CODE)
                                   1058 	.area XINIT   (CODE)
                                   1059 	.area INITIALIZER
                                   1060 	.area CABS    (ABS,CODE)
                                   1061 
                                   1062 	.area .debug_line (NOLOAD)
      000A6D 00 00 01 AF           1063 	.dw	0,Ldebug_line_end-Ldebug_line_start
      000A71                       1064 Ldebug_line_start:
      000A71 00 02                 1065 	.dw	2
      000A73 00 00 00 A9           1066 	.dw	0,Ldebug_line_stmt-6-Ldebug_line_start
      000A77 01                    1067 	.db	1
      000A78 01                    1068 	.db	1
      000A79 FB                    1069 	.db	-5
      000A7A 0F                    1070 	.db	15
      000A7B 0A                    1071 	.db	10
      000A7C 00                    1072 	.db	0
      000A7D 01                    1073 	.db	1
      000A7E 01                    1074 	.db	1
      000A7F 01                    1075 	.db	1
      000A80 01                    1076 	.db	1
      000A81 00                    1077 	.db	0
      000A82 00                    1078 	.db	0
      000A83 00                    1079 	.db	0
      000A84 01                    1080 	.db	1
      000A85 2F 2E 2E 2F 69 6E 63  1081 	.ascii "/../include/mcs51"
             6C 75 64 65 2F 6D 63
             73 35 31
      000A96 00                    1082 	.db	0
      000A97 2F 2E 2E 2F 69 6E 63  1083 	.ascii "/../include"
             6C 75 64 65
      000AA2 00                    1084 	.db	0
      000AA3 00                    1085 	.db	0
      000AA4 43 3A 2F 55 73 65 72  1086 	.ascii "C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/common.c"
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
      000B1B 00                    1087 	.db	0
      000B1C 00                    1088 	.uleb128	0
      000B1D 00                    1089 	.uleb128	0
      000B1E 00                    1090 	.uleb128	0
      000B1F 00                    1091 	.db	0
      000B20                       1092 Ldebug_line_stmt:
      000B20 00                    1093 	.db	0
      000B21 05                    1094 	.uleb128	5
      000B22 02                    1095 	.db	2
      000B23 00 00 11 7D           1096 	.dw	0,(Scommon$Read_APROM_BYTE$0)
      000B27 03                    1097 	.db	3
      000B28 21                    1098 	.sleb128	33
      000B29 01                    1099 	.db	1
      000B2A 09                    1100 	.db	9
      000B2B 00 0B                 1101 	.dw	Scommon$Read_APROM_BYTE$2-Scommon$Read_APROM_BYTE$0
      000B2D 03                    1102 	.db	3
      000B2E 05                    1103 	.sleb128	5
      000B2F 01                    1104 	.db	1
      000B30 09                    1105 	.db	9
      000B31 00 11                 1106 	.dw	Scommon$Read_APROM_BYTE$3-Scommon$Read_APROM_BYTE$2
      000B33 03                    1107 	.db	3
      000B34 01                    1108 	.sleb128	1
      000B35 01                    1109 	.db	1
      000B36 09                    1110 	.db	9
      000B37 00 00                 1111 	.dw	Scommon$Read_APROM_BYTE$4-Scommon$Read_APROM_BYTE$3
      000B39 03                    1112 	.db	3
      000B3A 01                    1113 	.sleb128	1
      000B3B 01                    1114 	.db	1
      000B3C 09                    1115 	.db	9
      000B3D 00 01                 1116 	.dw	1+Scommon$Read_APROM_BYTE$5-Scommon$Read_APROM_BYTE$4
      000B3F 00                    1117 	.db	0
      000B40 01                    1118 	.uleb128	1
      000B41 01                    1119 	.db	1
      000B42 00                    1120 	.db	0
      000B43 05                    1121 	.uleb128	5
      000B44 02                    1122 	.db	2
      000B45 00 00 11 9C           1123 	.dw	0,(Scommon$Software_Reset$7)
      000B49 03                    1124 	.db	3
      000B4A 33                    1125 	.sleb128	51
      000B4B 01                    1126 	.db	1
      000B4C 09                    1127 	.db	9
      000B4D 00 06                 1128 	.dw	Scommon$Software_Reset$9-Scommon$Software_Reset$7
      000B4F 03                    1129 	.db	3
      000B50 03                    1130 	.sleb128	3
      000B51 01                    1131 	.db	1
      000B52 09                    1132 	.db	9
      000B53 00 04                 1133 	.dw	Scommon$Software_Reset$10-Scommon$Software_Reset$9
      000B55 03                    1134 	.db	3
      000B56 01                    1135 	.sleb128	1
      000B57 01                    1136 	.db	1
      000B58 09                    1137 	.db	9
      000B59 00 03                 1138 	.dw	Scommon$Software_Reset$11-Scommon$Software_Reset$10
      000B5B 03                    1139 	.db	3
      000B5C 01                    1140 	.sleb128	1
      000B5D 01                    1141 	.db	1
      000B5E 09                    1142 	.db	9
      000B5F 00 03                 1143 	.dw	Scommon$Software_Reset$12-Scommon$Software_Reset$11
      000B61 03                    1144 	.db	3
      000B62 01                    1145 	.sleb128	1
      000B63 01                    1146 	.db	1
      000B64 09                    1147 	.db	9
      000B65 00 02                 1148 	.dw	Scommon$Software_Reset$13-Scommon$Software_Reset$12
      000B67 03                    1149 	.db	3
      000B68 01                    1150 	.sleb128	1
      000B69 01                    1151 	.db	1
      000B6A 09                    1152 	.db	9
      000B6B 00 01                 1153 	.dw	1+Scommon$Software_Reset$14-Scommon$Software_Reset$13
      000B6D 00                    1154 	.db	0
      000B6E 01                    1155 	.uleb128	1
      000B6F 01                    1156 	.db	1
      000B70 00                    1157 	.db	0
      000B71 05                    1158 	.uleb128	5
      000B72 02                    1159 	.db	2
      000B73 00 00 11 AF           1160 	.dw	0,(Scommon$PowerDown_Mode$16)
      000B77 03                    1161 	.db	3
      000B78 C3 00                 1162 	.sleb128	67
      000B7A 01                    1163 	.db	1
      000B7B 09                    1164 	.db	9
      000B7C 00 06                 1165 	.dw	Scommon$PowerDown_Mode$18-Scommon$PowerDown_Mode$16
      000B7E 03                    1166 	.db	3
      000B7F 02                    1167 	.sleb128	2
      000B80 01                    1168 	.db	1
      000B81 09                    1169 	.db	9
      000B82 00 03                 1170 	.dw	Scommon$PowerDown_Mode$20-Scommon$PowerDown_Mode$18
      000B84 03                    1171 	.db	3
      000B85 02                    1172 	.sleb128	2
      000B86 01                    1173 	.db	1
      000B87 09                    1174 	.db	9
      000B88 00 03                 1175 	.dw	Scommon$PowerDown_Mode$21-Scommon$PowerDown_Mode$20
      000B8A 03                    1176 	.db	3
      000B8B 01                    1177 	.sleb128	1
      000B8C 01                    1178 	.db	1
      000B8D 09                    1179 	.db	9
      000B8E 00 01                 1180 	.dw	Scommon$PowerDown_Mode$22-Scommon$PowerDown_Mode$21
      000B90 03                    1181 	.db	3
      000B91 01                    1182 	.sleb128	1
      000B92 01                    1183 	.db	1
      000B93 09                    1184 	.db	9
      000B94 00 01                 1185 	.dw	Scommon$PowerDown_Mode$24-Scommon$PowerDown_Mode$22
      000B96 03                    1186 	.db	3
      000B97 02                    1187 	.sleb128	2
      000B98 01                    1188 	.db	1
      000B99 09                    1189 	.db	9
      000B9A 00 01                 1190 	.dw	1+Scommon$PowerDown_Mode$25-Scommon$PowerDown_Mode$24
      000B9C 00                    1191 	.db	0
      000B9D 01                    1192 	.uleb128	1
      000B9E 01                    1193 	.db	1
      000B9F 00                    1194 	.db	0
      000BA0 05                    1195 	.uleb128	5
      000BA1 02                    1196 	.db	2
      000BA2 00 00 11 BE           1197 	.dw	0,(Scommon$Idle_Mode$27)
      000BA6 03                    1198 	.db	3
      000BA7 D4 00                 1199 	.sleb128	84
      000BA9 01                    1200 	.db	1
      000BAA 09                    1201 	.db	9
      000BAB 00 06                 1202 	.dw	Scommon$Idle_Mode$29-Scommon$Idle_Mode$27
      000BAD 03                    1203 	.db	3
      000BAE 02                    1204 	.sleb128	2
      000BAF 01                    1205 	.db	1
      000BB0 09                    1206 	.db	9
      000BB1 00 03                 1207 	.dw	Scommon$Idle_Mode$31-Scommon$Idle_Mode$29
      000BB3 03                    1208 	.db	3
      000BB4 02                    1209 	.sleb128	2
      000BB5 01                    1210 	.db	1
      000BB6 09                    1211 	.db	9
      000BB7 00 03                 1212 	.dw	Scommon$Idle_Mode$32-Scommon$Idle_Mode$31
      000BB9 03                    1213 	.db	3
      000BBA 01                    1214 	.sleb128	1
      000BBB 01                    1215 	.db	1
      000BBC 09                    1216 	.db	9
      000BBD 00 01                 1217 	.dw	Scommon$Idle_Mode$33-Scommon$Idle_Mode$32
      000BBF 03                    1218 	.db	3
      000BC0 01                    1219 	.sleb128	1
      000BC1 01                    1220 	.db	1
      000BC2 09                    1221 	.db	9
      000BC3 00 01                 1222 	.dw	Scommon$Idle_Mode$35-Scommon$Idle_Mode$33
      000BC5 03                    1223 	.db	3
      000BC6 02                    1224 	.sleb128	2
      000BC7 01                    1225 	.db	1
      000BC8 09                    1226 	.db	9
      000BC9 00 01                 1227 	.dw	1+Scommon$Idle_Mode$36-Scommon$Idle_Mode$35
      000BCB 00                    1228 	.db	0
      000BCC 01                    1229 	.uleb128	1
      000BCD 01                    1230 	.db	1
      000BCE 00                    1231 	.db	0
      000BCF 05                    1232 	.uleb128	5
      000BD0 02                    1233 	.db	2
      000BD1 00 00 11 CD           1234 	.dw	0,(Scommon$_delay_$38)
      000BD5 03                    1235 	.db	3
      000BD6 E5 00                 1236 	.sleb128	101
      000BD8 01                    1237 	.db	1
      000BD9 09                    1238 	.db	9
      000BDA 00 00                 1239 	.dw	Scommon$_delay_$40-Scommon$_delay_$38
      000BDC 03                    1240 	.db	3
      000BDD 04                    1241 	.sleb128	4
      000BDE 01                    1242 	.db	1
      000BDF 09                    1243 	.db	9
      000BE0 00 02                 1244 	.dw	Scommon$_delay_$41-Scommon$_delay_$40
      000BE2 03                    1245 	.db	3
      000BE3 02                    1246 	.sleb128	2
      000BE4 01                    1247 	.db	1
      000BE5 09                    1248 	.db	9
      000BE6 00 02                 1249 	.dw	Scommon$_delay_$44-Scommon$_delay_$41
      000BE8 03                    1250 	.db	3
      000BE9 02                    1251 	.sleb128	2
      000BEA 01                    1252 	.db	1
      000BEB 09                    1253 	.db	9
      000BEC 00 01                 1254 	.dw	Scommon$_delay_$45-Scommon$_delay_$44
      000BEE 03                    1255 	.db	3
      000BEF 7E                    1256 	.sleb128	-2
      000BF0 01                    1257 	.db	1
      000BF1 09                    1258 	.db	9
      000BF2 00 02                 1259 	.dw	Scommon$_delay_$47-Scommon$_delay_$45
      000BF4 03                    1260 	.db	3
      000BF5 7E                    1261 	.sleb128	-2
      000BF6 01                    1262 	.db	1
      000BF7 09                    1263 	.db	9
      000BF8 00 06                 1264 	.dw	Scommon$_delay_$48-Scommon$_delay_$47
      000BFA 03                    1265 	.db	3
      000BFB 07                    1266 	.sleb128	7
      000BFC 01                    1267 	.db	1
      000BFD 09                    1268 	.db	9
      000BFE 00 01                 1269 	.dw	1+Scommon$_delay_$49-Scommon$_delay_$48
      000C00 00                    1270 	.db	0
      000C01 01                    1271 	.uleb128	1
      000C02 01                    1272 	.db	1
      000C03 00                    1273 	.db	0
      000C04 05                    1274 	.uleb128	5
      000C05 02                    1275 	.db	2
      000C06 00 00 11 DB           1276 	.dw	0,(Scommon$Global_Interrupt$51)
      000C0A 03                    1277 	.db	3
      000C0B F9 00                 1278 	.sleb128	121
      000C0D 01                    1279 	.db	1
      000C0E 09                    1280 	.db	9
      000C0F 00 06                 1281 	.dw	Scommon$Global_Interrupt$53-Scommon$Global_Interrupt$51
      000C11 03                    1282 	.db	3
      000C12 02                    1283 	.sleb128	2
      000C13 01                    1284 	.db	1
      000C14 09                    1285 	.db	9
      000C15 00 05                 1286 	.dw	Scommon$Global_Interrupt$54-Scommon$Global_Interrupt$53
      000C17 03                    1287 	.db	3
      000C18 01                    1288 	.sleb128	1
      000C19 01                    1289 	.db	1
      000C1A 09                    1290 	.db	9
      000C1B 00 01                 1291 	.dw	1+Scommon$Global_Interrupt$55-Scommon$Global_Interrupt$54
      000C1D 00                    1292 	.db	0
      000C1E 01                    1293 	.uleb128	1
      000C1F 01                    1294 	.db	1
      000C20                       1295 Ldebug_line_end:
                                   1296 
                                   1297 	.area .debug_loc (NOLOAD)
      00021C                       1298 Ldebug_loc_start:
      00021C 00 00 11 DB           1299 	.dw	0,(Scommon$Global_Interrupt$52)
      000220 00 00 11 E7           1300 	.dw	0,(Scommon$Global_Interrupt$56)
      000224 00 02                 1301 	.dw	2
      000226 86                    1302 	.db	134
      000227 01                    1303 	.sleb128	1
      000228 00 00 00 00           1304 	.dw	0,0
      00022C 00 00 00 00           1305 	.dw	0,0
      000230 00 00 11 CD           1306 	.dw	0,(Scommon$_delay_$39)
      000234 00 00 11 DB           1307 	.dw	0,(Scommon$_delay_$50)
      000238 00 02                 1308 	.dw	2
      00023A 86                    1309 	.db	134
      00023B 01                    1310 	.sleb128	1
      00023C 00 00 00 00           1311 	.dw	0,0
      000240 00 00 00 00           1312 	.dw	0,0
      000244 00 00 11 BE           1313 	.dw	0,(Scommon$Idle_Mode$28)
      000248 00 00 11 CD           1314 	.dw	0,(Scommon$Idle_Mode$37)
      00024C 00 02                 1315 	.dw	2
      00024E 86                    1316 	.db	134
      00024F 01                    1317 	.sleb128	1
      000250 00 00 00 00           1318 	.dw	0,0
      000254 00 00 00 00           1319 	.dw	0,0
      000258 00 00 11 AF           1320 	.dw	0,(Scommon$PowerDown_Mode$17)
      00025C 00 00 11 BE           1321 	.dw	0,(Scommon$PowerDown_Mode$26)
      000260 00 02                 1322 	.dw	2
      000262 86                    1323 	.db	134
      000263 01                    1324 	.sleb128	1
      000264 00 00 00 00           1325 	.dw	0,0
      000268 00 00 00 00           1326 	.dw	0,0
      00026C 00 00 11 9C           1327 	.dw	0,(Scommon$Software_Reset$8)
      000270 00 00 11 AF           1328 	.dw	0,(Scommon$Software_Reset$15)
      000274 00 02                 1329 	.dw	2
      000276 86                    1330 	.db	134
      000277 01                    1331 	.sleb128	1
      000278 00 00 00 00           1332 	.dw	0,0
      00027C 00 00 00 00           1333 	.dw	0,0
      000280 00 00 11 7D           1334 	.dw	0,(Scommon$Read_APROM_BYTE$1)
      000284 00 00 11 9C           1335 	.dw	0,(Scommon$Read_APROM_BYTE$6)
      000288 00 02                 1336 	.dw	2
      00028A 86                    1337 	.db	134
      00028B 01                    1338 	.sleb128	1
      00028C 00 00 00 00           1339 	.dw	0,0
      000290 00 00 00 00           1340 	.dw	0,0
                                   1341 
                                   1342 	.area .debug_abbrev (NOLOAD)
      0000FC                       1343 Ldebug_abbrev:
      0000FC 01                    1344 	.uleb128	1
      0000FD 11                    1345 	.uleb128	17
      0000FE 01                    1346 	.db	1
      0000FF 03                    1347 	.uleb128	3
      000100 08                    1348 	.uleb128	8
      000101 10                    1349 	.uleb128	16
      000102 06                    1350 	.uleb128	6
      000103 13                    1351 	.uleb128	19
      000104 0B                    1352 	.uleb128	11
      000105 25                    1353 	.uleb128	37
      000106 08                    1354 	.uleb128	8
      000107 00                    1355 	.uleb128	0
      000108 00                    1356 	.uleb128	0
      000109 02                    1357 	.uleb128	2
      00010A 24                    1358 	.uleb128	36
      00010B 00                    1359 	.db	0
      00010C 03                    1360 	.uleb128	3
      00010D 08                    1361 	.uleb128	8
      00010E 0B                    1362 	.uleb128	11
      00010F 0B                    1363 	.uleb128	11
      000110 3E                    1364 	.uleb128	62
      000111 0B                    1365 	.uleb128	11
      000112 00                    1366 	.uleb128	0
      000113 00                    1367 	.uleb128	0
      000114 03                    1368 	.uleb128	3
      000115 2E                    1369 	.uleb128	46
      000116 01                    1370 	.db	1
      000117 01                    1371 	.uleb128	1
      000118 13                    1372 	.uleb128	19
      000119 03                    1373 	.uleb128	3
      00011A 08                    1374 	.uleb128	8
      00011B 11                    1375 	.uleb128	17
      00011C 01                    1376 	.uleb128	1
      00011D 12                    1377 	.uleb128	18
      00011E 01                    1378 	.uleb128	1
      00011F 3F                    1379 	.uleb128	63
      000120 0C                    1380 	.uleb128	12
      000121 40                    1381 	.uleb128	64
      000122 06                    1382 	.uleb128	6
      000123 49                    1383 	.uleb128	73
      000124 13                    1384 	.uleb128	19
      000125 00                    1385 	.uleb128	0
      000126 00                    1386 	.uleb128	0
      000127 04                    1387 	.uleb128	4
      000128 26                    1388 	.uleb128	38
      000129 00                    1389 	.db	0
      00012A 49                    1390 	.uleb128	73
      00012B 13                    1391 	.uleb128	19
      00012C 00                    1392 	.uleb128	0
      00012D 00                    1393 	.uleb128	0
      00012E 05                    1394 	.uleb128	5
      00012F 0F                    1395 	.uleb128	15
      000130 00                    1396 	.db	0
      000131 0B                    1397 	.uleb128	11
      000132 0B                    1398 	.uleb128	11
      000133 49                    1399 	.uleb128	73
      000134 13                    1400 	.uleb128	19
      000135 00                    1401 	.uleb128	0
      000136 00                    1402 	.uleb128	0
      000137 06                    1403 	.uleb128	6
      000138 05                    1404 	.uleb128	5
      000139 00                    1405 	.db	0
      00013A 02                    1406 	.uleb128	2
      00013B 0A                    1407 	.uleb128	10
      00013C 03                    1408 	.uleb128	3
      00013D 08                    1409 	.uleb128	8
      00013E 49                    1410 	.uleb128	73
      00013F 13                    1411 	.uleb128	19
      000140 00                    1412 	.uleb128	0
      000141 00                    1413 	.uleb128	0
      000142 07                    1414 	.uleb128	7
      000143 34                    1415 	.uleb128	52
      000144 00                    1416 	.db	0
      000145 03                    1417 	.uleb128	3
      000146 08                    1418 	.uleb128	8
      000147 49                    1419 	.uleb128	73
      000148 13                    1420 	.uleb128	19
      000149 00                    1421 	.uleb128	0
      00014A 00                    1422 	.uleb128	0
      00014B 08                    1423 	.uleb128	8
      00014C 2E                    1424 	.uleb128	46
      00014D 01                    1425 	.db	1
      00014E 01                    1426 	.uleb128	1
      00014F 13                    1427 	.uleb128	19
      000150 03                    1428 	.uleb128	3
      000151 08                    1429 	.uleb128	8
      000152 11                    1430 	.uleb128	17
      000153 01                    1431 	.uleb128	1
      000154 12                    1432 	.uleb128	18
      000155 01                    1433 	.uleb128	1
      000156 3F                    1434 	.uleb128	63
      000157 0C                    1435 	.uleb128	12
      000158 40                    1436 	.uleb128	64
      000159 06                    1437 	.uleb128	6
      00015A 00                    1438 	.uleb128	0
      00015B 00                    1439 	.uleb128	0
      00015C 09                    1440 	.uleb128	9
      00015D 0B                    1441 	.uleb128	11
      00015E 00                    1442 	.db	0
      00015F 11                    1443 	.uleb128	17
      000160 01                    1444 	.uleb128	1
      000161 12                    1445 	.uleb128	18
      000162 01                    1446 	.uleb128	1
      000163 00                    1447 	.uleb128	0
      000164 00                    1448 	.uleb128	0
      000165 0A                    1449 	.uleb128	10
      000166 0B                    1450 	.uleb128	11
      000167 01                    1451 	.db	1
      000168 01                    1452 	.uleb128	1
      000169 13                    1453 	.uleb128	19
      00016A 11                    1454 	.uleb128	17
      00016B 01                    1455 	.uleb128	1
      00016C 00                    1456 	.uleb128	0
      00016D 00                    1457 	.uleb128	0
      00016E 0B                    1458 	.uleb128	11
      00016F 34                    1459 	.uleb128	52
      000170 00                    1460 	.db	0
      000171 02                    1461 	.uleb128	2
      000172 0A                    1462 	.uleb128	10
      000173 03                    1463 	.uleb128	3
      000174 08                    1464 	.uleb128	8
      000175 3F                    1465 	.uleb128	63
      000176 0C                    1466 	.uleb128	12
      000177 49                    1467 	.uleb128	73
      000178 13                    1468 	.uleb128	19
      000179 00                    1469 	.uleb128	0
      00017A 00                    1470 	.uleb128	0
      00017B 0C                    1471 	.uleb128	12
      00017C 35                    1472 	.uleb128	53
      00017D 00                    1473 	.db	0
      00017E 49                    1474 	.uleb128	73
      00017F 13                    1475 	.uleb128	19
      000180 00                    1476 	.uleb128	0
      000181 00                    1477 	.uleb128	0
      000182 00                    1478 	.uleb128	0
                                   1479 
                                   1480 	.area .debug_info (NOLOAD)
      001E3E 00 00 12 44           1481 	.dw	0,Ldebug_info_end-Ldebug_info_start
      001E42                       1482 Ldebug_info_start:
      001E42 00 02                 1483 	.dw	2
      001E44 00 00 00 FC           1484 	.dw	0,(Ldebug_abbrev)
      001E48 04                    1485 	.db	4
      001E49 01                    1486 	.uleb128	1
      001E4A 43 3A 2F 55 73 65 72  1487 	.ascii "C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/common.c"
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
      001EC1 00                    1488 	.db	0
      001EC2 00 00 0A 6D           1489 	.dw	0,(Ldebug_line_start+-4)
      001EC6 01                    1490 	.db	1
      001EC7 53 44 43 43 20 76 65  1491 	.ascii "SDCC version 4.2.6 #13647"
             72 73 69 6F 6E 20 34
             2E 32 2E 36 20 23 31
             33 36 34 37
      001EE0 00                    1492 	.db	0
      001EE1 02                    1493 	.uleb128	2
      001EE2 75 6E 73 69 67 6E 65  1494 	.ascii "unsigned char"
             64 20 63 68 61 72
      001EEF 00                    1495 	.db	0
      001EF0 01                    1496 	.db	1
      001EF1 08                    1497 	.db	8
      001EF2 03                    1498 	.uleb128	3
      001EF3 00 00 01 05           1499 	.dw	0,261
      001EF7 52 65 61 64 5F 41 50  1500 	.ascii "Read_APROM_BYTE"
             52 4F 4D 5F 42 59 54
             45
      001F06 00                    1501 	.db	0
      001F07 00 00 11 7D           1502 	.dw	0,(_Read_APROM_BYTE)
      001F0B 00 00 11 9A           1503 	.dw	0,(XG$Read_APROM_BYTE$0$0+1)
      001F0F 01                    1504 	.db	1
      001F10 00 00 02 80           1505 	.dw	0,(Ldebug_loc_start+100)
      001F14 00 00 00 A3           1506 	.dw	0,163
      001F18 04                    1507 	.uleb128	4
      001F19 00 00 01 05           1508 	.dw	0,261
      001F1D 05                    1509 	.uleb128	5
      001F1E 02                    1510 	.db	2
      001F1F 00 00 00 DA           1511 	.dw	0,218
      001F23 06                    1512 	.uleb128	6
      001F24 05                    1513 	.db	5
      001F25 03                    1514 	.db	3
      001F26 00 00 00 22           1515 	.dw	0,(_Read_APROM_BYTE_u16_addr_65536_145)
      001F2A 75 31 36 5F 61 64 64  1516 	.ascii "u16_addr"
             72
      001F32 00                    1517 	.db	0
      001F33 00 00 00 DF           1518 	.dw	0,223
      001F37 07                    1519 	.uleb128	7
      001F38 72 64 61 74 61        1520 	.ascii "rdata"
      001F3D 00                    1521 	.db	0
      001F3E 00 00 00 A3           1522 	.dw	0,163
      001F42 00                    1523 	.uleb128	0
      001F43 02                    1524 	.uleb128	2
      001F44 75 6E 73 69 67 6E 65  1525 	.ascii "unsigned int"
             64 20 69 6E 74
      001F50 00                    1526 	.db	0
      001F51 02                    1527 	.db	2
      001F52 07                    1528 	.db	7
      001F53 08                    1529 	.uleb128	8
      001F54 00 00 01 5B           1530 	.dw	0,347
      001F58 53 6F 66 74 77 61 72  1531 	.ascii "Software_Reset"
             65 5F 52 65 73 65 74
      001F66 00                    1532 	.db	0
      001F67 00 00 11 9C           1533 	.dw	0,(_Software_Reset)
      001F6B 00 00 11 AF           1534 	.dw	0,(XG$Software_Reset$0$0+1)
      001F6F 01                    1535 	.db	1
      001F70 00 00 02 6C           1536 	.dw	0,(Ldebug_loc_start+80)
      001F74 06                    1537 	.uleb128	6
      001F75 05                    1538 	.db	5
      001F76 03                    1539 	.db	3
      001F77 00 00 00 24           1540 	.dw	0,(_Software_Reset_u8Bootarea_65536_147)
      001F7B 75 38 42 6F 6F 74 61  1541 	.ascii "u8Bootarea"
             72 65 61
      001F85 00                    1542 	.db	0
      001F86 00 00 00 A3           1543 	.dw	0,163
      001F8A 07                    1544 	.uleb128	7
      001F8B 62 6F 6F 74 74 65 6D  1545 	.ascii "boottemp"
             70
      001F93 00                    1546 	.db	0
      001F94 00 00 00 A3           1547 	.dw	0,163
      001F98 00                    1548 	.uleb128	0
      001F99 08                    1549 	.uleb128	8
      001F9A 00 00 01 9A           1550 	.dw	0,410
      001F9E 50 6F 77 65 72 44 6F  1551 	.ascii "PowerDown_Mode"
             77 6E 5F 4D 6F 64 65
      001FAC 00                    1552 	.db	0
      001FAD 00 00 11 AF           1553 	.dw	0,(_PowerDown_Mode)
      001FB1 00 00 11 BE           1554 	.dw	0,(XG$PowerDown_Mode$0$0+1)
      001FB5 01                    1555 	.db	1
      001FB6 00 00 02 58           1556 	.dw	0,(Ldebug_loc_start+60)
      001FBA 06                    1557 	.uleb128	6
      001FBB 05                    1558 	.db	5
      001FBC 03                    1559 	.db	3
      001FBD 00 00 00 25           1560 	.dw	0,(_PowerDown_Mode_PDStatus_65536_149)
      001FC1 50 44 53 74 61 74 75  1561 	.ascii "PDStatus"
             73
      001FC9 00                    1562 	.db	0
      001FCA 00 00 00 A3           1563 	.dw	0,163
      001FCE 09                    1564 	.uleb128	9
      001FCF 00 00 11 B8           1565 	.dw	0,(Scommon$PowerDown_Mode$19)
      001FD3 00 00 11 BD           1566 	.dw	0,(Scommon$PowerDown_Mode$23)
      001FD7 00                    1567 	.uleb128	0
      001FD8 08                    1568 	.uleb128	8
      001FD9 00 00 01 D6           1569 	.dw	0,470
      001FDD 49 64 6C 65 5F 4D 6F  1570 	.ascii "Idle_Mode"
             64 65
      001FE6 00                    1571 	.db	0
      001FE7 00 00 11 BE           1572 	.dw	0,(_Idle_Mode)
      001FEB 00 00 11 CD           1573 	.dw	0,(XG$Idle_Mode$0$0+1)
      001FEF 01                    1574 	.db	1
      001FF0 00 00 02 44           1575 	.dw	0,(Ldebug_loc_start+40)
      001FF4 06                    1576 	.uleb128	6
      001FF5 05                    1577 	.db	5
      001FF6 03                    1578 	.db	3
      001FF7 00 00 00 26           1579 	.dw	0,(_Idle_Mode_IdleStatus_65536_152)
      001FFB 49 64 6C 65 53 74 61  1580 	.ascii "IdleStatus"
             74 75 73
      002005 00                    1581 	.db	0
      002006 00 00 00 A3           1582 	.dw	0,163
      00200A 09                    1583 	.uleb128	9
      00200B 00 00 11 C7           1584 	.dw	0,(Scommon$Idle_Mode$30)
      00200F 00 00 11 CC           1585 	.dw	0,(Scommon$Idle_Mode$34)
      002013 00                    1586 	.uleb128	0
      002014 08                    1587 	.uleb128	8
      002015 00 00 02 14           1588 	.dw	0,532
      002019 5F 64 65 6C 61 79 5F  1589 	.ascii "_delay_"
      002020 00                    1590 	.db	0
      002021 00 00 11 CD           1591 	.dw	0,(__delay_)
      002025 00 00 11 DB           1592 	.dw	0,(XG$_delay_$0$0+1)
      002029 01                    1593 	.db	1
      00202A 00 00 02 30           1594 	.dw	0,(Ldebug_loc_start+20)
      00202E 0A                    1595 	.uleb128	10
      00202F 00 00 02 03           1596 	.dw	0,515
      002033 00 00 11 D1           1597 	.dw	0,(Scommon$_delay_$42)
      002037 09                    1598 	.uleb128	9
      002038 00 00 11 D1           1599 	.dw	0,(Scommon$_delay_$43)
      00203C 00 00 11 D4           1600 	.dw	0,(Scommon$_delay_$46)
      002040 00                    1601 	.uleb128	0
      002041 07                    1602 	.uleb128	7
      002042 74 31                 1603 	.ascii "t1"
      002044 00                    1604 	.db	0
      002045 00 00 00 A3           1605 	.dw	0,163
      002049 07                    1606 	.uleb128	7
      00204A 74 32                 1607 	.ascii "t2"
      00204C 00                    1608 	.db	0
      00204D 00 00 00 A3           1609 	.dw	0,163
      002051 00                    1610 	.uleb128	0
      002052 08                    1611 	.uleb128	8
      002053 00 00 02 4F           1612 	.dw	0,591
      002057 47 6C 6F 62 61 6C 5F  1613 	.ascii "Global_Interrupt"
             49 6E 74 65 72 72 75
             70 74
      002067 00                    1614 	.db	0
      002068 00 00 11 DB           1615 	.dw	0,(_Global_Interrupt)
      00206C 00 00 11 E7           1616 	.dw	0,(XG$Global_Interrupt$0$0+1)
      002070 01                    1617 	.db	1
      002071 00 00 02 1C           1618 	.dw	0,(Ldebug_loc_start)
      002075 06                    1619 	.uleb128	6
      002076 05                    1620 	.db	5
      002077 03                    1621 	.db	3
      002078 00 00 00 27           1622 	.dw	0,(_Global_Interrupt_u8IntStatus_65536_161)
      00207C 75 38 49 6E 74 53 74  1623 	.ascii "u8IntStatus"
             61 74 75 73
      002087 00                    1624 	.db	0
      002088 00 00 00 A3           1625 	.dw	0,163
      00208C 00                    1626 	.uleb128	0
      00208D 0B                    1627 	.uleb128	11
      00208E 05                    1628 	.db	5
      00208F 03                    1629 	.db	3
      002090 00 00 00 26           1630 	.dw	0,(_TA_REG_TMP)
      002094 54 41 5F 52 45 47 5F  1631 	.ascii "TA_REG_TMP"
             54 4D 50
      00209E 00                    1632 	.db	0
      00209F 01                    1633 	.db	1
      0020A0 00 00 00 A3           1634 	.dw	0,163
      0020A4 0B                    1635 	.uleb128	11
      0020A5 05                    1636 	.db	5
      0020A6 03                    1637 	.db	3
      0020A7 00 00 00 27           1638 	.dw	0,(_BYTE_TMP)
      0020AB 42 59 54 45 5F 54 4D  1639 	.ascii "BYTE_TMP"
             50
      0020B3 00                    1640 	.db	0
      0020B4 01                    1641 	.db	1
      0020B5 00 00 00 A3           1642 	.dw	0,163
      0020B9 0B                    1643 	.uleb128	11
      0020BA 05                    1644 	.db	5
      0020BB 03                    1645 	.db	3
      0020BC 00 00 00 28           1646 	.dw	0,(_SFRS_TMP)
      0020C0 53 46 52 53 5F 54 4D  1647 	.ascii "SFRS_TMP"
             50
      0020C8 00                    1648 	.db	0
      0020C9 01                    1649 	.db	1
      0020CA 00 00 00 A3           1650 	.dw	0,163
      0020CE 02                    1651 	.uleb128	2
      0020CF 5F 62 69 74           1652 	.ascii "_bit"
      0020D3 00                    1653 	.db	0
      0020D4 01                    1654 	.db	1
      0020D5 08                    1655 	.db	8
      0020D6 0B                    1656 	.uleb128	11
      0020D7 05                    1657 	.db	5
      0020D8 03                    1658 	.db	3
      0020D9 00 00 00 00           1659 	.dw	0,(_BIT_TMP)
      0020DD 42 49 54 5F 54 4D 50  1660 	.ascii "BIT_TMP"
      0020E4 00                    1661 	.db	0
      0020E5 01                    1662 	.db	1
      0020E6 00 00 02 90           1663 	.dw	0,656
      0020EA 0C                    1664 	.uleb128	12
      0020EB 00 00 00 A3           1665 	.dw	0,163
      0020EF 0B                    1666 	.uleb128	11
      0020F0 05                    1667 	.db	5
      0020F1 03                    1668 	.db	3
      0020F2 00 00 00 80           1669 	.dw	0,(_P0)
      0020F6 50 30                 1670 	.ascii "P0"
      0020F8 00                    1671 	.db	0
      0020F9 01                    1672 	.db	1
      0020FA 00 00 02 AC           1673 	.dw	0,684
      0020FE 0B                    1674 	.uleb128	11
      0020FF 05                    1675 	.db	5
      002100 03                    1676 	.db	3
      002101 00 00 00 81           1677 	.dw	0,(_SP)
      002105 53 50                 1678 	.ascii "SP"
      002107 00                    1679 	.db	0
      002108 01                    1680 	.db	1
      002109 00 00 02 AC           1681 	.dw	0,684
      00210D 0B                    1682 	.uleb128	11
      00210E 05                    1683 	.db	5
      00210F 03                    1684 	.db	3
      002110 00 00 00 82           1685 	.dw	0,(_DPL)
      002114 44 50 4C              1686 	.ascii "DPL"
      002117 00                    1687 	.db	0
      002118 01                    1688 	.db	1
      002119 00 00 02 AC           1689 	.dw	0,684
      00211D 0B                    1690 	.uleb128	11
      00211E 05                    1691 	.db	5
      00211F 03                    1692 	.db	3
      002120 00 00 00 83           1693 	.dw	0,(_DPH)
      002124 44 50 48              1694 	.ascii "DPH"
      002127 00                    1695 	.db	0
      002128 01                    1696 	.db	1
      002129 00 00 02 AC           1697 	.dw	0,684
      00212D 0B                    1698 	.uleb128	11
      00212E 05                    1699 	.db	5
      00212F 03                    1700 	.db	3
      002130 00 00 00 84           1701 	.dw	0,(_RCTRIM0)
      002134 52 43 54 52 49 4D 30  1702 	.ascii "RCTRIM0"
      00213B 00                    1703 	.db	0
      00213C 01                    1704 	.db	1
      00213D 00 00 02 AC           1705 	.dw	0,684
      002141 0B                    1706 	.uleb128	11
      002142 05                    1707 	.db	5
      002143 03                    1708 	.db	3
      002144 00 00 00 85           1709 	.dw	0,(_RCTRIM1)
      002148 52 43 54 52 49 4D 31  1710 	.ascii "RCTRIM1"
      00214F 00                    1711 	.db	0
      002150 01                    1712 	.db	1
      002151 00 00 02 AC           1713 	.dw	0,684
      002155 0B                    1714 	.uleb128	11
      002156 05                    1715 	.db	5
      002157 03                    1716 	.db	3
      002158 00 00 00 86           1717 	.dw	0,(_RWK)
      00215C 52 57 4B              1718 	.ascii "RWK"
      00215F 00                    1719 	.db	0
      002160 01                    1720 	.db	1
      002161 00 00 02 AC           1721 	.dw	0,684
      002165 0B                    1722 	.uleb128	11
      002166 05                    1723 	.db	5
      002167 03                    1724 	.db	3
      002168 00 00 00 87           1725 	.dw	0,(_PCON)
      00216C 50 43 4F 4E           1726 	.ascii "PCON"
      002170 00                    1727 	.db	0
      002171 01                    1728 	.db	1
      002172 00 00 02 AC           1729 	.dw	0,684
      002176 0B                    1730 	.uleb128	11
      002177 05                    1731 	.db	5
      002178 03                    1732 	.db	3
      002179 00 00 00 88           1733 	.dw	0,(_TCON)
      00217D 54 43 4F 4E           1734 	.ascii "TCON"
      002181 00                    1735 	.db	0
      002182 01                    1736 	.db	1
      002183 00 00 02 AC           1737 	.dw	0,684
      002187 0B                    1738 	.uleb128	11
      002188 05                    1739 	.db	5
      002189 03                    1740 	.db	3
      00218A 00 00 00 89           1741 	.dw	0,(_TMOD)
      00218E 54 4D 4F 44           1742 	.ascii "TMOD"
      002192 00                    1743 	.db	0
      002193 01                    1744 	.db	1
      002194 00 00 02 AC           1745 	.dw	0,684
      002198 0B                    1746 	.uleb128	11
      002199 05                    1747 	.db	5
      00219A 03                    1748 	.db	3
      00219B 00 00 00 8A           1749 	.dw	0,(_TL0)
      00219F 54 4C 30              1750 	.ascii "TL0"
      0021A2 00                    1751 	.db	0
      0021A3 01                    1752 	.db	1
      0021A4 00 00 02 AC           1753 	.dw	0,684
      0021A8 0B                    1754 	.uleb128	11
      0021A9 05                    1755 	.db	5
      0021AA 03                    1756 	.db	3
      0021AB 00 00 00 8B           1757 	.dw	0,(_TL1)
      0021AF 54 4C 31              1758 	.ascii "TL1"
      0021B2 00                    1759 	.db	0
      0021B3 01                    1760 	.db	1
      0021B4 00 00 02 AC           1761 	.dw	0,684
      0021B8 0B                    1762 	.uleb128	11
      0021B9 05                    1763 	.db	5
      0021BA 03                    1764 	.db	3
      0021BB 00 00 00 8C           1765 	.dw	0,(_TH0)
      0021BF 54 48 30              1766 	.ascii "TH0"
      0021C2 00                    1767 	.db	0
      0021C3 01                    1768 	.db	1
      0021C4 00 00 02 AC           1769 	.dw	0,684
      0021C8 0B                    1770 	.uleb128	11
      0021C9 05                    1771 	.db	5
      0021CA 03                    1772 	.db	3
      0021CB 00 00 00 8D           1773 	.dw	0,(_TH1)
      0021CF 54 48 31              1774 	.ascii "TH1"
      0021D2 00                    1775 	.db	0
      0021D3 01                    1776 	.db	1
      0021D4 00 00 02 AC           1777 	.dw	0,684
      0021D8 0B                    1778 	.uleb128	11
      0021D9 05                    1779 	.db	5
      0021DA 03                    1780 	.db	3
      0021DB 00 00 00 8E           1781 	.dw	0,(_CKCON)
      0021DF 43 4B 43 4F 4E        1782 	.ascii "CKCON"
      0021E4 00                    1783 	.db	0
      0021E5 01                    1784 	.db	1
      0021E6 00 00 02 AC           1785 	.dw	0,684
      0021EA 0B                    1786 	.uleb128	11
      0021EB 05                    1787 	.db	5
      0021EC 03                    1788 	.db	3
      0021ED 00 00 00 8F           1789 	.dw	0,(_WKCON)
      0021F1 57 4B 43 4F 4E        1790 	.ascii "WKCON"
      0021F6 00                    1791 	.db	0
      0021F7 01                    1792 	.db	1
      0021F8 00 00 02 AC           1793 	.dw	0,684
      0021FC 0B                    1794 	.uleb128	11
      0021FD 05                    1795 	.db	5
      0021FE 03                    1796 	.db	3
      0021FF 00 00 00 90           1797 	.dw	0,(_P1)
      002203 50 31                 1798 	.ascii "P1"
      002205 00                    1799 	.db	0
      002206 01                    1800 	.db	1
      002207 00 00 02 AC           1801 	.dw	0,684
      00220B 0B                    1802 	.uleb128	11
      00220C 05                    1803 	.db	5
      00220D 03                    1804 	.db	3
      00220E 00 00 00 91           1805 	.dw	0,(_SFRS)
      002212 53 46 52 53           1806 	.ascii "SFRS"
      002216 00                    1807 	.db	0
      002217 01                    1808 	.db	1
      002218 00 00 02 AC           1809 	.dw	0,684
      00221C 0B                    1810 	.uleb128	11
      00221D 05                    1811 	.db	5
      00221E 03                    1812 	.db	3
      00221F 00 00 00 92           1813 	.dw	0,(_CAPCON0)
      002223 43 41 50 43 4F 4E 30  1814 	.ascii "CAPCON0"
      00222A 00                    1815 	.db	0
      00222B 01                    1816 	.db	1
      00222C 00 00 02 AC           1817 	.dw	0,684
      002230 0B                    1818 	.uleb128	11
      002231 05                    1819 	.db	5
      002232 03                    1820 	.db	3
      002233 00 00 00 93           1821 	.dw	0,(_CAPCON1)
      002237 43 41 50 43 4F 4E 31  1822 	.ascii "CAPCON1"
      00223E 00                    1823 	.db	0
      00223F 01                    1824 	.db	1
      002240 00 00 02 AC           1825 	.dw	0,684
      002244 0B                    1826 	.uleb128	11
      002245 05                    1827 	.db	5
      002246 03                    1828 	.db	3
      002247 00 00 00 94           1829 	.dw	0,(_CAPCON2)
      00224B 43 41 50 43 4F 4E 32  1830 	.ascii "CAPCON2"
      002252 00                    1831 	.db	0
      002253 01                    1832 	.db	1
      002254 00 00 02 AC           1833 	.dw	0,684
      002258 0B                    1834 	.uleb128	11
      002259 05                    1835 	.db	5
      00225A 03                    1836 	.db	3
      00225B 00 00 00 95           1837 	.dw	0,(_CKDIV)
      00225F 43 4B 44 49 56        1838 	.ascii "CKDIV"
      002264 00                    1839 	.db	0
      002265 01                    1840 	.db	1
      002266 00 00 02 AC           1841 	.dw	0,684
      00226A 0B                    1842 	.uleb128	11
      00226B 05                    1843 	.db	5
      00226C 03                    1844 	.db	3
      00226D 00 00 00 96           1845 	.dw	0,(_CKSWT)
      002271 43 4B 53 57 54        1846 	.ascii "CKSWT"
      002276 00                    1847 	.db	0
      002277 01                    1848 	.db	1
      002278 00 00 02 AC           1849 	.dw	0,684
      00227C 0B                    1850 	.uleb128	11
      00227D 05                    1851 	.db	5
      00227E 03                    1852 	.db	3
      00227F 00 00 00 97           1853 	.dw	0,(_CKEN)
      002283 43 4B 45 4E           1854 	.ascii "CKEN"
      002287 00                    1855 	.db	0
      002288 01                    1856 	.db	1
      002289 00 00 02 AC           1857 	.dw	0,684
      00228D 0B                    1858 	.uleb128	11
      00228E 05                    1859 	.db	5
      00228F 03                    1860 	.db	3
      002290 00 00 00 98           1861 	.dw	0,(_SCON)
      002294 53 43 4F 4E           1862 	.ascii "SCON"
      002298 00                    1863 	.db	0
      002299 01                    1864 	.db	1
      00229A 00 00 02 AC           1865 	.dw	0,684
      00229E 0B                    1866 	.uleb128	11
      00229F 05                    1867 	.db	5
      0022A0 03                    1868 	.db	3
      0022A1 00 00 00 99           1869 	.dw	0,(_SBUF)
      0022A5 53 42 55 46           1870 	.ascii "SBUF"
      0022A9 00                    1871 	.db	0
      0022AA 01                    1872 	.db	1
      0022AB 00 00 02 AC           1873 	.dw	0,684
      0022AF 0B                    1874 	.uleb128	11
      0022B0 05                    1875 	.db	5
      0022B1 03                    1876 	.db	3
      0022B2 00 00 00 9A           1877 	.dw	0,(_SBUF_1)
      0022B6 53 42 55 46 5F 31     1878 	.ascii "SBUF_1"
      0022BC 00                    1879 	.db	0
      0022BD 01                    1880 	.db	1
      0022BE 00 00 02 AC           1881 	.dw	0,684
      0022C2 0B                    1882 	.uleb128	11
      0022C3 05                    1883 	.db	5
      0022C4 03                    1884 	.db	3
      0022C5 00 00 00 9B           1885 	.dw	0,(_EIE)
      0022C9 45 49 45              1886 	.ascii "EIE"
      0022CC 00                    1887 	.db	0
      0022CD 01                    1888 	.db	1
      0022CE 00 00 02 AC           1889 	.dw	0,684
      0022D2 0B                    1890 	.uleb128	11
      0022D3 05                    1891 	.db	5
      0022D4 03                    1892 	.db	3
      0022D5 00 00 00 9C           1893 	.dw	0,(_EIE1)
      0022D9 45 49 45 31           1894 	.ascii "EIE1"
      0022DD 00                    1895 	.db	0
      0022DE 01                    1896 	.db	1
      0022DF 00 00 02 AC           1897 	.dw	0,684
      0022E3 0B                    1898 	.uleb128	11
      0022E4 05                    1899 	.db	5
      0022E5 03                    1900 	.db	3
      0022E6 00 00 00 9F           1901 	.dw	0,(_CHPCON)
      0022EA 43 48 50 43 4F 4E     1902 	.ascii "CHPCON"
      0022F0 00                    1903 	.db	0
      0022F1 01                    1904 	.db	1
      0022F2 00 00 02 AC           1905 	.dw	0,684
      0022F6 0B                    1906 	.uleb128	11
      0022F7 05                    1907 	.db	5
      0022F8 03                    1908 	.db	3
      0022F9 00 00 00 A0           1909 	.dw	0,(_P2)
      0022FD 50 32                 1910 	.ascii "P2"
      0022FF 00                    1911 	.db	0
      002300 01                    1912 	.db	1
      002301 00 00 02 AC           1913 	.dw	0,684
      002305 0B                    1914 	.uleb128	11
      002306 05                    1915 	.db	5
      002307 03                    1916 	.db	3
      002308 00 00 00 A2           1917 	.dw	0,(_AUXR1)
      00230C 41 55 58 52 31        1918 	.ascii "AUXR1"
      002311 00                    1919 	.db	0
      002312 01                    1920 	.db	1
      002313 00 00 02 AC           1921 	.dw	0,684
      002317 0B                    1922 	.uleb128	11
      002318 05                    1923 	.db	5
      002319 03                    1924 	.db	3
      00231A 00 00 00 A3           1925 	.dw	0,(_BODCON0)
      00231E 42 4F 44 43 4F 4E 30  1926 	.ascii "BODCON0"
      002325 00                    1927 	.db	0
      002326 01                    1928 	.db	1
      002327 00 00 02 AC           1929 	.dw	0,684
      00232B 0B                    1930 	.uleb128	11
      00232C 05                    1931 	.db	5
      00232D 03                    1932 	.db	3
      00232E 00 00 00 A4           1933 	.dw	0,(_IAPTRG)
      002332 49 41 50 54 52 47     1934 	.ascii "IAPTRG"
      002338 00                    1935 	.db	0
      002339 01                    1936 	.db	1
      00233A 00 00 02 AC           1937 	.dw	0,684
      00233E 0B                    1938 	.uleb128	11
      00233F 05                    1939 	.db	5
      002340 03                    1940 	.db	3
      002341 00 00 00 A5           1941 	.dw	0,(_IAPUEN)
      002345 49 41 50 55 45 4E     1942 	.ascii "IAPUEN"
      00234B 00                    1943 	.db	0
      00234C 01                    1944 	.db	1
      00234D 00 00 02 AC           1945 	.dw	0,684
      002351 0B                    1946 	.uleb128	11
      002352 05                    1947 	.db	5
      002353 03                    1948 	.db	3
      002354 00 00 00 A6           1949 	.dw	0,(_IAPAL)
      002358 49 41 50 41 4C        1950 	.ascii "IAPAL"
      00235D 00                    1951 	.db	0
      00235E 01                    1952 	.db	1
      00235F 00 00 02 AC           1953 	.dw	0,684
      002363 0B                    1954 	.uleb128	11
      002364 05                    1955 	.db	5
      002365 03                    1956 	.db	3
      002366 00 00 00 A7           1957 	.dw	0,(_IAPAH)
      00236A 49 41 50 41 48        1958 	.ascii "IAPAH"
      00236F 00                    1959 	.db	0
      002370 01                    1960 	.db	1
      002371 00 00 02 AC           1961 	.dw	0,684
      002375 0B                    1962 	.uleb128	11
      002376 05                    1963 	.db	5
      002377 03                    1964 	.db	3
      002378 00 00 00 A8           1965 	.dw	0,(_IE)
      00237C 49 45                 1966 	.ascii "IE"
      00237E 00                    1967 	.db	0
      00237F 01                    1968 	.db	1
      002380 00 00 02 AC           1969 	.dw	0,684
      002384 0B                    1970 	.uleb128	11
      002385 05                    1971 	.db	5
      002386 03                    1972 	.db	3
      002387 00 00 00 A9           1973 	.dw	0,(_SADDR)
      00238B 53 41 44 44 52        1974 	.ascii "SADDR"
      002390 00                    1975 	.db	0
      002391 01                    1976 	.db	1
      002392 00 00 02 AC           1977 	.dw	0,684
      002396 0B                    1978 	.uleb128	11
      002397 05                    1979 	.db	5
      002398 03                    1980 	.db	3
      002399 00 00 00 AA           1981 	.dw	0,(_WDCON)
      00239D 57 44 43 4F 4E        1982 	.ascii "WDCON"
      0023A2 00                    1983 	.db	0
      0023A3 01                    1984 	.db	1
      0023A4 00 00 02 AC           1985 	.dw	0,684
      0023A8 0B                    1986 	.uleb128	11
      0023A9 05                    1987 	.db	5
      0023AA 03                    1988 	.db	3
      0023AB 00 00 00 AB           1989 	.dw	0,(_BODCON1)
      0023AF 42 4F 44 43 4F 4E 31  1990 	.ascii "BODCON1"
      0023B6 00                    1991 	.db	0
      0023B7 01                    1992 	.db	1
      0023B8 00 00 02 AC           1993 	.dw	0,684
      0023BC 0B                    1994 	.uleb128	11
      0023BD 05                    1995 	.db	5
      0023BE 03                    1996 	.db	3
      0023BF 00 00 00 AC           1997 	.dw	0,(_P3M1)
      0023C3 50 33 4D 31           1998 	.ascii "P3M1"
      0023C7 00                    1999 	.db	0
      0023C8 01                    2000 	.db	1
      0023C9 00 00 02 AC           2001 	.dw	0,684
      0023CD 0B                    2002 	.uleb128	11
      0023CE 05                    2003 	.db	5
      0023CF 03                    2004 	.db	3
      0023D0 00 00 00 AC           2005 	.dw	0,(_P3S)
      0023D4 50 33 53              2006 	.ascii "P3S"
      0023D7 00                    2007 	.db	0
      0023D8 01                    2008 	.db	1
      0023D9 00 00 02 AC           2009 	.dw	0,684
      0023DD 0B                    2010 	.uleb128	11
      0023DE 05                    2011 	.db	5
      0023DF 03                    2012 	.db	3
      0023E0 00 00 00 AD           2013 	.dw	0,(_P3M2)
      0023E4 50 33 4D 32           2014 	.ascii "P3M2"
      0023E8 00                    2015 	.db	0
      0023E9 01                    2016 	.db	1
      0023EA 00 00 02 AC           2017 	.dw	0,684
      0023EE 0B                    2018 	.uleb128	11
      0023EF 05                    2019 	.db	5
      0023F0 03                    2020 	.db	3
      0023F1 00 00 00 AD           2021 	.dw	0,(_P3SR)
      0023F5 50 33 53 52           2022 	.ascii "P3SR"
      0023F9 00                    2023 	.db	0
      0023FA 01                    2024 	.db	1
      0023FB 00 00 02 AC           2025 	.dw	0,684
      0023FF 0B                    2026 	.uleb128	11
      002400 05                    2027 	.db	5
      002401 03                    2028 	.db	3
      002402 00 00 00 AE           2029 	.dw	0,(_IAPFD)
      002406 49 41 50 46 44        2030 	.ascii "IAPFD"
      00240B 00                    2031 	.db	0
      00240C 01                    2032 	.db	1
      00240D 00 00 02 AC           2033 	.dw	0,684
      002411 0B                    2034 	.uleb128	11
      002412 05                    2035 	.db	5
      002413 03                    2036 	.db	3
      002414 00 00 00 AF           2037 	.dw	0,(_IAPCN)
      002418 49 41 50 43 4E        2038 	.ascii "IAPCN"
      00241D 00                    2039 	.db	0
      00241E 01                    2040 	.db	1
      00241F 00 00 02 AC           2041 	.dw	0,684
      002423 0B                    2042 	.uleb128	11
      002424 05                    2043 	.db	5
      002425 03                    2044 	.db	3
      002426 00 00 00 B0           2045 	.dw	0,(_P3)
      00242A 50 33                 2046 	.ascii "P3"
      00242C 00                    2047 	.db	0
      00242D 01                    2048 	.db	1
      00242E 00 00 02 AC           2049 	.dw	0,684
      002432 0B                    2050 	.uleb128	11
      002433 05                    2051 	.db	5
      002434 03                    2052 	.db	3
      002435 00 00 00 B1           2053 	.dw	0,(_P0M1)
      002439 50 30 4D 31           2054 	.ascii "P0M1"
      00243D 00                    2055 	.db	0
      00243E 01                    2056 	.db	1
      00243F 00 00 02 AC           2057 	.dw	0,684
      002443 0B                    2058 	.uleb128	11
      002444 05                    2059 	.db	5
      002445 03                    2060 	.db	3
      002446 00 00 00 B1           2061 	.dw	0,(_P0S)
      00244A 50 30 53              2062 	.ascii "P0S"
      00244D 00                    2063 	.db	0
      00244E 01                    2064 	.db	1
      00244F 00 00 02 AC           2065 	.dw	0,684
      002453 0B                    2066 	.uleb128	11
      002454 05                    2067 	.db	5
      002455 03                    2068 	.db	3
      002456 00 00 00 B2           2069 	.dw	0,(_P0M2)
      00245A 50 30 4D 32           2070 	.ascii "P0M2"
      00245E 00                    2071 	.db	0
      00245F 01                    2072 	.db	1
      002460 00 00 02 AC           2073 	.dw	0,684
      002464 0B                    2074 	.uleb128	11
      002465 05                    2075 	.db	5
      002466 03                    2076 	.db	3
      002467 00 00 00 B2           2077 	.dw	0,(_P0SR)
      00246B 50 30 53 52           2078 	.ascii "P0SR"
      00246F 00                    2079 	.db	0
      002470 01                    2080 	.db	1
      002471 00 00 02 AC           2081 	.dw	0,684
      002475 0B                    2082 	.uleb128	11
      002476 05                    2083 	.db	5
      002477 03                    2084 	.db	3
      002478 00 00 00 B3           2085 	.dw	0,(_P1M1)
      00247C 50 31 4D 31           2086 	.ascii "P1M1"
      002480 00                    2087 	.db	0
      002481 01                    2088 	.db	1
      002482 00 00 02 AC           2089 	.dw	0,684
      002486 0B                    2090 	.uleb128	11
      002487 05                    2091 	.db	5
      002488 03                    2092 	.db	3
      002489 00 00 00 B3           2093 	.dw	0,(_P1S)
      00248D 50 31 53              2094 	.ascii "P1S"
      002490 00                    2095 	.db	0
      002491 01                    2096 	.db	1
      002492 00 00 02 AC           2097 	.dw	0,684
      002496 0B                    2098 	.uleb128	11
      002497 05                    2099 	.db	5
      002498 03                    2100 	.db	3
      002499 00 00 00 B4           2101 	.dw	0,(_P1M2)
      00249D 50 31 4D 32           2102 	.ascii "P1M2"
      0024A1 00                    2103 	.db	0
      0024A2 01                    2104 	.db	1
      0024A3 00 00 02 AC           2105 	.dw	0,684
      0024A7 0B                    2106 	.uleb128	11
      0024A8 05                    2107 	.db	5
      0024A9 03                    2108 	.db	3
      0024AA 00 00 00 B4           2109 	.dw	0,(_P1SR)
      0024AE 50 31 53 52           2110 	.ascii "P1SR"
      0024B2 00                    2111 	.db	0
      0024B3 01                    2112 	.db	1
      0024B4 00 00 02 AC           2113 	.dw	0,684
      0024B8 0B                    2114 	.uleb128	11
      0024B9 05                    2115 	.db	5
      0024BA 03                    2116 	.db	3
      0024BB 00 00 00 B5           2117 	.dw	0,(_P2S)
      0024BF 50 32 53              2118 	.ascii "P2S"
      0024C2 00                    2119 	.db	0
      0024C3 01                    2120 	.db	1
      0024C4 00 00 02 AC           2121 	.dw	0,684
      0024C8 0B                    2122 	.uleb128	11
      0024C9 05                    2123 	.db	5
      0024CA 03                    2124 	.db	3
      0024CB 00 00 00 B7           2125 	.dw	0,(_IPH)
      0024CF 49 50 48              2126 	.ascii "IPH"
      0024D2 00                    2127 	.db	0
      0024D3 01                    2128 	.db	1
      0024D4 00 00 02 AC           2129 	.dw	0,684
      0024D8 0B                    2130 	.uleb128	11
      0024D9 05                    2131 	.db	5
      0024DA 03                    2132 	.db	3
      0024DB 00 00 00 B7           2133 	.dw	0,(_PWMINTC)
      0024DF 50 57 4D 49 4E 54 43  2134 	.ascii "PWMINTC"
      0024E6 00                    2135 	.db	0
      0024E7 01                    2136 	.db	1
      0024E8 00 00 02 AC           2137 	.dw	0,684
      0024EC 0B                    2138 	.uleb128	11
      0024ED 05                    2139 	.db	5
      0024EE 03                    2140 	.db	3
      0024EF 00 00 00 B8           2141 	.dw	0,(_IP)
      0024F3 49 50                 2142 	.ascii "IP"
      0024F5 00                    2143 	.db	0
      0024F6 01                    2144 	.db	1
      0024F7 00 00 02 AC           2145 	.dw	0,684
      0024FB 0B                    2146 	.uleb128	11
      0024FC 05                    2147 	.db	5
      0024FD 03                    2148 	.db	3
      0024FE 00 00 00 B9           2149 	.dw	0,(_SADEN)
      002502 53 41 44 45 4E        2150 	.ascii "SADEN"
      002507 00                    2151 	.db	0
      002508 01                    2152 	.db	1
      002509 00 00 02 AC           2153 	.dw	0,684
      00250D 0B                    2154 	.uleb128	11
      00250E 05                    2155 	.db	5
      00250F 03                    2156 	.db	3
      002510 00 00 00 BA           2157 	.dw	0,(_SADEN_1)
      002514 53 41 44 45 4E 5F 31  2158 	.ascii "SADEN_1"
      00251B 00                    2159 	.db	0
      00251C 01                    2160 	.db	1
      00251D 00 00 02 AC           2161 	.dw	0,684
      002521 0B                    2162 	.uleb128	11
      002522 05                    2163 	.db	5
      002523 03                    2164 	.db	3
      002524 00 00 00 BB           2165 	.dw	0,(_SADDR_1)
      002528 53 41 44 44 52 5F 31  2166 	.ascii "SADDR_1"
      00252F 00                    2167 	.db	0
      002530 01                    2168 	.db	1
      002531 00 00 02 AC           2169 	.dw	0,684
      002535 0B                    2170 	.uleb128	11
      002536 05                    2171 	.db	5
      002537 03                    2172 	.db	3
      002538 00 00 00 BC           2173 	.dw	0,(_I2DAT)
      00253C 49 32 44 41 54        2174 	.ascii "I2DAT"
      002541 00                    2175 	.db	0
      002542 01                    2176 	.db	1
      002543 00 00 02 AC           2177 	.dw	0,684
      002547 0B                    2178 	.uleb128	11
      002548 05                    2179 	.db	5
      002549 03                    2180 	.db	3
      00254A 00 00 00 BD           2181 	.dw	0,(_I2STAT)
      00254E 49 32 53 54 41 54     2182 	.ascii "I2STAT"
      002554 00                    2183 	.db	0
      002555 01                    2184 	.db	1
      002556 00 00 02 AC           2185 	.dw	0,684
      00255A 0B                    2186 	.uleb128	11
      00255B 05                    2187 	.db	5
      00255C 03                    2188 	.db	3
      00255D 00 00 00 BE           2189 	.dw	0,(_I2CLK)
      002561 49 32 43 4C 4B        2190 	.ascii "I2CLK"
      002566 00                    2191 	.db	0
      002567 01                    2192 	.db	1
      002568 00 00 02 AC           2193 	.dw	0,684
      00256C 0B                    2194 	.uleb128	11
      00256D 05                    2195 	.db	5
      00256E 03                    2196 	.db	3
      00256F 00 00 00 BF           2197 	.dw	0,(_I2TOC)
      002573 49 32 54 4F 43        2198 	.ascii "I2TOC"
      002578 00                    2199 	.db	0
      002579 01                    2200 	.db	1
      00257A 00 00 02 AC           2201 	.dw	0,684
      00257E 0B                    2202 	.uleb128	11
      00257F 05                    2203 	.db	5
      002580 03                    2204 	.db	3
      002581 00 00 00 C0           2205 	.dw	0,(_I2CON)
      002585 49 32 43 4F 4E        2206 	.ascii "I2CON"
      00258A 00                    2207 	.db	0
      00258B 01                    2208 	.db	1
      00258C 00 00 02 AC           2209 	.dw	0,684
      002590 0B                    2210 	.uleb128	11
      002591 05                    2211 	.db	5
      002592 03                    2212 	.db	3
      002593 00 00 00 C1           2213 	.dw	0,(_I2ADDR)
      002597 49 32 41 44 44 52     2214 	.ascii "I2ADDR"
      00259D 00                    2215 	.db	0
      00259E 01                    2216 	.db	1
      00259F 00 00 02 AC           2217 	.dw	0,684
      0025A3 0B                    2218 	.uleb128	11
      0025A4 05                    2219 	.db	5
      0025A5 03                    2220 	.db	3
      0025A6 00 00 00 C2           2221 	.dw	0,(_ADCRL)
      0025AA 41 44 43 52 4C        2222 	.ascii "ADCRL"
      0025AF 00                    2223 	.db	0
      0025B0 01                    2224 	.db	1
      0025B1 00 00 02 AC           2225 	.dw	0,684
      0025B5 0B                    2226 	.uleb128	11
      0025B6 05                    2227 	.db	5
      0025B7 03                    2228 	.db	3
      0025B8 00 00 00 C3           2229 	.dw	0,(_ADCRH)
      0025BC 41 44 43 52 48        2230 	.ascii "ADCRH"
      0025C1 00                    2231 	.db	0
      0025C2 01                    2232 	.db	1
      0025C3 00 00 02 AC           2233 	.dw	0,684
      0025C7 0B                    2234 	.uleb128	11
      0025C8 05                    2235 	.db	5
      0025C9 03                    2236 	.db	3
      0025CA 00 00 00 C4           2237 	.dw	0,(_T3CON)
      0025CE 54 33 43 4F 4E        2238 	.ascii "T3CON"
      0025D3 00                    2239 	.db	0
      0025D4 01                    2240 	.db	1
      0025D5 00 00 02 AC           2241 	.dw	0,684
      0025D9 0B                    2242 	.uleb128	11
      0025DA 05                    2243 	.db	5
      0025DB 03                    2244 	.db	3
      0025DC 00 00 00 C4           2245 	.dw	0,(_PWM4H)
      0025E0 50 57 4D 34 48        2246 	.ascii "PWM4H"
      0025E5 00                    2247 	.db	0
      0025E6 01                    2248 	.db	1
      0025E7 00 00 02 AC           2249 	.dw	0,684
      0025EB 0B                    2250 	.uleb128	11
      0025EC 05                    2251 	.db	5
      0025ED 03                    2252 	.db	3
      0025EE 00 00 00 C5           2253 	.dw	0,(_RL3)
      0025F2 52 4C 33              2254 	.ascii "RL3"
      0025F5 00                    2255 	.db	0
      0025F6 01                    2256 	.db	1
      0025F7 00 00 02 AC           2257 	.dw	0,684
      0025FB 0B                    2258 	.uleb128	11
      0025FC 05                    2259 	.db	5
      0025FD 03                    2260 	.db	3
      0025FE 00 00 00 C5           2261 	.dw	0,(_PWM5H)
      002602 50 57 4D 35 48        2262 	.ascii "PWM5H"
      002607 00                    2263 	.db	0
      002608 01                    2264 	.db	1
      002609 00 00 02 AC           2265 	.dw	0,684
      00260D 0B                    2266 	.uleb128	11
      00260E 05                    2267 	.db	5
      00260F 03                    2268 	.db	3
      002610 00 00 00 C6           2269 	.dw	0,(_RH3)
      002614 52 48 33              2270 	.ascii "RH3"
      002617 00                    2271 	.db	0
      002618 01                    2272 	.db	1
      002619 00 00 02 AC           2273 	.dw	0,684
      00261D 0B                    2274 	.uleb128	11
      00261E 05                    2275 	.db	5
      00261F 03                    2276 	.db	3
      002620 00 00 00 C6           2277 	.dw	0,(_PIOCON1)
      002624 50 49 4F 43 4F 4E 31  2278 	.ascii "PIOCON1"
      00262B 00                    2279 	.db	0
      00262C 01                    2280 	.db	1
      00262D 00 00 02 AC           2281 	.dw	0,684
      002631 0B                    2282 	.uleb128	11
      002632 05                    2283 	.db	5
      002633 03                    2284 	.db	3
      002634 00 00 00 C7           2285 	.dw	0,(_TA)
      002638 54 41                 2286 	.ascii "TA"
      00263A 00                    2287 	.db	0
      00263B 01                    2288 	.db	1
      00263C 00 00 02 AC           2289 	.dw	0,684
      002640 0B                    2290 	.uleb128	11
      002641 05                    2291 	.db	5
      002642 03                    2292 	.db	3
      002643 00 00 00 C8           2293 	.dw	0,(_T2CON)
      002647 54 32 43 4F 4E        2294 	.ascii "T2CON"
      00264C 00                    2295 	.db	0
      00264D 01                    2296 	.db	1
      00264E 00 00 02 AC           2297 	.dw	0,684
      002652 0B                    2298 	.uleb128	11
      002653 05                    2299 	.db	5
      002654 03                    2300 	.db	3
      002655 00 00 00 C9           2301 	.dw	0,(_T2MOD)
      002659 54 32 4D 4F 44        2302 	.ascii "T2MOD"
      00265E 00                    2303 	.db	0
      00265F 01                    2304 	.db	1
      002660 00 00 02 AC           2305 	.dw	0,684
      002664 0B                    2306 	.uleb128	11
      002665 05                    2307 	.db	5
      002666 03                    2308 	.db	3
      002667 00 00 00 CA           2309 	.dw	0,(_RCMP2L)
      00266B 52 43 4D 50 32 4C     2310 	.ascii "RCMP2L"
      002671 00                    2311 	.db	0
      002672 01                    2312 	.db	1
      002673 00 00 02 AC           2313 	.dw	0,684
      002677 0B                    2314 	.uleb128	11
      002678 05                    2315 	.db	5
      002679 03                    2316 	.db	3
      00267A 00 00 00 CB           2317 	.dw	0,(_RCMP2H)
      00267E 52 43 4D 50 32 48     2318 	.ascii "RCMP2H"
      002684 00                    2319 	.db	0
      002685 01                    2320 	.db	1
      002686 00 00 02 AC           2321 	.dw	0,684
      00268A 0B                    2322 	.uleb128	11
      00268B 05                    2323 	.db	5
      00268C 03                    2324 	.db	3
      00268D 00 00 00 CC           2325 	.dw	0,(_TL2)
      002691 54 4C 32              2326 	.ascii "TL2"
      002694 00                    2327 	.db	0
      002695 01                    2328 	.db	1
      002696 00 00 02 AC           2329 	.dw	0,684
      00269A 0B                    2330 	.uleb128	11
      00269B 05                    2331 	.db	5
      00269C 03                    2332 	.db	3
      00269D 00 00 00 CC           2333 	.dw	0,(_PWM4L)
      0026A1 50 57 4D 34 4C        2334 	.ascii "PWM4L"
      0026A6 00                    2335 	.db	0
      0026A7 01                    2336 	.db	1
      0026A8 00 00 02 AC           2337 	.dw	0,684
      0026AC 0B                    2338 	.uleb128	11
      0026AD 05                    2339 	.db	5
      0026AE 03                    2340 	.db	3
      0026AF 00 00 00 CD           2341 	.dw	0,(_TH2)
      0026B3 54 48 32              2342 	.ascii "TH2"
      0026B6 00                    2343 	.db	0
      0026B7 01                    2344 	.db	1
      0026B8 00 00 02 AC           2345 	.dw	0,684
      0026BC 0B                    2346 	.uleb128	11
      0026BD 05                    2347 	.db	5
      0026BE 03                    2348 	.db	3
      0026BF 00 00 00 CD           2349 	.dw	0,(_PWM5L)
      0026C3 50 57 4D 35 4C        2350 	.ascii "PWM5L"
      0026C8 00                    2351 	.db	0
      0026C9 01                    2352 	.db	1
      0026CA 00 00 02 AC           2353 	.dw	0,684
      0026CE 0B                    2354 	.uleb128	11
      0026CF 05                    2355 	.db	5
      0026D0 03                    2356 	.db	3
      0026D1 00 00 00 CE           2357 	.dw	0,(_ADCMPL)
      0026D5 41 44 43 4D 50 4C     2358 	.ascii "ADCMPL"
      0026DB 00                    2359 	.db	0
      0026DC 01                    2360 	.db	1
      0026DD 00 00 02 AC           2361 	.dw	0,684
      0026E1 0B                    2362 	.uleb128	11
      0026E2 05                    2363 	.db	5
      0026E3 03                    2364 	.db	3
      0026E4 00 00 00 CF           2365 	.dw	0,(_ADCMPH)
      0026E8 41 44 43 4D 50 48     2366 	.ascii "ADCMPH"
      0026EE 00                    2367 	.db	0
      0026EF 01                    2368 	.db	1
      0026F0 00 00 02 AC           2369 	.dw	0,684
      0026F4 0B                    2370 	.uleb128	11
      0026F5 05                    2371 	.db	5
      0026F6 03                    2372 	.db	3
      0026F7 00 00 00 D0           2373 	.dw	0,(_PSW)
      0026FB 50 53 57              2374 	.ascii "PSW"
      0026FE 00                    2375 	.db	0
      0026FF 01                    2376 	.db	1
      002700 00 00 02 AC           2377 	.dw	0,684
      002704 0B                    2378 	.uleb128	11
      002705 05                    2379 	.db	5
      002706 03                    2380 	.db	3
      002707 00 00 00 D1           2381 	.dw	0,(_PWMPH)
      00270B 50 57 4D 50 48        2382 	.ascii "PWMPH"
      002710 00                    2383 	.db	0
      002711 01                    2384 	.db	1
      002712 00 00 02 AC           2385 	.dw	0,684
      002716 0B                    2386 	.uleb128	11
      002717 05                    2387 	.db	5
      002718 03                    2388 	.db	3
      002719 00 00 00 D2           2389 	.dw	0,(_PWM0H)
      00271D 50 57 4D 30 48        2390 	.ascii "PWM0H"
      002722 00                    2391 	.db	0
      002723 01                    2392 	.db	1
      002724 00 00 02 AC           2393 	.dw	0,684
      002728 0B                    2394 	.uleb128	11
      002729 05                    2395 	.db	5
      00272A 03                    2396 	.db	3
      00272B 00 00 00 D3           2397 	.dw	0,(_PWM1H)
      00272F 50 57 4D 31 48        2398 	.ascii "PWM1H"
      002734 00                    2399 	.db	0
      002735 01                    2400 	.db	1
      002736 00 00 02 AC           2401 	.dw	0,684
      00273A 0B                    2402 	.uleb128	11
      00273B 05                    2403 	.db	5
      00273C 03                    2404 	.db	3
      00273D 00 00 00 D4           2405 	.dw	0,(_PWM2H)
      002741 50 57 4D 32 48        2406 	.ascii "PWM2H"
      002746 00                    2407 	.db	0
      002747 01                    2408 	.db	1
      002748 00 00 02 AC           2409 	.dw	0,684
      00274C 0B                    2410 	.uleb128	11
      00274D 05                    2411 	.db	5
      00274E 03                    2412 	.db	3
      00274F 00 00 00 D5           2413 	.dw	0,(_PWM3H)
      002753 50 57 4D 33 48        2414 	.ascii "PWM3H"
      002758 00                    2415 	.db	0
      002759 01                    2416 	.db	1
      00275A 00 00 02 AC           2417 	.dw	0,684
      00275E 0B                    2418 	.uleb128	11
      00275F 05                    2419 	.db	5
      002760 03                    2420 	.db	3
      002761 00 00 00 D6           2421 	.dw	0,(_PNP)
      002765 50 4E 50              2422 	.ascii "PNP"
      002768 00                    2423 	.db	0
      002769 01                    2424 	.db	1
      00276A 00 00 02 AC           2425 	.dw	0,684
      00276E 0B                    2426 	.uleb128	11
      00276F 05                    2427 	.db	5
      002770 03                    2428 	.db	3
      002771 00 00 00 D7           2429 	.dw	0,(_FBD)
      002775 46 42 44              2430 	.ascii "FBD"
      002778 00                    2431 	.db	0
      002779 01                    2432 	.db	1
      00277A 00 00 02 AC           2433 	.dw	0,684
      00277E 0B                    2434 	.uleb128	11
      00277F 05                    2435 	.db	5
      002780 03                    2436 	.db	3
      002781 00 00 00 D8           2437 	.dw	0,(_PWMCON0)
      002785 50 57 4D 43 4F 4E 30  2438 	.ascii "PWMCON0"
      00278C 00                    2439 	.db	0
      00278D 01                    2440 	.db	1
      00278E 00 00 02 AC           2441 	.dw	0,684
      002792 0B                    2442 	.uleb128	11
      002793 05                    2443 	.db	5
      002794 03                    2444 	.db	3
      002795 00 00 00 D9           2445 	.dw	0,(_PWMPL)
      002799 50 57 4D 50 4C        2446 	.ascii "PWMPL"
      00279E 00                    2447 	.db	0
      00279F 01                    2448 	.db	1
      0027A0 00 00 02 AC           2449 	.dw	0,684
      0027A4 0B                    2450 	.uleb128	11
      0027A5 05                    2451 	.db	5
      0027A6 03                    2452 	.db	3
      0027A7 00 00 00 DA           2453 	.dw	0,(_PWM0L)
      0027AB 50 57 4D 30 4C        2454 	.ascii "PWM0L"
      0027B0 00                    2455 	.db	0
      0027B1 01                    2456 	.db	1
      0027B2 00 00 02 AC           2457 	.dw	0,684
      0027B6 0B                    2458 	.uleb128	11
      0027B7 05                    2459 	.db	5
      0027B8 03                    2460 	.db	3
      0027B9 00 00 00 DB           2461 	.dw	0,(_PWM1L)
      0027BD 50 57 4D 31 4C        2462 	.ascii "PWM1L"
      0027C2 00                    2463 	.db	0
      0027C3 01                    2464 	.db	1
      0027C4 00 00 02 AC           2465 	.dw	0,684
      0027C8 0B                    2466 	.uleb128	11
      0027C9 05                    2467 	.db	5
      0027CA 03                    2468 	.db	3
      0027CB 00 00 00 DC           2469 	.dw	0,(_PWM2L)
      0027CF 50 57 4D 32 4C        2470 	.ascii "PWM2L"
      0027D4 00                    2471 	.db	0
      0027D5 01                    2472 	.db	1
      0027D6 00 00 02 AC           2473 	.dw	0,684
      0027DA 0B                    2474 	.uleb128	11
      0027DB 05                    2475 	.db	5
      0027DC 03                    2476 	.db	3
      0027DD 00 00 00 DD           2477 	.dw	0,(_PWM3L)
      0027E1 50 57 4D 33 4C        2478 	.ascii "PWM3L"
      0027E6 00                    2479 	.db	0
      0027E7 01                    2480 	.db	1
      0027E8 00 00 02 AC           2481 	.dw	0,684
      0027EC 0B                    2482 	.uleb128	11
      0027ED 05                    2483 	.db	5
      0027EE 03                    2484 	.db	3
      0027EF 00 00 00 DE           2485 	.dw	0,(_PIOCON0)
      0027F3 50 49 4F 43 4F 4E 30  2486 	.ascii "PIOCON0"
      0027FA 00                    2487 	.db	0
      0027FB 01                    2488 	.db	1
      0027FC 00 00 02 AC           2489 	.dw	0,684
      002800 0B                    2490 	.uleb128	11
      002801 05                    2491 	.db	5
      002802 03                    2492 	.db	3
      002803 00 00 00 DF           2493 	.dw	0,(_PWMCON1)
      002807 50 57 4D 43 4F 4E 31  2494 	.ascii "PWMCON1"
      00280E 00                    2495 	.db	0
      00280F 01                    2496 	.db	1
      002810 00 00 02 AC           2497 	.dw	0,684
      002814 0B                    2498 	.uleb128	11
      002815 05                    2499 	.db	5
      002816 03                    2500 	.db	3
      002817 00 00 00 E0           2501 	.dw	0,(_ACC)
      00281B 41 43 43              2502 	.ascii "ACC"
      00281E 00                    2503 	.db	0
      00281F 01                    2504 	.db	1
      002820 00 00 02 AC           2505 	.dw	0,684
      002824 0B                    2506 	.uleb128	11
      002825 05                    2507 	.db	5
      002826 03                    2508 	.db	3
      002827 00 00 00 E1           2509 	.dw	0,(_ADCCON1)
      00282B 41 44 43 43 4F 4E 31  2510 	.ascii "ADCCON1"
      002832 00                    2511 	.db	0
      002833 01                    2512 	.db	1
      002834 00 00 02 AC           2513 	.dw	0,684
      002838 0B                    2514 	.uleb128	11
      002839 05                    2515 	.db	5
      00283A 03                    2516 	.db	3
      00283B 00 00 00 E2           2517 	.dw	0,(_ADCCON2)
      00283F 41 44 43 43 4F 4E 32  2518 	.ascii "ADCCON2"
      002846 00                    2519 	.db	0
      002847 01                    2520 	.db	1
      002848 00 00 02 AC           2521 	.dw	0,684
      00284C 0B                    2522 	.uleb128	11
      00284D 05                    2523 	.db	5
      00284E 03                    2524 	.db	3
      00284F 00 00 00 E3           2525 	.dw	0,(_ADCDLY)
      002853 41 44 43 44 4C 59     2526 	.ascii "ADCDLY"
      002859 00                    2527 	.db	0
      00285A 01                    2528 	.db	1
      00285B 00 00 02 AC           2529 	.dw	0,684
      00285F 0B                    2530 	.uleb128	11
      002860 05                    2531 	.db	5
      002861 03                    2532 	.db	3
      002862 00 00 00 E4           2533 	.dw	0,(_C0L)
      002866 43 30 4C              2534 	.ascii "C0L"
      002869 00                    2535 	.db	0
      00286A 01                    2536 	.db	1
      00286B 00 00 02 AC           2537 	.dw	0,684
      00286F 0B                    2538 	.uleb128	11
      002870 05                    2539 	.db	5
      002871 03                    2540 	.db	3
      002872 00 00 00 E5           2541 	.dw	0,(_C0H)
      002876 43 30 48              2542 	.ascii "C0H"
      002879 00                    2543 	.db	0
      00287A 01                    2544 	.db	1
      00287B 00 00 02 AC           2545 	.dw	0,684
      00287F 0B                    2546 	.uleb128	11
      002880 05                    2547 	.db	5
      002881 03                    2548 	.db	3
      002882 00 00 00 E6           2549 	.dw	0,(_C1L)
      002886 43 31 4C              2550 	.ascii "C1L"
      002889 00                    2551 	.db	0
      00288A 01                    2552 	.db	1
      00288B 00 00 02 AC           2553 	.dw	0,684
      00288F 0B                    2554 	.uleb128	11
      002890 05                    2555 	.db	5
      002891 03                    2556 	.db	3
      002892 00 00 00 E7           2557 	.dw	0,(_C1H)
      002896 43 31 48              2558 	.ascii "C1H"
      002899 00                    2559 	.db	0
      00289A 01                    2560 	.db	1
      00289B 00 00 02 AC           2561 	.dw	0,684
      00289F 0B                    2562 	.uleb128	11
      0028A0 05                    2563 	.db	5
      0028A1 03                    2564 	.db	3
      0028A2 00 00 00 E8           2565 	.dw	0,(_ADCCON0)
      0028A6 41 44 43 43 4F 4E 30  2566 	.ascii "ADCCON0"
      0028AD 00                    2567 	.db	0
      0028AE 01                    2568 	.db	1
      0028AF 00 00 02 AC           2569 	.dw	0,684
      0028B3 0B                    2570 	.uleb128	11
      0028B4 05                    2571 	.db	5
      0028B5 03                    2572 	.db	3
      0028B6 00 00 00 E9           2573 	.dw	0,(_PICON)
      0028BA 50 49 43 4F 4E        2574 	.ascii "PICON"
      0028BF 00                    2575 	.db	0
      0028C0 01                    2576 	.db	1
      0028C1 00 00 02 AC           2577 	.dw	0,684
      0028C5 0B                    2578 	.uleb128	11
      0028C6 05                    2579 	.db	5
      0028C7 03                    2580 	.db	3
      0028C8 00 00 00 EA           2581 	.dw	0,(_PINEN)
      0028CC 50 49 4E 45 4E        2582 	.ascii "PINEN"
      0028D1 00                    2583 	.db	0
      0028D2 01                    2584 	.db	1
      0028D3 00 00 02 AC           2585 	.dw	0,684
      0028D7 0B                    2586 	.uleb128	11
      0028D8 05                    2587 	.db	5
      0028D9 03                    2588 	.db	3
      0028DA 00 00 00 EB           2589 	.dw	0,(_PIPEN)
      0028DE 50 49 50 45 4E        2590 	.ascii "PIPEN"
      0028E3 00                    2591 	.db	0
      0028E4 01                    2592 	.db	1
      0028E5 00 00 02 AC           2593 	.dw	0,684
      0028E9 0B                    2594 	.uleb128	11
      0028EA 05                    2595 	.db	5
      0028EB 03                    2596 	.db	3
      0028EC 00 00 00 EC           2597 	.dw	0,(_PIF)
      0028F0 50 49 46              2598 	.ascii "PIF"
      0028F3 00                    2599 	.db	0
      0028F4 01                    2600 	.db	1
      0028F5 00 00 02 AC           2601 	.dw	0,684
      0028F9 0B                    2602 	.uleb128	11
      0028FA 05                    2603 	.db	5
      0028FB 03                    2604 	.db	3
      0028FC 00 00 00 ED           2605 	.dw	0,(_C2L)
      002900 43 32 4C              2606 	.ascii "C2L"
      002903 00                    2607 	.db	0
      002904 01                    2608 	.db	1
      002905 00 00 02 AC           2609 	.dw	0,684
      002909 0B                    2610 	.uleb128	11
      00290A 05                    2611 	.db	5
      00290B 03                    2612 	.db	3
      00290C 00 00 00 EE           2613 	.dw	0,(_C2H)
      002910 43 32 48              2614 	.ascii "C2H"
      002913 00                    2615 	.db	0
      002914 01                    2616 	.db	1
      002915 00 00 02 AC           2617 	.dw	0,684
      002919 0B                    2618 	.uleb128	11
      00291A 05                    2619 	.db	5
      00291B 03                    2620 	.db	3
      00291C 00 00 00 EF           2621 	.dw	0,(_EIP)
      002920 45 49 50              2622 	.ascii "EIP"
      002923 00                    2623 	.db	0
      002924 01                    2624 	.db	1
      002925 00 00 02 AC           2625 	.dw	0,684
      002929 0B                    2626 	.uleb128	11
      00292A 05                    2627 	.db	5
      00292B 03                    2628 	.db	3
      00292C 00 00 00 F0           2629 	.dw	0,(_B)
      002930 42                    2630 	.ascii "B"
      002931 00                    2631 	.db	0
      002932 01                    2632 	.db	1
      002933 00 00 02 AC           2633 	.dw	0,684
      002937 0B                    2634 	.uleb128	11
      002938 05                    2635 	.db	5
      002939 03                    2636 	.db	3
      00293A 00 00 00 F1           2637 	.dw	0,(_CAPCON3)
      00293E 43 41 50 43 4F 4E 33  2638 	.ascii "CAPCON3"
      002945 00                    2639 	.db	0
      002946 01                    2640 	.db	1
      002947 00 00 02 AC           2641 	.dw	0,684
      00294B 0B                    2642 	.uleb128	11
      00294C 05                    2643 	.db	5
      00294D 03                    2644 	.db	3
      00294E 00 00 00 F2           2645 	.dw	0,(_CAPCON4)
      002952 43 41 50 43 4F 4E 34  2646 	.ascii "CAPCON4"
      002959 00                    2647 	.db	0
      00295A 01                    2648 	.db	1
      00295B 00 00 02 AC           2649 	.dw	0,684
      00295F 0B                    2650 	.uleb128	11
      002960 05                    2651 	.db	5
      002961 03                    2652 	.db	3
      002962 00 00 00 F3           2653 	.dw	0,(_SPCR)
      002966 53 50 43 52           2654 	.ascii "SPCR"
      00296A 00                    2655 	.db	0
      00296B 01                    2656 	.db	1
      00296C 00 00 02 AC           2657 	.dw	0,684
      002970 0B                    2658 	.uleb128	11
      002971 05                    2659 	.db	5
      002972 03                    2660 	.db	3
      002973 00 00 00 F3           2661 	.dw	0,(_SPCR2)
      002977 53 50 43 52 32        2662 	.ascii "SPCR2"
      00297C 00                    2663 	.db	0
      00297D 01                    2664 	.db	1
      00297E 00 00 02 AC           2665 	.dw	0,684
      002982 0B                    2666 	.uleb128	11
      002983 05                    2667 	.db	5
      002984 03                    2668 	.db	3
      002985 00 00 00 F4           2669 	.dw	0,(_SPSR)
      002989 53 50 53 52           2670 	.ascii "SPSR"
      00298D 00                    2671 	.db	0
      00298E 01                    2672 	.db	1
      00298F 00 00 02 AC           2673 	.dw	0,684
      002993 0B                    2674 	.uleb128	11
      002994 05                    2675 	.db	5
      002995 03                    2676 	.db	3
      002996 00 00 00 F5           2677 	.dw	0,(_SPDR)
      00299A 53 50 44 52           2678 	.ascii "SPDR"
      00299E 00                    2679 	.db	0
      00299F 01                    2680 	.db	1
      0029A0 00 00 02 AC           2681 	.dw	0,684
      0029A4 0B                    2682 	.uleb128	11
      0029A5 05                    2683 	.db	5
      0029A6 03                    2684 	.db	3
      0029A7 00 00 00 F6           2685 	.dw	0,(_AINDIDS)
      0029AB 41 49 4E 44 49 44 53  2686 	.ascii "AINDIDS"
      0029B2 00                    2687 	.db	0
      0029B3 01                    2688 	.db	1
      0029B4 00 00 02 AC           2689 	.dw	0,684
      0029B8 0B                    2690 	.uleb128	11
      0029B9 05                    2691 	.db	5
      0029BA 03                    2692 	.db	3
      0029BB 00 00 00 F7           2693 	.dw	0,(_EIPH)
      0029BF 45 49 50 48           2694 	.ascii "EIPH"
      0029C3 00                    2695 	.db	0
      0029C4 01                    2696 	.db	1
      0029C5 00 00 02 AC           2697 	.dw	0,684
      0029C9 0B                    2698 	.uleb128	11
      0029CA 05                    2699 	.db	5
      0029CB 03                    2700 	.db	3
      0029CC 00 00 00 F8           2701 	.dw	0,(_SCON_1)
      0029D0 53 43 4F 4E 5F 31     2702 	.ascii "SCON_1"
      0029D6 00                    2703 	.db	0
      0029D7 01                    2704 	.db	1
      0029D8 00 00 02 AC           2705 	.dw	0,684
      0029DC 0B                    2706 	.uleb128	11
      0029DD 05                    2707 	.db	5
      0029DE 03                    2708 	.db	3
      0029DF 00 00 00 F9           2709 	.dw	0,(_PDTEN)
      0029E3 50 44 54 45 4E        2710 	.ascii "PDTEN"
      0029E8 00                    2711 	.db	0
      0029E9 01                    2712 	.db	1
      0029EA 00 00 02 AC           2713 	.dw	0,684
      0029EE 0B                    2714 	.uleb128	11
      0029EF 05                    2715 	.db	5
      0029F0 03                    2716 	.db	3
      0029F1 00 00 00 FA           2717 	.dw	0,(_PDTCNT)
      0029F5 50 44 54 43 4E 54     2718 	.ascii "PDTCNT"
      0029FB 00                    2719 	.db	0
      0029FC 01                    2720 	.db	1
      0029FD 00 00 02 AC           2721 	.dw	0,684
      002A01 0B                    2722 	.uleb128	11
      002A02 05                    2723 	.db	5
      002A03 03                    2724 	.db	3
      002A04 00 00 00 FB           2725 	.dw	0,(_PMEN)
      002A08 50 4D 45 4E           2726 	.ascii "PMEN"
      002A0C 00                    2727 	.db	0
      002A0D 01                    2728 	.db	1
      002A0E 00 00 02 AC           2729 	.dw	0,684
      002A12 0B                    2730 	.uleb128	11
      002A13 05                    2731 	.db	5
      002A14 03                    2732 	.db	3
      002A15 00 00 00 FC           2733 	.dw	0,(_PMD)
      002A19 50 4D 44              2734 	.ascii "PMD"
      002A1C 00                    2735 	.db	0
      002A1D 01                    2736 	.db	1
      002A1E 00 00 02 AC           2737 	.dw	0,684
      002A22 0B                    2738 	.uleb128	11
      002A23 05                    2739 	.db	5
      002A24 03                    2740 	.db	3
      002A25 00 00 00 FE           2741 	.dw	0,(_EIP1)
      002A29 45 49 50 31           2742 	.ascii "EIP1"
      002A2D 00                    2743 	.db	0
      002A2E 01                    2744 	.db	1
      002A2F 00 00 02 AC           2745 	.dw	0,684
      002A33 0B                    2746 	.uleb128	11
      002A34 05                    2747 	.db	5
      002A35 03                    2748 	.db	3
      002A36 00 00 00 FF           2749 	.dw	0,(_EIPH1)
      002A3A 45 49 50 48 31        2750 	.ascii "EIPH1"
      002A3F 00                    2751 	.db	0
      002A40 01                    2752 	.db	1
      002A41 00 00 02 AC           2753 	.dw	0,684
      002A45 02                    2754 	.uleb128	2
      002A46 5F 73 62 69 74        2755 	.ascii "_sbit"
      002A4B 00                    2756 	.db	0
      002A4C 01                    2757 	.db	1
      002A4D 08                    2758 	.db	8
      002A4E 0C                    2759 	.uleb128	12
      002A4F 00 00 0C 07           2760 	.dw	0,3079
      002A53 0B                    2761 	.uleb128	11
      002A54 05                    2762 	.db	5
      002A55 03                    2763 	.db	3
      002A56 00 00 00 FF           2764 	.dw	0,(_SM0_1)
      002A5A 53 4D 30 5F 31        2765 	.ascii "SM0_1"
      002A5F 00                    2766 	.db	0
      002A60 01                    2767 	.db	1
      002A61 00 00 0C 10           2768 	.dw	0,3088
      002A65 0B                    2769 	.uleb128	11
      002A66 05                    2770 	.db	5
      002A67 03                    2771 	.db	3
      002A68 00 00 00 FF           2772 	.dw	0,(_FE_1)
      002A6C 46 45 5F 31           2773 	.ascii "FE_1"
      002A70 00                    2774 	.db	0
      002A71 01                    2775 	.db	1
      002A72 00 00 0C 10           2776 	.dw	0,3088
      002A76 0B                    2777 	.uleb128	11
      002A77 05                    2778 	.db	5
      002A78 03                    2779 	.db	3
      002A79 00 00 00 FE           2780 	.dw	0,(_SM1_1)
      002A7D 53 4D 31 5F 31        2781 	.ascii "SM1_1"
      002A82 00                    2782 	.db	0
      002A83 01                    2783 	.db	1
      002A84 00 00 0C 10           2784 	.dw	0,3088
      002A88 0B                    2785 	.uleb128	11
      002A89 05                    2786 	.db	5
      002A8A 03                    2787 	.db	3
      002A8B 00 00 00 FD           2788 	.dw	0,(_SM2_1)
      002A8F 53 4D 32 5F 31        2789 	.ascii "SM2_1"
      002A94 00                    2790 	.db	0
      002A95 01                    2791 	.db	1
      002A96 00 00 0C 10           2792 	.dw	0,3088
      002A9A 0B                    2793 	.uleb128	11
      002A9B 05                    2794 	.db	5
      002A9C 03                    2795 	.db	3
      002A9D 00 00 00 FC           2796 	.dw	0,(_REN_1)
      002AA1 52 45 4E 5F 31        2797 	.ascii "REN_1"
      002AA6 00                    2798 	.db	0
      002AA7 01                    2799 	.db	1
      002AA8 00 00 0C 10           2800 	.dw	0,3088
      002AAC 0B                    2801 	.uleb128	11
      002AAD 05                    2802 	.db	5
      002AAE 03                    2803 	.db	3
      002AAF 00 00 00 FB           2804 	.dw	0,(_TB8_1)
      002AB3 54 42 38 5F 31        2805 	.ascii "TB8_1"
      002AB8 00                    2806 	.db	0
      002AB9 01                    2807 	.db	1
      002ABA 00 00 0C 10           2808 	.dw	0,3088
      002ABE 0B                    2809 	.uleb128	11
      002ABF 05                    2810 	.db	5
      002AC0 03                    2811 	.db	3
      002AC1 00 00 00 FA           2812 	.dw	0,(_RB8_1)
      002AC5 52 42 38 5F 31        2813 	.ascii "RB8_1"
      002ACA 00                    2814 	.db	0
      002ACB 01                    2815 	.db	1
      002ACC 00 00 0C 10           2816 	.dw	0,3088
      002AD0 0B                    2817 	.uleb128	11
      002AD1 05                    2818 	.db	5
      002AD2 03                    2819 	.db	3
      002AD3 00 00 00 F9           2820 	.dw	0,(_TI_1)
      002AD7 54 49 5F 31           2821 	.ascii "TI_1"
      002ADB 00                    2822 	.db	0
      002ADC 01                    2823 	.db	1
      002ADD 00 00 0C 10           2824 	.dw	0,3088
      002AE1 0B                    2825 	.uleb128	11
      002AE2 05                    2826 	.db	5
      002AE3 03                    2827 	.db	3
      002AE4 00 00 00 F8           2828 	.dw	0,(_RI_1)
      002AE8 52 49 5F 31           2829 	.ascii "RI_1"
      002AEC 00                    2830 	.db	0
      002AED 01                    2831 	.db	1
      002AEE 00 00 0C 10           2832 	.dw	0,3088
      002AF2 0B                    2833 	.uleb128	11
      002AF3 05                    2834 	.db	5
      002AF4 03                    2835 	.db	3
      002AF5 00 00 00 EF           2836 	.dw	0,(_ADCF)
      002AF9 41 44 43 46           2837 	.ascii "ADCF"
      002AFD 00                    2838 	.db	0
      002AFE 01                    2839 	.db	1
      002AFF 00 00 0C 10           2840 	.dw	0,3088
      002B03 0B                    2841 	.uleb128	11
      002B04 05                    2842 	.db	5
      002B05 03                    2843 	.db	3
      002B06 00 00 00 EE           2844 	.dw	0,(_ADCS)
      002B0A 41 44 43 53           2845 	.ascii "ADCS"
      002B0E 00                    2846 	.db	0
      002B0F 01                    2847 	.db	1
      002B10 00 00 0C 10           2848 	.dw	0,3088
      002B14 0B                    2849 	.uleb128	11
      002B15 05                    2850 	.db	5
      002B16 03                    2851 	.db	3
      002B17 00 00 00 ED           2852 	.dw	0,(_ETGSEL1)
      002B1B 45 54 47 53 45 4C 31  2853 	.ascii "ETGSEL1"
      002B22 00                    2854 	.db	0
      002B23 01                    2855 	.db	1
      002B24 00 00 0C 10           2856 	.dw	0,3088
      002B28 0B                    2857 	.uleb128	11
      002B29 05                    2858 	.db	5
      002B2A 03                    2859 	.db	3
      002B2B 00 00 00 EC           2860 	.dw	0,(_ETGSEL0)
      002B2F 45 54 47 53 45 4C 30  2861 	.ascii "ETGSEL0"
      002B36 00                    2862 	.db	0
      002B37 01                    2863 	.db	1
      002B38 00 00 0C 10           2864 	.dw	0,3088
      002B3C 0B                    2865 	.uleb128	11
      002B3D 05                    2866 	.db	5
      002B3E 03                    2867 	.db	3
      002B3F 00 00 00 EB           2868 	.dw	0,(_ADCHS3)
      002B43 41 44 43 48 53 33     2869 	.ascii "ADCHS3"
      002B49 00                    2870 	.db	0
      002B4A 01                    2871 	.db	1
      002B4B 00 00 0C 10           2872 	.dw	0,3088
      002B4F 0B                    2873 	.uleb128	11
      002B50 05                    2874 	.db	5
      002B51 03                    2875 	.db	3
      002B52 00 00 00 EA           2876 	.dw	0,(_ADCHS2)
      002B56 41 44 43 48 53 32     2877 	.ascii "ADCHS2"
      002B5C 00                    2878 	.db	0
      002B5D 01                    2879 	.db	1
      002B5E 00 00 0C 10           2880 	.dw	0,3088
      002B62 0B                    2881 	.uleb128	11
      002B63 05                    2882 	.db	5
      002B64 03                    2883 	.db	3
      002B65 00 00 00 E9           2884 	.dw	0,(_ADCHS1)
      002B69 41 44 43 48 53 31     2885 	.ascii "ADCHS1"
      002B6F 00                    2886 	.db	0
      002B70 01                    2887 	.db	1
      002B71 00 00 0C 10           2888 	.dw	0,3088
      002B75 0B                    2889 	.uleb128	11
      002B76 05                    2890 	.db	5
      002B77 03                    2891 	.db	3
      002B78 00 00 00 E8           2892 	.dw	0,(_ADCHS0)
      002B7C 41 44 43 48 53 30     2893 	.ascii "ADCHS0"
      002B82 00                    2894 	.db	0
      002B83 01                    2895 	.db	1
      002B84 00 00 0C 10           2896 	.dw	0,3088
      002B88 0B                    2897 	.uleb128	11
      002B89 05                    2898 	.db	5
      002B8A 03                    2899 	.db	3
      002B8B 00 00 00 DF           2900 	.dw	0,(_PWMRUN)
      002B8F 50 57 4D 52 55 4E     2901 	.ascii "PWMRUN"
      002B95 00                    2902 	.db	0
      002B96 01                    2903 	.db	1
      002B97 00 00 0C 10           2904 	.dw	0,3088
      002B9B 0B                    2905 	.uleb128	11
      002B9C 05                    2906 	.db	5
      002B9D 03                    2907 	.db	3
      002B9E 00 00 00 DE           2908 	.dw	0,(_LOAD)
      002BA2 4C 4F 41 44           2909 	.ascii "LOAD"
      002BA6 00                    2910 	.db	0
      002BA7 01                    2911 	.db	1
      002BA8 00 00 0C 10           2912 	.dw	0,3088
      002BAC 0B                    2913 	.uleb128	11
      002BAD 05                    2914 	.db	5
      002BAE 03                    2915 	.db	3
      002BAF 00 00 00 DD           2916 	.dw	0,(_PWMF)
      002BB3 50 57 4D 46           2917 	.ascii "PWMF"
      002BB7 00                    2918 	.db	0
      002BB8 01                    2919 	.db	1
      002BB9 00 00 0C 10           2920 	.dw	0,3088
      002BBD 0B                    2921 	.uleb128	11
      002BBE 05                    2922 	.db	5
      002BBF 03                    2923 	.db	3
      002BC0 00 00 00 DC           2924 	.dw	0,(_CLRPWM)
      002BC4 43 4C 52 50 57 4D     2925 	.ascii "CLRPWM"
      002BCA 00                    2926 	.db	0
      002BCB 01                    2927 	.db	1
      002BCC 00 00 0C 10           2928 	.dw	0,3088
      002BD0 0B                    2929 	.uleb128	11
      002BD1 05                    2930 	.db	5
      002BD2 03                    2931 	.db	3
      002BD3 00 00 00 D7           2932 	.dw	0,(_CY)
      002BD7 43 59                 2933 	.ascii "CY"
      002BD9 00                    2934 	.db	0
      002BDA 01                    2935 	.db	1
      002BDB 00 00 0C 10           2936 	.dw	0,3088
      002BDF 0B                    2937 	.uleb128	11
      002BE0 05                    2938 	.db	5
      002BE1 03                    2939 	.db	3
      002BE2 00 00 00 D6           2940 	.dw	0,(_AC)
      002BE6 41 43                 2941 	.ascii "AC"
      002BE8 00                    2942 	.db	0
      002BE9 01                    2943 	.db	1
      002BEA 00 00 0C 10           2944 	.dw	0,3088
      002BEE 0B                    2945 	.uleb128	11
      002BEF 05                    2946 	.db	5
      002BF0 03                    2947 	.db	3
      002BF1 00 00 00 D5           2948 	.dw	0,(_F0)
      002BF5 46 30                 2949 	.ascii "F0"
      002BF7 00                    2950 	.db	0
      002BF8 01                    2951 	.db	1
      002BF9 00 00 0C 10           2952 	.dw	0,3088
      002BFD 0B                    2953 	.uleb128	11
      002BFE 05                    2954 	.db	5
      002BFF 03                    2955 	.db	3
      002C00 00 00 00 D4           2956 	.dw	0,(_RS1)
      002C04 52 53 31              2957 	.ascii "RS1"
      002C07 00                    2958 	.db	0
      002C08 01                    2959 	.db	1
      002C09 00 00 0C 10           2960 	.dw	0,3088
      002C0D 0B                    2961 	.uleb128	11
      002C0E 05                    2962 	.db	5
      002C0F 03                    2963 	.db	3
      002C10 00 00 00 D3           2964 	.dw	0,(_RS0)
      002C14 52 53 30              2965 	.ascii "RS0"
      002C17 00                    2966 	.db	0
      002C18 01                    2967 	.db	1
      002C19 00 00 0C 10           2968 	.dw	0,3088
      002C1D 0B                    2969 	.uleb128	11
      002C1E 05                    2970 	.db	5
      002C1F 03                    2971 	.db	3
      002C20 00 00 00 D2           2972 	.dw	0,(_OV)
      002C24 4F 56                 2973 	.ascii "OV"
      002C26 00                    2974 	.db	0
      002C27 01                    2975 	.db	1
      002C28 00 00 0C 10           2976 	.dw	0,3088
      002C2C 0B                    2977 	.uleb128	11
      002C2D 05                    2978 	.db	5
      002C2E 03                    2979 	.db	3
      002C2F 00 00 00 D0           2980 	.dw	0,(_P)
      002C33 50                    2981 	.ascii "P"
      002C34 00                    2982 	.db	0
      002C35 01                    2983 	.db	1
      002C36 00 00 0C 10           2984 	.dw	0,3088
      002C3A 0B                    2985 	.uleb128	11
      002C3B 05                    2986 	.db	5
      002C3C 03                    2987 	.db	3
      002C3D 00 00 00 CF           2988 	.dw	0,(_TF2)
      002C41 54 46 32              2989 	.ascii "TF2"
      002C44 00                    2990 	.db	0
      002C45 01                    2991 	.db	1
      002C46 00 00 0C 10           2992 	.dw	0,3088
      002C4A 0B                    2993 	.uleb128	11
      002C4B 05                    2994 	.db	5
      002C4C 03                    2995 	.db	3
      002C4D 00 00 00 CA           2996 	.dw	0,(_TR2)
      002C51 54 52 32              2997 	.ascii "TR2"
      002C54 00                    2998 	.db	0
      002C55 01                    2999 	.db	1
      002C56 00 00 0C 10           3000 	.dw	0,3088
      002C5A 0B                    3001 	.uleb128	11
      002C5B 05                    3002 	.db	5
      002C5C 03                    3003 	.db	3
      002C5D 00 00 00 C8           3004 	.dw	0,(_CM_RL2)
      002C61 43 4D 5F 52 4C 32     3005 	.ascii "CM_RL2"
      002C67 00                    3006 	.db	0
      002C68 01                    3007 	.db	1
      002C69 00 00 0C 10           3008 	.dw	0,3088
      002C6D 0B                    3009 	.uleb128	11
      002C6E 05                    3010 	.db	5
      002C6F 03                    3011 	.db	3
      002C70 00 00 00 C6           3012 	.dw	0,(_I2CEN)
      002C74 49 32 43 45 4E        3013 	.ascii "I2CEN"
      002C79 00                    3014 	.db	0
      002C7A 01                    3015 	.db	1
      002C7B 00 00 0C 10           3016 	.dw	0,3088
      002C7F 0B                    3017 	.uleb128	11
      002C80 05                    3018 	.db	5
      002C81 03                    3019 	.db	3
      002C82 00 00 00 C5           3020 	.dw	0,(_STA)
      002C86 53 54 41              3021 	.ascii "STA"
      002C89 00                    3022 	.db	0
      002C8A 01                    3023 	.db	1
      002C8B 00 00 0C 10           3024 	.dw	0,3088
      002C8F 0B                    3025 	.uleb128	11
      002C90 05                    3026 	.db	5
      002C91 03                    3027 	.db	3
      002C92 00 00 00 C4           3028 	.dw	0,(_STO)
      002C96 53 54 4F              3029 	.ascii "STO"
      002C99 00                    3030 	.db	0
      002C9A 01                    3031 	.db	1
      002C9B 00 00 0C 10           3032 	.dw	0,3088
      002C9F 0B                    3033 	.uleb128	11
      002CA0 05                    3034 	.db	5
      002CA1 03                    3035 	.db	3
      002CA2 00 00 00 C3           3036 	.dw	0,(_SI)
      002CA6 53 49                 3037 	.ascii "SI"
      002CA8 00                    3038 	.db	0
      002CA9 01                    3039 	.db	1
      002CAA 00 00 0C 10           3040 	.dw	0,3088
      002CAE 0B                    3041 	.uleb128	11
      002CAF 05                    3042 	.db	5
      002CB0 03                    3043 	.db	3
      002CB1 00 00 00 C2           3044 	.dw	0,(_AA)
      002CB5 41 41                 3045 	.ascii "AA"
      002CB7 00                    3046 	.db	0
      002CB8 01                    3047 	.db	1
      002CB9 00 00 0C 10           3048 	.dw	0,3088
      002CBD 0B                    3049 	.uleb128	11
      002CBE 05                    3050 	.db	5
      002CBF 03                    3051 	.db	3
      002CC0 00 00 00 C0           3052 	.dw	0,(_I2CPX)
      002CC4 49 32 43 50 58        3053 	.ascii "I2CPX"
      002CC9 00                    3054 	.db	0
      002CCA 01                    3055 	.db	1
      002CCB 00 00 0C 10           3056 	.dw	0,3088
      002CCF 0B                    3057 	.uleb128	11
      002CD0 05                    3058 	.db	5
      002CD1 03                    3059 	.db	3
      002CD2 00 00 00 BE           3060 	.dw	0,(_PADC)
      002CD6 50 41 44 43           3061 	.ascii "PADC"
      002CDA 00                    3062 	.db	0
      002CDB 01                    3063 	.db	1
      002CDC 00 00 0C 10           3064 	.dw	0,3088
      002CE0 0B                    3065 	.uleb128	11
      002CE1 05                    3066 	.db	5
      002CE2 03                    3067 	.db	3
      002CE3 00 00 00 BD           3068 	.dw	0,(_PBOD)
      002CE7 50 42 4F 44           3069 	.ascii "PBOD"
      002CEB 00                    3070 	.db	0
      002CEC 01                    3071 	.db	1
      002CED 00 00 0C 10           3072 	.dw	0,3088
      002CF1 0B                    3073 	.uleb128	11
      002CF2 05                    3074 	.db	5
      002CF3 03                    3075 	.db	3
      002CF4 00 00 00 BC           3076 	.dw	0,(_PS)
      002CF8 50 53                 3077 	.ascii "PS"
      002CFA 00                    3078 	.db	0
      002CFB 01                    3079 	.db	1
      002CFC 00 00 0C 10           3080 	.dw	0,3088
      002D00 0B                    3081 	.uleb128	11
      002D01 05                    3082 	.db	5
      002D02 03                    3083 	.db	3
      002D03 00 00 00 BB           3084 	.dw	0,(_PT1)
      002D07 50 54 31              3085 	.ascii "PT1"
      002D0A 00                    3086 	.db	0
      002D0B 01                    3087 	.db	1
      002D0C 00 00 0C 10           3088 	.dw	0,3088
      002D10 0B                    3089 	.uleb128	11
      002D11 05                    3090 	.db	5
      002D12 03                    3091 	.db	3
      002D13 00 00 00 BA           3092 	.dw	0,(_PX1)
      002D17 50 58 31              3093 	.ascii "PX1"
      002D1A 00                    3094 	.db	0
      002D1B 01                    3095 	.db	1
      002D1C 00 00 0C 10           3096 	.dw	0,3088
      002D20 0B                    3097 	.uleb128	11
      002D21 05                    3098 	.db	5
      002D22 03                    3099 	.db	3
      002D23 00 00 00 B9           3100 	.dw	0,(_PT0)
      002D27 50 54 30              3101 	.ascii "PT0"
      002D2A 00                    3102 	.db	0
      002D2B 01                    3103 	.db	1
      002D2C 00 00 0C 10           3104 	.dw	0,3088
      002D30 0B                    3105 	.uleb128	11
      002D31 05                    3106 	.db	5
      002D32 03                    3107 	.db	3
      002D33 00 00 00 B8           3108 	.dw	0,(_PX0)
      002D37 50 58 30              3109 	.ascii "PX0"
      002D3A 00                    3110 	.db	0
      002D3B 01                    3111 	.db	1
      002D3C 00 00 0C 10           3112 	.dw	0,3088
      002D40 0B                    3113 	.uleb128	11
      002D41 05                    3114 	.db	5
      002D42 03                    3115 	.db	3
      002D43 00 00 00 B0           3116 	.dw	0,(_P30)
      002D47 50 33 30              3117 	.ascii "P30"
      002D4A 00                    3118 	.db	0
      002D4B 01                    3119 	.db	1
      002D4C 00 00 0C 10           3120 	.dw	0,3088
      002D50 0B                    3121 	.uleb128	11
      002D51 05                    3122 	.db	5
      002D52 03                    3123 	.db	3
      002D53 00 00 00 AF           3124 	.dw	0,(_EA)
      002D57 45 41                 3125 	.ascii "EA"
      002D59 00                    3126 	.db	0
      002D5A 01                    3127 	.db	1
      002D5B 00 00 0C 10           3128 	.dw	0,3088
      002D5F 0B                    3129 	.uleb128	11
      002D60 05                    3130 	.db	5
      002D61 03                    3131 	.db	3
      002D62 00 00 00 AE           3132 	.dw	0,(_EADC)
      002D66 45 41 44 43           3133 	.ascii "EADC"
      002D6A 00                    3134 	.db	0
      002D6B 01                    3135 	.db	1
      002D6C 00 00 0C 10           3136 	.dw	0,3088
      002D70 0B                    3137 	.uleb128	11
      002D71 05                    3138 	.db	5
      002D72 03                    3139 	.db	3
      002D73 00 00 00 AD           3140 	.dw	0,(_EBOD)
      002D77 45 42 4F 44           3141 	.ascii "EBOD"
      002D7B 00                    3142 	.db	0
      002D7C 01                    3143 	.db	1
      002D7D 00 00 0C 10           3144 	.dw	0,3088
      002D81 0B                    3145 	.uleb128	11
      002D82 05                    3146 	.db	5
      002D83 03                    3147 	.db	3
      002D84 00 00 00 AC           3148 	.dw	0,(_ES)
      002D88 45 53                 3149 	.ascii "ES"
      002D8A 00                    3150 	.db	0
      002D8B 01                    3151 	.db	1
      002D8C 00 00 0C 10           3152 	.dw	0,3088
      002D90 0B                    3153 	.uleb128	11
      002D91 05                    3154 	.db	5
      002D92 03                    3155 	.db	3
      002D93 00 00 00 AB           3156 	.dw	0,(_ET1)
      002D97 45 54 31              3157 	.ascii "ET1"
      002D9A 00                    3158 	.db	0
      002D9B 01                    3159 	.db	1
      002D9C 00 00 0C 10           3160 	.dw	0,3088
      002DA0 0B                    3161 	.uleb128	11
      002DA1 05                    3162 	.db	5
      002DA2 03                    3163 	.db	3
      002DA3 00 00 00 AA           3164 	.dw	0,(_EX1)
      002DA7 45 58 31              3165 	.ascii "EX1"
      002DAA 00                    3166 	.db	0
      002DAB 01                    3167 	.db	1
      002DAC 00 00 0C 10           3168 	.dw	0,3088
      002DB0 0B                    3169 	.uleb128	11
      002DB1 05                    3170 	.db	5
      002DB2 03                    3171 	.db	3
      002DB3 00 00 00 A9           3172 	.dw	0,(_ET0)
      002DB7 45 54 30              3173 	.ascii "ET0"
      002DBA 00                    3174 	.db	0
      002DBB 01                    3175 	.db	1
      002DBC 00 00 0C 10           3176 	.dw	0,3088
      002DC0 0B                    3177 	.uleb128	11
      002DC1 05                    3178 	.db	5
      002DC2 03                    3179 	.db	3
      002DC3 00 00 00 A8           3180 	.dw	0,(_EX0)
      002DC7 45 58 30              3181 	.ascii "EX0"
      002DCA 00                    3182 	.db	0
      002DCB 01                    3183 	.db	1
      002DCC 00 00 0C 10           3184 	.dw	0,3088
      002DD0 0B                    3185 	.uleb128	11
      002DD1 05                    3186 	.db	5
      002DD2 03                    3187 	.db	3
      002DD3 00 00 00 A0           3188 	.dw	0,(_P20)
      002DD7 50 32 30              3189 	.ascii "P20"
      002DDA 00                    3190 	.db	0
      002DDB 01                    3191 	.db	1
      002DDC 00 00 0C 10           3192 	.dw	0,3088
      002DE0 0B                    3193 	.uleb128	11
      002DE1 05                    3194 	.db	5
      002DE2 03                    3195 	.db	3
      002DE3 00 00 00 9F           3196 	.dw	0,(_SM0)
      002DE7 53 4D 30              3197 	.ascii "SM0"
      002DEA 00                    3198 	.db	0
      002DEB 01                    3199 	.db	1
      002DEC 00 00 0C 10           3200 	.dw	0,3088
      002DF0 0B                    3201 	.uleb128	11
      002DF1 05                    3202 	.db	5
      002DF2 03                    3203 	.db	3
      002DF3 00 00 00 9F           3204 	.dw	0,(_FE)
      002DF7 46 45                 3205 	.ascii "FE"
      002DF9 00                    3206 	.db	0
      002DFA 01                    3207 	.db	1
      002DFB 00 00 0C 10           3208 	.dw	0,3088
      002DFF 0B                    3209 	.uleb128	11
      002E00 05                    3210 	.db	5
      002E01 03                    3211 	.db	3
      002E02 00 00 00 9E           3212 	.dw	0,(_SM1)
      002E06 53 4D 31              3213 	.ascii "SM1"
      002E09 00                    3214 	.db	0
      002E0A 01                    3215 	.db	1
      002E0B 00 00 0C 10           3216 	.dw	0,3088
      002E0F 0B                    3217 	.uleb128	11
      002E10 05                    3218 	.db	5
      002E11 03                    3219 	.db	3
      002E12 00 00 00 9D           3220 	.dw	0,(_SM2)
      002E16 53 4D 32              3221 	.ascii "SM2"
      002E19 00                    3222 	.db	0
      002E1A 01                    3223 	.db	1
      002E1B 00 00 0C 10           3224 	.dw	0,3088
      002E1F 0B                    3225 	.uleb128	11
      002E20 05                    3226 	.db	5
      002E21 03                    3227 	.db	3
      002E22 00 00 00 9C           3228 	.dw	0,(_REN)
      002E26 52 45 4E              3229 	.ascii "REN"
      002E29 00                    3230 	.db	0
      002E2A 01                    3231 	.db	1
      002E2B 00 00 0C 10           3232 	.dw	0,3088
      002E2F 0B                    3233 	.uleb128	11
      002E30 05                    3234 	.db	5
      002E31 03                    3235 	.db	3
      002E32 00 00 00 9B           3236 	.dw	0,(_TB8)
      002E36 54 42 38              3237 	.ascii "TB8"
      002E39 00                    3238 	.db	0
      002E3A 01                    3239 	.db	1
      002E3B 00 00 0C 10           3240 	.dw	0,3088
      002E3F 0B                    3241 	.uleb128	11
      002E40 05                    3242 	.db	5
      002E41 03                    3243 	.db	3
      002E42 00 00 00 9A           3244 	.dw	0,(_RB8)
      002E46 52 42 38              3245 	.ascii "RB8"
      002E49 00                    3246 	.db	0
      002E4A 01                    3247 	.db	1
      002E4B 00 00 0C 10           3248 	.dw	0,3088
      002E4F 0B                    3249 	.uleb128	11
      002E50 05                    3250 	.db	5
      002E51 03                    3251 	.db	3
      002E52 00 00 00 99           3252 	.dw	0,(_TI)
      002E56 54 49                 3253 	.ascii "TI"
      002E58 00                    3254 	.db	0
      002E59 01                    3255 	.db	1
      002E5A 00 00 0C 10           3256 	.dw	0,3088
      002E5E 0B                    3257 	.uleb128	11
      002E5F 05                    3258 	.db	5
      002E60 03                    3259 	.db	3
      002E61 00 00 00 98           3260 	.dw	0,(_RI)
      002E65 52 49                 3261 	.ascii "RI"
      002E67 00                    3262 	.db	0
      002E68 01                    3263 	.db	1
      002E69 00 00 0C 10           3264 	.dw	0,3088
      002E6D 0B                    3265 	.uleb128	11
      002E6E 05                    3266 	.db	5
      002E6F 03                    3267 	.db	3
      002E70 00 00 00 97           3268 	.dw	0,(_P17)
      002E74 50 31 37              3269 	.ascii "P17"
      002E77 00                    3270 	.db	0
      002E78 01                    3271 	.db	1
      002E79 00 00 0C 10           3272 	.dw	0,3088
      002E7D 0B                    3273 	.uleb128	11
      002E7E 05                    3274 	.db	5
      002E7F 03                    3275 	.db	3
      002E80 00 00 00 96           3276 	.dw	0,(_P16)
      002E84 50 31 36              3277 	.ascii "P16"
      002E87 00                    3278 	.db	0
      002E88 01                    3279 	.db	1
      002E89 00 00 0C 10           3280 	.dw	0,3088
      002E8D 0B                    3281 	.uleb128	11
      002E8E 05                    3282 	.db	5
      002E8F 03                    3283 	.db	3
      002E90 00 00 00 96           3284 	.dw	0,(_TXD_1)
      002E94 54 58 44 5F 31        3285 	.ascii "TXD_1"
      002E99 00                    3286 	.db	0
      002E9A 01                    3287 	.db	1
      002E9B 00 00 0C 10           3288 	.dw	0,3088
      002E9F 0B                    3289 	.uleb128	11
      002EA0 05                    3290 	.db	5
      002EA1 03                    3291 	.db	3
      002EA2 00 00 00 95           3292 	.dw	0,(_P15)
      002EA6 50 31 35              3293 	.ascii "P15"
      002EA9 00                    3294 	.db	0
      002EAA 01                    3295 	.db	1
      002EAB 00 00 0C 10           3296 	.dw	0,3088
      002EAF 0B                    3297 	.uleb128	11
      002EB0 05                    3298 	.db	5
      002EB1 03                    3299 	.db	3
      002EB2 00 00 00 94           3300 	.dw	0,(_P14)
      002EB6 50 31 34              3301 	.ascii "P14"
      002EB9 00                    3302 	.db	0
      002EBA 01                    3303 	.db	1
      002EBB 00 00 0C 10           3304 	.dw	0,3088
      002EBF 0B                    3305 	.uleb128	11
      002EC0 05                    3306 	.db	5
      002EC1 03                    3307 	.db	3
      002EC2 00 00 00 94           3308 	.dw	0,(_SDA)
      002EC6 53 44 41              3309 	.ascii "SDA"
      002EC9 00                    3310 	.db	0
      002ECA 01                    3311 	.db	1
      002ECB 00 00 0C 10           3312 	.dw	0,3088
      002ECF 0B                    3313 	.uleb128	11
      002ED0 05                    3314 	.db	5
      002ED1 03                    3315 	.db	3
      002ED2 00 00 00 93           3316 	.dw	0,(_P13)
      002ED6 50 31 33              3317 	.ascii "P13"
      002ED9 00                    3318 	.db	0
      002EDA 01                    3319 	.db	1
      002EDB 00 00 0C 10           3320 	.dw	0,3088
      002EDF 0B                    3321 	.uleb128	11
      002EE0 05                    3322 	.db	5
      002EE1 03                    3323 	.db	3
      002EE2 00 00 00 93           3324 	.dw	0,(_SCL)
      002EE6 53 43 4C              3325 	.ascii "SCL"
      002EE9 00                    3326 	.db	0
      002EEA 01                    3327 	.db	1
      002EEB 00 00 0C 10           3328 	.dw	0,3088
      002EEF 0B                    3329 	.uleb128	11
      002EF0 05                    3330 	.db	5
      002EF1 03                    3331 	.db	3
      002EF2 00 00 00 92           3332 	.dw	0,(_P12)
      002EF6 50 31 32              3333 	.ascii "P12"
      002EF9 00                    3334 	.db	0
      002EFA 01                    3335 	.db	1
      002EFB 00 00 0C 10           3336 	.dw	0,3088
      002EFF 0B                    3337 	.uleb128	11
      002F00 05                    3338 	.db	5
      002F01 03                    3339 	.db	3
      002F02 00 00 00 91           3340 	.dw	0,(_P11)
      002F06 50 31 31              3341 	.ascii "P11"
      002F09 00                    3342 	.db	0
      002F0A 01                    3343 	.db	1
      002F0B 00 00 0C 10           3344 	.dw	0,3088
      002F0F 0B                    3345 	.uleb128	11
      002F10 05                    3346 	.db	5
      002F11 03                    3347 	.db	3
      002F12 00 00 00 90           3348 	.dw	0,(_P10)
      002F16 50 31 30              3349 	.ascii "P10"
      002F19 00                    3350 	.db	0
      002F1A 01                    3351 	.db	1
      002F1B 00 00 0C 10           3352 	.dw	0,3088
      002F1F 0B                    3353 	.uleb128	11
      002F20 05                    3354 	.db	5
      002F21 03                    3355 	.db	3
      002F22 00 00 00 8F           3356 	.dw	0,(_TF1)
      002F26 54 46 31              3357 	.ascii "TF1"
      002F29 00                    3358 	.db	0
      002F2A 01                    3359 	.db	1
      002F2B 00 00 0C 10           3360 	.dw	0,3088
      002F2F 0B                    3361 	.uleb128	11
      002F30 05                    3362 	.db	5
      002F31 03                    3363 	.db	3
      002F32 00 00 00 8E           3364 	.dw	0,(_TR1)
      002F36 54 52 31              3365 	.ascii "TR1"
      002F39 00                    3366 	.db	0
      002F3A 01                    3367 	.db	1
      002F3B 00 00 0C 10           3368 	.dw	0,3088
      002F3F 0B                    3369 	.uleb128	11
      002F40 05                    3370 	.db	5
      002F41 03                    3371 	.db	3
      002F42 00 00 00 8D           3372 	.dw	0,(_TF0)
      002F46 54 46 30              3373 	.ascii "TF0"
      002F49 00                    3374 	.db	0
      002F4A 01                    3375 	.db	1
      002F4B 00 00 0C 10           3376 	.dw	0,3088
      002F4F 0B                    3377 	.uleb128	11
      002F50 05                    3378 	.db	5
      002F51 03                    3379 	.db	3
      002F52 00 00 00 8C           3380 	.dw	0,(_TR0)
      002F56 54 52 30              3381 	.ascii "TR0"
      002F59 00                    3382 	.db	0
      002F5A 01                    3383 	.db	1
      002F5B 00 00 0C 10           3384 	.dw	0,3088
      002F5F 0B                    3385 	.uleb128	11
      002F60 05                    3386 	.db	5
      002F61 03                    3387 	.db	3
      002F62 00 00 00 8B           3388 	.dw	0,(_IE1)
      002F66 49 45 31              3389 	.ascii "IE1"
      002F69 00                    3390 	.db	0
      002F6A 01                    3391 	.db	1
      002F6B 00 00 0C 10           3392 	.dw	0,3088
      002F6F 0B                    3393 	.uleb128	11
      002F70 05                    3394 	.db	5
      002F71 03                    3395 	.db	3
      002F72 00 00 00 8A           3396 	.dw	0,(_IT1)
      002F76 49 54 31              3397 	.ascii "IT1"
      002F79 00                    3398 	.db	0
      002F7A 01                    3399 	.db	1
      002F7B 00 00 0C 10           3400 	.dw	0,3088
      002F7F 0B                    3401 	.uleb128	11
      002F80 05                    3402 	.db	5
      002F81 03                    3403 	.db	3
      002F82 00 00 00 89           3404 	.dw	0,(_IE0)
      002F86 49 45 30              3405 	.ascii "IE0"
      002F89 00                    3406 	.db	0
      002F8A 01                    3407 	.db	1
      002F8B 00 00 0C 10           3408 	.dw	0,3088
      002F8F 0B                    3409 	.uleb128	11
      002F90 05                    3410 	.db	5
      002F91 03                    3411 	.db	3
      002F92 00 00 00 88           3412 	.dw	0,(_IT0)
      002F96 49 54 30              3413 	.ascii "IT0"
      002F99 00                    3414 	.db	0
      002F9A 01                    3415 	.db	1
      002F9B 00 00 0C 10           3416 	.dw	0,3088
      002F9F 0B                    3417 	.uleb128	11
      002FA0 05                    3418 	.db	5
      002FA1 03                    3419 	.db	3
      002FA2 00 00 00 87           3420 	.dw	0,(_P07)
      002FA6 50 30 37              3421 	.ascii "P07"
      002FA9 00                    3422 	.db	0
      002FAA 01                    3423 	.db	1
      002FAB 00 00 0C 10           3424 	.dw	0,3088
      002FAF 0B                    3425 	.uleb128	11
      002FB0 05                    3426 	.db	5
      002FB1 03                    3427 	.db	3
      002FB2 00 00 00 87           3428 	.dw	0,(_RXD)
      002FB6 52 58 44              3429 	.ascii "RXD"
      002FB9 00                    3430 	.db	0
      002FBA 01                    3431 	.db	1
      002FBB 00 00 0C 10           3432 	.dw	0,3088
      002FBF 0B                    3433 	.uleb128	11
      002FC0 05                    3434 	.db	5
      002FC1 03                    3435 	.db	3
      002FC2 00 00 00 86           3436 	.dw	0,(_P06)
      002FC6 50 30 36              3437 	.ascii "P06"
      002FC9 00                    3438 	.db	0
      002FCA 01                    3439 	.db	1
      002FCB 00 00 0C 10           3440 	.dw	0,3088
      002FCF 0B                    3441 	.uleb128	11
      002FD0 05                    3442 	.db	5
      002FD1 03                    3443 	.db	3
      002FD2 00 00 00 86           3444 	.dw	0,(_TXD)
      002FD6 54 58 44              3445 	.ascii "TXD"
      002FD9 00                    3446 	.db	0
      002FDA 01                    3447 	.db	1
      002FDB 00 00 0C 10           3448 	.dw	0,3088
      002FDF 0B                    3449 	.uleb128	11
      002FE0 05                    3450 	.db	5
      002FE1 03                    3451 	.db	3
      002FE2 00 00 00 85           3452 	.dw	0,(_P05)
      002FE6 50 30 35              3453 	.ascii "P05"
      002FE9 00                    3454 	.db	0
      002FEA 01                    3455 	.db	1
      002FEB 00 00 0C 10           3456 	.dw	0,3088
      002FEF 0B                    3457 	.uleb128	11
      002FF0 05                    3458 	.db	5
      002FF1 03                    3459 	.db	3
      002FF2 00 00 00 84           3460 	.dw	0,(_P04)
      002FF6 50 30 34              3461 	.ascii "P04"
      002FF9 00                    3462 	.db	0
      002FFA 01                    3463 	.db	1
      002FFB 00 00 0C 10           3464 	.dw	0,3088
      002FFF 0B                    3465 	.uleb128	11
      003000 05                    3466 	.db	5
      003001 03                    3467 	.db	3
      003002 00 00 00 84           3468 	.dw	0,(_STADC)
      003006 53 54 41 44 43        3469 	.ascii "STADC"
      00300B 00                    3470 	.db	0
      00300C 01                    3471 	.db	1
      00300D 00 00 0C 10           3472 	.dw	0,3088
      003011 0B                    3473 	.uleb128	11
      003012 05                    3474 	.db	5
      003013 03                    3475 	.db	3
      003014 00 00 00 83           3476 	.dw	0,(_P03)
      003018 50 30 33              3477 	.ascii "P03"
      00301B 00                    3478 	.db	0
      00301C 01                    3479 	.db	1
      00301D 00 00 0C 10           3480 	.dw	0,3088
      003021 0B                    3481 	.uleb128	11
      003022 05                    3482 	.db	5
      003023 03                    3483 	.db	3
      003024 00 00 00 82           3484 	.dw	0,(_P02)
      003028 50 30 32              3485 	.ascii "P02"
      00302B 00                    3486 	.db	0
      00302C 01                    3487 	.db	1
      00302D 00 00 0C 10           3488 	.dw	0,3088
      003031 0B                    3489 	.uleb128	11
      003032 05                    3490 	.db	5
      003033 03                    3491 	.db	3
      003034 00 00 00 82           3492 	.dw	0,(_RXD_1)
      003038 52 58 44 5F 31        3493 	.ascii "RXD_1"
      00303D 00                    3494 	.db	0
      00303E 01                    3495 	.db	1
      00303F 00 00 0C 10           3496 	.dw	0,3088
      003043 0B                    3497 	.uleb128	11
      003044 05                    3498 	.db	5
      003045 03                    3499 	.db	3
      003046 00 00 00 81           3500 	.dw	0,(_P01)
      00304A 50 30 31              3501 	.ascii "P01"
      00304D 00                    3502 	.db	0
      00304E 01                    3503 	.db	1
      00304F 00 00 0C 10           3504 	.dw	0,3088
      003053 0B                    3505 	.uleb128	11
      003054 05                    3506 	.db	5
      003055 03                    3507 	.db	3
      003056 00 00 00 81           3508 	.dw	0,(_MISO)
      00305A 4D 49 53 4F           3509 	.ascii "MISO"
      00305E 00                    3510 	.db	0
      00305F 01                    3511 	.db	1
      003060 00 00 0C 10           3512 	.dw	0,3088
      003064 0B                    3513 	.uleb128	11
      003065 05                    3514 	.db	5
      003066 03                    3515 	.db	3
      003067 00 00 00 80           3516 	.dw	0,(_P00)
      00306B 50 30 30              3517 	.ascii "P00"
      00306E 00                    3518 	.db	0
      00306F 01                    3519 	.db	1
      003070 00 00 0C 10           3520 	.dw	0,3088
      003074 0B                    3521 	.uleb128	11
      003075 05                    3522 	.db	5
      003076 03                    3523 	.db	3
      003077 00 00 00 80           3524 	.dw	0,(_MOSI)
      00307B 4D 4F 53 49           3525 	.ascii "MOSI"
      00307F 00                    3526 	.db	0
      003080 01                    3527 	.db	1
      003081 00 00 0C 10           3528 	.dw	0,3088
      003085 00                    3529 	.uleb128	0
      003086                       3530 Ldebug_info_end:
                                   3531 
                                   3532 	.area .debug_pubnames (NOLOAD)
      000C05 00 00 08 F4           3533 	.dw	0,Ldebug_pubnames_end-Ldebug_pubnames_start
      000C09                       3534 Ldebug_pubnames_start:
      000C09 00 02                 3535 	.dw	2
      000C0B 00 00 1E 3E           3536 	.dw	0,(Ldebug_info_start-4)
      000C0F 00 00 12 48           3537 	.dw	0,4+Ldebug_info_end-Ldebug_info_start
      000C13 00 00 00 B4           3538 	.dw	0,180
      000C17 52 65 61 64 5F 41 50  3539 	.ascii "Read_APROM_BYTE"
             52 4F 4D 5F 42 59 54
             45
      000C26 00                    3540 	.db	0
      000C27 00 00 01 15           3541 	.dw	0,277
      000C2B 53 6F 66 74 77 61 72  3542 	.ascii "Software_Reset"
             65 5F 52 65 73 65 74
      000C39 00                    3543 	.db	0
      000C3A 00 00 01 5B           3544 	.dw	0,347
      000C3E 50 6F 77 65 72 44 6F  3545 	.ascii "PowerDown_Mode"
             77 6E 5F 4D 6F 64 65
      000C4C 00                    3546 	.db	0
      000C4D 00 00 01 9A           3547 	.dw	0,410
      000C51 49 64 6C 65 5F 4D 6F  3548 	.ascii "Idle_Mode"
             64 65
      000C5A 00                    3549 	.db	0
      000C5B 00 00 01 D6           3550 	.dw	0,470
      000C5F 5F 64 65 6C 61 79 5F  3551 	.ascii "_delay_"
      000C66 00                    3552 	.db	0
      000C67 00 00 02 14           3553 	.dw	0,532
      000C6B 47 6C 6F 62 61 6C 5F  3554 	.ascii "Global_Interrupt"
             49 6E 74 65 72 72 75
             70 74
      000C7B 00                    3555 	.db	0
      000C7C 00 00 02 4F           3556 	.dw	0,591
      000C80 54 41 5F 52 45 47 5F  3557 	.ascii "TA_REG_TMP"
             54 4D 50
      000C8A 00                    3558 	.db	0
      000C8B 00 00 02 66           3559 	.dw	0,614
      000C8F 42 59 54 45 5F 54 4D  3560 	.ascii "BYTE_TMP"
             50
      000C97 00                    3561 	.db	0
      000C98 00 00 02 7B           3562 	.dw	0,635
      000C9C 53 46 52 53 5F 54 4D  3563 	.ascii "SFRS_TMP"
             50
      000CA4 00                    3564 	.db	0
      000CA5 00 00 02 98           3565 	.dw	0,664
      000CA9 42 49 54 5F 54 4D 50  3566 	.ascii "BIT_TMP"
      000CB0 00                    3567 	.db	0
      000CB1 00 00 02 B1           3568 	.dw	0,689
      000CB5 50 30                 3569 	.ascii "P0"
      000CB7 00                    3570 	.db	0
      000CB8 00 00 02 C0           3571 	.dw	0,704
      000CBC 53 50                 3572 	.ascii "SP"
      000CBE 00                    3573 	.db	0
      000CBF 00 00 02 CF           3574 	.dw	0,719
      000CC3 44 50 4C              3575 	.ascii "DPL"
      000CC6 00                    3576 	.db	0
      000CC7 00 00 02 DF           3577 	.dw	0,735
      000CCB 44 50 48              3578 	.ascii "DPH"
      000CCE 00                    3579 	.db	0
      000CCF 00 00 02 EF           3580 	.dw	0,751
      000CD3 52 43 54 52 49 4D 30  3581 	.ascii "RCTRIM0"
      000CDA 00                    3582 	.db	0
      000CDB 00 00 03 03           3583 	.dw	0,771
      000CDF 52 43 54 52 49 4D 31  3584 	.ascii "RCTRIM1"
      000CE6 00                    3585 	.db	0
      000CE7 00 00 03 17           3586 	.dw	0,791
      000CEB 52 57 4B              3587 	.ascii "RWK"
      000CEE 00                    3588 	.db	0
      000CEF 00 00 03 27           3589 	.dw	0,807
      000CF3 50 43 4F 4E           3590 	.ascii "PCON"
      000CF7 00                    3591 	.db	0
      000CF8 00 00 03 38           3592 	.dw	0,824
      000CFC 54 43 4F 4E           3593 	.ascii "TCON"
      000D00 00                    3594 	.db	0
      000D01 00 00 03 49           3595 	.dw	0,841
      000D05 54 4D 4F 44           3596 	.ascii "TMOD"
      000D09 00                    3597 	.db	0
      000D0A 00 00 03 5A           3598 	.dw	0,858
      000D0E 54 4C 30              3599 	.ascii "TL0"
      000D11 00                    3600 	.db	0
      000D12 00 00 03 6A           3601 	.dw	0,874
      000D16 54 4C 31              3602 	.ascii "TL1"
      000D19 00                    3603 	.db	0
      000D1A 00 00 03 7A           3604 	.dw	0,890
      000D1E 54 48 30              3605 	.ascii "TH0"
      000D21 00                    3606 	.db	0
      000D22 00 00 03 8A           3607 	.dw	0,906
      000D26 54 48 31              3608 	.ascii "TH1"
      000D29 00                    3609 	.db	0
      000D2A 00 00 03 9A           3610 	.dw	0,922
      000D2E 43 4B 43 4F 4E        3611 	.ascii "CKCON"
      000D33 00                    3612 	.db	0
      000D34 00 00 03 AC           3613 	.dw	0,940
      000D38 57 4B 43 4F 4E        3614 	.ascii "WKCON"
      000D3D 00                    3615 	.db	0
      000D3E 00 00 03 BE           3616 	.dw	0,958
      000D42 50 31                 3617 	.ascii "P1"
      000D44 00                    3618 	.db	0
      000D45 00 00 03 CD           3619 	.dw	0,973
      000D49 53 46 52 53           3620 	.ascii "SFRS"
      000D4D 00                    3621 	.db	0
      000D4E 00 00 03 DE           3622 	.dw	0,990
      000D52 43 41 50 43 4F 4E 30  3623 	.ascii "CAPCON0"
      000D59 00                    3624 	.db	0
      000D5A 00 00 03 F2           3625 	.dw	0,1010
      000D5E 43 41 50 43 4F 4E 31  3626 	.ascii "CAPCON1"
      000D65 00                    3627 	.db	0
      000D66 00 00 04 06           3628 	.dw	0,1030
      000D6A 43 41 50 43 4F 4E 32  3629 	.ascii "CAPCON2"
      000D71 00                    3630 	.db	0
      000D72 00 00 04 1A           3631 	.dw	0,1050
      000D76 43 4B 44 49 56        3632 	.ascii "CKDIV"
      000D7B 00                    3633 	.db	0
      000D7C 00 00 04 2C           3634 	.dw	0,1068
      000D80 43 4B 53 57 54        3635 	.ascii "CKSWT"
      000D85 00                    3636 	.db	0
      000D86 00 00 04 3E           3637 	.dw	0,1086
      000D8A 43 4B 45 4E           3638 	.ascii "CKEN"
      000D8E 00                    3639 	.db	0
      000D8F 00 00 04 4F           3640 	.dw	0,1103
      000D93 53 43 4F 4E           3641 	.ascii "SCON"
      000D97 00                    3642 	.db	0
      000D98 00 00 04 60           3643 	.dw	0,1120
      000D9C 53 42 55 46           3644 	.ascii "SBUF"
      000DA0 00                    3645 	.db	0
      000DA1 00 00 04 71           3646 	.dw	0,1137
      000DA5 53 42 55 46 5F 31     3647 	.ascii "SBUF_1"
      000DAB 00                    3648 	.db	0
      000DAC 00 00 04 84           3649 	.dw	0,1156
      000DB0 45 49 45              3650 	.ascii "EIE"
      000DB3 00                    3651 	.db	0
      000DB4 00 00 04 94           3652 	.dw	0,1172
      000DB8 45 49 45 31           3653 	.ascii "EIE1"
      000DBC 00                    3654 	.db	0
      000DBD 00 00 04 A5           3655 	.dw	0,1189
      000DC1 43 48 50 43 4F 4E     3656 	.ascii "CHPCON"
      000DC7 00                    3657 	.db	0
      000DC8 00 00 04 B8           3658 	.dw	0,1208
      000DCC 50 32                 3659 	.ascii "P2"
      000DCE 00                    3660 	.db	0
      000DCF 00 00 04 C7           3661 	.dw	0,1223
      000DD3 41 55 58 52 31        3662 	.ascii "AUXR1"
      000DD8 00                    3663 	.db	0
      000DD9 00 00 04 D9           3664 	.dw	0,1241
      000DDD 42 4F 44 43 4F 4E 30  3665 	.ascii "BODCON0"
      000DE4 00                    3666 	.db	0
      000DE5 00 00 04 ED           3667 	.dw	0,1261
      000DE9 49 41 50 54 52 47     3668 	.ascii "IAPTRG"
      000DEF 00                    3669 	.db	0
      000DF0 00 00 05 00           3670 	.dw	0,1280
      000DF4 49 41 50 55 45 4E     3671 	.ascii "IAPUEN"
      000DFA 00                    3672 	.db	0
      000DFB 00 00 05 13           3673 	.dw	0,1299
      000DFF 49 41 50 41 4C        3674 	.ascii "IAPAL"
      000E04 00                    3675 	.db	0
      000E05 00 00 05 25           3676 	.dw	0,1317
      000E09 49 41 50 41 48        3677 	.ascii "IAPAH"
      000E0E 00                    3678 	.db	0
      000E0F 00 00 05 37           3679 	.dw	0,1335
      000E13 49 45                 3680 	.ascii "IE"
      000E15 00                    3681 	.db	0
      000E16 00 00 05 46           3682 	.dw	0,1350
      000E1A 53 41 44 44 52        3683 	.ascii "SADDR"
      000E1F 00                    3684 	.db	0
      000E20 00 00 05 58           3685 	.dw	0,1368
      000E24 57 44 43 4F 4E        3686 	.ascii "WDCON"
      000E29 00                    3687 	.db	0
      000E2A 00 00 05 6A           3688 	.dw	0,1386
      000E2E 42 4F 44 43 4F 4E 31  3689 	.ascii "BODCON1"
      000E35 00                    3690 	.db	0
      000E36 00 00 05 7E           3691 	.dw	0,1406
      000E3A 50 33 4D 31           3692 	.ascii "P3M1"
      000E3E 00                    3693 	.db	0
      000E3F 00 00 05 8F           3694 	.dw	0,1423
      000E43 50 33 53              3695 	.ascii "P3S"
      000E46 00                    3696 	.db	0
      000E47 00 00 05 9F           3697 	.dw	0,1439
      000E4B 50 33 4D 32           3698 	.ascii "P3M2"
      000E4F 00                    3699 	.db	0
      000E50 00 00 05 B0           3700 	.dw	0,1456
      000E54 50 33 53 52           3701 	.ascii "P3SR"
      000E58 00                    3702 	.db	0
      000E59 00 00 05 C1           3703 	.dw	0,1473
      000E5D 49 41 50 46 44        3704 	.ascii "IAPFD"
      000E62 00                    3705 	.db	0
      000E63 00 00 05 D3           3706 	.dw	0,1491
      000E67 49 41 50 43 4E        3707 	.ascii "IAPCN"
      000E6C 00                    3708 	.db	0
      000E6D 00 00 05 E5           3709 	.dw	0,1509
      000E71 50 33                 3710 	.ascii "P3"
      000E73 00                    3711 	.db	0
      000E74 00 00 05 F4           3712 	.dw	0,1524
      000E78 50 30 4D 31           3713 	.ascii "P0M1"
      000E7C 00                    3714 	.db	0
      000E7D 00 00 06 05           3715 	.dw	0,1541
      000E81 50 30 53              3716 	.ascii "P0S"
      000E84 00                    3717 	.db	0
      000E85 00 00 06 15           3718 	.dw	0,1557
      000E89 50 30 4D 32           3719 	.ascii "P0M2"
      000E8D 00                    3720 	.db	0
      000E8E 00 00 06 26           3721 	.dw	0,1574
      000E92 50 30 53 52           3722 	.ascii "P0SR"
      000E96 00                    3723 	.db	0
      000E97 00 00 06 37           3724 	.dw	0,1591
      000E9B 50 31 4D 31           3725 	.ascii "P1M1"
      000E9F 00                    3726 	.db	0
      000EA0 00 00 06 48           3727 	.dw	0,1608
      000EA4 50 31 53              3728 	.ascii "P1S"
      000EA7 00                    3729 	.db	0
      000EA8 00 00 06 58           3730 	.dw	0,1624
      000EAC 50 31 4D 32           3731 	.ascii "P1M2"
      000EB0 00                    3732 	.db	0
      000EB1 00 00 06 69           3733 	.dw	0,1641
      000EB5 50 31 53 52           3734 	.ascii "P1SR"
      000EB9 00                    3735 	.db	0
      000EBA 00 00 06 7A           3736 	.dw	0,1658
      000EBE 50 32 53              3737 	.ascii "P2S"
      000EC1 00                    3738 	.db	0
      000EC2 00 00 06 8A           3739 	.dw	0,1674
      000EC6 49 50 48              3740 	.ascii "IPH"
      000EC9 00                    3741 	.db	0
      000ECA 00 00 06 9A           3742 	.dw	0,1690
      000ECE 50 57 4D 49 4E 54 43  3743 	.ascii "PWMINTC"
      000ED5 00                    3744 	.db	0
      000ED6 00 00 06 AE           3745 	.dw	0,1710
      000EDA 49 50                 3746 	.ascii "IP"
      000EDC 00                    3747 	.db	0
      000EDD 00 00 06 BD           3748 	.dw	0,1725
      000EE1 53 41 44 45 4E        3749 	.ascii "SADEN"
      000EE6 00                    3750 	.db	0
      000EE7 00 00 06 CF           3751 	.dw	0,1743
      000EEB 53 41 44 45 4E 5F 31  3752 	.ascii "SADEN_1"
      000EF2 00                    3753 	.db	0
      000EF3 00 00 06 E3           3754 	.dw	0,1763
      000EF7 53 41 44 44 52 5F 31  3755 	.ascii "SADDR_1"
      000EFE 00                    3756 	.db	0
      000EFF 00 00 06 F7           3757 	.dw	0,1783
      000F03 49 32 44 41 54        3758 	.ascii "I2DAT"
      000F08 00                    3759 	.db	0
      000F09 00 00 07 09           3760 	.dw	0,1801
      000F0D 49 32 53 54 41 54     3761 	.ascii "I2STAT"
      000F13 00                    3762 	.db	0
      000F14 00 00 07 1C           3763 	.dw	0,1820
      000F18 49 32 43 4C 4B        3764 	.ascii "I2CLK"
      000F1D 00                    3765 	.db	0
      000F1E 00 00 07 2E           3766 	.dw	0,1838
      000F22 49 32 54 4F 43        3767 	.ascii "I2TOC"
      000F27 00                    3768 	.db	0
      000F28 00 00 07 40           3769 	.dw	0,1856
      000F2C 49 32 43 4F 4E        3770 	.ascii "I2CON"
      000F31 00                    3771 	.db	0
      000F32 00 00 07 52           3772 	.dw	0,1874
      000F36 49 32 41 44 44 52     3773 	.ascii "I2ADDR"
      000F3C 00                    3774 	.db	0
      000F3D 00 00 07 65           3775 	.dw	0,1893
      000F41 41 44 43 52 4C        3776 	.ascii "ADCRL"
      000F46 00                    3777 	.db	0
      000F47 00 00 07 77           3778 	.dw	0,1911
      000F4B 41 44 43 52 48        3779 	.ascii "ADCRH"
      000F50 00                    3780 	.db	0
      000F51 00 00 07 89           3781 	.dw	0,1929
      000F55 54 33 43 4F 4E        3782 	.ascii "T3CON"
      000F5A 00                    3783 	.db	0
      000F5B 00 00 07 9B           3784 	.dw	0,1947
      000F5F 50 57 4D 34 48        3785 	.ascii "PWM4H"
      000F64 00                    3786 	.db	0
      000F65 00 00 07 AD           3787 	.dw	0,1965
      000F69 52 4C 33              3788 	.ascii "RL3"
      000F6C 00                    3789 	.db	0
      000F6D 00 00 07 BD           3790 	.dw	0,1981
      000F71 50 57 4D 35 48        3791 	.ascii "PWM5H"
      000F76 00                    3792 	.db	0
      000F77 00 00 07 CF           3793 	.dw	0,1999
      000F7B 52 48 33              3794 	.ascii "RH3"
      000F7E 00                    3795 	.db	0
      000F7F 00 00 07 DF           3796 	.dw	0,2015
      000F83 50 49 4F 43 4F 4E 31  3797 	.ascii "PIOCON1"
      000F8A 00                    3798 	.db	0
      000F8B 00 00 07 F3           3799 	.dw	0,2035
      000F8F 54 41                 3800 	.ascii "TA"
      000F91 00                    3801 	.db	0
      000F92 00 00 08 02           3802 	.dw	0,2050
      000F96 54 32 43 4F 4E        3803 	.ascii "T2CON"
      000F9B 00                    3804 	.db	0
      000F9C 00 00 08 14           3805 	.dw	0,2068
      000FA0 54 32 4D 4F 44        3806 	.ascii "T2MOD"
      000FA5 00                    3807 	.db	0
      000FA6 00 00 08 26           3808 	.dw	0,2086
      000FAA 52 43 4D 50 32 4C     3809 	.ascii "RCMP2L"
      000FB0 00                    3810 	.db	0
      000FB1 00 00 08 39           3811 	.dw	0,2105
      000FB5 52 43 4D 50 32 48     3812 	.ascii "RCMP2H"
      000FBB 00                    3813 	.db	0
      000FBC 00 00 08 4C           3814 	.dw	0,2124
      000FC0 54 4C 32              3815 	.ascii "TL2"
      000FC3 00                    3816 	.db	0
      000FC4 00 00 08 5C           3817 	.dw	0,2140
      000FC8 50 57 4D 34 4C        3818 	.ascii "PWM4L"
      000FCD 00                    3819 	.db	0
      000FCE 00 00 08 6E           3820 	.dw	0,2158
      000FD2 54 48 32              3821 	.ascii "TH2"
      000FD5 00                    3822 	.db	0
      000FD6 00 00 08 7E           3823 	.dw	0,2174
      000FDA 50 57 4D 35 4C        3824 	.ascii "PWM5L"
      000FDF 00                    3825 	.db	0
      000FE0 00 00 08 90           3826 	.dw	0,2192
      000FE4 41 44 43 4D 50 4C     3827 	.ascii "ADCMPL"
      000FEA 00                    3828 	.db	0
      000FEB 00 00 08 A3           3829 	.dw	0,2211
      000FEF 41 44 43 4D 50 48     3830 	.ascii "ADCMPH"
      000FF5 00                    3831 	.db	0
      000FF6 00 00 08 B6           3832 	.dw	0,2230
      000FFA 50 53 57              3833 	.ascii "PSW"
      000FFD 00                    3834 	.db	0
      000FFE 00 00 08 C6           3835 	.dw	0,2246
      001002 50 57 4D 50 48        3836 	.ascii "PWMPH"
      001007 00                    3837 	.db	0
      001008 00 00 08 D8           3838 	.dw	0,2264
      00100C 50 57 4D 30 48        3839 	.ascii "PWM0H"
      001011 00                    3840 	.db	0
      001012 00 00 08 EA           3841 	.dw	0,2282
      001016 50 57 4D 31 48        3842 	.ascii "PWM1H"
      00101B 00                    3843 	.db	0
      00101C 00 00 08 FC           3844 	.dw	0,2300
      001020 50 57 4D 32 48        3845 	.ascii "PWM2H"
      001025 00                    3846 	.db	0
      001026 00 00 09 0E           3847 	.dw	0,2318
      00102A 50 57 4D 33 48        3848 	.ascii "PWM3H"
      00102F 00                    3849 	.db	0
      001030 00 00 09 20           3850 	.dw	0,2336
      001034 50 4E 50              3851 	.ascii "PNP"
      001037 00                    3852 	.db	0
      001038 00 00 09 30           3853 	.dw	0,2352
      00103C 46 42 44              3854 	.ascii "FBD"
      00103F 00                    3855 	.db	0
      001040 00 00 09 40           3856 	.dw	0,2368
      001044 50 57 4D 43 4F 4E 30  3857 	.ascii "PWMCON0"
      00104B 00                    3858 	.db	0
      00104C 00 00 09 54           3859 	.dw	0,2388
      001050 50 57 4D 50 4C        3860 	.ascii "PWMPL"
      001055 00                    3861 	.db	0
      001056 00 00 09 66           3862 	.dw	0,2406
      00105A 50 57 4D 30 4C        3863 	.ascii "PWM0L"
      00105F 00                    3864 	.db	0
      001060 00 00 09 78           3865 	.dw	0,2424
      001064 50 57 4D 31 4C        3866 	.ascii "PWM1L"
      001069 00                    3867 	.db	0
      00106A 00 00 09 8A           3868 	.dw	0,2442
      00106E 50 57 4D 32 4C        3869 	.ascii "PWM2L"
      001073 00                    3870 	.db	0
      001074 00 00 09 9C           3871 	.dw	0,2460
      001078 50 57 4D 33 4C        3872 	.ascii "PWM3L"
      00107D 00                    3873 	.db	0
      00107E 00 00 09 AE           3874 	.dw	0,2478
      001082 50 49 4F 43 4F 4E 30  3875 	.ascii "PIOCON0"
      001089 00                    3876 	.db	0
      00108A 00 00 09 C2           3877 	.dw	0,2498
      00108E 50 57 4D 43 4F 4E 31  3878 	.ascii "PWMCON1"
      001095 00                    3879 	.db	0
      001096 00 00 09 D6           3880 	.dw	0,2518
      00109A 41 43 43              3881 	.ascii "ACC"
      00109D 00                    3882 	.db	0
      00109E 00 00 09 E6           3883 	.dw	0,2534
      0010A2 41 44 43 43 4F 4E 31  3884 	.ascii "ADCCON1"
      0010A9 00                    3885 	.db	0
      0010AA 00 00 09 FA           3886 	.dw	0,2554
      0010AE 41 44 43 43 4F 4E 32  3887 	.ascii "ADCCON2"
      0010B5 00                    3888 	.db	0
      0010B6 00 00 0A 0E           3889 	.dw	0,2574
      0010BA 41 44 43 44 4C 59     3890 	.ascii "ADCDLY"
      0010C0 00                    3891 	.db	0
      0010C1 00 00 0A 21           3892 	.dw	0,2593
      0010C5 43 30 4C              3893 	.ascii "C0L"
      0010C8 00                    3894 	.db	0
      0010C9 00 00 0A 31           3895 	.dw	0,2609
      0010CD 43 30 48              3896 	.ascii "C0H"
      0010D0 00                    3897 	.db	0
      0010D1 00 00 0A 41           3898 	.dw	0,2625
      0010D5 43 31 4C              3899 	.ascii "C1L"
      0010D8 00                    3900 	.db	0
      0010D9 00 00 0A 51           3901 	.dw	0,2641
      0010DD 43 31 48              3902 	.ascii "C1H"
      0010E0 00                    3903 	.db	0
      0010E1 00 00 0A 61           3904 	.dw	0,2657
      0010E5 41 44 43 43 4F 4E 30  3905 	.ascii "ADCCON0"
      0010EC 00                    3906 	.db	0
      0010ED 00 00 0A 75           3907 	.dw	0,2677
      0010F1 50 49 43 4F 4E        3908 	.ascii "PICON"
      0010F6 00                    3909 	.db	0
      0010F7 00 00 0A 87           3910 	.dw	0,2695
      0010FB 50 49 4E 45 4E        3911 	.ascii "PINEN"
      001100 00                    3912 	.db	0
      001101 00 00 0A 99           3913 	.dw	0,2713
      001105 50 49 50 45 4E        3914 	.ascii "PIPEN"
      00110A 00                    3915 	.db	0
      00110B 00 00 0A AB           3916 	.dw	0,2731
      00110F 50 49 46              3917 	.ascii "PIF"
      001112 00                    3918 	.db	0
      001113 00 00 0A BB           3919 	.dw	0,2747
      001117 43 32 4C              3920 	.ascii "C2L"
      00111A 00                    3921 	.db	0
      00111B 00 00 0A CB           3922 	.dw	0,2763
      00111F 43 32 48              3923 	.ascii "C2H"
      001122 00                    3924 	.db	0
      001123 00 00 0A DB           3925 	.dw	0,2779
      001127 45 49 50              3926 	.ascii "EIP"
      00112A 00                    3927 	.db	0
      00112B 00 00 0A EB           3928 	.dw	0,2795
      00112F 42                    3929 	.ascii "B"
      001130 00                    3930 	.db	0
      001131 00 00 0A F9           3931 	.dw	0,2809
      001135 43 41 50 43 4F 4E 33  3932 	.ascii "CAPCON3"
      00113C 00                    3933 	.db	0
      00113D 00 00 0B 0D           3934 	.dw	0,2829
      001141 43 41 50 43 4F 4E 34  3935 	.ascii "CAPCON4"
      001148 00                    3936 	.db	0
      001149 00 00 0B 21           3937 	.dw	0,2849
      00114D 53 50 43 52           3938 	.ascii "SPCR"
      001151 00                    3939 	.db	0
      001152 00 00 0B 32           3940 	.dw	0,2866
      001156 53 50 43 52 32        3941 	.ascii "SPCR2"
      00115B 00                    3942 	.db	0
      00115C 00 00 0B 44           3943 	.dw	0,2884
      001160 53 50 53 52           3944 	.ascii "SPSR"
      001164 00                    3945 	.db	0
      001165 00 00 0B 55           3946 	.dw	0,2901
      001169 53 50 44 52           3947 	.ascii "SPDR"
      00116D 00                    3948 	.db	0
      00116E 00 00 0B 66           3949 	.dw	0,2918
      001172 41 49 4E 44 49 44 53  3950 	.ascii "AINDIDS"
      001179 00                    3951 	.db	0
      00117A 00 00 0B 7A           3952 	.dw	0,2938
      00117E 45 49 50 48           3953 	.ascii "EIPH"
      001182 00                    3954 	.db	0
      001183 00 00 0B 8B           3955 	.dw	0,2955
      001187 53 43 4F 4E 5F 31     3956 	.ascii "SCON_1"
      00118D 00                    3957 	.db	0
      00118E 00 00 0B 9E           3958 	.dw	0,2974
      001192 50 44 54 45 4E        3959 	.ascii "PDTEN"
      001197 00                    3960 	.db	0
      001198 00 00 0B B0           3961 	.dw	0,2992
      00119C 50 44 54 43 4E 54     3962 	.ascii "PDTCNT"
      0011A2 00                    3963 	.db	0
      0011A3 00 00 0B C3           3964 	.dw	0,3011
      0011A7 50 4D 45 4E           3965 	.ascii "PMEN"
      0011AB 00                    3966 	.db	0
      0011AC 00 00 0B D4           3967 	.dw	0,3028
      0011B0 50 4D 44              3968 	.ascii "PMD"
      0011B3 00                    3969 	.db	0
      0011B4 00 00 0B E4           3970 	.dw	0,3044
      0011B8 45 49 50 31           3971 	.ascii "EIP1"
      0011BC 00                    3972 	.db	0
      0011BD 00 00 0B F5           3973 	.dw	0,3061
      0011C1 45 49 50 48 31        3974 	.ascii "EIPH1"
      0011C6 00                    3975 	.db	0
      0011C7 00 00 0C 15           3976 	.dw	0,3093
      0011CB 53 4D 30 5F 31        3977 	.ascii "SM0_1"
      0011D0 00                    3978 	.db	0
      0011D1 00 00 0C 27           3979 	.dw	0,3111
      0011D5 46 45 5F 31           3980 	.ascii "FE_1"
      0011D9 00                    3981 	.db	0
      0011DA 00 00 0C 38           3982 	.dw	0,3128
      0011DE 53 4D 31 5F 31        3983 	.ascii "SM1_1"
      0011E3 00                    3984 	.db	0
      0011E4 00 00 0C 4A           3985 	.dw	0,3146
      0011E8 53 4D 32 5F 31        3986 	.ascii "SM2_1"
      0011ED 00                    3987 	.db	0
      0011EE 00 00 0C 5C           3988 	.dw	0,3164
      0011F2 52 45 4E 5F 31        3989 	.ascii "REN_1"
      0011F7 00                    3990 	.db	0
      0011F8 00 00 0C 6E           3991 	.dw	0,3182
      0011FC 54 42 38 5F 31        3992 	.ascii "TB8_1"
      001201 00                    3993 	.db	0
      001202 00 00 0C 80           3994 	.dw	0,3200
      001206 52 42 38 5F 31        3995 	.ascii "RB8_1"
      00120B 00                    3996 	.db	0
      00120C 00 00 0C 92           3997 	.dw	0,3218
      001210 54 49 5F 31           3998 	.ascii "TI_1"
      001214 00                    3999 	.db	0
      001215 00 00 0C A3           4000 	.dw	0,3235
      001219 52 49 5F 31           4001 	.ascii "RI_1"
      00121D 00                    4002 	.db	0
      00121E 00 00 0C B4           4003 	.dw	0,3252
      001222 41 44 43 46           4004 	.ascii "ADCF"
      001226 00                    4005 	.db	0
      001227 00 00 0C C5           4006 	.dw	0,3269
      00122B 41 44 43 53           4007 	.ascii "ADCS"
      00122F 00                    4008 	.db	0
      001230 00 00 0C D6           4009 	.dw	0,3286
      001234 45 54 47 53 45 4C 31  4010 	.ascii "ETGSEL1"
      00123B 00                    4011 	.db	0
      00123C 00 00 0C EA           4012 	.dw	0,3306
      001240 45 54 47 53 45 4C 30  4013 	.ascii "ETGSEL0"
      001247 00                    4014 	.db	0
      001248 00 00 0C FE           4015 	.dw	0,3326
      00124C 41 44 43 48 53 33     4016 	.ascii "ADCHS3"
      001252 00                    4017 	.db	0
      001253 00 00 0D 11           4018 	.dw	0,3345
      001257 41 44 43 48 53 32     4019 	.ascii "ADCHS2"
      00125D 00                    4020 	.db	0
      00125E 00 00 0D 24           4021 	.dw	0,3364
      001262 41 44 43 48 53 31     4022 	.ascii "ADCHS1"
      001268 00                    4023 	.db	0
      001269 00 00 0D 37           4024 	.dw	0,3383
      00126D 41 44 43 48 53 30     4025 	.ascii "ADCHS0"
      001273 00                    4026 	.db	0
      001274 00 00 0D 4A           4027 	.dw	0,3402
      001278 50 57 4D 52 55 4E     4028 	.ascii "PWMRUN"
      00127E 00                    4029 	.db	0
      00127F 00 00 0D 5D           4030 	.dw	0,3421
      001283 4C 4F 41 44           4031 	.ascii "LOAD"
      001287 00                    4032 	.db	0
      001288 00 00 0D 6E           4033 	.dw	0,3438
      00128C 50 57 4D 46           4034 	.ascii "PWMF"
      001290 00                    4035 	.db	0
      001291 00 00 0D 7F           4036 	.dw	0,3455
      001295 43 4C 52 50 57 4D     4037 	.ascii "CLRPWM"
      00129B 00                    4038 	.db	0
      00129C 00 00 0D 92           4039 	.dw	0,3474
      0012A0 43 59                 4040 	.ascii "CY"
      0012A2 00                    4041 	.db	0
      0012A3 00 00 0D A1           4042 	.dw	0,3489
      0012A7 41 43                 4043 	.ascii "AC"
      0012A9 00                    4044 	.db	0
      0012AA 00 00 0D B0           4045 	.dw	0,3504
      0012AE 46 30                 4046 	.ascii "F0"
      0012B0 00                    4047 	.db	0
      0012B1 00 00 0D BF           4048 	.dw	0,3519
      0012B5 52 53 31              4049 	.ascii "RS1"
      0012B8 00                    4050 	.db	0
      0012B9 00 00 0D CF           4051 	.dw	0,3535
      0012BD 52 53 30              4052 	.ascii "RS0"
      0012C0 00                    4053 	.db	0
      0012C1 00 00 0D DF           4054 	.dw	0,3551
      0012C5 4F 56                 4055 	.ascii "OV"
      0012C7 00                    4056 	.db	0
      0012C8 00 00 0D EE           4057 	.dw	0,3566
      0012CC 50                    4058 	.ascii "P"
      0012CD 00                    4059 	.db	0
      0012CE 00 00 0D FC           4060 	.dw	0,3580
      0012D2 54 46 32              4061 	.ascii "TF2"
      0012D5 00                    4062 	.db	0
      0012D6 00 00 0E 0C           4063 	.dw	0,3596
      0012DA 54 52 32              4064 	.ascii "TR2"
      0012DD 00                    4065 	.db	0
      0012DE 00 00 0E 1C           4066 	.dw	0,3612
      0012E2 43 4D 5F 52 4C 32     4067 	.ascii "CM_RL2"
      0012E8 00                    4068 	.db	0
      0012E9 00 00 0E 2F           4069 	.dw	0,3631
      0012ED 49 32 43 45 4E        4070 	.ascii "I2CEN"
      0012F2 00                    4071 	.db	0
      0012F3 00 00 0E 41           4072 	.dw	0,3649
      0012F7 53 54 41              4073 	.ascii "STA"
      0012FA 00                    4074 	.db	0
      0012FB 00 00 0E 51           4075 	.dw	0,3665
      0012FF 53 54 4F              4076 	.ascii "STO"
      001302 00                    4077 	.db	0
      001303 00 00 0E 61           4078 	.dw	0,3681
      001307 53 49                 4079 	.ascii "SI"
      001309 00                    4080 	.db	0
      00130A 00 00 0E 70           4081 	.dw	0,3696
      00130E 41 41                 4082 	.ascii "AA"
      001310 00                    4083 	.db	0
      001311 00 00 0E 7F           4084 	.dw	0,3711
      001315 49 32 43 50 58        4085 	.ascii "I2CPX"
      00131A 00                    4086 	.db	0
      00131B 00 00 0E 91           4087 	.dw	0,3729
      00131F 50 41 44 43           4088 	.ascii "PADC"
      001323 00                    4089 	.db	0
      001324 00 00 0E A2           4090 	.dw	0,3746
      001328 50 42 4F 44           4091 	.ascii "PBOD"
      00132C 00                    4092 	.db	0
      00132D 00 00 0E B3           4093 	.dw	0,3763
      001331 50 53                 4094 	.ascii "PS"
      001333 00                    4095 	.db	0
      001334 00 00 0E C2           4096 	.dw	0,3778
      001338 50 54 31              4097 	.ascii "PT1"
      00133B 00                    4098 	.db	0
      00133C 00 00 0E D2           4099 	.dw	0,3794
      001340 50 58 31              4100 	.ascii "PX1"
      001343 00                    4101 	.db	0
      001344 00 00 0E E2           4102 	.dw	0,3810
      001348 50 54 30              4103 	.ascii "PT0"
      00134B 00                    4104 	.db	0
      00134C 00 00 0E F2           4105 	.dw	0,3826
      001350 50 58 30              4106 	.ascii "PX0"
      001353 00                    4107 	.db	0
      001354 00 00 0F 02           4108 	.dw	0,3842
      001358 50 33 30              4109 	.ascii "P30"
      00135B 00                    4110 	.db	0
      00135C 00 00 0F 12           4111 	.dw	0,3858
      001360 45 41                 4112 	.ascii "EA"
      001362 00                    4113 	.db	0
      001363 00 00 0F 21           4114 	.dw	0,3873
      001367 45 41 44 43           4115 	.ascii "EADC"
      00136B 00                    4116 	.db	0
      00136C 00 00 0F 32           4117 	.dw	0,3890
      001370 45 42 4F 44           4118 	.ascii "EBOD"
      001374 00                    4119 	.db	0
      001375 00 00 0F 43           4120 	.dw	0,3907
      001379 45 53                 4121 	.ascii "ES"
      00137B 00                    4122 	.db	0
      00137C 00 00 0F 52           4123 	.dw	0,3922
      001380 45 54 31              4124 	.ascii "ET1"
      001383 00                    4125 	.db	0
      001384 00 00 0F 62           4126 	.dw	0,3938
      001388 45 58 31              4127 	.ascii "EX1"
      00138B 00                    4128 	.db	0
      00138C 00 00 0F 72           4129 	.dw	0,3954
      001390 45 54 30              4130 	.ascii "ET0"
      001393 00                    4131 	.db	0
      001394 00 00 0F 82           4132 	.dw	0,3970
      001398 45 58 30              4133 	.ascii "EX0"
      00139B 00                    4134 	.db	0
      00139C 00 00 0F 92           4135 	.dw	0,3986
      0013A0 50 32 30              4136 	.ascii "P20"
      0013A3 00                    4137 	.db	0
      0013A4 00 00 0F A2           4138 	.dw	0,4002
      0013A8 53 4D 30              4139 	.ascii "SM0"
      0013AB 00                    4140 	.db	0
      0013AC 00 00 0F B2           4141 	.dw	0,4018
      0013B0 46 45                 4142 	.ascii "FE"
      0013B2 00                    4143 	.db	0
      0013B3 00 00 0F C1           4144 	.dw	0,4033
      0013B7 53 4D 31              4145 	.ascii "SM1"
      0013BA 00                    4146 	.db	0
      0013BB 00 00 0F D1           4147 	.dw	0,4049
      0013BF 53 4D 32              4148 	.ascii "SM2"
      0013C2 00                    4149 	.db	0
      0013C3 00 00 0F E1           4150 	.dw	0,4065
      0013C7 52 45 4E              4151 	.ascii "REN"
      0013CA 00                    4152 	.db	0
      0013CB 00 00 0F F1           4153 	.dw	0,4081
      0013CF 54 42 38              4154 	.ascii "TB8"
      0013D2 00                    4155 	.db	0
      0013D3 00 00 10 01           4156 	.dw	0,4097
      0013D7 52 42 38              4157 	.ascii "RB8"
      0013DA 00                    4158 	.db	0
      0013DB 00 00 10 11           4159 	.dw	0,4113
      0013DF 54 49                 4160 	.ascii "TI"
      0013E1 00                    4161 	.db	0
      0013E2 00 00 10 20           4162 	.dw	0,4128
      0013E6 52 49                 4163 	.ascii "RI"
      0013E8 00                    4164 	.db	0
      0013E9 00 00 10 2F           4165 	.dw	0,4143
      0013ED 50 31 37              4166 	.ascii "P17"
      0013F0 00                    4167 	.db	0
      0013F1 00 00 10 3F           4168 	.dw	0,4159
      0013F5 50 31 36              4169 	.ascii "P16"
      0013F8 00                    4170 	.db	0
      0013F9 00 00 10 4F           4171 	.dw	0,4175
      0013FD 54 58 44 5F 31        4172 	.ascii "TXD_1"
      001402 00                    4173 	.db	0
      001403 00 00 10 61           4174 	.dw	0,4193
      001407 50 31 35              4175 	.ascii "P15"
      00140A 00                    4176 	.db	0
      00140B 00 00 10 71           4177 	.dw	0,4209
      00140F 50 31 34              4178 	.ascii "P14"
      001412 00                    4179 	.db	0
      001413 00 00 10 81           4180 	.dw	0,4225
      001417 53 44 41              4181 	.ascii "SDA"
      00141A 00                    4182 	.db	0
      00141B 00 00 10 91           4183 	.dw	0,4241
      00141F 50 31 33              4184 	.ascii "P13"
      001422 00                    4185 	.db	0
      001423 00 00 10 A1           4186 	.dw	0,4257
      001427 53 43 4C              4187 	.ascii "SCL"
      00142A 00                    4188 	.db	0
      00142B 00 00 10 B1           4189 	.dw	0,4273
      00142F 50 31 32              4190 	.ascii "P12"
      001432 00                    4191 	.db	0
      001433 00 00 10 C1           4192 	.dw	0,4289
      001437 50 31 31              4193 	.ascii "P11"
      00143A 00                    4194 	.db	0
      00143B 00 00 10 D1           4195 	.dw	0,4305
      00143F 50 31 30              4196 	.ascii "P10"
      001442 00                    4197 	.db	0
      001443 00 00 10 E1           4198 	.dw	0,4321
      001447 54 46 31              4199 	.ascii "TF1"
      00144A 00                    4200 	.db	0
      00144B 00 00 10 F1           4201 	.dw	0,4337
      00144F 54 52 31              4202 	.ascii "TR1"
      001452 00                    4203 	.db	0
      001453 00 00 11 01           4204 	.dw	0,4353
      001457 54 46 30              4205 	.ascii "TF0"
      00145A 00                    4206 	.db	0
      00145B 00 00 11 11           4207 	.dw	0,4369
      00145F 54 52 30              4208 	.ascii "TR0"
      001462 00                    4209 	.db	0
      001463 00 00 11 21           4210 	.dw	0,4385
      001467 49 45 31              4211 	.ascii "IE1"
      00146A 00                    4212 	.db	0
      00146B 00 00 11 31           4213 	.dw	0,4401
      00146F 49 54 31              4214 	.ascii "IT1"
      001472 00                    4215 	.db	0
      001473 00 00 11 41           4216 	.dw	0,4417
      001477 49 45 30              4217 	.ascii "IE0"
      00147A 00                    4218 	.db	0
      00147B 00 00 11 51           4219 	.dw	0,4433
      00147F 49 54 30              4220 	.ascii "IT0"
      001482 00                    4221 	.db	0
      001483 00 00 11 61           4222 	.dw	0,4449
      001487 50 30 37              4223 	.ascii "P07"
      00148A 00                    4224 	.db	0
      00148B 00 00 11 71           4225 	.dw	0,4465
      00148F 52 58 44              4226 	.ascii "RXD"
      001492 00                    4227 	.db	0
      001493 00 00 11 81           4228 	.dw	0,4481
      001497 50 30 36              4229 	.ascii "P06"
      00149A 00                    4230 	.db	0
      00149B 00 00 11 91           4231 	.dw	0,4497
      00149F 54 58 44              4232 	.ascii "TXD"
      0014A2 00                    4233 	.db	0
      0014A3 00 00 11 A1           4234 	.dw	0,4513
      0014A7 50 30 35              4235 	.ascii "P05"
      0014AA 00                    4236 	.db	0
      0014AB 00 00 11 B1           4237 	.dw	0,4529
      0014AF 50 30 34              4238 	.ascii "P04"
      0014B2 00                    4239 	.db	0
      0014B3 00 00 11 C1           4240 	.dw	0,4545
      0014B7 53 54 41 44 43        4241 	.ascii "STADC"
      0014BC 00                    4242 	.db	0
      0014BD 00 00 11 D3           4243 	.dw	0,4563
      0014C1 50 30 33              4244 	.ascii "P03"
      0014C4 00                    4245 	.db	0
      0014C5 00 00 11 E3           4246 	.dw	0,4579
      0014C9 50 30 32              4247 	.ascii "P02"
      0014CC 00                    4248 	.db	0
      0014CD 00 00 11 F3           4249 	.dw	0,4595
      0014D1 52 58 44 5F 31        4250 	.ascii "RXD_1"
      0014D6 00                    4251 	.db	0
      0014D7 00 00 12 05           4252 	.dw	0,4613
      0014DB 50 30 31              4253 	.ascii "P01"
      0014DE 00                    4254 	.db	0
      0014DF 00 00 12 15           4255 	.dw	0,4629
      0014E3 4D 49 53 4F           4256 	.ascii "MISO"
      0014E7 00                    4257 	.db	0
      0014E8 00 00 12 26           4258 	.dw	0,4646
      0014EC 50 30 30              4259 	.ascii "P00"
      0014EF 00                    4260 	.db	0
      0014F0 00 00 12 36           4261 	.dw	0,4662
      0014F4 4D 4F 53 49           4262 	.ascii "MOSI"
      0014F8 00                    4263 	.db	0
      0014F9 00 00 00 00           4264 	.dw	0,0
      0014FD                       4265 Ldebug_pubnames_end:
                                   4266 
                                   4267 	.area .debug_frame (NOLOAD)
      0004A4 00 00                 4268 	.dw	0
      0004A6 00 10                 4269 	.dw	Ldebug_CIE0_end-Ldebug_CIE0_start
      0004A8                       4270 Ldebug_CIE0_start:
      0004A8 FF FF                 4271 	.dw	0xffff
      0004AA FF FF                 4272 	.dw	0xffff
      0004AC 01                    4273 	.db	1
      0004AD 00                    4274 	.db	0
      0004AE 01                    4275 	.uleb128	1
      0004AF 01                    4276 	.sleb128	1
      0004B0 09                    4277 	.db	9
      0004B1 0C                    4278 	.db	12
      0004B2 16                    4279 	.uleb128	22
      0004B3 02                    4280 	.uleb128	2
      0004B4 89                    4281 	.db	137
      0004B5 01                    4282 	.uleb128	1
      0004B6 00                    4283 	.db	0
      0004B7 00                    4284 	.db	0
      0004B8                       4285 Ldebug_CIE0_end:
      0004B8 00 00 00 14           4286 	.dw	0,20
      0004BC 00 00 04 A4           4287 	.dw	0,(Ldebug_CIE0_start-4)
      0004C0 00 00 11 DB           4288 	.dw	0,(Scommon$Global_Interrupt$52)	;initial loc
      0004C4 00 00 00 0C           4289 	.dw	0,Scommon$Global_Interrupt$56-Scommon$Global_Interrupt$52
      0004C8 01                    4290 	.db	1
      0004C9 00 00 11 DB           4291 	.dw	0,(Scommon$Global_Interrupt$52)
      0004CD 0E                    4292 	.db	14
      0004CE 02                    4293 	.uleb128	2
      0004CF 00                    4294 	.db	0
                                   4295 
                                   4296 	.area .debug_frame (NOLOAD)
      0004D0 00 00                 4297 	.dw	0
      0004D2 00 10                 4298 	.dw	Ldebug_CIE1_end-Ldebug_CIE1_start
      0004D4                       4299 Ldebug_CIE1_start:
      0004D4 FF FF                 4300 	.dw	0xffff
      0004D6 FF FF                 4301 	.dw	0xffff
      0004D8 01                    4302 	.db	1
      0004D9 00                    4303 	.db	0
      0004DA 01                    4304 	.uleb128	1
      0004DB 01                    4305 	.sleb128	1
      0004DC 09                    4306 	.db	9
      0004DD 0C                    4307 	.db	12
      0004DE 16                    4308 	.uleb128	22
      0004DF 02                    4309 	.uleb128	2
      0004E0 89                    4310 	.db	137
      0004E1 01                    4311 	.uleb128	1
      0004E2 00                    4312 	.db	0
      0004E3 00                    4313 	.db	0
      0004E4                       4314 Ldebug_CIE1_end:
      0004E4 00 00 00 14           4315 	.dw	0,20
      0004E8 00 00 04 D0           4316 	.dw	0,(Ldebug_CIE1_start-4)
      0004EC 00 00 11 CD           4317 	.dw	0,(Scommon$_delay_$39)	;initial loc
      0004F0 00 00 00 0E           4318 	.dw	0,Scommon$_delay_$50-Scommon$_delay_$39
      0004F4 01                    4319 	.db	1
      0004F5 00 00 11 CD           4320 	.dw	0,(Scommon$_delay_$39)
      0004F9 0E                    4321 	.db	14
      0004FA 02                    4322 	.uleb128	2
      0004FB 00                    4323 	.db	0
                                   4324 
                                   4325 	.area .debug_frame (NOLOAD)
      0004FC 00 00                 4326 	.dw	0
      0004FE 00 10                 4327 	.dw	Ldebug_CIE2_end-Ldebug_CIE2_start
      000500                       4328 Ldebug_CIE2_start:
      000500 FF FF                 4329 	.dw	0xffff
      000502 FF FF                 4330 	.dw	0xffff
      000504 01                    4331 	.db	1
      000505 00                    4332 	.db	0
      000506 01                    4333 	.uleb128	1
      000507 01                    4334 	.sleb128	1
      000508 09                    4335 	.db	9
      000509 0C                    4336 	.db	12
      00050A 16                    4337 	.uleb128	22
      00050B 02                    4338 	.uleb128	2
      00050C 89                    4339 	.db	137
      00050D 01                    4340 	.uleb128	1
      00050E 00                    4341 	.db	0
      00050F 00                    4342 	.db	0
      000510                       4343 Ldebug_CIE2_end:
      000510 00 00 00 14           4344 	.dw	0,20
      000514 00 00 04 FC           4345 	.dw	0,(Ldebug_CIE2_start-4)
      000518 00 00 11 BE           4346 	.dw	0,(Scommon$Idle_Mode$28)	;initial loc
      00051C 00 00 00 0F           4347 	.dw	0,Scommon$Idle_Mode$37-Scommon$Idle_Mode$28
      000520 01                    4348 	.db	1
      000521 00 00 11 BE           4349 	.dw	0,(Scommon$Idle_Mode$28)
      000525 0E                    4350 	.db	14
      000526 02                    4351 	.uleb128	2
      000527 00                    4352 	.db	0
                                   4353 
                                   4354 	.area .debug_frame (NOLOAD)
      000528 00 00                 4355 	.dw	0
      00052A 00 10                 4356 	.dw	Ldebug_CIE3_end-Ldebug_CIE3_start
      00052C                       4357 Ldebug_CIE3_start:
      00052C FF FF                 4358 	.dw	0xffff
      00052E FF FF                 4359 	.dw	0xffff
      000530 01                    4360 	.db	1
      000531 00                    4361 	.db	0
      000532 01                    4362 	.uleb128	1
      000533 01                    4363 	.sleb128	1
      000534 09                    4364 	.db	9
      000535 0C                    4365 	.db	12
      000536 16                    4366 	.uleb128	22
      000537 02                    4367 	.uleb128	2
      000538 89                    4368 	.db	137
      000539 01                    4369 	.uleb128	1
      00053A 00                    4370 	.db	0
      00053B 00                    4371 	.db	0
      00053C                       4372 Ldebug_CIE3_end:
      00053C 00 00 00 14           4373 	.dw	0,20
      000540 00 00 05 28           4374 	.dw	0,(Ldebug_CIE3_start-4)
      000544 00 00 11 AF           4375 	.dw	0,(Scommon$PowerDown_Mode$17)	;initial loc
      000548 00 00 00 0F           4376 	.dw	0,Scommon$PowerDown_Mode$26-Scommon$PowerDown_Mode$17
      00054C 01                    4377 	.db	1
      00054D 00 00 11 AF           4378 	.dw	0,(Scommon$PowerDown_Mode$17)
      000551 0E                    4379 	.db	14
      000552 02                    4380 	.uleb128	2
      000553 00                    4381 	.db	0
                                   4382 
                                   4383 	.area .debug_frame (NOLOAD)
      000554 00 00                 4384 	.dw	0
      000556 00 10                 4385 	.dw	Ldebug_CIE4_end-Ldebug_CIE4_start
      000558                       4386 Ldebug_CIE4_start:
      000558 FF FF                 4387 	.dw	0xffff
      00055A FF FF                 4388 	.dw	0xffff
      00055C 01                    4389 	.db	1
      00055D 00                    4390 	.db	0
      00055E 01                    4391 	.uleb128	1
      00055F 01                    4392 	.sleb128	1
      000560 09                    4393 	.db	9
      000561 0C                    4394 	.db	12
      000562 16                    4395 	.uleb128	22
      000563 02                    4396 	.uleb128	2
      000564 89                    4397 	.db	137
      000565 01                    4398 	.uleb128	1
      000566 00                    4399 	.db	0
      000567 00                    4400 	.db	0
      000568                       4401 Ldebug_CIE4_end:
      000568 00 00 00 14           4402 	.dw	0,20
      00056C 00 00 05 54           4403 	.dw	0,(Ldebug_CIE4_start-4)
      000570 00 00 11 9C           4404 	.dw	0,(Scommon$Software_Reset$8)	;initial loc
      000574 00 00 00 13           4405 	.dw	0,Scommon$Software_Reset$15-Scommon$Software_Reset$8
      000578 01                    4406 	.db	1
      000579 00 00 11 9C           4407 	.dw	0,(Scommon$Software_Reset$8)
      00057D 0E                    4408 	.db	14
      00057E 02                    4409 	.uleb128	2
      00057F 00                    4410 	.db	0
                                   4411 
                                   4412 	.area .debug_frame (NOLOAD)
      000580 00 00                 4413 	.dw	0
      000582 00 10                 4414 	.dw	Ldebug_CIE5_end-Ldebug_CIE5_start
      000584                       4415 Ldebug_CIE5_start:
      000584 FF FF                 4416 	.dw	0xffff
      000586 FF FF                 4417 	.dw	0xffff
      000588 01                    4418 	.db	1
      000589 00                    4419 	.db	0
      00058A 01                    4420 	.uleb128	1
      00058B 01                    4421 	.sleb128	1
      00058C 09                    4422 	.db	9
      00058D 0C                    4423 	.db	12
      00058E 16                    4424 	.uleb128	22
      00058F 02                    4425 	.uleb128	2
      000590 89                    4426 	.db	137
      000591 01                    4427 	.uleb128	1
      000592 00                    4428 	.db	0
      000593 00                    4429 	.db	0
      000594                       4430 Ldebug_CIE5_end:
      000594 00 00 00 14           4431 	.dw	0,20
      000598 00 00 05 80           4432 	.dw	0,(Ldebug_CIE5_start-4)
      00059C 00 00 11 7D           4433 	.dw	0,(Scommon$Read_APROM_BYTE$1)	;initial loc
      0005A0 00 00 00 1F           4434 	.dw	0,Scommon$Read_APROM_BYTE$6-Scommon$Read_APROM_BYTE$1
      0005A4 01                    4435 	.db	1
      0005A5 00 00 11 7D           4436 	.dw	0,(Scommon$Read_APROM_BYTE$1)
      0005A9 0E                    4437 	.db	14
      0005AA 02                    4438 	.uleb128	2
      0005AB 00                    4439 	.db	0
