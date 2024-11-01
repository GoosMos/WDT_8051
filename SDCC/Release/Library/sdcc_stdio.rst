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
                           000000   756 Lsdcc_stdio.putchar$c$1_0$153==.
      000047                        757 _putchar_c_65536_153:
      000047                        758 	.ds 2
                           000002   759 Lsdcc_stdio.getchar$c$1_0$156==.
      000049                        760 _getchar_c_65536_156:
      000049                        761 	.ds 1
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
                                    799 ;c                         Allocated with name '_putchar_c_65536_153'
                                    800 ;------------------------------------------------------------
                           000000   801 	Ssdcc_stdio$putchar$0 ==.
                                    802 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sdcc_stdio.c:36: int putchar (int c)  {
                                    803 ;	-----------------------------------------
                                    804 ;	 function putchar
                                    805 ;	-----------------------------------------
      001591                        806 _putchar:
                           000007   807 	ar7 = 0x07
                           000006   808 	ar6 = 0x06
                           000005   809 	ar5 = 0x05
                           000004   810 	ar4 = 0x04
                           000003   811 	ar3 = 0x03
                           000002   812 	ar2 = 0x02
                           000001   813 	ar1 = 0x01
                           000000   814 	ar0 = 0x00
                           000000   815 	Ssdcc_stdio$putchar$1 ==.
      001591 AF 83            [24]  816 	mov	r7,dph
      001593 E5 82            [12]  817 	mov	a,dpl
      001595 90 00 47         [24]  818 	mov	dptr,#_putchar_c_65536_153
      001598 F0               [24]  819 	movx	@dptr,a
      001599 EF               [12]  820 	mov	a,r7
      00159A A3               [24]  821 	inc	dptr
      00159B F0               [24]  822 	movx	@dptr,a
                           00000B   823 	Ssdcc_stdio$putchar$2 ==.
                                    824 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sdcc_stdio.c:37: while (!TI);
      00159C                        825 00101$:
                           00000B   826 	Ssdcc_stdio$putchar$3 ==.
                                    827 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sdcc_stdio.c:38: TI = 0;
                                    828 ;	assignBit
      00159C 10 99 02         [24]  829 	jbc	_TI,00114$
      00159F 80 FB            [24]  830 	sjmp	00101$
      0015A1                        831 00114$:
                           000010   832 	Ssdcc_stdio$putchar$4 ==.
                                    833 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sdcc_stdio.c:39: return (SBUF = c);
      0015A1 90 00 47         [24]  834 	mov	dptr,#_putchar_c_65536_153
      0015A4 E0               [24]  835 	movx	a,@dptr
      0015A5 FE               [12]  836 	mov	r6,a
      0015A6 A3               [24]  837 	inc	dptr
      0015A7 E0               [24]  838 	movx	a,@dptr
      0015A8 8E 99            [24]  839 	mov	_SBUF,r6
      0015AA 7F 00            [12]  840 	mov	r7,#0x00
      0015AC 8E 82            [24]  841 	mov	dpl,r6
      0015AE 8F 83            [24]  842 	mov	dph,r7
                           00001F   843 	Ssdcc_stdio$putchar$5 ==.
                                    844 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sdcc_stdio.c:40: }
                           00001F   845 	Ssdcc_stdio$putchar$6 ==.
                           00001F   846 	XG$putchar$0$0 ==.
      0015B0 22               [24]  847 	ret
                           000020   848 	Ssdcc_stdio$putchar$7 ==.
                                    849 ;------------------------------------------------------------
                                    850 ;Allocation info for local variables in function 'getchar'
                                    851 ;------------------------------------------------------------
                                    852 ;c                         Allocated with name '_getchar_c_65536_156'
                                    853 ;------------------------------------------------------------
                           000020   854 	Ssdcc_stdio$getchar$8 ==.
                                    855 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sdcc_stdio.c:52: char getchar (void)
                                    856 ;	-----------------------------------------
                                    857 ;	 function getchar
                                    858 ;	-----------------------------------------
      0015B1                        859 _getchar:
                           000020   860 	Ssdcc_stdio$getchar$9 ==.
                           000020   861 	Ssdcc_stdio$getchar$10 ==.
                                    862 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sdcc_stdio.c:56: while (!RI);
      0015B1                        863 00101$:
      0015B1 30 98 FD         [24]  864 	jnb	_RI,00101$
                           000023   865 	Ssdcc_stdio$getchar$11 ==.
                                    866 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sdcc_stdio.c:57: c = SBUF;
      0015B4 90 00 49         [24]  867 	mov	dptr,#_getchar_c_65536_156
      0015B7 E5 99            [12]  868 	mov	a,_SBUF
      0015B9 F0               [24]  869 	movx	@dptr,a
                           000029   870 	Ssdcc_stdio$getchar$12 ==.
                                    871 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sdcc_stdio.c:58: RI = 0;
                                    872 ;	assignBit
      0015BA C2 98            [12]  873 	clr	_RI
                           00002B   874 	Ssdcc_stdio$getchar$13 ==.
                                    875 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sdcc_stdio.c:60: return c;
      0015BC 90 00 49         [24]  876 	mov	dptr,#_getchar_c_65536_156
      0015BF E0               [24]  877 	movx	a,@dptr
                           00002F   878 	Ssdcc_stdio$getchar$14 ==.
                                    879 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sdcc_stdio.c:61: }
                           00002F   880 	Ssdcc_stdio$getchar$15 ==.
                           00002F   881 	XG$getchar$0$0 ==.
      0015C0 F5 82            [12]  882 	mov	dpl,a
      0015C2 22               [24]  883 	ret
                           000032   884 	Ssdcc_stdio$getchar$16 ==.
                                    885 	.area CSEG    (CODE)
                                    886 	.area CONST   (CODE)
                                    887 	.area XINIT   (CODE)
                                    888 	.area INITIALIZER
                                    889 	.area CABS    (ABS,CODE)
                                    890 
                                    891 	.area .debug_line (NOLOAD)
      000DF5 00 00 01 09            892 	.dw	0,Ldebug_line_end-Ldebug_line_start
      000DF9                        893 Ldebug_line_start:
      000DF9 00 02                  894 	.dw	2
      000DFB 00 00 00 AD            895 	.dw	0,Ldebug_line_stmt-6-Ldebug_line_start
      000DFF 01                     896 	.db	1
      000E00 01                     897 	.db	1
      000E01 FB                     898 	.db	-5
      000E02 0F                     899 	.db	15
      000E03 0A                     900 	.db	10
      000E04 00                     901 	.db	0
      000E05 01                     902 	.db	1
      000E06 01                     903 	.db	1
      000E07 01                     904 	.db	1
      000E08 01                     905 	.db	1
      000E09 00                     906 	.db	0
      000E0A 00                     907 	.db	0
      000E0B 00                     908 	.db	0
      000E0C 01                     909 	.db	1
      000E0D 2F 2E 2E 2F 69 6E 63   910 	.ascii "/../include/mcs51"
             6C 75 64 65 2F 6D 63
             73 35 31
      000E1E 00                     911 	.db	0
      000E1F 2F 2E 2E 2F 69 6E 63   912 	.ascii "/../include"
             6C 75 64 65
      000E2A 00                     913 	.db	0
      000E2B 00                     914 	.db	0
      000E2C 43 3A 2F 55 73 65 72   915 	.ascii "C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sdcc_stdio.c"
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
      000EA7 00                     916 	.db	0
      000EA8 00                     917 	.uleb128	0
      000EA9 00                     918 	.uleb128	0
      000EAA 00                     919 	.uleb128	0
      000EAB 00                     920 	.db	0
      000EAC                        921 Ldebug_line_stmt:
      000EAC 00                     922 	.db	0
      000EAD 05                     923 	.uleb128	5
      000EAE 02                     924 	.db	2
      000EAF 00 00 15 91            925 	.dw	0,(Ssdcc_stdio$putchar$0)
      000EB3 03                     926 	.db	3
      000EB4 23                     927 	.sleb128	35
      000EB5 01                     928 	.db	1
      000EB6 09                     929 	.db	9
      000EB7 00 0B                  930 	.dw	Ssdcc_stdio$putchar$2-Ssdcc_stdio$putchar$0
      000EB9 03                     931 	.db	3
      000EBA 01                     932 	.sleb128	1
      000EBB 01                     933 	.db	1
      000EBC 09                     934 	.db	9
      000EBD 00 00                  935 	.dw	Ssdcc_stdio$putchar$3-Ssdcc_stdio$putchar$2
      000EBF 03                     936 	.db	3
      000EC0 01                     937 	.sleb128	1
      000EC1 01                     938 	.db	1
      000EC2 09                     939 	.db	9
      000EC3 00 05                  940 	.dw	Ssdcc_stdio$putchar$4-Ssdcc_stdio$putchar$3
      000EC5 03                     941 	.db	3
      000EC6 01                     942 	.sleb128	1
      000EC7 01                     943 	.db	1
      000EC8 09                     944 	.db	9
      000EC9 00 0F                  945 	.dw	Ssdcc_stdio$putchar$5-Ssdcc_stdio$putchar$4
      000ECB 03                     946 	.db	3
      000ECC 01                     947 	.sleb128	1
      000ECD 01                     948 	.db	1
      000ECE 09                     949 	.db	9
      000ECF 00 01                  950 	.dw	1+Ssdcc_stdio$putchar$6-Ssdcc_stdio$putchar$5
      000ED1 00                     951 	.db	0
      000ED2 01                     952 	.uleb128	1
      000ED3 01                     953 	.db	1
      000ED4 00                     954 	.db	0
      000ED5 05                     955 	.uleb128	5
      000ED6 02                     956 	.db	2
      000ED7 00 00 15 B1            957 	.dw	0,(Ssdcc_stdio$getchar$8)
      000EDB 03                     958 	.db	3
      000EDC 33                     959 	.sleb128	51
      000EDD 01                     960 	.db	1
      000EDE 09                     961 	.db	9
      000EDF 00 00                  962 	.dw	Ssdcc_stdio$getchar$10-Ssdcc_stdio$getchar$8
      000EE1 03                     963 	.db	3
      000EE2 04                     964 	.sleb128	4
      000EE3 01                     965 	.db	1
      000EE4 09                     966 	.db	9
      000EE5 00 03                  967 	.dw	Ssdcc_stdio$getchar$11-Ssdcc_stdio$getchar$10
      000EE7 03                     968 	.db	3
      000EE8 01                     969 	.sleb128	1
      000EE9 01                     970 	.db	1
      000EEA 09                     971 	.db	9
      000EEB 00 06                  972 	.dw	Ssdcc_stdio$getchar$12-Ssdcc_stdio$getchar$11
      000EED 03                     973 	.db	3
      000EEE 01                     974 	.sleb128	1
      000EEF 01                     975 	.db	1
      000EF0 09                     976 	.db	9
      000EF1 00 02                  977 	.dw	Ssdcc_stdio$getchar$13-Ssdcc_stdio$getchar$12
      000EF3 03                     978 	.db	3
      000EF4 02                     979 	.sleb128	2
      000EF5 01                     980 	.db	1
      000EF6 09                     981 	.db	9
      000EF7 00 04                  982 	.dw	Ssdcc_stdio$getchar$14-Ssdcc_stdio$getchar$13
      000EF9 03                     983 	.db	3
      000EFA 01                     984 	.sleb128	1
      000EFB 01                     985 	.db	1
      000EFC 09                     986 	.db	9
      000EFD 00 01                  987 	.dw	1+Ssdcc_stdio$getchar$15-Ssdcc_stdio$getchar$14
      000EFF 00                     988 	.db	0
      000F00 01                     989 	.uleb128	1
      000F01 01                     990 	.db	1
      000F02                        991 Ldebug_line_end:
                                    992 
                                    993 	.area .debug_loc (NOLOAD)
      0002A8                        994 Ldebug_loc_start:
      0002A8 00 00 15 B1            995 	.dw	0,(Ssdcc_stdio$getchar$9)
      0002AC 00 00 15 C3            996 	.dw	0,(Ssdcc_stdio$getchar$16)
      0002B0 00 02                  997 	.dw	2
      0002B2 86                     998 	.db	134
      0002B3 01                     999 	.sleb128	1
      0002B4 00 00 00 00           1000 	.dw	0,0
      0002B8 00 00 00 00           1001 	.dw	0,0
      0002BC 00 00 15 91           1002 	.dw	0,(Ssdcc_stdio$putchar$1)
      0002C0 00 00 15 B1           1003 	.dw	0,(Ssdcc_stdio$putchar$7)
      0002C4 00 02                 1004 	.dw	2
      0002C6 86                    1005 	.db	134
      0002C7 01                    1006 	.sleb128	1
      0002C8 00 00 00 00           1007 	.dw	0,0
      0002CC 00 00 00 00           1008 	.dw	0,0
                                   1009 
                                   1010 	.area .debug_abbrev (NOLOAD)
      0001F6                       1011 Ldebug_abbrev:
      0001F6 01                    1012 	.uleb128	1
      0001F7 11                    1013 	.uleb128	17
      0001F8 01                    1014 	.db	1
      0001F9 03                    1015 	.uleb128	3
      0001FA 08                    1016 	.uleb128	8
      0001FB 10                    1017 	.uleb128	16
      0001FC 06                    1018 	.uleb128	6
      0001FD 13                    1019 	.uleb128	19
      0001FE 0B                    1020 	.uleb128	11
      0001FF 25                    1021 	.uleb128	37
      000200 08                    1022 	.uleb128	8
      000201 00                    1023 	.uleb128	0
      000202 00                    1024 	.uleb128	0
      000203 02                    1025 	.uleb128	2
      000204 24                    1026 	.uleb128	36
      000205 00                    1027 	.db	0
      000206 03                    1028 	.uleb128	3
      000207 08                    1029 	.uleb128	8
      000208 0B                    1030 	.uleb128	11
      000209 0B                    1031 	.uleb128	11
      00020A 3E                    1032 	.uleb128	62
      00020B 0B                    1033 	.uleb128	11
      00020C 00                    1034 	.uleb128	0
      00020D 00                    1035 	.uleb128	0
      00020E 03                    1036 	.uleb128	3
      00020F 2E                    1037 	.uleb128	46
      000210 01                    1038 	.db	1
      000211 01                    1039 	.uleb128	1
      000212 13                    1040 	.uleb128	19
      000213 03                    1041 	.uleb128	3
      000214 08                    1042 	.uleb128	8
      000215 11                    1043 	.uleb128	17
      000216 01                    1044 	.uleb128	1
      000217 12                    1045 	.uleb128	18
      000218 01                    1046 	.uleb128	1
      000219 3F                    1047 	.uleb128	63
      00021A 0C                    1048 	.uleb128	12
      00021B 40                    1049 	.uleb128	64
      00021C 06                    1050 	.uleb128	6
      00021D 49                    1051 	.uleb128	73
      00021E 13                    1052 	.uleb128	19
      00021F 00                    1053 	.uleb128	0
      000220 00                    1054 	.uleb128	0
      000221 04                    1055 	.uleb128	4
      000222 05                    1056 	.uleb128	5
      000223 00                    1057 	.db	0
      000224 02                    1058 	.uleb128	2
      000225 0A                    1059 	.uleb128	10
      000226 03                    1060 	.uleb128	3
      000227 08                    1061 	.uleb128	8
      000228 49                    1062 	.uleb128	73
      000229 13                    1063 	.uleb128	19
      00022A 00                    1064 	.uleb128	0
      00022B 00                    1065 	.uleb128	0
      00022C 05                    1066 	.uleb128	5
      00022D 34                    1067 	.uleb128	52
      00022E 00                    1068 	.db	0
      00022F 02                    1069 	.uleb128	2
      000230 0A                    1070 	.uleb128	10
      000231 03                    1071 	.uleb128	3
      000232 08                    1072 	.uleb128	8
      000233 49                    1073 	.uleb128	73
      000234 13                    1074 	.uleb128	19
      000235 00                    1075 	.uleb128	0
      000236 00                    1076 	.uleb128	0
      000237 06                    1077 	.uleb128	6
      000238 35                    1078 	.uleb128	53
      000239 00                    1079 	.db	0
      00023A 49                    1080 	.uleb128	73
      00023B 13                    1081 	.uleb128	19
      00023C 00                    1082 	.uleb128	0
      00023D 00                    1083 	.uleb128	0
      00023E 07                    1084 	.uleb128	7
      00023F 34                    1085 	.uleb128	52
      000240 00                    1086 	.db	0
      000241 02                    1087 	.uleb128	2
      000242 0A                    1088 	.uleb128	10
      000243 03                    1089 	.uleb128	3
      000244 08                    1090 	.uleb128	8
      000245 3F                    1091 	.uleb128	63
      000246 0C                    1092 	.uleb128	12
      000247 49                    1093 	.uleb128	73
      000248 13                    1094 	.uleb128	19
      000249 00                    1095 	.uleb128	0
      00024A 00                    1096 	.uleb128	0
      00024B 00                    1097 	.uleb128	0
                                   1098 
                                   1099 	.area .debug_info (NOLOAD)
      004257 00 00 10 AF           1100 	.dw	0,Ldebug_info_end-Ldebug_info_start
      00425B                       1101 Ldebug_info_start:
      00425B 00 02                 1102 	.dw	2
      00425D 00 00 01 F6           1103 	.dw	0,(Ldebug_abbrev)
      004261 04                    1104 	.db	4
      004262 01                    1105 	.uleb128	1
      004263 43 3A 2F 55 73 65 72  1106 	.ascii "C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sdcc_stdio.c"
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
      0042DE 00                    1107 	.db	0
      0042DF 00 00 0D F5           1108 	.dw	0,(Ldebug_line_start+-4)
      0042E3 01                    1109 	.db	1
      0042E4 53 44 43 43 20 76 65  1110 	.ascii "SDCC version 4.2.6 #13647"
             72 73 69 6F 6E 20 34
             2E 32 2E 36 20 23 31
             33 36 34 37
      0042FD 00                    1111 	.db	0
      0042FE 02                    1112 	.uleb128	2
      0042FF 69 6E 74              1113 	.ascii "int"
      004302 00                    1114 	.db	0
      004303 02                    1115 	.db	2
      004304 05                    1116 	.db	5
      004305 03                    1117 	.uleb128	3
      004306 00 00 00 DA           1118 	.dw	0,218
      00430A 70 75 74 63 68 61 72  1119 	.ascii "putchar"
      004311 00                    1120 	.db	0
      004312 00 00 15 91           1121 	.dw	0,(_putchar)
      004316 00 00 15 B1           1122 	.dw	0,(XG$putchar$0$0+1)
      00431A 01                    1123 	.db	1
      00431B 00 00 02 BC           1124 	.dw	0,(Ldebug_loc_start+20)
      00431F 00 00 00 A7           1125 	.dw	0,167
      004323 04                    1126 	.uleb128	4
      004324 05                    1127 	.db	5
      004325 03                    1128 	.db	3
      004326 00 00 00 47           1129 	.dw	0,(_putchar_c_65536_153)
      00432A 63                    1130 	.ascii "c"
      00432B 00                    1131 	.db	0
      00432C 00 00 00 A7           1132 	.dw	0,167
      004330 00                    1133 	.uleb128	0
      004331 02                    1134 	.uleb128	2
      004332 75 6E 73 69 67 6E 65  1135 	.ascii "unsigned char"
             64 20 63 68 61 72
      00433F 00                    1136 	.db	0
      004340 01                    1137 	.db	1
      004341 08                    1138 	.db	8
      004342 03                    1139 	.uleb128	3
      004343 00 00 01 17           1140 	.dw	0,279
      004347 67 65 74 63 68 61 72  1141 	.ascii "getchar"
      00434E 00                    1142 	.db	0
      00434F 00 00 15 B1           1143 	.dw	0,(_getchar)
      004353 00 00 15 C1           1144 	.dw	0,(XG$getchar$0$0+1)
      004357 01                    1145 	.db	1
      004358 00 00 02 A8           1146 	.dw	0,(Ldebug_loc_start)
      00435C 00 00 00 DA           1147 	.dw	0,218
      004360 05                    1148 	.uleb128	5
      004361 05                    1149 	.db	5
      004362 03                    1150 	.db	3
      004363 00 00 00 49           1151 	.dw	0,(_getchar_c_65536_156)
      004367 63                    1152 	.ascii "c"
      004368 00                    1153 	.db	0
      004369 00 00 00 DA           1154 	.dw	0,218
      00436D 00                    1155 	.uleb128	0
      00436E 06                    1156 	.uleb128	6
      00436F 00 00 00 DA           1157 	.dw	0,218
      004373 07                    1158 	.uleb128	7
      004374 05                    1159 	.db	5
      004375 03                    1160 	.db	3
      004376 00 00 00 80           1161 	.dw	0,(_P0)
      00437A 50 30                 1162 	.ascii "P0"
      00437C 00                    1163 	.db	0
      00437D 01                    1164 	.db	1
      00437E 00 00 01 17           1165 	.dw	0,279
      004382 07                    1166 	.uleb128	7
      004383 05                    1167 	.db	5
      004384 03                    1168 	.db	3
      004385 00 00 00 81           1169 	.dw	0,(_SP)
      004389 53 50                 1170 	.ascii "SP"
      00438B 00                    1171 	.db	0
      00438C 01                    1172 	.db	1
      00438D 00 00 01 17           1173 	.dw	0,279
      004391 07                    1174 	.uleb128	7
      004392 05                    1175 	.db	5
      004393 03                    1176 	.db	3
      004394 00 00 00 82           1177 	.dw	0,(_DPL)
      004398 44 50 4C              1178 	.ascii "DPL"
      00439B 00                    1179 	.db	0
      00439C 01                    1180 	.db	1
      00439D 00 00 01 17           1181 	.dw	0,279
      0043A1 07                    1182 	.uleb128	7
      0043A2 05                    1183 	.db	5
      0043A3 03                    1184 	.db	3
      0043A4 00 00 00 83           1185 	.dw	0,(_DPH)
      0043A8 44 50 48              1186 	.ascii "DPH"
      0043AB 00                    1187 	.db	0
      0043AC 01                    1188 	.db	1
      0043AD 00 00 01 17           1189 	.dw	0,279
      0043B1 07                    1190 	.uleb128	7
      0043B2 05                    1191 	.db	5
      0043B3 03                    1192 	.db	3
      0043B4 00 00 00 84           1193 	.dw	0,(_RCTRIM0)
      0043B8 52 43 54 52 49 4D 30  1194 	.ascii "RCTRIM0"
      0043BF 00                    1195 	.db	0
      0043C0 01                    1196 	.db	1
      0043C1 00 00 01 17           1197 	.dw	0,279
      0043C5 07                    1198 	.uleb128	7
      0043C6 05                    1199 	.db	5
      0043C7 03                    1200 	.db	3
      0043C8 00 00 00 85           1201 	.dw	0,(_RCTRIM1)
      0043CC 52 43 54 52 49 4D 31  1202 	.ascii "RCTRIM1"
      0043D3 00                    1203 	.db	0
      0043D4 01                    1204 	.db	1
      0043D5 00 00 01 17           1205 	.dw	0,279
      0043D9 07                    1206 	.uleb128	7
      0043DA 05                    1207 	.db	5
      0043DB 03                    1208 	.db	3
      0043DC 00 00 00 86           1209 	.dw	0,(_RWK)
      0043E0 52 57 4B              1210 	.ascii "RWK"
      0043E3 00                    1211 	.db	0
      0043E4 01                    1212 	.db	1
      0043E5 00 00 01 17           1213 	.dw	0,279
      0043E9 07                    1214 	.uleb128	7
      0043EA 05                    1215 	.db	5
      0043EB 03                    1216 	.db	3
      0043EC 00 00 00 87           1217 	.dw	0,(_PCON)
      0043F0 50 43 4F 4E           1218 	.ascii "PCON"
      0043F4 00                    1219 	.db	0
      0043F5 01                    1220 	.db	1
      0043F6 00 00 01 17           1221 	.dw	0,279
      0043FA 07                    1222 	.uleb128	7
      0043FB 05                    1223 	.db	5
      0043FC 03                    1224 	.db	3
      0043FD 00 00 00 88           1225 	.dw	0,(_TCON)
      004401 54 43 4F 4E           1226 	.ascii "TCON"
      004405 00                    1227 	.db	0
      004406 01                    1228 	.db	1
      004407 00 00 01 17           1229 	.dw	0,279
      00440B 07                    1230 	.uleb128	7
      00440C 05                    1231 	.db	5
      00440D 03                    1232 	.db	3
      00440E 00 00 00 89           1233 	.dw	0,(_TMOD)
      004412 54 4D 4F 44           1234 	.ascii "TMOD"
      004416 00                    1235 	.db	0
      004417 01                    1236 	.db	1
      004418 00 00 01 17           1237 	.dw	0,279
      00441C 07                    1238 	.uleb128	7
      00441D 05                    1239 	.db	5
      00441E 03                    1240 	.db	3
      00441F 00 00 00 8A           1241 	.dw	0,(_TL0)
      004423 54 4C 30              1242 	.ascii "TL0"
      004426 00                    1243 	.db	0
      004427 01                    1244 	.db	1
      004428 00 00 01 17           1245 	.dw	0,279
      00442C 07                    1246 	.uleb128	7
      00442D 05                    1247 	.db	5
      00442E 03                    1248 	.db	3
      00442F 00 00 00 8B           1249 	.dw	0,(_TL1)
      004433 54 4C 31              1250 	.ascii "TL1"
      004436 00                    1251 	.db	0
      004437 01                    1252 	.db	1
      004438 00 00 01 17           1253 	.dw	0,279
      00443C 07                    1254 	.uleb128	7
      00443D 05                    1255 	.db	5
      00443E 03                    1256 	.db	3
      00443F 00 00 00 8C           1257 	.dw	0,(_TH0)
      004443 54 48 30              1258 	.ascii "TH0"
      004446 00                    1259 	.db	0
      004447 01                    1260 	.db	1
      004448 00 00 01 17           1261 	.dw	0,279
      00444C 07                    1262 	.uleb128	7
      00444D 05                    1263 	.db	5
      00444E 03                    1264 	.db	3
      00444F 00 00 00 8D           1265 	.dw	0,(_TH1)
      004453 54 48 31              1266 	.ascii "TH1"
      004456 00                    1267 	.db	0
      004457 01                    1268 	.db	1
      004458 00 00 01 17           1269 	.dw	0,279
      00445C 07                    1270 	.uleb128	7
      00445D 05                    1271 	.db	5
      00445E 03                    1272 	.db	3
      00445F 00 00 00 8E           1273 	.dw	0,(_CKCON)
      004463 43 4B 43 4F 4E        1274 	.ascii "CKCON"
      004468 00                    1275 	.db	0
      004469 01                    1276 	.db	1
      00446A 00 00 01 17           1277 	.dw	0,279
      00446E 07                    1278 	.uleb128	7
      00446F 05                    1279 	.db	5
      004470 03                    1280 	.db	3
      004471 00 00 00 8F           1281 	.dw	0,(_WKCON)
      004475 57 4B 43 4F 4E        1282 	.ascii "WKCON"
      00447A 00                    1283 	.db	0
      00447B 01                    1284 	.db	1
      00447C 00 00 01 17           1285 	.dw	0,279
      004480 07                    1286 	.uleb128	7
      004481 05                    1287 	.db	5
      004482 03                    1288 	.db	3
      004483 00 00 00 90           1289 	.dw	0,(_P1)
      004487 50 31                 1290 	.ascii "P1"
      004489 00                    1291 	.db	0
      00448A 01                    1292 	.db	1
      00448B 00 00 01 17           1293 	.dw	0,279
      00448F 07                    1294 	.uleb128	7
      004490 05                    1295 	.db	5
      004491 03                    1296 	.db	3
      004492 00 00 00 91           1297 	.dw	0,(_SFRS)
      004496 53 46 52 53           1298 	.ascii "SFRS"
      00449A 00                    1299 	.db	0
      00449B 01                    1300 	.db	1
      00449C 00 00 01 17           1301 	.dw	0,279
      0044A0 07                    1302 	.uleb128	7
      0044A1 05                    1303 	.db	5
      0044A2 03                    1304 	.db	3
      0044A3 00 00 00 92           1305 	.dw	0,(_CAPCON0)
      0044A7 43 41 50 43 4F 4E 30  1306 	.ascii "CAPCON0"
      0044AE 00                    1307 	.db	0
      0044AF 01                    1308 	.db	1
      0044B0 00 00 01 17           1309 	.dw	0,279
      0044B4 07                    1310 	.uleb128	7
      0044B5 05                    1311 	.db	5
      0044B6 03                    1312 	.db	3
      0044B7 00 00 00 93           1313 	.dw	0,(_CAPCON1)
      0044BB 43 41 50 43 4F 4E 31  1314 	.ascii "CAPCON1"
      0044C2 00                    1315 	.db	0
      0044C3 01                    1316 	.db	1
      0044C4 00 00 01 17           1317 	.dw	0,279
      0044C8 07                    1318 	.uleb128	7
      0044C9 05                    1319 	.db	5
      0044CA 03                    1320 	.db	3
      0044CB 00 00 00 94           1321 	.dw	0,(_CAPCON2)
      0044CF 43 41 50 43 4F 4E 32  1322 	.ascii "CAPCON2"
      0044D6 00                    1323 	.db	0
      0044D7 01                    1324 	.db	1
      0044D8 00 00 01 17           1325 	.dw	0,279
      0044DC 07                    1326 	.uleb128	7
      0044DD 05                    1327 	.db	5
      0044DE 03                    1328 	.db	3
      0044DF 00 00 00 95           1329 	.dw	0,(_CKDIV)
      0044E3 43 4B 44 49 56        1330 	.ascii "CKDIV"
      0044E8 00                    1331 	.db	0
      0044E9 01                    1332 	.db	1
      0044EA 00 00 01 17           1333 	.dw	0,279
      0044EE 07                    1334 	.uleb128	7
      0044EF 05                    1335 	.db	5
      0044F0 03                    1336 	.db	3
      0044F1 00 00 00 96           1337 	.dw	0,(_CKSWT)
      0044F5 43 4B 53 57 54        1338 	.ascii "CKSWT"
      0044FA 00                    1339 	.db	0
      0044FB 01                    1340 	.db	1
      0044FC 00 00 01 17           1341 	.dw	0,279
      004500 07                    1342 	.uleb128	7
      004501 05                    1343 	.db	5
      004502 03                    1344 	.db	3
      004503 00 00 00 97           1345 	.dw	0,(_CKEN)
      004507 43 4B 45 4E           1346 	.ascii "CKEN"
      00450B 00                    1347 	.db	0
      00450C 01                    1348 	.db	1
      00450D 00 00 01 17           1349 	.dw	0,279
      004511 07                    1350 	.uleb128	7
      004512 05                    1351 	.db	5
      004513 03                    1352 	.db	3
      004514 00 00 00 98           1353 	.dw	0,(_SCON)
      004518 53 43 4F 4E           1354 	.ascii "SCON"
      00451C 00                    1355 	.db	0
      00451D 01                    1356 	.db	1
      00451E 00 00 01 17           1357 	.dw	0,279
      004522 07                    1358 	.uleb128	7
      004523 05                    1359 	.db	5
      004524 03                    1360 	.db	3
      004525 00 00 00 99           1361 	.dw	0,(_SBUF)
      004529 53 42 55 46           1362 	.ascii "SBUF"
      00452D 00                    1363 	.db	0
      00452E 01                    1364 	.db	1
      00452F 00 00 01 17           1365 	.dw	0,279
      004533 07                    1366 	.uleb128	7
      004534 05                    1367 	.db	5
      004535 03                    1368 	.db	3
      004536 00 00 00 9A           1369 	.dw	0,(_SBUF_1)
      00453A 53 42 55 46 5F 31     1370 	.ascii "SBUF_1"
      004540 00                    1371 	.db	0
      004541 01                    1372 	.db	1
      004542 00 00 01 17           1373 	.dw	0,279
      004546 07                    1374 	.uleb128	7
      004547 05                    1375 	.db	5
      004548 03                    1376 	.db	3
      004549 00 00 00 9B           1377 	.dw	0,(_EIE)
      00454D 45 49 45              1378 	.ascii "EIE"
      004550 00                    1379 	.db	0
      004551 01                    1380 	.db	1
      004552 00 00 01 17           1381 	.dw	0,279
      004556 07                    1382 	.uleb128	7
      004557 05                    1383 	.db	5
      004558 03                    1384 	.db	3
      004559 00 00 00 9C           1385 	.dw	0,(_EIE1)
      00455D 45 49 45 31           1386 	.ascii "EIE1"
      004561 00                    1387 	.db	0
      004562 01                    1388 	.db	1
      004563 00 00 01 17           1389 	.dw	0,279
      004567 07                    1390 	.uleb128	7
      004568 05                    1391 	.db	5
      004569 03                    1392 	.db	3
      00456A 00 00 00 9F           1393 	.dw	0,(_CHPCON)
      00456E 43 48 50 43 4F 4E     1394 	.ascii "CHPCON"
      004574 00                    1395 	.db	0
      004575 01                    1396 	.db	1
      004576 00 00 01 17           1397 	.dw	0,279
      00457A 07                    1398 	.uleb128	7
      00457B 05                    1399 	.db	5
      00457C 03                    1400 	.db	3
      00457D 00 00 00 A0           1401 	.dw	0,(_P2)
      004581 50 32                 1402 	.ascii "P2"
      004583 00                    1403 	.db	0
      004584 01                    1404 	.db	1
      004585 00 00 01 17           1405 	.dw	0,279
      004589 07                    1406 	.uleb128	7
      00458A 05                    1407 	.db	5
      00458B 03                    1408 	.db	3
      00458C 00 00 00 A2           1409 	.dw	0,(_AUXR1)
      004590 41 55 58 52 31        1410 	.ascii "AUXR1"
      004595 00                    1411 	.db	0
      004596 01                    1412 	.db	1
      004597 00 00 01 17           1413 	.dw	0,279
      00459B 07                    1414 	.uleb128	7
      00459C 05                    1415 	.db	5
      00459D 03                    1416 	.db	3
      00459E 00 00 00 A3           1417 	.dw	0,(_BODCON0)
      0045A2 42 4F 44 43 4F 4E 30  1418 	.ascii "BODCON0"
      0045A9 00                    1419 	.db	0
      0045AA 01                    1420 	.db	1
      0045AB 00 00 01 17           1421 	.dw	0,279
      0045AF 07                    1422 	.uleb128	7
      0045B0 05                    1423 	.db	5
      0045B1 03                    1424 	.db	3
      0045B2 00 00 00 A4           1425 	.dw	0,(_IAPTRG)
      0045B6 49 41 50 54 52 47     1426 	.ascii "IAPTRG"
      0045BC 00                    1427 	.db	0
      0045BD 01                    1428 	.db	1
      0045BE 00 00 01 17           1429 	.dw	0,279
      0045C2 07                    1430 	.uleb128	7
      0045C3 05                    1431 	.db	5
      0045C4 03                    1432 	.db	3
      0045C5 00 00 00 A5           1433 	.dw	0,(_IAPUEN)
      0045C9 49 41 50 55 45 4E     1434 	.ascii "IAPUEN"
      0045CF 00                    1435 	.db	0
      0045D0 01                    1436 	.db	1
      0045D1 00 00 01 17           1437 	.dw	0,279
      0045D5 07                    1438 	.uleb128	7
      0045D6 05                    1439 	.db	5
      0045D7 03                    1440 	.db	3
      0045D8 00 00 00 A6           1441 	.dw	0,(_IAPAL)
      0045DC 49 41 50 41 4C        1442 	.ascii "IAPAL"
      0045E1 00                    1443 	.db	0
      0045E2 01                    1444 	.db	1
      0045E3 00 00 01 17           1445 	.dw	0,279
      0045E7 07                    1446 	.uleb128	7
      0045E8 05                    1447 	.db	5
      0045E9 03                    1448 	.db	3
      0045EA 00 00 00 A7           1449 	.dw	0,(_IAPAH)
      0045EE 49 41 50 41 48        1450 	.ascii "IAPAH"
      0045F3 00                    1451 	.db	0
      0045F4 01                    1452 	.db	1
      0045F5 00 00 01 17           1453 	.dw	0,279
      0045F9 07                    1454 	.uleb128	7
      0045FA 05                    1455 	.db	5
      0045FB 03                    1456 	.db	3
      0045FC 00 00 00 A8           1457 	.dw	0,(_IE)
      004600 49 45                 1458 	.ascii "IE"
      004602 00                    1459 	.db	0
      004603 01                    1460 	.db	1
      004604 00 00 01 17           1461 	.dw	0,279
      004608 07                    1462 	.uleb128	7
      004609 05                    1463 	.db	5
      00460A 03                    1464 	.db	3
      00460B 00 00 00 A9           1465 	.dw	0,(_SADDR)
      00460F 53 41 44 44 52        1466 	.ascii "SADDR"
      004614 00                    1467 	.db	0
      004615 01                    1468 	.db	1
      004616 00 00 01 17           1469 	.dw	0,279
      00461A 07                    1470 	.uleb128	7
      00461B 05                    1471 	.db	5
      00461C 03                    1472 	.db	3
      00461D 00 00 00 AA           1473 	.dw	0,(_WDCON)
      004621 57 44 43 4F 4E        1474 	.ascii "WDCON"
      004626 00                    1475 	.db	0
      004627 01                    1476 	.db	1
      004628 00 00 01 17           1477 	.dw	0,279
      00462C 07                    1478 	.uleb128	7
      00462D 05                    1479 	.db	5
      00462E 03                    1480 	.db	3
      00462F 00 00 00 AB           1481 	.dw	0,(_BODCON1)
      004633 42 4F 44 43 4F 4E 31  1482 	.ascii "BODCON1"
      00463A 00                    1483 	.db	0
      00463B 01                    1484 	.db	1
      00463C 00 00 01 17           1485 	.dw	0,279
      004640 07                    1486 	.uleb128	7
      004641 05                    1487 	.db	5
      004642 03                    1488 	.db	3
      004643 00 00 00 AC           1489 	.dw	0,(_P3M1)
      004647 50 33 4D 31           1490 	.ascii "P3M1"
      00464B 00                    1491 	.db	0
      00464C 01                    1492 	.db	1
      00464D 00 00 01 17           1493 	.dw	0,279
      004651 07                    1494 	.uleb128	7
      004652 05                    1495 	.db	5
      004653 03                    1496 	.db	3
      004654 00 00 00 AC           1497 	.dw	0,(_P3S)
      004658 50 33 53              1498 	.ascii "P3S"
      00465B 00                    1499 	.db	0
      00465C 01                    1500 	.db	1
      00465D 00 00 01 17           1501 	.dw	0,279
      004661 07                    1502 	.uleb128	7
      004662 05                    1503 	.db	5
      004663 03                    1504 	.db	3
      004664 00 00 00 AD           1505 	.dw	0,(_P3M2)
      004668 50 33 4D 32           1506 	.ascii "P3M2"
      00466C 00                    1507 	.db	0
      00466D 01                    1508 	.db	1
      00466E 00 00 01 17           1509 	.dw	0,279
      004672 07                    1510 	.uleb128	7
      004673 05                    1511 	.db	5
      004674 03                    1512 	.db	3
      004675 00 00 00 AD           1513 	.dw	0,(_P3SR)
      004679 50 33 53 52           1514 	.ascii "P3SR"
      00467D 00                    1515 	.db	0
      00467E 01                    1516 	.db	1
      00467F 00 00 01 17           1517 	.dw	0,279
      004683 07                    1518 	.uleb128	7
      004684 05                    1519 	.db	5
      004685 03                    1520 	.db	3
      004686 00 00 00 AE           1521 	.dw	0,(_IAPFD)
      00468A 49 41 50 46 44        1522 	.ascii "IAPFD"
      00468F 00                    1523 	.db	0
      004690 01                    1524 	.db	1
      004691 00 00 01 17           1525 	.dw	0,279
      004695 07                    1526 	.uleb128	7
      004696 05                    1527 	.db	5
      004697 03                    1528 	.db	3
      004698 00 00 00 AF           1529 	.dw	0,(_IAPCN)
      00469C 49 41 50 43 4E        1530 	.ascii "IAPCN"
      0046A1 00                    1531 	.db	0
      0046A2 01                    1532 	.db	1
      0046A3 00 00 01 17           1533 	.dw	0,279
      0046A7 07                    1534 	.uleb128	7
      0046A8 05                    1535 	.db	5
      0046A9 03                    1536 	.db	3
      0046AA 00 00 00 B0           1537 	.dw	0,(_P3)
      0046AE 50 33                 1538 	.ascii "P3"
      0046B0 00                    1539 	.db	0
      0046B1 01                    1540 	.db	1
      0046B2 00 00 01 17           1541 	.dw	0,279
      0046B6 07                    1542 	.uleb128	7
      0046B7 05                    1543 	.db	5
      0046B8 03                    1544 	.db	3
      0046B9 00 00 00 B1           1545 	.dw	0,(_P0M1)
      0046BD 50 30 4D 31           1546 	.ascii "P0M1"
      0046C1 00                    1547 	.db	0
      0046C2 01                    1548 	.db	1
      0046C3 00 00 01 17           1549 	.dw	0,279
      0046C7 07                    1550 	.uleb128	7
      0046C8 05                    1551 	.db	5
      0046C9 03                    1552 	.db	3
      0046CA 00 00 00 B1           1553 	.dw	0,(_P0S)
      0046CE 50 30 53              1554 	.ascii "P0S"
      0046D1 00                    1555 	.db	0
      0046D2 01                    1556 	.db	1
      0046D3 00 00 01 17           1557 	.dw	0,279
      0046D7 07                    1558 	.uleb128	7
      0046D8 05                    1559 	.db	5
      0046D9 03                    1560 	.db	3
      0046DA 00 00 00 B2           1561 	.dw	0,(_P0M2)
      0046DE 50 30 4D 32           1562 	.ascii "P0M2"
      0046E2 00                    1563 	.db	0
      0046E3 01                    1564 	.db	1
      0046E4 00 00 01 17           1565 	.dw	0,279
      0046E8 07                    1566 	.uleb128	7
      0046E9 05                    1567 	.db	5
      0046EA 03                    1568 	.db	3
      0046EB 00 00 00 B2           1569 	.dw	0,(_P0SR)
      0046EF 50 30 53 52           1570 	.ascii "P0SR"
      0046F3 00                    1571 	.db	0
      0046F4 01                    1572 	.db	1
      0046F5 00 00 01 17           1573 	.dw	0,279
      0046F9 07                    1574 	.uleb128	7
      0046FA 05                    1575 	.db	5
      0046FB 03                    1576 	.db	3
      0046FC 00 00 00 B3           1577 	.dw	0,(_P1M1)
      004700 50 31 4D 31           1578 	.ascii "P1M1"
      004704 00                    1579 	.db	0
      004705 01                    1580 	.db	1
      004706 00 00 01 17           1581 	.dw	0,279
      00470A 07                    1582 	.uleb128	7
      00470B 05                    1583 	.db	5
      00470C 03                    1584 	.db	3
      00470D 00 00 00 B3           1585 	.dw	0,(_P1S)
      004711 50 31 53              1586 	.ascii "P1S"
      004714 00                    1587 	.db	0
      004715 01                    1588 	.db	1
      004716 00 00 01 17           1589 	.dw	0,279
      00471A 07                    1590 	.uleb128	7
      00471B 05                    1591 	.db	5
      00471C 03                    1592 	.db	3
      00471D 00 00 00 B4           1593 	.dw	0,(_P1M2)
      004721 50 31 4D 32           1594 	.ascii "P1M2"
      004725 00                    1595 	.db	0
      004726 01                    1596 	.db	1
      004727 00 00 01 17           1597 	.dw	0,279
      00472B 07                    1598 	.uleb128	7
      00472C 05                    1599 	.db	5
      00472D 03                    1600 	.db	3
      00472E 00 00 00 B4           1601 	.dw	0,(_P1SR)
      004732 50 31 53 52           1602 	.ascii "P1SR"
      004736 00                    1603 	.db	0
      004737 01                    1604 	.db	1
      004738 00 00 01 17           1605 	.dw	0,279
      00473C 07                    1606 	.uleb128	7
      00473D 05                    1607 	.db	5
      00473E 03                    1608 	.db	3
      00473F 00 00 00 B5           1609 	.dw	0,(_P2S)
      004743 50 32 53              1610 	.ascii "P2S"
      004746 00                    1611 	.db	0
      004747 01                    1612 	.db	1
      004748 00 00 01 17           1613 	.dw	0,279
      00474C 07                    1614 	.uleb128	7
      00474D 05                    1615 	.db	5
      00474E 03                    1616 	.db	3
      00474F 00 00 00 B7           1617 	.dw	0,(_IPH)
      004753 49 50 48              1618 	.ascii "IPH"
      004756 00                    1619 	.db	0
      004757 01                    1620 	.db	1
      004758 00 00 01 17           1621 	.dw	0,279
      00475C 07                    1622 	.uleb128	7
      00475D 05                    1623 	.db	5
      00475E 03                    1624 	.db	3
      00475F 00 00 00 B7           1625 	.dw	0,(_PWMINTC)
      004763 50 57 4D 49 4E 54 43  1626 	.ascii "PWMINTC"
      00476A 00                    1627 	.db	0
      00476B 01                    1628 	.db	1
      00476C 00 00 01 17           1629 	.dw	0,279
      004770 07                    1630 	.uleb128	7
      004771 05                    1631 	.db	5
      004772 03                    1632 	.db	3
      004773 00 00 00 B8           1633 	.dw	0,(_IP)
      004777 49 50                 1634 	.ascii "IP"
      004779 00                    1635 	.db	0
      00477A 01                    1636 	.db	1
      00477B 00 00 01 17           1637 	.dw	0,279
      00477F 07                    1638 	.uleb128	7
      004780 05                    1639 	.db	5
      004781 03                    1640 	.db	3
      004782 00 00 00 B9           1641 	.dw	0,(_SADEN)
      004786 53 41 44 45 4E        1642 	.ascii "SADEN"
      00478B 00                    1643 	.db	0
      00478C 01                    1644 	.db	1
      00478D 00 00 01 17           1645 	.dw	0,279
      004791 07                    1646 	.uleb128	7
      004792 05                    1647 	.db	5
      004793 03                    1648 	.db	3
      004794 00 00 00 BA           1649 	.dw	0,(_SADEN_1)
      004798 53 41 44 45 4E 5F 31  1650 	.ascii "SADEN_1"
      00479F 00                    1651 	.db	0
      0047A0 01                    1652 	.db	1
      0047A1 00 00 01 17           1653 	.dw	0,279
      0047A5 07                    1654 	.uleb128	7
      0047A6 05                    1655 	.db	5
      0047A7 03                    1656 	.db	3
      0047A8 00 00 00 BB           1657 	.dw	0,(_SADDR_1)
      0047AC 53 41 44 44 52 5F 31  1658 	.ascii "SADDR_1"
      0047B3 00                    1659 	.db	0
      0047B4 01                    1660 	.db	1
      0047B5 00 00 01 17           1661 	.dw	0,279
      0047B9 07                    1662 	.uleb128	7
      0047BA 05                    1663 	.db	5
      0047BB 03                    1664 	.db	3
      0047BC 00 00 00 BC           1665 	.dw	0,(_I2DAT)
      0047C0 49 32 44 41 54        1666 	.ascii "I2DAT"
      0047C5 00                    1667 	.db	0
      0047C6 01                    1668 	.db	1
      0047C7 00 00 01 17           1669 	.dw	0,279
      0047CB 07                    1670 	.uleb128	7
      0047CC 05                    1671 	.db	5
      0047CD 03                    1672 	.db	3
      0047CE 00 00 00 BD           1673 	.dw	0,(_I2STAT)
      0047D2 49 32 53 54 41 54     1674 	.ascii "I2STAT"
      0047D8 00                    1675 	.db	0
      0047D9 01                    1676 	.db	1
      0047DA 00 00 01 17           1677 	.dw	0,279
      0047DE 07                    1678 	.uleb128	7
      0047DF 05                    1679 	.db	5
      0047E0 03                    1680 	.db	3
      0047E1 00 00 00 BE           1681 	.dw	0,(_I2CLK)
      0047E5 49 32 43 4C 4B        1682 	.ascii "I2CLK"
      0047EA 00                    1683 	.db	0
      0047EB 01                    1684 	.db	1
      0047EC 00 00 01 17           1685 	.dw	0,279
      0047F0 07                    1686 	.uleb128	7
      0047F1 05                    1687 	.db	5
      0047F2 03                    1688 	.db	3
      0047F3 00 00 00 BF           1689 	.dw	0,(_I2TOC)
      0047F7 49 32 54 4F 43        1690 	.ascii "I2TOC"
      0047FC 00                    1691 	.db	0
      0047FD 01                    1692 	.db	1
      0047FE 00 00 01 17           1693 	.dw	0,279
      004802 07                    1694 	.uleb128	7
      004803 05                    1695 	.db	5
      004804 03                    1696 	.db	3
      004805 00 00 00 C0           1697 	.dw	0,(_I2CON)
      004809 49 32 43 4F 4E        1698 	.ascii "I2CON"
      00480E 00                    1699 	.db	0
      00480F 01                    1700 	.db	1
      004810 00 00 01 17           1701 	.dw	0,279
      004814 07                    1702 	.uleb128	7
      004815 05                    1703 	.db	5
      004816 03                    1704 	.db	3
      004817 00 00 00 C1           1705 	.dw	0,(_I2ADDR)
      00481B 49 32 41 44 44 52     1706 	.ascii "I2ADDR"
      004821 00                    1707 	.db	0
      004822 01                    1708 	.db	1
      004823 00 00 01 17           1709 	.dw	0,279
      004827 07                    1710 	.uleb128	7
      004828 05                    1711 	.db	5
      004829 03                    1712 	.db	3
      00482A 00 00 00 C2           1713 	.dw	0,(_ADCRL)
      00482E 41 44 43 52 4C        1714 	.ascii "ADCRL"
      004833 00                    1715 	.db	0
      004834 01                    1716 	.db	1
      004835 00 00 01 17           1717 	.dw	0,279
      004839 07                    1718 	.uleb128	7
      00483A 05                    1719 	.db	5
      00483B 03                    1720 	.db	3
      00483C 00 00 00 C3           1721 	.dw	0,(_ADCRH)
      004840 41 44 43 52 48        1722 	.ascii "ADCRH"
      004845 00                    1723 	.db	0
      004846 01                    1724 	.db	1
      004847 00 00 01 17           1725 	.dw	0,279
      00484B 07                    1726 	.uleb128	7
      00484C 05                    1727 	.db	5
      00484D 03                    1728 	.db	3
      00484E 00 00 00 C4           1729 	.dw	0,(_T3CON)
      004852 54 33 43 4F 4E        1730 	.ascii "T3CON"
      004857 00                    1731 	.db	0
      004858 01                    1732 	.db	1
      004859 00 00 01 17           1733 	.dw	0,279
      00485D 07                    1734 	.uleb128	7
      00485E 05                    1735 	.db	5
      00485F 03                    1736 	.db	3
      004860 00 00 00 C4           1737 	.dw	0,(_PWM4H)
      004864 50 57 4D 34 48        1738 	.ascii "PWM4H"
      004869 00                    1739 	.db	0
      00486A 01                    1740 	.db	1
      00486B 00 00 01 17           1741 	.dw	0,279
      00486F 07                    1742 	.uleb128	7
      004870 05                    1743 	.db	5
      004871 03                    1744 	.db	3
      004872 00 00 00 C5           1745 	.dw	0,(_RL3)
      004876 52 4C 33              1746 	.ascii "RL3"
      004879 00                    1747 	.db	0
      00487A 01                    1748 	.db	1
      00487B 00 00 01 17           1749 	.dw	0,279
      00487F 07                    1750 	.uleb128	7
      004880 05                    1751 	.db	5
      004881 03                    1752 	.db	3
      004882 00 00 00 C5           1753 	.dw	0,(_PWM5H)
      004886 50 57 4D 35 48        1754 	.ascii "PWM5H"
      00488B 00                    1755 	.db	0
      00488C 01                    1756 	.db	1
      00488D 00 00 01 17           1757 	.dw	0,279
      004891 07                    1758 	.uleb128	7
      004892 05                    1759 	.db	5
      004893 03                    1760 	.db	3
      004894 00 00 00 C6           1761 	.dw	0,(_RH3)
      004898 52 48 33              1762 	.ascii "RH3"
      00489B 00                    1763 	.db	0
      00489C 01                    1764 	.db	1
      00489D 00 00 01 17           1765 	.dw	0,279
      0048A1 07                    1766 	.uleb128	7
      0048A2 05                    1767 	.db	5
      0048A3 03                    1768 	.db	3
      0048A4 00 00 00 C6           1769 	.dw	0,(_PIOCON1)
      0048A8 50 49 4F 43 4F 4E 31  1770 	.ascii "PIOCON1"
      0048AF 00                    1771 	.db	0
      0048B0 01                    1772 	.db	1
      0048B1 00 00 01 17           1773 	.dw	0,279
      0048B5 07                    1774 	.uleb128	7
      0048B6 05                    1775 	.db	5
      0048B7 03                    1776 	.db	3
      0048B8 00 00 00 C7           1777 	.dw	0,(_TA)
      0048BC 54 41                 1778 	.ascii "TA"
      0048BE 00                    1779 	.db	0
      0048BF 01                    1780 	.db	1
      0048C0 00 00 01 17           1781 	.dw	0,279
      0048C4 07                    1782 	.uleb128	7
      0048C5 05                    1783 	.db	5
      0048C6 03                    1784 	.db	3
      0048C7 00 00 00 C8           1785 	.dw	0,(_T2CON)
      0048CB 54 32 43 4F 4E        1786 	.ascii "T2CON"
      0048D0 00                    1787 	.db	0
      0048D1 01                    1788 	.db	1
      0048D2 00 00 01 17           1789 	.dw	0,279
      0048D6 07                    1790 	.uleb128	7
      0048D7 05                    1791 	.db	5
      0048D8 03                    1792 	.db	3
      0048D9 00 00 00 C9           1793 	.dw	0,(_T2MOD)
      0048DD 54 32 4D 4F 44        1794 	.ascii "T2MOD"
      0048E2 00                    1795 	.db	0
      0048E3 01                    1796 	.db	1
      0048E4 00 00 01 17           1797 	.dw	0,279
      0048E8 07                    1798 	.uleb128	7
      0048E9 05                    1799 	.db	5
      0048EA 03                    1800 	.db	3
      0048EB 00 00 00 CA           1801 	.dw	0,(_RCMP2L)
      0048EF 52 43 4D 50 32 4C     1802 	.ascii "RCMP2L"
      0048F5 00                    1803 	.db	0
      0048F6 01                    1804 	.db	1
      0048F7 00 00 01 17           1805 	.dw	0,279
      0048FB 07                    1806 	.uleb128	7
      0048FC 05                    1807 	.db	5
      0048FD 03                    1808 	.db	3
      0048FE 00 00 00 CB           1809 	.dw	0,(_RCMP2H)
      004902 52 43 4D 50 32 48     1810 	.ascii "RCMP2H"
      004908 00                    1811 	.db	0
      004909 01                    1812 	.db	1
      00490A 00 00 01 17           1813 	.dw	0,279
      00490E 07                    1814 	.uleb128	7
      00490F 05                    1815 	.db	5
      004910 03                    1816 	.db	3
      004911 00 00 00 CC           1817 	.dw	0,(_TL2)
      004915 54 4C 32              1818 	.ascii "TL2"
      004918 00                    1819 	.db	0
      004919 01                    1820 	.db	1
      00491A 00 00 01 17           1821 	.dw	0,279
      00491E 07                    1822 	.uleb128	7
      00491F 05                    1823 	.db	5
      004920 03                    1824 	.db	3
      004921 00 00 00 CC           1825 	.dw	0,(_PWM4L)
      004925 50 57 4D 34 4C        1826 	.ascii "PWM4L"
      00492A 00                    1827 	.db	0
      00492B 01                    1828 	.db	1
      00492C 00 00 01 17           1829 	.dw	0,279
      004930 07                    1830 	.uleb128	7
      004931 05                    1831 	.db	5
      004932 03                    1832 	.db	3
      004933 00 00 00 CD           1833 	.dw	0,(_TH2)
      004937 54 48 32              1834 	.ascii "TH2"
      00493A 00                    1835 	.db	0
      00493B 01                    1836 	.db	1
      00493C 00 00 01 17           1837 	.dw	0,279
      004940 07                    1838 	.uleb128	7
      004941 05                    1839 	.db	5
      004942 03                    1840 	.db	3
      004943 00 00 00 CD           1841 	.dw	0,(_PWM5L)
      004947 50 57 4D 35 4C        1842 	.ascii "PWM5L"
      00494C 00                    1843 	.db	0
      00494D 01                    1844 	.db	1
      00494E 00 00 01 17           1845 	.dw	0,279
      004952 07                    1846 	.uleb128	7
      004953 05                    1847 	.db	5
      004954 03                    1848 	.db	3
      004955 00 00 00 CE           1849 	.dw	0,(_ADCMPL)
      004959 41 44 43 4D 50 4C     1850 	.ascii "ADCMPL"
      00495F 00                    1851 	.db	0
      004960 01                    1852 	.db	1
      004961 00 00 01 17           1853 	.dw	0,279
      004965 07                    1854 	.uleb128	7
      004966 05                    1855 	.db	5
      004967 03                    1856 	.db	3
      004968 00 00 00 CF           1857 	.dw	0,(_ADCMPH)
      00496C 41 44 43 4D 50 48     1858 	.ascii "ADCMPH"
      004972 00                    1859 	.db	0
      004973 01                    1860 	.db	1
      004974 00 00 01 17           1861 	.dw	0,279
      004978 07                    1862 	.uleb128	7
      004979 05                    1863 	.db	5
      00497A 03                    1864 	.db	3
      00497B 00 00 00 D0           1865 	.dw	0,(_PSW)
      00497F 50 53 57              1866 	.ascii "PSW"
      004982 00                    1867 	.db	0
      004983 01                    1868 	.db	1
      004984 00 00 01 17           1869 	.dw	0,279
      004988 07                    1870 	.uleb128	7
      004989 05                    1871 	.db	5
      00498A 03                    1872 	.db	3
      00498B 00 00 00 D1           1873 	.dw	0,(_PWMPH)
      00498F 50 57 4D 50 48        1874 	.ascii "PWMPH"
      004994 00                    1875 	.db	0
      004995 01                    1876 	.db	1
      004996 00 00 01 17           1877 	.dw	0,279
      00499A 07                    1878 	.uleb128	7
      00499B 05                    1879 	.db	5
      00499C 03                    1880 	.db	3
      00499D 00 00 00 D2           1881 	.dw	0,(_PWM0H)
      0049A1 50 57 4D 30 48        1882 	.ascii "PWM0H"
      0049A6 00                    1883 	.db	0
      0049A7 01                    1884 	.db	1
      0049A8 00 00 01 17           1885 	.dw	0,279
      0049AC 07                    1886 	.uleb128	7
      0049AD 05                    1887 	.db	5
      0049AE 03                    1888 	.db	3
      0049AF 00 00 00 D3           1889 	.dw	0,(_PWM1H)
      0049B3 50 57 4D 31 48        1890 	.ascii "PWM1H"
      0049B8 00                    1891 	.db	0
      0049B9 01                    1892 	.db	1
      0049BA 00 00 01 17           1893 	.dw	0,279
      0049BE 07                    1894 	.uleb128	7
      0049BF 05                    1895 	.db	5
      0049C0 03                    1896 	.db	3
      0049C1 00 00 00 D4           1897 	.dw	0,(_PWM2H)
      0049C5 50 57 4D 32 48        1898 	.ascii "PWM2H"
      0049CA 00                    1899 	.db	0
      0049CB 01                    1900 	.db	1
      0049CC 00 00 01 17           1901 	.dw	0,279
      0049D0 07                    1902 	.uleb128	7
      0049D1 05                    1903 	.db	5
      0049D2 03                    1904 	.db	3
      0049D3 00 00 00 D5           1905 	.dw	0,(_PWM3H)
      0049D7 50 57 4D 33 48        1906 	.ascii "PWM3H"
      0049DC 00                    1907 	.db	0
      0049DD 01                    1908 	.db	1
      0049DE 00 00 01 17           1909 	.dw	0,279
      0049E2 07                    1910 	.uleb128	7
      0049E3 05                    1911 	.db	5
      0049E4 03                    1912 	.db	3
      0049E5 00 00 00 D6           1913 	.dw	0,(_PNP)
      0049E9 50 4E 50              1914 	.ascii "PNP"
      0049EC 00                    1915 	.db	0
      0049ED 01                    1916 	.db	1
      0049EE 00 00 01 17           1917 	.dw	0,279
      0049F2 07                    1918 	.uleb128	7
      0049F3 05                    1919 	.db	5
      0049F4 03                    1920 	.db	3
      0049F5 00 00 00 D7           1921 	.dw	0,(_FBD)
      0049F9 46 42 44              1922 	.ascii "FBD"
      0049FC 00                    1923 	.db	0
      0049FD 01                    1924 	.db	1
      0049FE 00 00 01 17           1925 	.dw	0,279
      004A02 07                    1926 	.uleb128	7
      004A03 05                    1927 	.db	5
      004A04 03                    1928 	.db	3
      004A05 00 00 00 D8           1929 	.dw	0,(_PWMCON0)
      004A09 50 57 4D 43 4F 4E 30  1930 	.ascii "PWMCON0"
      004A10 00                    1931 	.db	0
      004A11 01                    1932 	.db	1
      004A12 00 00 01 17           1933 	.dw	0,279
      004A16 07                    1934 	.uleb128	7
      004A17 05                    1935 	.db	5
      004A18 03                    1936 	.db	3
      004A19 00 00 00 D9           1937 	.dw	0,(_PWMPL)
      004A1D 50 57 4D 50 4C        1938 	.ascii "PWMPL"
      004A22 00                    1939 	.db	0
      004A23 01                    1940 	.db	1
      004A24 00 00 01 17           1941 	.dw	0,279
      004A28 07                    1942 	.uleb128	7
      004A29 05                    1943 	.db	5
      004A2A 03                    1944 	.db	3
      004A2B 00 00 00 DA           1945 	.dw	0,(_PWM0L)
      004A2F 50 57 4D 30 4C        1946 	.ascii "PWM0L"
      004A34 00                    1947 	.db	0
      004A35 01                    1948 	.db	1
      004A36 00 00 01 17           1949 	.dw	0,279
      004A3A 07                    1950 	.uleb128	7
      004A3B 05                    1951 	.db	5
      004A3C 03                    1952 	.db	3
      004A3D 00 00 00 DB           1953 	.dw	0,(_PWM1L)
      004A41 50 57 4D 31 4C        1954 	.ascii "PWM1L"
      004A46 00                    1955 	.db	0
      004A47 01                    1956 	.db	1
      004A48 00 00 01 17           1957 	.dw	0,279
      004A4C 07                    1958 	.uleb128	7
      004A4D 05                    1959 	.db	5
      004A4E 03                    1960 	.db	3
      004A4F 00 00 00 DC           1961 	.dw	0,(_PWM2L)
      004A53 50 57 4D 32 4C        1962 	.ascii "PWM2L"
      004A58 00                    1963 	.db	0
      004A59 01                    1964 	.db	1
      004A5A 00 00 01 17           1965 	.dw	0,279
      004A5E 07                    1966 	.uleb128	7
      004A5F 05                    1967 	.db	5
      004A60 03                    1968 	.db	3
      004A61 00 00 00 DD           1969 	.dw	0,(_PWM3L)
      004A65 50 57 4D 33 4C        1970 	.ascii "PWM3L"
      004A6A 00                    1971 	.db	0
      004A6B 01                    1972 	.db	1
      004A6C 00 00 01 17           1973 	.dw	0,279
      004A70 07                    1974 	.uleb128	7
      004A71 05                    1975 	.db	5
      004A72 03                    1976 	.db	3
      004A73 00 00 00 DE           1977 	.dw	0,(_PIOCON0)
      004A77 50 49 4F 43 4F 4E 30  1978 	.ascii "PIOCON0"
      004A7E 00                    1979 	.db	0
      004A7F 01                    1980 	.db	1
      004A80 00 00 01 17           1981 	.dw	0,279
      004A84 07                    1982 	.uleb128	7
      004A85 05                    1983 	.db	5
      004A86 03                    1984 	.db	3
      004A87 00 00 00 DF           1985 	.dw	0,(_PWMCON1)
      004A8B 50 57 4D 43 4F 4E 31  1986 	.ascii "PWMCON1"
      004A92 00                    1987 	.db	0
      004A93 01                    1988 	.db	1
      004A94 00 00 01 17           1989 	.dw	0,279
      004A98 07                    1990 	.uleb128	7
      004A99 05                    1991 	.db	5
      004A9A 03                    1992 	.db	3
      004A9B 00 00 00 E0           1993 	.dw	0,(_ACC)
      004A9F 41 43 43              1994 	.ascii "ACC"
      004AA2 00                    1995 	.db	0
      004AA3 01                    1996 	.db	1
      004AA4 00 00 01 17           1997 	.dw	0,279
      004AA8 07                    1998 	.uleb128	7
      004AA9 05                    1999 	.db	5
      004AAA 03                    2000 	.db	3
      004AAB 00 00 00 E1           2001 	.dw	0,(_ADCCON1)
      004AAF 41 44 43 43 4F 4E 31  2002 	.ascii "ADCCON1"
      004AB6 00                    2003 	.db	0
      004AB7 01                    2004 	.db	1
      004AB8 00 00 01 17           2005 	.dw	0,279
      004ABC 07                    2006 	.uleb128	7
      004ABD 05                    2007 	.db	5
      004ABE 03                    2008 	.db	3
      004ABF 00 00 00 E2           2009 	.dw	0,(_ADCCON2)
      004AC3 41 44 43 43 4F 4E 32  2010 	.ascii "ADCCON2"
      004ACA 00                    2011 	.db	0
      004ACB 01                    2012 	.db	1
      004ACC 00 00 01 17           2013 	.dw	0,279
      004AD0 07                    2014 	.uleb128	7
      004AD1 05                    2015 	.db	5
      004AD2 03                    2016 	.db	3
      004AD3 00 00 00 E3           2017 	.dw	0,(_ADCDLY)
      004AD7 41 44 43 44 4C 59     2018 	.ascii "ADCDLY"
      004ADD 00                    2019 	.db	0
      004ADE 01                    2020 	.db	1
      004ADF 00 00 01 17           2021 	.dw	0,279
      004AE3 07                    2022 	.uleb128	7
      004AE4 05                    2023 	.db	5
      004AE5 03                    2024 	.db	3
      004AE6 00 00 00 E4           2025 	.dw	0,(_C0L)
      004AEA 43 30 4C              2026 	.ascii "C0L"
      004AED 00                    2027 	.db	0
      004AEE 01                    2028 	.db	1
      004AEF 00 00 01 17           2029 	.dw	0,279
      004AF3 07                    2030 	.uleb128	7
      004AF4 05                    2031 	.db	5
      004AF5 03                    2032 	.db	3
      004AF6 00 00 00 E5           2033 	.dw	0,(_C0H)
      004AFA 43 30 48              2034 	.ascii "C0H"
      004AFD 00                    2035 	.db	0
      004AFE 01                    2036 	.db	1
      004AFF 00 00 01 17           2037 	.dw	0,279
      004B03 07                    2038 	.uleb128	7
      004B04 05                    2039 	.db	5
      004B05 03                    2040 	.db	3
      004B06 00 00 00 E6           2041 	.dw	0,(_C1L)
      004B0A 43 31 4C              2042 	.ascii "C1L"
      004B0D 00                    2043 	.db	0
      004B0E 01                    2044 	.db	1
      004B0F 00 00 01 17           2045 	.dw	0,279
      004B13 07                    2046 	.uleb128	7
      004B14 05                    2047 	.db	5
      004B15 03                    2048 	.db	3
      004B16 00 00 00 E7           2049 	.dw	0,(_C1H)
      004B1A 43 31 48              2050 	.ascii "C1H"
      004B1D 00                    2051 	.db	0
      004B1E 01                    2052 	.db	1
      004B1F 00 00 01 17           2053 	.dw	0,279
      004B23 07                    2054 	.uleb128	7
      004B24 05                    2055 	.db	5
      004B25 03                    2056 	.db	3
      004B26 00 00 00 E8           2057 	.dw	0,(_ADCCON0)
      004B2A 41 44 43 43 4F 4E 30  2058 	.ascii "ADCCON0"
      004B31 00                    2059 	.db	0
      004B32 01                    2060 	.db	1
      004B33 00 00 01 17           2061 	.dw	0,279
      004B37 07                    2062 	.uleb128	7
      004B38 05                    2063 	.db	5
      004B39 03                    2064 	.db	3
      004B3A 00 00 00 E9           2065 	.dw	0,(_PICON)
      004B3E 50 49 43 4F 4E        2066 	.ascii "PICON"
      004B43 00                    2067 	.db	0
      004B44 01                    2068 	.db	1
      004B45 00 00 01 17           2069 	.dw	0,279
      004B49 07                    2070 	.uleb128	7
      004B4A 05                    2071 	.db	5
      004B4B 03                    2072 	.db	3
      004B4C 00 00 00 EA           2073 	.dw	0,(_PINEN)
      004B50 50 49 4E 45 4E        2074 	.ascii "PINEN"
      004B55 00                    2075 	.db	0
      004B56 01                    2076 	.db	1
      004B57 00 00 01 17           2077 	.dw	0,279
      004B5B 07                    2078 	.uleb128	7
      004B5C 05                    2079 	.db	5
      004B5D 03                    2080 	.db	3
      004B5E 00 00 00 EB           2081 	.dw	0,(_PIPEN)
      004B62 50 49 50 45 4E        2082 	.ascii "PIPEN"
      004B67 00                    2083 	.db	0
      004B68 01                    2084 	.db	1
      004B69 00 00 01 17           2085 	.dw	0,279
      004B6D 07                    2086 	.uleb128	7
      004B6E 05                    2087 	.db	5
      004B6F 03                    2088 	.db	3
      004B70 00 00 00 EC           2089 	.dw	0,(_PIF)
      004B74 50 49 46              2090 	.ascii "PIF"
      004B77 00                    2091 	.db	0
      004B78 01                    2092 	.db	1
      004B79 00 00 01 17           2093 	.dw	0,279
      004B7D 07                    2094 	.uleb128	7
      004B7E 05                    2095 	.db	5
      004B7F 03                    2096 	.db	3
      004B80 00 00 00 ED           2097 	.dw	0,(_C2L)
      004B84 43 32 4C              2098 	.ascii "C2L"
      004B87 00                    2099 	.db	0
      004B88 01                    2100 	.db	1
      004B89 00 00 01 17           2101 	.dw	0,279
      004B8D 07                    2102 	.uleb128	7
      004B8E 05                    2103 	.db	5
      004B8F 03                    2104 	.db	3
      004B90 00 00 00 EE           2105 	.dw	0,(_C2H)
      004B94 43 32 48              2106 	.ascii "C2H"
      004B97 00                    2107 	.db	0
      004B98 01                    2108 	.db	1
      004B99 00 00 01 17           2109 	.dw	0,279
      004B9D 07                    2110 	.uleb128	7
      004B9E 05                    2111 	.db	5
      004B9F 03                    2112 	.db	3
      004BA0 00 00 00 EF           2113 	.dw	0,(_EIP)
      004BA4 45 49 50              2114 	.ascii "EIP"
      004BA7 00                    2115 	.db	0
      004BA8 01                    2116 	.db	1
      004BA9 00 00 01 17           2117 	.dw	0,279
      004BAD 07                    2118 	.uleb128	7
      004BAE 05                    2119 	.db	5
      004BAF 03                    2120 	.db	3
      004BB0 00 00 00 F0           2121 	.dw	0,(_B)
      004BB4 42                    2122 	.ascii "B"
      004BB5 00                    2123 	.db	0
      004BB6 01                    2124 	.db	1
      004BB7 00 00 01 17           2125 	.dw	0,279
      004BBB 07                    2126 	.uleb128	7
      004BBC 05                    2127 	.db	5
      004BBD 03                    2128 	.db	3
      004BBE 00 00 00 F1           2129 	.dw	0,(_CAPCON3)
      004BC2 43 41 50 43 4F 4E 33  2130 	.ascii "CAPCON3"
      004BC9 00                    2131 	.db	0
      004BCA 01                    2132 	.db	1
      004BCB 00 00 01 17           2133 	.dw	0,279
      004BCF 07                    2134 	.uleb128	7
      004BD0 05                    2135 	.db	5
      004BD1 03                    2136 	.db	3
      004BD2 00 00 00 F2           2137 	.dw	0,(_CAPCON4)
      004BD6 43 41 50 43 4F 4E 34  2138 	.ascii "CAPCON4"
      004BDD 00                    2139 	.db	0
      004BDE 01                    2140 	.db	1
      004BDF 00 00 01 17           2141 	.dw	0,279
      004BE3 07                    2142 	.uleb128	7
      004BE4 05                    2143 	.db	5
      004BE5 03                    2144 	.db	3
      004BE6 00 00 00 F3           2145 	.dw	0,(_SPCR)
      004BEA 53 50 43 52           2146 	.ascii "SPCR"
      004BEE 00                    2147 	.db	0
      004BEF 01                    2148 	.db	1
      004BF0 00 00 01 17           2149 	.dw	0,279
      004BF4 07                    2150 	.uleb128	7
      004BF5 05                    2151 	.db	5
      004BF6 03                    2152 	.db	3
      004BF7 00 00 00 F3           2153 	.dw	0,(_SPCR2)
      004BFB 53 50 43 52 32        2154 	.ascii "SPCR2"
      004C00 00                    2155 	.db	0
      004C01 01                    2156 	.db	1
      004C02 00 00 01 17           2157 	.dw	0,279
      004C06 07                    2158 	.uleb128	7
      004C07 05                    2159 	.db	5
      004C08 03                    2160 	.db	3
      004C09 00 00 00 F4           2161 	.dw	0,(_SPSR)
      004C0D 53 50 53 52           2162 	.ascii "SPSR"
      004C11 00                    2163 	.db	0
      004C12 01                    2164 	.db	1
      004C13 00 00 01 17           2165 	.dw	0,279
      004C17 07                    2166 	.uleb128	7
      004C18 05                    2167 	.db	5
      004C19 03                    2168 	.db	3
      004C1A 00 00 00 F5           2169 	.dw	0,(_SPDR)
      004C1E 53 50 44 52           2170 	.ascii "SPDR"
      004C22 00                    2171 	.db	0
      004C23 01                    2172 	.db	1
      004C24 00 00 01 17           2173 	.dw	0,279
      004C28 07                    2174 	.uleb128	7
      004C29 05                    2175 	.db	5
      004C2A 03                    2176 	.db	3
      004C2B 00 00 00 F6           2177 	.dw	0,(_AINDIDS)
      004C2F 41 49 4E 44 49 44 53  2178 	.ascii "AINDIDS"
      004C36 00                    2179 	.db	0
      004C37 01                    2180 	.db	1
      004C38 00 00 01 17           2181 	.dw	0,279
      004C3C 07                    2182 	.uleb128	7
      004C3D 05                    2183 	.db	5
      004C3E 03                    2184 	.db	3
      004C3F 00 00 00 F7           2185 	.dw	0,(_EIPH)
      004C43 45 49 50 48           2186 	.ascii "EIPH"
      004C47 00                    2187 	.db	0
      004C48 01                    2188 	.db	1
      004C49 00 00 01 17           2189 	.dw	0,279
      004C4D 07                    2190 	.uleb128	7
      004C4E 05                    2191 	.db	5
      004C4F 03                    2192 	.db	3
      004C50 00 00 00 F8           2193 	.dw	0,(_SCON_1)
      004C54 53 43 4F 4E 5F 31     2194 	.ascii "SCON_1"
      004C5A 00                    2195 	.db	0
      004C5B 01                    2196 	.db	1
      004C5C 00 00 01 17           2197 	.dw	0,279
      004C60 07                    2198 	.uleb128	7
      004C61 05                    2199 	.db	5
      004C62 03                    2200 	.db	3
      004C63 00 00 00 F9           2201 	.dw	0,(_PDTEN)
      004C67 50 44 54 45 4E        2202 	.ascii "PDTEN"
      004C6C 00                    2203 	.db	0
      004C6D 01                    2204 	.db	1
      004C6E 00 00 01 17           2205 	.dw	0,279
      004C72 07                    2206 	.uleb128	7
      004C73 05                    2207 	.db	5
      004C74 03                    2208 	.db	3
      004C75 00 00 00 FA           2209 	.dw	0,(_PDTCNT)
      004C79 50 44 54 43 4E 54     2210 	.ascii "PDTCNT"
      004C7F 00                    2211 	.db	0
      004C80 01                    2212 	.db	1
      004C81 00 00 01 17           2213 	.dw	0,279
      004C85 07                    2214 	.uleb128	7
      004C86 05                    2215 	.db	5
      004C87 03                    2216 	.db	3
      004C88 00 00 00 FB           2217 	.dw	0,(_PMEN)
      004C8C 50 4D 45 4E           2218 	.ascii "PMEN"
      004C90 00                    2219 	.db	0
      004C91 01                    2220 	.db	1
      004C92 00 00 01 17           2221 	.dw	0,279
      004C96 07                    2222 	.uleb128	7
      004C97 05                    2223 	.db	5
      004C98 03                    2224 	.db	3
      004C99 00 00 00 FC           2225 	.dw	0,(_PMD)
      004C9D 50 4D 44              2226 	.ascii "PMD"
      004CA0 00                    2227 	.db	0
      004CA1 01                    2228 	.db	1
      004CA2 00 00 01 17           2229 	.dw	0,279
      004CA6 07                    2230 	.uleb128	7
      004CA7 05                    2231 	.db	5
      004CA8 03                    2232 	.db	3
      004CA9 00 00 00 FE           2233 	.dw	0,(_EIP1)
      004CAD 45 49 50 31           2234 	.ascii "EIP1"
      004CB1 00                    2235 	.db	0
      004CB2 01                    2236 	.db	1
      004CB3 00 00 01 17           2237 	.dw	0,279
      004CB7 07                    2238 	.uleb128	7
      004CB8 05                    2239 	.db	5
      004CB9 03                    2240 	.db	3
      004CBA 00 00 00 FF           2241 	.dw	0,(_EIPH1)
      004CBE 45 49 50 48 31        2242 	.ascii "EIPH1"
      004CC3 00                    2243 	.db	0
      004CC4 01                    2244 	.db	1
      004CC5 00 00 01 17           2245 	.dw	0,279
      004CC9 02                    2246 	.uleb128	2
      004CCA 5F 73 62 69 74        2247 	.ascii "_sbit"
      004CCF 00                    2248 	.db	0
      004CD0 01                    2249 	.db	1
      004CD1 08                    2250 	.db	8
      004CD2 06                    2251 	.uleb128	6
      004CD3 00 00 0A 72           2252 	.dw	0,2674
      004CD7 07                    2253 	.uleb128	7
      004CD8 05                    2254 	.db	5
      004CD9 03                    2255 	.db	3
      004CDA 00 00 00 FF           2256 	.dw	0,(_SM0_1)
      004CDE 53 4D 30 5F 31        2257 	.ascii "SM0_1"
      004CE3 00                    2258 	.db	0
      004CE4 01                    2259 	.db	1
      004CE5 00 00 0A 7B           2260 	.dw	0,2683
      004CE9 07                    2261 	.uleb128	7
      004CEA 05                    2262 	.db	5
      004CEB 03                    2263 	.db	3
      004CEC 00 00 00 FF           2264 	.dw	0,(_FE_1)
      004CF0 46 45 5F 31           2265 	.ascii "FE_1"
      004CF4 00                    2266 	.db	0
      004CF5 01                    2267 	.db	1
      004CF6 00 00 0A 7B           2268 	.dw	0,2683
      004CFA 07                    2269 	.uleb128	7
      004CFB 05                    2270 	.db	5
      004CFC 03                    2271 	.db	3
      004CFD 00 00 00 FE           2272 	.dw	0,(_SM1_1)
      004D01 53 4D 31 5F 31        2273 	.ascii "SM1_1"
      004D06 00                    2274 	.db	0
      004D07 01                    2275 	.db	1
      004D08 00 00 0A 7B           2276 	.dw	0,2683
      004D0C 07                    2277 	.uleb128	7
      004D0D 05                    2278 	.db	5
      004D0E 03                    2279 	.db	3
      004D0F 00 00 00 FD           2280 	.dw	0,(_SM2_1)
      004D13 53 4D 32 5F 31        2281 	.ascii "SM2_1"
      004D18 00                    2282 	.db	0
      004D19 01                    2283 	.db	1
      004D1A 00 00 0A 7B           2284 	.dw	0,2683
      004D1E 07                    2285 	.uleb128	7
      004D1F 05                    2286 	.db	5
      004D20 03                    2287 	.db	3
      004D21 00 00 00 FC           2288 	.dw	0,(_REN_1)
      004D25 52 45 4E 5F 31        2289 	.ascii "REN_1"
      004D2A 00                    2290 	.db	0
      004D2B 01                    2291 	.db	1
      004D2C 00 00 0A 7B           2292 	.dw	0,2683
      004D30 07                    2293 	.uleb128	7
      004D31 05                    2294 	.db	5
      004D32 03                    2295 	.db	3
      004D33 00 00 00 FB           2296 	.dw	0,(_TB8_1)
      004D37 54 42 38 5F 31        2297 	.ascii "TB8_1"
      004D3C 00                    2298 	.db	0
      004D3D 01                    2299 	.db	1
      004D3E 00 00 0A 7B           2300 	.dw	0,2683
      004D42 07                    2301 	.uleb128	7
      004D43 05                    2302 	.db	5
      004D44 03                    2303 	.db	3
      004D45 00 00 00 FA           2304 	.dw	0,(_RB8_1)
      004D49 52 42 38 5F 31        2305 	.ascii "RB8_1"
      004D4E 00                    2306 	.db	0
      004D4F 01                    2307 	.db	1
      004D50 00 00 0A 7B           2308 	.dw	0,2683
      004D54 07                    2309 	.uleb128	7
      004D55 05                    2310 	.db	5
      004D56 03                    2311 	.db	3
      004D57 00 00 00 F9           2312 	.dw	0,(_TI_1)
      004D5B 54 49 5F 31           2313 	.ascii "TI_1"
      004D5F 00                    2314 	.db	0
      004D60 01                    2315 	.db	1
      004D61 00 00 0A 7B           2316 	.dw	0,2683
      004D65 07                    2317 	.uleb128	7
      004D66 05                    2318 	.db	5
      004D67 03                    2319 	.db	3
      004D68 00 00 00 F8           2320 	.dw	0,(_RI_1)
      004D6C 52 49 5F 31           2321 	.ascii "RI_1"
      004D70 00                    2322 	.db	0
      004D71 01                    2323 	.db	1
      004D72 00 00 0A 7B           2324 	.dw	0,2683
      004D76 07                    2325 	.uleb128	7
      004D77 05                    2326 	.db	5
      004D78 03                    2327 	.db	3
      004D79 00 00 00 EF           2328 	.dw	0,(_ADCF)
      004D7D 41 44 43 46           2329 	.ascii "ADCF"
      004D81 00                    2330 	.db	0
      004D82 01                    2331 	.db	1
      004D83 00 00 0A 7B           2332 	.dw	0,2683
      004D87 07                    2333 	.uleb128	7
      004D88 05                    2334 	.db	5
      004D89 03                    2335 	.db	3
      004D8A 00 00 00 EE           2336 	.dw	0,(_ADCS)
      004D8E 41 44 43 53           2337 	.ascii "ADCS"
      004D92 00                    2338 	.db	0
      004D93 01                    2339 	.db	1
      004D94 00 00 0A 7B           2340 	.dw	0,2683
      004D98 07                    2341 	.uleb128	7
      004D99 05                    2342 	.db	5
      004D9A 03                    2343 	.db	3
      004D9B 00 00 00 ED           2344 	.dw	0,(_ETGSEL1)
      004D9F 45 54 47 53 45 4C 31  2345 	.ascii "ETGSEL1"
      004DA6 00                    2346 	.db	0
      004DA7 01                    2347 	.db	1
      004DA8 00 00 0A 7B           2348 	.dw	0,2683
      004DAC 07                    2349 	.uleb128	7
      004DAD 05                    2350 	.db	5
      004DAE 03                    2351 	.db	3
      004DAF 00 00 00 EC           2352 	.dw	0,(_ETGSEL0)
      004DB3 45 54 47 53 45 4C 30  2353 	.ascii "ETGSEL0"
      004DBA 00                    2354 	.db	0
      004DBB 01                    2355 	.db	1
      004DBC 00 00 0A 7B           2356 	.dw	0,2683
      004DC0 07                    2357 	.uleb128	7
      004DC1 05                    2358 	.db	5
      004DC2 03                    2359 	.db	3
      004DC3 00 00 00 EB           2360 	.dw	0,(_ADCHS3)
      004DC7 41 44 43 48 53 33     2361 	.ascii "ADCHS3"
      004DCD 00                    2362 	.db	0
      004DCE 01                    2363 	.db	1
      004DCF 00 00 0A 7B           2364 	.dw	0,2683
      004DD3 07                    2365 	.uleb128	7
      004DD4 05                    2366 	.db	5
      004DD5 03                    2367 	.db	3
      004DD6 00 00 00 EA           2368 	.dw	0,(_ADCHS2)
      004DDA 41 44 43 48 53 32     2369 	.ascii "ADCHS2"
      004DE0 00                    2370 	.db	0
      004DE1 01                    2371 	.db	1
      004DE2 00 00 0A 7B           2372 	.dw	0,2683
      004DE6 07                    2373 	.uleb128	7
      004DE7 05                    2374 	.db	5
      004DE8 03                    2375 	.db	3
      004DE9 00 00 00 E9           2376 	.dw	0,(_ADCHS1)
      004DED 41 44 43 48 53 31     2377 	.ascii "ADCHS1"
      004DF3 00                    2378 	.db	0
      004DF4 01                    2379 	.db	1
      004DF5 00 00 0A 7B           2380 	.dw	0,2683
      004DF9 07                    2381 	.uleb128	7
      004DFA 05                    2382 	.db	5
      004DFB 03                    2383 	.db	3
      004DFC 00 00 00 E8           2384 	.dw	0,(_ADCHS0)
      004E00 41 44 43 48 53 30     2385 	.ascii "ADCHS0"
      004E06 00                    2386 	.db	0
      004E07 01                    2387 	.db	1
      004E08 00 00 0A 7B           2388 	.dw	0,2683
      004E0C 07                    2389 	.uleb128	7
      004E0D 05                    2390 	.db	5
      004E0E 03                    2391 	.db	3
      004E0F 00 00 00 DF           2392 	.dw	0,(_PWMRUN)
      004E13 50 57 4D 52 55 4E     2393 	.ascii "PWMRUN"
      004E19 00                    2394 	.db	0
      004E1A 01                    2395 	.db	1
      004E1B 00 00 0A 7B           2396 	.dw	0,2683
      004E1F 07                    2397 	.uleb128	7
      004E20 05                    2398 	.db	5
      004E21 03                    2399 	.db	3
      004E22 00 00 00 DE           2400 	.dw	0,(_LOAD)
      004E26 4C 4F 41 44           2401 	.ascii "LOAD"
      004E2A 00                    2402 	.db	0
      004E2B 01                    2403 	.db	1
      004E2C 00 00 0A 7B           2404 	.dw	0,2683
      004E30 07                    2405 	.uleb128	7
      004E31 05                    2406 	.db	5
      004E32 03                    2407 	.db	3
      004E33 00 00 00 DD           2408 	.dw	0,(_PWMF)
      004E37 50 57 4D 46           2409 	.ascii "PWMF"
      004E3B 00                    2410 	.db	0
      004E3C 01                    2411 	.db	1
      004E3D 00 00 0A 7B           2412 	.dw	0,2683
      004E41 07                    2413 	.uleb128	7
      004E42 05                    2414 	.db	5
      004E43 03                    2415 	.db	3
      004E44 00 00 00 DC           2416 	.dw	0,(_CLRPWM)
      004E48 43 4C 52 50 57 4D     2417 	.ascii "CLRPWM"
      004E4E 00                    2418 	.db	0
      004E4F 01                    2419 	.db	1
      004E50 00 00 0A 7B           2420 	.dw	0,2683
      004E54 07                    2421 	.uleb128	7
      004E55 05                    2422 	.db	5
      004E56 03                    2423 	.db	3
      004E57 00 00 00 D7           2424 	.dw	0,(_CY)
      004E5B 43 59                 2425 	.ascii "CY"
      004E5D 00                    2426 	.db	0
      004E5E 01                    2427 	.db	1
      004E5F 00 00 0A 7B           2428 	.dw	0,2683
      004E63 07                    2429 	.uleb128	7
      004E64 05                    2430 	.db	5
      004E65 03                    2431 	.db	3
      004E66 00 00 00 D6           2432 	.dw	0,(_AC)
      004E6A 41 43                 2433 	.ascii "AC"
      004E6C 00                    2434 	.db	0
      004E6D 01                    2435 	.db	1
      004E6E 00 00 0A 7B           2436 	.dw	0,2683
      004E72 07                    2437 	.uleb128	7
      004E73 05                    2438 	.db	5
      004E74 03                    2439 	.db	3
      004E75 00 00 00 D5           2440 	.dw	0,(_F0)
      004E79 46 30                 2441 	.ascii "F0"
      004E7B 00                    2442 	.db	0
      004E7C 01                    2443 	.db	1
      004E7D 00 00 0A 7B           2444 	.dw	0,2683
      004E81 07                    2445 	.uleb128	7
      004E82 05                    2446 	.db	5
      004E83 03                    2447 	.db	3
      004E84 00 00 00 D4           2448 	.dw	0,(_RS1)
      004E88 52 53 31              2449 	.ascii "RS1"
      004E8B 00                    2450 	.db	0
      004E8C 01                    2451 	.db	1
      004E8D 00 00 0A 7B           2452 	.dw	0,2683
      004E91 07                    2453 	.uleb128	7
      004E92 05                    2454 	.db	5
      004E93 03                    2455 	.db	3
      004E94 00 00 00 D3           2456 	.dw	0,(_RS0)
      004E98 52 53 30              2457 	.ascii "RS0"
      004E9B 00                    2458 	.db	0
      004E9C 01                    2459 	.db	1
      004E9D 00 00 0A 7B           2460 	.dw	0,2683
      004EA1 07                    2461 	.uleb128	7
      004EA2 05                    2462 	.db	5
      004EA3 03                    2463 	.db	3
      004EA4 00 00 00 D2           2464 	.dw	0,(_OV)
      004EA8 4F 56                 2465 	.ascii "OV"
      004EAA 00                    2466 	.db	0
      004EAB 01                    2467 	.db	1
      004EAC 00 00 0A 7B           2468 	.dw	0,2683
      004EB0 07                    2469 	.uleb128	7
      004EB1 05                    2470 	.db	5
      004EB2 03                    2471 	.db	3
      004EB3 00 00 00 D0           2472 	.dw	0,(_P)
      004EB7 50                    2473 	.ascii "P"
      004EB8 00                    2474 	.db	0
      004EB9 01                    2475 	.db	1
      004EBA 00 00 0A 7B           2476 	.dw	0,2683
      004EBE 07                    2477 	.uleb128	7
      004EBF 05                    2478 	.db	5
      004EC0 03                    2479 	.db	3
      004EC1 00 00 00 CF           2480 	.dw	0,(_TF2)
      004EC5 54 46 32              2481 	.ascii "TF2"
      004EC8 00                    2482 	.db	0
      004EC9 01                    2483 	.db	1
      004ECA 00 00 0A 7B           2484 	.dw	0,2683
      004ECE 07                    2485 	.uleb128	7
      004ECF 05                    2486 	.db	5
      004ED0 03                    2487 	.db	3
      004ED1 00 00 00 CA           2488 	.dw	0,(_TR2)
      004ED5 54 52 32              2489 	.ascii "TR2"
      004ED8 00                    2490 	.db	0
      004ED9 01                    2491 	.db	1
      004EDA 00 00 0A 7B           2492 	.dw	0,2683
      004EDE 07                    2493 	.uleb128	7
      004EDF 05                    2494 	.db	5
      004EE0 03                    2495 	.db	3
      004EE1 00 00 00 C8           2496 	.dw	0,(_CM_RL2)
      004EE5 43 4D 5F 52 4C 32     2497 	.ascii "CM_RL2"
      004EEB 00                    2498 	.db	0
      004EEC 01                    2499 	.db	1
      004EED 00 00 0A 7B           2500 	.dw	0,2683
      004EF1 07                    2501 	.uleb128	7
      004EF2 05                    2502 	.db	5
      004EF3 03                    2503 	.db	3
      004EF4 00 00 00 C6           2504 	.dw	0,(_I2CEN)
      004EF8 49 32 43 45 4E        2505 	.ascii "I2CEN"
      004EFD 00                    2506 	.db	0
      004EFE 01                    2507 	.db	1
      004EFF 00 00 0A 7B           2508 	.dw	0,2683
      004F03 07                    2509 	.uleb128	7
      004F04 05                    2510 	.db	5
      004F05 03                    2511 	.db	3
      004F06 00 00 00 C5           2512 	.dw	0,(_STA)
      004F0A 53 54 41              2513 	.ascii "STA"
      004F0D 00                    2514 	.db	0
      004F0E 01                    2515 	.db	1
      004F0F 00 00 0A 7B           2516 	.dw	0,2683
      004F13 07                    2517 	.uleb128	7
      004F14 05                    2518 	.db	5
      004F15 03                    2519 	.db	3
      004F16 00 00 00 C4           2520 	.dw	0,(_STO)
      004F1A 53 54 4F              2521 	.ascii "STO"
      004F1D 00                    2522 	.db	0
      004F1E 01                    2523 	.db	1
      004F1F 00 00 0A 7B           2524 	.dw	0,2683
      004F23 07                    2525 	.uleb128	7
      004F24 05                    2526 	.db	5
      004F25 03                    2527 	.db	3
      004F26 00 00 00 C3           2528 	.dw	0,(_SI)
      004F2A 53 49                 2529 	.ascii "SI"
      004F2C 00                    2530 	.db	0
      004F2D 01                    2531 	.db	1
      004F2E 00 00 0A 7B           2532 	.dw	0,2683
      004F32 07                    2533 	.uleb128	7
      004F33 05                    2534 	.db	5
      004F34 03                    2535 	.db	3
      004F35 00 00 00 C2           2536 	.dw	0,(_AA)
      004F39 41 41                 2537 	.ascii "AA"
      004F3B 00                    2538 	.db	0
      004F3C 01                    2539 	.db	1
      004F3D 00 00 0A 7B           2540 	.dw	0,2683
      004F41 07                    2541 	.uleb128	7
      004F42 05                    2542 	.db	5
      004F43 03                    2543 	.db	3
      004F44 00 00 00 C0           2544 	.dw	0,(_I2CPX)
      004F48 49 32 43 50 58        2545 	.ascii "I2CPX"
      004F4D 00                    2546 	.db	0
      004F4E 01                    2547 	.db	1
      004F4F 00 00 0A 7B           2548 	.dw	0,2683
      004F53 07                    2549 	.uleb128	7
      004F54 05                    2550 	.db	5
      004F55 03                    2551 	.db	3
      004F56 00 00 00 BE           2552 	.dw	0,(_PADC)
      004F5A 50 41 44 43           2553 	.ascii "PADC"
      004F5E 00                    2554 	.db	0
      004F5F 01                    2555 	.db	1
      004F60 00 00 0A 7B           2556 	.dw	0,2683
      004F64 07                    2557 	.uleb128	7
      004F65 05                    2558 	.db	5
      004F66 03                    2559 	.db	3
      004F67 00 00 00 BD           2560 	.dw	0,(_PBOD)
      004F6B 50 42 4F 44           2561 	.ascii "PBOD"
      004F6F 00                    2562 	.db	0
      004F70 01                    2563 	.db	1
      004F71 00 00 0A 7B           2564 	.dw	0,2683
      004F75 07                    2565 	.uleb128	7
      004F76 05                    2566 	.db	5
      004F77 03                    2567 	.db	3
      004F78 00 00 00 BC           2568 	.dw	0,(_PS)
      004F7C 50 53                 2569 	.ascii "PS"
      004F7E 00                    2570 	.db	0
      004F7F 01                    2571 	.db	1
      004F80 00 00 0A 7B           2572 	.dw	0,2683
      004F84 07                    2573 	.uleb128	7
      004F85 05                    2574 	.db	5
      004F86 03                    2575 	.db	3
      004F87 00 00 00 BB           2576 	.dw	0,(_PT1)
      004F8B 50 54 31              2577 	.ascii "PT1"
      004F8E 00                    2578 	.db	0
      004F8F 01                    2579 	.db	1
      004F90 00 00 0A 7B           2580 	.dw	0,2683
      004F94 07                    2581 	.uleb128	7
      004F95 05                    2582 	.db	5
      004F96 03                    2583 	.db	3
      004F97 00 00 00 BA           2584 	.dw	0,(_PX1)
      004F9B 50 58 31              2585 	.ascii "PX1"
      004F9E 00                    2586 	.db	0
      004F9F 01                    2587 	.db	1
      004FA0 00 00 0A 7B           2588 	.dw	0,2683
      004FA4 07                    2589 	.uleb128	7
      004FA5 05                    2590 	.db	5
      004FA6 03                    2591 	.db	3
      004FA7 00 00 00 B9           2592 	.dw	0,(_PT0)
      004FAB 50 54 30              2593 	.ascii "PT0"
      004FAE 00                    2594 	.db	0
      004FAF 01                    2595 	.db	1
      004FB0 00 00 0A 7B           2596 	.dw	0,2683
      004FB4 07                    2597 	.uleb128	7
      004FB5 05                    2598 	.db	5
      004FB6 03                    2599 	.db	3
      004FB7 00 00 00 B8           2600 	.dw	0,(_PX0)
      004FBB 50 58 30              2601 	.ascii "PX0"
      004FBE 00                    2602 	.db	0
      004FBF 01                    2603 	.db	1
      004FC0 00 00 0A 7B           2604 	.dw	0,2683
      004FC4 07                    2605 	.uleb128	7
      004FC5 05                    2606 	.db	5
      004FC6 03                    2607 	.db	3
      004FC7 00 00 00 B0           2608 	.dw	0,(_P30)
      004FCB 50 33 30              2609 	.ascii "P30"
      004FCE 00                    2610 	.db	0
      004FCF 01                    2611 	.db	1
      004FD0 00 00 0A 7B           2612 	.dw	0,2683
      004FD4 07                    2613 	.uleb128	7
      004FD5 05                    2614 	.db	5
      004FD6 03                    2615 	.db	3
      004FD7 00 00 00 AF           2616 	.dw	0,(_EA)
      004FDB 45 41                 2617 	.ascii "EA"
      004FDD 00                    2618 	.db	0
      004FDE 01                    2619 	.db	1
      004FDF 00 00 0A 7B           2620 	.dw	0,2683
      004FE3 07                    2621 	.uleb128	7
      004FE4 05                    2622 	.db	5
      004FE5 03                    2623 	.db	3
      004FE6 00 00 00 AE           2624 	.dw	0,(_EADC)
      004FEA 45 41 44 43           2625 	.ascii "EADC"
      004FEE 00                    2626 	.db	0
      004FEF 01                    2627 	.db	1
      004FF0 00 00 0A 7B           2628 	.dw	0,2683
      004FF4 07                    2629 	.uleb128	7
      004FF5 05                    2630 	.db	5
      004FF6 03                    2631 	.db	3
      004FF7 00 00 00 AD           2632 	.dw	0,(_EBOD)
      004FFB 45 42 4F 44           2633 	.ascii "EBOD"
      004FFF 00                    2634 	.db	0
      005000 01                    2635 	.db	1
      005001 00 00 0A 7B           2636 	.dw	0,2683
      005005 07                    2637 	.uleb128	7
      005006 05                    2638 	.db	5
      005007 03                    2639 	.db	3
      005008 00 00 00 AC           2640 	.dw	0,(_ES)
      00500C 45 53                 2641 	.ascii "ES"
      00500E 00                    2642 	.db	0
      00500F 01                    2643 	.db	1
      005010 00 00 0A 7B           2644 	.dw	0,2683
      005014 07                    2645 	.uleb128	7
      005015 05                    2646 	.db	5
      005016 03                    2647 	.db	3
      005017 00 00 00 AB           2648 	.dw	0,(_ET1)
      00501B 45 54 31              2649 	.ascii "ET1"
      00501E 00                    2650 	.db	0
      00501F 01                    2651 	.db	1
      005020 00 00 0A 7B           2652 	.dw	0,2683
      005024 07                    2653 	.uleb128	7
      005025 05                    2654 	.db	5
      005026 03                    2655 	.db	3
      005027 00 00 00 AA           2656 	.dw	0,(_EX1)
      00502B 45 58 31              2657 	.ascii "EX1"
      00502E 00                    2658 	.db	0
      00502F 01                    2659 	.db	1
      005030 00 00 0A 7B           2660 	.dw	0,2683
      005034 07                    2661 	.uleb128	7
      005035 05                    2662 	.db	5
      005036 03                    2663 	.db	3
      005037 00 00 00 A9           2664 	.dw	0,(_ET0)
      00503B 45 54 30              2665 	.ascii "ET0"
      00503E 00                    2666 	.db	0
      00503F 01                    2667 	.db	1
      005040 00 00 0A 7B           2668 	.dw	0,2683
      005044 07                    2669 	.uleb128	7
      005045 05                    2670 	.db	5
      005046 03                    2671 	.db	3
      005047 00 00 00 A8           2672 	.dw	0,(_EX0)
      00504B 45 58 30              2673 	.ascii "EX0"
      00504E 00                    2674 	.db	0
      00504F 01                    2675 	.db	1
      005050 00 00 0A 7B           2676 	.dw	0,2683
      005054 07                    2677 	.uleb128	7
      005055 05                    2678 	.db	5
      005056 03                    2679 	.db	3
      005057 00 00 00 A0           2680 	.dw	0,(_P20)
      00505B 50 32 30              2681 	.ascii "P20"
      00505E 00                    2682 	.db	0
      00505F 01                    2683 	.db	1
      005060 00 00 0A 7B           2684 	.dw	0,2683
      005064 07                    2685 	.uleb128	7
      005065 05                    2686 	.db	5
      005066 03                    2687 	.db	3
      005067 00 00 00 9F           2688 	.dw	0,(_SM0)
      00506B 53 4D 30              2689 	.ascii "SM0"
      00506E 00                    2690 	.db	0
      00506F 01                    2691 	.db	1
      005070 00 00 0A 7B           2692 	.dw	0,2683
      005074 07                    2693 	.uleb128	7
      005075 05                    2694 	.db	5
      005076 03                    2695 	.db	3
      005077 00 00 00 9F           2696 	.dw	0,(_FE)
      00507B 46 45                 2697 	.ascii "FE"
      00507D 00                    2698 	.db	0
      00507E 01                    2699 	.db	1
      00507F 00 00 0A 7B           2700 	.dw	0,2683
      005083 07                    2701 	.uleb128	7
      005084 05                    2702 	.db	5
      005085 03                    2703 	.db	3
      005086 00 00 00 9E           2704 	.dw	0,(_SM1)
      00508A 53 4D 31              2705 	.ascii "SM1"
      00508D 00                    2706 	.db	0
      00508E 01                    2707 	.db	1
      00508F 00 00 0A 7B           2708 	.dw	0,2683
      005093 07                    2709 	.uleb128	7
      005094 05                    2710 	.db	5
      005095 03                    2711 	.db	3
      005096 00 00 00 9D           2712 	.dw	0,(_SM2)
      00509A 53 4D 32              2713 	.ascii "SM2"
      00509D 00                    2714 	.db	0
      00509E 01                    2715 	.db	1
      00509F 00 00 0A 7B           2716 	.dw	0,2683
      0050A3 07                    2717 	.uleb128	7
      0050A4 05                    2718 	.db	5
      0050A5 03                    2719 	.db	3
      0050A6 00 00 00 9C           2720 	.dw	0,(_REN)
      0050AA 52 45 4E              2721 	.ascii "REN"
      0050AD 00                    2722 	.db	0
      0050AE 01                    2723 	.db	1
      0050AF 00 00 0A 7B           2724 	.dw	0,2683
      0050B3 07                    2725 	.uleb128	7
      0050B4 05                    2726 	.db	5
      0050B5 03                    2727 	.db	3
      0050B6 00 00 00 9B           2728 	.dw	0,(_TB8)
      0050BA 54 42 38              2729 	.ascii "TB8"
      0050BD 00                    2730 	.db	0
      0050BE 01                    2731 	.db	1
      0050BF 00 00 0A 7B           2732 	.dw	0,2683
      0050C3 07                    2733 	.uleb128	7
      0050C4 05                    2734 	.db	5
      0050C5 03                    2735 	.db	3
      0050C6 00 00 00 9A           2736 	.dw	0,(_RB8)
      0050CA 52 42 38              2737 	.ascii "RB8"
      0050CD 00                    2738 	.db	0
      0050CE 01                    2739 	.db	1
      0050CF 00 00 0A 7B           2740 	.dw	0,2683
      0050D3 07                    2741 	.uleb128	7
      0050D4 05                    2742 	.db	5
      0050D5 03                    2743 	.db	3
      0050D6 00 00 00 99           2744 	.dw	0,(_TI)
      0050DA 54 49                 2745 	.ascii "TI"
      0050DC 00                    2746 	.db	0
      0050DD 01                    2747 	.db	1
      0050DE 00 00 0A 7B           2748 	.dw	0,2683
      0050E2 07                    2749 	.uleb128	7
      0050E3 05                    2750 	.db	5
      0050E4 03                    2751 	.db	3
      0050E5 00 00 00 98           2752 	.dw	0,(_RI)
      0050E9 52 49                 2753 	.ascii "RI"
      0050EB 00                    2754 	.db	0
      0050EC 01                    2755 	.db	1
      0050ED 00 00 0A 7B           2756 	.dw	0,2683
      0050F1 07                    2757 	.uleb128	7
      0050F2 05                    2758 	.db	5
      0050F3 03                    2759 	.db	3
      0050F4 00 00 00 97           2760 	.dw	0,(_P17)
      0050F8 50 31 37              2761 	.ascii "P17"
      0050FB 00                    2762 	.db	0
      0050FC 01                    2763 	.db	1
      0050FD 00 00 0A 7B           2764 	.dw	0,2683
      005101 07                    2765 	.uleb128	7
      005102 05                    2766 	.db	5
      005103 03                    2767 	.db	3
      005104 00 00 00 96           2768 	.dw	0,(_P16)
      005108 50 31 36              2769 	.ascii "P16"
      00510B 00                    2770 	.db	0
      00510C 01                    2771 	.db	1
      00510D 00 00 0A 7B           2772 	.dw	0,2683
      005111 07                    2773 	.uleb128	7
      005112 05                    2774 	.db	5
      005113 03                    2775 	.db	3
      005114 00 00 00 96           2776 	.dw	0,(_TXD_1)
      005118 54 58 44 5F 31        2777 	.ascii "TXD_1"
      00511D 00                    2778 	.db	0
      00511E 01                    2779 	.db	1
      00511F 00 00 0A 7B           2780 	.dw	0,2683
      005123 07                    2781 	.uleb128	7
      005124 05                    2782 	.db	5
      005125 03                    2783 	.db	3
      005126 00 00 00 95           2784 	.dw	0,(_P15)
      00512A 50 31 35              2785 	.ascii "P15"
      00512D 00                    2786 	.db	0
      00512E 01                    2787 	.db	1
      00512F 00 00 0A 7B           2788 	.dw	0,2683
      005133 07                    2789 	.uleb128	7
      005134 05                    2790 	.db	5
      005135 03                    2791 	.db	3
      005136 00 00 00 94           2792 	.dw	0,(_P14)
      00513A 50 31 34              2793 	.ascii "P14"
      00513D 00                    2794 	.db	0
      00513E 01                    2795 	.db	1
      00513F 00 00 0A 7B           2796 	.dw	0,2683
      005143 07                    2797 	.uleb128	7
      005144 05                    2798 	.db	5
      005145 03                    2799 	.db	3
      005146 00 00 00 94           2800 	.dw	0,(_SDA)
      00514A 53 44 41              2801 	.ascii "SDA"
      00514D 00                    2802 	.db	0
      00514E 01                    2803 	.db	1
      00514F 00 00 0A 7B           2804 	.dw	0,2683
      005153 07                    2805 	.uleb128	7
      005154 05                    2806 	.db	5
      005155 03                    2807 	.db	3
      005156 00 00 00 93           2808 	.dw	0,(_P13)
      00515A 50 31 33              2809 	.ascii "P13"
      00515D 00                    2810 	.db	0
      00515E 01                    2811 	.db	1
      00515F 00 00 0A 7B           2812 	.dw	0,2683
      005163 07                    2813 	.uleb128	7
      005164 05                    2814 	.db	5
      005165 03                    2815 	.db	3
      005166 00 00 00 93           2816 	.dw	0,(_SCL)
      00516A 53 43 4C              2817 	.ascii "SCL"
      00516D 00                    2818 	.db	0
      00516E 01                    2819 	.db	1
      00516F 00 00 0A 7B           2820 	.dw	0,2683
      005173 07                    2821 	.uleb128	7
      005174 05                    2822 	.db	5
      005175 03                    2823 	.db	3
      005176 00 00 00 92           2824 	.dw	0,(_P12)
      00517A 50 31 32              2825 	.ascii "P12"
      00517D 00                    2826 	.db	0
      00517E 01                    2827 	.db	1
      00517F 00 00 0A 7B           2828 	.dw	0,2683
      005183 07                    2829 	.uleb128	7
      005184 05                    2830 	.db	5
      005185 03                    2831 	.db	3
      005186 00 00 00 91           2832 	.dw	0,(_P11)
      00518A 50 31 31              2833 	.ascii "P11"
      00518D 00                    2834 	.db	0
      00518E 01                    2835 	.db	1
      00518F 00 00 0A 7B           2836 	.dw	0,2683
      005193 07                    2837 	.uleb128	7
      005194 05                    2838 	.db	5
      005195 03                    2839 	.db	3
      005196 00 00 00 90           2840 	.dw	0,(_P10)
      00519A 50 31 30              2841 	.ascii "P10"
      00519D 00                    2842 	.db	0
      00519E 01                    2843 	.db	1
      00519F 00 00 0A 7B           2844 	.dw	0,2683
      0051A3 07                    2845 	.uleb128	7
      0051A4 05                    2846 	.db	5
      0051A5 03                    2847 	.db	3
      0051A6 00 00 00 8F           2848 	.dw	0,(_TF1)
      0051AA 54 46 31              2849 	.ascii "TF1"
      0051AD 00                    2850 	.db	0
      0051AE 01                    2851 	.db	1
      0051AF 00 00 0A 7B           2852 	.dw	0,2683
      0051B3 07                    2853 	.uleb128	7
      0051B4 05                    2854 	.db	5
      0051B5 03                    2855 	.db	3
      0051B6 00 00 00 8E           2856 	.dw	0,(_TR1)
      0051BA 54 52 31              2857 	.ascii "TR1"
      0051BD 00                    2858 	.db	0
      0051BE 01                    2859 	.db	1
      0051BF 00 00 0A 7B           2860 	.dw	0,2683
      0051C3 07                    2861 	.uleb128	7
      0051C4 05                    2862 	.db	5
      0051C5 03                    2863 	.db	3
      0051C6 00 00 00 8D           2864 	.dw	0,(_TF0)
      0051CA 54 46 30              2865 	.ascii "TF0"
      0051CD 00                    2866 	.db	0
      0051CE 01                    2867 	.db	1
      0051CF 00 00 0A 7B           2868 	.dw	0,2683
      0051D3 07                    2869 	.uleb128	7
      0051D4 05                    2870 	.db	5
      0051D5 03                    2871 	.db	3
      0051D6 00 00 00 8C           2872 	.dw	0,(_TR0)
      0051DA 54 52 30              2873 	.ascii "TR0"
      0051DD 00                    2874 	.db	0
      0051DE 01                    2875 	.db	1
      0051DF 00 00 0A 7B           2876 	.dw	0,2683
      0051E3 07                    2877 	.uleb128	7
      0051E4 05                    2878 	.db	5
      0051E5 03                    2879 	.db	3
      0051E6 00 00 00 8B           2880 	.dw	0,(_IE1)
      0051EA 49 45 31              2881 	.ascii "IE1"
      0051ED 00                    2882 	.db	0
      0051EE 01                    2883 	.db	1
      0051EF 00 00 0A 7B           2884 	.dw	0,2683
      0051F3 07                    2885 	.uleb128	7
      0051F4 05                    2886 	.db	5
      0051F5 03                    2887 	.db	3
      0051F6 00 00 00 8A           2888 	.dw	0,(_IT1)
      0051FA 49 54 31              2889 	.ascii "IT1"
      0051FD 00                    2890 	.db	0
      0051FE 01                    2891 	.db	1
      0051FF 00 00 0A 7B           2892 	.dw	0,2683
      005203 07                    2893 	.uleb128	7
      005204 05                    2894 	.db	5
      005205 03                    2895 	.db	3
      005206 00 00 00 89           2896 	.dw	0,(_IE0)
      00520A 49 45 30              2897 	.ascii "IE0"
      00520D 00                    2898 	.db	0
      00520E 01                    2899 	.db	1
      00520F 00 00 0A 7B           2900 	.dw	0,2683
      005213 07                    2901 	.uleb128	7
      005214 05                    2902 	.db	5
      005215 03                    2903 	.db	3
      005216 00 00 00 88           2904 	.dw	0,(_IT0)
      00521A 49 54 30              2905 	.ascii "IT0"
      00521D 00                    2906 	.db	0
      00521E 01                    2907 	.db	1
      00521F 00 00 0A 7B           2908 	.dw	0,2683
      005223 07                    2909 	.uleb128	7
      005224 05                    2910 	.db	5
      005225 03                    2911 	.db	3
      005226 00 00 00 87           2912 	.dw	0,(_P07)
      00522A 50 30 37              2913 	.ascii "P07"
      00522D 00                    2914 	.db	0
      00522E 01                    2915 	.db	1
      00522F 00 00 0A 7B           2916 	.dw	0,2683
      005233 07                    2917 	.uleb128	7
      005234 05                    2918 	.db	5
      005235 03                    2919 	.db	3
      005236 00 00 00 87           2920 	.dw	0,(_RXD)
      00523A 52 58 44              2921 	.ascii "RXD"
      00523D 00                    2922 	.db	0
      00523E 01                    2923 	.db	1
      00523F 00 00 0A 7B           2924 	.dw	0,2683
      005243 07                    2925 	.uleb128	7
      005244 05                    2926 	.db	5
      005245 03                    2927 	.db	3
      005246 00 00 00 86           2928 	.dw	0,(_P06)
      00524A 50 30 36              2929 	.ascii "P06"
      00524D 00                    2930 	.db	0
      00524E 01                    2931 	.db	1
      00524F 00 00 0A 7B           2932 	.dw	0,2683
      005253 07                    2933 	.uleb128	7
      005254 05                    2934 	.db	5
      005255 03                    2935 	.db	3
      005256 00 00 00 86           2936 	.dw	0,(_TXD)
      00525A 54 58 44              2937 	.ascii "TXD"
      00525D 00                    2938 	.db	0
      00525E 01                    2939 	.db	1
      00525F 00 00 0A 7B           2940 	.dw	0,2683
      005263 07                    2941 	.uleb128	7
      005264 05                    2942 	.db	5
      005265 03                    2943 	.db	3
      005266 00 00 00 85           2944 	.dw	0,(_P05)
      00526A 50 30 35              2945 	.ascii "P05"
      00526D 00                    2946 	.db	0
      00526E 01                    2947 	.db	1
      00526F 00 00 0A 7B           2948 	.dw	0,2683
      005273 07                    2949 	.uleb128	7
      005274 05                    2950 	.db	5
      005275 03                    2951 	.db	3
      005276 00 00 00 84           2952 	.dw	0,(_P04)
      00527A 50 30 34              2953 	.ascii "P04"
      00527D 00                    2954 	.db	0
      00527E 01                    2955 	.db	1
      00527F 00 00 0A 7B           2956 	.dw	0,2683
      005283 07                    2957 	.uleb128	7
      005284 05                    2958 	.db	5
      005285 03                    2959 	.db	3
      005286 00 00 00 84           2960 	.dw	0,(_STADC)
      00528A 53 54 41 44 43        2961 	.ascii "STADC"
      00528F 00                    2962 	.db	0
      005290 01                    2963 	.db	1
      005291 00 00 0A 7B           2964 	.dw	0,2683
      005295 07                    2965 	.uleb128	7
      005296 05                    2966 	.db	5
      005297 03                    2967 	.db	3
      005298 00 00 00 83           2968 	.dw	0,(_P03)
      00529C 50 30 33              2969 	.ascii "P03"
      00529F 00                    2970 	.db	0
      0052A0 01                    2971 	.db	1
      0052A1 00 00 0A 7B           2972 	.dw	0,2683
      0052A5 07                    2973 	.uleb128	7
      0052A6 05                    2974 	.db	5
      0052A7 03                    2975 	.db	3
      0052A8 00 00 00 82           2976 	.dw	0,(_P02)
      0052AC 50 30 32              2977 	.ascii "P02"
      0052AF 00                    2978 	.db	0
      0052B0 01                    2979 	.db	1
      0052B1 00 00 0A 7B           2980 	.dw	0,2683
      0052B5 07                    2981 	.uleb128	7
      0052B6 05                    2982 	.db	5
      0052B7 03                    2983 	.db	3
      0052B8 00 00 00 82           2984 	.dw	0,(_RXD_1)
      0052BC 52 58 44 5F 31        2985 	.ascii "RXD_1"
      0052C1 00                    2986 	.db	0
      0052C2 01                    2987 	.db	1
      0052C3 00 00 0A 7B           2988 	.dw	0,2683
      0052C7 07                    2989 	.uleb128	7
      0052C8 05                    2990 	.db	5
      0052C9 03                    2991 	.db	3
      0052CA 00 00 00 81           2992 	.dw	0,(_P01)
      0052CE 50 30 31              2993 	.ascii "P01"
      0052D1 00                    2994 	.db	0
      0052D2 01                    2995 	.db	1
      0052D3 00 00 0A 7B           2996 	.dw	0,2683
      0052D7 07                    2997 	.uleb128	7
      0052D8 05                    2998 	.db	5
      0052D9 03                    2999 	.db	3
      0052DA 00 00 00 81           3000 	.dw	0,(_MISO)
      0052DE 4D 49 53 4F           3001 	.ascii "MISO"
      0052E2 00                    3002 	.db	0
      0052E3 01                    3003 	.db	1
      0052E4 00 00 0A 7B           3004 	.dw	0,2683
      0052E8 07                    3005 	.uleb128	7
      0052E9 05                    3006 	.db	5
      0052EA 03                    3007 	.db	3
      0052EB 00 00 00 80           3008 	.dw	0,(_P00)
      0052EF 50 30 30              3009 	.ascii "P00"
      0052F2 00                    3010 	.db	0
      0052F3 01                    3011 	.db	1
      0052F4 00 00 0A 7B           3012 	.dw	0,2683
      0052F8 07                    3013 	.uleb128	7
      0052F9 05                    3014 	.db	5
      0052FA 03                    3015 	.db	3
      0052FB 00 00 00 80           3016 	.dw	0,(_MOSI)
      0052FF 4D 4F 53 49           3017 	.ascii "MOSI"
      005303 00                    3018 	.db	0
      005304 01                    3019 	.db	1
      005305 00 00 0A 7B           3020 	.dw	0,2683
      005309 00                    3021 	.uleb128	0
      00530A                       3022 Ldebug_info_end:
                                   3023 
                                   3024 	.area .debug_pubnames (NOLOAD)
      001D7B 00 00 08 6E           3025 	.dw	0,Ldebug_pubnames_end-Ldebug_pubnames_start
      001D7F                       3026 Ldebug_pubnames_start:
      001D7F 00 02                 3027 	.dw	2
      001D81 00 00 42 57           3028 	.dw	0,(Ldebug_info_start-4)
      001D85 00 00 10 B3           3029 	.dw	0,4+Ldebug_info_end-Ldebug_info_start
      001D89 00 00 00 AE           3030 	.dw	0,174
      001D8D 70 75 74 63 68 61 72  3031 	.ascii "putchar"
      001D94 00                    3032 	.db	0
      001D95 00 00 00 EB           3033 	.dw	0,235
      001D99 67 65 74 63 68 61 72  3034 	.ascii "getchar"
      001DA0 00                    3035 	.db	0
      001DA1 00 00 01 1C           3036 	.dw	0,284
      001DA5 50 30                 3037 	.ascii "P0"
      001DA7 00                    3038 	.db	0
      001DA8 00 00 01 2B           3039 	.dw	0,299
      001DAC 53 50                 3040 	.ascii "SP"
      001DAE 00                    3041 	.db	0
      001DAF 00 00 01 3A           3042 	.dw	0,314
      001DB3 44 50 4C              3043 	.ascii "DPL"
      001DB6 00                    3044 	.db	0
      001DB7 00 00 01 4A           3045 	.dw	0,330
      001DBB 44 50 48              3046 	.ascii "DPH"
      001DBE 00                    3047 	.db	0
      001DBF 00 00 01 5A           3048 	.dw	0,346
      001DC3 52 43 54 52 49 4D 30  3049 	.ascii "RCTRIM0"
      001DCA 00                    3050 	.db	0
      001DCB 00 00 01 6E           3051 	.dw	0,366
      001DCF 52 43 54 52 49 4D 31  3052 	.ascii "RCTRIM1"
      001DD6 00                    3053 	.db	0
      001DD7 00 00 01 82           3054 	.dw	0,386
      001DDB 52 57 4B              3055 	.ascii "RWK"
      001DDE 00                    3056 	.db	0
      001DDF 00 00 01 92           3057 	.dw	0,402
      001DE3 50 43 4F 4E           3058 	.ascii "PCON"
      001DE7 00                    3059 	.db	0
      001DE8 00 00 01 A3           3060 	.dw	0,419
      001DEC 54 43 4F 4E           3061 	.ascii "TCON"
      001DF0 00                    3062 	.db	0
      001DF1 00 00 01 B4           3063 	.dw	0,436
      001DF5 54 4D 4F 44           3064 	.ascii "TMOD"
      001DF9 00                    3065 	.db	0
      001DFA 00 00 01 C5           3066 	.dw	0,453
      001DFE 54 4C 30              3067 	.ascii "TL0"
      001E01 00                    3068 	.db	0
      001E02 00 00 01 D5           3069 	.dw	0,469
      001E06 54 4C 31              3070 	.ascii "TL1"
      001E09 00                    3071 	.db	0
      001E0A 00 00 01 E5           3072 	.dw	0,485
      001E0E 54 48 30              3073 	.ascii "TH0"
      001E11 00                    3074 	.db	0
      001E12 00 00 01 F5           3075 	.dw	0,501
      001E16 54 48 31              3076 	.ascii "TH1"
      001E19 00                    3077 	.db	0
      001E1A 00 00 02 05           3078 	.dw	0,517
      001E1E 43 4B 43 4F 4E        3079 	.ascii "CKCON"
      001E23 00                    3080 	.db	0
      001E24 00 00 02 17           3081 	.dw	0,535
      001E28 57 4B 43 4F 4E        3082 	.ascii "WKCON"
      001E2D 00                    3083 	.db	0
      001E2E 00 00 02 29           3084 	.dw	0,553
      001E32 50 31                 3085 	.ascii "P1"
      001E34 00                    3086 	.db	0
      001E35 00 00 02 38           3087 	.dw	0,568
      001E39 53 46 52 53           3088 	.ascii "SFRS"
      001E3D 00                    3089 	.db	0
      001E3E 00 00 02 49           3090 	.dw	0,585
      001E42 43 41 50 43 4F 4E 30  3091 	.ascii "CAPCON0"
      001E49 00                    3092 	.db	0
      001E4A 00 00 02 5D           3093 	.dw	0,605
      001E4E 43 41 50 43 4F 4E 31  3094 	.ascii "CAPCON1"
      001E55 00                    3095 	.db	0
      001E56 00 00 02 71           3096 	.dw	0,625
      001E5A 43 41 50 43 4F 4E 32  3097 	.ascii "CAPCON2"
      001E61 00                    3098 	.db	0
      001E62 00 00 02 85           3099 	.dw	0,645
      001E66 43 4B 44 49 56        3100 	.ascii "CKDIV"
      001E6B 00                    3101 	.db	0
      001E6C 00 00 02 97           3102 	.dw	0,663
      001E70 43 4B 53 57 54        3103 	.ascii "CKSWT"
      001E75 00                    3104 	.db	0
      001E76 00 00 02 A9           3105 	.dw	0,681
      001E7A 43 4B 45 4E           3106 	.ascii "CKEN"
      001E7E 00                    3107 	.db	0
      001E7F 00 00 02 BA           3108 	.dw	0,698
      001E83 53 43 4F 4E           3109 	.ascii "SCON"
      001E87 00                    3110 	.db	0
      001E88 00 00 02 CB           3111 	.dw	0,715
      001E8C 53 42 55 46           3112 	.ascii "SBUF"
      001E90 00                    3113 	.db	0
      001E91 00 00 02 DC           3114 	.dw	0,732
      001E95 53 42 55 46 5F 31     3115 	.ascii "SBUF_1"
      001E9B 00                    3116 	.db	0
      001E9C 00 00 02 EF           3117 	.dw	0,751
      001EA0 45 49 45              3118 	.ascii "EIE"
      001EA3 00                    3119 	.db	0
      001EA4 00 00 02 FF           3120 	.dw	0,767
      001EA8 45 49 45 31           3121 	.ascii "EIE1"
      001EAC 00                    3122 	.db	0
      001EAD 00 00 03 10           3123 	.dw	0,784
      001EB1 43 48 50 43 4F 4E     3124 	.ascii "CHPCON"
      001EB7 00                    3125 	.db	0
      001EB8 00 00 03 23           3126 	.dw	0,803
      001EBC 50 32                 3127 	.ascii "P2"
      001EBE 00                    3128 	.db	0
      001EBF 00 00 03 32           3129 	.dw	0,818
      001EC3 41 55 58 52 31        3130 	.ascii "AUXR1"
      001EC8 00                    3131 	.db	0
      001EC9 00 00 03 44           3132 	.dw	0,836
      001ECD 42 4F 44 43 4F 4E 30  3133 	.ascii "BODCON0"
      001ED4 00                    3134 	.db	0
      001ED5 00 00 03 58           3135 	.dw	0,856
      001ED9 49 41 50 54 52 47     3136 	.ascii "IAPTRG"
      001EDF 00                    3137 	.db	0
      001EE0 00 00 03 6B           3138 	.dw	0,875
      001EE4 49 41 50 55 45 4E     3139 	.ascii "IAPUEN"
      001EEA 00                    3140 	.db	0
      001EEB 00 00 03 7E           3141 	.dw	0,894
      001EEF 49 41 50 41 4C        3142 	.ascii "IAPAL"
      001EF4 00                    3143 	.db	0
      001EF5 00 00 03 90           3144 	.dw	0,912
      001EF9 49 41 50 41 48        3145 	.ascii "IAPAH"
      001EFE 00                    3146 	.db	0
      001EFF 00 00 03 A2           3147 	.dw	0,930
      001F03 49 45                 3148 	.ascii "IE"
      001F05 00                    3149 	.db	0
      001F06 00 00 03 B1           3150 	.dw	0,945
      001F0A 53 41 44 44 52        3151 	.ascii "SADDR"
      001F0F 00                    3152 	.db	0
      001F10 00 00 03 C3           3153 	.dw	0,963
      001F14 57 44 43 4F 4E        3154 	.ascii "WDCON"
      001F19 00                    3155 	.db	0
      001F1A 00 00 03 D5           3156 	.dw	0,981
      001F1E 42 4F 44 43 4F 4E 31  3157 	.ascii "BODCON1"
      001F25 00                    3158 	.db	0
      001F26 00 00 03 E9           3159 	.dw	0,1001
      001F2A 50 33 4D 31           3160 	.ascii "P3M1"
      001F2E 00                    3161 	.db	0
      001F2F 00 00 03 FA           3162 	.dw	0,1018
      001F33 50 33 53              3163 	.ascii "P3S"
      001F36 00                    3164 	.db	0
      001F37 00 00 04 0A           3165 	.dw	0,1034
      001F3B 50 33 4D 32           3166 	.ascii "P3M2"
      001F3F 00                    3167 	.db	0
      001F40 00 00 04 1B           3168 	.dw	0,1051
      001F44 50 33 53 52           3169 	.ascii "P3SR"
      001F48 00                    3170 	.db	0
      001F49 00 00 04 2C           3171 	.dw	0,1068
      001F4D 49 41 50 46 44        3172 	.ascii "IAPFD"
      001F52 00                    3173 	.db	0
      001F53 00 00 04 3E           3174 	.dw	0,1086
      001F57 49 41 50 43 4E        3175 	.ascii "IAPCN"
      001F5C 00                    3176 	.db	0
      001F5D 00 00 04 50           3177 	.dw	0,1104
      001F61 50 33                 3178 	.ascii "P3"
      001F63 00                    3179 	.db	0
      001F64 00 00 04 5F           3180 	.dw	0,1119
      001F68 50 30 4D 31           3181 	.ascii "P0M1"
      001F6C 00                    3182 	.db	0
      001F6D 00 00 04 70           3183 	.dw	0,1136
      001F71 50 30 53              3184 	.ascii "P0S"
      001F74 00                    3185 	.db	0
      001F75 00 00 04 80           3186 	.dw	0,1152
      001F79 50 30 4D 32           3187 	.ascii "P0M2"
      001F7D 00                    3188 	.db	0
      001F7E 00 00 04 91           3189 	.dw	0,1169
      001F82 50 30 53 52           3190 	.ascii "P0SR"
      001F86 00                    3191 	.db	0
      001F87 00 00 04 A2           3192 	.dw	0,1186
      001F8B 50 31 4D 31           3193 	.ascii "P1M1"
      001F8F 00                    3194 	.db	0
      001F90 00 00 04 B3           3195 	.dw	0,1203
      001F94 50 31 53              3196 	.ascii "P1S"
      001F97 00                    3197 	.db	0
      001F98 00 00 04 C3           3198 	.dw	0,1219
      001F9C 50 31 4D 32           3199 	.ascii "P1M2"
      001FA0 00                    3200 	.db	0
      001FA1 00 00 04 D4           3201 	.dw	0,1236
      001FA5 50 31 53 52           3202 	.ascii "P1SR"
      001FA9 00                    3203 	.db	0
      001FAA 00 00 04 E5           3204 	.dw	0,1253
      001FAE 50 32 53              3205 	.ascii "P2S"
      001FB1 00                    3206 	.db	0
      001FB2 00 00 04 F5           3207 	.dw	0,1269
      001FB6 49 50 48              3208 	.ascii "IPH"
      001FB9 00                    3209 	.db	0
      001FBA 00 00 05 05           3210 	.dw	0,1285
      001FBE 50 57 4D 49 4E 54 43  3211 	.ascii "PWMINTC"
      001FC5 00                    3212 	.db	0
      001FC6 00 00 05 19           3213 	.dw	0,1305
      001FCA 49 50                 3214 	.ascii "IP"
      001FCC 00                    3215 	.db	0
      001FCD 00 00 05 28           3216 	.dw	0,1320
      001FD1 53 41 44 45 4E        3217 	.ascii "SADEN"
      001FD6 00                    3218 	.db	0
      001FD7 00 00 05 3A           3219 	.dw	0,1338
      001FDB 53 41 44 45 4E 5F 31  3220 	.ascii "SADEN_1"
      001FE2 00                    3221 	.db	0
      001FE3 00 00 05 4E           3222 	.dw	0,1358
      001FE7 53 41 44 44 52 5F 31  3223 	.ascii "SADDR_1"
      001FEE 00                    3224 	.db	0
      001FEF 00 00 05 62           3225 	.dw	0,1378
      001FF3 49 32 44 41 54        3226 	.ascii "I2DAT"
      001FF8 00                    3227 	.db	0
      001FF9 00 00 05 74           3228 	.dw	0,1396
      001FFD 49 32 53 54 41 54     3229 	.ascii "I2STAT"
      002003 00                    3230 	.db	0
      002004 00 00 05 87           3231 	.dw	0,1415
      002008 49 32 43 4C 4B        3232 	.ascii "I2CLK"
      00200D 00                    3233 	.db	0
      00200E 00 00 05 99           3234 	.dw	0,1433
      002012 49 32 54 4F 43        3235 	.ascii "I2TOC"
      002017 00                    3236 	.db	0
      002018 00 00 05 AB           3237 	.dw	0,1451
      00201C 49 32 43 4F 4E        3238 	.ascii "I2CON"
      002021 00                    3239 	.db	0
      002022 00 00 05 BD           3240 	.dw	0,1469
      002026 49 32 41 44 44 52     3241 	.ascii "I2ADDR"
      00202C 00                    3242 	.db	0
      00202D 00 00 05 D0           3243 	.dw	0,1488
      002031 41 44 43 52 4C        3244 	.ascii "ADCRL"
      002036 00                    3245 	.db	0
      002037 00 00 05 E2           3246 	.dw	0,1506
      00203B 41 44 43 52 48        3247 	.ascii "ADCRH"
      002040 00                    3248 	.db	0
      002041 00 00 05 F4           3249 	.dw	0,1524
      002045 54 33 43 4F 4E        3250 	.ascii "T3CON"
      00204A 00                    3251 	.db	0
      00204B 00 00 06 06           3252 	.dw	0,1542
      00204F 50 57 4D 34 48        3253 	.ascii "PWM4H"
      002054 00                    3254 	.db	0
      002055 00 00 06 18           3255 	.dw	0,1560
      002059 52 4C 33              3256 	.ascii "RL3"
      00205C 00                    3257 	.db	0
      00205D 00 00 06 28           3258 	.dw	0,1576
      002061 50 57 4D 35 48        3259 	.ascii "PWM5H"
      002066 00                    3260 	.db	0
      002067 00 00 06 3A           3261 	.dw	0,1594
      00206B 52 48 33              3262 	.ascii "RH3"
      00206E 00                    3263 	.db	0
      00206F 00 00 06 4A           3264 	.dw	0,1610
      002073 50 49 4F 43 4F 4E 31  3265 	.ascii "PIOCON1"
      00207A 00                    3266 	.db	0
      00207B 00 00 06 5E           3267 	.dw	0,1630
      00207F 54 41                 3268 	.ascii "TA"
      002081 00                    3269 	.db	0
      002082 00 00 06 6D           3270 	.dw	0,1645
      002086 54 32 43 4F 4E        3271 	.ascii "T2CON"
      00208B 00                    3272 	.db	0
      00208C 00 00 06 7F           3273 	.dw	0,1663
      002090 54 32 4D 4F 44        3274 	.ascii "T2MOD"
      002095 00                    3275 	.db	0
      002096 00 00 06 91           3276 	.dw	0,1681
      00209A 52 43 4D 50 32 4C     3277 	.ascii "RCMP2L"
      0020A0 00                    3278 	.db	0
      0020A1 00 00 06 A4           3279 	.dw	0,1700
      0020A5 52 43 4D 50 32 48     3280 	.ascii "RCMP2H"
      0020AB 00                    3281 	.db	0
      0020AC 00 00 06 B7           3282 	.dw	0,1719
      0020B0 54 4C 32              3283 	.ascii "TL2"
      0020B3 00                    3284 	.db	0
      0020B4 00 00 06 C7           3285 	.dw	0,1735
      0020B8 50 57 4D 34 4C        3286 	.ascii "PWM4L"
      0020BD 00                    3287 	.db	0
      0020BE 00 00 06 D9           3288 	.dw	0,1753
      0020C2 54 48 32              3289 	.ascii "TH2"
      0020C5 00                    3290 	.db	0
      0020C6 00 00 06 E9           3291 	.dw	0,1769
      0020CA 50 57 4D 35 4C        3292 	.ascii "PWM5L"
      0020CF 00                    3293 	.db	0
      0020D0 00 00 06 FB           3294 	.dw	0,1787
      0020D4 41 44 43 4D 50 4C     3295 	.ascii "ADCMPL"
      0020DA 00                    3296 	.db	0
      0020DB 00 00 07 0E           3297 	.dw	0,1806
      0020DF 41 44 43 4D 50 48     3298 	.ascii "ADCMPH"
      0020E5 00                    3299 	.db	0
      0020E6 00 00 07 21           3300 	.dw	0,1825
      0020EA 50 53 57              3301 	.ascii "PSW"
      0020ED 00                    3302 	.db	0
      0020EE 00 00 07 31           3303 	.dw	0,1841
      0020F2 50 57 4D 50 48        3304 	.ascii "PWMPH"
      0020F7 00                    3305 	.db	0
      0020F8 00 00 07 43           3306 	.dw	0,1859
      0020FC 50 57 4D 30 48        3307 	.ascii "PWM0H"
      002101 00                    3308 	.db	0
      002102 00 00 07 55           3309 	.dw	0,1877
      002106 50 57 4D 31 48        3310 	.ascii "PWM1H"
      00210B 00                    3311 	.db	0
      00210C 00 00 07 67           3312 	.dw	0,1895
      002110 50 57 4D 32 48        3313 	.ascii "PWM2H"
      002115 00                    3314 	.db	0
      002116 00 00 07 79           3315 	.dw	0,1913
      00211A 50 57 4D 33 48        3316 	.ascii "PWM3H"
      00211F 00                    3317 	.db	0
      002120 00 00 07 8B           3318 	.dw	0,1931
      002124 50 4E 50              3319 	.ascii "PNP"
      002127 00                    3320 	.db	0
      002128 00 00 07 9B           3321 	.dw	0,1947
      00212C 46 42 44              3322 	.ascii "FBD"
      00212F 00                    3323 	.db	0
      002130 00 00 07 AB           3324 	.dw	0,1963
      002134 50 57 4D 43 4F 4E 30  3325 	.ascii "PWMCON0"
      00213B 00                    3326 	.db	0
      00213C 00 00 07 BF           3327 	.dw	0,1983
      002140 50 57 4D 50 4C        3328 	.ascii "PWMPL"
      002145 00                    3329 	.db	0
      002146 00 00 07 D1           3330 	.dw	0,2001
      00214A 50 57 4D 30 4C        3331 	.ascii "PWM0L"
      00214F 00                    3332 	.db	0
      002150 00 00 07 E3           3333 	.dw	0,2019
      002154 50 57 4D 31 4C        3334 	.ascii "PWM1L"
      002159 00                    3335 	.db	0
      00215A 00 00 07 F5           3336 	.dw	0,2037
      00215E 50 57 4D 32 4C        3337 	.ascii "PWM2L"
      002163 00                    3338 	.db	0
      002164 00 00 08 07           3339 	.dw	0,2055
      002168 50 57 4D 33 4C        3340 	.ascii "PWM3L"
      00216D 00                    3341 	.db	0
      00216E 00 00 08 19           3342 	.dw	0,2073
      002172 50 49 4F 43 4F 4E 30  3343 	.ascii "PIOCON0"
      002179 00                    3344 	.db	0
      00217A 00 00 08 2D           3345 	.dw	0,2093
      00217E 50 57 4D 43 4F 4E 31  3346 	.ascii "PWMCON1"
      002185 00                    3347 	.db	0
      002186 00 00 08 41           3348 	.dw	0,2113
      00218A 41 43 43              3349 	.ascii "ACC"
      00218D 00                    3350 	.db	0
      00218E 00 00 08 51           3351 	.dw	0,2129
      002192 41 44 43 43 4F 4E 31  3352 	.ascii "ADCCON1"
      002199 00                    3353 	.db	0
      00219A 00 00 08 65           3354 	.dw	0,2149
      00219E 41 44 43 43 4F 4E 32  3355 	.ascii "ADCCON2"
      0021A5 00                    3356 	.db	0
      0021A6 00 00 08 79           3357 	.dw	0,2169
      0021AA 41 44 43 44 4C 59     3358 	.ascii "ADCDLY"
      0021B0 00                    3359 	.db	0
      0021B1 00 00 08 8C           3360 	.dw	0,2188
      0021B5 43 30 4C              3361 	.ascii "C0L"
      0021B8 00                    3362 	.db	0
      0021B9 00 00 08 9C           3363 	.dw	0,2204
      0021BD 43 30 48              3364 	.ascii "C0H"
      0021C0 00                    3365 	.db	0
      0021C1 00 00 08 AC           3366 	.dw	0,2220
      0021C5 43 31 4C              3367 	.ascii "C1L"
      0021C8 00                    3368 	.db	0
      0021C9 00 00 08 BC           3369 	.dw	0,2236
      0021CD 43 31 48              3370 	.ascii "C1H"
      0021D0 00                    3371 	.db	0
      0021D1 00 00 08 CC           3372 	.dw	0,2252
      0021D5 41 44 43 43 4F 4E 30  3373 	.ascii "ADCCON0"
      0021DC 00                    3374 	.db	0
      0021DD 00 00 08 E0           3375 	.dw	0,2272
      0021E1 50 49 43 4F 4E        3376 	.ascii "PICON"
      0021E6 00                    3377 	.db	0
      0021E7 00 00 08 F2           3378 	.dw	0,2290
      0021EB 50 49 4E 45 4E        3379 	.ascii "PINEN"
      0021F0 00                    3380 	.db	0
      0021F1 00 00 09 04           3381 	.dw	0,2308
      0021F5 50 49 50 45 4E        3382 	.ascii "PIPEN"
      0021FA 00                    3383 	.db	0
      0021FB 00 00 09 16           3384 	.dw	0,2326
      0021FF 50 49 46              3385 	.ascii "PIF"
      002202 00                    3386 	.db	0
      002203 00 00 09 26           3387 	.dw	0,2342
      002207 43 32 4C              3388 	.ascii "C2L"
      00220A 00                    3389 	.db	0
      00220B 00 00 09 36           3390 	.dw	0,2358
      00220F 43 32 48              3391 	.ascii "C2H"
      002212 00                    3392 	.db	0
      002213 00 00 09 46           3393 	.dw	0,2374
      002217 45 49 50              3394 	.ascii "EIP"
      00221A 00                    3395 	.db	0
      00221B 00 00 09 56           3396 	.dw	0,2390
      00221F 42                    3397 	.ascii "B"
      002220 00                    3398 	.db	0
      002221 00 00 09 64           3399 	.dw	0,2404
      002225 43 41 50 43 4F 4E 33  3400 	.ascii "CAPCON3"
      00222C 00                    3401 	.db	0
      00222D 00 00 09 78           3402 	.dw	0,2424
      002231 43 41 50 43 4F 4E 34  3403 	.ascii "CAPCON4"
      002238 00                    3404 	.db	0
      002239 00 00 09 8C           3405 	.dw	0,2444
      00223D 53 50 43 52           3406 	.ascii "SPCR"
      002241 00                    3407 	.db	0
      002242 00 00 09 9D           3408 	.dw	0,2461
      002246 53 50 43 52 32        3409 	.ascii "SPCR2"
      00224B 00                    3410 	.db	0
      00224C 00 00 09 AF           3411 	.dw	0,2479
      002250 53 50 53 52           3412 	.ascii "SPSR"
      002254 00                    3413 	.db	0
      002255 00 00 09 C0           3414 	.dw	0,2496
      002259 53 50 44 52           3415 	.ascii "SPDR"
      00225D 00                    3416 	.db	0
      00225E 00 00 09 D1           3417 	.dw	0,2513
      002262 41 49 4E 44 49 44 53  3418 	.ascii "AINDIDS"
      002269 00                    3419 	.db	0
      00226A 00 00 09 E5           3420 	.dw	0,2533
      00226E 45 49 50 48           3421 	.ascii "EIPH"
      002272 00                    3422 	.db	0
      002273 00 00 09 F6           3423 	.dw	0,2550
      002277 53 43 4F 4E 5F 31     3424 	.ascii "SCON_1"
      00227D 00                    3425 	.db	0
      00227E 00 00 0A 09           3426 	.dw	0,2569
      002282 50 44 54 45 4E        3427 	.ascii "PDTEN"
      002287 00                    3428 	.db	0
      002288 00 00 0A 1B           3429 	.dw	0,2587
      00228C 50 44 54 43 4E 54     3430 	.ascii "PDTCNT"
      002292 00                    3431 	.db	0
      002293 00 00 0A 2E           3432 	.dw	0,2606
      002297 50 4D 45 4E           3433 	.ascii "PMEN"
      00229B 00                    3434 	.db	0
      00229C 00 00 0A 3F           3435 	.dw	0,2623
      0022A0 50 4D 44              3436 	.ascii "PMD"
      0022A3 00                    3437 	.db	0
      0022A4 00 00 0A 4F           3438 	.dw	0,2639
      0022A8 45 49 50 31           3439 	.ascii "EIP1"
      0022AC 00                    3440 	.db	0
      0022AD 00 00 0A 60           3441 	.dw	0,2656
      0022B1 45 49 50 48 31        3442 	.ascii "EIPH1"
      0022B6 00                    3443 	.db	0
      0022B7 00 00 0A 80           3444 	.dw	0,2688
      0022BB 53 4D 30 5F 31        3445 	.ascii "SM0_1"
      0022C0 00                    3446 	.db	0
      0022C1 00 00 0A 92           3447 	.dw	0,2706
      0022C5 46 45 5F 31           3448 	.ascii "FE_1"
      0022C9 00                    3449 	.db	0
      0022CA 00 00 0A A3           3450 	.dw	0,2723
      0022CE 53 4D 31 5F 31        3451 	.ascii "SM1_1"
      0022D3 00                    3452 	.db	0
      0022D4 00 00 0A B5           3453 	.dw	0,2741
      0022D8 53 4D 32 5F 31        3454 	.ascii "SM2_1"
      0022DD 00                    3455 	.db	0
      0022DE 00 00 0A C7           3456 	.dw	0,2759
      0022E2 52 45 4E 5F 31        3457 	.ascii "REN_1"
      0022E7 00                    3458 	.db	0
      0022E8 00 00 0A D9           3459 	.dw	0,2777
      0022EC 54 42 38 5F 31        3460 	.ascii "TB8_1"
      0022F1 00                    3461 	.db	0
      0022F2 00 00 0A EB           3462 	.dw	0,2795
      0022F6 52 42 38 5F 31        3463 	.ascii "RB8_1"
      0022FB 00                    3464 	.db	0
      0022FC 00 00 0A FD           3465 	.dw	0,2813
      002300 54 49 5F 31           3466 	.ascii "TI_1"
      002304 00                    3467 	.db	0
      002305 00 00 0B 0E           3468 	.dw	0,2830
      002309 52 49 5F 31           3469 	.ascii "RI_1"
      00230D 00                    3470 	.db	0
      00230E 00 00 0B 1F           3471 	.dw	0,2847
      002312 41 44 43 46           3472 	.ascii "ADCF"
      002316 00                    3473 	.db	0
      002317 00 00 0B 30           3474 	.dw	0,2864
      00231B 41 44 43 53           3475 	.ascii "ADCS"
      00231F 00                    3476 	.db	0
      002320 00 00 0B 41           3477 	.dw	0,2881
      002324 45 54 47 53 45 4C 31  3478 	.ascii "ETGSEL1"
      00232B 00                    3479 	.db	0
      00232C 00 00 0B 55           3480 	.dw	0,2901
      002330 45 54 47 53 45 4C 30  3481 	.ascii "ETGSEL0"
      002337 00                    3482 	.db	0
      002338 00 00 0B 69           3483 	.dw	0,2921
      00233C 41 44 43 48 53 33     3484 	.ascii "ADCHS3"
      002342 00                    3485 	.db	0
      002343 00 00 0B 7C           3486 	.dw	0,2940
      002347 41 44 43 48 53 32     3487 	.ascii "ADCHS2"
      00234D 00                    3488 	.db	0
      00234E 00 00 0B 8F           3489 	.dw	0,2959
      002352 41 44 43 48 53 31     3490 	.ascii "ADCHS1"
      002358 00                    3491 	.db	0
      002359 00 00 0B A2           3492 	.dw	0,2978
      00235D 41 44 43 48 53 30     3493 	.ascii "ADCHS0"
      002363 00                    3494 	.db	0
      002364 00 00 0B B5           3495 	.dw	0,2997
      002368 50 57 4D 52 55 4E     3496 	.ascii "PWMRUN"
      00236E 00                    3497 	.db	0
      00236F 00 00 0B C8           3498 	.dw	0,3016
      002373 4C 4F 41 44           3499 	.ascii "LOAD"
      002377 00                    3500 	.db	0
      002378 00 00 0B D9           3501 	.dw	0,3033
      00237C 50 57 4D 46           3502 	.ascii "PWMF"
      002380 00                    3503 	.db	0
      002381 00 00 0B EA           3504 	.dw	0,3050
      002385 43 4C 52 50 57 4D     3505 	.ascii "CLRPWM"
      00238B 00                    3506 	.db	0
      00238C 00 00 0B FD           3507 	.dw	0,3069
      002390 43 59                 3508 	.ascii "CY"
      002392 00                    3509 	.db	0
      002393 00 00 0C 0C           3510 	.dw	0,3084
      002397 41 43                 3511 	.ascii "AC"
      002399 00                    3512 	.db	0
      00239A 00 00 0C 1B           3513 	.dw	0,3099
      00239E 46 30                 3514 	.ascii "F0"
      0023A0 00                    3515 	.db	0
      0023A1 00 00 0C 2A           3516 	.dw	0,3114
      0023A5 52 53 31              3517 	.ascii "RS1"
      0023A8 00                    3518 	.db	0
      0023A9 00 00 0C 3A           3519 	.dw	0,3130
      0023AD 52 53 30              3520 	.ascii "RS0"
      0023B0 00                    3521 	.db	0
      0023B1 00 00 0C 4A           3522 	.dw	0,3146
      0023B5 4F 56                 3523 	.ascii "OV"
      0023B7 00                    3524 	.db	0
      0023B8 00 00 0C 59           3525 	.dw	0,3161
      0023BC 50                    3526 	.ascii "P"
      0023BD 00                    3527 	.db	0
      0023BE 00 00 0C 67           3528 	.dw	0,3175
      0023C2 54 46 32              3529 	.ascii "TF2"
      0023C5 00                    3530 	.db	0
      0023C6 00 00 0C 77           3531 	.dw	0,3191
      0023CA 54 52 32              3532 	.ascii "TR2"
      0023CD 00                    3533 	.db	0
      0023CE 00 00 0C 87           3534 	.dw	0,3207
      0023D2 43 4D 5F 52 4C 32     3535 	.ascii "CM_RL2"
      0023D8 00                    3536 	.db	0
      0023D9 00 00 0C 9A           3537 	.dw	0,3226
      0023DD 49 32 43 45 4E        3538 	.ascii "I2CEN"
      0023E2 00                    3539 	.db	0
      0023E3 00 00 0C AC           3540 	.dw	0,3244
      0023E7 53 54 41              3541 	.ascii "STA"
      0023EA 00                    3542 	.db	0
      0023EB 00 00 0C BC           3543 	.dw	0,3260
      0023EF 53 54 4F              3544 	.ascii "STO"
      0023F2 00                    3545 	.db	0
      0023F3 00 00 0C CC           3546 	.dw	0,3276
      0023F7 53 49                 3547 	.ascii "SI"
      0023F9 00                    3548 	.db	0
      0023FA 00 00 0C DB           3549 	.dw	0,3291
      0023FE 41 41                 3550 	.ascii "AA"
      002400 00                    3551 	.db	0
      002401 00 00 0C EA           3552 	.dw	0,3306
      002405 49 32 43 50 58        3553 	.ascii "I2CPX"
      00240A 00                    3554 	.db	0
      00240B 00 00 0C FC           3555 	.dw	0,3324
      00240F 50 41 44 43           3556 	.ascii "PADC"
      002413 00                    3557 	.db	0
      002414 00 00 0D 0D           3558 	.dw	0,3341
      002418 50 42 4F 44           3559 	.ascii "PBOD"
      00241C 00                    3560 	.db	0
      00241D 00 00 0D 1E           3561 	.dw	0,3358
      002421 50 53                 3562 	.ascii "PS"
      002423 00                    3563 	.db	0
      002424 00 00 0D 2D           3564 	.dw	0,3373
      002428 50 54 31              3565 	.ascii "PT1"
      00242B 00                    3566 	.db	0
      00242C 00 00 0D 3D           3567 	.dw	0,3389
      002430 50 58 31              3568 	.ascii "PX1"
      002433 00                    3569 	.db	0
      002434 00 00 0D 4D           3570 	.dw	0,3405
      002438 50 54 30              3571 	.ascii "PT0"
      00243B 00                    3572 	.db	0
      00243C 00 00 0D 5D           3573 	.dw	0,3421
      002440 50 58 30              3574 	.ascii "PX0"
      002443 00                    3575 	.db	0
      002444 00 00 0D 6D           3576 	.dw	0,3437
      002448 50 33 30              3577 	.ascii "P30"
      00244B 00                    3578 	.db	0
      00244C 00 00 0D 7D           3579 	.dw	0,3453
      002450 45 41                 3580 	.ascii "EA"
      002452 00                    3581 	.db	0
      002453 00 00 0D 8C           3582 	.dw	0,3468
      002457 45 41 44 43           3583 	.ascii "EADC"
      00245B 00                    3584 	.db	0
      00245C 00 00 0D 9D           3585 	.dw	0,3485
      002460 45 42 4F 44           3586 	.ascii "EBOD"
      002464 00                    3587 	.db	0
      002465 00 00 0D AE           3588 	.dw	0,3502
      002469 45 53                 3589 	.ascii "ES"
      00246B 00                    3590 	.db	0
      00246C 00 00 0D BD           3591 	.dw	0,3517
      002470 45 54 31              3592 	.ascii "ET1"
      002473 00                    3593 	.db	0
      002474 00 00 0D CD           3594 	.dw	0,3533
      002478 45 58 31              3595 	.ascii "EX1"
      00247B 00                    3596 	.db	0
      00247C 00 00 0D DD           3597 	.dw	0,3549
      002480 45 54 30              3598 	.ascii "ET0"
      002483 00                    3599 	.db	0
      002484 00 00 0D ED           3600 	.dw	0,3565
      002488 45 58 30              3601 	.ascii "EX0"
      00248B 00                    3602 	.db	0
      00248C 00 00 0D FD           3603 	.dw	0,3581
      002490 50 32 30              3604 	.ascii "P20"
      002493 00                    3605 	.db	0
      002494 00 00 0E 0D           3606 	.dw	0,3597
      002498 53 4D 30              3607 	.ascii "SM0"
      00249B 00                    3608 	.db	0
      00249C 00 00 0E 1D           3609 	.dw	0,3613
      0024A0 46 45                 3610 	.ascii "FE"
      0024A2 00                    3611 	.db	0
      0024A3 00 00 0E 2C           3612 	.dw	0,3628
      0024A7 53 4D 31              3613 	.ascii "SM1"
      0024AA 00                    3614 	.db	0
      0024AB 00 00 0E 3C           3615 	.dw	0,3644
      0024AF 53 4D 32              3616 	.ascii "SM2"
      0024B2 00                    3617 	.db	0
      0024B3 00 00 0E 4C           3618 	.dw	0,3660
      0024B7 52 45 4E              3619 	.ascii "REN"
      0024BA 00                    3620 	.db	0
      0024BB 00 00 0E 5C           3621 	.dw	0,3676
      0024BF 54 42 38              3622 	.ascii "TB8"
      0024C2 00                    3623 	.db	0
      0024C3 00 00 0E 6C           3624 	.dw	0,3692
      0024C7 52 42 38              3625 	.ascii "RB8"
      0024CA 00                    3626 	.db	0
      0024CB 00 00 0E 7C           3627 	.dw	0,3708
      0024CF 54 49                 3628 	.ascii "TI"
      0024D1 00                    3629 	.db	0
      0024D2 00 00 0E 8B           3630 	.dw	0,3723
      0024D6 52 49                 3631 	.ascii "RI"
      0024D8 00                    3632 	.db	0
      0024D9 00 00 0E 9A           3633 	.dw	0,3738
      0024DD 50 31 37              3634 	.ascii "P17"
      0024E0 00                    3635 	.db	0
      0024E1 00 00 0E AA           3636 	.dw	0,3754
      0024E5 50 31 36              3637 	.ascii "P16"
      0024E8 00                    3638 	.db	0
      0024E9 00 00 0E BA           3639 	.dw	0,3770
      0024ED 54 58 44 5F 31        3640 	.ascii "TXD_1"
      0024F2 00                    3641 	.db	0
      0024F3 00 00 0E CC           3642 	.dw	0,3788
      0024F7 50 31 35              3643 	.ascii "P15"
      0024FA 00                    3644 	.db	0
      0024FB 00 00 0E DC           3645 	.dw	0,3804
      0024FF 50 31 34              3646 	.ascii "P14"
      002502 00                    3647 	.db	0
      002503 00 00 0E EC           3648 	.dw	0,3820
      002507 53 44 41              3649 	.ascii "SDA"
      00250A 00                    3650 	.db	0
      00250B 00 00 0E FC           3651 	.dw	0,3836
      00250F 50 31 33              3652 	.ascii "P13"
      002512 00                    3653 	.db	0
      002513 00 00 0F 0C           3654 	.dw	0,3852
      002517 53 43 4C              3655 	.ascii "SCL"
      00251A 00                    3656 	.db	0
      00251B 00 00 0F 1C           3657 	.dw	0,3868
      00251F 50 31 32              3658 	.ascii "P12"
      002522 00                    3659 	.db	0
      002523 00 00 0F 2C           3660 	.dw	0,3884
      002527 50 31 31              3661 	.ascii "P11"
      00252A 00                    3662 	.db	0
      00252B 00 00 0F 3C           3663 	.dw	0,3900
      00252F 50 31 30              3664 	.ascii "P10"
      002532 00                    3665 	.db	0
      002533 00 00 0F 4C           3666 	.dw	0,3916
      002537 54 46 31              3667 	.ascii "TF1"
      00253A 00                    3668 	.db	0
      00253B 00 00 0F 5C           3669 	.dw	0,3932
      00253F 54 52 31              3670 	.ascii "TR1"
      002542 00                    3671 	.db	0
      002543 00 00 0F 6C           3672 	.dw	0,3948
      002547 54 46 30              3673 	.ascii "TF0"
      00254A 00                    3674 	.db	0
      00254B 00 00 0F 7C           3675 	.dw	0,3964
      00254F 54 52 30              3676 	.ascii "TR0"
      002552 00                    3677 	.db	0
      002553 00 00 0F 8C           3678 	.dw	0,3980
      002557 49 45 31              3679 	.ascii "IE1"
      00255A 00                    3680 	.db	0
      00255B 00 00 0F 9C           3681 	.dw	0,3996
      00255F 49 54 31              3682 	.ascii "IT1"
      002562 00                    3683 	.db	0
      002563 00 00 0F AC           3684 	.dw	0,4012
      002567 49 45 30              3685 	.ascii "IE0"
      00256A 00                    3686 	.db	0
      00256B 00 00 0F BC           3687 	.dw	0,4028
      00256F 49 54 30              3688 	.ascii "IT0"
      002572 00                    3689 	.db	0
      002573 00 00 0F CC           3690 	.dw	0,4044
      002577 50 30 37              3691 	.ascii "P07"
      00257A 00                    3692 	.db	0
      00257B 00 00 0F DC           3693 	.dw	0,4060
      00257F 52 58 44              3694 	.ascii "RXD"
      002582 00                    3695 	.db	0
      002583 00 00 0F EC           3696 	.dw	0,4076
      002587 50 30 36              3697 	.ascii "P06"
      00258A 00                    3698 	.db	0
      00258B 00 00 0F FC           3699 	.dw	0,4092
      00258F 54 58 44              3700 	.ascii "TXD"
      002592 00                    3701 	.db	0
      002593 00 00 10 0C           3702 	.dw	0,4108
      002597 50 30 35              3703 	.ascii "P05"
      00259A 00                    3704 	.db	0
      00259B 00 00 10 1C           3705 	.dw	0,4124
      00259F 50 30 34              3706 	.ascii "P04"
      0025A2 00                    3707 	.db	0
      0025A3 00 00 10 2C           3708 	.dw	0,4140
      0025A7 53 54 41 44 43        3709 	.ascii "STADC"
      0025AC 00                    3710 	.db	0
      0025AD 00 00 10 3E           3711 	.dw	0,4158
      0025B1 50 30 33              3712 	.ascii "P03"
      0025B4 00                    3713 	.db	0
      0025B5 00 00 10 4E           3714 	.dw	0,4174
      0025B9 50 30 32              3715 	.ascii "P02"
      0025BC 00                    3716 	.db	0
      0025BD 00 00 10 5E           3717 	.dw	0,4190
      0025C1 52 58 44 5F 31        3718 	.ascii "RXD_1"
      0025C6 00                    3719 	.db	0
      0025C7 00 00 10 70           3720 	.dw	0,4208
      0025CB 50 30 31              3721 	.ascii "P01"
      0025CE 00                    3722 	.db	0
      0025CF 00 00 10 80           3723 	.dw	0,4224
      0025D3 4D 49 53 4F           3724 	.ascii "MISO"
      0025D7 00                    3725 	.db	0
      0025D8 00 00 10 91           3726 	.dw	0,4241
      0025DC 50 30 30              3727 	.ascii "P00"
      0025DF 00                    3728 	.db	0
      0025E0 00 00 10 A1           3729 	.dw	0,4257
      0025E4 4D 4F 53 49           3730 	.ascii "MOSI"
      0025E8 00                    3731 	.db	0
      0025E9 00 00 00 00           3732 	.dw	0,0
      0025ED                       3733 Ldebug_pubnames_end:
                                   3734 
                                   3735 	.area .debug_frame (NOLOAD)
      0005D8 00 00                 3736 	.dw	0
      0005DA 00 10                 3737 	.dw	Ldebug_CIE0_end-Ldebug_CIE0_start
      0005DC                       3738 Ldebug_CIE0_start:
      0005DC FF FF                 3739 	.dw	0xffff
      0005DE FF FF                 3740 	.dw	0xffff
      0005E0 01                    3741 	.db	1
      0005E1 00                    3742 	.db	0
      0005E2 01                    3743 	.uleb128	1
      0005E3 01                    3744 	.sleb128	1
      0005E4 09                    3745 	.db	9
      0005E5 0C                    3746 	.db	12
      0005E6 16                    3747 	.uleb128	22
      0005E7 02                    3748 	.uleb128	2
      0005E8 89                    3749 	.db	137
      0005E9 01                    3750 	.uleb128	1
      0005EA 00                    3751 	.db	0
      0005EB 00                    3752 	.db	0
      0005EC                       3753 Ldebug_CIE0_end:
      0005EC 00 00 00 14           3754 	.dw	0,20
      0005F0 00 00 05 D8           3755 	.dw	0,(Ldebug_CIE0_start-4)
      0005F4 00 00 15 B1           3756 	.dw	0,(Ssdcc_stdio$getchar$9)	;initial loc
      0005F8 00 00 00 12           3757 	.dw	0,Ssdcc_stdio$getchar$16-Ssdcc_stdio$getchar$9
      0005FC 01                    3758 	.db	1
      0005FD 00 00 15 B1           3759 	.dw	0,(Ssdcc_stdio$getchar$9)
      000601 0E                    3760 	.db	14
      000602 02                    3761 	.uleb128	2
      000603 00                    3762 	.db	0
                                   3763 
                                   3764 	.area .debug_frame (NOLOAD)
      000604 00 00                 3765 	.dw	0
      000606 00 10                 3766 	.dw	Ldebug_CIE1_end-Ldebug_CIE1_start
      000608                       3767 Ldebug_CIE1_start:
      000608 FF FF                 3768 	.dw	0xffff
      00060A FF FF                 3769 	.dw	0xffff
      00060C 01                    3770 	.db	1
      00060D 00                    3771 	.db	0
      00060E 01                    3772 	.uleb128	1
      00060F 01                    3773 	.sleb128	1
      000610 09                    3774 	.db	9
      000611 0C                    3775 	.db	12
      000612 16                    3776 	.uleb128	22
      000613 02                    3777 	.uleb128	2
      000614 89                    3778 	.db	137
      000615 01                    3779 	.uleb128	1
      000616 00                    3780 	.db	0
      000617 00                    3781 	.db	0
      000618                       3782 Ldebug_CIE1_end:
      000618 00 00 00 14           3783 	.dw	0,20
      00061C 00 00 06 04           3784 	.dw	0,(Ldebug_CIE1_start-4)
      000620 00 00 15 91           3785 	.dw	0,(Ssdcc_stdio$putchar$1)	;initial loc
      000624 00 00 00 20           3786 	.dw	0,Ssdcc_stdio$putchar$7-Ssdcc_stdio$putchar$1
      000628 01                    3787 	.db	1
      000629 00 00 15 91           3788 	.dw	0,(Ssdcc_stdio$putchar$1)
      00062D 0E                    3789 	.db	14
      00062E 02                    3790 	.uleb128	2
      00062F 00                    3791 	.db	0
