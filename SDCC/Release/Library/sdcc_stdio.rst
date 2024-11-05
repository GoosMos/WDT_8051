                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.2.6 #13647 (MINGW32)
                                      4 ;--------------------------------------------------------
                                      5 	.module sdcc_stdio
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
                                    243 	.globl _putchar
                                    244 	.globl _getchar
                                    245 ;--------------------------------------------------------
                                    246 ; special function registers
                                    247 ;--------------------------------------------------------
                                    248 	.area RSEG    (ABS,DATA)
      000000                        249 	.org 0x0000
                           000080   250 G$P0$0_0$0 == 0x0080
                           000080   251 _P0	=	0x0080
                           000081   252 G$SP$0_0$0 == 0x0081
                           000081   253 _SP	=	0x0081
                           000082   254 G$DPL$0_0$0 == 0x0082
                           000082   255 _DPL	=	0x0082
                           000083   256 G$DPH$0_0$0 == 0x0083
                           000083   257 _DPH	=	0x0083
                           000084   258 G$RCTRIM0$0_0$0 == 0x0084
                           000084   259 _RCTRIM0	=	0x0084
                           000085   260 G$RCTRIM1$0_0$0 == 0x0085
                           000085   261 _RCTRIM1	=	0x0085
                           000086   262 G$RWK$0_0$0 == 0x0086
                           000086   263 _RWK	=	0x0086
                           000087   264 G$PCON$0_0$0 == 0x0087
                           000087   265 _PCON	=	0x0087
                           000088   266 G$TCON$0_0$0 == 0x0088
                           000088   267 _TCON	=	0x0088
                           000089   268 G$TMOD$0_0$0 == 0x0089
                           000089   269 _TMOD	=	0x0089
                           00008A   270 G$TL0$0_0$0 == 0x008a
                           00008A   271 _TL0	=	0x008a
                           00008B   272 G$TL1$0_0$0 == 0x008b
                           00008B   273 _TL1	=	0x008b
                           00008C   274 G$TH0$0_0$0 == 0x008c
                           00008C   275 _TH0	=	0x008c
                           00008D   276 G$TH1$0_0$0 == 0x008d
                           00008D   277 _TH1	=	0x008d
                           00008E   278 G$CKCON$0_0$0 == 0x008e
                           00008E   279 _CKCON	=	0x008e
                           00008F   280 G$WKCON$0_0$0 == 0x008f
                           00008F   281 _WKCON	=	0x008f
                           000090   282 G$P1$0_0$0 == 0x0090
                           000090   283 _P1	=	0x0090
                           000091   284 G$SFRS$0_0$0 == 0x0091
                           000091   285 _SFRS	=	0x0091
                           000092   286 G$CAPCON0$0_0$0 == 0x0092
                           000092   287 _CAPCON0	=	0x0092
                           000093   288 G$CAPCON1$0_0$0 == 0x0093
                           000093   289 _CAPCON1	=	0x0093
                           000094   290 G$CAPCON2$0_0$0 == 0x0094
                           000094   291 _CAPCON2	=	0x0094
                           000095   292 G$CKDIV$0_0$0 == 0x0095
                           000095   293 _CKDIV	=	0x0095
                           000096   294 G$CKSWT$0_0$0 == 0x0096
                           000096   295 _CKSWT	=	0x0096
                           000097   296 G$CKEN$0_0$0 == 0x0097
                           000097   297 _CKEN	=	0x0097
                           000098   298 G$SCON$0_0$0 == 0x0098
                           000098   299 _SCON	=	0x0098
                           000099   300 G$SBUF$0_0$0 == 0x0099
                           000099   301 _SBUF	=	0x0099
                           00009A   302 G$SBUF_1$0_0$0 == 0x009a
                           00009A   303 _SBUF_1	=	0x009a
                           00009B   304 G$EIE$0_0$0 == 0x009b
                           00009B   305 _EIE	=	0x009b
                           00009C   306 G$EIE1$0_0$0 == 0x009c
                           00009C   307 _EIE1	=	0x009c
                           00009F   308 G$CHPCON$0_0$0 == 0x009f
                           00009F   309 _CHPCON	=	0x009f
                           0000A0   310 G$P2$0_0$0 == 0x00a0
                           0000A0   311 _P2	=	0x00a0
                           0000A2   312 G$AUXR1$0_0$0 == 0x00a2
                           0000A2   313 _AUXR1	=	0x00a2
                           0000A3   314 G$BODCON0$0_0$0 == 0x00a3
                           0000A3   315 _BODCON0	=	0x00a3
                           0000A4   316 G$IAPTRG$0_0$0 == 0x00a4
                           0000A4   317 _IAPTRG	=	0x00a4
                           0000A5   318 G$IAPUEN$0_0$0 == 0x00a5
                           0000A5   319 _IAPUEN	=	0x00a5
                           0000A6   320 G$IAPAL$0_0$0 == 0x00a6
                           0000A6   321 _IAPAL	=	0x00a6
                           0000A7   322 G$IAPAH$0_0$0 == 0x00a7
                           0000A7   323 _IAPAH	=	0x00a7
                           0000A8   324 G$IE$0_0$0 == 0x00a8
                           0000A8   325 _IE	=	0x00a8
                           0000A9   326 G$SADDR$0_0$0 == 0x00a9
                           0000A9   327 _SADDR	=	0x00a9
                           0000AA   328 G$WDCON$0_0$0 == 0x00aa
                           0000AA   329 _WDCON	=	0x00aa
                           0000AB   330 G$BODCON1$0_0$0 == 0x00ab
                           0000AB   331 _BODCON1	=	0x00ab
                           0000AC   332 G$P3M1$0_0$0 == 0x00ac
                           0000AC   333 _P3M1	=	0x00ac
                           0000AC   334 G$P3S$0_0$0 == 0x00ac
                           0000AC   335 _P3S	=	0x00ac
                           0000AD   336 G$P3M2$0_0$0 == 0x00ad
                           0000AD   337 _P3M2	=	0x00ad
                           0000AD   338 G$P3SR$0_0$0 == 0x00ad
                           0000AD   339 _P3SR	=	0x00ad
                           0000AE   340 G$IAPFD$0_0$0 == 0x00ae
                           0000AE   341 _IAPFD	=	0x00ae
                           0000AF   342 G$IAPCN$0_0$0 == 0x00af
                           0000AF   343 _IAPCN	=	0x00af
                           0000B0   344 G$P3$0_0$0 == 0x00b0
                           0000B0   345 _P3	=	0x00b0
                           0000B1   346 G$P0M1$0_0$0 == 0x00b1
                           0000B1   347 _P0M1	=	0x00b1
                           0000B1   348 G$P0S$0_0$0 == 0x00b1
                           0000B1   349 _P0S	=	0x00b1
                           0000B2   350 G$P0M2$0_0$0 == 0x00b2
                           0000B2   351 _P0M2	=	0x00b2
                           0000B2   352 G$P0SR$0_0$0 == 0x00b2
                           0000B2   353 _P0SR	=	0x00b2
                           0000B3   354 G$P1M1$0_0$0 == 0x00b3
                           0000B3   355 _P1M1	=	0x00b3
                           0000B3   356 G$P1S$0_0$0 == 0x00b3
                           0000B3   357 _P1S	=	0x00b3
                           0000B4   358 G$P1M2$0_0$0 == 0x00b4
                           0000B4   359 _P1M2	=	0x00b4
                           0000B4   360 G$P1SR$0_0$0 == 0x00b4
                           0000B4   361 _P1SR	=	0x00b4
                           0000B5   362 G$P2S$0_0$0 == 0x00b5
                           0000B5   363 _P2S	=	0x00b5
                           0000B7   364 G$IPH$0_0$0 == 0x00b7
                           0000B7   365 _IPH	=	0x00b7
                           0000B7   366 G$PWMINTC$0_0$0 == 0x00b7
                           0000B7   367 _PWMINTC	=	0x00b7
                           0000B8   368 G$IP$0_0$0 == 0x00b8
                           0000B8   369 _IP	=	0x00b8
                           0000B9   370 G$SADEN$0_0$0 == 0x00b9
                           0000B9   371 _SADEN	=	0x00b9
                           0000BA   372 G$SADEN_1$0_0$0 == 0x00ba
                           0000BA   373 _SADEN_1	=	0x00ba
                           0000BB   374 G$SADDR_1$0_0$0 == 0x00bb
                           0000BB   375 _SADDR_1	=	0x00bb
                           0000BC   376 G$I2DAT$0_0$0 == 0x00bc
                           0000BC   377 _I2DAT	=	0x00bc
                           0000BD   378 G$I2STAT$0_0$0 == 0x00bd
                           0000BD   379 _I2STAT	=	0x00bd
                           0000BE   380 G$I2CLK$0_0$0 == 0x00be
                           0000BE   381 _I2CLK	=	0x00be
                           0000BF   382 G$I2TOC$0_0$0 == 0x00bf
                           0000BF   383 _I2TOC	=	0x00bf
                           0000C0   384 G$I2CON$0_0$0 == 0x00c0
                           0000C0   385 _I2CON	=	0x00c0
                           0000C1   386 G$I2ADDR$0_0$0 == 0x00c1
                           0000C1   387 _I2ADDR	=	0x00c1
                           0000C2   388 G$ADCRL$0_0$0 == 0x00c2
                           0000C2   389 _ADCRL	=	0x00c2
                           0000C3   390 G$ADCRH$0_0$0 == 0x00c3
                           0000C3   391 _ADCRH	=	0x00c3
                           0000C4   392 G$T3CON$0_0$0 == 0x00c4
                           0000C4   393 _T3CON	=	0x00c4
                           0000C4   394 G$PWM4H$0_0$0 == 0x00c4
                           0000C4   395 _PWM4H	=	0x00c4
                           0000C5   396 G$RL3$0_0$0 == 0x00c5
                           0000C5   397 _RL3	=	0x00c5
                           0000C5   398 G$PWM5H$0_0$0 == 0x00c5
                           0000C5   399 _PWM5H	=	0x00c5
                           0000C6   400 G$RH3$0_0$0 == 0x00c6
                           0000C6   401 _RH3	=	0x00c6
                           0000C6   402 G$PIOCON1$0_0$0 == 0x00c6
                           0000C6   403 _PIOCON1	=	0x00c6
                           0000C7   404 G$TA$0_0$0 == 0x00c7
                           0000C7   405 _TA	=	0x00c7
                           0000C8   406 G$T2CON$0_0$0 == 0x00c8
                           0000C8   407 _T2CON	=	0x00c8
                           0000C9   408 G$T2MOD$0_0$0 == 0x00c9
                           0000C9   409 _T2MOD	=	0x00c9
                           0000CA   410 G$RCMP2L$0_0$0 == 0x00ca
                           0000CA   411 _RCMP2L	=	0x00ca
                           0000CB   412 G$RCMP2H$0_0$0 == 0x00cb
                           0000CB   413 _RCMP2H	=	0x00cb
                           0000CC   414 G$TL2$0_0$0 == 0x00cc
                           0000CC   415 _TL2	=	0x00cc
                           0000CC   416 G$PWM4L$0_0$0 == 0x00cc
                           0000CC   417 _PWM4L	=	0x00cc
                           0000CD   418 G$TH2$0_0$0 == 0x00cd
                           0000CD   419 _TH2	=	0x00cd
                           0000CD   420 G$PWM5L$0_0$0 == 0x00cd
                           0000CD   421 _PWM5L	=	0x00cd
                           0000CE   422 G$ADCMPL$0_0$0 == 0x00ce
                           0000CE   423 _ADCMPL	=	0x00ce
                           0000CF   424 G$ADCMPH$0_0$0 == 0x00cf
                           0000CF   425 _ADCMPH	=	0x00cf
                           0000D0   426 G$PSW$0_0$0 == 0x00d0
                           0000D0   427 _PSW	=	0x00d0
                           0000D1   428 G$PWMPH$0_0$0 == 0x00d1
                           0000D1   429 _PWMPH	=	0x00d1
                           0000D2   430 G$PWM0H$0_0$0 == 0x00d2
                           0000D2   431 _PWM0H	=	0x00d2
                           0000D3   432 G$PWM1H$0_0$0 == 0x00d3
                           0000D3   433 _PWM1H	=	0x00d3
                           0000D4   434 G$PWM2H$0_0$0 == 0x00d4
                           0000D4   435 _PWM2H	=	0x00d4
                           0000D5   436 G$PWM3H$0_0$0 == 0x00d5
                           0000D5   437 _PWM3H	=	0x00d5
                           0000D6   438 G$PNP$0_0$0 == 0x00d6
                           0000D6   439 _PNP	=	0x00d6
                           0000D7   440 G$FBD$0_0$0 == 0x00d7
                           0000D7   441 _FBD	=	0x00d7
                           0000D8   442 G$PWMCON0$0_0$0 == 0x00d8
                           0000D8   443 _PWMCON0	=	0x00d8
                           0000D9   444 G$PWMPL$0_0$0 == 0x00d9
                           0000D9   445 _PWMPL	=	0x00d9
                           0000DA   446 G$PWM0L$0_0$0 == 0x00da
                           0000DA   447 _PWM0L	=	0x00da
                           0000DB   448 G$PWM1L$0_0$0 == 0x00db
                           0000DB   449 _PWM1L	=	0x00db
                           0000DC   450 G$PWM2L$0_0$0 == 0x00dc
                           0000DC   451 _PWM2L	=	0x00dc
                           0000DD   452 G$PWM3L$0_0$0 == 0x00dd
                           0000DD   453 _PWM3L	=	0x00dd
                           0000DE   454 G$PIOCON0$0_0$0 == 0x00de
                           0000DE   455 _PIOCON0	=	0x00de
                           0000DF   456 G$PWMCON1$0_0$0 == 0x00df
                           0000DF   457 _PWMCON1	=	0x00df
                           0000E0   458 G$ACC$0_0$0 == 0x00e0
                           0000E0   459 _ACC	=	0x00e0
                           0000E1   460 G$ADCCON1$0_0$0 == 0x00e1
                           0000E1   461 _ADCCON1	=	0x00e1
                           0000E2   462 G$ADCCON2$0_0$0 == 0x00e2
                           0000E2   463 _ADCCON2	=	0x00e2
                           0000E3   464 G$ADCDLY$0_0$0 == 0x00e3
                           0000E3   465 _ADCDLY	=	0x00e3
                           0000E4   466 G$C0L$0_0$0 == 0x00e4
                           0000E4   467 _C0L	=	0x00e4
                           0000E5   468 G$C0H$0_0$0 == 0x00e5
                           0000E5   469 _C0H	=	0x00e5
                           0000E6   470 G$C1L$0_0$0 == 0x00e6
                           0000E6   471 _C1L	=	0x00e6
                           0000E7   472 G$C1H$0_0$0 == 0x00e7
                           0000E7   473 _C1H	=	0x00e7
                           0000E8   474 G$ADCCON0$0_0$0 == 0x00e8
                           0000E8   475 _ADCCON0	=	0x00e8
                           0000E9   476 G$PICON$0_0$0 == 0x00e9
                           0000E9   477 _PICON	=	0x00e9
                           0000EA   478 G$PINEN$0_0$0 == 0x00ea
                           0000EA   479 _PINEN	=	0x00ea
                           0000EB   480 G$PIPEN$0_0$0 == 0x00eb
                           0000EB   481 _PIPEN	=	0x00eb
                           0000EC   482 G$PIF$0_0$0 == 0x00ec
                           0000EC   483 _PIF	=	0x00ec
                           0000ED   484 G$C2L$0_0$0 == 0x00ed
                           0000ED   485 _C2L	=	0x00ed
                           0000EE   486 G$C2H$0_0$0 == 0x00ee
                           0000EE   487 _C2H	=	0x00ee
                           0000EF   488 G$EIP$0_0$0 == 0x00ef
                           0000EF   489 _EIP	=	0x00ef
                           0000F0   490 G$B$0_0$0 == 0x00f0
                           0000F0   491 _B	=	0x00f0
                           0000F1   492 G$CAPCON3$0_0$0 == 0x00f1
                           0000F1   493 _CAPCON3	=	0x00f1
                           0000F2   494 G$CAPCON4$0_0$0 == 0x00f2
                           0000F2   495 _CAPCON4	=	0x00f2
                           0000F3   496 G$SPCR$0_0$0 == 0x00f3
                           0000F3   497 _SPCR	=	0x00f3
                           0000F3   498 G$SPCR2$0_0$0 == 0x00f3
                           0000F3   499 _SPCR2	=	0x00f3
                           0000F4   500 G$SPSR$0_0$0 == 0x00f4
                           0000F4   501 _SPSR	=	0x00f4
                           0000F5   502 G$SPDR$0_0$0 == 0x00f5
                           0000F5   503 _SPDR	=	0x00f5
                           0000F6   504 G$AINDIDS$0_0$0 == 0x00f6
                           0000F6   505 _AINDIDS	=	0x00f6
                           0000F7   506 G$EIPH$0_0$0 == 0x00f7
                           0000F7   507 _EIPH	=	0x00f7
                           0000F8   508 G$SCON_1$0_0$0 == 0x00f8
                           0000F8   509 _SCON_1	=	0x00f8
                           0000F9   510 G$PDTEN$0_0$0 == 0x00f9
                           0000F9   511 _PDTEN	=	0x00f9
                           0000FA   512 G$PDTCNT$0_0$0 == 0x00fa
                           0000FA   513 _PDTCNT	=	0x00fa
                           0000FB   514 G$PMEN$0_0$0 == 0x00fb
                           0000FB   515 _PMEN	=	0x00fb
                           0000FC   516 G$PMD$0_0$0 == 0x00fc
                           0000FC   517 _PMD	=	0x00fc
                           0000FE   518 G$EIP1$0_0$0 == 0x00fe
                           0000FE   519 _EIP1	=	0x00fe
                           0000FF   520 G$EIPH1$0_0$0 == 0x00ff
                           0000FF   521 _EIPH1	=	0x00ff
                                    522 ;--------------------------------------------------------
                                    523 ; special function bits
                                    524 ;--------------------------------------------------------
                                    525 	.area RSEG    (ABS,DATA)
      000000                        526 	.org 0x0000
                           0000FF   527 G$SM0_1$0_0$0 == 0x00ff
                           0000FF   528 _SM0_1	=	0x00ff
                           0000FF   529 G$FE_1$0_0$0 == 0x00ff
                           0000FF   530 _FE_1	=	0x00ff
                           0000FE   531 G$SM1_1$0_0$0 == 0x00fe
                           0000FE   532 _SM1_1	=	0x00fe
                           0000FD   533 G$SM2_1$0_0$0 == 0x00fd
                           0000FD   534 _SM2_1	=	0x00fd
                           0000FC   535 G$REN_1$0_0$0 == 0x00fc
                           0000FC   536 _REN_1	=	0x00fc
                           0000FB   537 G$TB8_1$0_0$0 == 0x00fb
                           0000FB   538 _TB8_1	=	0x00fb
                           0000FA   539 G$RB8_1$0_0$0 == 0x00fa
                           0000FA   540 _RB8_1	=	0x00fa
                           0000F9   541 G$TI_1$0_0$0 == 0x00f9
                           0000F9   542 _TI_1	=	0x00f9
                           0000F8   543 G$RI_1$0_0$0 == 0x00f8
                           0000F8   544 _RI_1	=	0x00f8
                           0000EF   545 G$ADCF$0_0$0 == 0x00ef
                           0000EF   546 _ADCF	=	0x00ef
                           0000EE   547 G$ADCS$0_0$0 == 0x00ee
                           0000EE   548 _ADCS	=	0x00ee
                           0000ED   549 G$ETGSEL1$0_0$0 == 0x00ed
                           0000ED   550 _ETGSEL1	=	0x00ed
                           0000EC   551 G$ETGSEL0$0_0$0 == 0x00ec
                           0000EC   552 _ETGSEL0	=	0x00ec
                           0000EB   553 G$ADCHS3$0_0$0 == 0x00eb
                           0000EB   554 _ADCHS3	=	0x00eb
                           0000EA   555 G$ADCHS2$0_0$0 == 0x00ea
                           0000EA   556 _ADCHS2	=	0x00ea
                           0000E9   557 G$ADCHS1$0_0$0 == 0x00e9
                           0000E9   558 _ADCHS1	=	0x00e9
                           0000E8   559 G$ADCHS0$0_0$0 == 0x00e8
                           0000E8   560 _ADCHS0	=	0x00e8
                           0000DF   561 G$PWMRUN$0_0$0 == 0x00df
                           0000DF   562 _PWMRUN	=	0x00df
                           0000DE   563 G$LOAD$0_0$0 == 0x00de
                           0000DE   564 _LOAD	=	0x00de
                           0000DD   565 G$PWMF$0_0$0 == 0x00dd
                           0000DD   566 _PWMF	=	0x00dd
                           0000DC   567 G$CLRPWM$0_0$0 == 0x00dc
                           0000DC   568 _CLRPWM	=	0x00dc
                           0000D7   569 G$CY$0_0$0 == 0x00d7
                           0000D7   570 _CY	=	0x00d7
                           0000D6   571 G$AC$0_0$0 == 0x00d6
                           0000D6   572 _AC	=	0x00d6
                           0000D5   573 G$F0$0_0$0 == 0x00d5
                           0000D5   574 _F0	=	0x00d5
                           0000D4   575 G$RS1$0_0$0 == 0x00d4
                           0000D4   576 _RS1	=	0x00d4
                           0000D3   577 G$RS0$0_0$0 == 0x00d3
                           0000D3   578 _RS0	=	0x00d3
                           0000D2   579 G$OV$0_0$0 == 0x00d2
                           0000D2   580 _OV	=	0x00d2
                           0000D0   581 G$P$0_0$0 == 0x00d0
                           0000D0   582 _P	=	0x00d0
                           0000CF   583 G$TF2$0_0$0 == 0x00cf
                           0000CF   584 _TF2	=	0x00cf
                           0000CA   585 G$TR2$0_0$0 == 0x00ca
                           0000CA   586 _TR2	=	0x00ca
                           0000C8   587 G$CM_RL2$0_0$0 == 0x00c8
                           0000C8   588 _CM_RL2	=	0x00c8
                           0000C6   589 G$I2CEN$0_0$0 == 0x00c6
                           0000C6   590 _I2CEN	=	0x00c6
                           0000C5   591 G$STA$0_0$0 == 0x00c5
                           0000C5   592 _STA	=	0x00c5
                           0000C4   593 G$STO$0_0$0 == 0x00c4
                           0000C4   594 _STO	=	0x00c4
                           0000C3   595 G$SI$0_0$0 == 0x00c3
                           0000C3   596 _SI	=	0x00c3
                           0000C2   597 G$AA$0_0$0 == 0x00c2
                           0000C2   598 _AA	=	0x00c2
                           0000C0   599 G$I2CPX$0_0$0 == 0x00c0
                           0000C0   600 _I2CPX	=	0x00c0
                           0000BE   601 G$PADC$0_0$0 == 0x00be
                           0000BE   602 _PADC	=	0x00be
                           0000BD   603 G$PBOD$0_0$0 == 0x00bd
                           0000BD   604 _PBOD	=	0x00bd
                           0000BC   605 G$PS$0_0$0 == 0x00bc
                           0000BC   606 _PS	=	0x00bc
                           0000BB   607 G$PT1$0_0$0 == 0x00bb
                           0000BB   608 _PT1	=	0x00bb
                           0000BA   609 G$PX1$0_0$0 == 0x00ba
                           0000BA   610 _PX1	=	0x00ba
                           0000B9   611 G$PT0$0_0$0 == 0x00b9
                           0000B9   612 _PT0	=	0x00b9
                           0000B8   613 G$PX0$0_0$0 == 0x00b8
                           0000B8   614 _PX0	=	0x00b8
                           0000B0   615 G$P30$0_0$0 == 0x00b0
                           0000B0   616 _P30	=	0x00b0
                           0000AF   617 G$EA$0_0$0 == 0x00af
                           0000AF   618 _EA	=	0x00af
                           0000AE   619 G$EADC$0_0$0 == 0x00ae
                           0000AE   620 _EADC	=	0x00ae
                           0000AD   621 G$EBOD$0_0$0 == 0x00ad
                           0000AD   622 _EBOD	=	0x00ad
                           0000AC   623 G$ES$0_0$0 == 0x00ac
                           0000AC   624 _ES	=	0x00ac
                           0000AB   625 G$ET1$0_0$0 == 0x00ab
                           0000AB   626 _ET1	=	0x00ab
                           0000AA   627 G$EX1$0_0$0 == 0x00aa
                           0000AA   628 _EX1	=	0x00aa
                           0000A9   629 G$ET0$0_0$0 == 0x00a9
                           0000A9   630 _ET0	=	0x00a9
                           0000A8   631 G$EX0$0_0$0 == 0x00a8
                           0000A8   632 _EX0	=	0x00a8
                           0000A0   633 G$P20$0_0$0 == 0x00a0
                           0000A0   634 _P20	=	0x00a0
                           00009F   635 G$SM0$0_0$0 == 0x009f
                           00009F   636 _SM0	=	0x009f
                           00009F   637 G$FE$0_0$0 == 0x009f
                           00009F   638 _FE	=	0x009f
                           00009E   639 G$SM1$0_0$0 == 0x009e
                           00009E   640 _SM1	=	0x009e
                           00009D   641 G$SM2$0_0$0 == 0x009d
                           00009D   642 _SM2	=	0x009d
                           00009C   643 G$REN$0_0$0 == 0x009c
                           00009C   644 _REN	=	0x009c
                           00009B   645 G$TB8$0_0$0 == 0x009b
                           00009B   646 _TB8	=	0x009b
                           00009A   647 G$RB8$0_0$0 == 0x009a
                           00009A   648 _RB8	=	0x009a
                           000099   649 G$TI$0_0$0 == 0x0099
                           000099   650 _TI	=	0x0099
                           000098   651 G$RI$0_0$0 == 0x0098
                           000098   652 _RI	=	0x0098
                           000097   653 G$P17$0_0$0 == 0x0097
                           000097   654 _P17	=	0x0097
                           000096   655 G$P16$0_0$0 == 0x0096
                           000096   656 _P16	=	0x0096
                           000096   657 G$TXD_1$0_0$0 == 0x0096
                           000096   658 _TXD_1	=	0x0096
                           000095   659 G$P15$0_0$0 == 0x0095
                           000095   660 _P15	=	0x0095
                           000094   661 G$P14$0_0$0 == 0x0094
                           000094   662 _P14	=	0x0094
                           000094   663 G$SDA$0_0$0 == 0x0094
                           000094   664 _SDA	=	0x0094
                           000093   665 G$P13$0_0$0 == 0x0093
                           000093   666 _P13	=	0x0093
                           000093   667 G$SCL$0_0$0 == 0x0093
                           000093   668 _SCL	=	0x0093
                           000092   669 G$P12$0_0$0 == 0x0092
                           000092   670 _P12	=	0x0092
                           000091   671 G$P11$0_0$0 == 0x0091
                           000091   672 _P11	=	0x0091
                           000090   673 G$P10$0_0$0 == 0x0090
                           000090   674 _P10	=	0x0090
                           00008F   675 G$TF1$0_0$0 == 0x008f
                           00008F   676 _TF1	=	0x008f
                           00008E   677 G$TR1$0_0$0 == 0x008e
                           00008E   678 _TR1	=	0x008e
                           00008D   679 G$TF0$0_0$0 == 0x008d
                           00008D   680 _TF0	=	0x008d
                           00008C   681 G$TR0$0_0$0 == 0x008c
                           00008C   682 _TR0	=	0x008c
                           00008B   683 G$IE1$0_0$0 == 0x008b
                           00008B   684 _IE1	=	0x008b
                           00008A   685 G$IT1$0_0$0 == 0x008a
                           00008A   686 _IT1	=	0x008a
                           000089   687 G$IE0$0_0$0 == 0x0089
                           000089   688 _IE0	=	0x0089
                           000088   689 G$IT0$0_0$0 == 0x0088
                           000088   690 _IT0	=	0x0088
                           000087   691 G$P07$0_0$0 == 0x0087
                           000087   692 _P07	=	0x0087
                           000087   693 G$RXD$0_0$0 == 0x0087
                           000087   694 _RXD	=	0x0087
                           000086   695 G$P06$0_0$0 == 0x0086
                           000086   696 _P06	=	0x0086
                           000086   697 G$TXD$0_0$0 == 0x0086
                           000086   698 _TXD	=	0x0086
                           000085   699 G$P05$0_0$0 == 0x0085
                           000085   700 _P05	=	0x0085
                           000084   701 G$P04$0_0$0 == 0x0084
                           000084   702 _P04	=	0x0084
                           000084   703 G$STADC$0_0$0 == 0x0084
                           000084   704 _STADC	=	0x0084
                           000083   705 G$P03$0_0$0 == 0x0083
                           000083   706 _P03	=	0x0083
                           000082   707 G$P02$0_0$0 == 0x0082
                           000082   708 _P02	=	0x0082
                           000082   709 G$RXD_1$0_0$0 == 0x0082
                           000082   710 _RXD_1	=	0x0082
                           000081   711 G$P01$0_0$0 == 0x0081
                           000081   712 _P01	=	0x0081
                           000081   713 G$MISO$0_0$0 == 0x0081
                           000081   714 _MISO	=	0x0081
                           000080   715 G$P00$0_0$0 == 0x0080
                           000080   716 _P00	=	0x0080
                           000080   717 G$MOSI$0_0$0 == 0x0080
                           000080   718 _MOSI	=	0x0080
                                    719 ;--------------------------------------------------------
                                    720 ; overlayable register banks
                                    721 ;--------------------------------------------------------
                                    722 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        723 	.ds 8
                                    724 ;--------------------------------------------------------
                                    725 ; internal ram data
                                    726 ;--------------------------------------------------------
                                    727 	.area DSEG    (DATA)
                                    728 ;--------------------------------------------------------
                                    729 ; internal ram data
                                    730 ;--------------------------------------------------------
                                    731 	.area INITIALIZED
                                    732 ;--------------------------------------------------------
                                    733 ; overlayable items in internal ram
                                    734 ;--------------------------------------------------------
                                    735 ;--------------------------------------------------------
                                    736 ; indirectly addressable internal ram data
                                    737 ;--------------------------------------------------------
                                    738 	.area ISEG    (DATA)
                                    739 ;--------------------------------------------------------
                                    740 ; absolute internal ram data
                                    741 ;--------------------------------------------------------
                                    742 	.area IABS    (ABS,DATA)
                                    743 	.area IABS    (ABS,DATA)
                                    744 ;--------------------------------------------------------
                                    745 ; bit data
                                    746 ;--------------------------------------------------------
                                    747 	.area BSEG    (BIT)
                                    748 ;--------------------------------------------------------
                                    749 ; paged external ram data
                                    750 ;--------------------------------------------------------
                                    751 	.area PSEG    (PAG,XDATA)
                                    752 ;--------------------------------------------------------
                                    753 ; uninitialized external ram data
                                    754 ;--------------------------------------------------------
                                    755 	.area XSEG    (XDATA)
                           000000   756 Lsdcc_stdio.putchar$c$1_0$145==.
      000028                        757 _putchar_c_65536_145:
      000028                        758 	.ds 2
                           000002   759 Lsdcc_stdio.getchar$c$1_0$148==.
      00002A                        760 _getchar_c_65536_148:
      00002A                        761 	.ds 1
                                    762 ;--------------------------------------------------------
                                    763 ; absolute external ram data
                                    764 ;--------------------------------------------------------
                                    765 	.area XABS    (ABS,XDATA)
                                    766 ;--------------------------------------------------------
                                    767 ; initialized external ram data
                                    768 ;--------------------------------------------------------
                                    769 	.area XISEG   (XDATA)
                                    770 	.area HOME    (CODE)
                                    771 	.area GSINIT0 (CODE)
                                    772 	.area GSINIT1 (CODE)
                                    773 	.area GSINIT2 (CODE)
                                    774 	.area GSINIT3 (CODE)
                                    775 	.area GSINIT4 (CODE)
                                    776 	.area GSINIT5 (CODE)
                                    777 	.area GSINIT  (CODE)
                                    778 	.area GSFINAL (CODE)
                                    779 	.area CSEG    (CODE)
                                    780 ;--------------------------------------------------------
                                    781 ; global & static initialisations
                                    782 ;--------------------------------------------------------
                                    783 	.area HOME    (CODE)
                                    784 	.area GSINIT  (CODE)
                                    785 	.area GSFINAL (CODE)
                                    786 	.area GSINIT  (CODE)
                                    787 ;--------------------------------------------------------
                                    788 ; Home
                                    789 ;--------------------------------------------------------
                                    790 	.area HOME    (CODE)
                                    791 	.area HOME    (CODE)
                                    792 ;--------------------------------------------------------
                                    793 ; code
                                    794 ;--------------------------------------------------------
                                    795 	.area CSEG    (CODE)
                                    796 ;------------------------------------------------------------
                                    797 ;Allocation info for local variables in function 'putchar'
                                    798 ;------------------------------------------------------------
                                    799 ;c                         Allocated with name '_putchar_c_65536_145'
                                    800 ;------------------------------------------------------------
                           000000   801 	Ssdcc_stdio$putchar$0 ==.
                                    802 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sdcc_stdio.c:36: int putchar (int c)  {
                                    803 ;	-----------------------------------------
                                    804 ;	 function putchar
                                    805 ;	-----------------------------------------
      0011E7                        806 _putchar:
                           000007   807 	ar7 = 0x07
                           000006   808 	ar6 = 0x06
                           000005   809 	ar5 = 0x05
                           000004   810 	ar4 = 0x04
                           000003   811 	ar3 = 0x03
                           000002   812 	ar2 = 0x02
                           000001   813 	ar1 = 0x01
                           000000   814 	ar0 = 0x00
                           000000   815 	Ssdcc_stdio$putchar$1 ==.
      0011E7 AF 83            [24]  816 	mov	r7,dph
      0011E9 E5 82            [12]  817 	mov	a,dpl
      0011EB 90 00 28         [24]  818 	mov	dptr,#_putchar_c_65536_145
      0011EE F0               [24]  819 	movx	@dptr,a
      0011EF EF               [12]  820 	mov	a,r7
      0011F0 A3               [24]  821 	inc	dptr
      0011F1 F0               [24]  822 	movx	@dptr,a
                           00000B   823 	Ssdcc_stdio$putchar$2 ==.
                                    824 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sdcc_stdio.c:37: while (!TI);
      0011F2                        825 00101$:
                           00000B   826 	Ssdcc_stdio$putchar$3 ==.
                                    827 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sdcc_stdio.c:38: TI = 0;
                                    828 ;	assignBit
      0011F2 10 99 02         [24]  829 	jbc	_TI,00114$
      0011F5 80 FB            [24]  830 	sjmp	00101$
      0011F7                        831 00114$:
                           000010   832 	Ssdcc_stdio$putchar$4 ==.
                                    833 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sdcc_stdio.c:39: return (SBUF = c);
      0011F7 90 00 28         [24]  834 	mov	dptr,#_putchar_c_65536_145
      0011FA E0               [24]  835 	movx	a,@dptr
      0011FB FE               [12]  836 	mov	r6,a
      0011FC A3               [24]  837 	inc	dptr
      0011FD E0               [24]  838 	movx	a,@dptr
      0011FE 8E 99            [24]  839 	mov	_SBUF,r6
      001200 7F 00            [12]  840 	mov	r7,#0x00
      001202 8E 82            [24]  841 	mov	dpl,r6
      001204 8F 83            [24]  842 	mov	dph,r7
                           00001F   843 	Ssdcc_stdio$putchar$5 ==.
                                    844 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sdcc_stdio.c:40: }
                           00001F   845 	Ssdcc_stdio$putchar$6 ==.
                           00001F   846 	XG$putchar$0$0 ==.
      001206 22               [24]  847 	ret
                           000020   848 	Ssdcc_stdio$putchar$7 ==.
                                    849 ;------------------------------------------------------------
                                    850 ;Allocation info for local variables in function 'getchar'
                                    851 ;------------------------------------------------------------
                                    852 ;c                         Allocated with name '_getchar_c_65536_148'
                                    853 ;------------------------------------------------------------
                           000020   854 	Ssdcc_stdio$getchar$8 ==.
                                    855 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sdcc_stdio.c:52: char getchar (void)
                                    856 ;	-----------------------------------------
                                    857 ;	 function getchar
                                    858 ;	-----------------------------------------
      001207                        859 _getchar:
                           000020   860 	Ssdcc_stdio$getchar$9 ==.
                           000020   861 	Ssdcc_stdio$getchar$10 ==.
                                    862 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sdcc_stdio.c:56: while (!RI);
      001207                        863 00101$:
      001207 30 98 FD         [24]  864 	jnb	_RI,00101$
                           000023   865 	Ssdcc_stdio$getchar$11 ==.
                                    866 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sdcc_stdio.c:57: c = SBUF;
      00120A 90 00 2A         [24]  867 	mov	dptr,#_getchar_c_65536_148
      00120D E5 99            [12]  868 	mov	a,_SBUF
      00120F F0               [24]  869 	movx	@dptr,a
                           000029   870 	Ssdcc_stdio$getchar$12 ==.
                                    871 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sdcc_stdio.c:58: RI = 0;
                                    872 ;	assignBit
      001210 C2 98            [12]  873 	clr	_RI
                           00002B   874 	Ssdcc_stdio$getchar$13 ==.
                                    875 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sdcc_stdio.c:60: return c;
      001212 90 00 2A         [24]  876 	mov	dptr,#_getchar_c_65536_148
      001215 E0               [24]  877 	movx	a,@dptr
                           00002F   878 	Ssdcc_stdio$getchar$14 ==.
                                    879 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sdcc_stdio.c:61: }
                           00002F   880 	Ssdcc_stdio$getchar$15 ==.
                           00002F   881 	XG$getchar$0$0 ==.
      001216 F5 82            [12]  882 	mov	dpl,a
      001218 22               [24]  883 	ret
                           000032   884 	Ssdcc_stdio$getchar$16 ==.
                                    885 	.area CSEG    (CODE)
                                    886 	.area CONST   (CODE)
                                    887 	.area XINIT   (CODE)
                                    888 	.area INITIALIZER
                                    889 	.area CABS    (ABS,CODE)
                                    890 
                                    891 	.area .debug_line (NOLOAD)
      000C20 00 00 01 09            892 	.dw	0,Ldebug_line_end-Ldebug_line_start
      000C24                        893 Ldebug_line_start:
      000C24 00 02                  894 	.dw	2
      000C26 00 00 00 AD            895 	.dw	0,Ldebug_line_stmt-6-Ldebug_line_start
      000C2A 01                     896 	.db	1
      000C2B 01                     897 	.db	1
      000C2C FB                     898 	.db	-5
      000C2D 0F                     899 	.db	15
      000C2E 0A                     900 	.db	10
      000C2F 00                     901 	.db	0
      000C30 01                     902 	.db	1
      000C31 01                     903 	.db	1
      000C32 01                     904 	.db	1
      000C33 01                     905 	.db	1
      000C34 00                     906 	.db	0
      000C35 00                     907 	.db	0
      000C36 00                     908 	.db	0
      000C37 01                     909 	.db	1
      000C38 2F 2E 2E 2F 69 6E 63   910 	.ascii "/../include/mcs51"
             6C 75 64 65 2F 6D 63
             73 35 31
      000C49 00                     911 	.db	0
      000C4A 2F 2E 2E 2F 69 6E 63   912 	.ascii "/../include"
             6C 75 64 65
      000C55 00                     913 	.db	0
      000C56 00                     914 	.db	0
      000C57 43 3A 2F 55 73 65 72   915 	.ascii "C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sdcc_stdio.c"
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
             72 2F 73 72 63 2F 73
             64 63 63 5F 73 74 64
             69 6F 2E 63
      000CD2 00                     916 	.db	0
      000CD3 00                     917 	.uleb128	0
      000CD4 00                     918 	.uleb128	0
      000CD5 00                     919 	.uleb128	0
      000CD6 00                     920 	.db	0
      000CD7                        921 Ldebug_line_stmt:
      000CD7 00                     922 	.db	0
      000CD8 05                     923 	.uleb128	5
      000CD9 02                     924 	.db	2
      000CDA 00 00 11 E7            925 	.dw	0,(Ssdcc_stdio$putchar$0)
      000CDE 03                     926 	.db	3
      000CDF 23                     927 	.sleb128	35
      000CE0 01                     928 	.db	1
      000CE1 09                     929 	.db	9
      000CE2 00 0B                  930 	.dw	Ssdcc_stdio$putchar$2-Ssdcc_stdio$putchar$0
      000CE4 03                     931 	.db	3
      000CE5 01                     932 	.sleb128	1
      000CE6 01                     933 	.db	1
      000CE7 09                     934 	.db	9
      000CE8 00 00                  935 	.dw	Ssdcc_stdio$putchar$3-Ssdcc_stdio$putchar$2
      000CEA 03                     936 	.db	3
      000CEB 01                     937 	.sleb128	1
      000CEC 01                     938 	.db	1
      000CED 09                     939 	.db	9
      000CEE 00 05                  940 	.dw	Ssdcc_stdio$putchar$4-Ssdcc_stdio$putchar$3
      000CF0 03                     941 	.db	3
      000CF1 01                     942 	.sleb128	1
      000CF2 01                     943 	.db	1
      000CF3 09                     944 	.db	9
      000CF4 00 0F                  945 	.dw	Ssdcc_stdio$putchar$5-Ssdcc_stdio$putchar$4
      000CF6 03                     946 	.db	3
      000CF7 01                     947 	.sleb128	1
      000CF8 01                     948 	.db	1
      000CF9 09                     949 	.db	9
      000CFA 00 01                  950 	.dw	1+Ssdcc_stdio$putchar$6-Ssdcc_stdio$putchar$5
      000CFC 00                     951 	.db	0
      000CFD 01                     952 	.uleb128	1
      000CFE 01                     953 	.db	1
      000CFF 00                     954 	.db	0
      000D00 05                     955 	.uleb128	5
      000D01 02                     956 	.db	2
      000D02 00 00 12 07            957 	.dw	0,(Ssdcc_stdio$getchar$8)
      000D06 03                     958 	.db	3
      000D07 33                     959 	.sleb128	51
      000D08 01                     960 	.db	1
      000D09 09                     961 	.db	9
      000D0A 00 00                  962 	.dw	Ssdcc_stdio$getchar$10-Ssdcc_stdio$getchar$8
      000D0C 03                     963 	.db	3
      000D0D 04                     964 	.sleb128	4
      000D0E 01                     965 	.db	1
      000D0F 09                     966 	.db	9
      000D10 00 03                  967 	.dw	Ssdcc_stdio$getchar$11-Ssdcc_stdio$getchar$10
      000D12 03                     968 	.db	3
      000D13 01                     969 	.sleb128	1
      000D14 01                     970 	.db	1
      000D15 09                     971 	.db	9
      000D16 00 06                  972 	.dw	Ssdcc_stdio$getchar$12-Ssdcc_stdio$getchar$11
      000D18 03                     973 	.db	3
      000D19 01                     974 	.sleb128	1
      000D1A 01                     975 	.db	1
      000D1B 09                     976 	.db	9
      000D1C 00 02                  977 	.dw	Ssdcc_stdio$getchar$13-Ssdcc_stdio$getchar$12
      000D1E 03                     978 	.db	3
      000D1F 02                     979 	.sleb128	2
      000D20 01                     980 	.db	1
      000D21 09                     981 	.db	9
      000D22 00 04                  982 	.dw	Ssdcc_stdio$getchar$14-Ssdcc_stdio$getchar$13
      000D24 03                     983 	.db	3
      000D25 01                     984 	.sleb128	1
      000D26 01                     985 	.db	1
      000D27 09                     986 	.db	9
      000D28 00 01                  987 	.dw	1+Ssdcc_stdio$getchar$15-Ssdcc_stdio$getchar$14
      000D2A 00                     988 	.db	0
      000D2B 01                     989 	.uleb128	1
      000D2C 01                     990 	.db	1
      000D2D                        991 Ldebug_line_end:
                                    992 
                                    993 	.area .debug_loc (NOLOAD)
      000294                        994 Ldebug_loc_start:
      000294 00 00 12 07            995 	.dw	0,(Ssdcc_stdio$getchar$9)
      000298 00 00 12 19            996 	.dw	0,(Ssdcc_stdio$getchar$16)
      00029C 00 02                  997 	.dw	2
      00029E 86                     998 	.db	134
      00029F 01                     999 	.sleb128	1
      0002A0 00 00 00 00           1000 	.dw	0,0
      0002A4 00 00 00 00           1001 	.dw	0,0
      0002A8 00 00 11 E7           1002 	.dw	0,(Ssdcc_stdio$putchar$1)
      0002AC 00 00 12 07           1003 	.dw	0,(Ssdcc_stdio$putchar$7)
      0002B0 00 02                 1004 	.dw	2
      0002B2 86                    1005 	.db	134
      0002B3 01                    1006 	.sleb128	1
      0002B4 00 00 00 00           1007 	.dw	0,0
      0002B8 00 00 00 00           1008 	.dw	0,0
                                   1009 
                                   1010 	.area .debug_abbrev (NOLOAD)
      000183                       1011 Ldebug_abbrev:
      000183 01                    1012 	.uleb128	1
      000184 11                    1013 	.uleb128	17
      000185 01                    1014 	.db	1
      000186 03                    1015 	.uleb128	3
      000187 08                    1016 	.uleb128	8
      000188 10                    1017 	.uleb128	16
      000189 06                    1018 	.uleb128	6
      00018A 13                    1019 	.uleb128	19
      00018B 0B                    1020 	.uleb128	11
      00018C 25                    1021 	.uleb128	37
      00018D 08                    1022 	.uleb128	8
      00018E 00                    1023 	.uleb128	0
      00018F 00                    1024 	.uleb128	0
      000190 02                    1025 	.uleb128	2
      000191 24                    1026 	.uleb128	36
      000192 00                    1027 	.db	0
      000193 03                    1028 	.uleb128	3
      000194 08                    1029 	.uleb128	8
      000195 0B                    1030 	.uleb128	11
      000196 0B                    1031 	.uleb128	11
      000197 3E                    1032 	.uleb128	62
      000198 0B                    1033 	.uleb128	11
      000199 00                    1034 	.uleb128	0
      00019A 00                    1035 	.uleb128	0
      00019B 03                    1036 	.uleb128	3
      00019C 2E                    1037 	.uleb128	46
      00019D 01                    1038 	.db	1
      00019E 01                    1039 	.uleb128	1
      00019F 13                    1040 	.uleb128	19
      0001A0 03                    1041 	.uleb128	3
      0001A1 08                    1042 	.uleb128	8
      0001A2 11                    1043 	.uleb128	17
      0001A3 01                    1044 	.uleb128	1
      0001A4 12                    1045 	.uleb128	18
      0001A5 01                    1046 	.uleb128	1
      0001A6 3F                    1047 	.uleb128	63
      0001A7 0C                    1048 	.uleb128	12
      0001A8 40                    1049 	.uleb128	64
      0001A9 06                    1050 	.uleb128	6
      0001AA 49                    1051 	.uleb128	73
      0001AB 13                    1052 	.uleb128	19
      0001AC 00                    1053 	.uleb128	0
      0001AD 00                    1054 	.uleb128	0
      0001AE 04                    1055 	.uleb128	4
      0001AF 05                    1056 	.uleb128	5
      0001B0 00                    1057 	.db	0
      0001B1 02                    1058 	.uleb128	2
      0001B2 0A                    1059 	.uleb128	10
      0001B3 03                    1060 	.uleb128	3
      0001B4 08                    1061 	.uleb128	8
      0001B5 49                    1062 	.uleb128	73
      0001B6 13                    1063 	.uleb128	19
      0001B7 00                    1064 	.uleb128	0
      0001B8 00                    1065 	.uleb128	0
      0001B9 05                    1066 	.uleb128	5
      0001BA 34                    1067 	.uleb128	52
      0001BB 00                    1068 	.db	0
      0001BC 02                    1069 	.uleb128	2
      0001BD 0A                    1070 	.uleb128	10
      0001BE 03                    1071 	.uleb128	3
      0001BF 08                    1072 	.uleb128	8
      0001C0 49                    1073 	.uleb128	73
      0001C1 13                    1074 	.uleb128	19
      0001C2 00                    1075 	.uleb128	0
      0001C3 00                    1076 	.uleb128	0
      0001C4 06                    1077 	.uleb128	6
      0001C5 35                    1078 	.uleb128	53
      0001C6 00                    1079 	.db	0
      0001C7 49                    1080 	.uleb128	73
      0001C8 13                    1081 	.uleb128	19
      0001C9 00                    1082 	.uleb128	0
      0001CA 00                    1083 	.uleb128	0
      0001CB 07                    1084 	.uleb128	7
      0001CC 34                    1085 	.uleb128	52
      0001CD 00                    1086 	.db	0
      0001CE 02                    1087 	.uleb128	2
      0001CF 0A                    1088 	.uleb128	10
      0001D0 03                    1089 	.uleb128	3
      0001D1 08                    1090 	.uleb128	8
      0001D2 3F                    1091 	.uleb128	63
      0001D3 0C                    1092 	.uleb128	12
      0001D4 49                    1093 	.uleb128	73
      0001D5 13                    1094 	.uleb128	19
      0001D6 00                    1095 	.uleb128	0
      0001D7 00                    1096 	.uleb128	0
      0001D8 00                    1097 	.uleb128	0
                                   1098 
                                   1099 	.area .debug_info (NOLOAD)
      003086 00 00 10 AF           1100 	.dw	0,Ldebug_info_end-Ldebug_info_start
      00308A                       1101 Ldebug_info_start:
      00308A 00 02                 1102 	.dw	2
      00308C 00 00 01 83           1103 	.dw	0,(Ldebug_abbrev)
      003090 04                    1104 	.db	4
      003091 01                    1105 	.uleb128	1
      003092 43 3A 2F 55 73 65 72  1106 	.ascii "C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sdcc_stdio.c"
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
             72 2F 73 72 63 2F 73
             64 63 63 5F 73 74 64
             69 6F 2E 63
      00310D 00                    1107 	.db	0
      00310E 00 00 0C 20           1108 	.dw	0,(Ldebug_line_start+-4)
      003112 01                    1109 	.db	1
      003113 53 44 43 43 20 76 65  1110 	.ascii "SDCC version 4.2.6 #13647"
             72 73 69 6F 6E 20 34
             2E 32 2E 36 20 23 31
             33 36 34 37
      00312C 00                    1111 	.db	0
      00312D 02                    1112 	.uleb128	2
      00312E 69 6E 74              1113 	.ascii "int"
      003131 00                    1114 	.db	0
      003132 02                    1115 	.db	2
      003133 05                    1116 	.db	5
      003134 03                    1117 	.uleb128	3
      003135 00 00 00 DA           1118 	.dw	0,218
      003139 70 75 74 63 68 61 72  1119 	.ascii "putchar"
      003140 00                    1120 	.db	0
      003141 00 00 11 E7           1121 	.dw	0,(_putchar)
      003145 00 00 12 07           1122 	.dw	0,(XG$putchar$0$0+1)
      003149 01                    1123 	.db	1
      00314A 00 00 02 A8           1124 	.dw	0,(Ldebug_loc_start+20)
      00314E 00 00 00 A7           1125 	.dw	0,167
      003152 04                    1126 	.uleb128	4
      003153 05                    1127 	.db	5
      003154 03                    1128 	.db	3
      003155 00 00 00 28           1129 	.dw	0,(_putchar_c_65536_145)
      003159 63                    1130 	.ascii "c"
      00315A 00                    1131 	.db	0
      00315B 00 00 00 A7           1132 	.dw	0,167
      00315F 00                    1133 	.uleb128	0
      003160 02                    1134 	.uleb128	2
      003161 75 6E 73 69 67 6E 65  1135 	.ascii "unsigned char"
             64 20 63 68 61 72
      00316E 00                    1136 	.db	0
      00316F 01                    1137 	.db	1
      003170 08                    1138 	.db	8
      003171 03                    1139 	.uleb128	3
      003172 00 00 01 17           1140 	.dw	0,279
      003176 67 65 74 63 68 61 72  1141 	.ascii "getchar"
      00317D 00                    1142 	.db	0
      00317E 00 00 12 07           1143 	.dw	0,(_getchar)
      003182 00 00 12 17           1144 	.dw	0,(XG$getchar$0$0+1)
      003186 01                    1145 	.db	1
      003187 00 00 02 94           1146 	.dw	0,(Ldebug_loc_start)
      00318B 00 00 00 DA           1147 	.dw	0,218
      00318F 05                    1148 	.uleb128	5
      003190 05                    1149 	.db	5
      003191 03                    1150 	.db	3
      003192 00 00 00 2A           1151 	.dw	0,(_getchar_c_65536_148)
      003196 63                    1152 	.ascii "c"
      003197 00                    1153 	.db	0
      003198 00 00 00 DA           1154 	.dw	0,218
      00319C 00                    1155 	.uleb128	0
      00319D 06                    1156 	.uleb128	6
      00319E 00 00 00 DA           1157 	.dw	0,218
      0031A2 07                    1158 	.uleb128	7
      0031A3 05                    1159 	.db	5
      0031A4 03                    1160 	.db	3
      0031A5 00 00 00 80           1161 	.dw	0,(_P0)
      0031A9 50 30                 1162 	.ascii "P0"
      0031AB 00                    1163 	.db	0
      0031AC 01                    1164 	.db	1
      0031AD 00 00 01 17           1165 	.dw	0,279
      0031B1 07                    1166 	.uleb128	7
      0031B2 05                    1167 	.db	5
      0031B3 03                    1168 	.db	3
      0031B4 00 00 00 81           1169 	.dw	0,(_SP)
      0031B8 53 50                 1170 	.ascii "SP"
      0031BA 00                    1171 	.db	0
      0031BB 01                    1172 	.db	1
      0031BC 00 00 01 17           1173 	.dw	0,279
      0031C0 07                    1174 	.uleb128	7
      0031C1 05                    1175 	.db	5
      0031C2 03                    1176 	.db	3
      0031C3 00 00 00 82           1177 	.dw	0,(_DPL)
      0031C7 44 50 4C              1178 	.ascii "DPL"
      0031CA 00                    1179 	.db	0
      0031CB 01                    1180 	.db	1
      0031CC 00 00 01 17           1181 	.dw	0,279
      0031D0 07                    1182 	.uleb128	7
      0031D1 05                    1183 	.db	5
      0031D2 03                    1184 	.db	3
      0031D3 00 00 00 83           1185 	.dw	0,(_DPH)
      0031D7 44 50 48              1186 	.ascii "DPH"
      0031DA 00                    1187 	.db	0
      0031DB 01                    1188 	.db	1
      0031DC 00 00 01 17           1189 	.dw	0,279
      0031E0 07                    1190 	.uleb128	7
      0031E1 05                    1191 	.db	5
      0031E2 03                    1192 	.db	3
      0031E3 00 00 00 84           1193 	.dw	0,(_RCTRIM0)
      0031E7 52 43 54 52 49 4D 30  1194 	.ascii "RCTRIM0"
      0031EE 00                    1195 	.db	0
      0031EF 01                    1196 	.db	1
      0031F0 00 00 01 17           1197 	.dw	0,279
      0031F4 07                    1198 	.uleb128	7
      0031F5 05                    1199 	.db	5
      0031F6 03                    1200 	.db	3
      0031F7 00 00 00 85           1201 	.dw	0,(_RCTRIM1)
      0031FB 52 43 54 52 49 4D 31  1202 	.ascii "RCTRIM1"
      003202 00                    1203 	.db	0
      003203 01                    1204 	.db	1
      003204 00 00 01 17           1205 	.dw	0,279
      003208 07                    1206 	.uleb128	7
      003209 05                    1207 	.db	5
      00320A 03                    1208 	.db	3
      00320B 00 00 00 86           1209 	.dw	0,(_RWK)
      00320F 52 57 4B              1210 	.ascii "RWK"
      003212 00                    1211 	.db	0
      003213 01                    1212 	.db	1
      003214 00 00 01 17           1213 	.dw	0,279
      003218 07                    1214 	.uleb128	7
      003219 05                    1215 	.db	5
      00321A 03                    1216 	.db	3
      00321B 00 00 00 87           1217 	.dw	0,(_PCON)
      00321F 50 43 4F 4E           1218 	.ascii "PCON"
      003223 00                    1219 	.db	0
      003224 01                    1220 	.db	1
      003225 00 00 01 17           1221 	.dw	0,279
      003229 07                    1222 	.uleb128	7
      00322A 05                    1223 	.db	5
      00322B 03                    1224 	.db	3
      00322C 00 00 00 88           1225 	.dw	0,(_TCON)
      003230 54 43 4F 4E           1226 	.ascii "TCON"
      003234 00                    1227 	.db	0
      003235 01                    1228 	.db	1
      003236 00 00 01 17           1229 	.dw	0,279
      00323A 07                    1230 	.uleb128	7
      00323B 05                    1231 	.db	5
      00323C 03                    1232 	.db	3
      00323D 00 00 00 89           1233 	.dw	0,(_TMOD)
      003241 54 4D 4F 44           1234 	.ascii "TMOD"
      003245 00                    1235 	.db	0
      003246 01                    1236 	.db	1
      003247 00 00 01 17           1237 	.dw	0,279
      00324B 07                    1238 	.uleb128	7
      00324C 05                    1239 	.db	5
      00324D 03                    1240 	.db	3
      00324E 00 00 00 8A           1241 	.dw	0,(_TL0)
      003252 54 4C 30              1242 	.ascii "TL0"
      003255 00                    1243 	.db	0
      003256 01                    1244 	.db	1
      003257 00 00 01 17           1245 	.dw	0,279
      00325B 07                    1246 	.uleb128	7
      00325C 05                    1247 	.db	5
      00325D 03                    1248 	.db	3
      00325E 00 00 00 8B           1249 	.dw	0,(_TL1)
      003262 54 4C 31              1250 	.ascii "TL1"
      003265 00                    1251 	.db	0
      003266 01                    1252 	.db	1
      003267 00 00 01 17           1253 	.dw	0,279
      00326B 07                    1254 	.uleb128	7
      00326C 05                    1255 	.db	5
      00326D 03                    1256 	.db	3
      00326E 00 00 00 8C           1257 	.dw	0,(_TH0)
      003272 54 48 30              1258 	.ascii "TH0"
      003275 00                    1259 	.db	0
      003276 01                    1260 	.db	1
      003277 00 00 01 17           1261 	.dw	0,279
      00327B 07                    1262 	.uleb128	7
      00327C 05                    1263 	.db	5
      00327D 03                    1264 	.db	3
      00327E 00 00 00 8D           1265 	.dw	0,(_TH1)
      003282 54 48 31              1266 	.ascii "TH1"
      003285 00                    1267 	.db	0
      003286 01                    1268 	.db	1
      003287 00 00 01 17           1269 	.dw	0,279
      00328B 07                    1270 	.uleb128	7
      00328C 05                    1271 	.db	5
      00328D 03                    1272 	.db	3
      00328E 00 00 00 8E           1273 	.dw	0,(_CKCON)
      003292 43 4B 43 4F 4E        1274 	.ascii "CKCON"
      003297 00                    1275 	.db	0
      003298 01                    1276 	.db	1
      003299 00 00 01 17           1277 	.dw	0,279
      00329D 07                    1278 	.uleb128	7
      00329E 05                    1279 	.db	5
      00329F 03                    1280 	.db	3
      0032A0 00 00 00 8F           1281 	.dw	0,(_WKCON)
      0032A4 57 4B 43 4F 4E        1282 	.ascii "WKCON"
      0032A9 00                    1283 	.db	0
      0032AA 01                    1284 	.db	1
      0032AB 00 00 01 17           1285 	.dw	0,279
      0032AF 07                    1286 	.uleb128	7
      0032B0 05                    1287 	.db	5
      0032B1 03                    1288 	.db	3
      0032B2 00 00 00 90           1289 	.dw	0,(_P1)
      0032B6 50 31                 1290 	.ascii "P1"
      0032B8 00                    1291 	.db	0
      0032B9 01                    1292 	.db	1
      0032BA 00 00 01 17           1293 	.dw	0,279
      0032BE 07                    1294 	.uleb128	7
      0032BF 05                    1295 	.db	5
      0032C0 03                    1296 	.db	3
      0032C1 00 00 00 91           1297 	.dw	0,(_SFRS)
      0032C5 53 46 52 53           1298 	.ascii "SFRS"
      0032C9 00                    1299 	.db	0
      0032CA 01                    1300 	.db	1
      0032CB 00 00 01 17           1301 	.dw	0,279
      0032CF 07                    1302 	.uleb128	7
      0032D0 05                    1303 	.db	5
      0032D1 03                    1304 	.db	3
      0032D2 00 00 00 92           1305 	.dw	0,(_CAPCON0)
      0032D6 43 41 50 43 4F 4E 30  1306 	.ascii "CAPCON0"
      0032DD 00                    1307 	.db	0
      0032DE 01                    1308 	.db	1
      0032DF 00 00 01 17           1309 	.dw	0,279
      0032E3 07                    1310 	.uleb128	7
      0032E4 05                    1311 	.db	5
      0032E5 03                    1312 	.db	3
      0032E6 00 00 00 93           1313 	.dw	0,(_CAPCON1)
      0032EA 43 41 50 43 4F 4E 31  1314 	.ascii "CAPCON1"
      0032F1 00                    1315 	.db	0
      0032F2 01                    1316 	.db	1
      0032F3 00 00 01 17           1317 	.dw	0,279
      0032F7 07                    1318 	.uleb128	7
      0032F8 05                    1319 	.db	5
      0032F9 03                    1320 	.db	3
      0032FA 00 00 00 94           1321 	.dw	0,(_CAPCON2)
      0032FE 43 41 50 43 4F 4E 32  1322 	.ascii "CAPCON2"
      003305 00                    1323 	.db	0
      003306 01                    1324 	.db	1
      003307 00 00 01 17           1325 	.dw	0,279
      00330B 07                    1326 	.uleb128	7
      00330C 05                    1327 	.db	5
      00330D 03                    1328 	.db	3
      00330E 00 00 00 95           1329 	.dw	0,(_CKDIV)
      003312 43 4B 44 49 56        1330 	.ascii "CKDIV"
      003317 00                    1331 	.db	0
      003318 01                    1332 	.db	1
      003319 00 00 01 17           1333 	.dw	0,279
      00331D 07                    1334 	.uleb128	7
      00331E 05                    1335 	.db	5
      00331F 03                    1336 	.db	3
      003320 00 00 00 96           1337 	.dw	0,(_CKSWT)
      003324 43 4B 53 57 54        1338 	.ascii "CKSWT"
      003329 00                    1339 	.db	0
      00332A 01                    1340 	.db	1
      00332B 00 00 01 17           1341 	.dw	0,279
      00332F 07                    1342 	.uleb128	7
      003330 05                    1343 	.db	5
      003331 03                    1344 	.db	3
      003332 00 00 00 97           1345 	.dw	0,(_CKEN)
      003336 43 4B 45 4E           1346 	.ascii "CKEN"
      00333A 00                    1347 	.db	0
      00333B 01                    1348 	.db	1
      00333C 00 00 01 17           1349 	.dw	0,279
      003340 07                    1350 	.uleb128	7
      003341 05                    1351 	.db	5
      003342 03                    1352 	.db	3
      003343 00 00 00 98           1353 	.dw	0,(_SCON)
      003347 53 43 4F 4E           1354 	.ascii "SCON"
      00334B 00                    1355 	.db	0
      00334C 01                    1356 	.db	1
      00334D 00 00 01 17           1357 	.dw	0,279
      003351 07                    1358 	.uleb128	7
      003352 05                    1359 	.db	5
      003353 03                    1360 	.db	3
      003354 00 00 00 99           1361 	.dw	0,(_SBUF)
      003358 53 42 55 46           1362 	.ascii "SBUF"
      00335C 00                    1363 	.db	0
      00335D 01                    1364 	.db	1
      00335E 00 00 01 17           1365 	.dw	0,279
      003362 07                    1366 	.uleb128	7
      003363 05                    1367 	.db	5
      003364 03                    1368 	.db	3
      003365 00 00 00 9A           1369 	.dw	0,(_SBUF_1)
      003369 53 42 55 46 5F 31     1370 	.ascii "SBUF_1"
      00336F 00                    1371 	.db	0
      003370 01                    1372 	.db	1
      003371 00 00 01 17           1373 	.dw	0,279
      003375 07                    1374 	.uleb128	7
      003376 05                    1375 	.db	5
      003377 03                    1376 	.db	3
      003378 00 00 00 9B           1377 	.dw	0,(_EIE)
      00337C 45 49 45              1378 	.ascii "EIE"
      00337F 00                    1379 	.db	0
      003380 01                    1380 	.db	1
      003381 00 00 01 17           1381 	.dw	0,279
      003385 07                    1382 	.uleb128	7
      003386 05                    1383 	.db	5
      003387 03                    1384 	.db	3
      003388 00 00 00 9C           1385 	.dw	0,(_EIE1)
      00338C 45 49 45 31           1386 	.ascii "EIE1"
      003390 00                    1387 	.db	0
      003391 01                    1388 	.db	1
      003392 00 00 01 17           1389 	.dw	0,279
      003396 07                    1390 	.uleb128	7
      003397 05                    1391 	.db	5
      003398 03                    1392 	.db	3
      003399 00 00 00 9F           1393 	.dw	0,(_CHPCON)
      00339D 43 48 50 43 4F 4E     1394 	.ascii "CHPCON"
      0033A3 00                    1395 	.db	0
      0033A4 01                    1396 	.db	1
      0033A5 00 00 01 17           1397 	.dw	0,279
      0033A9 07                    1398 	.uleb128	7
      0033AA 05                    1399 	.db	5
      0033AB 03                    1400 	.db	3
      0033AC 00 00 00 A0           1401 	.dw	0,(_P2)
      0033B0 50 32                 1402 	.ascii "P2"
      0033B2 00                    1403 	.db	0
      0033B3 01                    1404 	.db	1
      0033B4 00 00 01 17           1405 	.dw	0,279
      0033B8 07                    1406 	.uleb128	7
      0033B9 05                    1407 	.db	5
      0033BA 03                    1408 	.db	3
      0033BB 00 00 00 A2           1409 	.dw	0,(_AUXR1)
      0033BF 41 55 58 52 31        1410 	.ascii "AUXR1"
      0033C4 00                    1411 	.db	0
      0033C5 01                    1412 	.db	1
      0033C6 00 00 01 17           1413 	.dw	0,279
      0033CA 07                    1414 	.uleb128	7
      0033CB 05                    1415 	.db	5
      0033CC 03                    1416 	.db	3
      0033CD 00 00 00 A3           1417 	.dw	0,(_BODCON0)
      0033D1 42 4F 44 43 4F 4E 30  1418 	.ascii "BODCON0"
      0033D8 00                    1419 	.db	0
      0033D9 01                    1420 	.db	1
      0033DA 00 00 01 17           1421 	.dw	0,279
      0033DE 07                    1422 	.uleb128	7
      0033DF 05                    1423 	.db	5
      0033E0 03                    1424 	.db	3
      0033E1 00 00 00 A4           1425 	.dw	0,(_IAPTRG)
      0033E5 49 41 50 54 52 47     1426 	.ascii "IAPTRG"
      0033EB 00                    1427 	.db	0
      0033EC 01                    1428 	.db	1
      0033ED 00 00 01 17           1429 	.dw	0,279
      0033F1 07                    1430 	.uleb128	7
      0033F2 05                    1431 	.db	5
      0033F3 03                    1432 	.db	3
      0033F4 00 00 00 A5           1433 	.dw	0,(_IAPUEN)
      0033F8 49 41 50 55 45 4E     1434 	.ascii "IAPUEN"
      0033FE 00                    1435 	.db	0
      0033FF 01                    1436 	.db	1
      003400 00 00 01 17           1437 	.dw	0,279
      003404 07                    1438 	.uleb128	7
      003405 05                    1439 	.db	5
      003406 03                    1440 	.db	3
      003407 00 00 00 A6           1441 	.dw	0,(_IAPAL)
      00340B 49 41 50 41 4C        1442 	.ascii "IAPAL"
      003410 00                    1443 	.db	0
      003411 01                    1444 	.db	1
      003412 00 00 01 17           1445 	.dw	0,279
      003416 07                    1446 	.uleb128	7
      003417 05                    1447 	.db	5
      003418 03                    1448 	.db	3
      003419 00 00 00 A7           1449 	.dw	0,(_IAPAH)
      00341D 49 41 50 41 48        1450 	.ascii "IAPAH"
      003422 00                    1451 	.db	0
      003423 01                    1452 	.db	1
      003424 00 00 01 17           1453 	.dw	0,279
      003428 07                    1454 	.uleb128	7
      003429 05                    1455 	.db	5
      00342A 03                    1456 	.db	3
      00342B 00 00 00 A8           1457 	.dw	0,(_IE)
      00342F 49 45                 1458 	.ascii "IE"
      003431 00                    1459 	.db	0
      003432 01                    1460 	.db	1
      003433 00 00 01 17           1461 	.dw	0,279
      003437 07                    1462 	.uleb128	7
      003438 05                    1463 	.db	5
      003439 03                    1464 	.db	3
      00343A 00 00 00 A9           1465 	.dw	0,(_SADDR)
      00343E 53 41 44 44 52        1466 	.ascii "SADDR"
      003443 00                    1467 	.db	0
      003444 01                    1468 	.db	1
      003445 00 00 01 17           1469 	.dw	0,279
      003449 07                    1470 	.uleb128	7
      00344A 05                    1471 	.db	5
      00344B 03                    1472 	.db	3
      00344C 00 00 00 AA           1473 	.dw	0,(_WDCON)
      003450 57 44 43 4F 4E        1474 	.ascii "WDCON"
      003455 00                    1475 	.db	0
      003456 01                    1476 	.db	1
      003457 00 00 01 17           1477 	.dw	0,279
      00345B 07                    1478 	.uleb128	7
      00345C 05                    1479 	.db	5
      00345D 03                    1480 	.db	3
      00345E 00 00 00 AB           1481 	.dw	0,(_BODCON1)
      003462 42 4F 44 43 4F 4E 31  1482 	.ascii "BODCON1"
      003469 00                    1483 	.db	0
      00346A 01                    1484 	.db	1
      00346B 00 00 01 17           1485 	.dw	0,279
      00346F 07                    1486 	.uleb128	7
      003470 05                    1487 	.db	5
      003471 03                    1488 	.db	3
      003472 00 00 00 AC           1489 	.dw	0,(_P3M1)
      003476 50 33 4D 31           1490 	.ascii "P3M1"
      00347A 00                    1491 	.db	0
      00347B 01                    1492 	.db	1
      00347C 00 00 01 17           1493 	.dw	0,279
      003480 07                    1494 	.uleb128	7
      003481 05                    1495 	.db	5
      003482 03                    1496 	.db	3
      003483 00 00 00 AC           1497 	.dw	0,(_P3S)
      003487 50 33 53              1498 	.ascii "P3S"
      00348A 00                    1499 	.db	0
      00348B 01                    1500 	.db	1
      00348C 00 00 01 17           1501 	.dw	0,279
      003490 07                    1502 	.uleb128	7
      003491 05                    1503 	.db	5
      003492 03                    1504 	.db	3
      003493 00 00 00 AD           1505 	.dw	0,(_P3M2)
      003497 50 33 4D 32           1506 	.ascii "P3M2"
      00349B 00                    1507 	.db	0
      00349C 01                    1508 	.db	1
      00349D 00 00 01 17           1509 	.dw	0,279
      0034A1 07                    1510 	.uleb128	7
      0034A2 05                    1511 	.db	5
      0034A3 03                    1512 	.db	3
      0034A4 00 00 00 AD           1513 	.dw	0,(_P3SR)
      0034A8 50 33 53 52           1514 	.ascii "P3SR"
      0034AC 00                    1515 	.db	0
      0034AD 01                    1516 	.db	1
      0034AE 00 00 01 17           1517 	.dw	0,279
      0034B2 07                    1518 	.uleb128	7
      0034B3 05                    1519 	.db	5
      0034B4 03                    1520 	.db	3
      0034B5 00 00 00 AE           1521 	.dw	0,(_IAPFD)
      0034B9 49 41 50 46 44        1522 	.ascii "IAPFD"
      0034BE 00                    1523 	.db	0
      0034BF 01                    1524 	.db	1
      0034C0 00 00 01 17           1525 	.dw	0,279
      0034C4 07                    1526 	.uleb128	7
      0034C5 05                    1527 	.db	5
      0034C6 03                    1528 	.db	3
      0034C7 00 00 00 AF           1529 	.dw	0,(_IAPCN)
      0034CB 49 41 50 43 4E        1530 	.ascii "IAPCN"
      0034D0 00                    1531 	.db	0
      0034D1 01                    1532 	.db	1
      0034D2 00 00 01 17           1533 	.dw	0,279
      0034D6 07                    1534 	.uleb128	7
      0034D7 05                    1535 	.db	5
      0034D8 03                    1536 	.db	3
      0034D9 00 00 00 B0           1537 	.dw	0,(_P3)
      0034DD 50 33                 1538 	.ascii "P3"
      0034DF 00                    1539 	.db	0
      0034E0 01                    1540 	.db	1
      0034E1 00 00 01 17           1541 	.dw	0,279
      0034E5 07                    1542 	.uleb128	7
      0034E6 05                    1543 	.db	5
      0034E7 03                    1544 	.db	3
      0034E8 00 00 00 B1           1545 	.dw	0,(_P0M1)
      0034EC 50 30 4D 31           1546 	.ascii "P0M1"
      0034F0 00                    1547 	.db	0
      0034F1 01                    1548 	.db	1
      0034F2 00 00 01 17           1549 	.dw	0,279
      0034F6 07                    1550 	.uleb128	7
      0034F7 05                    1551 	.db	5
      0034F8 03                    1552 	.db	3
      0034F9 00 00 00 B1           1553 	.dw	0,(_P0S)
      0034FD 50 30 53              1554 	.ascii "P0S"
      003500 00                    1555 	.db	0
      003501 01                    1556 	.db	1
      003502 00 00 01 17           1557 	.dw	0,279
      003506 07                    1558 	.uleb128	7
      003507 05                    1559 	.db	5
      003508 03                    1560 	.db	3
      003509 00 00 00 B2           1561 	.dw	0,(_P0M2)
      00350D 50 30 4D 32           1562 	.ascii "P0M2"
      003511 00                    1563 	.db	0
      003512 01                    1564 	.db	1
      003513 00 00 01 17           1565 	.dw	0,279
      003517 07                    1566 	.uleb128	7
      003518 05                    1567 	.db	5
      003519 03                    1568 	.db	3
      00351A 00 00 00 B2           1569 	.dw	0,(_P0SR)
      00351E 50 30 53 52           1570 	.ascii "P0SR"
      003522 00                    1571 	.db	0
      003523 01                    1572 	.db	1
      003524 00 00 01 17           1573 	.dw	0,279
      003528 07                    1574 	.uleb128	7
      003529 05                    1575 	.db	5
      00352A 03                    1576 	.db	3
      00352B 00 00 00 B3           1577 	.dw	0,(_P1M1)
      00352F 50 31 4D 31           1578 	.ascii "P1M1"
      003533 00                    1579 	.db	0
      003534 01                    1580 	.db	1
      003535 00 00 01 17           1581 	.dw	0,279
      003539 07                    1582 	.uleb128	7
      00353A 05                    1583 	.db	5
      00353B 03                    1584 	.db	3
      00353C 00 00 00 B3           1585 	.dw	0,(_P1S)
      003540 50 31 53              1586 	.ascii "P1S"
      003543 00                    1587 	.db	0
      003544 01                    1588 	.db	1
      003545 00 00 01 17           1589 	.dw	0,279
      003549 07                    1590 	.uleb128	7
      00354A 05                    1591 	.db	5
      00354B 03                    1592 	.db	3
      00354C 00 00 00 B4           1593 	.dw	0,(_P1M2)
      003550 50 31 4D 32           1594 	.ascii "P1M2"
      003554 00                    1595 	.db	0
      003555 01                    1596 	.db	1
      003556 00 00 01 17           1597 	.dw	0,279
      00355A 07                    1598 	.uleb128	7
      00355B 05                    1599 	.db	5
      00355C 03                    1600 	.db	3
      00355D 00 00 00 B4           1601 	.dw	0,(_P1SR)
      003561 50 31 53 52           1602 	.ascii "P1SR"
      003565 00                    1603 	.db	0
      003566 01                    1604 	.db	1
      003567 00 00 01 17           1605 	.dw	0,279
      00356B 07                    1606 	.uleb128	7
      00356C 05                    1607 	.db	5
      00356D 03                    1608 	.db	3
      00356E 00 00 00 B5           1609 	.dw	0,(_P2S)
      003572 50 32 53              1610 	.ascii "P2S"
      003575 00                    1611 	.db	0
      003576 01                    1612 	.db	1
      003577 00 00 01 17           1613 	.dw	0,279
      00357B 07                    1614 	.uleb128	7
      00357C 05                    1615 	.db	5
      00357D 03                    1616 	.db	3
      00357E 00 00 00 B7           1617 	.dw	0,(_IPH)
      003582 49 50 48              1618 	.ascii "IPH"
      003585 00                    1619 	.db	0
      003586 01                    1620 	.db	1
      003587 00 00 01 17           1621 	.dw	0,279
      00358B 07                    1622 	.uleb128	7
      00358C 05                    1623 	.db	5
      00358D 03                    1624 	.db	3
      00358E 00 00 00 B7           1625 	.dw	0,(_PWMINTC)
      003592 50 57 4D 49 4E 54 43  1626 	.ascii "PWMINTC"
      003599 00                    1627 	.db	0
      00359A 01                    1628 	.db	1
      00359B 00 00 01 17           1629 	.dw	0,279
      00359F 07                    1630 	.uleb128	7
      0035A0 05                    1631 	.db	5
      0035A1 03                    1632 	.db	3
      0035A2 00 00 00 B8           1633 	.dw	0,(_IP)
      0035A6 49 50                 1634 	.ascii "IP"
      0035A8 00                    1635 	.db	0
      0035A9 01                    1636 	.db	1
      0035AA 00 00 01 17           1637 	.dw	0,279
      0035AE 07                    1638 	.uleb128	7
      0035AF 05                    1639 	.db	5
      0035B0 03                    1640 	.db	3
      0035B1 00 00 00 B9           1641 	.dw	0,(_SADEN)
      0035B5 53 41 44 45 4E        1642 	.ascii "SADEN"
      0035BA 00                    1643 	.db	0
      0035BB 01                    1644 	.db	1
      0035BC 00 00 01 17           1645 	.dw	0,279
      0035C0 07                    1646 	.uleb128	7
      0035C1 05                    1647 	.db	5
      0035C2 03                    1648 	.db	3
      0035C3 00 00 00 BA           1649 	.dw	0,(_SADEN_1)
      0035C7 53 41 44 45 4E 5F 31  1650 	.ascii "SADEN_1"
      0035CE 00                    1651 	.db	0
      0035CF 01                    1652 	.db	1
      0035D0 00 00 01 17           1653 	.dw	0,279
      0035D4 07                    1654 	.uleb128	7
      0035D5 05                    1655 	.db	5
      0035D6 03                    1656 	.db	3
      0035D7 00 00 00 BB           1657 	.dw	0,(_SADDR_1)
      0035DB 53 41 44 44 52 5F 31  1658 	.ascii "SADDR_1"
      0035E2 00                    1659 	.db	0
      0035E3 01                    1660 	.db	1
      0035E4 00 00 01 17           1661 	.dw	0,279
      0035E8 07                    1662 	.uleb128	7
      0035E9 05                    1663 	.db	5
      0035EA 03                    1664 	.db	3
      0035EB 00 00 00 BC           1665 	.dw	0,(_I2DAT)
      0035EF 49 32 44 41 54        1666 	.ascii "I2DAT"
      0035F4 00                    1667 	.db	0
      0035F5 01                    1668 	.db	1
      0035F6 00 00 01 17           1669 	.dw	0,279
      0035FA 07                    1670 	.uleb128	7
      0035FB 05                    1671 	.db	5
      0035FC 03                    1672 	.db	3
      0035FD 00 00 00 BD           1673 	.dw	0,(_I2STAT)
      003601 49 32 53 54 41 54     1674 	.ascii "I2STAT"
      003607 00                    1675 	.db	0
      003608 01                    1676 	.db	1
      003609 00 00 01 17           1677 	.dw	0,279
      00360D 07                    1678 	.uleb128	7
      00360E 05                    1679 	.db	5
      00360F 03                    1680 	.db	3
      003610 00 00 00 BE           1681 	.dw	0,(_I2CLK)
      003614 49 32 43 4C 4B        1682 	.ascii "I2CLK"
      003619 00                    1683 	.db	0
      00361A 01                    1684 	.db	1
      00361B 00 00 01 17           1685 	.dw	0,279
      00361F 07                    1686 	.uleb128	7
      003620 05                    1687 	.db	5
      003621 03                    1688 	.db	3
      003622 00 00 00 BF           1689 	.dw	0,(_I2TOC)
      003626 49 32 54 4F 43        1690 	.ascii "I2TOC"
      00362B 00                    1691 	.db	0
      00362C 01                    1692 	.db	1
      00362D 00 00 01 17           1693 	.dw	0,279
      003631 07                    1694 	.uleb128	7
      003632 05                    1695 	.db	5
      003633 03                    1696 	.db	3
      003634 00 00 00 C0           1697 	.dw	0,(_I2CON)
      003638 49 32 43 4F 4E        1698 	.ascii "I2CON"
      00363D 00                    1699 	.db	0
      00363E 01                    1700 	.db	1
      00363F 00 00 01 17           1701 	.dw	0,279
      003643 07                    1702 	.uleb128	7
      003644 05                    1703 	.db	5
      003645 03                    1704 	.db	3
      003646 00 00 00 C1           1705 	.dw	0,(_I2ADDR)
      00364A 49 32 41 44 44 52     1706 	.ascii "I2ADDR"
      003650 00                    1707 	.db	0
      003651 01                    1708 	.db	1
      003652 00 00 01 17           1709 	.dw	0,279
      003656 07                    1710 	.uleb128	7
      003657 05                    1711 	.db	5
      003658 03                    1712 	.db	3
      003659 00 00 00 C2           1713 	.dw	0,(_ADCRL)
      00365D 41 44 43 52 4C        1714 	.ascii "ADCRL"
      003662 00                    1715 	.db	0
      003663 01                    1716 	.db	1
      003664 00 00 01 17           1717 	.dw	0,279
      003668 07                    1718 	.uleb128	7
      003669 05                    1719 	.db	5
      00366A 03                    1720 	.db	3
      00366B 00 00 00 C3           1721 	.dw	0,(_ADCRH)
      00366F 41 44 43 52 48        1722 	.ascii "ADCRH"
      003674 00                    1723 	.db	0
      003675 01                    1724 	.db	1
      003676 00 00 01 17           1725 	.dw	0,279
      00367A 07                    1726 	.uleb128	7
      00367B 05                    1727 	.db	5
      00367C 03                    1728 	.db	3
      00367D 00 00 00 C4           1729 	.dw	0,(_T3CON)
      003681 54 33 43 4F 4E        1730 	.ascii "T3CON"
      003686 00                    1731 	.db	0
      003687 01                    1732 	.db	1
      003688 00 00 01 17           1733 	.dw	0,279
      00368C 07                    1734 	.uleb128	7
      00368D 05                    1735 	.db	5
      00368E 03                    1736 	.db	3
      00368F 00 00 00 C4           1737 	.dw	0,(_PWM4H)
      003693 50 57 4D 34 48        1738 	.ascii "PWM4H"
      003698 00                    1739 	.db	0
      003699 01                    1740 	.db	1
      00369A 00 00 01 17           1741 	.dw	0,279
      00369E 07                    1742 	.uleb128	7
      00369F 05                    1743 	.db	5
      0036A0 03                    1744 	.db	3
      0036A1 00 00 00 C5           1745 	.dw	0,(_RL3)
      0036A5 52 4C 33              1746 	.ascii "RL3"
      0036A8 00                    1747 	.db	0
      0036A9 01                    1748 	.db	1
      0036AA 00 00 01 17           1749 	.dw	0,279
      0036AE 07                    1750 	.uleb128	7
      0036AF 05                    1751 	.db	5
      0036B0 03                    1752 	.db	3
      0036B1 00 00 00 C5           1753 	.dw	0,(_PWM5H)
      0036B5 50 57 4D 35 48        1754 	.ascii "PWM5H"
      0036BA 00                    1755 	.db	0
      0036BB 01                    1756 	.db	1
      0036BC 00 00 01 17           1757 	.dw	0,279
      0036C0 07                    1758 	.uleb128	7
      0036C1 05                    1759 	.db	5
      0036C2 03                    1760 	.db	3
      0036C3 00 00 00 C6           1761 	.dw	0,(_RH3)
      0036C7 52 48 33              1762 	.ascii "RH3"
      0036CA 00                    1763 	.db	0
      0036CB 01                    1764 	.db	1
      0036CC 00 00 01 17           1765 	.dw	0,279
      0036D0 07                    1766 	.uleb128	7
      0036D1 05                    1767 	.db	5
      0036D2 03                    1768 	.db	3
      0036D3 00 00 00 C6           1769 	.dw	0,(_PIOCON1)
      0036D7 50 49 4F 43 4F 4E 31  1770 	.ascii "PIOCON1"
      0036DE 00                    1771 	.db	0
      0036DF 01                    1772 	.db	1
      0036E0 00 00 01 17           1773 	.dw	0,279
      0036E4 07                    1774 	.uleb128	7
      0036E5 05                    1775 	.db	5
      0036E6 03                    1776 	.db	3
      0036E7 00 00 00 C7           1777 	.dw	0,(_TA)
      0036EB 54 41                 1778 	.ascii "TA"
      0036ED 00                    1779 	.db	0
      0036EE 01                    1780 	.db	1
      0036EF 00 00 01 17           1781 	.dw	0,279
      0036F3 07                    1782 	.uleb128	7
      0036F4 05                    1783 	.db	5
      0036F5 03                    1784 	.db	3
      0036F6 00 00 00 C8           1785 	.dw	0,(_T2CON)
      0036FA 54 32 43 4F 4E        1786 	.ascii "T2CON"
      0036FF 00                    1787 	.db	0
      003700 01                    1788 	.db	1
      003701 00 00 01 17           1789 	.dw	0,279
      003705 07                    1790 	.uleb128	7
      003706 05                    1791 	.db	5
      003707 03                    1792 	.db	3
      003708 00 00 00 C9           1793 	.dw	0,(_T2MOD)
      00370C 54 32 4D 4F 44        1794 	.ascii "T2MOD"
      003711 00                    1795 	.db	0
      003712 01                    1796 	.db	1
      003713 00 00 01 17           1797 	.dw	0,279
      003717 07                    1798 	.uleb128	7
      003718 05                    1799 	.db	5
      003719 03                    1800 	.db	3
      00371A 00 00 00 CA           1801 	.dw	0,(_RCMP2L)
      00371E 52 43 4D 50 32 4C     1802 	.ascii "RCMP2L"
      003724 00                    1803 	.db	0
      003725 01                    1804 	.db	1
      003726 00 00 01 17           1805 	.dw	0,279
      00372A 07                    1806 	.uleb128	7
      00372B 05                    1807 	.db	5
      00372C 03                    1808 	.db	3
      00372D 00 00 00 CB           1809 	.dw	0,(_RCMP2H)
      003731 52 43 4D 50 32 48     1810 	.ascii "RCMP2H"
      003737 00                    1811 	.db	0
      003738 01                    1812 	.db	1
      003739 00 00 01 17           1813 	.dw	0,279
      00373D 07                    1814 	.uleb128	7
      00373E 05                    1815 	.db	5
      00373F 03                    1816 	.db	3
      003740 00 00 00 CC           1817 	.dw	0,(_TL2)
      003744 54 4C 32              1818 	.ascii "TL2"
      003747 00                    1819 	.db	0
      003748 01                    1820 	.db	1
      003749 00 00 01 17           1821 	.dw	0,279
      00374D 07                    1822 	.uleb128	7
      00374E 05                    1823 	.db	5
      00374F 03                    1824 	.db	3
      003750 00 00 00 CC           1825 	.dw	0,(_PWM4L)
      003754 50 57 4D 34 4C        1826 	.ascii "PWM4L"
      003759 00                    1827 	.db	0
      00375A 01                    1828 	.db	1
      00375B 00 00 01 17           1829 	.dw	0,279
      00375F 07                    1830 	.uleb128	7
      003760 05                    1831 	.db	5
      003761 03                    1832 	.db	3
      003762 00 00 00 CD           1833 	.dw	0,(_TH2)
      003766 54 48 32              1834 	.ascii "TH2"
      003769 00                    1835 	.db	0
      00376A 01                    1836 	.db	1
      00376B 00 00 01 17           1837 	.dw	0,279
      00376F 07                    1838 	.uleb128	7
      003770 05                    1839 	.db	5
      003771 03                    1840 	.db	3
      003772 00 00 00 CD           1841 	.dw	0,(_PWM5L)
      003776 50 57 4D 35 4C        1842 	.ascii "PWM5L"
      00377B 00                    1843 	.db	0
      00377C 01                    1844 	.db	1
      00377D 00 00 01 17           1845 	.dw	0,279
      003781 07                    1846 	.uleb128	7
      003782 05                    1847 	.db	5
      003783 03                    1848 	.db	3
      003784 00 00 00 CE           1849 	.dw	0,(_ADCMPL)
      003788 41 44 43 4D 50 4C     1850 	.ascii "ADCMPL"
      00378E 00                    1851 	.db	0
      00378F 01                    1852 	.db	1
      003790 00 00 01 17           1853 	.dw	0,279
      003794 07                    1854 	.uleb128	7
      003795 05                    1855 	.db	5
      003796 03                    1856 	.db	3
      003797 00 00 00 CF           1857 	.dw	0,(_ADCMPH)
      00379B 41 44 43 4D 50 48     1858 	.ascii "ADCMPH"
      0037A1 00                    1859 	.db	0
      0037A2 01                    1860 	.db	1
      0037A3 00 00 01 17           1861 	.dw	0,279
      0037A7 07                    1862 	.uleb128	7
      0037A8 05                    1863 	.db	5
      0037A9 03                    1864 	.db	3
      0037AA 00 00 00 D0           1865 	.dw	0,(_PSW)
      0037AE 50 53 57              1866 	.ascii "PSW"
      0037B1 00                    1867 	.db	0
      0037B2 01                    1868 	.db	1
      0037B3 00 00 01 17           1869 	.dw	0,279
      0037B7 07                    1870 	.uleb128	7
      0037B8 05                    1871 	.db	5
      0037B9 03                    1872 	.db	3
      0037BA 00 00 00 D1           1873 	.dw	0,(_PWMPH)
      0037BE 50 57 4D 50 48        1874 	.ascii "PWMPH"
      0037C3 00                    1875 	.db	0
      0037C4 01                    1876 	.db	1
      0037C5 00 00 01 17           1877 	.dw	0,279
      0037C9 07                    1878 	.uleb128	7
      0037CA 05                    1879 	.db	5
      0037CB 03                    1880 	.db	3
      0037CC 00 00 00 D2           1881 	.dw	0,(_PWM0H)
      0037D0 50 57 4D 30 48        1882 	.ascii "PWM0H"
      0037D5 00                    1883 	.db	0
      0037D6 01                    1884 	.db	1
      0037D7 00 00 01 17           1885 	.dw	0,279
      0037DB 07                    1886 	.uleb128	7
      0037DC 05                    1887 	.db	5
      0037DD 03                    1888 	.db	3
      0037DE 00 00 00 D3           1889 	.dw	0,(_PWM1H)
      0037E2 50 57 4D 31 48        1890 	.ascii "PWM1H"
      0037E7 00                    1891 	.db	0
      0037E8 01                    1892 	.db	1
      0037E9 00 00 01 17           1893 	.dw	0,279
      0037ED 07                    1894 	.uleb128	7
      0037EE 05                    1895 	.db	5
      0037EF 03                    1896 	.db	3
      0037F0 00 00 00 D4           1897 	.dw	0,(_PWM2H)
      0037F4 50 57 4D 32 48        1898 	.ascii "PWM2H"
      0037F9 00                    1899 	.db	0
      0037FA 01                    1900 	.db	1
      0037FB 00 00 01 17           1901 	.dw	0,279
      0037FF 07                    1902 	.uleb128	7
      003800 05                    1903 	.db	5
      003801 03                    1904 	.db	3
      003802 00 00 00 D5           1905 	.dw	0,(_PWM3H)
      003806 50 57 4D 33 48        1906 	.ascii "PWM3H"
      00380B 00                    1907 	.db	0
      00380C 01                    1908 	.db	1
      00380D 00 00 01 17           1909 	.dw	0,279
      003811 07                    1910 	.uleb128	7
      003812 05                    1911 	.db	5
      003813 03                    1912 	.db	3
      003814 00 00 00 D6           1913 	.dw	0,(_PNP)
      003818 50 4E 50              1914 	.ascii "PNP"
      00381B 00                    1915 	.db	0
      00381C 01                    1916 	.db	1
      00381D 00 00 01 17           1917 	.dw	0,279
      003821 07                    1918 	.uleb128	7
      003822 05                    1919 	.db	5
      003823 03                    1920 	.db	3
      003824 00 00 00 D7           1921 	.dw	0,(_FBD)
      003828 46 42 44              1922 	.ascii "FBD"
      00382B 00                    1923 	.db	0
      00382C 01                    1924 	.db	1
      00382D 00 00 01 17           1925 	.dw	0,279
      003831 07                    1926 	.uleb128	7
      003832 05                    1927 	.db	5
      003833 03                    1928 	.db	3
      003834 00 00 00 D8           1929 	.dw	0,(_PWMCON0)
      003838 50 57 4D 43 4F 4E 30  1930 	.ascii "PWMCON0"
      00383F 00                    1931 	.db	0
      003840 01                    1932 	.db	1
      003841 00 00 01 17           1933 	.dw	0,279
      003845 07                    1934 	.uleb128	7
      003846 05                    1935 	.db	5
      003847 03                    1936 	.db	3
      003848 00 00 00 D9           1937 	.dw	0,(_PWMPL)
      00384C 50 57 4D 50 4C        1938 	.ascii "PWMPL"
      003851 00                    1939 	.db	0
      003852 01                    1940 	.db	1
      003853 00 00 01 17           1941 	.dw	0,279
      003857 07                    1942 	.uleb128	7
      003858 05                    1943 	.db	5
      003859 03                    1944 	.db	3
      00385A 00 00 00 DA           1945 	.dw	0,(_PWM0L)
      00385E 50 57 4D 30 4C        1946 	.ascii "PWM0L"
      003863 00                    1947 	.db	0
      003864 01                    1948 	.db	1
      003865 00 00 01 17           1949 	.dw	0,279
      003869 07                    1950 	.uleb128	7
      00386A 05                    1951 	.db	5
      00386B 03                    1952 	.db	3
      00386C 00 00 00 DB           1953 	.dw	0,(_PWM1L)
      003870 50 57 4D 31 4C        1954 	.ascii "PWM1L"
      003875 00                    1955 	.db	0
      003876 01                    1956 	.db	1
      003877 00 00 01 17           1957 	.dw	0,279
      00387B 07                    1958 	.uleb128	7
      00387C 05                    1959 	.db	5
      00387D 03                    1960 	.db	3
      00387E 00 00 00 DC           1961 	.dw	0,(_PWM2L)
      003882 50 57 4D 32 4C        1962 	.ascii "PWM2L"
      003887 00                    1963 	.db	0
      003888 01                    1964 	.db	1
      003889 00 00 01 17           1965 	.dw	0,279
      00388D 07                    1966 	.uleb128	7
      00388E 05                    1967 	.db	5
      00388F 03                    1968 	.db	3
      003890 00 00 00 DD           1969 	.dw	0,(_PWM3L)
      003894 50 57 4D 33 4C        1970 	.ascii "PWM3L"
      003899 00                    1971 	.db	0
      00389A 01                    1972 	.db	1
      00389B 00 00 01 17           1973 	.dw	0,279
      00389F 07                    1974 	.uleb128	7
      0038A0 05                    1975 	.db	5
      0038A1 03                    1976 	.db	3
      0038A2 00 00 00 DE           1977 	.dw	0,(_PIOCON0)
      0038A6 50 49 4F 43 4F 4E 30  1978 	.ascii "PIOCON0"
      0038AD 00                    1979 	.db	0
      0038AE 01                    1980 	.db	1
      0038AF 00 00 01 17           1981 	.dw	0,279
      0038B3 07                    1982 	.uleb128	7
      0038B4 05                    1983 	.db	5
      0038B5 03                    1984 	.db	3
      0038B6 00 00 00 DF           1985 	.dw	0,(_PWMCON1)
      0038BA 50 57 4D 43 4F 4E 31  1986 	.ascii "PWMCON1"
      0038C1 00                    1987 	.db	0
      0038C2 01                    1988 	.db	1
      0038C3 00 00 01 17           1989 	.dw	0,279
      0038C7 07                    1990 	.uleb128	7
      0038C8 05                    1991 	.db	5
      0038C9 03                    1992 	.db	3
      0038CA 00 00 00 E0           1993 	.dw	0,(_ACC)
      0038CE 41 43 43              1994 	.ascii "ACC"
      0038D1 00                    1995 	.db	0
      0038D2 01                    1996 	.db	1
      0038D3 00 00 01 17           1997 	.dw	0,279
      0038D7 07                    1998 	.uleb128	7
      0038D8 05                    1999 	.db	5
      0038D9 03                    2000 	.db	3
      0038DA 00 00 00 E1           2001 	.dw	0,(_ADCCON1)
      0038DE 41 44 43 43 4F 4E 31  2002 	.ascii "ADCCON1"
      0038E5 00                    2003 	.db	0
      0038E6 01                    2004 	.db	1
      0038E7 00 00 01 17           2005 	.dw	0,279
      0038EB 07                    2006 	.uleb128	7
      0038EC 05                    2007 	.db	5
      0038ED 03                    2008 	.db	3
      0038EE 00 00 00 E2           2009 	.dw	0,(_ADCCON2)
      0038F2 41 44 43 43 4F 4E 32  2010 	.ascii "ADCCON2"
      0038F9 00                    2011 	.db	0
      0038FA 01                    2012 	.db	1
      0038FB 00 00 01 17           2013 	.dw	0,279
      0038FF 07                    2014 	.uleb128	7
      003900 05                    2015 	.db	5
      003901 03                    2016 	.db	3
      003902 00 00 00 E3           2017 	.dw	0,(_ADCDLY)
      003906 41 44 43 44 4C 59     2018 	.ascii "ADCDLY"
      00390C 00                    2019 	.db	0
      00390D 01                    2020 	.db	1
      00390E 00 00 01 17           2021 	.dw	0,279
      003912 07                    2022 	.uleb128	7
      003913 05                    2023 	.db	5
      003914 03                    2024 	.db	3
      003915 00 00 00 E4           2025 	.dw	0,(_C0L)
      003919 43 30 4C              2026 	.ascii "C0L"
      00391C 00                    2027 	.db	0
      00391D 01                    2028 	.db	1
      00391E 00 00 01 17           2029 	.dw	0,279
      003922 07                    2030 	.uleb128	7
      003923 05                    2031 	.db	5
      003924 03                    2032 	.db	3
      003925 00 00 00 E5           2033 	.dw	0,(_C0H)
      003929 43 30 48              2034 	.ascii "C0H"
      00392C 00                    2035 	.db	0
      00392D 01                    2036 	.db	1
      00392E 00 00 01 17           2037 	.dw	0,279
      003932 07                    2038 	.uleb128	7
      003933 05                    2039 	.db	5
      003934 03                    2040 	.db	3
      003935 00 00 00 E6           2041 	.dw	0,(_C1L)
      003939 43 31 4C              2042 	.ascii "C1L"
      00393C 00                    2043 	.db	0
      00393D 01                    2044 	.db	1
      00393E 00 00 01 17           2045 	.dw	0,279
      003942 07                    2046 	.uleb128	7
      003943 05                    2047 	.db	5
      003944 03                    2048 	.db	3
      003945 00 00 00 E7           2049 	.dw	0,(_C1H)
      003949 43 31 48              2050 	.ascii "C1H"
      00394C 00                    2051 	.db	0
      00394D 01                    2052 	.db	1
      00394E 00 00 01 17           2053 	.dw	0,279
      003952 07                    2054 	.uleb128	7
      003953 05                    2055 	.db	5
      003954 03                    2056 	.db	3
      003955 00 00 00 E8           2057 	.dw	0,(_ADCCON0)
      003959 41 44 43 43 4F 4E 30  2058 	.ascii "ADCCON0"
      003960 00                    2059 	.db	0
      003961 01                    2060 	.db	1
      003962 00 00 01 17           2061 	.dw	0,279
      003966 07                    2062 	.uleb128	7
      003967 05                    2063 	.db	5
      003968 03                    2064 	.db	3
      003969 00 00 00 E9           2065 	.dw	0,(_PICON)
      00396D 50 49 43 4F 4E        2066 	.ascii "PICON"
      003972 00                    2067 	.db	0
      003973 01                    2068 	.db	1
      003974 00 00 01 17           2069 	.dw	0,279
      003978 07                    2070 	.uleb128	7
      003979 05                    2071 	.db	5
      00397A 03                    2072 	.db	3
      00397B 00 00 00 EA           2073 	.dw	0,(_PINEN)
      00397F 50 49 4E 45 4E        2074 	.ascii "PINEN"
      003984 00                    2075 	.db	0
      003985 01                    2076 	.db	1
      003986 00 00 01 17           2077 	.dw	0,279
      00398A 07                    2078 	.uleb128	7
      00398B 05                    2079 	.db	5
      00398C 03                    2080 	.db	3
      00398D 00 00 00 EB           2081 	.dw	0,(_PIPEN)
      003991 50 49 50 45 4E        2082 	.ascii "PIPEN"
      003996 00                    2083 	.db	0
      003997 01                    2084 	.db	1
      003998 00 00 01 17           2085 	.dw	0,279
      00399C 07                    2086 	.uleb128	7
      00399D 05                    2087 	.db	5
      00399E 03                    2088 	.db	3
      00399F 00 00 00 EC           2089 	.dw	0,(_PIF)
      0039A3 50 49 46              2090 	.ascii "PIF"
      0039A6 00                    2091 	.db	0
      0039A7 01                    2092 	.db	1
      0039A8 00 00 01 17           2093 	.dw	0,279
      0039AC 07                    2094 	.uleb128	7
      0039AD 05                    2095 	.db	5
      0039AE 03                    2096 	.db	3
      0039AF 00 00 00 ED           2097 	.dw	0,(_C2L)
      0039B3 43 32 4C              2098 	.ascii "C2L"
      0039B6 00                    2099 	.db	0
      0039B7 01                    2100 	.db	1
      0039B8 00 00 01 17           2101 	.dw	0,279
      0039BC 07                    2102 	.uleb128	7
      0039BD 05                    2103 	.db	5
      0039BE 03                    2104 	.db	3
      0039BF 00 00 00 EE           2105 	.dw	0,(_C2H)
      0039C3 43 32 48              2106 	.ascii "C2H"
      0039C6 00                    2107 	.db	0
      0039C7 01                    2108 	.db	1
      0039C8 00 00 01 17           2109 	.dw	0,279
      0039CC 07                    2110 	.uleb128	7
      0039CD 05                    2111 	.db	5
      0039CE 03                    2112 	.db	3
      0039CF 00 00 00 EF           2113 	.dw	0,(_EIP)
      0039D3 45 49 50              2114 	.ascii "EIP"
      0039D6 00                    2115 	.db	0
      0039D7 01                    2116 	.db	1
      0039D8 00 00 01 17           2117 	.dw	0,279
      0039DC 07                    2118 	.uleb128	7
      0039DD 05                    2119 	.db	5
      0039DE 03                    2120 	.db	3
      0039DF 00 00 00 F0           2121 	.dw	0,(_B)
      0039E3 42                    2122 	.ascii "B"
      0039E4 00                    2123 	.db	0
      0039E5 01                    2124 	.db	1
      0039E6 00 00 01 17           2125 	.dw	0,279
      0039EA 07                    2126 	.uleb128	7
      0039EB 05                    2127 	.db	5
      0039EC 03                    2128 	.db	3
      0039ED 00 00 00 F1           2129 	.dw	0,(_CAPCON3)
      0039F1 43 41 50 43 4F 4E 33  2130 	.ascii "CAPCON3"
      0039F8 00                    2131 	.db	0
      0039F9 01                    2132 	.db	1
      0039FA 00 00 01 17           2133 	.dw	0,279
      0039FE 07                    2134 	.uleb128	7
      0039FF 05                    2135 	.db	5
      003A00 03                    2136 	.db	3
      003A01 00 00 00 F2           2137 	.dw	0,(_CAPCON4)
      003A05 43 41 50 43 4F 4E 34  2138 	.ascii "CAPCON4"
      003A0C 00                    2139 	.db	0
      003A0D 01                    2140 	.db	1
      003A0E 00 00 01 17           2141 	.dw	0,279
      003A12 07                    2142 	.uleb128	7
      003A13 05                    2143 	.db	5
      003A14 03                    2144 	.db	3
      003A15 00 00 00 F3           2145 	.dw	0,(_SPCR)
      003A19 53 50 43 52           2146 	.ascii "SPCR"
      003A1D 00                    2147 	.db	0
      003A1E 01                    2148 	.db	1
      003A1F 00 00 01 17           2149 	.dw	0,279
      003A23 07                    2150 	.uleb128	7
      003A24 05                    2151 	.db	5
      003A25 03                    2152 	.db	3
      003A26 00 00 00 F3           2153 	.dw	0,(_SPCR2)
      003A2A 53 50 43 52 32        2154 	.ascii "SPCR2"
      003A2F 00                    2155 	.db	0
      003A30 01                    2156 	.db	1
      003A31 00 00 01 17           2157 	.dw	0,279
      003A35 07                    2158 	.uleb128	7
      003A36 05                    2159 	.db	5
      003A37 03                    2160 	.db	3
      003A38 00 00 00 F4           2161 	.dw	0,(_SPSR)
      003A3C 53 50 53 52           2162 	.ascii "SPSR"
      003A40 00                    2163 	.db	0
      003A41 01                    2164 	.db	1
      003A42 00 00 01 17           2165 	.dw	0,279
      003A46 07                    2166 	.uleb128	7
      003A47 05                    2167 	.db	5
      003A48 03                    2168 	.db	3
      003A49 00 00 00 F5           2169 	.dw	0,(_SPDR)
      003A4D 53 50 44 52           2170 	.ascii "SPDR"
      003A51 00                    2171 	.db	0
      003A52 01                    2172 	.db	1
      003A53 00 00 01 17           2173 	.dw	0,279
      003A57 07                    2174 	.uleb128	7
      003A58 05                    2175 	.db	5
      003A59 03                    2176 	.db	3
      003A5A 00 00 00 F6           2177 	.dw	0,(_AINDIDS)
      003A5E 41 49 4E 44 49 44 53  2178 	.ascii "AINDIDS"
      003A65 00                    2179 	.db	0
      003A66 01                    2180 	.db	1
      003A67 00 00 01 17           2181 	.dw	0,279
      003A6B 07                    2182 	.uleb128	7
      003A6C 05                    2183 	.db	5
      003A6D 03                    2184 	.db	3
      003A6E 00 00 00 F7           2185 	.dw	0,(_EIPH)
      003A72 45 49 50 48           2186 	.ascii "EIPH"
      003A76 00                    2187 	.db	0
      003A77 01                    2188 	.db	1
      003A78 00 00 01 17           2189 	.dw	0,279
      003A7C 07                    2190 	.uleb128	7
      003A7D 05                    2191 	.db	5
      003A7E 03                    2192 	.db	3
      003A7F 00 00 00 F8           2193 	.dw	0,(_SCON_1)
      003A83 53 43 4F 4E 5F 31     2194 	.ascii "SCON_1"
      003A89 00                    2195 	.db	0
      003A8A 01                    2196 	.db	1
      003A8B 00 00 01 17           2197 	.dw	0,279
      003A8F 07                    2198 	.uleb128	7
      003A90 05                    2199 	.db	5
      003A91 03                    2200 	.db	3
      003A92 00 00 00 F9           2201 	.dw	0,(_PDTEN)
      003A96 50 44 54 45 4E        2202 	.ascii "PDTEN"
      003A9B 00                    2203 	.db	0
      003A9C 01                    2204 	.db	1
      003A9D 00 00 01 17           2205 	.dw	0,279
      003AA1 07                    2206 	.uleb128	7
      003AA2 05                    2207 	.db	5
      003AA3 03                    2208 	.db	3
      003AA4 00 00 00 FA           2209 	.dw	0,(_PDTCNT)
      003AA8 50 44 54 43 4E 54     2210 	.ascii "PDTCNT"
      003AAE 00                    2211 	.db	0
      003AAF 01                    2212 	.db	1
      003AB0 00 00 01 17           2213 	.dw	0,279
      003AB4 07                    2214 	.uleb128	7
      003AB5 05                    2215 	.db	5
      003AB6 03                    2216 	.db	3
      003AB7 00 00 00 FB           2217 	.dw	0,(_PMEN)
      003ABB 50 4D 45 4E           2218 	.ascii "PMEN"
      003ABF 00                    2219 	.db	0
      003AC0 01                    2220 	.db	1
      003AC1 00 00 01 17           2221 	.dw	0,279
      003AC5 07                    2222 	.uleb128	7
      003AC6 05                    2223 	.db	5
      003AC7 03                    2224 	.db	3
      003AC8 00 00 00 FC           2225 	.dw	0,(_PMD)
      003ACC 50 4D 44              2226 	.ascii "PMD"
      003ACF 00                    2227 	.db	0
      003AD0 01                    2228 	.db	1
      003AD1 00 00 01 17           2229 	.dw	0,279
      003AD5 07                    2230 	.uleb128	7
      003AD6 05                    2231 	.db	5
      003AD7 03                    2232 	.db	3
      003AD8 00 00 00 FE           2233 	.dw	0,(_EIP1)
      003ADC 45 49 50 31           2234 	.ascii "EIP1"
      003AE0 00                    2235 	.db	0
      003AE1 01                    2236 	.db	1
      003AE2 00 00 01 17           2237 	.dw	0,279
      003AE6 07                    2238 	.uleb128	7
      003AE7 05                    2239 	.db	5
      003AE8 03                    2240 	.db	3
      003AE9 00 00 00 FF           2241 	.dw	0,(_EIPH1)
      003AED 45 49 50 48 31        2242 	.ascii "EIPH1"
      003AF2 00                    2243 	.db	0
      003AF3 01                    2244 	.db	1
      003AF4 00 00 01 17           2245 	.dw	0,279
      003AF8 02                    2246 	.uleb128	2
      003AF9 5F 73 62 69 74        2247 	.ascii "_sbit"
      003AFE 00                    2248 	.db	0
      003AFF 01                    2249 	.db	1
      003B00 08                    2250 	.db	8
      003B01 06                    2251 	.uleb128	6
      003B02 00 00 0A 72           2252 	.dw	0,2674
      003B06 07                    2253 	.uleb128	7
      003B07 05                    2254 	.db	5
      003B08 03                    2255 	.db	3
      003B09 00 00 00 FF           2256 	.dw	0,(_SM0_1)
      003B0D 53 4D 30 5F 31        2257 	.ascii "SM0_1"
      003B12 00                    2258 	.db	0
      003B13 01                    2259 	.db	1
      003B14 00 00 0A 7B           2260 	.dw	0,2683
      003B18 07                    2261 	.uleb128	7
      003B19 05                    2262 	.db	5
      003B1A 03                    2263 	.db	3
      003B1B 00 00 00 FF           2264 	.dw	0,(_FE_1)
      003B1F 46 45 5F 31           2265 	.ascii "FE_1"
      003B23 00                    2266 	.db	0
      003B24 01                    2267 	.db	1
      003B25 00 00 0A 7B           2268 	.dw	0,2683
      003B29 07                    2269 	.uleb128	7
      003B2A 05                    2270 	.db	5
      003B2B 03                    2271 	.db	3
      003B2C 00 00 00 FE           2272 	.dw	0,(_SM1_1)
      003B30 53 4D 31 5F 31        2273 	.ascii "SM1_1"
      003B35 00                    2274 	.db	0
      003B36 01                    2275 	.db	1
      003B37 00 00 0A 7B           2276 	.dw	0,2683
      003B3B 07                    2277 	.uleb128	7
      003B3C 05                    2278 	.db	5
      003B3D 03                    2279 	.db	3
      003B3E 00 00 00 FD           2280 	.dw	0,(_SM2_1)
      003B42 53 4D 32 5F 31        2281 	.ascii "SM2_1"
      003B47 00                    2282 	.db	0
      003B48 01                    2283 	.db	1
      003B49 00 00 0A 7B           2284 	.dw	0,2683
      003B4D 07                    2285 	.uleb128	7
      003B4E 05                    2286 	.db	5
      003B4F 03                    2287 	.db	3
      003B50 00 00 00 FC           2288 	.dw	0,(_REN_1)
      003B54 52 45 4E 5F 31        2289 	.ascii "REN_1"
      003B59 00                    2290 	.db	0
      003B5A 01                    2291 	.db	1
      003B5B 00 00 0A 7B           2292 	.dw	0,2683
      003B5F 07                    2293 	.uleb128	7
      003B60 05                    2294 	.db	5
      003B61 03                    2295 	.db	3
      003B62 00 00 00 FB           2296 	.dw	0,(_TB8_1)
      003B66 54 42 38 5F 31        2297 	.ascii "TB8_1"
      003B6B 00                    2298 	.db	0
      003B6C 01                    2299 	.db	1
      003B6D 00 00 0A 7B           2300 	.dw	0,2683
      003B71 07                    2301 	.uleb128	7
      003B72 05                    2302 	.db	5
      003B73 03                    2303 	.db	3
      003B74 00 00 00 FA           2304 	.dw	0,(_RB8_1)
      003B78 52 42 38 5F 31        2305 	.ascii "RB8_1"
      003B7D 00                    2306 	.db	0
      003B7E 01                    2307 	.db	1
      003B7F 00 00 0A 7B           2308 	.dw	0,2683
      003B83 07                    2309 	.uleb128	7
      003B84 05                    2310 	.db	5
      003B85 03                    2311 	.db	3
      003B86 00 00 00 F9           2312 	.dw	0,(_TI_1)
      003B8A 54 49 5F 31           2313 	.ascii "TI_1"
      003B8E 00                    2314 	.db	0
      003B8F 01                    2315 	.db	1
      003B90 00 00 0A 7B           2316 	.dw	0,2683
      003B94 07                    2317 	.uleb128	7
      003B95 05                    2318 	.db	5
      003B96 03                    2319 	.db	3
      003B97 00 00 00 F8           2320 	.dw	0,(_RI_1)
      003B9B 52 49 5F 31           2321 	.ascii "RI_1"
      003B9F 00                    2322 	.db	0
      003BA0 01                    2323 	.db	1
      003BA1 00 00 0A 7B           2324 	.dw	0,2683
      003BA5 07                    2325 	.uleb128	7
      003BA6 05                    2326 	.db	5
      003BA7 03                    2327 	.db	3
      003BA8 00 00 00 EF           2328 	.dw	0,(_ADCF)
      003BAC 41 44 43 46           2329 	.ascii "ADCF"
      003BB0 00                    2330 	.db	0
      003BB1 01                    2331 	.db	1
      003BB2 00 00 0A 7B           2332 	.dw	0,2683
      003BB6 07                    2333 	.uleb128	7
      003BB7 05                    2334 	.db	5
      003BB8 03                    2335 	.db	3
      003BB9 00 00 00 EE           2336 	.dw	0,(_ADCS)
      003BBD 41 44 43 53           2337 	.ascii "ADCS"
      003BC1 00                    2338 	.db	0
      003BC2 01                    2339 	.db	1
      003BC3 00 00 0A 7B           2340 	.dw	0,2683
      003BC7 07                    2341 	.uleb128	7
      003BC8 05                    2342 	.db	5
      003BC9 03                    2343 	.db	3
      003BCA 00 00 00 ED           2344 	.dw	0,(_ETGSEL1)
      003BCE 45 54 47 53 45 4C 31  2345 	.ascii "ETGSEL1"
      003BD5 00                    2346 	.db	0
      003BD6 01                    2347 	.db	1
      003BD7 00 00 0A 7B           2348 	.dw	0,2683
      003BDB 07                    2349 	.uleb128	7
      003BDC 05                    2350 	.db	5
      003BDD 03                    2351 	.db	3
      003BDE 00 00 00 EC           2352 	.dw	0,(_ETGSEL0)
      003BE2 45 54 47 53 45 4C 30  2353 	.ascii "ETGSEL0"
      003BE9 00                    2354 	.db	0
      003BEA 01                    2355 	.db	1
      003BEB 00 00 0A 7B           2356 	.dw	0,2683
      003BEF 07                    2357 	.uleb128	7
      003BF0 05                    2358 	.db	5
      003BF1 03                    2359 	.db	3
      003BF2 00 00 00 EB           2360 	.dw	0,(_ADCHS3)
      003BF6 41 44 43 48 53 33     2361 	.ascii "ADCHS3"
      003BFC 00                    2362 	.db	0
      003BFD 01                    2363 	.db	1
      003BFE 00 00 0A 7B           2364 	.dw	0,2683
      003C02 07                    2365 	.uleb128	7
      003C03 05                    2366 	.db	5
      003C04 03                    2367 	.db	3
      003C05 00 00 00 EA           2368 	.dw	0,(_ADCHS2)
      003C09 41 44 43 48 53 32     2369 	.ascii "ADCHS2"
      003C0F 00                    2370 	.db	0
      003C10 01                    2371 	.db	1
      003C11 00 00 0A 7B           2372 	.dw	0,2683
      003C15 07                    2373 	.uleb128	7
      003C16 05                    2374 	.db	5
      003C17 03                    2375 	.db	3
      003C18 00 00 00 E9           2376 	.dw	0,(_ADCHS1)
      003C1C 41 44 43 48 53 31     2377 	.ascii "ADCHS1"
      003C22 00                    2378 	.db	0
      003C23 01                    2379 	.db	1
      003C24 00 00 0A 7B           2380 	.dw	0,2683
      003C28 07                    2381 	.uleb128	7
      003C29 05                    2382 	.db	5
      003C2A 03                    2383 	.db	3
      003C2B 00 00 00 E8           2384 	.dw	0,(_ADCHS0)
      003C2F 41 44 43 48 53 30     2385 	.ascii "ADCHS0"
      003C35 00                    2386 	.db	0
      003C36 01                    2387 	.db	1
      003C37 00 00 0A 7B           2388 	.dw	0,2683
      003C3B 07                    2389 	.uleb128	7
      003C3C 05                    2390 	.db	5
      003C3D 03                    2391 	.db	3
      003C3E 00 00 00 DF           2392 	.dw	0,(_PWMRUN)
      003C42 50 57 4D 52 55 4E     2393 	.ascii "PWMRUN"
      003C48 00                    2394 	.db	0
      003C49 01                    2395 	.db	1
      003C4A 00 00 0A 7B           2396 	.dw	0,2683
      003C4E 07                    2397 	.uleb128	7
      003C4F 05                    2398 	.db	5
      003C50 03                    2399 	.db	3
      003C51 00 00 00 DE           2400 	.dw	0,(_LOAD)
      003C55 4C 4F 41 44           2401 	.ascii "LOAD"
      003C59 00                    2402 	.db	0
      003C5A 01                    2403 	.db	1
      003C5B 00 00 0A 7B           2404 	.dw	0,2683
      003C5F 07                    2405 	.uleb128	7
      003C60 05                    2406 	.db	5
      003C61 03                    2407 	.db	3
      003C62 00 00 00 DD           2408 	.dw	0,(_PWMF)
      003C66 50 57 4D 46           2409 	.ascii "PWMF"
      003C6A 00                    2410 	.db	0
      003C6B 01                    2411 	.db	1
      003C6C 00 00 0A 7B           2412 	.dw	0,2683
      003C70 07                    2413 	.uleb128	7
      003C71 05                    2414 	.db	5
      003C72 03                    2415 	.db	3
      003C73 00 00 00 DC           2416 	.dw	0,(_CLRPWM)
      003C77 43 4C 52 50 57 4D     2417 	.ascii "CLRPWM"
      003C7D 00                    2418 	.db	0
      003C7E 01                    2419 	.db	1
      003C7F 00 00 0A 7B           2420 	.dw	0,2683
      003C83 07                    2421 	.uleb128	7
      003C84 05                    2422 	.db	5
      003C85 03                    2423 	.db	3
      003C86 00 00 00 D7           2424 	.dw	0,(_CY)
      003C8A 43 59                 2425 	.ascii "CY"
      003C8C 00                    2426 	.db	0
      003C8D 01                    2427 	.db	1
      003C8E 00 00 0A 7B           2428 	.dw	0,2683
      003C92 07                    2429 	.uleb128	7
      003C93 05                    2430 	.db	5
      003C94 03                    2431 	.db	3
      003C95 00 00 00 D6           2432 	.dw	0,(_AC)
      003C99 41 43                 2433 	.ascii "AC"
      003C9B 00                    2434 	.db	0
      003C9C 01                    2435 	.db	1
      003C9D 00 00 0A 7B           2436 	.dw	0,2683
      003CA1 07                    2437 	.uleb128	7
      003CA2 05                    2438 	.db	5
      003CA3 03                    2439 	.db	3
      003CA4 00 00 00 D5           2440 	.dw	0,(_F0)
      003CA8 46 30                 2441 	.ascii "F0"
      003CAA 00                    2442 	.db	0
      003CAB 01                    2443 	.db	1
      003CAC 00 00 0A 7B           2444 	.dw	0,2683
      003CB0 07                    2445 	.uleb128	7
      003CB1 05                    2446 	.db	5
      003CB2 03                    2447 	.db	3
      003CB3 00 00 00 D4           2448 	.dw	0,(_RS1)
      003CB7 52 53 31              2449 	.ascii "RS1"
      003CBA 00                    2450 	.db	0
      003CBB 01                    2451 	.db	1
      003CBC 00 00 0A 7B           2452 	.dw	0,2683
      003CC0 07                    2453 	.uleb128	7
      003CC1 05                    2454 	.db	5
      003CC2 03                    2455 	.db	3
      003CC3 00 00 00 D3           2456 	.dw	0,(_RS0)
      003CC7 52 53 30              2457 	.ascii "RS0"
      003CCA 00                    2458 	.db	0
      003CCB 01                    2459 	.db	1
      003CCC 00 00 0A 7B           2460 	.dw	0,2683
      003CD0 07                    2461 	.uleb128	7
      003CD1 05                    2462 	.db	5
      003CD2 03                    2463 	.db	3
      003CD3 00 00 00 D2           2464 	.dw	0,(_OV)
      003CD7 4F 56                 2465 	.ascii "OV"
      003CD9 00                    2466 	.db	0
      003CDA 01                    2467 	.db	1
      003CDB 00 00 0A 7B           2468 	.dw	0,2683
      003CDF 07                    2469 	.uleb128	7
      003CE0 05                    2470 	.db	5
      003CE1 03                    2471 	.db	3
      003CE2 00 00 00 D0           2472 	.dw	0,(_P)
      003CE6 50                    2473 	.ascii "P"
      003CE7 00                    2474 	.db	0
      003CE8 01                    2475 	.db	1
      003CE9 00 00 0A 7B           2476 	.dw	0,2683
      003CED 07                    2477 	.uleb128	7
      003CEE 05                    2478 	.db	5
      003CEF 03                    2479 	.db	3
      003CF0 00 00 00 CF           2480 	.dw	0,(_TF2)
      003CF4 54 46 32              2481 	.ascii "TF2"
      003CF7 00                    2482 	.db	0
      003CF8 01                    2483 	.db	1
      003CF9 00 00 0A 7B           2484 	.dw	0,2683
      003CFD 07                    2485 	.uleb128	7
      003CFE 05                    2486 	.db	5
      003CFF 03                    2487 	.db	3
      003D00 00 00 00 CA           2488 	.dw	0,(_TR2)
      003D04 54 52 32              2489 	.ascii "TR2"
      003D07 00                    2490 	.db	0
      003D08 01                    2491 	.db	1
      003D09 00 00 0A 7B           2492 	.dw	0,2683
      003D0D 07                    2493 	.uleb128	7
      003D0E 05                    2494 	.db	5
      003D0F 03                    2495 	.db	3
      003D10 00 00 00 C8           2496 	.dw	0,(_CM_RL2)
      003D14 43 4D 5F 52 4C 32     2497 	.ascii "CM_RL2"
      003D1A 00                    2498 	.db	0
      003D1B 01                    2499 	.db	1
      003D1C 00 00 0A 7B           2500 	.dw	0,2683
      003D20 07                    2501 	.uleb128	7
      003D21 05                    2502 	.db	5
      003D22 03                    2503 	.db	3
      003D23 00 00 00 C6           2504 	.dw	0,(_I2CEN)
      003D27 49 32 43 45 4E        2505 	.ascii "I2CEN"
      003D2C 00                    2506 	.db	0
      003D2D 01                    2507 	.db	1
      003D2E 00 00 0A 7B           2508 	.dw	0,2683
      003D32 07                    2509 	.uleb128	7
      003D33 05                    2510 	.db	5
      003D34 03                    2511 	.db	3
      003D35 00 00 00 C5           2512 	.dw	0,(_STA)
      003D39 53 54 41              2513 	.ascii "STA"
      003D3C 00                    2514 	.db	0
      003D3D 01                    2515 	.db	1
      003D3E 00 00 0A 7B           2516 	.dw	0,2683
      003D42 07                    2517 	.uleb128	7
      003D43 05                    2518 	.db	5
      003D44 03                    2519 	.db	3
      003D45 00 00 00 C4           2520 	.dw	0,(_STO)
      003D49 53 54 4F              2521 	.ascii "STO"
      003D4C 00                    2522 	.db	0
      003D4D 01                    2523 	.db	1
      003D4E 00 00 0A 7B           2524 	.dw	0,2683
      003D52 07                    2525 	.uleb128	7
      003D53 05                    2526 	.db	5
      003D54 03                    2527 	.db	3
      003D55 00 00 00 C3           2528 	.dw	0,(_SI)
      003D59 53 49                 2529 	.ascii "SI"
      003D5B 00                    2530 	.db	0
      003D5C 01                    2531 	.db	1
      003D5D 00 00 0A 7B           2532 	.dw	0,2683
      003D61 07                    2533 	.uleb128	7
      003D62 05                    2534 	.db	5
      003D63 03                    2535 	.db	3
      003D64 00 00 00 C2           2536 	.dw	0,(_AA)
      003D68 41 41                 2537 	.ascii "AA"
      003D6A 00                    2538 	.db	0
      003D6B 01                    2539 	.db	1
      003D6C 00 00 0A 7B           2540 	.dw	0,2683
      003D70 07                    2541 	.uleb128	7
      003D71 05                    2542 	.db	5
      003D72 03                    2543 	.db	3
      003D73 00 00 00 C0           2544 	.dw	0,(_I2CPX)
      003D77 49 32 43 50 58        2545 	.ascii "I2CPX"
      003D7C 00                    2546 	.db	0
      003D7D 01                    2547 	.db	1
      003D7E 00 00 0A 7B           2548 	.dw	0,2683
      003D82 07                    2549 	.uleb128	7
      003D83 05                    2550 	.db	5
      003D84 03                    2551 	.db	3
      003D85 00 00 00 BE           2552 	.dw	0,(_PADC)
      003D89 50 41 44 43           2553 	.ascii "PADC"
      003D8D 00                    2554 	.db	0
      003D8E 01                    2555 	.db	1
      003D8F 00 00 0A 7B           2556 	.dw	0,2683
      003D93 07                    2557 	.uleb128	7
      003D94 05                    2558 	.db	5
      003D95 03                    2559 	.db	3
      003D96 00 00 00 BD           2560 	.dw	0,(_PBOD)
      003D9A 50 42 4F 44           2561 	.ascii "PBOD"
      003D9E 00                    2562 	.db	0
      003D9F 01                    2563 	.db	1
      003DA0 00 00 0A 7B           2564 	.dw	0,2683
      003DA4 07                    2565 	.uleb128	7
      003DA5 05                    2566 	.db	5
      003DA6 03                    2567 	.db	3
      003DA7 00 00 00 BC           2568 	.dw	0,(_PS)
      003DAB 50 53                 2569 	.ascii "PS"
      003DAD 00                    2570 	.db	0
      003DAE 01                    2571 	.db	1
      003DAF 00 00 0A 7B           2572 	.dw	0,2683
      003DB3 07                    2573 	.uleb128	7
      003DB4 05                    2574 	.db	5
      003DB5 03                    2575 	.db	3
      003DB6 00 00 00 BB           2576 	.dw	0,(_PT1)
      003DBA 50 54 31              2577 	.ascii "PT1"
      003DBD 00                    2578 	.db	0
      003DBE 01                    2579 	.db	1
      003DBF 00 00 0A 7B           2580 	.dw	0,2683
      003DC3 07                    2581 	.uleb128	7
      003DC4 05                    2582 	.db	5
      003DC5 03                    2583 	.db	3
      003DC6 00 00 00 BA           2584 	.dw	0,(_PX1)
      003DCA 50 58 31              2585 	.ascii "PX1"
      003DCD 00                    2586 	.db	0
      003DCE 01                    2587 	.db	1
      003DCF 00 00 0A 7B           2588 	.dw	0,2683
      003DD3 07                    2589 	.uleb128	7
      003DD4 05                    2590 	.db	5
      003DD5 03                    2591 	.db	3
      003DD6 00 00 00 B9           2592 	.dw	0,(_PT0)
      003DDA 50 54 30              2593 	.ascii "PT0"
      003DDD 00                    2594 	.db	0
      003DDE 01                    2595 	.db	1
      003DDF 00 00 0A 7B           2596 	.dw	0,2683
      003DE3 07                    2597 	.uleb128	7
      003DE4 05                    2598 	.db	5
      003DE5 03                    2599 	.db	3
      003DE6 00 00 00 B8           2600 	.dw	0,(_PX0)
      003DEA 50 58 30              2601 	.ascii "PX0"
      003DED 00                    2602 	.db	0
      003DEE 01                    2603 	.db	1
      003DEF 00 00 0A 7B           2604 	.dw	0,2683
      003DF3 07                    2605 	.uleb128	7
      003DF4 05                    2606 	.db	5
      003DF5 03                    2607 	.db	3
      003DF6 00 00 00 B0           2608 	.dw	0,(_P30)
      003DFA 50 33 30              2609 	.ascii "P30"
      003DFD 00                    2610 	.db	0
      003DFE 01                    2611 	.db	1
      003DFF 00 00 0A 7B           2612 	.dw	0,2683
      003E03 07                    2613 	.uleb128	7
      003E04 05                    2614 	.db	5
      003E05 03                    2615 	.db	3
      003E06 00 00 00 AF           2616 	.dw	0,(_EA)
      003E0A 45 41                 2617 	.ascii "EA"
      003E0C 00                    2618 	.db	0
      003E0D 01                    2619 	.db	1
      003E0E 00 00 0A 7B           2620 	.dw	0,2683
      003E12 07                    2621 	.uleb128	7
      003E13 05                    2622 	.db	5
      003E14 03                    2623 	.db	3
      003E15 00 00 00 AE           2624 	.dw	0,(_EADC)
      003E19 45 41 44 43           2625 	.ascii "EADC"
      003E1D 00                    2626 	.db	0
      003E1E 01                    2627 	.db	1
      003E1F 00 00 0A 7B           2628 	.dw	0,2683
      003E23 07                    2629 	.uleb128	7
      003E24 05                    2630 	.db	5
      003E25 03                    2631 	.db	3
      003E26 00 00 00 AD           2632 	.dw	0,(_EBOD)
      003E2A 45 42 4F 44           2633 	.ascii "EBOD"
      003E2E 00                    2634 	.db	0
      003E2F 01                    2635 	.db	1
      003E30 00 00 0A 7B           2636 	.dw	0,2683
      003E34 07                    2637 	.uleb128	7
      003E35 05                    2638 	.db	5
      003E36 03                    2639 	.db	3
      003E37 00 00 00 AC           2640 	.dw	0,(_ES)
      003E3B 45 53                 2641 	.ascii "ES"
      003E3D 00                    2642 	.db	0
      003E3E 01                    2643 	.db	1
      003E3F 00 00 0A 7B           2644 	.dw	0,2683
      003E43 07                    2645 	.uleb128	7
      003E44 05                    2646 	.db	5
      003E45 03                    2647 	.db	3
      003E46 00 00 00 AB           2648 	.dw	0,(_ET1)
      003E4A 45 54 31              2649 	.ascii "ET1"
      003E4D 00                    2650 	.db	0
      003E4E 01                    2651 	.db	1
      003E4F 00 00 0A 7B           2652 	.dw	0,2683
      003E53 07                    2653 	.uleb128	7
      003E54 05                    2654 	.db	5
      003E55 03                    2655 	.db	3
      003E56 00 00 00 AA           2656 	.dw	0,(_EX1)
      003E5A 45 58 31              2657 	.ascii "EX1"
      003E5D 00                    2658 	.db	0
      003E5E 01                    2659 	.db	1
      003E5F 00 00 0A 7B           2660 	.dw	0,2683
      003E63 07                    2661 	.uleb128	7
      003E64 05                    2662 	.db	5
      003E65 03                    2663 	.db	3
      003E66 00 00 00 A9           2664 	.dw	0,(_ET0)
      003E6A 45 54 30              2665 	.ascii "ET0"
      003E6D 00                    2666 	.db	0
      003E6E 01                    2667 	.db	1
      003E6F 00 00 0A 7B           2668 	.dw	0,2683
      003E73 07                    2669 	.uleb128	7
      003E74 05                    2670 	.db	5
      003E75 03                    2671 	.db	3
      003E76 00 00 00 A8           2672 	.dw	0,(_EX0)
      003E7A 45 58 30              2673 	.ascii "EX0"
      003E7D 00                    2674 	.db	0
      003E7E 01                    2675 	.db	1
      003E7F 00 00 0A 7B           2676 	.dw	0,2683
      003E83 07                    2677 	.uleb128	7
      003E84 05                    2678 	.db	5
      003E85 03                    2679 	.db	3
      003E86 00 00 00 A0           2680 	.dw	0,(_P20)
      003E8A 50 32 30              2681 	.ascii "P20"
      003E8D 00                    2682 	.db	0
      003E8E 01                    2683 	.db	1
      003E8F 00 00 0A 7B           2684 	.dw	0,2683
      003E93 07                    2685 	.uleb128	7
      003E94 05                    2686 	.db	5
      003E95 03                    2687 	.db	3
      003E96 00 00 00 9F           2688 	.dw	0,(_SM0)
      003E9A 53 4D 30              2689 	.ascii "SM0"
      003E9D 00                    2690 	.db	0
      003E9E 01                    2691 	.db	1
      003E9F 00 00 0A 7B           2692 	.dw	0,2683
      003EA3 07                    2693 	.uleb128	7
      003EA4 05                    2694 	.db	5
      003EA5 03                    2695 	.db	3
      003EA6 00 00 00 9F           2696 	.dw	0,(_FE)
      003EAA 46 45                 2697 	.ascii "FE"
      003EAC 00                    2698 	.db	0
      003EAD 01                    2699 	.db	1
      003EAE 00 00 0A 7B           2700 	.dw	0,2683
      003EB2 07                    2701 	.uleb128	7
      003EB3 05                    2702 	.db	5
      003EB4 03                    2703 	.db	3
      003EB5 00 00 00 9E           2704 	.dw	0,(_SM1)
      003EB9 53 4D 31              2705 	.ascii "SM1"
      003EBC 00                    2706 	.db	0
      003EBD 01                    2707 	.db	1
      003EBE 00 00 0A 7B           2708 	.dw	0,2683
      003EC2 07                    2709 	.uleb128	7
      003EC3 05                    2710 	.db	5
      003EC4 03                    2711 	.db	3
      003EC5 00 00 00 9D           2712 	.dw	0,(_SM2)
      003EC9 53 4D 32              2713 	.ascii "SM2"
      003ECC 00                    2714 	.db	0
      003ECD 01                    2715 	.db	1
      003ECE 00 00 0A 7B           2716 	.dw	0,2683
      003ED2 07                    2717 	.uleb128	7
      003ED3 05                    2718 	.db	5
      003ED4 03                    2719 	.db	3
      003ED5 00 00 00 9C           2720 	.dw	0,(_REN)
      003ED9 52 45 4E              2721 	.ascii "REN"
      003EDC 00                    2722 	.db	0
      003EDD 01                    2723 	.db	1
      003EDE 00 00 0A 7B           2724 	.dw	0,2683
      003EE2 07                    2725 	.uleb128	7
      003EE3 05                    2726 	.db	5
      003EE4 03                    2727 	.db	3
      003EE5 00 00 00 9B           2728 	.dw	0,(_TB8)
      003EE9 54 42 38              2729 	.ascii "TB8"
      003EEC 00                    2730 	.db	0
      003EED 01                    2731 	.db	1
      003EEE 00 00 0A 7B           2732 	.dw	0,2683
      003EF2 07                    2733 	.uleb128	7
      003EF3 05                    2734 	.db	5
      003EF4 03                    2735 	.db	3
      003EF5 00 00 00 9A           2736 	.dw	0,(_RB8)
      003EF9 52 42 38              2737 	.ascii "RB8"
      003EFC 00                    2738 	.db	0
      003EFD 01                    2739 	.db	1
      003EFE 00 00 0A 7B           2740 	.dw	0,2683
      003F02 07                    2741 	.uleb128	7
      003F03 05                    2742 	.db	5
      003F04 03                    2743 	.db	3
      003F05 00 00 00 99           2744 	.dw	0,(_TI)
      003F09 54 49                 2745 	.ascii "TI"
      003F0B 00                    2746 	.db	0
      003F0C 01                    2747 	.db	1
      003F0D 00 00 0A 7B           2748 	.dw	0,2683
      003F11 07                    2749 	.uleb128	7
      003F12 05                    2750 	.db	5
      003F13 03                    2751 	.db	3
      003F14 00 00 00 98           2752 	.dw	0,(_RI)
      003F18 52 49                 2753 	.ascii "RI"
      003F1A 00                    2754 	.db	0
      003F1B 01                    2755 	.db	1
      003F1C 00 00 0A 7B           2756 	.dw	0,2683
      003F20 07                    2757 	.uleb128	7
      003F21 05                    2758 	.db	5
      003F22 03                    2759 	.db	3
      003F23 00 00 00 97           2760 	.dw	0,(_P17)
      003F27 50 31 37              2761 	.ascii "P17"
      003F2A 00                    2762 	.db	0
      003F2B 01                    2763 	.db	1
      003F2C 00 00 0A 7B           2764 	.dw	0,2683
      003F30 07                    2765 	.uleb128	7
      003F31 05                    2766 	.db	5
      003F32 03                    2767 	.db	3
      003F33 00 00 00 96           2768 	.dw	0,(_P16)
      003F37 50 31 36              2769 	.ascii "P16"
      003F3A 00                    2770 	.db	0
      003F3B 01                    2771 	.db	1
      003F3C 00 00 0A 7B           2772 	.dw	0,2683
      003F40 07                    2773 	.uleb128	7
      003F41 05                    2774 	.db	5
      003F42 03                    2775 	.db	3
      003F43 00 00 00 96           2776 	.dw	0,(_TXD_1)
      003F47 54 58 44 5F 31        2777 	.ascii "TXD_1"
      003F4C 00                    2778 	.db	0
      003F4D 01                    2779 	.db	1
      003F4E 00 00 0A 7B           2780 	.dw	0,2683
      003F52 07                    2781 	.uleb128	7
      003F53 05                    2782 	.db	5
      003F54 03                    2783 	.db	3
      003F55 00 00 00 95           2784 	.dw	0,(_P15)
      003F59 50 31 35              2785 	.ascii "P15"
      003F5C 00                    2786 	.db	0
      003F5D 01                    2787 	.db	1
      003F5E 00 00 0A 7B           2788 	.dw	0,2683
      003F62 07                    2789 	.uleb128	7
      003F63 05                    2790 	.db	5
      003F64 03                    2791 	.db	3
      003F65 00 00 00 94           2792 	.dw	0,(_P14)
      003F69 50 31 34              2793 	.ascii "P14"
      003F6C 00                    2794 	.db	0
      003F6D 01                    2795 	.db	1
      003F6E 00 00 0A 7B           2796 	.dw	0,2683
      003F72 07                    2797 	.uleb128	7
      003F73 05                    2798 	.db	5
      003F74 03                    2799 	.db	3
      003F75 00 00 00 94           2800 	.dw	0,(_SDA)
      003F79 53 44 41              2801 	.ascii "SDA"
      003F7C 00                    2802 	.db	0
      003F7D 01                    2803 	.db	1
      003F7E 00 00 0A 7B           2804 	.dw	0,2683
      003F82 07                    2805 	.uleb128	7
      003F83 05                    2806 	.db	5
      003F84 03                    2807 	.db	3
      003F85 00 00 00 93           2808 	.dw	0,(_P13)
      003F89 50 31 33              2809 	.ascii "P13"
      003F8C 00                    2810 	.db	0
      003F8D 01                    2811 	.db	1
      003F8E 00 00 0A 7B           2812 	.dw	0,2683
      003F92 07                    2813 	.uleb128	7
      003F93 05                    2814 	.db	5
      003F94 03                    2815 	.db	3
      003F95 00 00 00 93           2816 	.dw	0,(_SCL)
      003F99 53 43 4C              2817 	.ascii "SCL"
      003F9C 00                    2818 	.db	0
      003F9D 01                    2819 	.db	1
      003F9E 00 00 0A 7B           2820 	.dw	0,2683
      003FA2 07                    2821 	.uleb128	7
      003FA3 05                    2822 	.db	5
      003FA4 03                    2823 	.db	3
      003FA5 00 00 00 92           2824 	.dw	0,(_P12)
      003FA9 50 31 32              2825 	.ascii "P12"
      003FAC 00                    2826 	.db	0
      003FAD 01                    2827 	.db	1
      003FAE 00 00 0A 7B           2828 	.dw	0,2683
      003FB2 07                    2829 	.uleb128	7
      003FB3 05                    2830 	.db	5
      003FB4 03                    2831 	.db	3
      003FB5 00 00 00 91           2832 	.dw	0,(_P11)
      003FB9 50 31 31              2833 	.ascii "P11"
      003FBC 00                    2834 	.db	0
      003FBD 01                    2835 	.db	1
      003FBE 00 00 0A 7B           2836 	.dw	0,2683
      003FC2 07                    2837 	.uleb128	7
      003FC3 05                    2838 	.db	5
      003FC4 03                    2839 	.db	3
      003FC5 00 00 00 90           2840 	.dw	0,(_P10)
      003FC9 50 31 30              2841 	.ascii "P10"
      003FCC 00                    2842 	.db	0
      003FCD 01                    2843 	.db	1
      003FCE 00 00 0A 7B           2844 	.dw	0,2683
      003FD2 07                    2845 	.uleb128	7
      003FD3 05                    2846 	.db	5
      003FD4 03                    2847 	.db	3
      003FD5 00 00 00 8F           2848 	.dw	0,(_TF1)
      003FD9 54 46 31              2849 	.ascii "TF1"
      003FDC 00                    2850 	.db	0
      003FDD 01                    2851 	.db	1
      003FDE 00 00 0A 7B           2852 	.dw	0,2683
      003FE2 07                    2853 	.uleb128	7
      003FE3 05                    2854 	.db	5
      003FE4 03                    2855 	.db	3
      003FE5 00 00 00 8E           2856 	.dw	0,(_TR1)
      003FE9 54 52 31              2857 	.ascii "TR1"
      003FEC 00                    2858 	.db	0
      003FED 01                    2859 	.db	1
      003FEE 00 00 0A 7B           2860 	.dw	0,2683
      003FF2 07                    2861 	.uleb128	7
      003FF3 05                    2862 	.db	5
      003FF4 03                    2863 	.db	3
      003FF5 00 00 00 8D           2864 	.dw	0,(_TF0)
      003FF9 54 46 30              2865 	.ascii "TF0"
      003FFC 00                    2866 	.db	0
      003FFD 01                    2867 	.db	1
      003FFE 00 00 0A 7B           2868 	.dw	0,2683
      004002 07                    2869 	.uleb128	7
      004003 05                    2870 	.db	5
      004004 03                    2871 	.db	3
      004005 00 00 00 8C           2872 	.dw	0,(_TR0)
      004009 54 52 30              2873 	.ascii "TR0"
      00400C 00                    2874 	.db	0
      00400D 01                    2875 	.db	1
      00400E 00 00 0A 7B           2876 	.dw	0,2683
      004012 07                    2877 	.uleb128	7
      004013 05                    2878 	.db	5
      004014 03                    2879 	.db	3
      004015 00 00 00 8B           2880 	.dw	0,(_IE1)
      004019 49 45 31              2881 	.ascii "IE1"
      00401C 00                    2882 	.db	0
      00401D 01                    2883 	.db	1
      00401E 00 00 0A 7B           2884 	.dw	0,2683
      004022 07                    2885 	.uleb128	7
      004023 05                    2886 	.db	5
      004024 03                    2887 	.db	3
      004025 00 00 00 8A           2888 	.dw	0,(_IT1)
      004029 49 54 31              2889 	.ascii "IT1"
      00402C 00                    2890 	.db	0
      00402D 01                    2891 	.db	1
      00402E 00 00 0A 7B           2892 	.dw	0,2683
      004032 07                    2893 	.uleb128	7
      004033 05                    2894 	.db	5
      004034 03                    2895 	.db	3
      004035 00 00 00 89           2896 	.dw	0,(_IE0)
      004039 49 45 30              2897 	.ascii "IE0"
      00403C 00                    2898 	.db	0
      00403D 01                    2899 	.db	1
      00403E 00 00 0A 7B           2900 	.dw	0,2683
      004042 07                    2901 	.uleb128	7
      004043 05                    2902 	.db	5
      004044 03                    2903 	.db	3
      004045 00 00 00 88           2904 	.dw	0,(_IT0)
      004049 49 54 30              2905 	.ascii "IT0"
      00404C 00                    2906 	.db	0
      00404D 01                    2907 	.db	1
      00404E 00 00 0A 7B           2908 	.dw	0,2683
      004052 07                    2909 	.uleb128	7
      004053 05                    2910 	.db	5
      004054 03                    2911 	.db	3
      004055 00 00 00 87           2912 	.dw	0,(_P07)
      004059 50 30 37              2913 	.ascii "P07"
      00405C 00                    2914 	.db	0
      00405D 01                    2915 	.db	1
      00405E 00 00 0A 7B           2916 	.dw	0,2683
      004062 07                    2917 	.uleb128	7
      004063 05                    2918 	.db	5
      004064 03                    2919 	.db	3
      004065 00 00 00 87           2920 	.dw	0,(_RXD)
      004069 52 58 44              2921 	.ascii "RXD"
      00406C 00                    2922 	.db	0
      00406D 01                    2923 	.db	1
      00406E 00 00 0A 7B           2924 	.dw	0,2683
      004072 07                    2925 	.uleb128	7
      004073 05                    2926 	.db	5
      004074 03                    2927 	.db	3
      004075 00 00 00 86           2928 	.dw	0,(_P06)
      004079 50 30 36              2929 	.ascii "P06"
      00407C 00                    2930 	.db	0
      00407D 01                    2931 	.db	1
      00407E 00 00 0A 7B           2932 	.dw	0,2683
      004082 07                    2933 	.uleb128	7
      004083 05                    2934 	.db	5
      004084 03                    2935 	.db	3
      004085 00 00 00 86           2936 	.dw	0,(_TXD)
      004089 54 58 44              2937 	.ascii "TXD"
      00408C 00                    2938 	.db	0
      00408D 01                    2939 	.db	1
      00408E 00 00 0A 7B           2940 	.dw	0,2683
      004092 07                    2941 	.uleb128	7
      004093 05                    2942 	.db	5
      004094 03                    2943 	.db	3
      004095 00 00 00 85           2944 	.dw	0,(_P05)
      004099 50 30 35              2945 	.ascii "P05"
      00409C 00                    2946 	.db	0
      00409D 01                    2947 	.db	1
      00409E 00 00 0A 7B           2948 	.dw	0,2683
      0040A2 07                    2949 	.uleb128	7
      0040A3 05                    2950 	.db	5
      0040A4 03                    2951 	.db	3
      0040A5 00 00 00 84           2952 	.dw	0,(_P04)
      0040A9 50 30 34              2953 	.ascii "P04"
      0040AC 00                    2954 	.db	0
      0040AD 01                    2955 	.db	1
      0040AE 00 00 0A 7B           2956 	.dw	0,2683
      0040B2 07                    2957 	.uleb128	7
      0040B3 05                    2958 	.db	5
      0040B4 03                    2959 	.db	3
      0040B5 00 00 00 84           2960 	.dw	0,(_STADC)
      0040B9 53 54 41 44 43        2961 	.ascii "STADC"
      0040BE 00                    2962 	.db	0
      0040BF 01                    2963 	.db	1
      0040C0 00 00 0A 7B           2964 	.dw	0,2683
      0040C4 07                    2965 	.uleb128	7
      0040C5 05                    2966 	.db	5
      0040C6 03                    2967 	.db	3
      0040C7 00 00 00 83           2968 	.dw	0,(_P03)
      0040CB 50 30 33              2969 	.ascii "P03"
      0040CE 00                    2970 	.db	0
      0040CF 01                    2971 	.db	1
      0040D0 00 00 0A 7B           2972 	.dw	0,2683
      0040D4 07                    2973 	.uleb128	7
      0040D5 05                    2974 	.db	5
      0040D6 03                    2975 	.db	3
      0040D7 00 00 00 82           2976 	.dw	0,(_P02)
      0040DB 50 30 32              2977 	.ascii "P02"
      0040DE 00                    2978 	.db	0
      0040DF 01                    2979 	.db	1
      0040E0 00 00 0A 7B           2980 	.dw	0,2683
      0040E4 07                    2981 	.uleb128	7
      0040E5 05                    2982 	.db	5
      0040E6 03                    2983 	.db	3
      0040E7 00 00 00 82           2984 	.dw	0,(_RXD_1)
      0040EB 52 58 44 5F 31        2985 	.ascii "RXD_1"
      0040F0 00                    2986 	.db	0
      0040F1 01                    2987 	.db	1
      0040F2 00 00 0A 7B           2988 	.dw	0,2683
      0040F6 07                    2989 	.uleb128	7
      0040F7 05                    2990 	.db	5
      0040F8 03                    2991 	.db	3
      0040F9 00 00 00 81           2992 	.dw	0,(_P01)
      0040FD 50 30 31              2993 	.ascii "P01"
      004100 00                    2994 	.db	0
      004101 01                    2995 	.db	1
      004102 00 00 0A 7B           2996 	.dw	0,2683
      004106 07                    2997 	.uleb128	7
      004107 05                    2998 	.db	5
      004108 03                    2999 	.db	3
      004109 00 00 00 81           3000 	.dw	0,(_MISO)
      00410D 4D 49 53 4F           3001 	.ascii "MISO"
      004111 00                    3002 	.db	0
      004112 01                    3003 	.db	1
      004113 00 00 0A 7B           3004 	.dw	0,2683
      004117 07                    3005 	.uleb128	7
      004118 05                    3006 	.db	5
      004119 03                    3007 	.db	3
      00411A 00 00 00 80           3008 	.dw	0,(_P00)
      00411E 50 30 30              3009 	.ascii "P00"
      004121 00                    3010 	.db	0
      004122 01                    3011 	.db	1
      004123 00 00 0A 7B           3012 	.dw	0,2683
      004127 07                    3013 	.uleb128	7
      004128 05                    3014 	.db	5
      004129 03                    3015 	.db	3
      00412A 00 00 00 80           3016 	.dw	0,(_MOSI)
      00412E 4D 4F 53 49           3017 	.ascii "MOSI"
      004132 00                    3018 	.db	0
      004133 01                    3019 	.db	1
      004134 00 00 0A 7B           3020 	.dw	0,2683
      004138 00                    3021 	.uleb128	0
      004139                       3022 Ldebug_info_end:
                                   3023 
                                   3024 	.area .debug_pubnames (NOLOAD)
      0014FD 00 00 08 6E           3025 	.dw	0,Ldebug_pubnames_end-Ldebug_pubnames_start
      001501                       3026 Ldebug_pubnames_start:
      001501 00 02                 3027 	.dw	2
      001503 00 00 30 86           3028 	.dw	0,(Ldebug_info_start-4)
      001507 00 00 10 B3           3029 	.dw	0,4+Ldebug_info_end-Ldebug_info_start
      00150B 00 00 00 AE           3030 	.dw	0,174
      00150F 70 75 74 63 68 61 72  3031 	.ascii "putchar"
      001516 00                    3032 	.db	0
      001517 00 00 00 EB           3033 	.dw	0,235
      00151B 67 65 74 63 68 61 72  3034 	.ascii "getchar"
      001522 00                    3035 	.db	0
      001523 00 00 01 1C           3036 	.dw	0,284
      001527 50 30                 3037 	.ascii "P0"
      001529 00                    3038 	.db	0
      00152A 00 00 01 2B           3039 	.dw	0,299
      00152E 53 50                 3040 	.ascii "SP"
      001530 00                    3041 	.db	0
      001531 00 00 01 3A           3042 	.dw	0,314
      001535 44 50 4C              3043 	.ascii "DPL"
      001538 00                    3044 	.db	0
      001539 00 00 01 4A           3045 	.dw	0,330
      00153D 44 50 48              3046 	.ascii "DPH"
      001540 00                    3047 	.db	0
      001541 00 00 01 5A           3048 	.dw	0,346
      001545 52 43 54 52 49 4D 30  3049 	.ascii "RCTRIM0"
      00154C 00                    3050 	.db	0
      00154D 00 00 01 6E           3051 	.dw	0,366
      001551 52 43 54 52 49 4D 31  3052 	.ascii "RCTRIM1"
      001558 00                    3053 	.db	0
      001559 00 00 01 82           3054 	.dw	0,386
      00155D 52 57 4B              3055 	.ascii "RWK"
      001560 00                    3056 	.db	0
      001561 00 00 01 92           3057 	.dw	0,402
      001565 50 43 4F 4E           3058 	.ascii "PCON"
      001569 00                    3059 	.db	0
      00156A 00 00 01 A3           3060 	.dw	0,419
      00156E 54 43 4F 4E           3061 	.ascii "TCON"
      001572 00                    3062 	.db	0
      001573 00 00 01 B4           3063 	.dw	0,436
      001577 54 4D 4F 44           3064 	.ascii "TMOD"
      00157B 00                    3065 	.db	0
      00157C 00 00 01 C5           3066 	.dw	0,453
      001580 54 4C 30              3067 	.ascii "TL0"
      001583 00                    3068 	.db	0
      001584 00 00 01 D5           3069 	.dw	0,469
      001588 54 4C 31              3070 	.ascii "TL1"
      00158B 00                    3071 	.db	0
      00158C 00 00 01 E5           3072 	.dw	0,485
      001590 54 48 30              3073 	.ascii "TH0"
      001593 00                    3074 	.db	0
      001594 00 00 01 F5           3075 	.dw	0,501
      001598 54 48 31              3076 	.ascii "TH1"
      00159B 00                    3077 	.db	0
      00159C 00 00 02 05           3078 	.dw	0,517
      0015A0 43 4B 43 4F 4E        3079 	.ascii "CKCON"
      0015A5 00                    3080 	.db	0
      0015A6 00 00 02 17           3081 	.dw	0,535
      0015AA 57 4B 43 4F 4E        3082 	.ascii "WKCON"
      0015AF 00                    3083 	.db	0
      0015B0 00 00 02 29           3084 	.dw	0,553
      0015B4 50 31                 3085 	.ascii "P1"
      0015B6 00                    3086 	.db	0
      0015B7 00 00 02 38           3087 	.dw	0,568
      0015BB 53 46 52 53           3088 	.ascii "SFRS"
      0015BF 00                    3089 	.db	0
      0015C0 00 00 02 49           3090 	.dw	0,585
      0015C4 43 41 50 43 4F 4E 30  3091 	.ascii "CAPCON0"
      0015CB 00                    3092 	.db	0
      0015CC 00 00 02 5D           3093 	.dw	0,605
      0015D0 43 41 50 43 4F 4E 31  3094 	.ascii "CAPCON1"
      0015D7 00                    3095 	.db	0
      0015D8 00 00 02 71           3096 	.dw	0,625
      0015DC 43 41 50 43 4F 4E 32  3097 	.ascii "CAPCON2"
      0015E3 00                    3098 	.db	0
      0015E4 00 00 02 85           3099 	.dw	0,645
      0015E8 43 4B 44 49 56        3100 	.ascii "CKDIV"
      0015ED 00                    3101 	.db	0
      0015EE 00 00 02 97           3102 	.dw	0,663
      0015F2 43 4B 53 57 54        3103 	.ascii "CKSWT"
      0015F7 00                    3104 	.db	0
      0015F8 00 00 02 A9           3105 	.dw	0,681
      0015FC 43 4B 45 4E           3106 	.ascii "CKEN"
      001600 00                    3107 	.db	0
      001601 00 00 02 BA           3108 	.dw	0,698
      001605 53 43 4F 4E           3109 	.ascii "SCON"
      001609 00                    3110 	.db	0
      00160A 00 00 02 CB           3111 	.dw	0,715
      00160E 53 42 55 46           3112 	.ascii "SBUF"
      001612 00                    3113 	.db	0
      001613 00 00 02 DC           3114 	.dw	0,732
      001617 53 42 55 46 5F 31     3115 	.ascii "SBUF_1"
      00161D 00                    3116 	.db	0
      00161E 00 00 02 EF           3117 	.dw	0,751
      001622 45 49 45              3118 	.ascii "EIE"
      001625 00                    3119 	.db	0
      001626 00 00 02 FF           3120 	.dw	0,767
      00162A 45 49 45 31           3121 	.ascii "EIE1"
      00162E 00                    3122 	.db	0
      00162F 00 00 03 10           3123 	.dw	0,784
      001633 43 48 50 43 4F 4E     3124 	.ascii "CHPCON"
      001639 00                    3125 	.db	0
      00163A 00 00 03 23           3126 	.dw	0,803
      00163E 50 32                 3127 	.ascii "P2"
      001640 00                    3128 	.db	0
      001641 00 00 03 32           3129 	.dw	0,818
      001645 41 55 58 52 31        3130 	.ascii "AUXR1"
      00164A 00                    3131 	.db	0
      00164B 00 00 03 44           3132 	.dw	0,836
      00164F 42 4F 44 43 4F 4E 30  3133 	.ascii "BODCON0"
      001656 00                    3134 	.db	0
      001657 00 00 03 58           3135 	.dw	0,856
      00165B 49 41 50 54 52 47     3136 	.ascii "IAPTRG"
      001661 00                    3137 	.db	0
      001662 00 00 03 6B           3138 	.dw	0,875
      001666 49 41 50 55 45 4E     3139 	.ascii "IAPUEN"
      00166C 00                    3140 	.db	0
      00166D 00 00 03 7E           3141 	.dw	0,894
      001671 49 41 50 41 4C        3142 	.ascii "IAPAL"
      001676 00                    3143 	.db	0
      001677 00 00 03 90           3144 	.dw	0,912
      00167B 49 41 50 41 48        3145 	.ascii "IAPAH"
      001680 00                    3146 	.db	0
      001681 00 00 03 A2           3147 	.dw	0,930
      001685 49 45                 3148 	.ascii "IE"
      001687 00                    3149 	.db	0
      001688 00 00 03 B1           3150 	.dw	0,945
      00168C 53 41 44 44 52        3151 	.ascii "SADDR"
      001691 00                    3152 	.db	0
      001692 00 00 03 C3           3153 	.dw	0,963
      001696 57 44 43 4F 4E        3154 	.ascii "WDCON"
      00169B 00                    3155 	.db	0
      00169C 00 00 03 D5           3156 	.dw	0,981
      0016A0 42 4F 44 43 4F 4E 31  3157 	.ascii "BODCON1"
      0016A7 00                    3158 	.db	0
      0016A8 00 00 03 E9           3159 	.dw	0,1001
      0016AC 50 33 4D 31           3160 	.ascii "P3M1"
      0016B0 00                    3161 	.db	0
      0016B1 00 00 03 FA           3162 	.dw	0,1018
      0016B5 50 33 53              3163 	.ascii "P3S"
      0016B8 00                    3164 	.db	0
      0016B9 00 00 04 0A           3165 	.dw	0,1034
      0016BD 50 33 4D 32           3166 	.ascii "P3M2"
      0016C1 00                    3167 	.db	0
      0016C2 00 00 04 1B           3168 	.dw	0,1051
      0016C6 50 33 53 52           3169 	.ascii "P3SR"
      0016CA 00                    3170 	.db	0
      0016CB 00 00 04 2C           3171 	.dw	0,1068
      0016CF 49 41 50 46 44        3172 	.ascii "IAPFD"
      0016D4 00                    3173 	.db	0
      0016D5 00 00 04 3E           3174 	.dw	0,1086
      0016D9 49 41 50 43 4E        3175 	.ascii "IAPCN"
      0016DE 00                    3176 	.db	0
      0016DF 00 00 04 50           3177 	.dw	0,1104
      0016E3 50 33                 3178 	.ascii "P3"
      0016E5 00                    3179 	.db	0
      0016E6 00 00 04 5F           3180 	.dw	0,1119
      0016EA 50 30 4D 31           3181 	.ascii "P0M1"
      0016EE 00                    3182 	.db	0
      0016EF 00 00 04 70           3183 	.dw	0,1136
      0016F3 50 30 53              3184 	.ascii "P0S"
      0016F6 00                    3185 	.db	0
      0016F7 00 00 04 80           3186 	.dw	0,1152
      0016FB 50 30 4D 32           3187 	.ascii "P0M2"
      0016FF 00                    3188 	.db	0
      001700 00 00 04 91           3189 	.dw	0,1169
      001704 50 30 53 52           3190 	.ascii "P0SR"
      001708 00                    3191 	.db	0
      001709 00 00 04 A2           3192 	.dw	0,1186
      00170D 50 31 4D 31           3193 	.ascii "P1M1"
      001711 00                    3194 	.db	0
      001712 00 00 04 B3           3195 	.dw	0,1203
      001716 50 31 53              3196 	.ascii "P1S"
      001719 00                    3197 	.db	0
      00171A 00 00 04 C3           3198 	.dw	0,1219
      00171E 50 31 4D 32           3199 	.ascii "P1M2"
      001722 00                    3200 	.db	0
      001723 00 00 04 D4           3201 	.dw	0,1236
      001727 50 31 53 52           3202 	.ascii "P1SR"
      00172B 00                    3203 	.db	0
      00172C 00 00 04 E5           3204 	.dw	0,1253
      001730 50 32 53              3205 	.ascii "P2S"
      001733 00                    3206 	.db	0
      001734 00 00 04 F5           3207 	.dw	0,1269
      001738 49 50 48              3208 	.ascii "IPH"
      00173B 00                    3209 	.db	0
      00173C 00 00 05 05           3210 	.dw	0,1285
      001740 50 57 4D 49 4E 54 43  3211 	.ascii "PWMINTC"
      001747 00                    3212 	.db	0
      001748 00 00 05 19           3213 	.dw	0,1305
      00174C 49 50                 3214 	.ascii "IP"
      00174E 00                    3215 	.db	0
      00174F 00 00 05 28           3216 	.dw	0,1320
      001753 53 41 44 45 4E        3217 	.ascii "SADEN"
      001758 00                    3218 	.db	0
      001759 00 00 05 3A           3219 	.dw	0,1338
      00175D 53 41 44 45 4E 5F 31  3220 	.ascii "SADEN_1"
      001764 00                    3221 	.db	0
      001765 00 00 05 4E           3222 	.dw	0,1358
      001769 53 41 44 44 52 5F 31  3223 	.ascii "SADDR_1"
      001770 00                    3224 	.db	0
      001771 00 00 05 62           3225 	.dw	0,1378
      001775 49 32 44 41 54        3226 	.ascii "I2DAT"
      00177A 00                    3227 	.db	0
      00177B 00 00 05 74           3228 	.dw	0,1396
      00177F 49 32 53 54 41 54     3229 	.ascii "I2STAT"
      001785 00                    3230 	.db	0
      001786 00 00 05 87           3231 	.dw	0,1415
      00178A 49 32 43 4C 4B        3232 	.ascii "I2CLK"
      00178F 00                    3233 	.db	0
      001790 00 00 05 99           3234 	.dw	0,1433
      001794 49 32 54 4F 43        3235 	.ascii "I2TOC"
      001799 00                    3236 	.db	0
      00179A 00 00 05 AB           3237 	.dw	0,1451
      00179E 49 32 43 4F 4E        3238 	.ascii "I2CON"
      0017A3 00                    3239 	.db	0
      0017A4 00 00 05 BD           3240 	.dw	0,1469
      0017A8 49 32 41 44 44 52     3241 	.ascii "I2ADDR"
      0017AE 00                    3242 	.db	0
      0017AF 00 00 05 D0           3243 	.dw	0,1488
      0017B3 41 44 43 52 4C        3244 	.ascii "ADCRL"
      0017B8 00                    3245 	.db	0
      0017B9 00 00 05 E2           3246 	.dw	0,1506
      0017BD 41 44 43 52 48        3247 	.ascii "ADCRH"
      0017C2 00                    3248 	.db	0
      0017C3 00 00 05 F4           3249 	.dw	0,1524
      0017C7 54 33 43 4F 4E        3250 	.ascii "T3CON"
      0017CC 00                    3251 	.db	0
      0017CD 00 00 06 06           3252 	.dw	0,1542
      0017D1 50 57 4D 34 48        3253 	.ascii "PWM4H"
      0017D6 00                    3254 	.db	0
      0017D7 00 00 06 18           3255 	.dw	0,1560
      0017DB 52 4C 33              3256 	.ascii "RL3"
      0017DE 00                    3257 	.db	0
      0017DF 00 00 06 28           3258 	.dw	0,1576
      0017E3 50 57 4D 35 48        3259 	.ascii "PWM5H"
      0017E8 00                    3260 	.db	0
      0017E9 00 00 06 3A           3261 	.dw	0,1594
      0017ED 52 48 33              3262 	.ascii "RH3"
      0017F0 00                    3263 	.db	0
      0017F1 00 00 06 4A           3264 	.dw	0,1610
      0017F5 50 49 4F 43 4F 4E 31  3265 	.ascii "PIOCON1"
      0017FC 00                    3266 	.db	0
      0017FD 00 00 06 5E           3267 	.dw	0,1630
      001801 54 41                 3268 	.ascii "TA"
      001803 00                    3269 	.db	0
      001804 00 00 06 6D           3270 	.dw	0,1645
      001808 54 32 43 4F 4E        3271 	.ascii "T2CON"
      00180D 00                    3272 	.db	0
      00180E 00 00 06 7F           3273 	.dw	0,1663
      001812 54 32 4D 4F 44        3274 	.ascii "T2MOD"
      001817 00                    3275 	.db	0
      001818 00 00 06 91           3276 	.dw	0,1681
      00181C 52 43 4D 50 32 4C     3277 	.ascii "RCMP2L"
      001822 00                    3278 	.db	0
      001823 00 00 06 A4           3279 	.dw	0,1700
      001827 52 43 4D 50 32 48     3280 	.ascii "RCMP2H"
      00182D 00                    3281 	.db	0
      00182E 00 00 06 B7           3282 	.dw	0,1719
      001832 54 4C 32              3283 	.ascii "TL2"
      001835 00                    3284 	.db	0
      001836 00 00 06 C7           3285 	.dw	0,1735
      00183A 50 57 4D 34 4C        3286 	.ascii "PWM4L"
      00183F 00                    3287 	.db	0
      001840 00 00 06 D9           3288 	.dw	0,1753
      001844 54 48 32              3289 	.ascii "TH2"
      001847 00                    3290 	.db	0
      001848 00 00 06 E9           3291 	.dw	0,1769
      00184C 50 57 4D 35 4C        3292 	.ascii "PWM5L"
      001851 00                    3293 	.db	0
      001852 00 00 06 FB           3294 	.dw	0,1787
      001856 41 44 43 4D 50 4C     3295 	.ascii "ADCMPL"
      00185C 00                    3296 	.db	0
      00185D 00 00 07 0E           3297 	.dw	0,1806
      001861 41 44 43 4D 50 48     3298 	.ascii "ADCMPH"
      001867 00                    3299 	.db	0
      001868 00 00 07 21           3300 	.dw	0,1825
      00186C 50 53 57              3301 	.ascii "PSW"
      00186F 00                    3302 	.db	0
      001870 00 00 07 31           3303 	.dw	0,1841
      001874 50 57 4D 50 48        3304 	.ascii "PWMPH"
      001879 00                    3305 	.db	0
      00187A 00 00 07 43           3306 	.dw	0,1859
      00187E 50 57 4D 30 48        3307 	.ascii "PWM0H"
      001883 00                    3308 	.db	0
      001884 00 00 07 55           3309 	.dw	0,1877
      001888 50 57 4D 31 48        3310 	.ascii "PWM1H"
      00188D 00                    3311 	.db	0
      00188E 00 00 07 67           3312 	.dw	0,1895
      001892 50 57 4D 32 48        3313 	.ascii "PWM2H"
      001897 00                    3314 	.db	0
      001898 00 00 07 79           3315 	.dw	0,1913
      00189C 50 57 4D 33 48        3316 	.ascii "PWM3H"
      0018A1 00                    3317 	.db	0
      0018A2 00 00 07 8B           3318 	.dw	0,1931
      0018A6 50 4E 50              3319 	.ascii "PNP"
      0018A9 00                    3320 	.db	0
      0018AA 00 00 07 9B           3321 	.dw	0,1947
      0018AE 46 42 44              3322 	.ascii "FBD"
      0018B1 00                    3323 	.db	0
      0018B2 00 00 07 AB           3324 	.dw	0,1963
      0018B6 50 57 4D 43 4F 4E 30  3325 	.ascii "PWMCON0"
      0018BD 00                    3326 	.db	0
      0018BE 00 00 07 BF           3327 	.dw	0,1983
      0018C2 50 57 4D 50 4C        3328 	.ascii "PWMPL"
      0018C7 00                    3329 	.db	0
      0018C8 00 00 07 D1           3330 	.dw	0,2001
      0018CC 50 57 4D 30 4C        3331 	.ascii "PWM0L"
      0018D1 00                    3332 	.db	0
      0018D2 00 00 07 E3           3333 	.dw	0,2019
      0018D6 50 57 4D 31 4C        3334 	.ascii "PWM1L"
      0018DB 00                    3335 	.db	0
      0018DC 00 00 07 F5           3336 	.dw	0,2037
      0018E0 50 57 4D 32 4C        3337 	.ascii "PWM2L"
      0018E5 00                    3338 	.db	0
      0018E6 00 00 08 07           3339 	.dw	0,2055
      0018EA 50 57 4D 33 4C        3340 	.ascii "PWM3L"
      0018EF 00                    3341 	.db	0
      0018F0 00 00 08 19           3342 	.dw	0,2073
      0018F4 50 49 4F 43 4F 4E 30  3343 	.ascii "PIOCON0"
      0018FB 00                    3344 	.db	0
      0018FC 00 00 08 2D           3345 	.dw	0,2093
      001900 50 57 4D 43 4F 4E 31  3346 	.ascii "PWMCON1"
      001907 00                    3347 	.db	0
      001908 00 00 08 41           3348 	.dw	0,2113
      00190C 41 43 43              3349 	.ascii "ACC"
      00190F 00                    3350 	.db	0
      001910 00 00 08 51           3351 	.dw	0,2129
      001914 41 44 43 43 4F 4E 31  3352 	.ascii "ADCCON1"
      00191B 00                    3353 	.db	0
      00191C 00 00 08 65           3354 	.dw	0,2149
      001920 41 44 43 43 4F 4E 32  3355 	.ascii "ADCCON2"
      001927 00                    3356 	.db	0
      001928 00 00 08 79           3357 	.dw	0,2169
      00192C 41 44 43 44 4C 59     3358 	.ascii "ADCDLY"
      001932 00                    3359 	.db	0
      001933 00 00 08 8C           3360 	.dw	0,2188
      001937 43 30 4C              3361 	.ascii "C0L"
      00193A 00                    3362 	.db	0
      00193B 00 00 08 9C           3363 	.dw	0,2204
      00193F 43 30 48              3364 	.ascii "C0H"
      001942 00                    3365 	.db	0
      001943 00 00 08 AC           3366 	.dw	0,2220
      001947 43 31 4C              3367 	.ascii "C1L"
      00194A 00                    3368 	.db	0
      00194B 00 00 08 BC           3369 	.dw	0,2236
      00194F 43 31 48              3370 	.ascii "C1H"
      001952 00                    3371 	.db	0
      001953 00 00 08 CC           3372 	.dw	0,2252
      001957 41 44 43 43 4F 4E 30  3373 	.ascii "ADCCON0"
      00195E 00                    3374 	.db	0
      00195F 00 00 08 E0           3375 	.dw	0,2272
      001963 50 49 43 4F 4E        3376 	.ascii "PICON"
      001968 00                    3377 	.db	0
      001969 00 00 08 F2           3378 	.dw	0,2290
      00196D 50 49 4E 45 4E        3379 	.ascii "PINEN"
      001972 00                    3380 	.db	0
      001973 00 00 09 04           3381 	.dw	0,2308
      001977 50 49 50 45 4E        3382 	.ascii "PIPEN"
      00197C 00                    3383 	.db	0
      00197D 00 00 09 16           3384 	.dw	0,2326
      001981 50 49 46              3385 	.ascii "PIF"
      001984 00                    3386 	.db	0
      001985 00 00 09 26           3387 	.dw	0,2342
      001989 43 32 4C              3388 	.ascii "C2L"
      00198C 00                    3389 	.db	0
      00198D 00 00 09 36           3390 	.dw	0,2358
      001991 43 32 48              3391 	.ascii "C2H"
      001994 00                    3392 	.db	0
      001995 00 00 09 46           3393 	.dw	0,2374
      001999 45 49 50              3394 	.ascii "EIP"
      00199C 00                    3395 	.db	0
      00199D 00 00 09 56           3396 	.dw	0,2390
      0019A1 42                    3397 	.ascii "B"
      0019A2 00                    3398 	.db	0
      0019A3 00 00 09 64           3399 	.dw	0,2404
      0019A7 43 41 50 43 4F 4E 33  3400 	.ascii "CAPCON3"
      0019AE 00                    3401 	.db	0
      0019AF 00 00 09 78           3402 	.dw	0,2424
      0019B3 43 41 50 43 4F 4E 34  3403 	.ascii "CAPCON4"
      0019BA 00                    3404 	.db	0
      0019BB 00 00 09 8C           3405 	.dw	0,2444
      0019BF 53 50 43 52           3406 	.ascii "SPCR"
      0019C3 00                    3407 	.db	0
      0019C4 00 00 09 9D           3408 	.dw	0,2461
      0019C8 53 50 43 52 32        3409 	.ascii "SPCR2"
      0019CD 00                    3410 	.db	0
      0019CE 00 00 09 AF           3411 	.dw	0,2479
      0019D2 53 50 53 52           3412 	.ascii "SPSR"
      0019D6 00                    3413 	.db	0
      0019D7 00 00 09 C0           3414 	.dw	0,2496
      0019DB 53 50 44 52           3415 	.ascii "SPDR"
      0019DF 00                    3416 	.db	0
      0019E0 00 00 09 D1           3417 	.dw	0,2513
      0019E4 41 49 4E 44 49 44 53  3418 	.ascii "AINDIDS"
      0019EB 00                    3419 	.db	0
      0019EC 00 00 09 E5           3420 	.dw	0,2533
      0019F0 45 49 50 48           3421 	.ascii "EIPH"
      0019F4 00                    3422 	.db	0
      0019F5 00 00 09 F6           3423 	.dw	0,2550
      0019F9 53 43 4F 4E 5F 31     3424 	.ascii "SCON_1"
      0019FF 00                    3425 	.db	0
      001A00 00 00 0A 09           3426 	.dw	0,2569
      001A04 50 44 54 45 4E        3427 	.ascii "PDTEN"
      001A09 00                    3428 	.db	0
      001A0A 00 00 0A 1B           3429 	.dw	0,2587
      001A0E 50 44 54 43 4E 54     3430 	.ascii "PDTCNT"
      001A14 00                    3431 	.db	0
      001A15 00 00 0A 2E           3432 	.dw	0,2606
      001A19 50 4D 45 4E           3433 	.ascii "PMEN"
      001A1D 00                    3434 	.db	0
      001A1E 00 00 0A 3F           3435 	.dw	0,2623
      001A22 50 4D 44              3436 	.ascii "PMD"
      001A25 00                    3437 	.db	0
      001A26 00 00 0A 4F           3438 	.dw	0,2639
      001A2A 45 49 50 31           3439 	.ascii "EIP1"
      001A2E 00                    3440 	.db	0
      001A2F 00 00 0A 60           3441 	.dw	0,2656
      001A33 45 49 50 48 31        3442 	.ascii "EIPH1"
      001A38 00                    3443 	.db	0
      001A39 00 00 0A 80           3444 	.dw	0,2688
      001A3D 53 4D 30 5F 31        3445 	.ascii "SM0_1"
      001A42 00                    3446 	.db	0
      001A43 00 00 0A 92           3447 	.dw	0,2706
      001A47 46 45 5F 31           3448 	.ascii "FE_1"
      001A4B 00                    3449 	.db	0
      001A4C 00 00 0A A3           3450 	.dw	0,2723
      001A50 53 4D 31 5F 31        3451 	.ascii "SM1_1"
      001A55 00                    3452 	.db	0
      001A56 00 00 0A B5           3453 	.dw	0,2741
      001A5A 53 4D 32 5F 31        3454 	.ascii "SM2_1"
      001A5F 00                    3455 	.db	0
      001A60 00 00 0A C7           3456 	.dw	0,2759
      001A64 52 45 4E 5F 31        3457 	.ascii "REN_1"
      001A69 00                    3458 	.db	0
      001A6A 00 00 0A D9           3459 	.dw	0,2777
      001A6E 54 42 38 5F 31        3460 	.ascii "TB8_1"
      001A73 00                    3461 	.db	0
      001A74 00 00 0A EB           3462 	.dw	0,2795
      001A78 52 42 38 5F 31        3463 	.ascii "RB8_1"
      001A7D 00                    3464 	.db	0
      001A7E 00 00 0A FD           3465 	.dw	0,2813
      001A82 54 49 5F 31           3466 	.ascii "TI_1"
      001A86 00                    3467 	.db	0
      001A87 00 00 0B 0E           3468 	.dw	0,2830
      001A8B 52 49 5F 31           3469 	.ascii "RI_1"
      001A8F 00                    3470 	.db	0
      001A90 00 00 0B 1F           3471 	.dw	0,2847
      001A94 41 44 43 46           3472 	.ascii "ADCF"
      001A98 00                    3473 	.db	0
      001A99 00 00 0B 30           3474 	.dw	0,2864
      001A9D 41 44 43 53           3475 	.ascii "ADCS"
      001AA1 00                    3476 	.db	0
      001AA2 00 00 0B 41           3477 	.dw	0,2881
      001AA6 45 54 47 53 45 4C 31  3478 	.ascii "ETGSEL1"
      001AAD 00                    3479 	.db	0
      001AAE 00 00 0B 55           3480 	.dw	0,2901
      001AB2 45 54 47 53 45 4C 30  3481 	.ascii "ETGSEL0"
      001AB9 00                    3482 	.db	0
      001ABA 00 00 0B 69           3483 	.dw	0,2921
      001ABE 41 44 43 48 53 33     3484 	.ascii "ADCHS3"
      001AC4 00                    3485 	.db	0
      001AC5 00 00 0B 7C           3486 	.dw	0,2940
      001AC9 41 44 43 48 53 32     3487 	.ascii "ADCHS2"
      001ACF 00                    3488 	.db	0
      001AD0 00 00 0B 8F           3489 	.dw	0,2959
      001AD4 41 44 43 48 53 31     3490 	.ascii "ADCHS1"
      001ADA 00                    3491 	.db	0
      001ADB 00 00 0B A2           3492 	.dw	0,2978
      001ADF 41 44 43 48 53 30     3493 	.ascii "ADCHS0"
      001AE5 00                    3494 	.db	0
      001AE6 00 00 0B B5           3495 	.dw	0,2997
      001AEA 50 57 4D 52 55 4E     3496 	.ascii "PWMRUN"
      001AF0 00                    3497 	.db	0
      001AF1 00 00 0B C8           3498 	.dw	0,3016
      001AF5 4C 4F 41 44           3499 	.ascii "LOAD"
      001AF9 00                    3500 	.db	0
      001AFA 00 00 0B D9           3501 	.dw	0,3033
      001AFE 50 57 4D 46           3502 	.ascii "PWMF"
      001B02 00                    3503 	.db	0
      001B03 00 00 0B EA           3504 	.dw	0,3050
      001B07 43 4C 52 50 57 4D     3505 	.ascii "CLRPWM"
      001B0D 00                    3506 	.db	0
      001B0E 00 00 0B FD           3507 	.dw	0,3069
      001B12 43 59                 3508 	.ascii "CY"
      001B14 00                    3509 	.db	0
      001B15 00 00 0C 0C           3510 	.dw	0,3084
      001B19 41 43                 3511 	.ascii "AC"
      001B1B 00                    3512 	.db	0
      001B1C 00 00 0C 1B           3513 	.dw	0,3099
      001B20 46 30                 3514 	.ascii "F0"
      001B22 00                    3515 	.db	0
      001B23 00 00 0C 2A           3516 	.dw	0,3114
      001B27 52 53 31              3517 	.ascii "RS1"
      001B2A 00                    3518 	.db	0
      001B2B 00 00 0C 3A           3519 	.dw	0,3130
      001B2F 52 53 30              3520 	.ascii "RS0"
      001B32 00                    3521 	.db	0
      001B33 00 00 0C 4A           3522 	.dw	0,3146
      001B37 4F 56                 3523 	.ascii "OV"
      001B39 00                    3524 	.db	0
      001B3A 00 00 0C 59           3525 	.dw	0,3161
      001B3E 50                    3526 	.ascii "P"
      001B3F 00                    3527 	.db	0
      001B40 00 00 0C 67           3528 	.dw	0,3175
      001B44 54 46 32              3529 	.ascii "TF2"
      001B47 00                    3530 	.db	0
      001B48 00 00 0C 77           3531 	.dw	0,3191
      001B4C 54 52 32              3532 	.ascii "TR2"
      001B4F 00                    3533 	.db	0
      001B50 00 00 0C 87           3534 	.dw	0,3207
      001B54 43 4D 5F 52 4C 32     3535 	.ascii "CM_RL2"
      001B5A 00                    3536 	.db	0
      001B5B 00 00 0C 9A           3537 	.dw	0,3226
      001B5F 49 32 43 45 4E        3538 	.ascii "I2CEN"
      001B64 00                    3539 	.db	0
      001B65 00 00 0C AC           3540 	.dw	0,3244
      001B69 53 54 41              3541 	.ascii "STA"
      001B6C 00                    3542 	.db	0
      001B6D 00 00 0C BC           3543 	.dw	0,3260
      001B71 53 54 4F              3544 	.ascii "STO"
      001B74 00                    3545 	.db	0
      001B75 00 00 0C CC           3546 	.dw	0,3276
      001B79 53 49                 3547 	.ascii "SI"
      001B7B 00                    3548 	.db	0
      001B7C 00 00 0C DB           3549 	.dw	0,3291
      001B80 41 41                 3550 	.ascii "AA"
      001B82 00                    3551 	.db	0
      001B83 00 00 0C EA           3552 	.dw	0,3306
      001B87 49 32 43 50 58        3553 	.ascii "I2CPX"
      001B8C 00                    3554 	.db	0
      001B8D 00 00 0C FC           3555 	.dw	0,3324
      001B91 50 41 44 43           3556 	.ascii "PADC"
      001B95 00                    3557 	.db	0
      001B96 00 00 0D 0D           3558 	.dw	0,3341
      001B9A 50 42 4F 44           3559 	.ascii "PBOD"
      001B9E 00                    3560 	.db	0
      001B9F 00 00 0D 1E           3561 	.dw	0,3358
      001BA3 50 53                 3562 	.ascii "PS"
      001BA5 00                    3563 	.db	0
      001BA6 00 00 0D 2D           3564 	.dw	0,3373
      001BAA 50 54 31              3565 	.ascii "PT1"
      001BAD 00                    3566 	.db	0
      001BAE 00 00 0D 3D           3567 	.dw	0,3389
      001BB2 50 58 31              3568 	.ascii "PX1"
      001BB5 00                    3569 	.db	0
      001BB6 00 00 0D 4D           3570 	.dw	0,3405
      001BBA 50 54 30              3571 	.ascii "PT0"
      001BBD 00                    3572 	.db	0
      001BBE 00 00 0D 5D           3573 	.dw	0,3421
      001BC2 50 58 30              3574 	.ascii "PX0"
      001BC5 00                    3575 	.db	0
      001BC6 00 00 0D 6D           3576 	.dw	0,3437
      001BCA 50 33 30              3577 	.ascii "P30"
      001BCD 00                    3578 	.db	0
      001BCE 00 00 0D 7D           3579 	.dw	0,3453
      001BD2 45 41                 3580 	.ascii "EA"
      001BD4 00                    3581 	.db	0
      001BD5 00 00 0D 8C           3582 	.dw	0,3468
      001BD9 45 41 44 43           3583 	.ascii "EADC"
      001BDD 00                    3584 	.db	0
      001BDE 00 00 0D 9D           3585 	.dw	0,3485
      001BE2 45 42 4F 44           3586 	.ascii "EBOD"
      001BE6 00                    3587 	.db	0
      001BE7 00 00 0D AE           3588 	.dw	0,3502
      001BEB 45 53                 3589 	.ascii "ES"
      001BED 00                    3590 	.db	0
      001BEE 00 00 0D BD           3591 	.dw	0,3517
      001BF2 45 54 31              3592 	.ascii "ET1"
      001BF5 00                    3593 	.db	0
      001BF6 00 00 0D CD           3594 	.dw	0,3533
      001BFA 45 58 31              3595 	.ascii "EX1"
      001BFD 00                    3596 	.db	0
      001BFE 00 00 0D DD           3597 	.dw	0,3549
      001C02 45 54 30              3598 	.ascii "ET0"
      001C05 00                    3599 	.db	0
      001C06 00 00 0D ED           3600 	.dw	0,3565
      001C0A 45 58 30              3601 	.ascii "EX0"
      001C0D 00                    3602 	.db	0
      001C0E 00 00 0D FD           3603 	.dw	0,3581
      001C12 50 32 30              3604 	.ascii "P20"
      001C15 00                    3605 	.db	0
      001C16 00 00 0E 0D           3606 	.dw	0,3597
      001C1A 53 4D 30              3607 	.ascii "SM0"
      001C1D 00                    3608 	.db	0
      001C1E 00 00 0E 1D           3609 	.dw	0,3613
      001C22 46 45                 3610 	.ascii "FE"
      001C24 00                    3611 	.db	0
      001C25 00 00 0E 2C           3612 	.dw	0,3628
      001C29 53 4D 31              3613 	.ascii "SM1"
      001C2C 00                    3614 	.db	0
      001C2D 00 00 0E 3C           3615 	.dw	0,3644
      001C31 53 4D 32              3616 	.ascii "SM2"
      001C34 00                    3617 	.db	0
      001C35 00 00 0E 4C           3618 	.dw	0,3660
      001C39 52 45 4E              3619 	.ascii "REN"
      001C3C 00                    3620 	.db	0
      001C3D 00 00 0E 5C           3621 	.dw	0,3676
      001C41 54 42 38              3622 	.ascii "TB8"
      001C44 00                    3623 	.db	0
      001C45 00 00 0E 6C           3624 	.dw	0,3692
      001C49 52 42 38              3625 	.ascii "RB8"
      001C4C 00                    3626 	.db	0
      001C4D 00 00 0E 7C           3627 	.dw	0,3708
      001C51 54 49                 3628 	.ascii "TI"
      001C53 00                    3629 	.db	0
      001C54 00 00 0E 8B           3630 	.dw	0,3723
      001C58 52 49                 3631 	.ascii "RI"
      001C5A 00                    3632 	.db	0
      001C5B 00 00 0E 9A           3633 	.dw	0,3738
      001C5F 50 31 37              3634 	.ascii "P17"
      001C62 00                    3635 	.db	0
      001C63 00 00 0E AA           3636 	.dw	0,3754
      001C67 50 31 36              3637 	.ascii "P16"
      001C6A 00                    3638 	.db	0
      001C6B 00 00 0E BA           3639 	.dw	0,3770
      001C6F 54 58 44 5F 31        3640 	.ascii "TXD_1"
      001C74 00                    3641 	.db	0
      001C75 00 00 0E CC           3642 	.dw	0,3788
      001C79 50 31 35              3643 	.ascii "P15"
      001C7C 00                    3644 	.db	0
      001C7D 00 00 0E DC           3645 	.dw	0,3804
      001C81 50 31 34              3646 	.ascii "P14"
      001C84 00                    3647 	.db	0
      001C85 00 00 0E EC           3648 	.dw	0,3820
      001C89 53 44 41              3649 	.ascii "SDA"
      001C8C 00                    3650 	.db	0
      001C8D 00 00 0E FC           3651 	.dw	0,3836
      001C91 50 31 33              3652 	.ascii "P13"
      001C94 00                    3653 	.db	0
      001C95 00 00 0F 0C           3654 	.dw	0,3852
      001C99 53 43 4C              3655 	.ascii "SCL"
      001C9C 00                    3656 	.db	0
      001C9D 00 00 0F 1C           3657 	.dw	0,3868
      001CA1 50 31 32              3658 	.ascii "P12"
      001CA4 00                    3659 	.db	0
      001CA5 00 00 0F 2C           3660 	.dw	0,3884
      001CA9 50 31 31              3661 	.ascii "P11"
      001CAC 00                    3662 	.db	0
      001CAD 00 00 0F 3C           3663 	.dw	0,3900
      001CB1 50 31 30              3664 	.ascii "P10"
      001CB4 00                    3665 	.db	0
      001CB5 00 00 0F 4C           3666 	.dw	0,3916
      001CB9 54 46 31              3667 	.ascii "TF1"
      001CBC 00                    3668 	.db	0
      001CBD 00 00 0F 5C           3669 	.dw	0,3932
      001CC1 54 52 31              3670 	.ascii "TR1"
      001CC4 00                    3671 	.db	0
      001CC5 00 00 0F 6C           3672 	.dw	0,3948
      001CC9 54 46 30              3673 	.ascii "TF0"
      001CCC 00                    3674 	.db	0
      001CCD 00 00 0F 7C           3675 	.dw	0,3964
      001CD1 54 52 30              3676 	.ascii "TR0"
      001CD4 00                    3677 	.db	0
      001CD5 00 00 0F 8C           3678 	.dw	0,3980
      001CD9 49 45 31              3679 	.ascii "IE1"
      001CDC 00                    3680 	.db	0
      001CDD 00 00 0F 9C           3681 	.dw	0,3996
      001CE1 49 54 31              3682 	.ascii "IT1"
      001CE4 00                    3683 	.db	0
      001CE5 00 00 0F AC           3684 	.dw	0,4012
      001CE9 49 45 30              3685 	.ascii "IE0"
      001CEC 00                    3686 	.db	0
      001CED 00 00 0F BC           3687 	.dw	0,4028
      001CF1 49 54 30              3688 	.ascii "IT0"
      001CF4 00                    3689 	.db	0
      001CF5 00 00 0F CC           3690 	.dw	0,4044
      001CF9 50 30 37              3691 	.ascii "P07"
      001CFC 00                    3692 	.db	0
      001CFD 00 00 0F DC           3693 	.dw	0,4060
      001D01 52 58 44              3694 	.ascii "RXD"
      001D04 00                    3695 	.db	0
      001D05 00 00 0F EC           3696 	.dw	0,4076
      001D09 50 30 36              3697 	.ascii "P06"
      001D0C 00                    3698 	.db	0
      001D0D 00 00 0F FC           3699 	.dw	0,4092
      001D11 54 58 44              3700 	.ascii "TXD"
      001D14 00                    3701 	.db	0
      001D15 00 00 10 0C           3702 	.dw	0,4108
      001D19 50 30 35              3703 	.ascii "P05"
      001D1C 00                    3704 	.db	0
      001D1D 00 00 10 1C           3705 	.dw	0,4124
      001D21 50 30 34              3706 	.ascii "P04"
      001D24 00                    3707 	.db	0
      001D25 00 00 10 2C           3708 	.dw	0,4140
      001D29 53 54 41 44 43        3709 	.ascii "STADC"
      001D2E 00                    3710 	.db	0
      001D2F 00 00 10 3E           3711 	.dw	0,4158
      001D33 50 30 33              3712 	.ascii "P03"
      001D36 00                    3713 	.db	0
      001D37 00 00 10 4E           3714 	.dw	0,4174
      001D3B 50 30 32              3715 	.ascii "P02"
      001D3E 00                    3716 	.db	0
      001D3F 00 00 10 5E           3717 	.dw	0,4190
      001D43 52 58 44 5F 31        3718 	.ascii "RXD_1"
      001D48 00                    3719 	.db	0
      001D49 00 00 10 70           3720 	.dw	0,4208
      001D4D 50 30 31              3721 	.ascii "P01"
      001D50 00                    3722 	.db	0
      001D51 00 00 10 80           3723 	.dw	0,4224
      001D55 4D 49 53 4F           3724 	.ascii "MISO"
      001D59 00                    3725 	.db	0
      001D5A 00 00 10 91           3726 	.dw	0,4241
      001D5E 50 30 30              3727 	.ascii "P00"
      001D61 00                    3728 	.db	0
      001D62 00 00 10 A1           3729 	.dw	0,4257
      001D66 4D 4F 53 49           3730 	.ascii "MOSI"
      001D6A 00                    3731 	.db	0
      001D6B 00 00 00 00           3732 	.dw	0,0
      001D6F                       3733 Ldebug_pubnames_end:
                                   3734 
                                   3735 	.area .debug_frame (NOLOAD)
      0005AC 00 00                 3736 	.dw	0
      0005AE 00 10                 3737 	.dw	Ldebug_CIE0_end-Ldebug_CIE0_start
      0005B0                       3738 Ldebug_CIE0_start:
      0005B0 FF FF                 3739 	.dw	0xffff
      0005B2 FF FF                 3740 	.dw	0xffff
      0005B4 01                    3741 	.db	1
      0005B5 00                    3742 	.db	0
      0005B6 01                    3743 	.uleb128	1
      0005B7 01                    3744 	.sleb128	1
      0005B8 09                    3745 	.db	9
      0005B9 0C                    3746 	.db	12
      0005BA 16                    3747 	.uleb128	22
      0005BB 02                    3748 	.uleb128	2
      0005BC 89                    3749 	.db	137
      0005BD 01                    3750 	.uleb128	1
      0005BE 00                    3751 	.db	0
      0005BF 00                    3752 	.db	0
      0005C0                       3753 Ldebug_CIE0_end:
      0005C0 00 00 00 14           3754 	.dw	0,20
      0005C4 00 00 05 AC           3755 	.dw	0,(Ldebug_CIE0_start-4)
      0005C8 00 00 12 07           3756 	.dw	0,(Ssdcc_stdio$getchar$9)	;initial loc
      0005CC 00 00 00 12           3757 	.dw	0,Ssdcc_stdio$getchar$16-Ssdcc_stdio$getchar$9
      0005D0 01                    3758 	.db	1
      0005D1 00 00 12 07           3759 	.dw	0,(Ssdcc_stdio$getchar$9)
      0005D5 0E                    3760 	.db	14
      0005D6 02                    3761 	.uleb128	2
      0005D7 00                    3762 	.db	0
                                   3763 
                                   3764 	.area .debug_frame (NOLOAD)
      0005D8 00 00                 3765 	.dw	0
      0005DA 00 10                 3766 	.dw	Ldebug_CIE1_end-Ldebug_CIE1_start
      0005DC                       3767 Ldebug_CIE1_start:
      0005DC FF FF                 3768 	.dw	0xffff
      0005DE FF FF                 3769 	.dw	0xffff
      0005E0 01                    3770 	.db	1
      0005E1 00                    3771 	.db	0
      0005E2 01                    3772 	.uleb128	1
      0005E3 01                    3773 	.sleb128	1
      0005E4 09                    3774 	.db	9
      0005E5 0C                    3775 	.db	12
      0005E6 16                    3776 	.uleb128	22
      0005E7 02                    3777 	.uleb128	2
      0005E8 89                    3778 	.db	137
      0005E9 01                    3779 	.uleb128	1
      0005EA 00                    3780 	.db	0
      0005EB 00                    3781 	.db	0
      0005EC                       3782 Ldebug_CIE1_end:
      0005EC 00 00 00 14           3783 	.dw	0,20
      0005F0 00 00 05 D8           3784 	.dw	0,(Ldebug_CIE1_start-4)
      0005F4 00 00 11 E7           3785 	.dw	0,(Ssdcc_stdio$putchar$1)	;initial loc
      0005F8 00 00 00 20           3786 	.dw	0,Ssdcc_stdio$putchar$7-Ssdcc_stdio$putchar$1
      0005FC 01                    3787 	.db	1
      0005FD 00 00 11 E7           3788 	.dw	0,(Ssdcc_stdio$putchar$1)
      000601 0E                    3789 	.db	14
      000602 02                    3790 	.uleb128	2
      000603 00                    3791 	.db	0
