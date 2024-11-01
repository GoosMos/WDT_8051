                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.2.6 #13647 (MINGW32)
                                      4 ;--------------------------------------------------------
                                      5 	.module wdt
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
                                    243 	.globl _WDT_Open
                                    244 	.globl _WDT_Interrupt
                                    245 	.globl _WDT_Clear
                                    246 ;--------------------------------------------------------
                                    247 ; special function registers
                                    248 ;--------------------------------------------------------
                                    249 	.area RSEG    (ABS,DATA)
      000000                        250 	.org 0x0000
                           000080   251 G$P0$0_0$0 == 0x0080
                           000080   252 _P0	=	0x0080
                           000081   253 G$SP$0_0$0 == 0x0081
                           000081   254 _SP	=	0x0081
                           000082   255 G$DPL$0_0$0 == 0x0082
                           000082   256 _DPL	=	0x0082
                           000083   257 G$DPH$0_0$0 == 0x0083
                           000083   258 _DPH	=	0x0083
                           000084   259 G$RCTRIM0$0_0$0 == 0x0084
                           000084   260 _RCTRIM0	=	0x0084
                           000085   261 G$RCTRIM1$0_0$0 == 0x0085
                           000085   262 _RCTRIM1	=	0x0085
                           000086   263 G$RWK$0_0$0 == 0x0086
                           000086   264 _RWK	=	0x0086
                           000087   265 G$PCON$0_0$0 == 0x0087
                           000087   266 _PCON	=	0x0087
                           000088   267 G$TCON$0_0$0 == 0x0088
                           000088   268 _TCON	=	0x0088
                           000089   269 G$TMOD$0_0$0 == 0x0089
                           000089   270 _TMOD	=	0x0089
                           00008A   271 G$TL0$0_0$0 == 0x008a
                           00008A   272 _TL0	=	0x008a
                           00008B   273 G$TL1$0_0$0 == 0x008b
                           00008B   274 _TL1	=	0x008b
                           00008C   275 G$TH0$0_0$0 == 0x008c
                           00008C   276 _TH0	=	0x008c
                           00008D   277 G$TH1$0_0$0 == 0x008d
                           00008D   278 _TH1	=	0x008d
                           00008E   279 G$CKCON$0_0$0 == 0x008e
                           00008E   280 _CKCON	=	0x008e
                           00008F   281 G$WKCON$0_0$0 == 0x008f
                           00008F   282 _WKCON	=	0x008f
                           000090   283 G$P1$0_0$0 == 0x0090
                           000090   284 _P1	=	0x0090
                           000091   285 G$SFRS$0_0$0 == 0x0091
                           000091   286 _SFRS	=	0x0091
                           000092   287 G$CAPCON0$0_0$0 == 0x0092
                           000092   288 _CAPCON0	=	0x0092
                           000093   289 G$CAPCON1$0_0$0 == 0x0093
                           000093   290 _CAPCON1	=	0x0093
                           000094   291 G$CAPCON2$0_0$0 == 0x0094
                           000094   292 _CAPCON2	=	0x0094
                           000095   293 G$CKDIV$0_0$0 == 0x0095
                           000095   294 _CKDIV	=	0x0095
                           000096   295 G$CKSWT$0_0$0 == 0x0096
                           000096   296 _CKSWT	=	0x0096
                           000097   297 G$CKEN$0_0$0 == 0x0097
                           000097   298 _CKEN	=	0x0097
                           000098   299 G$SCON$0_0$0 == 0x0098
                           000098   300 _SCON	=	0x0098
                           000099   301 G$SBUF$0_0$0 == 0x0099
                           000099   302 _SBUF	=	0x0099
                           00009A   303 G$SBUF_1$0_0$0 == 0x009a
                           00009A   304 _SBUF_1	=	0x009a
                           00009B   305 G$EIE$0_0$0 == 0x009b
                           00009B   306 _EIE	=	0x009b
                           00009C   307 G$EIE1$0_0$0 == 0x009c
                           00009C   308 _EIE1	=	0x009c
                           00009F   309 G$CHPCON$0_0$0 == 0x009f
                           00009F   310 _CHPCON	=	0x009f
                           0000A0   311 G$P2$0_0$0 == 0x00a0
                           0000A0   312 _P2	=	0x00a0
                           0000A2   313 G$AUXR1$0_0$0 == 0x00a2
                           0000A2   314 _AUXR1	=	0x00a2
                           0000A3   315 G$BODCON0$0_0$0 == 0x00a3
                           0000A3   316 _BODCON0	=	0x00a3
                           0000A4   317 G$IAPTRG$0_0$0 == 0x00a4
                           0000A4   318 _IAPTRG	=	0x00a4
                           0000A5   319 G$IAPUEN$0_0$0 == 0x00a5
                           0000A5   320 _IAPUEN	=	0x00a5
                           0000A6   321 G$IAPAL$0_0$0 == 0x00a6
                           0000A6   322 _IAPAL	=	0x00a6
                           0000A7   323 G$IAPAH$0_0$0 == 0x00a7
                           0000A7   324 _IAPAH	=	0x00a7
                           0000A8   325 G$IE$0_0$0 == 0x00a8
                           0000A8   326 _IE	=	0x00a8
                           0000A9   327 G$SADDR$0_0$0 == 0x00a9
                           0000A9   328 _SADDR	=	0x00a9
                           0000AA   329 G$WDCON$0_0$0 == 0x00aa
                           0000AA   330 _WDCON	=	0x00aa
                           0000AB   331 G$BODCON1$0_0$0 == 0x00ab
                           0000AB   332 _BODCON1	=	0x00ab
                           0000AC   333 G$P3M1$0_0$0 == 0x00ac
                           0000AC   334 _P3M1	=	0x00ac
                           0000AC   335 G$P3S$0_0$0 == 0x00ac
                           0000AC   336 _P3S	=	0x00ac
                           0000AD   337 G$P3M2$0_0$0 == 0x00ad
                           0000AD   338 _P3M2	=	0x00ad
                           0000AD   339 G$P3SR$0_0$0 == 0x00ad
                           0000AD   340 _P3SR	=	0x00ad
                           0000AE   341 G$IAPFD$0_0$0 == 0x00ae
                           0000AE   342 _IAPFD	=	0x00ae
                           0000AF   343 G$IAPCN$0_0$0 == 0x00af
                           0000AF   344 _IAPCN	=	0x00af
                           0000B0   345 G$P3$0_0$0 == 0x00b0
                           0000B0   346 _P3	=	0x00b0
                           0000B1   347 G$P0M1$0_0$0 == 0x00b1
                           0000B1   348 _P0M1	=	0x00b1
                           0000B1   349 G$P0S$0_0$0 == 0x00b1
                           0000B1   350 _P0S	=	0x00b1
                           0000B2   351 G$P0M2$0_0$0 == 0x00b2
                           0000B2   352 _P0M2	=	0x00b2
                           0000B2   353 G$P0SR$0_0$0 == 0x00b2
                           0000B2   354 _P0SR	=	0x00b2
                           0000B3   355 G$P1M1$0_0$0 == 0x00b3
                           0000B3   356 _P1M1	=	0x00b3
                           0000B3   357 G$P1S$0_0$0 == 0x00b3
                           0000B3   358 _P1S	=	0x00b3
                           0000B4   359 G$P1M2$0_0$0 == 0x00b4
                           0000B4   360 _P1M2	=	0x00b4
                           0000B4   361 G$P1SR$0_0$0 == 0x00b4
                           0000B4   362 _P1SR	=	0x00b4
                           0000B5   363 G$P2S$0_0$0 == 0x00b5
                           0000B5   364 _P2S	=	0x00b5
                           0000B7   365 G$IPH$0_0$0 == 0x00b7
                           0000B7   366 _IPH	=	0x00b7
                           0000B7   367 G$PWMINTC$0_0$0 == 0x00b7
                           0000B7   368 _PWMINTC	=	0x00b7
                           0000B8   369 G$IP$0_0$0 == 0x00b8
                           0000B8   370 _IP	=	0x00b8
                           0000B9   371 G$SADEN$0_0$0 == 0x00b9
                           0000B9   372 _SADEN	=	0x00b9
                           0000BA   373 G$SADEN_1$0_0$0 == 0x00ba
                           0000BA   374 _SADEN_1	=	0x00ba
                           0000BB   375 G$SADDR_1$0_0$0 == 0x00bb
                           0000BB   376 _SADDR_1	=	0x00bb
                           0000BC   377 G$I2DAT$0_0$0 == 0x00bc
                           0000BC   378 _I2DAT	=	0x00bc
                           0000BD   379 G$I2STAT$0_0$0 == 0x00bd
                           0000BD   380 _I2STAT	=	0x00bd
                           0000BE   381 G$I2CLK$0_0$0 == 0x00be
                           0000BE   382 _I2CLK	=	0x00be
                           0000BF   383 G$I2TOC$0_0$0 == 0x00bf
                           0000BF   384 _I2TOC	=	0x00bf
                           0000C0   385 G$I2CON$0_0$0 == 0x00c0
                           0000C0   386 _I2CON	=	0x00c0
                           0000C1   387 G$I2ADDR$0_0$0 == 0x00c1
                           0000C1   388 _I2ADDR	=	0x00c1
                           0000C2   389 G$ADCRL$0_0$0 == 0x00c2
                           0000C2   390 _ADCRL	=	0x00c2
                           0000C3   391 G$ADCRH$0_0$0 == 0x00c3
                           0000C3   392 _ADCRH	=	0x00c3
                           0000C4   393 G$T3CON$0_0$0 == 0x00c4
                           0000C4   394 _T3CON	=	0x00c4
                           0000C4   395 G$PWM4H$0_0$0 == 0x00c4
                           0000C4   396 _PWM4H	=	0x00c4
                           0000C5   397 G$RL3$0_0$0 == 0x00c5
                           0000C5   398 _RL3	=	0x00c5
                           0000C5   399 G$PWM5H$0_0$0 == 0x00c5
                           0000C5   400 _PWM5H	=	0x00c5
                           0000C6   401 G$RH3$0_0$0 == 0x00c6
                           0000C6   402 _RH3	=	0x00c6
                           0000C6   403 G$PIOCON1$0_0$0 == 0x00c6
                           0000C6   404 _PIOCON1	=	0x00c6
                           0000C7   405 G$TA$0_0$0 == 0x00c7
                           0000C7   406 _TA	=	0x00c7
                           0000C8   407 G$T2CON$0_0$0 == 0x00c8
                           0000C8   408 _T2CON	=	0x00c8
                           0000C9   409 G$T2MOD$0_0$0 == 0x00c9
                           0000C9   410 _T2MOD	=	0x00c9
                           0000CA   411 G$RCMP2L$0_0$0 == 0x00ca
                           0000CA   412 _RCMP2L	=	0x00ca
                           0000CB   413 G$RCMP2H$0_0$0 == 0x00cb
                           0000CB   414 _RCMP2H	=	0x00cb
                           0000CC   415 G$TL2$0_0$0 == 0x00cc
                           0000CC   416 _TL2	=	0x00cc
                           0000CC   417 G$PWM4L$0_0$0 == 0x00cc
                           0000CC   418 _PWM4L	=	0x00cc
                           0000CD   419 G$TH2$0_0$0 == 0x00cd
                           0000CD   420 _TH2	=	0x00cd
                           0000CD   421 G$PWM5L$0_0$0 == 0x00cd
                           0000CD   422 _PWM5L	=	0x00cd
                           0000CE   423 G$ADCMPL$0_0$0 == 0x00ce
                           0000CE   424 _ADCMPL	=	0x00ce
                           0000CF   425 G$ADCMPH$0_0$0 == 0x00cf
                           0000CF   426 _ADCMPH	=	0x00cf
                           0000D0   427 G$PSW$0_0$0 == 0x00d0
                           0000D0   428 _PSW	=	0x00d0
                           0000D1   429 G$PWMPH$0_0$0 == 0x00d1
                           0000D1   430 _PWMPH	=	0x00d1
                           0000D2   431 G$PWM0H$0_0$0 == 0x00d2
                           0000D2   432 _PWM0H	=	0x00d2
                           0000D3   433 G$PWM1H$0_0$0 == 0x00d3
                           0000D3   434 _PWM1H	=	0x00d3
                           0000D4   435 G$PWM2H$0_0$0 == 0x00d4
                           0000D4   436 _PWM2H	=	0x00d4
                           0000D5   437 G$PWM3H$0_0$0 == 0x00d5
                           0000D5   438 _PWM3H	=	0x00d5
                           0000D6   439 G$PNP$0_0$0 == 0x00d6
                           0000D6   440 _PNP	=	0x00d6
                           0000D7   441 G$FBD$0_0$0 == 0x00d7
                           0000D7   442 _FBD	=	0x00d7
                           0000D8   443 G$PWMCON0$0_0$0 == 0x00d8
                           0000D8   444 _PWMCON0	=	0x00d8
                           0000D9   445 G$PWMPL$0_0$0 == 0x00d9
                           0000D9   446 _PWMPL	=	0x00d9
                           0000DA   447 G$PWM0L$0_0$0 == 0x00da
                           0000DA   448 _PWM0L	=	0x00da
                           0000DB   449 G$PWM1L$0_0$0 == 0x00db
                           0000DB   450 _PWM1L	=	0x00db
                           0000DC   451 G$PWM2L$0_0$0 == 0x00dc
                           0000DC   452 _PWM2L	=	0x00dc
                           0000DD   453 G$PWM3L$0_0$0 == 0x00dd
                           0000DD   454 _PWM3L	=	0x00dd
                           0000DE   455 G$PIOCON0$0_0$0 == 0x00de
                           0000DE   456 _PIOCON0	=	0x00de
                           0000DF   457 G$PWMCON1$0_0$0 == 0x00df
                           0000DF   458 _PWMCON1	=	0x00df
                           0000E0   459 G$ACC$0_0$0 == 0x00e0
                           0000E0   460 _ACC	=	0x00e0
                           0000E1   461 G$ADCCON1$0_0$0 == 0x00e1
                           0000E1   462 _ADCCON1	=	0x00e1
                           0000E2   463 G$ADCCON2$0_0$0 == 0x00e2
                           0000E2   464 _ADCCON2	=	0x00e2
                           0000E3   465 G$ADCDLY$0_0$0 == 0x00e3
                           0000E3   466 _ADCDLY	=	0x00e3
                           0000E4   467 G$C0L$0_0$0 == 0x00e4
                           0000E4   468 _C0L	=	0x00e4
                           0000E5   469 G$C0H$0_0$0 == 0x00e5
                           0000E5   470 _C0H	=	0x00e5
                           0000E6   471 G$C1L$0_0$0 == 0x00e6
                           0000E6   472 _C1L	=	0x00e6
                           0000E7   473 G$C1H$0_0$0 == 0x00e7
                           0000E7   474 _C1H	=	0x00e7
                           0000E8   475 G$ADCCON0$0_0$0 == 0x00e8
                           0000E8   476 _ADCCON0	=	0x00e8
                           0000E9   477 G$PICON$0_0$0 == 0x00e9
                           0000E9   478 _PICON	=	0x00e9
                           0000EA   479 G$PINEN$0_0$0 == 0x00ea
                           0000EA   480 _PINEN	=	0x00ea
                           0000EB   481 G$PIPEN$0_0$0 == 0x00eb
                           0000EB   482 _PIPEN	=	0x00eb
                           0000EC   483 G$PIF$0_0$0 == 0x00ec
                           0000EC   484 _PIF	=	0x00ec
                           0000ED   485 G$C2L$0_0$0 == 0x00ed
                           0000ED   486 _C2L	=	0x00ed
                           0000EE   487 G$C2H$0_0$0 == 0x00ee
                           0000EE   488 _C2H	=	0x00ee
                           0000EF   489 G$EIP$0_0$0 == 0x00ef
                           0000EF   490 _EIP	=	0x00ef
                           0000F0   491 G$B$0_0$0 == 0x00f0
                           0000F0   492 _B	=	0x00f0
                           0000F1   493 G$CAPCON3$0_0$0 == 0x00f1
                           0000F1   494 _CAPCON3	=	0x00f1
                           0000F2   495 G$CAPCON4$0_0$0 == 0x00f2
                           0000F2   496 _CAPCON4	=	0x00f2
                           0000F3   497 G$SPCR$0_0$0 == 0x00f3
                           0000F3   498 _SPCR	=	0x00f3
                           0000F3   499 G$SPCR2$0_0$0 == 0x00f3
                           0000F3   500 _SPCR2	=	0x00f3
                           0000F4   501 G$SPSR$0_0$0 == 0x00f4
                           0000F4   502 _SPSR	=	0x00f4
                           0000F5   503 G$SPDR$0_0$0 == 0x00f5
                           0000F5   504 _SPDR	=	0x00f5
                           0000F6   505 G$AINDIDS$0_0$0 == 0x00f6
                           0000F6   506 _AINDIDS	=	0x00f6
                           0000F7   507 G$EIPH$0_0$0 == 0x00f7
                           0000F7   508 _EIPH	=	0x00f7
                           0000F8   509 G$SCON_1$0_0$0 == 0x00f8
                           0000F8   510 _SCON_1	=	0x00f8
                           0000F9   511 G$PDTEN$0_0$0 == 0x00f9
                           0000F9   512 _PDTEN	=	0x00f9
                           0000FA   513 G$PDTCNT$0_0$0 == 0x00fa
                           0000FA   514 _PDTCNT	=	0x00fa
                           0000FB   515 G$PMEN$0_0$0 == 0x00fb
                           0000FB   516 _PMEN	=	0x00fb
                           0000FC   517 G$PMD$0_0$0 == 0x00fc
                           0000FC   518 _PMD	=	0x00fc
                           0000FE   519 G$EIP1$0_0$0 == 0x00fe
                           0000FE   520 _EIP1	=	0x00fe
                           0000FF   521 G$EIPH1$0_0$0 == 0x00ff
                           0000FF   522 _EIPH1	=	0x00ff
                                    523 ;--------------------------------------------------------
                                    524 ; special function bits
                                    525 ;--------------------------------------------------------
                                    526 	.area RSEG    (ABS,DATA)
      000000                        527 	.org 0x0000
                           0000FF   528 G$SM0_1$0_0$0 == 0x00ff
                           0000FF   529 _SM0_1	=	0x00ff
                           0000FF   530 G$FE_1$0_0$0 == 0x00ff
                           0000FF   531 _FE_1	=	0x00ff
                           0000FE   532 G$SM1_1$0_0$0 == 0x00fe
                           0000FE   533 _SM1_1	=	0x00fe
                           0000FD   534 G$SM2_1$0_0$0 == 0x00fd
                           0000FD   535 _SM2_1	=	0x00fd
                           0000FC   536 G$REN_1$0_0$0 == 0x00fc
                           0000FC   537 _REN_1	=	0x00fc
                           0000FB   538 G$TB8_1$0_0$0 == 0x00fb
                           0000FB   539 _TB8_1	=	0x00fb
                           0000FA   540 G$RB8_1$0_0$0 == 0x00fa
                           0000FA   541 _RB8_1	=	0x00fa
                           0000F9   542 G$TI_1$0_0$0 == 0x00f9
                           0000F9   543 _TI_1	=	0x00f9
                           0000F8   544 G$RI_1$0_0$0 == 0x00f8
                           0000F8   545 _RI_1	=	0x00f8
                           0000EF   546 G$ADCF$0_0$0 == 0x00ef
                           0000EF   547 _ADCF	=	0x00ef
                           0000EE   548 G$ADCS$0_0$0 == 0x00ee
                           0000EE   549 _ADCS	=	0x00ee
                           0000ED   550 G$ETGSEL1$0_0$0 == 0x00ed
                           0000ED   551 _ETGSEL1	=	0x00ed
                           0000EC   552 G$ETGSEL0$0_0$0 == 0x00ec
                           0000EC   553 _ETGSEL0	=	0x00ec
                           0000EB   554 G$ADCHS3$0_0$0 == 0x00eb
                           0000EB   555 _ADCHS3	=	0x00eb
                           0000EA   556 G$ADCHS2$0_0$0 == 0x00ea
                           0000EA   557 _ADCHS2	=	0x00ea
                           0000E9   558 G$ADCHS1$0_0$0 == 0x00e9
                           0000E9   559 _ADCHS1	=	0x00e9
                           0000E8   560 G$ADCHS0$0_0$0 == 0x00e8
                           0000E8   561 _ADCHS0	=	0x00e8
                           0000DF   562 G$PWMRUN$0_0$0 == 0x00df
                           0000DF   563 _PWMRUN	=	0x00df
                           0000DE   564 G$LOAD$0_0$0 == 0x00de
                           0000DE   565 _LOAD	=	0x00de
                           0000DD   566 G$PWMF$0_0$0 == 0x00dd
                           0000DD   567 _PWMF	=	0x00dd
                           0000DC   568 G$CLRPWM$0_0$0 == 0x00dc
                           0000DC   569 _CLRPWM	=	0x00dc
                           0000D7   570 G$CY$0_0$0 == 0x00d7
                           0000D7   571 _CY	=	0x00d7
                           0000D6   572 G$AC$0_0$0 == 0x00d6
                           0000D6   573 _AC	=	0x00d6
                           0000D5   574 G$F0$0_0$0 == 0x00d5
                           0000D5   575 _F0	=	0x00d5
                           0000D4   576 G$RS1$0_0$0 == 0x00d4
                           0000D4   577 _RS1	=	0x00d4
                           0000D3   578 G$RS0$0_0$0 == 0x00d3
                           0000D3   579 _RS0	=	0x00d3
                           0000D2   580 G$OV$0_0$0 == 0x00d2
                           0000D2   581 _OV	=	0x00d2
                           0000D0   582 G$P$0_0$0 == 0x00d0
                           0000D0   583 _P	=	0x00d0
                           0000CF   584 G$TF2$0_0$0 == 0x00cf
                           0000CF   585 _TF2	=	0x00cf
                           0000CA   586 G$TR2$0_0$0 == 0x00ca
                           0000CA   587 _TR2	=	0x00ca
                           0000C8   588 G$CM_RL2$0_0$0 == 0x00c8
                           0000C8   589 _CM_RL2	=	0x00c8
                           0000C6   590 G$I2CEN$0_0$0 == 0x00c6
                           0000C6   591 _I2CEN	=	0x00c6
                           0000C5   592 G$STA$0_0$0 == 0x00c5
                           0000C5   593 _STA	=	0x00c5
                           0000C4   594 G$STO$0_0$0 == 0x00c4
                           0000C4   595 _STO	=	0x00c4
                           0000C3   596 G$SI$0_0$0 == 0x00c3
                           0000C3   597 _SI	=	0x00c3
                           0000C2   598 G$AA$0_0$0 == 0x00c2
                           0000C2   599 _AA	=	0x00c2
                           0000C0   600 G$I2CPX$0_0$0 == 0x00c0
                           0000C0   601 _I2CPX	=	0x00c0
                           0000BE   602 G$PADC$0_0$0 == 0x00be
                           0000BE   603 _PADC	=	0x00be
                           0000BD   604 G$PBOD$0_0$0 == 0x00bd
                           0000BD   605 _PBOD	=	0x00bd
                           0000BC   606 G$PS$0_0$0 == 0x00bc
                           0000BC   607 _PS	=	0x00bc
                           0000BB   608 G$PT1$0_0$0 == 0x00bb
                           0000BB   609 _PT1	=	0x00bb
                           0000BA   610 G$PX1$0_0$0 == 0x00ba
                           0000BA   611 _PX1	=	0x00ba
                           0000B9   612 G$PT0$0_0$0 == 0x00b9
                           0000B9   613 _PT0	=	0x00b9
                           0000B8   614 G$PX0$0_0$0 == 0x00b8
                           0000B8   615 _PX0	=	0x00b8
                           0000B0   616 G$P30$0_0$0 == 0x00b0
                           0000B0   617 _P30	=	0x00b0
                           0000AF   618 G$EA$0_0$0 == 0x00af
                           0000AF   619 _EA	=	0x00af
                           0000AE   620 G$EADC$0_0$0 == 0x00ae
                           0000AE   621 _EADC	=	0x00ae
                           0000AD   622 G$EBOD$0_0$0 == 0x00ad
                           0000AD   623 _EBOD	=	0x00ad
                           0000AC   624 G$ES$0_0$0 == 0x00ac
                           0000AC   625 _ES	=	0x00ac
                           0000AB   626 G$ET1$0_0$0 == 0x00ab
                           0000AB   627 _ET1	=	0x00ab
                           0000AA   628 G$EX1$0_0$0 == 0x00aa
                           0000AA   629 _EX1	=	0x00aa
                           0000A9   630 G$ET0$0_0$0 == 0x00a9
                           0000A9   631 _ET0	=	0x00a9
                           0000A8   632 G$EX0$0_0$0 == 0x00a8
                           0000A8   633 _EX0	=	0x00a8
                           0000A0   634 G$P20$0_0$0 == 0x00a0
                           0000A0   635 _P20	=	0x00a0
                           00009F   636 G$SM0$0_0$0 == 0x009f
                           00009F   637 _SM0	=	0x009f
                           00009F   638 G$FE$0_0$0 == 0x009f
                           00009F   639 _FE	=	0x009f
                           00009E   640 G$SM1$0_0$0 == 0x009e
                           00009E   641 _SM1	=	0x009e
                           00009D   642 G$SM2$0_0$0 == 0x009d
                           00009D   643 _SM2	=	0x009d
                           00009C   644 G$REN$0_0$0 == 0x009c
                           00009C   645 _REN	=	0x009c
                           00009B   646 G$TB8$0_0$0 == 0x009b
                           00009B   647 _TB8	=	0x009b
                           00009A   648 G$RB8$0_0$0 == 0x009a
                           00009A   649 _RB8	=	0x009a
                           000099   650 G$TI$0_0$0 == 0x0099
                           000099   651 _TI	=	0x0099
                           000098   652 G$RI$0_0$0 == 0x0098
                           000098   653 _RI	=	0x0098
                           000097   654 G$P17$0_0$0 == 0x0097
                           000097   655 _P17	=	0x0097
                           000096   656 G$P16$0_0$0 == 0x0096
                           000096   657 _P16	=	0x0096
                           000096   658 G$TXD_1$0_0$0 == 0x0096
                           000096   659 _TXD_1	=	0x0096
                           000095   660 G$P15$0_0$0 == 0x0095
                           000095   661 _P15	=	0x0095
                           000094   662 G$P14$0_0$0 == 0x0094
                           000094   663 _P14	=	0x0094
                           000094   664 G$SDA$0_0$0 == 0x0094
                           000094   665 _SDA	=	0x0094
                           000093   666 G$P13$0_0$0 == 0x0093
                           000093   667 _P13	=	0x0093
                           000093   668 G$SCL$0_0$0 == 0x0093
                           000093   669 _SCL	=	0x0093
                           000092   670 G$P12$0_0$0 == 0x0092
                           000092   671 _P12	=	0x0092
                           000091   672 G$P11$0_0$0 == 0x0091
                           000091   673 _P11	=	0x0091
                           000090   674 G$P10$0_0$0 == 0x0090
                           000090   675 _P10	=	0x0090
                           00008F   676 G$TF1$0_0$0 == 0x008f
                           00008F   677 _TF1	=	0x008f
                           00008E   678 G$TR1$0_0$0 == 0x008e
                           00008E   679 _TR1	=	0x008e
                           00008D   680 G$TF0$0_0$0 == 0x008d
                           00008D   681 _TF0	=	0x008d
                           00008C   682 G$TR0$0_0$0 == 0x008c
                           00008C   683 _TR0	=	0x008c
                           00008B   684 G$IE1$0_0$0 == 0x008b
                           00008B   685 _IE1	=	0x008b
                           00008A   686 G$IT1$0_0$0 == 0x008a
                           00008A   687 _IT1	=	0x008a
                           000089   688 G$IE0$0_0$0 == 0x0089
                           000089   689 _IE0	=	0x0089
                           000088   690 G$IT0$0_0$0 == 0x0088
                           000088   691 _IT0	=	0x0088
                           000087   692 G$P07$0_0$0 == 0x0087
                           000087   693 _P07	=	0x0087
                           000087   694 G$RXD$0_0$0 == 0x0087
                           000087   695 _RXD	=	0x0087
                           000086   696 G$P06$0_0$0 == 0x0086
                           000086   697 _P06	=	0x0086
                           000086   698 G$TXD$0_0$0 == 0x0086
                           000086   699 _TXD	=	0x0086
                           000085   700 G$P05$0_0$0 == 0x0085
                           000085   701 _P05	=	0x0085
                           000084   702 G$P04$0_0$0 == 0x0084
                           000084   703 _P04	=	0x0084
                           000084   704 G$STADC$0_0$0 == 0x0084
                           000084   705 _STADC	=	0x0084
                           000083   706 G$P03$0_0$0 == 0x0083
                           000083   707 _P03	=	0x0083
                           000082   708 G$P02$0_0$0 == 0x0082
                           000082   709 _P02	=	0x0082
                           000082   710 G$RXD_1$0_0$0 == 0x0082
                           000082   711 _RXD_1	=	0x0082
                           000081   712 G$P01$0_0$0 == 0x0081
                           000081   713 _P01	=	0x0081
                           000081   714 G$MISO$0_0$0 == 0x0081
                           000081   715 _MISO	=	0x0081
                           000080   716 G$P00$0_0$0 == 0x0080
                           000080   717 _P00	=	0x0080
                           000080   718 G$MOSI$0_0$0 == 0x0080
                           000080   719 _MOSI	=	0x0080
                                    720 ;--------------------------------------------------------
                                    721 ; overlayable register banks
                                    722 ;--------------------------------------------------------
                                    723 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        724 	.ds 8
                                    725 ;--------------------------------------------------------
                                    726 ; internal ram data
                                    727 ;--------------------------------------------------------
                                    728 	.area DSEG    (DATA)
                                    729 ;--------------------------------------------------------
                                    730 ; internal ram data
                                    731 ;--------------------------------------------------------
                                    732 	.area INITIALIZED
                                    733 ;--------------------------------------------------------
                                    734 ; overlayable items in internal ram
                                    735 ;--------------------------------------------------------
                                    736 ;--------------------------------------------------------
                                    737 ; indirectly addressable internal ram data
                                    738 ;--------------------------------------------------------
                                    739 	.area ISEG    (DATA)
                                    740 ;--------------------------------------------------------
                                    741 ; absolute internal ram data
                                    742 ;--------------------------------------------------------
                                    743 	.area IABS    (ABS,DATA)
                                    744 	.area IABS    (ABS,DATA)
                                    745 ;--------------------------------------------------------
                                    746 ; bit data
                                    747 ;--------------------------------------------------------
                                    748 	.area BSEG    (BIT)
                                    749 ;--------------------------------------------------------
                                    750 ; paged external ram data
                                    751 ;--------------------------------------------------------
                                    752 	.area PSEG    (PAG,XDATA)
                                    753 ;--------------------------------------------------------
                                    754 ; uninitialized external ram data
                                    755 ;--------------------------------------------------------
                                    756 	.area XSEG    (XDATA)
                           000000   757 Lwdt.WDT_Open$u8WDTDIV$1_0$153==.
      00005F                        758 _WDT_Open_u8WDTDIV_65536_153:
      00005F                        759 	.ds 2
                           000002   760 Lwdt.WDT_Interrupt$u8WDTINT$1_0$156==.
      000061                        761 _WDT_Interrupt_u8WDTINT_65536_156:
      000061                        762 	.ds 1
                                    763 ;--------------------------------------------------------
                                    764 ; absolute external ram data
                                    765 ;--------------------------------------------------------
                                    766 	.area XABS    (ABS,XDATA)
                                    767 ;--------------------------------------------------------
                                    768 ; initialized external ram data
                                    769 ;--------------------------------------------------------
                                    770 	.area XISEG   (XDATA)
                                    771 	.area HOME    (CODE)
                                    772 	.area GSINIT0 (CODE)
                                    773 	.area GSINIT1 (CODE)
                                    774 	.area GSINIT2 (CODE)
                                    775 	.area GSINIT3 (CODE)
                                    776 	.area GSINIT4 (CODE)
                                    777 	.area GSINIT5 (CODE)
                                    778 	.area GSINIT  (CODE)
                                    779 	.area GSFINAL (CODE)
                                    780 	.area CSEG    (CODE)
                                    781 ;--------------------------------------------------------
                                    782 ; global & static initialisations
                                    783 ;--------------------------------------------------------
                                    784 	.area HOME    (CODE)
                                    785 	.area GSINIT  (CODE)
                                    786 	.area GSFINAL (CODE)
                                    787 	.area GSINIT  (CODE)
                                    788 ;--------------------------------------------------------
                                    789 ; Home
                                    790 ;--------------------------------------------------------
                                    791 	.area HOME    (CODE)
                                    792 	.area HOME    (CODE)
                                    793 ;--------------------------------------------------------
                                    794 ; code
                                    795 ;--------------------------------------------------------
                                    796 	.area CSEG    (CODE)
                                    797 ;------------------------------------------------------------
                                    798 ;Allocation info for local variables in function 'WDT_Open'
                                    799 ;------------------------------------------------------------
                                    800 ;u8WDTDIV                  Allocated with name '_WDT_Open_u8WDTDIV_65536_153'
                                    801 ;------------------------------------------------------------
                           000000   802 	Swdt$WDT_Open$0 ==.
                                    803 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/wdt.c:42: void WDT_Open(uint16_t u8WDTDIV)
                                    804 ;	-----------------------------------------
                                    805 ;	 function WDT_Open
                                    806 ;	-----------------------------------------
      001ACD                        807 _WDT_Open:
                           000007   808 	ar7 = 0x07
                           000006   809 	ar6 = 0x06
                           000005   810 	ar5 = 0x05
                           000004   811 	ar4 = 0x04
                           000003   812 	ar3 = 0x03
                           000002   813 	ar2 = 0x02
                           000001   814 	ar1 = 0x01
                           000000   815 	ar0 = 0x00
                           000000   816 	Swdt$WDT_Open$1 ==.
      001ACD AF 83            [24]  817 	mov	r7,dph
      001ACF E5 82            [12]  818 	mov	a,dpl
      001AD1 90 00 5F         [24]  819 	mov	dptr,#_WDT_Open_u8WDTDIV_65536_153
      001AD4 F0               [24]  820 	movx	@dptr,a
      001AD5 EF               [12]  821 	mov	a,r7
      001AD6 A3               [24]  822 	inc	dptr
      001AD7 F0               [24]  823 	movx	@dptr,a
                           00000B   824 	Swdt$WDT_Open$2 ==.
                                    825 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/wdt.c:44: SFRS=0;
      001AD8 75 91 00         [24]  826 	mov	_SFRS,#0x00
                           00000E   827 	Swdt$WDT_Open$3 ==.
                                    828 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/wdt.c:45: BIT_TMP=EA;
                                    829 ;	assignBit
      001ADB A2 AF            [12]  830 	mov	c,_EA
      001ADD 92 00            [24]  831 	mov	_BIT_TMP,c
                           000012   832 	Swdt$WDT_Open$4 ==.
                                    833 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/wdt.c:46: EA=0;
                                    834 ;	assignBit
      001ADF C2 AF            [12]  835 	clr	_EA
                           000014   836 	Swdt$WDT_Open$5 ==.
                                    837 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/wdt.c:47: switch (u8WDTDIV)
      001AE1 90 00 5F         [24]  838 	mov	dptr,#_WDT_Open_u8WDTDIV_65536_153
      001AE4 E0               [24]  839 	movx	a,@dptr
      001AE5 FE               [12]  840 	mov	r6,a
      001AE6 A3               [24]  841 	inc	dptr
      001AE7 E0               [24]  842 	movx	a,@dptr
      001AE8 FF               [12]  843 	mov	r7,a
      001AE9 BE 01 05         [24]  844 	cjne	r6,#0x01,00145$
      001AEC BF 00 02         [24]  845 	cjne	r7,#0x00,00145$
      001AEF 80 3D            [24]  846 	sjmp	00101$
      001AF1                        847 00145$:
      001AF1 BE 04 05         [24]  848 	cjne	r6,#0x04,00146$
      001AF4 BF 00 02         [24]  849 	cjne	r7,#0x00,00146$
      001AF7 80 41            [24]  850 	sjmp	00102$
      001AF9                        851 00146$:
      001AF9 BE 08 05         [24]  852 	cjne	r6,#0x08,00147$
      001AFC BF 00 02         [24]  853 	cjne	r7,#0x00,00147$
      001AFF 80 4D            [24]  854 	sjmp	00103$
      001B01                        855 00147$:
      001B01 BE 10 05         [24]  856 	cjne	r6,#0x10,00148$
      001B04 BF 00 02         [24]  857 	cjne	r7,#0x00,00148$
      001B07 80 59            [24]  858 	sjmp	00104$
      001B09                        859 00148$:
      001B09 BE 20 05         [24]  860 	cjne	r6,#0x20,00149$
      001B0C BF 00 02         [24]  861 	cjne	r7,#0x00,00149$
      001B0F 80 65            [24]  862 	sjmp	00105$
      001B11                        863 00149$:
      001B11 BE 40 05         [24]  864 	cjne	r6,#0x40,00150$
      001B14 BF 00 02         [24]  865 	cjne	r7,#0x00,00150$
      001B17 80 71            [24]  866 	sjmp	00106$
      001B19                        867 00150$:
      001B19 BE 80 06         [24]  868 	cjne	r6,#0x80,00151$
      001B1C BF 00 03         [24]  869 	cjne	r7,#0x00,00151$
      001B1F 02 1B 9E         [24]  870 	ljmp	00107$
      001B22                        871 00151$:
      001B22 BE 00 06         [24]  872 	cjne	r6,#0x00,00152$
      001B25 BF 01 03         [24]  873 	cjne	r7,#0x01,00152$
      001B28 02 1B B2         [24]  874 	ljmp	00108$
      001B2B                        875 00152$:
      001B2B 02 1B C4         [24]  876 	ljmp	00110$
                           000061   877 	Swdt$WDT_Open$6 ==.
                           000061   878 	Swdt$WDT_Open$7 ==.
                                    879 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/wdt.c:49: case 1: TA=0xAA;TA=0x55;WDCON&=0xF8; break;
      001B2E                        880 00101$:
      001B2E 75 C7 AA         [24]  881 	mov	_TA,#0xaa
      001B31 75 C7 55         [24]  882 	mov	_TA,#0x55
      001B34 53 AA F8         [24]  883 	anl	_WDCON,#0xf8
      001B37 02 1B C4         [24]  884 	ljmp	00110$
                           00006D   885 	Swdt$WDT_Open$8 ==.
                                    886 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/wdt.c:50: case 4: TA=0xAA;TA=0x55;WDCON&=0xF8;TA=0xAA;TA=0x55;WDCON|=0x01; break;
      001B3A                        887 00102$:
      001B3A 75 C7 AA         [24]  888 	mov	_TA,#0xaa
      001B3D 75 C7 55         [24]  889 	mov	_TA,#0x55
      001B40 53 AA F8         [24]  890 	anl	_WDCON,#0xf8
      001B43 75 C7 AA         [24]  891 	mov	_TA,#0xaa
      001B46 75 C7 55         [24]  892 	mov	_TA,#0x55
      001B49 43 AA 01         [24]  893 	orl	_WDCON,#0x01
                           00007F   894 	Swdt$WDT_Open$9 ==.
                                    895 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/wdt.c:51: case 8: TA=0xAA;TA=0x55;WDCON&=0xF8;TA=0xAA;TA=0x55;WDCON|=0x02; break;
      001B4C 80 76            [24]  896 	sjmp	00110$
      001B4E                        897 00103$:
      001B4E 75 C7 AA         [24]  898 	mov	_TA,#0xaa
      001B51 75 C7 55         [24]  899 	mov	_TA,#0x55
      001B54 53 AA F8         [24]  900 	anl	_WDCON,#0xf8
      001B57 75 C7 AA         [24]  901 	mov	_TA,#0xaa
      001B5A 75 C7 55         [24]  902 	mov	_TA,#0x55
      001B5D 43 AA 02         [24]  903 	orl	_WDCON,#0x02
                           000093   904 	Swdt$WDT_Open$10 ==.
                                    905 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/wdt.c:52: case 16: TA=0xAA;TA=0x55;WDCON&=0xF8;TA=0xAA;TA=0x55;WDCON|=0x03; break;
      001B60 80 62            [24]  906 	sjmp	00110$
      001B62                        907 00104$:
      001B62 75 C7 AA         [24]  908 	mov	_TA,#0xaa
      001B65 75 C7 55         [24]  909 	mov	_TA,#0x55
      001B68 53 AA F8         [24]  910 	anl	_WDCON,#0xf8
      001B6B 75 C7 AA         [24]  911 	mov	_TA,#0xaa
      001B6E 75 C7 55         [24]  912 	mov	_TA,#0x55
      001B71 43 AA 03         [24]  913 	orl	_WDCON,#0x03
                           0000A7   914 	Swdt$WDT_Open$11 ==.
                                    915 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/wdt.c:53: case 32: TA=0xAA;TA=0x55;WDCON&=0xF8;TA=0xAA;TA=0x55;WDCON|=0x04; break;
      001B74 80 4E            [24]  916 	sjmp	00110$
      001B76                        917 00105$:
      001B76 75 C7 AA         [24]  918 	mov	_TA,#0xaa
      001B79 75 C7 55         [24]  919 	mov	_TA,#0x55
      001B7C 53 AA F8         [24]  920 	anl	_WDCON,#0xf8
      001B7F 75 C7 AA         [24]  921 	mov	_TA,#0xaa
      001B82 75 C7 55         [24]  922 	mov	_TA,#0x55
      001B85 43 AA 04         [24]  923 	orl	_WDCON,#0x04
                           0000BB   924 	Swdt$WDT_Open$12 ==.
                                    925 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/wdt.c:54: case 64: TA=0xAA;TA=0x55;WDCON&=0xF8;TA=0xAA;TA=0x55;WDCON|=0x05; break;
      001B88 80 3A            [24]  926 	sjmp	00110$
      001B8A                        927 00106$:
      001B8A 75 C7 AA         [24]  928 	mov	_TA,#0xaa
      001B8D 75 C7 55         [24]  929 	mov	_TA,#0x55
      001B90 53 AA F8         [24]  930 	anl	_WDCON,#0xf8
      001B93 75 C7 AA         [24]  931 	mov	_TA,#0xaa
      001B96 75 C7 55         [24]  932 	mov	_TA,#0x55
      001B99 43 AA 05         [24]  933 	orl	_WDCON,#0x05
                           0000CF   934 	Swdt$WDT_Open$13 ==.
                                    935 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/wdt.c:55: case 128: TA=0xAA;TA=0x55;WDCON&=0xF8;TA=0xAA;TA=0x55;WDCON|=0x06; break;
      001B9C 80 26            [24]  936 	sjmp	00110$
      001B9E                        937 00107$:
      001B9E 75 C7 AA         [24]  938 	mov	_TA,#0xaa
      001BA1 75 C7 55         [24]  939 	mov	_TA,#0x55
      001BA4 53 AA F8         [24]  940 	anl	_WDCON,#0xf8
      001BA7 75 C7 AA         [24]  941 	mov	_TA,#0xaa
      001BAA 75 C7 55         [24]  942 	mov	_TA,#0x55
      001BAD 43 AA 06         [24]  943 	orl	_WDCON,#0x06
                           0000E3   944 	Swdt$WDT_Open$14 ==.
                                    945 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/wdt.c:56: case 256: TA=0xAA;TA=0x55;WDCON&=0xF8;TA=0xAA;TA=0x55;WDCON|=0x07; break;
      001BB0 80 12            [24]  946 	sjmp	00110$
      001BB2                        947 00108$:
      001BB2 75 C7 AA         [24]  948 	mov	_TA,#0xaa
      001BB5 75 C7 55         [24]  949 	mov	_TA,#0x55
      001BB8 53 AA F8         [24]  950 	anl	_WDCON,#0xf8
      001BBB 75 C7 AA         [24]  951 	mov	_TA,#0xaa
      001BBE 75 C7 55         [24]  952 	mov	_TA,#0x55
      001BC1 43 AA 07         [24]  953 	orl	_WDCON,#0x07
                           0000F7   954 	Swdt$WDT_Open$15 ==.
                           0000F7   955 	Swdt$WDT_Open$16 ==.
                                    956 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/wdt.c:58: }
      001BC4                        957 00110$:
                           0000F7   958 	Swdt$WDT_Open$17 ==.
                                    959 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/wdt.c:59: EA = BIT_TMP;
                                    960 ;	assignBit
      001BC4 A2 00            [12]  961 	mov	c,_BIT_TMP
      001BC6 92 AF            [24]  962 	mov	_EA,c
                           0000FB   963 	Swdt$WDT_Open$18 ==.
                                    964 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/wdt.c:60: set_WDCON_WIDPD;
                                    965 ;	assignBit
      001BC8 A2 AF            [12]  966 	mov	c,_EA
      001BCA 92 00            [24]  967 	mov	_BIT_TMP,c
                                    968 ;	assignBit
      001BCC C2 AF            [12]  969 	clr	_EA
      001BCE 75 C7 AA         [24]  970 	mov	_TA,#0xaa
      001BD1 75 C7 55         [24]  971 	mov	_TA,#0x55
      001BD4 43 AA 10         [24]  972 	orl	_WDCON,#0x10
                                    973 ;	assignBit
      001BD7 A2 00            [12]  974 	mov	c,_BIT_TMP
      001BD9 92 AF            [24]  975 	mov	_EA,c
                           00010E   976 	Swdt$WDT_Open$19 ==.
                                    977 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/wdt.c:61: set_WDCON_WDTR;
                                    978 ;	assignBit
      001BDB A2 AF            [12]  979 	mov	c,_EA
      001BDD 92 00            [24]  980 	mov	_BIT_TMP,c
                                    981 ;	assignBit
      001BDF C2 AF            [12]  982 	clr	_EA
      001BE1 75 C7 AA         [24]  983 	mov	_TA,#0xaa
      001BE4 75 C7 55         [24]  984 	mov	_TA,#0x55
      001BE7 43 AA 80         [24]  985 	orl	_WDCON,#0x80
                                    986 ;	assignBit
      001BEA A2 00            [12]  987 	mov	c,_BIT_TMP
      001BEC 92 AF            [24]  988 	mov	_EA,c
                           000121   989 	Swdt$WDT_Open$20 ==.
                                    990 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/wdt.c:62: }
                           000121   991 	Swdt$WDT_Open$21 ==.
                           000121   992 	XG$WDT_Open$0$0 ==.
      001BEE 22               [24]  993 	ret
                           000122   994 	Swdt$WDT_Open$22 ==.
                                    995 ;------------------------------------------------------------
                                    996 ;Allocation info for local variables in function 'WDT_Interrupt'
                                    997 ;------------------------------------------------------------
                                    998 ;u8WDTINT                  Allocated with name '_WDT_Interrupt_u8WDTINT_65536_156'
                                    999 ;------------------------------------------------------------
                           000122  1000 	Swdt$WDT_Interrupt$23 ==.
                                   1001 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/wdt.c:72: void WDT_Interrupt(uint8_t u8WDTINT)
                                   1002 ;	-----------------------------------------
                                   1003 ;	 function WDT_Interrupt
                                   1004 ;	-----------------------------------------
      001BEF                       1005 _WDT_Interrupt:
                           000122  1006 	Swdt$WDT_Interrupt$24 ==.
      001BEF E5 82            [12] 1007 	mov	a,dpl
      001BF1 90 00 61         [24] 1008 	mov	dptr,#_WDT_Interrupt_u8WDTINT_65536_156
      001BF4 F0               [24] 1009 	movx	@dptr,a
                           000128  1010 	Swdt$WDT_Interrupt$25 ==.
                                   1011 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/wdt.c:74: switch (u8WDTINT)
      001BF5 E0               [24] 1012 	movx	a,@dptr
      001BF6 FF               [12] 1013 	mov	r7,a
      001BF7 60 05            [24] 1014 	jz	00101$
                           00012C  1015 	Swdt$WDT_Interrupt$26 ==.
                           00012C  1016 	Swdt$WDT_Interrupt$27 ==.
                                   1017 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/wdt.c:76: case Disable: clr_EIE_EWDT; break;    
      001BF9 BF 01 0A         [24] 1018 	cjne	r7,#0x01,00104$
      001BFC 80 05            [24] 1019 	sjmp	00102$
      001BFE                       1020 00101$:
      001BFE 53 9B EF         [24] 1021 	anl	_EIE,#0xef
                           000134  1022 	Swdt$WDT_Interrupt$28 ==.
                                   1023 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/wdt.c:77: case Enable: set_EIE_EWDT; break;
      001C01 80 03            [24] 1024 	sjmp	00104$
      001C03                       1025 00102$:
      001C03 43 9B 10         [24] 1026 	orl	_EIE,#0x10
                           000139  1027 	Swdt$WDT_Interrupt$29 ==.
                           000139  1028 	Swdt$WDT_Interrupt$30 ==.
                                   1029 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/wdt.c:78: }
      001C06                       1030 00104$:
                           000139  1031 	Swdt$WDT_Interrupt$31 ==.
                                   1032 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/wdt.c:79: }
                           000139  1033 	Swdt$WDT_Interrupt$32 ==.
                           000139  1034 	XG$WDT_Interrupt$0$0 ==.
      001C06 22               [24] 1035 	ret
                           00013A  1036 	Swdt$WDT_Interrupt$33 ==.
                                   1037 ;------------------------------------------------------------
                                   1038 ;Allocation info for local variables in function 'WDT_Clear'
                                   1039 ;------------------------------------------------------------
                           00013A  1040 	Swdt$WDT_Clear$34 ==.
                                   1041 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/wdt.c:89: void WDT_Clear(void)
                                   1042 ;	-----------------------------------------
                                   1043 ;	 function WDT_Clear
                                   1044 ;	-----------------------------------------
      001C07                       1045 _WDT_Clear:
                           00013A  1046 	Swdt$WDT_Clear$35 ==.
                           00013A  1047 	Swdt$WDT_Clear$36 ==.
                                   1048 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/wdt.c:91: WDT_COUNTER_CLEAR;                  /* Clear WDT counter */ 
                                   1049 ;	assignBit
      001C07 A2 AF            [12] 1050 	mov	c,_EA
      001C09 92 00            [24] 1051 	mov	_BIT_TMP,c
                                   1052 ;	assignBit
      001C0B C2 AF            [12] 1053 	clr	_EA
      001C0D 75 C7 AA         [24] 1054 	mov	_TA,#0xaa
      001C10 75 C7 55         [24] 1055 	mov	_TA,#0x55
      001C13 43 AA 40         [24] 1056 	orl	_WDCON,#0x40
                                   1057 ;	assignBit
      001C16 A2 00            [12] 1058 	mov	c,_BIT_TMP
      001C18 92 AF            [24] 1059 	mov	_EA,c
                           00014D  1060 	Swdt$WDT_Clear$37 ==.
                                   1061 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/wdt.c:92: while(WDCON&SET_BIT6);              /* Check for the WDT counter cleared */
      001C1A                       1062 00101$:
      001C1A E5 AA            [12] 1063 	mov	a,_WDCON
      001C1C 20 E6 FB         [24] 1064 	jb	acc.6,00101$
                           000152  1065 	Swdt$WDT_Clear$38 ==.
                                   1066 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/wdt.c:93: }
                           000152  1067 	Swdt$WDT_Clear$39 ==.
                           000152  1068 	XG$WDT_Clear$0$0 ==.
      001C1F 22               [24] 1069 	ret
                           000153  1070 	Swdt$WDT_Clear$40 ==.
                                   1071 	.area CSEG    (CODE)
                                   1072 	.area CONST   (CODE)
                                   1073 	.area XINIT   (CODE)
                                   1074 	.area INITIALIZER
                                   1075 	.area CABS    (ABS,CODE)
                                   1076 
                                   1077 	.area .debug_line (NOLOAD)
      00148B 00 00 01 74           1078 	.dw	0,Ldebug_line_end-Ldebug_line_start
      00148F                       1079 Ldebug_line_start:
      00148F 00 02                 1080 	.dw	2
      001491 00 00 00 A6           1081 	.dw	0,Ldebug_line_stmt-6-Ldebug_line_start
      001495 01                    1082 	.db	1
      001496 01                    1083 	.db	1
      001497 FB                    1084 	.db	-5
      001498 0F                    1085 	.db	15
      001499 0A                    1086 	.db	10
      00149A 00                    1087 	.db	0
      00149B 01                    1088 	.db	1
      00149C 01                    1089 	.db	1
      00149D 01                    1090 	.db	1
      00149E 01                    1091 	.db	1
      00149F 00                    1092 	.db	0
      0014A0 00                    1093 	.db	0
      0014A1 00                    1094 	.db	0
      0014A2 01                    1095 	.db	1
      0014A3 2F 2E 2E 2F 69 6E 63  1096 	.ascii "/../include/mcs51"
             6C 75 64 65 2F 6D 63
             73 35 31
      0014B4 00                    1097 	.db	0
      0014B5 2F 2E 2E 2F 69 6E 63  1098 	.ascii "/../include"
             6C 75 64 65
      0014C0 00                    1099 	.db	0
      0014C1 00                    1100 	.db	0
      0014C2 43 3A 2F 55 73 65 72  1101 	.ascii "C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/wdt.c"
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
             72 2F 73 72 63 2F 77
             64 74 2E 63
      001536 00                    1102 	.db	0
      001537 00                    1103 	.uleb128	0
      001538 00                    1104 	.uleb128	0
      001539 00                    1105 	.uleb128	0
      00153A 00                    1106 	.db	0
      00153B                       1107 Ldebug_line_stmt:
      00153B 00                    1108 	.db	0
      00153C 05                    1109 	.uleb128	5
      00153D 02                    1110 	.db	2
      00153E 00 00 1A CD           1111 	.dw	0,(Swdt$WDT_Open$0)
      001542 03                    1112 	.db	3
      001543 29                    1113 	.sleb128	41
      001544 01                    1114 	.db	1
      001545 09                    1115 	.db	9
      001546 00 0B                 1116 	.dw	Swdt$WDT_Open$2-Swdt$WDT_Open$0
      001548 03                    1117 	.db	3
      001549 02                    1118 	.sleb128	2
      00154A 01                    1119 	.db	1
      00154B 09                    1120 	.db	9
      00154C 00 03                 1121 	.dw	Swdt$WDT_Open$3-Swdt$WDT_Open$2
      00154E 03                    1122 	.db	3
      00154F 01                    1123 	.sleb128	1
      001550 01                    1124 	.db	1
      001551 09                    1125 	.db	9
      001552 00 04                 1126 	.dw	Swdt$WDT_Open$4-Swdt$WDT_Open$3
      001554 03                    1127 	.db	3
      001555 01                    1128 	.sleb128	1
      001556 01                    1129 	.db	1
      001557 09                    1130 	.db	9
      001558 00 02                 1131 	.dw	Swdt$WDT_Open$5-Swdt$WDT_Open$4
      00155A 03                    1132 	.db	3
      00155B 01                    1133 	.sleb128	1
      00155C 01                    1134 	.db	1
      00155D 09                    1135 	.db	9
      00155E 00 4D                 1136 	.dw	Swdt$WDT_Open$7-Swdt$WDT_Open$5
      001560 03                    1137 	.db	3
      001561 02                    1138 	.sleb128	2
      001562 01                    1139 	.db	1
      001563 09                    1140 	.db	9
      001564 00 0C                 1141 	.dw	Swdt$WDT_Open$8-Swdt$WDT_Open$7
      001566 03                    1142 	.db	3
      001567 01                    1143 	.sleb128	1
      001568 01                    1144 	.db	1
      001569 09                    1145 	.db	9
      00156A 00 12                 1146 	.dw	Swdt$WDT_Open$9-Swdt$WDT_Open$8
      00156C 03                    1147 	.db	3
      00156D 01                    1148 	.sleb128	1
      00156E 01                    1149 	.db	1
      00156F 09                    1150 	.db	9
      001570 00 14                 1151 	.dw	Swdt$WDT_Open$10-Swdt$WDT_Open$9
      001572 03                    1152 	.db	3
      001573 01                    1153 	.sleb128	1
      001574 01                    1154 	.db	1
      001575 09                    1155 	.db	9
      001576 00 14                 1156 	.dw	Swdt$WDT_Open$11-Swdt$WDT_Open$10
      001578 03                    1157 	.db	3
      001579 01                    1158 	.sleb128	1
      00157A 01                    1159 	.db	1
      00157B 09                    1160 	.db	9
      00157C 00 14                 1161 	.dw	Swdt$WDT_Open$12-Swdt$WDT_Open$11
      00157E 03                    1162 	.db	3
      00157F 01                    1163 	.sleb128	1
      001580 01                    1164 	.db	1
      001581 09                    1165 	.db	9
      001582 00 14                 1166 	.dw	Swdt$WDT_Open$13-Swdt$WDT_Open$12
      001584 03                    1167 	.db	3
      001585 01                    1168 	.sleb128	1
      001586 01                    1169 	.db	1
      001587 09                    1170 	.db	9
      001588 00 14                 1171 	.dw	Swdt$WDT_Open$14-Swdt$WDT_Open$13
      00158A 03                    1172 	.db	3
      00158B 01                    1173 	.sleb128	1
      00158C 01                    1174 	.db	1
      00158D 09                    1175 	.db	9
      00158E 00 14                 1176 	.dw	Swdt$WDT_Open$16-Swdt$WDT_Open$14
      001590 03                    1177 	.db	3
      001591 02                    1178 	.sleb128	2
      001592 01                    1179 	.db	1
      001593 09                    1180 	.db	9
      001594 00 00                 1181 	.dw	Swdt$WDT_Open$17-Swdt$WDT_Open$16
      001596 03                    1182 	.db	3
      001597 01                    1183 	.sleb128	1
      001598 01                    1184 	.db	1
      001599 09                    1185 	.db	9
      00159A 00 04                 1186 	.dw	Swdt$WDT_Open$18-Swdt$WDT_Open$17
      00159C 03                    1187 	.db	3
      00159D 01                    1188 	.sleb128	1
      00159E 01                    1189 	.db	1
      00159F 09                    1190 	.db	9
      0015A0 00 13                 1191 	.dw	Swdt$WDT_Open$19-Swdt$WDT_Open$18
      0015A2 03                    1192 	.db	3
      0015A3 01                    1193 	.sleb128	1
      0015A4 01                    1194 	.db	1
      0015A5 09                    1195 	.db	9
      0015A6 00 13                 1196 	.dw	Swdt$WDT_Open$20-Swdt$WDT_Open$19
      0015A8 03                    1197 	.db	3
      0015A9 01                    1198 	.sleb128	1
      0015AA 01                    1199 	.db	1
      0015AB 09                    1200 	.db	9
      0015AC 00 01                 1201 	.dw	1+Swdt$WDT_Open$21-Swdt$WDT_Open$20
      0015AE 00                    1202 	.db	0
      0015AF 01                    1203 	.uleb128	1
      0015B0 01                    1204 	.db	1
      0015B1 00                    1205 	.db	0
      0015B2 05                    1206 	.uleb128	5
      0015B3 02                    1207 	.db	2
      0015B4 00 00 1B EF           1208 	.dw	0,(Swdt$WDT_Interrupt$23)
      0015B8 03                    1209 	.db	3
      0015B9 C7 00                 1210 	.sleb128	71
      0015BB 01                    1211 	.db	1
      0015BC 09                    1212 	.db	9
      0015BD 00 06                 1213 	.dw	Swdt$WDT_Interrupt$25-Swdt$WDT_Interrupt$23
      0015BF 03                    1214 	.db	3
      0015C0 02                    1215 	.sleb128	2
      0015C1 01                    1216 	.db	1
      0015C2 09                    1217 	.db	9
      0015C3 00 04                 1218 	.dw	Swdt$WDT_Interrupt$27-Swdt$WDT_Interrupt$25
      0015C5 03                    1219 	.db	3
      0015C6 02                    1220 	.sleb128	2
      0015C7 01                    1221 	.db	1
      0015C8 09                    1222 	.db	9
      0015C9 00 08                 1223 	.dw	Swdt$WDT_Interrupt$28-Swdt$WDT_Interrupt$27
      0015CB 03                    1224 	.db	3
      0015CC 01                    1225 	.sleb128	1
      0015CD 01                    1226 	.db	1
      0015CE 09                    1227 	.db	9
      0015CF 00 05                 1228 	.dw	Swdt$WDT_Interrupt$30-Swdt$WDT_Interrupt$28
      0015D1 03                    1229 	.db	3
      0015D2 01                    1230 	.sleb128	1
      0015D3 01                    1231 	.db	1
      0015D4 09                    1232 	.db	9
      0015D5 00 00                 1233 	.dw	Swdt$WDT_Interrupt$31-Swdt$WDT_Interrupt$30
      0015D7 03                    1234 	.db	3
      0015D8 01                    1235 	.sleb128	1
      0015D9 01                    1236 	.db	1
      0015DA 09                    1237 	.db	9
      0015DB 00 01                 1238 	.dw	1+Swdt$WDT_Interrupt$32-Swdt$WDT_Interrupt$31
      0015DD 00                    1239 	.db	0
      0015DE 01                    1240 	.uleb128	1
      0015DF 01                    1241 	.db	1
      0015E0 00                    1242 	.db	0
      0015E1 05                    1243 	.uleb128	5
      0015E2 02                    1244 	.db	2
      0015E3 00 00 1C 07           1245 	.dw	0,(Swdt$WDT_Clear$34)
      0015E7 03                    1246 	.db	3
      0015E8 D8 00                 1247 	.sleb128	88
      0015EA 01                    1248 	.db	1
      0015EB 09                    1249 	.db	9
      0015EC 00 00                 1250 	.dw	Swdt$WDT_Clear$36-Swdt$WDT_Clear$34
      0015EE 03                    1251 	.db	3
      0015EF 02                    1252 	.sleb128	2
      0015F0 01                    1253 	.db	1
      0015F1 09                    1254 	.db	9
      0015F2 00 13                 1255 	.dw	Swdt$WDT_Clear$37-Swdt$WDT_Clear$36
      0015F4 03                    1256 	.db	3
      0015F5 01                    1257 	.sleb128	1
      0015F6 01                    1258 	.db	1
      0015F7 09                    1259 	.db	9
      0015F8 00 05                 1260 	.dw	Swdt$WDT_Clear$38-Swdt$WDT_Clear$37
      0015FA 03                    1261 	.db	3
      0015FB 01                    1262 	.sleb128	1
      0015FC 01                    1263 	.db	1
      0015FD 09                    1264 	.db	9
      0015FE 00 01                 1265 	.dw	1+Swdt$WDT_Clear$39-Swdt$WDT_Clear$38
      001600 00                    1266 	.db	0
      001601 01                    1267 	.uleb128	1
      001602 01                    1268 	.db	1
      001603                       1269 Ldebug_line_end:
                                   1270 
                                   1271 	.area .debug_loc (NOLOAD)
      000384                       1272 Ldebug_loc_start:
      000384 00 00 1C 07           1273 	.dw	0,(Swdt$WDT_Clear$35)
      000388 00 00 1C 20           1274 	.dw	0,(Swdt$WDT_Clear$40)
      00038C 00 02                 1275 	.dw	2
      00038E 86                    1276 	.db	134
      00038F 01                    1277 	.sleb128	1
      000390 00 00 00 00           1278 	.dw	0,0
      000394 00 00 00 00           1279 	.dw	0,0
      000398 00 00 1B EF           1280 	.dw	0,(Swdt$WDT_Interrupt$24)
      00039C 00 00 1C 07           1281 	.dw	0,(Swdt$WDT_Interrupt$33)
      0003A0 00 02                 1282 	.dw	2
      0003A2 86                    1283 	.db	134
      0003A3 01                    1284 	.sleb128	1
      0003A4 00 00 00 00           1285 	.dw	0,0
      0003A8 00 00 00 00           1286 	.dw	0,0
      0003AC 00 00 1A CD           1287 	.dw	0,(Swdt$WDT_Open$1)
      0003B0 00 00 1B EF           1288 	.dw	0,(Swdt$WDT_Open$22)
      0003B4 00 02                 1289 	.dw	2
      0003B6 86                    1290 	.db	134
      0003B7 01                    1291 	.sleb128	1
      0003B8 00 00 00 00           1292 	.dw	0,0
      0003BC 00 00 00 00           1293 	.dw	0,0
                                   1294 
                                   1295 	.area .debug_abbrev (NOLOAD)
      000363                       1296 Ldebug_abbrev:
      000363 01                    1297 	.uleb128	1
      000364 11                    1298 	.uleb128	17
      000365 01                    1299 	.db	1
      000366 03                    1300 	.uleb128	3
      000367 08                    1301 	.uleb128	8
      000368 10                    1302 	.uleb128	16
      000369 06                    1303 	.uleb128	6
      00036A 13                    1304 	.uleb128	19
      00036B 0B                    1305 	.uleb128	11
      00036C 25                    1306 	.uleb128	37
      00036D 08                    1307 	.uleb128	8
      00036E 00                    1308 	.uleb128	0
      00036F 00                    1309 	.uleb128	0
      000370 02                    1310 	.uleb128	2
      000371 2E                    1311 	.uleb128	46
      000372 01                    1312 	.db	1
      000373 01                    1313 	.uleb128	1
      000374 13                    1314 	.uleb128	19
      000375 03                    1315 	.uleb128	3
      000376 08                    1316 	.uleb128	8
      000377 11                    1317 	.uleb128	17
      000378 01                    1318 	.uleb128	1
      000379 12                    1319 	.uleb128	18
      00037A 01                    1320 	.uleb128	1
      00037B 3F                    1321 	.uleb128	63
      00037C 0C                    1322 	.uleb128	12
      00037D 40                    1323 	.uleb128	64
      00037E 06                    1324 	.uleb128	6
      00037F 00                    1325 	.uleb128	0
      000380 00                    1326 	.uleb128	0
      000381 03                    1327 	.uleb128	3
      000382 05                    1328 	.uleb128	5
      000383 00                    1329 	.db	0
      000384 02                    1330 	.uleb128	2
      000385 0A                    1331 	.uleb128	10
      000386 03                    1332 	.uleb128	3
      000387 08                    1333 	.uleb128	8
      000388 49                    1334 	.uleb128	73
      000389 13                    1335 	.uleb128	19
      00038A 00                    1336 	.uleb128	0
      00038B 00                    1337 	.uleb128	0
      00038C 04                    1338 	.uleb128	4
      00038D 0B                    1339 	.uleb128	11
      00038E 00                    1340 	.db	0
      00038F 11                    1341 	.uleb128	17
      000390 01                    1342 	.uleb128	1
      000391 12                    1343 	.uleb128	18
      000392 01                    1344 	.uleb128	1
      000393 00                    1345 	.uleb128	0
      000394 00                    1346 	.uleb128	0
      000395 05                    1347 	.uleb128	5
      000396 24                    1348 	.uleb128	36
      000397 00                    1349 	.db	0
      000398 03                    1350 	.uleb128	3
      000399 08                    1351 	.uleb128	8
      00039A 0B                    1352 	.uleb128	11
      00039B 0B                    1353 	.uleb128	11
      00039C 3E                    1354 	.uleb128	62
      00039D 0B                    1355 	.uleb128	11
      00039E 00                    1356 	.uleb128	0
      00039F 00                    1357 	.uleb128	0
      0003A0 06                    1358 	.uleb128	6
      0003A1 2E                    1359 	.uleb128	46
      0003A2 00                    1360 	.db	0
      0003A3 03                    1361 	.uleb128	3
      0003A4 08                    1362 	.uleb128	8
      0003A5 11                    1363 	.uleb128	17
      0003A6 01                    1364 	.uleb128	1
      0003A7 12                    1365 	.uleb128	18
      0003A8 01                    1366 	.uleb128	1
      0003A9 3F                    1367 	.uleb128	63
      0003AA 0C                    1368 	.uleb128	12
      0003AB 40                    1369 	.uleb128	64
      0003AC 06                    1370 	.uleb128	6
      0003AD 00                    1371 	.uleb128	0
      0003AE 00                    1372 	.uleb128	0
      0003AF 07                    1373 	.uleb128	7
      0003B0 34                    1374 	.uleb128	52
      0003B1 00                    1375 	.db	0
      0003B2 02                    1376 	.uleb128	2
      0003B3 0A                    1377 	.uleb128	10
      0003B4 03                    1378 	.uleb128	3
      0003B5 08                    1379 	.uleb128	8
      0003B6 3C                    1380 	.uleb128	60
      0003B7 0C                    1381 	.uleb128	12
      0003B8 3F                    1382 	.uleb128	63
      0003B9 0C                    1383 	.uleb128	12
      0003BA 49                    1384 	.uleb128	73
      0003BB 13                    1385 	.uleb128	19
      0003BC 00                    1386 	.uleb128	0
      0003BD 00                    1387 	.uleb128	0
      0003BE 08                    1388 	.uleb128	8
      0003BF 35                    1389 	.uleb128	53
      0003C0 00                    1390 	.db	0
      0003C1 49                    1391 	.uleb128	73
      0003C2 13                    1392 	.uleb128	19
      0003C3 00                    1393 	.uleb128	0
      0003C4 00                    1394 	.uleb128	0
      0003C5 09                    1395 	.uleb128	9
      0003C6 34                    1396 	.uleb128	52
      0003C7 00                    1397 	.db	0
      0003C8 02                    1398 	.uleb128	2
      0003C9 0A                    1399 	.uleb128	10
      0003CA 03                    1400 	.uleb128	3
      0003CB 08                    1401 	.uleb128	8
      0003CC 3F                    1402 	.uleb128	63
      0003CD 0C                    1403 	.uleb128	12
      0003CE 49                    1404 	.uleb128	73
      0003CF 13                    1405 	.uleb128	19
      0003D0 00                    1406 	.uleb128	0
      0003D1 00                    1407 	.uleb128	0
      0003D2 00                    1408 	.uleb128	0
                                   1409 
                                   1410 	.area .debug_info (NOLOAD)
      007714 00 00 11 05           1411 	.dw	0,Ldebug_info_end-Ldebug_info_start
      007718                       1412 Ldebug_info_start:
      007718 00 02                 1413 	.dw	2
      00771A 00 00 03 63           1414 	.dw	0,(Ldebug_abbrev)
      00771E 04                    1415 	.db	4
      00771F 01                    1416 	.uleb128	1
      007720 43 3A 2F 55 73 65 72  1417 	.ascii "C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/wdt.c"
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
             72 2F 73 72 63 2F 77
             64 74 2E 63
      007794 00                    1418 	.db	0
      007795 00 00 14 8B           1419 	.dw	0,(Ldebug_line_start+-4)
      007799 01                    1420 	.db	1
      00779A 53 44 43 43 20 76 65  1421 	.ascii "SDCC version 4.2.6 #13647"
             72 73 69 6F 6E 20 34
             2E 32 2E 36 20 23 31
             33 36 34 37
      0077B3 00                    1422 	.db	0
      0077B4 02                    1423 	.uleb128	2
      0077B5 00 00 00 D9           1424 	.dw	0,217
      0077B9 57 44 54 5F 4F 70 65  1425 	.ascii "WDT_Open"
             6E
      0077C1 00                    1426 	.db	0
      0077C2 00 00 1A CD           1427 	.dw	0,(_WDT_Open)
      0077C6 00 00 1B EF           1428 	.dw	0,(XG$WDT_Open$0$0+1)
      0077CA 01                    1429 	.db	1
      0077CB 00 00 03 AC           1430 	.dw	0,(Ldebug_loc_start+40)
      0077CF 03                    1431 	.uleb128	3
      0077D0 05                    1432 	.db	5
      0077D1 03                    1433 	.db	3
      0077D2 00 00 00 5F           1434 	.dw	0,(_WDT_Open_u8WDTDIV_65536_153)
      0077D6 75 38 57 44 54 44 49  1435 	.ascii "u8WDTDIV"
             56
      0077DE 00                    1436 	.db	0
      0077DF 00 00 00 D9           1437 	.dw	0,217
      0077E3 04                    1438 	.uleb128	4
      0077E4 00 00 1B 2E           1439 	.dw	0,(Swdt$WDT_Open$6)
      0077E8 00 00 1B C4           1440 	.dw	0,(Swdt$WDT_Open$15)
      0077EC 00                    1441 	.uleb128	0
      0077ED 05                    1442 	.uleb128	5
      0077EE 75 6E 73 69 67 6E 65  1443 	.ascii "unsigned int"
             64 20 69 6E 74
      0077FA 00                    1444 	.db	0
      0077FB 02                    1445 	.db	2
      0077FC 07                    1446 	.db	7
      0077FD 02                    1447 	.uleb128	2
      0077FE 00 00 01 27           1448 	.dw	0,295
      007802 57 44 54 5F 49 6E 74  1449 	.ascii "WDT_Interrupt"
             65 72 72 75 70 74
      00780F 00                    1450 	.db	0
      007810 00 00 1B EF           1451 	.dw	0,(_WDT_Interrupt)
      007814 00 00 1C 07           1452 	.dw	0,(XG$WDT_Interrupt$0$0+1)
      007818 01                    1453 	.db	1
      007819 00 00 03 98           1454 	.dw	0,(Ldebug_loc_start+20)
      00781D 03                    1455 	.uleb128	3
      00781E 05                    1456 	.db	5
      00781F 03                    1457 	.db	3
      007820 00 00 00 61           1458 	.dw	0,(_WDT_Interrupt_u8WDTINT_65536_156)
      007824 75 38 57 44 54 49 4E  1459 	.ascii "u8WDTINT"
             54
      00782C 00                    1460 	.db	0
      00782D 00 00 01 27           1461 	.dw	0,295
      007831 04                    1462 	.uleb128	4
      007832 00 00 1B F9           1463 	.dw	0,(Swdt$WDT_Interrupt$26)
      007836 00 00 1C 06           1464 	.dw	0,(Swdt$WDT_Interrupt$29)
      00783A 00                    1465 	.uleb128	0
      00783B 05                    1466 	.uleb128	5
      00783C 75 6E 73 69 67 6E 65  1467 	.ascii "unsigned char"
             64 20 63 68 61 72
      007849 00                    1468 	.db	0
      00784A 01                    1469 	.db	1
      00784B 08                    1470 	.db	8
      00784C 06                    1471 	.uleb128	6
      00784D 57 44 54 5F 43 6C 65  1472 	.ascii "WDT_Clear"
             61 72
      007856 00                    1473 	.db	0
      007857 00 00 1C 07           1474 	.dw	0,(_WDT_Clear)
      00785B 00 00 1C 20           1475 	.dw	0,(XG$WDT_Clear$0$0+1)
      00785F 01                    1476 	.db	1
      007860 00 00 03 84           1477 	.dw	0,(Ldebug_loc_start)
      007864 05                    1478 	.uleb128	5
      007865 5F 62 69 74           1479 	.ascii "_bit"
      007869 00                    1480 	.db	0
      00786A 01                    1481 	.db	1
      00786B 08                    1482 	.db	8
      00786C 07                    1483 	.uleb128	7
      00786D 05                    1484 	.db	5
      00786E 03                    1485 	.db	3
      00786F 00 00 00 00           1486 	.dw	0,(_BIT_TMP)
      007873 42 49 54 5F 54 4D 50  1487 	.ascii "BIT_TMP"
      00787A 00                    1488 	.db	0
      00787B 01                    1489 	.db	1
      00787C 01                    1490 	.db	1
      00787D 00 00 01 50           1491 	.dw	0,336
      007881 08                    1492 	.uleb128	8
      007882 00 00 01 27           1493 	.dw	0,295
      007886 09                    1494 	.uleb128	9
      007887 05                    1495 	.db	5
      007888 03                    1496 	.db	3
      007889 00 00 00 80           1497 	.dw	0,(_P0)
      00788D 50 30                 1498 	.ascii "P0"
      00788F 00                    1499 	.db	0
      007890 01                    1500 	.db	1
      007891 00 00 01 6D           1501 	.dw	0,365
      007895 09                    1502 	.uleb128	9
      007896 05                    1503 	.db	5
      007897 03                    1504 	.db	3
      007898 00 00 00 81           1505 	.dw	0,(_SP)
      00789C 53 50                 1506 	.ascii "SP"
      00789E 00                    1507 	.db	0
      00789F 01                    1508 	.db	1
      0078A0 00 00 01 6D           1509 	.dw	0,365
      0078A4 09                    1510 	.uleb128	9
      0078A5 05                    1511 	.db	5
      0078A6 03                    1512 	.db	3
      0078A7 00 00 00 82           1513 	.dw	0,(_DPL)
      0078AB 44 50 4C              1514 	.ascii "DPL"
      0078AE 00                    1515 	.db	0
      0078AF 01                    1516 	.db	1
      0078B0 00 00 01 6D           1517 	.dw	0,365
      0078B4 09                    1518 	.uleb128	9
      0078B5 05                    1519 	.db	5
      0078B6 03                    1520 	.db	3
      0078B7 00 00 00 83           1521 	.dw	0,(_DPH)
      0078BB 44 50 48              1522 	.ascii "DPH"
      0078BE 00                    1523 	.db	0
      0078BF 01                    1524 	.db	1
      0078C0 00 00 01 6D           1525 	.dw	0,365
      0078C4 09                    1526 	.uleb128	9
      0078C5 05                    1527 	.db	5
      0078C6 03                    1528 	.db	3
      0078C7 00 00 00 84           1529 	.dw	0,(_RCTRIM0)
      0078CB 52 43 54 52 49 4D 30  1530 	.ascii "RCTRIM0"
      0078D2 00                    1531 	.db	0
      0078D3 01                    1532 	.db	1
      0078D4 00 00 01 6D           1533 	.dw	0,365
      0078D8 09                    1534 	.uleb128	9
      0078D9 05                    1535 	.db	5
      0078DA 03                    1536 	.db	3
      0078DB 00 00 00 85           1537 	.dw	0,(_RCTRIM1)
      0078DF 52 43 54 52 49 4D 31  1538 	.ascii "RCTRIM1"
      0078E6 00                    1539 	.db	0
      0078E7 01                    1540 	.db	1
      0078E8 00 00 01 6D           1541 	.dw	0,365
      0078EC 09                    1542 	.uleb128	9
      0078ED 05                    1543 	.db	5
      0078EE 03                    1544 	.db	3
      0078EF 00 00 00 86           1545 	.dw	0,(_RWK)
      0078F3 52 57 4B              1546 	.ascii "RWK"
      0078F6 00                    1547 	.db	0
      0078F7 01                    1548 	.db	1
      0078F8 00 00 01 6D           1549 	.dw	0,365
      0078FC 09                    1550 	.uleb128	9
      0078FD 05                    1551 	.db	5
      0078FE 03                    1552 	.db	3
      0078FF 00 00 00 87           1553 	.dw	0,(_PCON)
      007903 50 43 4F 4E           1554 	.ascii "PCON"
      007907 00                    1555 	.db	0
      007908 01                    1556 	.db	1
      007909 00 00 01 6D           1557 	.dw	0,365
      00790D 09                    1558 	.uleb128	9
      00790E 05                    1559 	.db	5
      00790F 03                    1560 	.db	3
      007910 00 00 00 88           1561 	.dw	0,(_TCON)
      007914 54 43 4F 4E           1562 	.ascii "TCON"
      007918 00                    1563 	.db	0
      007919 01                    1564 	.db	1
      00791A 00 00 01 6D           1565 	.dw	0,365
      00791E 09                    1566 	.uleb128	9
      00791F 05                    1567 	.db	5
      007920 03                    1568 	.db	3
      007921 00 00 00 89           1569 	.dw	0,(_TMOD)
      007925 54 4D 4F 44           1570 	.ascii "TMOD"
      007929 00                    1571 	.db	0
      00792A 01                    1572 	.db	1
      00792B 00 00 01 6D           1573 	.dw	0,365
      00792F 09                    1574 	.uleb128	9
      007930 05                    1575 	.db	5
      007931 03                    1576 	.db	3
      007932 00 00 00 8A           1577 	.dw	0,(_TL0)
      007936 54 4C 30              1578 	.ascii "TL0"
      007939 00                    1579 	.db	0
      00793A 01                    1580 	.db	1
      00793B 00 00 01 6D           1581 	.dw	0,365
      00793F 09                    1582 	.uleb128	9
      007940 05                    1583 	.db	5
      007941 03                    1584 	.db	3
      007942 00 00 00 8B           1585 	.dw	0,(_TL1)
      007946 54 4C 31              1586 	.ascii "TL1"
      007949 00                    1587 	.db	0
      00794A 01                    1588 	.db	1
      00794B 00 00 01 6D           1589 	.dw	0,365
      00794F 09                    1590 	.uleb128	9
      007950 05                    1591 	.db	5
      007951 03                    1592 	.db	3
      007952 00 00 00 8C           1593 	.dw	0,(_TH0)
      007956 54 48 30              1594 	.ascii "TH0"
      007959 00                    1595 	.db	0
      00795A 01                    1596 	.db	1
      00795B 00 00 01 6D           1597 	.dw	0,365
      00795F 09                    1598 	.uleb128	9
      007960 05                    1599 	.db	5
      007961 03                    1600 	.db	3
      007962 00 00 00 8D           1601 	.dw	0,(_TH1)
      007966 54 48 31              1602 	.ascii "TH1"
      007969 00                    1603 	.db	0
      00796A 01                    1604 	.db	1
      00796B 00 00 01 6D           1605 	.dw	0,365
      00796F 09                    1606 	.uleb128	9
      007970 05                    1607 	.db	5
      007971 03                    1608 	.db	3
      007972 00 00 00 8E           1609 	.dw	0,(_CKCON)
      007976 43 4B 43 4F 4E        1610 	.ascii "CKCON"
      00797B 00                    1611 	.db	0
      00797C 01                    1612 	.db	1
      00797D 00 00 01 6D           1613 	.dw	0,365
      007981 09                    1614 	.uleb128	9
      007982 05                    1615 	.db	5
      007983 03                    1616 	.db	3
      007984 00 00 00 8F           1617 	.dw	0,(_WKCON)
      007988 57 4B 43 4F 4E        1618 	.ascii "WKCON"
      00798D 00                    1619 	.db	0
      00798E 01                    1620 	.db	1
      00798F 00 00 01 6D           1621 	.dw	0,365
      007993 09                    1622 	.uleb128	9
      007994 05                    1623 	.db	5
      007995 03                    1624 	.db	3
      007996 00 00 00 90           1625 	.dw	0,(_P1)
      00799A 50 31                 1626 	.ascii "P1"
      00799C 00                    1627 	.db	0
      00799D 01                    1628 	.db	1
      00799E 00 00 01 6D           1629 	.dw	0,365
      0079A2 09                    1630 	.uleb128	9
      0079A3 05                    1631 	.db	5
      0079A4 03                    1632 	.db	3
      0079A5 00 00 00 91           1633 	.dw	0,(_SFRS)
      0079A9 53 46 52 53           1634 	.ascii "SFRS"
      0079AD 00                    1635 	.db	0
      0079AE 01                    1636 	.db	1
      0079AF 00 00 01 6D           1637 	.dw	0,365
      0079B3 09                    1638 	.uleb128	9
      0079B4 05                    1639 	.db	5
      0079B5 03                    1640 	.db	3
      0079B6 00 00 00 92           1641 	.dw	0,(_CAPCON0)
      0079BA 43 41 50 43 4F 4E 30  1642 	.ascii "CAPCON0"
      0079C1 00                    1643 	.db	0
      0079C2 01                    1644 	.db	1
      0079C3 00 00 01 6D           1645 	.dw	0,365
      0079C7 09                    1646 	.uleb128	9
      0079C8 05                    1647 	.db	5
      0079C9 03                    1648 	.db	3
      0079CA 00 00 00 93           1649 	.dw	0,(_CAPCON1)
      0079CE 43 41 50 43 4F 4E 31  1650 	.ascii "CAPCON1"
      0079D5 00                    1651 	.db	0
      0079D6 01                    1652 	.db	1
      0079D7 00 00 01 6D           1653 	.dw	0,365
      0079DB 09                    1654 	.uleb128	9
      0079DC 05                    1655 	.db	5
      0079DD 03                    1656 	.db	3
      0079DE 00 00 00 94           1657 	.dw	0,(_CAPCON2)
      0079E2 43 41 50 43 4F 4E 32  1658 	.ascii "CAPCON2"
      0079E9 00                    1659 	.db	0
      0079EA 01                    1660 	.db	1
      0079EB 00 00 01 6D           1661 	.dw	0,365
      0079EF 09                    1662 	.uleb128	9
      0079F0 05                    1663 	.db	5
      0079F1 03                    1664 	.db	3
      0079F2 00 00 00 95           1665 	.dw	0,(_CKDIV)
      0079F6 43 4B 44 49 56        1666 	.ascii "CKDIV"
      0079FB 00                    1667 	.db	0
      0079FC 01                    1668 	.db	1
      0079FD 00 00 01 6D           1669 	.dw	0,365
      007A01 09                    1670 	.uleb128	9
      007A02 05                    1671 	.db	5
      007A03 03                    1672 	.db	3
      007A04 00 00 00 96           1673 	.dw	0,(_CKSWT)
      007A08 43 4B 53 57 54        1674 	.ascii "CKSWT"
      007A0D 00                    1675 	.db	0
      007A0E 01                    1676 	.db	1
      007A0F 00 00 01 6D           1677 	.dw	0,365
      007A13 09                    1678 	.uleb128	9
      007A14 05                    1679 	.db	5
      007A15 03                    1680 	.db	3
      007A16 00 00 00 97           1681 	.dw	0,(_CKEN)
      007A1A 43 4B 45 4E           1682 	.ascii "CKEN"
      007A1E 00                    1683 	.db	0
      007A1F 01                    1684 	.db	1
      007A20 00 00 01 6D           1685 	.dw	0,365
      007A24 09                    1686 	.uleb128	9
      007A25 05                    1687 	.db	5
      007A26 03                    1688 	.db	3
      007A27 00 00 00 98           1689 	.dw	0,(_SCON)
      007A2B 53 43 4F 4E           1690 	.ascii "SCON"
      007A2F 00                    1691 	.db	0
      007A30 01                    1692 	.db	1
      007A31 00 00 01 6D           1693 	.dw	0,365
      007A35 09                    1694 	.uleb128	9
      007A36 05                    1695 	.db	5
      007A37 03                    1696 	.db	3
      007A38 00 00 00 99           1697 	.dw	0,(_SBUF)
      007A3C 53 42 55 46           1698 	.ascii "SBUF"
      007A40 00                    1699 	.db	0
      007A41 01                    1700 	.db	1
      007A42 00 00 01 6D           1701 	.dw	0,365
      007A46 09                    1702 	.uleb128	9
      007A47 05                    1703 	.db	5
      007A48 03                    1704 	.db	3
      007A49 00 00 00 9A           1705 	.dw	0,(_SBUF_1)
      007A4D 53 42 55 46 5F 31     1706 	.ascii "SBUF_1"
      007A53 00                    1707 	.db	0
      007A54 01                    1708 	.db	1
      007A55 00 00 01 6D           1709 	.dw	0,365
      007A59 09                    1710 	.uleb128	9
      007A5A 05                    1711 	.db	5
      007A5B 03                    1712 	.db	3
      007A5C 00 00 00 9B           1713 	.dw	0,(_EIE)
      007A60 45 49 45              1714 	.ascii "EIE"
      007A63 00                    1715 	.db	0
      007A64 01                    1716 	.db	1
      007A65 00 00 01 6D           1717 	.dw	0,365
      007A69 09                    1718 	.uleb128	9
      007A6A 05                    1719 	.db	5
      007A6B 03                    1720 	.db	3
      007A6C 00 00 00 9C           1721 	.dw	0,(_EIE1)
      007A70 45 49 45 31           1722 	.ascii "EIE1"
      007A74 00                    1723 	.db	0
      007A75 01                    1724 	.db	1
      007A76 00 00 01 6D           1725 	.dw	0,365
      007A7A 09                    1726 	.uleb128	9
      007A7B 05                    1727 	.db	5
      007A7C 03                    1728 	.db	3
      007A7D 00 00 00 9F           1729 	.dw	0,(_CHPCON)
      007A81 43 48 50 43 4F 4E     1730 	.ascii "CHPCON"
      007A87 00                    1731 	.db	0
      007A88 01                    1732 	.db	1
      007A89 00 00 01 6D           1733 	.dw	0,365
      007A8D 09                    1734 	.uleb128	9
      007A8E 05                    1735 	.db	5
      007A8F 03                    1736 	.db	3
      007A90 00 00 00 A0           1737 	.dw	0,(_P2)
      007A94 50 32                 1738 	.ascii "P2"
      007A96 00                    1739 	.db	0
      007A97 01                    1740 	.db	1
      007A98 00 00 01 6D           1741 	.dw	0,365
      007A9C 09                    1742 	.uleb128	9
      007A9D 05                    1743 	.db	5
      007A9E 03                    1744 	.db	3
      007A9F 00 00 00 A2           1745 	.dw	0,(_AUXR1)
      007AA3 41 55 58 52 31        1746 	.ascii "AUXR1"
      007AA8 00                    1747 	.db	0
      007AA9 01                    1748 	.db	1
      007AAA 00 00 01 6D           1749 	.dw	0,365
      007AAE 09                    1750 	.uleb128	9
      007AAF 05                    1751 	.db	5
      007AB0 03                    1752 	.db	3
      007AB1 00 00 00 A3           1753 	.dw	0,(_BODCON0)
      007AB5 42 4F 44 43 4F 4E 30  1754 	.ascii "BODCON0"
      007ABC 00                    1755 	.db	0
      007ABD 01                    1756 	.db	1
      007ABE 00 00 01 6D           1757 	.dw	0,365
      007AC2 09                    1758 	.uleb128	9
      007AC3 05                    1759 	.db	5
      007AC4 03                    1760 	.db	3
      007AC5 00 00 00 A4           1761 	.dw	0,(_IAPTRG)
      007AC9 49 41 50 54 52 47     1762 	.ascii "IAPTRG"
      007ACF 00                    1763 	.db	0
      007AD0 01                    1764 	.db	1
      007AD1 00 00 01 6D           1765 	.dw	0,365
      007AD5 09                    1766 	.uleb128	9
      007AD6 05                    1767 	.db	5
      007AD7 03                    1768 	.db	3
      007AD8 00 00 00 A5           1769 	.dw	0,(_IAPUEN)
      007ADC 49 41 50 55 45 4E     1770 	.ascii "IAPUEN"
      007AE2 00                    1771 	.db	0
      007AE3 01                    1772 	.db	1
      007AE4 00 00 01 6D           1773 	.dw	0,365
      007AE8 09                    1774 	.uleb128	9
      007AE9 05                    1775 	.db	5
      007AEA 03                    1776 	.db	3
      007AEB 00 00 00 A6           1777 	.dw	0,(_IAPAL)
      007AEF 49 41 50 41 4C        1778 	.ascii "IAPAL"
      007AF4 00                    1779 	.db	0
      007AF5 01                    1780 	.db	1
      007AF6 00 00 01 6D           1781 	.dw	0,365
      007AFA 09                    1782 	.uleb128	9
      007AFB 05                    1783 	.db	5
      007AFC 03                    1784 	.db	3
      007AFD 00 00 00 A7           1785 	.dw	0,(_IAPAH)
      007B01 49 41 50 41 48        1786 	.ascii "IAPAH"
      007B06 00                    1787 	.db	0
      007B07 01                    1788 	.db	1
      007B08 00 00 01 6D           1789 	.dw	0,365
      007B0C 09                    1790 	.uleb128	9
      007B0D 05                    1791 	.db	5
      007B0E 03                    1792 	.db	3
      007B0F 00 00 00 A8           1793 	.dw	0,(_IE)
      007B13 49 45                 1794 	.ascii "IE"
      007B15 00                    1795 	.db	0
      007B16 01                    1796 	.db	1
      007B17 00 00 01 6D           1797 	.dw	0,365
      007B1B 09                    1798 	.uleb128	9
      007B1C 05                    1799 	.db	5
      007B1D 03                    1800 	.db	3
      007B1E 00 00 00 A9           1801 	.dw	0,(_SADDR)
      007B22 53 41 44 44 52        1802 	.ascii "SADDR"
      007B27 00                    1803 	.db	0
      007B28 01                    1804 	.db	1
      007B29 00 00 01 6D           1805 	.dw	0,365
      007B2D 09                    1806 	.uleb128	9
      007B2E 05                    1807 	.db	5
      007B2F 03                    1808 	.db	3
      007B30 00 00 00 AA           1809 	.dw	0,(_WDCON)
      007B34 57 44 43 4F 4E        1810 	.ascii "WDCON"
      007B39 00                    1811 	.db	0
      007B3A 01                    1812 	.db	1
      007B3B 00 00 01 6D           1813 	.dw	0,365
      007B3F 09                    1814 	.uleb128	9
      007B40 05                    1815 	.db	5
      007B41 03                    1816 	.db	3
      007B42 00 00 00 AB           1817 	.dw	0,(_BODCON1)
      007B46 42 4F 44 43 4F 4E 31  1818 	.ascii "BODCON1"
      007B4D 00                    1819 	.db	0
      007B4E 01                    1820 	.db	1
      007B4F 00 00 01 6D           1821 	.dw	0,365
      007B53 09                    1822 	.uleb128	9
      007B54 05                    1823 	.db	5
      007B55 03                    1824 	.db	3
      007B56 00 00 00 AC           1825 	.dw	0,(_P3M1)
      007B5A 50 33 4D 31           1826 	.ascii "P3M1"
      007B5E 00                    1827 	.db	0
      007B5F 01                    1828 	.db	1
      007B60 00 00 01 6D           1829 	.dw	0,365
      007B64 09                    1830 	.uleb128	9
      007B65 05                    1831 	.db	5
      007B66 03                    1832 	.db	3
      007B67 00 00 00 AC           1833 	.dw	0,(_P3S)
      007B6B 50 33 53              1834 	.ascii "P3S"
      007B6E 00                    1835 	.db	0
      007B6F 01                    1836 	.db	1
      007B70 00 00 01 6D           1837 	.dw	0,365
      007B74 09                    1838 	.uleb128	9
      007B75 05                    1839 	.db	5
      007B76 03                    1840 	.db	3
      007B77 00 00 00 AD           1841 	.dw	0,(_P3M2)
      007B7B 50 33 4D 32           1842 	.ascii "P3M2"
      007B7F 00                    1843 	.db	0
      007B80 01                    1844 	.db	1
      007B81 00 00 01 6D           1845 	.dw	0,365
      007B85 09                    1846 	.uleb128	9
      007B86 05                    1847 	.db	5
      007B87 03                    1848 	.db	3
      007B88 00 00 00 AD           1849 	.dw	0,(_P3SR)
      007B8C 50 33 53 52           1850 	.ascii "P3SR"
      007B90 00                    1851 	.db	0
      007B91 01                    1852 	.db	1
      007B92 00 00 01 6D           1853 	.dw	0,365
      007B96 09                    1854 	.uleb128	9
      007B97 05                    1855 	.db	5
      007B98 03                    1856 	.db	3
      007B99 00 00 00 AE           1857 	.dw	0,(_IAPFD)
      007B9D 49 41 50 46 44        1858 	.ascii "IAPFD"
      007BA2 00                    1859 	.db	0
      007BA3 01                    1860 	.db	1
      007BA4 00 00 01 6D           1861 	.dw	0,365
      007BA8 09                    1862 	.uleb128	9
      007BA9 05                    1863 	.db	5
      007BAA 03                    1864 	.db	3
      007BAB 00 00 00 AF           1865 	.dw	0,(_IAPCN)
      007BAF 49 41 50 43 4E        1866 	.ascii "IAPCN"
      007BB4 00                    1867 	.db	0
      007BB5 01                    1868 	.db	1
      007BB6 00 00 01 6D           1869 	.dw	0,365
      007BBA 09                    1870 	.uleb128	9
      007BBB 05                    1871 	.db	5
      007BBC 03                    1872 	.db	3
      007BBD 00 00 00 B0           1873 	.dw	0,(_P3)
      007BC1 50 33                 1874 	.ascii "P3"
      007BC3 00                    1875 	.db	0
      007BC4 01                    1876 	.db	1
      007BC5 00 00 01 6D           1877 	.dw	0,365
      007BC9 09                    1878 	.uleb128	9
      007BCA 05                    1879 	.db	5
      007BCB 03                    1880 	.db	3
      007BCC 00 00 00 B1           1881 	.dw	0,(_P0M1)
      007BD0 50 30 4D 31           1882 	.ascii "P0M1"
      007BD4 00                    1883 	.db	0
      007BD5 01                    1884 	.db	1
      007BD6 00 00 01 6D           1885 	.dw	0,365
      007BDA 09                    1886 	.uleb128	9
      007BDB 05                    1887 	.db	5
      007BDC 03                    1888 	.db	3
      007BDD 00 00 00 B1           1889 	.dw	0,(_P0S)
      007BE1 50 30 53              1890 	.ascii "P0S"
      007BE4 00                    1891 	.db	0
      007BE5 01                    1892 	.db	1
      007BE6 00 00 01 6D           1893 	.dw	0,365
      007BEA 09                    1894 	.uleb128	9
      007BEB 05                    1895 	.db	5
      007BEC 03                    1896 	.db	3
      007BED 00 00 00 B2           1897 	.dw	0,(_P0M2)
      007BF1 50 30 4D 32           1898 	.ascii "P0M2"
      007BF5 00                    1899 	.db	0
      007BF6 01                    1900 	.db	1
      007BF7 00 00 01 6D           1901 	.dw	0,365
      007BFB 09                    1902 	.uleb128	9
      007BFC 05                    1903 	.db	5
      007BFD 03                    1904 	.db	3
      007BFE 00 00 00 B2           1905 	.dw	0,(_P0SR)
      007C02 50 30 53 52           1906 	.ascii "P0SR"
      007C06 00                    1907 	.db	0
      007C07 01                    1908 	.db	1
      007C08 00 00 01 6D           1909 	.dw	0,365
      007C0C 09                    1910 	.uleb128	9
      007C0D 05                    1911 	.db	5
      007C0E 03                    1912 	.db	3
      007C0F 00 00 00 B3           1913 	.dw	0,(_P1M1)
      007C13 50 31 4D 31           1914 	.ascii "P1M1"
      007C17 00                    1915 	.db	0
      007C18 01                    1916 	.db	1
      007C19 00 00 01 6D           1917 	.dw	0,365
      007C1D 09                    1918 	.uleb128	9
      007C1E 05                    1919 	.db	5
      007C1F 03                    1920 	.db	3
      007C20 00 00 00 B3           1921 	.dw	0,(_P1S)
      007C24 50 31 53              1922 	.ascii "P1S"
      007C27 00                    1923 	.db	0
      007C28 01                    1924 	.db	1
      007C29 00 00 01 6D           1925 	.dw	0,365
      007C2D 09                    1926 	.uleb128	9
      007C2E 05                    1927 	.db	5
      007C2F 03                    1928 	.db	3
      007C30 00 00 00 B4           1929 	.dw	0,(_P1M2)
      007C34 50 31 4D 32           1930 	.ascii "P1M2"
      007C38 00                    1931 	.db	0
      007C39 01                    1932 	.db	1
      007C3A 00 00 01 6D           1933 	.dw	0,365
      007C3E 09                    1934 	.uleb128	9
      007C3F 05                    1935 	.db	5
      007C40 03                    1936 	.db	3
      007C41 00 00 00 B4           1937 	.dw	0,(_P1SR)
      007C45 50 31 53 52           1938 	.ascii "P1SR"
      007C49 00                    1939 	.db	0
      007C4A 01                    1940 	.db	1
      007C4B 00 00 01 6D           1941 	.dw	0,365
      007C4F 09                    1942 	.uleb128	9
      007C50 05                    1943 	.db	5
      007C51 03                    1944 	.db	3
      007C52 00 00 00 B5           1945 	.dw	0,(_P2S)
      007C56 50 32 53              1946 	.ascii "P2S"
      007C59 00                    1947 	.db	0
      007C5A 01                    1948 	.db	1
      007C5B 00 00 01 6D           1949 	.dw	0,365
      007C5F 09                    1950 	.uleb128	9
      007C60 05                    1951 	.db	5
      007C61 03                    1952 	.db	3
      007C62 00 00 00 B7           1953 	.dw	0,(_IPH)
      007C66 49 50 48              1954 	.ascii "IPH"
      007C69 00                    1955 	.db	0
      007C6A 01                    1956 	.db	1
      007C6B 00 00 01 6D           1957 	.dw	0,365
      007C6F 09                    1958 	.uleb128	9
      007C70 05                    1959 	.db	5
      007C71 03                    1960 	.db	3
      007C72 00 00 00 B7           1961 	.dw	0,(_PWMINTC)
      007C76 50 57 4D 49 4E 54 43  1962 	.ascii "PWMINTC"
      007C7D 00                    1963 	.db	0
      007C7E 01                    1964 	.db	1
      007C7F 00 00 01 6D           1965 	.dw	0,365
      007C83 09                    1966 	.uleb128	9
      007C84 05                    1967 	.db	5
      007C85 03                    1968 	.db	3
      007C86 00 00 00 B8           1969 	.dw	0,(_IP)
      007C8A 49 50                 1970 	.ascii "IP"
      007C8C 00                    1971 	.db	0
      007C8D 01                    1972 	.db	1
      007C8E 00 00 01 6D           1973 	.dw	0,365
      007C92 09                    1974 	.uleb128	9
      007C93 05                    1975 	.db	5
      007C94 03                    1976 	.db	3
      007C95 00 00 00 B9           1977 	.dw	0,(_SADEN)
      007C99 53 41 44 45 4E        1978 	.ascii "SADEN"
      007C9E 00                    1979 	.db	0
      007C9F 01                    1980 	.db	1
      007CA0 00 00 01 6D           1981 	.dw	0,365
      007CA4 09                    1982 	.uleb128	9
      007CA5 05                    1983 	.db	5
      007CA6 03                    1984 	.db	3
      007CA7 00 00 00 BA           1985 	.dw	0,(_SADEN_1)
      007CAB 53 41 44 45 4E 5F 31  1986 	.ascii "SADEN_1"
      007CB2 00                    1987 	.db	0
      007CB3 01                    1988 	.db	1
      007CB4 00 00 01 6D           1989 	.dw	0,365
      007CB8 09                    1990 	.uleb128	9
      007CB9 05                    1991 	.db	5
      007CBA 03                    1992 	.db	3
      007CBB 00 00 00 BB           1993 	.dw	0,(_SADDR_1)
      007CBF 53 41 44 44 52 5F 31  1994 	.ascii "SADDR_1"
      007CC6 00                    1995 	.db	0
      007CC7 01                    1996 	.db	1
      007CC8 00 00 01 6D           1997 	.dw	0,365
      007CCC 09                    1998 	.uleb128	9
      007CCD 05                    1999 	.db	5
      007CCE 03                    2000 	.db	3
      007CCF 00 00 00 BC           2001 	.dw	0,(_I2DAT)
      007CD3 49 32 44 41 54        2002 	.ascii "I2DAT"
      007CD8 00                    2003 	.db	0
      007CD9 01                    2004 	.db	1
      007CDA 00 00 01 6D           2005 	.dw	0,365
      007CDE 09                    2006 	.uleb128	9
      007CDF 05                    2007 	.db	5
      007CE0 03                    2008 	.db	3
      007CE1 00 00 00 BD           2009 	.dw	0,(_I2STAT)
      007CE5 49 32 53 54 41 54     2010 	.ascii "I2STAT"
      007CEB 00                    2011 	.db	0
      007CEC 01                    2012 	.db	1
      007CED 00 00 01 6D           2013 	.dw	0,365
      007CF1 09                    2014 	.uleb128	9
      007CF2 05                    2015 	.db	5
      007CF3 03                    2016 	.db	3
      007CF4 00 00 00 BE           2017 	.dw	0,(_I2CLK)
      007CF8 49 32 43 4C 4B        2018 	.ascii "I2CLK"
      007CFD 00                    2019 	.db	0
      007CFE 01                    2020 	.db	1
      007CFF 00 00 01 6D           2021 	.dw	0,365
      007D03 09                    2022 	.uleb128	9
      007D04 05                    2023 	.db	5
      007D05 03                    2024 	.db	3
      007D06 00 00 00 BF           2025 	.dw	0,(_I2TOC)
      007D0A 49 32 54 4F 43        2026 	.ascii "I2TOC"
      007D0F 00                    2027 	.db	0
      007D10 01                    2028 	.db	1
      007D11 00 00 01 6D           2029 	.dw	0,365
      007D15 09                    2030 	.uleb128	9
      007D16 05                    2031 	.db	5
      007D17 03                    2032 	.db	3
      007D18 00 00 00 C0           2033 	.dw	0,(_I2CON)
      007D1C 49 32 43 4F 4E        2034 	.ascii "I2CON"
      007D21 00                    2035 	.db	0
      007D22 01                    2036 	.db	1
      007D23 00 00 01 6D           2037 	.dw	0,365
      007D27 09                    2038 	.uleb128	9
      007D28 05                    2039 	.db	5
      007D29 03                    2040 	.db	3
      007D2A 00 00 00 C1           2041 	.dw	0,(_I2ADDR)
      007D2E 49 32 41 44 44 52     2042 	.ascii "I2ADDR"
      007D34 00                    2043 	.db	0
      007D35 01                    2044 	.db	1
      007D36 00 00 01 6D           2045 	.dw	0,365
      007D3A 09                    2046 	.uleb128	9
      007D3B 05                    2047 	.db	5
      007D3C 03                    2048 	.db	3
      007D3D 00 00 00 C2           2049 	.dw	0,(_ADCRL)
      007D41 41 44 43 52 4C        2050 	.ascii "ADCRL"
      007D46 00                    2051 	.db	0
      007D47 01                    2052 	.db	1
      007D48 00 00 01 6D           2053 	.dw	0,365
      007D4C 09                    2054 	.uleb128	9
      007D4D 05                    2055 	.db	5
      007D4E 03                    2056 	.db	3
      007D4F 00 00 00 C3           2057 	.dw	0,(_ADCRH)
      007D53 41 44 43 52 48        2058 	.ascii "ADCRH"
      007D58 00                    2059 	.db	0
      007D59 01                    2060 	.db	1
      007D5A 00 00 01 6D           2061 	.dw	0,365
      007D5E 09                    2062 	.uleb128	9
      007D5F 05                    2063 	.db	5
      007D60 03                    2064 	.db	3
      007D61 00 00 00 C4           2065 	.dw	0,(_T3CON)
      007D65 54 33 43 4F 4E        2066 	.ascii "T3CON"
      007D6A 00                    2067 	.db	0
      007D6B 01                    2068 	.db	1
      007D6C 00 00 01 6D           2069 	.dw	0,365
      007D70 09                    2070 	.uleb128	9
      007D71 05                    2071 	.db	5
      007D72 03                    2072 	.db	3
      007D73 00 00 00 C4           2073 	.dw	0,(_PWM4H)
      007D77 50 57 4D 34 48        2074 	.ascii "PWM4H"
      007D7C 00                    2075 	.db	0
      007D7D 01                    2076 	.db	1
      007D7E 00 00 01 6D           2077 	.dw	0,365
      007D82 09                    2078 	.uleb128	9
      007D83 05                    2079 	.db	5
      007D84 03                    2080 	.db	3
      007D85 00 00 00 C5           2081 	.dw	0,(_RL3)
      007D89 52 4C 33              2082 	.ascii "RL3"
      007D8C 00                    2083 	.db	0
      007D8D 01                    2084 	.db	1
      007D8E 00 00 01 6D           2085 	.dw	0,365
      007D92 09                    2086 	.uleb128	9
      007D93 05                    2087 	.db	5
      007D94 03                    2088 	.db	3
      007D95 00 00 00 C5           2089 	.dw	0,(_PWM5H)
      007D99 50 57 4D 35 48        2090 	.ascii "PWM5H"
      007D9E 00                    2091 	.db	0
      007D9F 01                    2092 	.db	1
      007DA0 00 00 01 6D           2093 	.dw	0,365
      007DA4 09                    2094 	.uleb128	9
      007DA5 05                    2095 	.db	5
      007DA6 03                    2096 	.db	3
      007DA7 00 00 00 C6           2097 	.dw	0,(_RH3)
      007DAB 52 48 33              2098 	.ascii "RH3"
      007DAE 00                    2099 	.db	0
      007DAF 01                    2100 	.db	1
      007DB0 00 00 01 6D           2101 	.dw	0,365
      007DB4 09                    2102 	.uleb128	9
      007DB5 05                    2103 	.db	5
      007DB6 03                    2104 	.db	3
      007DB7 00 00 00 C6           2105 	.dw	0,(_PIOCON1)
      007DBB 50 49 4F 43 4F 4E 31  2106 	.ascii "PIOCON1"
      007DC2 00                    2107 	.db	0
      007DC3 01                    2108 	.db	1
      007DC4 00 00 01 6D           2109 	.dw	0,365
      007DC8 09                    2110 	.uleb128	9
      007DC9 05                    2111 	.db	5
      007DCA 03                    2112 	.db	3
      007DCB 00 00 00 C7           2113 	.dw	0,(_TA)
      007DCF 54 41                 2114 	.ascii "TA"
      007DD1 00                    2115 	.db	0
      007DD2 01                    2116 	.db	1
      007DD3 00 00 01 6D           2117 	.dw	0,365
      007DD7 09                    2118 	.uleb128	9
      007DD8 05                    2119 	.db	5
      007DD9 03                    2120 	.db	3
      007DDA 00 00 00 C8           2121 	.dw	0,(_T2CON)
      007DDE 54 32 43 4F 4E        2122 	.ascii "T2CON"
      007DE3 00                    2123 	.db	0
      007DE4 01                    2124 	.db	1
      007DE5 00 00 01 6D           2125 	.dw	0,365
      007DE9 09                    2126 	.uleb128	9
      007DEA 05                    2127 	.db	5
      007DEB 03                    2128 	.db	3
      007DEC 00 00 00 C9           2129 	.dw	0,(_T2MOD)
      007DF0 54 32 4D 4F 44        2130 	.ascii "T2MOD"
      007DF5 00                    2131 	.db	0
      007DF6 01                    2132 	.db	1
      007DF7 00 00 01 6D           2133 	.dw	0,365
      007DFB 09                    2134 	.uleb128	9
      007DFC 05                    2135 	.db	5
      007DFD 03                    2136 	.db	3
      007DFE 00 00 00 CA           2137 	.dw	0,(_RCMP2L)
      007E02 52 43 4D 50 32 4C     2138 	.ascii "RCMP2L"
      007E08 00                    2139 	.db	0
      007E09 01                    2140 	.db	1
      007E0A 00 00 01 6D           2141 	.dw	0,365
      007E0E 09                    2142 	.uleb128	9
      007E0F 05                    2143 	.db	5
      007E10 03                    2144 	.db	3
      007E11 00 00 00 CB           2145 	.dw	0,(_RCMP2H)
      007E15 52 43 4D 50 32 48     2146 	.ascii "RCMP2H"
      007E1B 00                    2147 	.db	0
      007E1C 01                    2148 	.db	1
      007E1D 00 00 01 6D           2149 	.dw	0,365
      007E21 09                    2150 	.uleb128	9
      007E22 05                    2151 	.db	5
      007E23 03                    2152 	.db	3
      007E24 00 00 00 CC           2153 	.dw	0,(_TL2)
      007E28 54 4C 32              2154 	.ascii "TL2"
      007E2B 00                    2155 	.db	0
      007E2C 01                    2156 	.db	1
      007E2D 00 00 01 6D           2157 	.dw	0,365
      007E31 09                    2158 	.uleb128	9
      007E32 05                    2159 	.db	5
      007E33 03                    2160 	.db	3
      007E34 00 00 00 CC           2161 	.dw	0,(_PWM4L)
      007E38 50 57 4D 34 4C        2162 	.ascii "PWM4L"
      007E3D 00                    2163 	.db	0
      007E3E 01                    2164 	.db	1
      007E3F 00 00 01 6D           2165 	.dw	0,365
      007E43 09                    2166 	.uleb128	9
      007E44 05                    2167 	.db	5
      007E45 03                    2168 	.db	3
      007E46 00 00 00 CD           2169 	.dw	0,(_TH2)
      007E4A 54 48 32              2170 	.ascii "TH2"
      007E4D 00                    2171 	.db	0
      007E4E 01                    2172 	.db	1
      007E4F 00 00 01 6D           2173 	.dw	0,365
      007E53 09                    2174 	.uleb128	9
      007E54 05                    2175 	.db	5
      007E55 03                    2176 	.db	3
      007E56 00 00 00 CD           2177 	.dw	0,(_PWM5L)
      007E5A 50 57 4D 35 4C        2178 	.ascii "PWM5L"
      007E5F 00                    2179 	.db	0
      007E60 01                    2180 	.db	1
      007E61 00 00 01 6D           2181 	.dw	0,365
      007E65 09                    2182 	.uleb128	9
      007E66 05                    2183 	.db	5
      007E67 03                    2184 	.db	3
      007E68 00 00 00 CE           2185 	.dw	0,(_ADCMPL)
      007E6C 41 44 43 4D 50 4C     2186 	.ascii "ADCMPL"
      007E72 00                    2187 	.db	0
      007E73 01                    2188 	.db	1
      007E74 00 00 01 6D           2189 	.dw	0,365
      007E78 09                    2190 	.uleb128	9
      007E79 05                    2191 	.db	5
      007E7A 03                    2192 	.db	3
      007E7B 00 00 00 CF           2193 	.dw	0,(_ADCMPH)
      007E7F 41 44 43 4D 50 48     2194 	.ascii "ADCMPH"
      007E85 00                    2195 	.db	0
      007E86 01                    2196 	.db	1
      007E87 00 00 01 6D           2197 	.dw	0,365
      007E8B 09                    2198 	.uleb128	9
      007E8C 05                    2199 	.db	5
      007E8D 03                    2200 	.db	3
      007E8E 00 00 00 D0           2201 	.dw	0,(_PSW)
      007E92 50 53 57              2202 	.ascii "PSW"
      007E95 00                    2203 	.db	0
      007E96 01                    2204 	.db	1
      007E97 00 00 01 6D           2205 	.dw	0,365
      007E9B 09                    2206 	.uleb128	9
      007E9C 05                    2207 	.db	5
      007E9D 03                    2208 	.db	3
      007E9E 00 00 00 D1           2209 	.dw	0,(_PWMPH)
      007EA2 50 57 4D 50 48        2210 	.ascii "PWMPH"
      007EA7 00                    2211 	.db	0
      007EA8 01                    2212 	.db	1
      007EA9 00 00 01 6D           2213 	.dw	0,365
      007EAD 09                    2214 	.uleb128	9
      007EAE 05                    2215 	.db	5
      007EAF 03                    2216 	.db	3
      007EB0 00 00 00 D2           2217 	.dw	0,(_PWM0H)
      007EB4 50 57 4D 30 48        2218 	.ascii "PWM0H"
      007EB9 00                    2219 	.db	0
      007EBA 01                    2220 	.db	1
      007EBB 00 00 01 6D           2221 	.dw	0,365
      007EBF 09                    2222 	.uleb128	9
      007EC0 05                    2223 	.db	5
      007EC1 03                    2224 	.db	3
      007EC2 00 00 00 D3           2225 	.dw	0,(_PWM1H)
      007EC6 50 57 4D 31 48        2226 	.ascii "PWM1H"
      007ECB 00                    2227 	.db	0
      007ECC 01                    2228 	.db	1
      007ECD 00 00 01 6D           2229 	.dw	0,365
      007ED1 09                    2230 	.uleb128	9
      007ED2 05                    2231 	.db	5
      007ED3 03                    2232 	.db	3
      007ED4 00 00 00 D4           2233 	.dw	0,(_PWM2H)
      007ED8 50 57 4D 32 48        2234 	.ascii "PWM2H"
      007EDD 00                    2235 	.db	0
      007EDE 01                    2236 	.db	1
      007EDF 00 00 01 6D           2237 	.dw	0,365
      007EE3 09                    2238 	.uleb128	9
      007EE4 05                    2239 	.db	5
      007EE5 03                    2240 	.db	3
      007EE6 00 00 00 D5           2241 	.dw	0,(_PWM3H)
      007EEA 50 57 4D 33 48        2242 	.ascii "PWM3H"
      007EEF 00                    2243 	.db	0
      007EF0 01                    2244 	.db	1
      007EF1 00 00 01 6D           2245 	.dw	0,365
      007EF5 09                    2246 	.uleb128	9
      007EF6 05                    2247 	.db	5
      007EF7 03                    2248 	.db	3
      007EF8 00 00 00 D6           2249 	.dw	0,(_PNP)
      007EFC 50 4E 50              2250 	.ascii "PNP"
      007EFF 00                    2251 	.db	0
      007F00 01                    2252 	.db	1
      007F01 00 00 01 6D           2253 	.dw	0,365
      007F05 09                    2254 	.uleb128	9
      007F06 05                    2255 	.db	5
      007F07 03                    2256 	.db	3
      007F08 00 00 00 D7           2257 	.dw	0,(_FBD)
      007F0C 46 42 44              2258 	.ascii "FBD"
      007F0F 00                    2259 	.db	0
      007F10 01                    2260 	.db	1
      007F11 00 00 01 6D           2261 	.dw	0,365
      007F15 09                    2262 	.uleb128	9
      007F16 05                    2263 	.db	5
      007F17 03                    2264 	.db	3
      007F18 00 00 00 D8           2265 	.dw	0,(_PWMCON0)
      007F1C 50 57 4D 43 4F 4E 30  2266 	.ascii "PWMCON0"
      007F23 00                    2267 	.db	0
      007F24 01                    2268 	.db	1
      007F25 00 00 01 6D           2269 	.dw	0,365
      007F29 09                    2270 	.uleb128	9
      007F2A 05                    2271 	.db	5
      007F2B 03                    2272 	.db	3
      007F2C 00 00 00 D9           2273 	.dw	0,(_PWMPL)
      007F30 50 57 4D 50 4C        2274 	.ascii "PWMPL"
      007F35 00                    2275 	.db	0
      007F36 01                    2276 	.db	1
      007F37 00 00 01 6D           2277 	.dw	0,365
      007F3B 09                    2278 	.uleb128	9
      007F3C 05                    2279 	.db	5
      007F3D 03                    2280 	.db	3
      007F3E 00 00 00 DA           2281 	.dw	0,(_PWM0L)
      007F42 50 57 4D 30 4C        2282 	.ascii "PWM0L"
      007F47 00                    2283 	.db	0
      007F48 01                    2284 	.db	1
      007F49 00 00 01 6D           2285 	.dw	0,365
      007F4D 09                    2286 	.uleb128	9
      007F4E 05                    2287 	.db	5
      007F4F 03                    2288 	.db	3
      007F50 00 00 00 DB           2289 	.dw	0,(_PWM1L)
      007F54 50 57 4D 31 4C        2290 	.ascii "PWM1L"
      007F59 00                    2291 	.db	0
      007F5A 01                    2292 	.db	1
      007F5B 00 00 01 6D           2293 	.dw	0,365
      007F5F 09                    2294 	.uleb128	9
      007F60 05                    2295 	.db	5
      007F61 03                    2296 	.db	3
      007F62 00 00 00 DC           2297 	.dw	0,(_PWM2L)
      007F66 50 57 4D 32 4C        2298 	.ascii "PWM2L"
      007F6B 00                    2299 	.db	0
      007F6C 01                    2300 	.db	1
      007F6D 00 00 01 6D           2301 	.dw	0,365
      007F71 09                    2302 	.uleb128	9
      007F72 05                    2303 	.db	5
      007F73 03                    2304 	.db	3
      007F74 00 00 00 DD           2305 	.dw	0,(_PWM3L)
      007F78 50 57 4D 33 4C        2306 	.ascii "PWM3L"
      007F7D 00                    2307 	.db	0
      007F7E 01                    2308 	.db	1
      007F7F 00 00 01 6D           2309 	.dw	0,365
      007F83 09                    2310 	.uleb128	9
      007F84 05                    2311 	.db	5
      007F85 03                    2312 	.db	3
      007F86 00 00 00 DE           2313 	.dw	0,(_PIOCON0)
      007F8A 50 49 4F 43 4F 4E 30  2314 	.ascii "PIOCON0"
      007F91 00                    2315 	.db	0
      007F92 01                    2316 	.db	1
      007F93 00 00 01 6D           2317 	.dw	0,365
      007F97 09                    2318 	.uleb128	9
      007F98 05                    2319 	.db	5
      007F99 03                    2320 	.db	3
      007F9A 00 00 00 DF           2321 	.dw	0,(_PWMCON1)
      007F9E 50 57 4D 43 4F 4E 31  2322 	.ascii "PWMCON1"
      007FA5 00                    2323 	.db	0
      007FA6 01                    2324 	.db	1
      007FA7 00 00 01 6D           2325 	.dw	0,365
      007FAB 09                    2326 	.uleb128	9
      007FAC 05                    2327 	.db	5
      007FAD 03                    2328 	.db	3
      007FAE 00 00 00 E0           2329 	.dw	0,(_ACC)
      007FB2 41 43 43              2330 	.ascii "ACC"
      007FB5 00                    2331 	.db	0
      007FB6 01                    2332 	.db	1
      007FB7 00 00 01 6D           2333 	.dw	0,365
      007FBB 09                    2334 	.uleb128	9
      007FBC 05                    2335 	.db	5
      007FBD 03                    2336 	.db	3
      007FBE 00 00 00 E1           2337 	.dw	0,(_ADCCON1)
      007FC2 41 44 43 43 4F 4E 31  2338 	.ascii "ADCCON1"
      007FC9 00                    2339 	.db	0
      007FCA 01                    2340 	.db	1
      007FCB 00 00 01 6D           2341 	.dw	0,365
      007FCF 09                    2342 	.uleb128	9
      007FD0 05                    2343 	.db	5
      007FD1 03                    2344 	.db	3
      007FD2 00 00 00 E2           2345 	.dw	0,(_ADCCON2)
      007FD6 41 44 43 43 4F 4E 32  2346 	.ascii "ADCCON2"
      007FDD 00                    2347 	.db	0
      007FDE 01                    2348 	.db	1
      007FDF 00 00 01 6D           2349 	.dw	0,365
      007FE3 09                    2350 	.uleb128	9
      007FE4 05                    2351 	.db	5
      007FE5 03                    2352 	.db	3
      007FE6 00 00 00 E3           2353 	.dw	0,(_ADCDLY)
      007FEA 41 44 43 44 4C 59     2354 	.ascii "ADCDLY"
      007FF0 00                    2355 	.db	0
      007FF1 01                    2356 	.db	1
      007FF2 00 00 01 6D           2357 	.dw	0,365
      007FF6 09                    2358 	.uleb128	9
      007FF7 05                    2359 	.db	5
      007FF8 03                    2360 	.db	3
      007FF9 00 00 00 E4           2361 	.dw	0,(_C0L)
      007FFD 43 30 4C              2362 	.ascii "C0L"
      008000 00                    2363 	.db	0
      008001 01                    2364 	.db	1
      008002 00 00 01 6D           2365 	.dw	0,365
      008006 09                    2366 	.uleb128	9
      008007 05                    2367 	.db	5
      008008 03                    2368 	.db	3
      008009 00 00 00 E5           2369 	.dw	0,(_C0H)
      00800D 43 30 48              2370 	.ascii "C0H"
      008010 00                    2371 	.db	0
      008011 01                    2372 	.db	1
      008012 00 00 01 6D           2373 	.dw	0,365
      008016 09                    2374 	.uleb128	9
      008017 05                    2375 	.db	5
      008018 03                    2376 	.db	3
      008019 00 00 00 E6           2377 	.dw	0,(_C1L)
      00801D 43 31 4C              2378 	.ascii "C1L"
      008020 00                    2379 	.db	0
      008021 01                    2380 	.db	1
      008022 00 00 01 6D           2381 	.dw	0,365
      008026 09                    2382 	.uleb128	9
      008027 05                    2383 	.db	5
      008028 03                    2384 	.db	3
      008029 00 00 00 E7           2385 	.dw	0,(_C1H)
      00802D 43 31 48              2386 	.ascii "C1H"
      008030 00                    2387 	.db	0
      008031 01                    2388 	.db	1
      008032 00 00 01 6D           2389 	.dw	0,365
      008036 09                    2390 	.uleb128	9
      008037 05                    2391 	.db	5
      008038 03                    2392 	.db	3
      008039 00 00 00 E8           2393 	.dw	0,(_ADCCON0)
      00803D 41 44 43 43 4F 4E 30  2394 	.ascii "ADCCON0"
      008044 00                    2395 	.db	0
      008045 01                    2396 	.db	1
      008046 00 00 01 6D           2397 	.dw	0,365
      00804A 09                    2398 	.uleb128	9
      00804B 05                    2399 	.db	5
      00804C 03                    2400 	.db	3
      00804D 00 00 00 E9           2401 	.dw	0,(_PICON)
      008051 50 49 43 4F 4E        2402 	.ascii "PICON"
      008056 00                    2403 	.db	0
      008057 01                    2404 	.db	1
      008058 00 00 01 6D           2405 	.dw	0,365
      00805C 09                    2406 	.uleb128	9
      00805D 05                    2407 	.db	5
      00805E 03                    2408 	.db	3
      00805F 00 00 00 EA           2409 	.dw	0,(_PINEN)
      008063 50 49 4E 45 4E        2410 	.ascii "PINEN"
      008068 00                    2411 	.db	0
      008069 01                    2412 	.db	1
      00806A 00 00 01 6D           2413 	.dw	0,365
      00806E 09                    2414 	.uleb128	9
      00806F 05                    2415 	.db	5
      008070 03                    2416 	.db	3
      008071 00 00 00 EB           2417 	.dw	0,(_PIPEN)
      008075 50 49 50 45 4E        2418 	.ascii "PIPEN"
      00807A 00                    2419 	.db	0
      00807B 01                    2420 	.db	1
      00807C 00 00 01 6D           2421 	.dw	0,365
      008080 09                    2422 	.uleb128	9
      008081 05                    2423 	.db	5
      008082 03                    2424 	.db	3
      008083 00 00 00 EC           2425 	.dw	0,(_PIF)
      008087 50 49 46              2426 	.ascii "PIF"
      00808A 00                    2427 	.db	0
      00808B 01                    2428 	.db	1
      00808C 00 00 01 6D           2429 	.dw	0,365
      008090 09                    2430 	.uleb128	9
      008091 05                    2431 	.db	5
      008092 03                    2432 	.db	3
      008093 00 00 00 ED           2433 	.dw	0,(_C2L)
      008097 43 32 4C              2434 	.ascii "C2L"
      00809A 00                    2435 	.db	0
      00809B 01                    2436 	.db	1
      00809C 00 00 01 6D           2437 	.dw	0,365
      0080A0 09                    2438 	.uleb128	9
      0080A1 05                    2439 	.db	5
      0080A2 03                    2440 	.db	3
      0080A3 00 00 00 EE           2441 	.dw	0,(_C2H)
      0080A7 43 32 48              2442 	.ascii "C2H"
      0080AA 00                    2443 	.db	0
      0080AB 01                    2444 	.db	1
      0080AC 00 00 01 6D           2445 	.dw	0,365
      0080B0 09                    2446 	.uleb128	9
      0080B1 05                    2447 	.db	5
      0080B2 03                    2448 	.db	3
      0080B3 00 00 00 EF           2449 	.dw	0,(_EIP)
      0080B7 45 49 50              2450 	.ascii "EIP"
      0080BA 00                    2451 	.db	0
      0080BB 01                    2452 	.db	1
      0080BC 00 00 01 6D           2453 	.dw	0,365
      0080C0 09                    2454 	.uleb128	9
      0080C1 05                    2455 	.db	5
      0080C2 03                    2456 	.db	3
      0080C3 00 00 00 F0           2457 	.dw	0,(_B)
      0080C7 42                    2458 	.ascii "B"
      0080C8 00                    2459 	.db	0
      0080C9 01                    2460 	.db	1
      0080CA 00 00 01 6D           2461 	.dw	0,365
      0080CE 09                    2462 	.uleb128	9
      0080CF 05                    2463 	.db	5
      0080D0 03                    2464 	.db	3
      0080D1 00 00 00 F1           2465 	.dw	0,(_CAPCON3)
      0080D5 43 41 50 43 4F 4E 33  2466 	.ascii "CAPCON3"
      0080DC 00                    2467 	.db	0
      0080DD 01                    2468 	.db	1
      0080DE 00 00 01 6D           2469 	.dw	0,365
      0080E2 09                    2470 	.uleb128	9
      0080E3 05                    2471 	.db	5
      0080E4 03                    2472 	.db	3
      0080E5 00 00 00 F2           2473 	.dw	0,(_CAPCON4)
      0080E9 43 41 50 43 4F 4E 34  2474 	.ascii "CAPCON4"
      0080F0 00                    2475 	.db	0
      0080F1 01                    2476 	.db	1
      0080F2 00 00 01 6D           2477 	.dw	0,365
      0080F6 09                    2478 	.uleb128	9
      0080F7 05                    2479 	.db	5
      0080F8 03                    2480 	.db	3
      0080F9 00 00 00 F3           2481 	.dw	0,(_SPCR)
      0080FD 53 50 43 52           2482 	.ascii "SPCR"
      008101 00                    2483 	.db	0
      008102 01                    2484 	.db	1
      008103 00 00 01 6D           2485 	.dw	0,365
      008107 09                    2486 	.uleb128	9
      008108 05                    2487 	.db	5
      008109 03                    2488 	.db	3
      00810A 00 00 00 F3           2489 	.dw	0,(_SPCR2)
      00810E 53 50 43 52 32        2490 	.ascii "SPCR2"
      008113 00                    2491 	.db	0
      008114 01                    2492 	.db	1
      008115 00 00 01 6D           2493 	.dw	0,365
      008119 09                    2494 	.uleb128	9
      00811A 05                    2495 	.db	5
      00811B 03                    2496 	.db	3
      00811C 00 00 00 F4           2497 	.dw	0,(_SPSR)
      008120 53 50 53 52           2498 	.ascii "SPSR"
      008124 00                    2499 	.db	0
      008125 01                    2500 	.db	1
      008126 00 00 01 6D           2501 	.dw	0,365
      00812A 09                    2502 	.uleb128	9
      00812B 05                    2503 	.db	5
      00812C 03                    2504 	.db	3
      00812D 00 00 00 F5           2505 	.dw	0,(_SPDR)
      008131 53 50 44 52           2506 	.ascii "SPDR"
      008135 00                    2507 	.db	0
      008136 01                    2508 	.db	1
      008137 00 00 01 6D           2509 	.dw	0,365
      00813B 09                    2510 	.uleb128	9
      00813C 05                    2511 	.db	5
      00813D 03                    2512 	.db	3
      00813E 00 00 00 F6           2513 	.dw	0,(_AINDIDS)
      008142 41 49 4E 44 49 44 53  2514 	.ascii "AINDIDS"
      008149 00                    2515 	.db	0
      00814A 01                    2516 	.db	1
      00814B 00 00 01 6D           2517 	.dw	0,365
      00814F 09                    2518 	.uleb128	9
      008150 05                    2519 	.db	5
      008151 03                    2520 	.db	3
      008152 00 00 00 F7           2521 	.dw	0,(_EIPH)
      008156 45 49 50 48           2522 	.ascii "EIPH"
      00815A 00                    2523 	.db	0
      00815B 01                    2524 	.db	1
      00815C 00 00 01 6D           2525 	.dw	0,365
      008160 09                    2526 	.uleb128	9
      008161 05                    2527 	.db	5
      008162 03                    2528 	.db	3
      008163 00 00 00 F8           2529 	.dw	0,(_SCON_1)
      008167 53 43 4F 4E 5F 31     2530 	.ascii "SCON_1"
      00816D 00                    2531 	.db	0
      00816E 01                    2532 	.db	1
      00816F 00 00 01 6D           2533 	.dw	0,365
      008173 09                    2534 	.uleb128	9
      008174 05                    2535 	.db	5
      008175 03                    2536 	.db	3
      008176 00 00 00 F9           2537 	.dw	0,(_PDTEN)
      00817A 50 44 54 45 4E        2538 	.ascii "PDTEN"
      00817F 00                    2539 	.db	0
      008180 01                    2540 	.db	1
      008181 00 00 01 6D           2541 	.dw	0,365
      008185 09                    2542 	.uleb128	9
      008186 05                    2543 	.db	5
      008187 03                    2544 	.db	3
      008188 00 00 00 FA           2545 	.dw	0,(_PDTCNT)
      00818C 50 44 54 43 4E 54     2546 	.ascii "PDTCNT"
      008192 00                    2547 	.db	0
      008193 01                    2548 	.db	1
      008194 00 00 01 6D           2549 	.dw	0,365
      008198 09                    2550 	.uleb128	9
      008199 05                    2551 	.db	5
      00819A 03                    2552 	.db	3
      00819B 00 00 00 FB           2553 	.dw	0,(_PMEN)
      00819F 50 4D 45 4E           2554 	.ascii "PMEN"
      0081A3 00                    2555 	.db	0
      0081A4 01                    2556 	.db	1
      0081A5 00 00 01 6D           2557 	.dw	0,365
      0081A9 09                    2558 	.uleb128	9
      0081AA 05                    2559 	.db	5
      0081AB 03                    2560 	.db	3
      0081AC 00 00 00 FC           2561 	.dw	0,(_PMD)
      0081B0 50 4D 44              2562 	.ascii "PMD"
      0081B3 00                    2563 	.db	0
      0081B4 01                    2564 	.db	1
      0081B5 00 00 01 6D           2565 	.dw	0,365
      0081B9 09                    2566 	.uleb128	9
      0081BA 05                    2567 	.db	5
      0081BB 03                    2568 	.db	3
      0081BC 00 00 00 FE           2569 	.dw	0,(_EIP1)
      0081C0 45 49 50 31           2570 	.ascii "EIP1"
      0081C4 00                    2571 	.db	0
      0081C5 01                    2572 	.db	1
      0081C6 00 00 01 6D           2573 	.dw	0,365
      0081CA 09                    2574 	.uleb128	9
      0081CB 05                    2575 	.db	5
      0081CC 03                    2576 	.db	3
      0081CD 00 00 00 FF           2577 	.dw	0,(_EIPH1)
      0081D1 45 49 50 48 31        2578 	.ascii "EIPH1"
      0081D6 00                    2579 	.db	0
      0081D7 01                    2580 	.db	1
      0081D8 00 00 01 6D           2581 	.dw	0,365
      0081DC 05                    2582 	.uleb128	5
      0081DD 5F 73 62 69 74        2583 	.ascii "_sbit"
      0081E2 00                    2584 	.db	0
      0081E3 01                    2585 	.db	1
      0081E4 08                    2586 	.db	8
      0081E5 08                    2587 	.uleb128	8
      0081E6 00 00 0A C8           2588 	.dw	0,2760
      0081EA 09                    2589 	.uleb128	9
      0081EB 05                    2590 	.db	5
      0081EC 03                    2591 	.db	3
      0081ED 00 00 00 FF           2592 	.dw	0,(_SM0_1)
      0081F1 53 4D 30 5F 31        2593 	.ascii "SM0_1"
      0081F6 00                    2594 	.db	0
      0081F7 01                    2595 	.db	1
      0081F8 00 00 0A D1           2596 	.dw	0,2769
      0081FC 09                    2597 	.uleb128	9
      0081FD 05                    2598 	.db	5
      0081FE 03                    2599 	.db	3
      0081FF 00 00 00 FF           2600 	.dw	0,(_FE_1)
      008203 46 45 5F 31           2601 	.ascii "FE_1"
      008207 00                    2602 	.db	0
      008208 01                    2603 	.db	1
      008209 00 00 0A D1           2604 	.dw	0,2769
      00820D 09                    2605 	.uleb128	9
      00820E 05                    2606 	.db	5
      00820F 03                    2607 	.db	3
      008210 00 00 00 FE           2608 	.dw	0,(_SM1_1)
      008214 53 4D 31 5F 31        2609 	.ascii "SM1_1"
      008219 00                    2610 	.db	0
      00821A 01                    2611 	.db	1
      00821B 00 00 0A D1           2612 	.dw	0,2769
      00821F 09                    2613 	.uleb128	9
      008220 05                    2614 	.db	5
      008221 03                    2615 	.db	3
      008222 00 00 00 FD           2616 	.dw	0,(_SM2_1)
      008226 53 4D 32 5F 31        2617 	.ascii "SM2_1"
      00822B 00                    2618 	.db	0
      00822C 01                    2619 	.db	1
      00822D 00 00 0A D1           2620 	.dw	0,2769
      008231 09                    2621 	.uleb128	9
      008232 05                    2622 	.db	5
      008233 03                    2623 	.db	3
      008234 00 00 00 FC           2624 	.dw	0,(_REN_1)
      008238 52 45 4E 5F 31        2625 	.ascii "REN_1"
      00823D 00                    2626 	.db	0
      00823E 01                    2627 	.db	1
      00823F 00 00 0A D1           2628 	.dw	0,2769
      008243 09                    2629 	.uleb128	9
      008244 05                    2630 	.db	5
      008245 03                    2631 	.db	3
      008246 00 00 00 FB           2632 	.dw	0,(_TB8_1)
      00824A 54 42 38 5F 31        2633 	.ascii "TB8_1"
      00824F 00                    2634 	.db	0
      008250 01                    2635 	.db	1
      008251 00 00 0A D1           2636 	.dw	0,2769
      008255 09                    2637 	.uleb128	9
      008256 05                    2638 	.db	5
      008257 03                    2639 	.db	3
      008258 00 00 00 FA           2640 	.dw	0,(_RB8_1)
      00825C 52 42 38 5F 31        2641 	.ascii "RB8_1"
      008261 00                    2642 	.db	0
      008262 01                    2643 	.db	1
      008263 00 00 0A D1           2644 	.dw	0,2769
      008267 09                    2645 	.uleb128	9
      008268 05                    2646 	.db	5
      008269 03                    2647 	.db	3
      00826A 00 00 00 F9           2648 	.dw	0,(_TI_1)
      00826E 54 49 5F 31           2649 	.ascii "TI_1"
      008272 00                    2650 	.db	0
      008273 01                    2651 	.db	1
      008274 00 00 0A D1           2652 	.dw	0,2769
      008278 09                    2653 	.uleb128	9
      008279 05                    2654 	.db	5
      00827A 03                    2655 	.db	3
      00827B 00 00 00 F8           2656 	.dw	0,(_RI_1)
      00827F 52 49 5F 31           2657 	.ascii "RI_1"
      008283 00                    2658 	.db	0
      008284 01                    2659 	.db	1
      008285 00 00 0A D1           2660 	.dw	0,2769
      008289 09                    2661 	.uleb128	9
      00828A 05                    2662 	.db	5
      00828B 03                    2663 	.db	3
      00828C 00 00 00 EF           2664 	.dw	0,(_ADCF)
      008290 41 44 43 46           2665 	.ascii "ADCF"
      008294 00                    2666 	.db	0
      008295 01                    2667 	.db	1
      008296 00 00 0A D1           2668 	.dw	0,2769
      00829A 09                    2669 	.uleb128	9
      00829B 05                    2670 	.db	5
      00829C 03                    2671 	.db	3
      00829D 00 00 00 EE           2672 	.dw	0,(_ADCS)
      0082A1 41 44 43 53           2673 	.ascii "ADCS"
      0082A5 00                    2674 	.db	0
      0082A6 01                    2675 	.db	1
      0082A7 00 00 0A D1           2676 	.dw	0,2769
      0082AB 09                    2677 	.uleb128	9
      0082AC 05                    2678 	.db	5
      0082AD 03                    2679 	.db	3
      0082AE 00 00 00 ED           2680 	.dw	0,(_ETGSEL1)
      0082B2 45 54 47 53 45 4C 31  2681 	.ascii "ETGSEL1"
      0082B9 00                    2682 	.db	0
      0082BA 01                    2683 	.db	1
      0082BB 00 00 0A D1           2684 	.dw	0,2769
      0082BF 09                    2685 	.uleb128	9
      0082C0 05                    2686 	.db	5
      0082C1 03                    2687 	.db	3
      0082C2 00 00 00 EC           2688 	.dw	0,(_ETGSEL0)
      0082C6 45 54 47 53 45 4C 30  2689 	.ascii "ETGSEL0"
      0082CD 00                    2690 	.db	0
      0082CE 01                    2691 	.db	1
      0082CF 00 00 0A D1           2692 	.dw	0,2769
      0082D3 09                    2693 	.uleb128	9
      0082D4 05                    2694 	.db	5
      0082D5 03                    2695 	.db	3
      0082D6 00 00 00 EB           2696 	.dw	0,(_ADCHS3)
      0082DA 41 44 43 48 53 33     2697 	.ascii "ADCHS3"
      0082E0 00                    2698 	.db	0
      0082E1 01                    2699 	.db	1
      0082E2 00 00 0A D1           2700 	.dw	0,2769
      0082E6 09                    2701 	.uleb128	9
      0082E7 05                    2702 	.db	5
      0082E8 03                    2703 	.db	3
      0082E9 00 00 00 EA           2704 	.dw	0,(_ADCHS2)
      0082ED 41 44 43 48 53 32     2705 	.ascii "ADCHS2"
      0082F3 00                    2706 	.db	0
      0082F4 01                    2707 	.db	1
      0082F5 00 00 0A D1           2708 	.dw	0,2769
      0082F9 09                    2709 	.uleb128	9
      0082FA 05                    2710 	.db	5
      0082FB 03                    2711 	.db	3
      0082FC 00 00 00 E9           2712 	.dw	0,(_ADCHS1)
      008300 41 44 43 48 53 31     2713 	.ascii "ADCHS1"
      008306 00                    2714 	.db	0
      008307 01                    2715 	.db	1
      008308 00 00 0A D1           2716 	.dw	0,2769
      00830C 09                    2717 	.uleb128	9
      00830D 05                    2718 	.db	5
      00830E 03                    2719 	.db	3
      00830F 00 00 00 E8           2720 	.dw	0,(_ADCHS0)
      008313 41 44 43 48 53 30     2721 	.ascii "ADCHS0"
      008319 00                    2722 	.db	0
      00831A 01                    2723 	.db	1
      00831B 00 00 0A D1           2724 	.dw	0,2769
      00831F 09                    2725 	.uleb128	9
      008320 05                    2726 	.db	5
      008321 03                    2727 	.db	3
      008322 00 00 00 DF           2728 	.dw	0,(_PWMRUN)
      008326 50 57 4D 52 55 4E     2729 	.ascii "PWMRUN"
      00832C 00                    2730 	.db	0
      00832D 01                    2731 	.db	1
      00832E 00 00 0A D1           2732 	.dw	0,2769
      008332 09                    2733 	.uleb128	9
      008333 05                    2734 	.db	5
      008334 03                    2735 	.db	3
      008335 00 00 00 DE           2736 	.dw	0,(_LOAD)
      008339 4C 4F 41 44           2737 	.ascii "LOAD"
      00833D 00                    2738 	.db	0
      00833E 01                    2739 	.db	1
      00833F 00 00 0A D1           2740 	.dw	0,2769
      008343 09                    2741 	.uleb128	9
      008344 05                    2742 	.db	5
      008345 03                    2743 	.db	3
      008346 00 00 00 DD           2744 	.dw	0,(_PWMF)
      00834A 50 57 4D 46           2745 	.ascii "PWMF"
      00834E 00                    2746 	.db	0
      00834F 01                    2747 	.db	1
      008350 00 00 0A D1           2748 	.dw	0,2769
      008354 09                    2749 	.uleb128	9
      008355 05                    2750 	.db	5
      008356 03                    2751 	.db	3
      008357 00 00 00 DC           2752 	.dw	0,(_CLRPWM)
      00835B 43 4C 52 50 57 4D     2753 	.ascii "CLRPWM"
      008361 00                    2754 	.db	0
      008362 01                    2755 	.db	1
      008363 00 00 0A D1           2756 	.dw	0,2769
      008367 09                    2757 	.uleb128	9
      008368 05                    2758 	.db	5
      008369 03                    2759 	.db	3
      00836A 00 00 00 D7           2760 	.dw	0,(_CY)
      00836E 43 59                 2761 	.ascii "CY"
      008370 00                    2762 	.db	0
      008371 01                    2763 	.db	1
      008372 00 00 0A D1           2764 	.dw	0,2769
      008376 09                    2765 	.uleb128	9
      008377 05                    2766 	.db	5
      008378 03                    2767 	.db	3
      008379 00 00 00 D6           2768 	.dw	0,(_AC)
      00837D 41 43                 2769 	.ascii "AC"
      00837F 00                    2770 	.db	0
      008380 01                    2771 	.db	1
      008381 00 00 0A D1           2772 	.dw	0,2769
      008385 09                    2773 	.uleb128	9
      008386 05                    2774 	.db	5
      008387 03                    2775 	.db	3
      008388 00 00 00 D5           2776 	.dw	0,(_F0)
      00838C 46 30                 2777 	.ascii "F0"
      00838E 00                    2778 	.db	0
      00838F 01                    2779 	.db	1
      008390 00 00 0A D1           2780 	.dw	0,2769
      008394 09                    2781 	.uleb128	9
      008395 05                    2782 	.db	5
      008396 03                    2783 	.db	3
      008397 00 00 00 D4           2784 	.dw	0,(_RS1)
      00839B 52 53 31              2785 	.ascii "RS1"
      00839E 00                    2786 	.db	0
      00839F 01                    2787 	.db	1
      0083A0 00 00 0A D1           2788 	.dw	0,2769
      0083A4 09                    2789 	.uleb128	9
      0083A5 05                    2790 	.db	5
      0083A6 03                    2791 	.db	3
      0083A7 00 00 00 D3           2792 	.dw	0,(_RS0)
      0083AB 52 53 30              2793 	.ascii "RS0"
      0083AE 00                    2794 	.db	0
      0083AF 01                    2795 	.db	1
      0083B0 00 00 0A D1           2796 	.dw	0,2769
      0083B4 09                    2797 	.uleb128	9
      0083B5 05                    2798 	.db	5
      0083B6 03                    2799 	.db	3
      0083B7 00 00 00 D2           2800 	.dw	0,(_OV)
      0083BB 4F 56                 2801 	.ascii "OV"
      0083BD 00                    2802 	.db	0
      0083BE 01                    2803 	.db	1
      0083BF 00 00 0A D1           2804 	.dw	0,2769
      0083C3 09                    2805 	.uleb128	9
      0083C4 05                    2806 	.db	5
      0083C5 03                    2807 	.db	3
      0083C6 00 00 00 D0           2808 	.dw	0,(_P)
      0083CA 50                    2809 	.ascii "P"
      0083CB 00                    2810 	.db	0
      0083CC 01                    2811 	.db	1
      0083CD 00 00 0A D1           2812 	.dw	0,2769
      0083D1 09                    2813 	.uleb128	9
      0083D2 05                    2814 	.db	5
      0083D3 03                    2815 	.db	3
      0083D4 00 00 00 CF           2816 	.dw	0,(_TF2)
      0083D8 54 46 32              2817 	.ascii "TF2"
      0083DB 00                    2818 	.db	0
      0083DC 01                    2819 	.db	1
      0083DD 00 00 0A D1           2820 	.dw	0,2769
      0083E1 09                    2821 	.uleb128	9
      0083E2 05                    2822 	.db	5
      0083E3 03                    2823 	.db	3
      0083E4 00 00 00 CA           2824 	.dw	0,(_TR2)
      0083E8 54 52 32              2825 	.ascii "TR2"
      0083EB 00                    2826 	.db	0
      0083EC 01                    2827 	.db	1
      0083ED 00 00 0A D1           2828 	.dw	0,2769
      0083F1 09                    2829 	.uleb128	9
      0083F2 05                    2830 	.db	5
      0083F3 03                    2831 	.db	3
      0083F4 00 00 00 C8           2832 	.dw	0,(_CM_RL2)
      0083F8 43 4D 5F 52 4C 32     2833 	.ascii "CM_RL2"
      0083FE 00                    2834 	.db	0
      0083FF 01                    2835 	.db	1
      008400 00 00 0A D1           2836 	.dw	0,2769
      008404 09                    2837 	.uleb128	9
      008405 05                    2838 	.db	5
      008406 03                    2839 	.db	3
      008407 00 00 00 C6           2840 	.dw	0,(_I2CEN)
      00840B 49 32 43 45 4E        2841 	.ascii "I2CEN"
      008410 00                    2842 	.db	0
      008411 01                    2843 	.db	1
      008412 00 00 0A D1           2844 	.dw	0,2769
      008416 09                    2845 	.uleb128	9
      008417 05                    2846 	.db	5
      008418 03                    2847 	.db	3
      008419 00 00 00 C5           2848 	.dw	0,(_STA)
      00841D 53 54 41              2849 	.ascii "STA"
      008420 00                    2850 	.db	0
      008421 01                    2851 	.db	1
      008422 00 00 0A D1           2852 	.dw	0,2769
      008426 09                    2853 	.uleb128	9
      008427 05                    2854 	.db	5
      008428 03                    2855 	.db	3
      008429 00 00 00 C4           2856 	.dw	0,(_STO)
      00842D 53 54 4F              2857 	.ascii "STO"
      008430 00                    2858 	.db	0
      008431 01                    2859 	.db	1
      008432 00 00 0A D1           2860 	.dw	0,2769
      008436 09                    2861 	.uleb128	9
      008437 05                    2862 	.db	5
      008438 03                    2863 	.db	3
      008439 00 00 00 C3           2864 	.dw	0,(_SI)
      00843D 53 49                 2865 	.ascii "SI"
      00843F 00                    2866 	.db	0
      008440 01                    2867 	.db	1
      008441 00 00 0A D1           2868 	.dw	0,2769
      008445 09                    2869 	.uleb128	9
      008446 05                    2870 	.db	5
      008447 03                    2871 	.db	3
      008448 00 00 00 C2           2872 	.dw	0,(_AA)
      00844C 41 41                 2873 	.ascii "AA"
      00844E 00                    2874 	.db	0
      00844F 01                    2875 	.db	1
      008450 00 00 0A D1           2876 	.dw	0,2769
      008454 09                    2877 	.uleb128	9
      008455 05                    2878 	.db	5
      008456 03                    2879 	.db	3
      008457 00 00 00 C0           2880 	.dw	0,(_I2CPX)
      00845B 49 32 43 50 58        2881 	.ascii "I2CPX"
      008460 00                    2882 	.db	0
      008461 01                    2883 	.db	1
      008462 00 00 0A D1           2884 	.dw	0,2769
      008466 09                    2885 	.uleb128	9
      008467 05                    2886 	.db	5
      008468 03                    2887 	.db	3
      008469 00 00 00 BE           2888 	.dw	0,(_PADC)
      00846D 50 41 44 43           2889 	.ascii "PADC"
      008471 00                    2890 	.db	0
      008472 01                    2891 	.db	1
      008473 00 00 0A D1           2892 	.dw	0,2769
      008477 09                    2893 	.uleb128	9
      008478 05                    2894 	.db	5
      008479 03                    2895 	.db	3
      00847A 00 00 00 BD           2896 	.dw	0,(_PBOD)
      00847E 50 42 4F 44           2897 	.ascii "PBOD"
      008482 00                    2898 	.db	0
      008483 01                    2899 	.db	1
      008484 00 00 0A D1           2900 	.dw	0,2769
      008488 09                    2901 	.uleb128	9
      008489 05                    2902 	.db	5
      00848A 03                    2903 	.db	3
      00848B 00 00 00 BC           2904 	.dw	0,(_PS)
      00848F 50 53                 2905 	.ascii "PS"
      008491 00                    2906 	.db	0
      008492 01                    2907 	.db	1
      008493 00 00 0A D1           2908 	.dw	0,2769
      008497 09                    2909 	.uleb128	9
      008498 05                    2910 	.db	5
      008499 03                    2911 	.db	3
      00849A 00 00 00 BB           2912 	.dw	0,(_PT1)
      00849E 50 54 31              2913 	.ascii "PT1"
      0084A1 00                    2914 	.db	0
      0084A2 01                    2915 	.db	1
      0084A3 00 00 0A D1           2916 	.dw	0,2769
      0084A7 09                    2917 	.uleb128	9
      0084A8 05                    2918 	.db	5
      0084A9 03                    2919 	.db	3
      0084AA 00 00 00 BA           2920 	.dw	0,(_PX1)
      0084AE 50 58 31              2921 	.ascii "PX1"
      0084B1 00                    2922 	.db	0
      0084B2 01                    2923 	.db	1
      0084B3 00 00 0A D1           2924 	.dw	0,2769
      0084B7 09                    2925 	.uleb128	9
      0084B8 05                    2926 	.db	5
      0084B9 03                    2927 	.db	3
      0084BA 00 00 00 B9           2928 	.dw	0,(_PT0)
      0084BE 50 54 30              2929 	.ascii "PT0"
      0084C1 00                    2930 	.db	0
      0084C2 01                    2931 	.db	1
      0084C3 00 00 0A D1           2932 	.dw	0,2769
      0084C7 09                    2933 	.uleb128	9
      0084C8 05                    2934 	.db	5
      0084C9 03                    2935 	.db	3
      0084CA 00 00 00 B8           2936 	.dw	0,(_PX0)
      0084CE 50 58 30              2937 	.ascii "PX0"
      0084D1 00                    2938 	.db	0
      0084D2 01                    2939 	.db	1
      0084D3 00 00 0A D1           2940 	.dw	0,2769
      0084D7 09                    2941 	.uleb128	9
      0084D8 05                    2942 	.db	5
      0084D9 03                    2943 	.db	3
      0084DA 00 00 00 B0           2944 	.dw	0,(_P30)
      0084DE 50 33 30              2945 	.ascii "P30"
      0084E1 00                    2946 	.db	0
      0084E2 01                    2947 	.db	1
      0084E3 00 00 0A D1           2948 	.dw	0,2769
      0084E7 09                    2949 	.uleb128	9
      0084E8 05                    2950 	.db	5
      0084E9 03                    2951 	.db	3
      0084EA 00 00 00 AF           2952 	.dw	0,(_EA)
      0084EE 45 41                 2953 	.ascii "EA"
      0084F0 00                    2954 	.db	0
      0084F1 01                    2955 	.db	1
      0084F2 00 00 0A D1           2956 	.dw	0,2769
      0084F6 09                    2957 	.uleb128	9
      0084F7 05                    2958 	.db	5
      0084F8 03                    2959 	.db	3
      0084F9 00 00 00 AE           2960 	.dw	0,(_EADC)
      0084FD 45 41 44 43           2961 	.ascii "EADC"
      008501 00                    2962 	.db	0
      008502 01                    2963 	.db	1
      008503 00 00 0A D1           2964 	.dw	0,2769
      008507 09                    2965 	.uleb128	9
      008508 05                    2966 	.db	5
      008509 03                    2967 	.db	3
      00850A 00 00 00 AD           2968 	.dw	0,(_EBOD)
      00850E 45 42 4F 44           2969 	.ascii "EBOD"
      008512 00                    2970 	.db	0
      008513 01                    2971 	.db	1
      008514 00 00 0A D1           2972 	.dw	0,2769
      008518 09                    2973 	.uleb128	9
      008519 05                    2974 	.db	5
      00851A 03                    2975 	.db	3
      00851B 00 00 00 AC           2976 	.dw	0,(_ES)
      00851F 45 53                 2977 	.ascii "ES"
      008521 00                    2978 	.db	0
      008522 01                    2979 	.db	1
      008523 00 00 0A D1           2980 	.dw	0,2769
      008527 09                    2981 	.uleb128	9
      008528 05                    2982 	.db	5
      008529 03                    2983 	.db	3
      00852A 00 00 00 AB           2984 	.dw	0,(_ET1)
      00852E 45 54 31              2985 	.ascii "ET1"
      008531 00                    2986 	.db	0
      008532 01                    2987 	.db	1
      008533 00 00 0A D1           2988 	.dw	0,2769
      008537 09                    2989 	.uleb128	9
      008538 05                    2990 	.db	5
      008539 03                    2991 	.db	3
      00853A 00 00 00 AA           2992 	.dw	0,(_EX1)
      00853E 45 58 31              2993 	.ascii "EX1"
      008541 00                    2994 	.db	0
      008542 01                    2995 	.db	1
      008543 00 00 0A D1           2996 	.dw	0,2769
      008547 09                    2997 	.uleb128	9
      008548 05                    2998 	.db	5
      008549 03                    2999 	.db	3
      00854A 00 00 00 A9           3000 	.dw	0,(_ET0)
      00854E 45 54 30              3001 	.ascii "ET0"
      008551 00                    3002 	.db	0
      008552 01                    3003 	.db	1
      008553 00 00 0A D1           3004 	.dw	0,2769
      008557 09                    3005 	.uleb128	9
      008558 05                    3006 	.db	5
      008559 03                    3007 	.db	3
      00855A 00 00 00 A8           3008 	.dw	0,(_EX0)
      00855E 45 58 30              3009 	.ascii "EX0"
      008561 00                    3010 	.db	0
      008562 01                    3011 	.db	1
      008563 00 00 0A D1           3012 	.dw	0,2769
      008567 09                    3013 	.uleb128	9
      008568 05                    3014 	.db	5
      008569 03                    3015 	.db	3
      00856A 00 00 00 A0           3016 	.dw	0,(_P20)
      00856E 50 32 30              3017 	.ascii "P20"
      008571 00                    3018 	.db	0
      008572 01                    3019 	.db	1
      008573 00 00 0A D1           3020 	.dw	0,2769
      008577 09                    3021 	.uleb128	9
      008578 05                    3022 	.db	5
      008579 03                    3023 	.db	3
      00857A 00 00 00 9F           3024 	.dw	0,(_SM0)
      00857E 53 4D 30              3025 	.ascii "SM0"
      008581 00                    3026 	.db	0
      008582 01                    3027 	.db	1
      008583 00 00 0A D1           3028 	.dw	0,2769
      008587 09                    3029 	.uleb128	9
      008588 05                    3030 	.db	5
      008589 03                    3031 	.db	3
      00858A 00 00 00 9F           3032 	.dw	0,(_FE)
      00858E 46 45                 3033 	.ascii "FE"
      008590 00                    3034 	.db	0
      008591 01                    3035 	.db	1
      008592 00 00 0A D1           3036 	.dw	0,2769
      008596 09                    3037 	.uleb128	9
      008597 05                    3038 	.db	5
      008598 03                    3039 	.db	3
      008599 00 00 00 9E           3040 	.dw	0,(_SM1)
      00859D 53 4D 31              3041 	.ascii "SM1"
      0085A0 00                    3042 	.db	0
      0085A1 01                    3043 	.db	1
      0085A2 00 00 0A D1           3044 	.dw	0,2769
      0085A6 09                    3045 	.uleb128	9
      0085A7 05                    3046 	.db	5
      0085A8 03                    3047 	.db	3
      0085A9 00 00 00 9D           3048 	.dw	0,(_SM2)
      0085AD 53 4D 32              3049 	.ascii "SM2"
      0085B0 00                    3050 	.db	0
      0085B1 01                    3051 	.db	1
      0085B2 00 00 0A D1           3052 	.dw	0,2769
      0085B6 09                    3053 	.uleb128	9
      0085B7 05                    3054 	.db	5
      0085B8 03                    3055 	.db	3
      0085B9 00 00 00 9C           3056 	.dw	0,(_REN)
      0085BD 52 45 4E              3057 	.ascii "REN"
      0085C0 00                    3058 	.db	0
      0085C1 01                    3059 	.db	1
      0085C2 00 00 0A D1           3060 	.dw	0,2769
      0085C6 09                    3061 	.uleb128	9
      0085C7 05                    3062 	.db	5
      0085C8 03                    3063 	.db	3
      0085C9 00 00 00 9B           3064 	.dw	0,(_TB8)
      0085CD 54 42 38              3065 	.ascii "TB8"
      0085D0 00                    3066 	.db	0
      0085D1 01                    3067 	.db	1
      0085D2 00 00 0A D1           3068 	.dw	0,2769
      0085D6 09                    3069 	.uleb128	9
      0085D7 05                    3070 	.db	5
      0085D8 03                    3071 	.db	3
      0085D9 00 00 00 9A           3072 	.dw	0,(_RB8)
      0085DD 52 42 38              3073 	.ascii "RB8"
      0085E0 00                    3074 	.db	0
      0085E1 01                    3075 	.db	1
      0085E2 00 00 0A D1           3076 	.dw	0,2769
      0085E6 09                    3077 	.uleb128	9
      0085E7 05                    3078 	.db	5
      0085E8 03                    3079 	.db	3
      0085E9 00 00 00 99           3080 	.dw	0,(_TI)
      0085ED 54 49                 3081 	.ascii "TI"
      0085EF 00                    3082 	.db	0
      0085F0 01                    3083 	.db	1
      0085F1 00 00 0A D1           3084 	.dw	0,2769
      0085F5 09                    3085 	.uleb128	9
      0085F6 05                    3086 	.db	5
      0085F7 03                    3087 	.db	3
      0085F8 00 00 00 98           3088 	.dw	0,(_RI)
      0085FC 52 49                 3089 	.ascii "RI"
      0085FE 00                    3090 	.db	0
      0085FF 01                    3091 	.db	1
      008600 00 00 0A D1           3092 	.dw	0,2769
      008604 09                    3093 	.uleb128	9
      008605 05                    3094 	.db	5
      008606 03                    3095 	.db	3
      008607 00 00 00 97           3096 	.dw	0,(_P17)
      00860B 50 31 37              3097 	.ascii "P17"
      00860E 00                    3098 	.db	0
      00860F 01                    3099 	.db	1
      008610 00 00 0A D1           3100 	.dw	0,2769
      008614 09                    3101 	.uleb128	9
      008615 05                    3102 	.db	5
      008616 03                    3103 	.db	3
      008617 00 00 00 96           3104 	.dw	0,(_P16)
      00861B 50 31 36              3105 	.ascii "P16"
      00861E 00                    3106 	.db	0
      00861F 01                    3107 	.db	1
      008620 00 00 0A D1           3108 	.dw	0,2769
      008624 09                    3109 	.uleb128	9
      008625 05                    3110 	.db	5
      008626 03                    3111 	.db	3
      008627 00 00 00 96           3112 	.dw	0,(_TXD_1)
      00862B 54 58 44 5F 31        3113 	.ascii "TXD_1"
      008630 00                    3114 	.db	0
      008631 01                    3115 	.db	1
      008632 00 00 0A D1           3116 	.dw	0,2769
      008636 09                    3117 	.uleb128	9
      008637 05                    3118 	.db	5
      008638 03                    3119 	.db	3
      008639 00 00 00 95           3120 	.dw	0,(_P15)
      00863D 50 31 35              3121 	.ascii "P15"
      008640 00                    3122 	.db	0
      008641 01                    3123 	.db	1
      008642 00 00 0A D1           3124 	.dw	0,2769
      008646 09                    3125 	.uleb128	9
      008647 05                    3126 	.db	5
      008648 03                    3127 	.db	3
      008649 00 00 00 94           3128 	.dw	0,(_P14)
      00864D 50 31 34              3129 	.ascii "P14"
      008650 00                    3130 	.db	0
      008651 01                    3131 	.db	1
      008652 00 00 0A D1           3132 	.dw	0,2769
      008656 09                    3133 	.uleb128	9
      008657 05                    3134 	.db	5
      008658 03                    3135 	.db	3
      008659 00 00 00 94           3136 	.dw	0,(_SDA)
      00865D 53 44 41              3137 	.ascii "SDA"
      008660 00                    3138 	.db	0
      008661 01                    3139 	.db	1
      008662 00 00 0A D1           3140 	.dw	0,2769
      008666 09                    3141 	.uleb128	9
      008667 05                    3142 	.db	5
      008668 03                    3143 	.db	3
      008669 00 00 00 93           3144 	.dw	0,(_P13)
      00866D 50 31 33              3145 	.ascii "P13"
      008670 00                    3146 	.db	0
      008671 01                    3147 	.db	1
      008672 00 00 0A D1           3148 	.dw	0,2769
      008676 09                    3149 	.uleb128	9
      008677 05                    3150 	.db	5
      008678 03                    3151 	.db	3
      008679 00 00 00 93           3152 	.dw	0,(_SCL)
      00867D 53 43 4C              3153 	.ascii "SCL"
      008680 00                    3154 	.db	0
      008681 01                    3155 	.db	1
      008682 00 00 0A D1           3156 	.dw	0,2769
      008686 09                    3157 	.uleb128	9
      008687 05                    3158 	.db	5
      008688 03                    3159 	.db	3
      008689 00 00 00 92           3160 	.dw	0,(_P12)
      00868D 50 31 32              3161 	.ascii "P12"
      008690 00                    3162 	.db	0
      008691 01                    3163 	.db	1
      008692 00 00 0A D1           3164 	.dw	0,2769
      008696 09                    3165 	.uleb128	9
      008697 05                    3166 	.db	5
      008698 03                    3167 	.db	3
      008699 00 00 00 91           3168 	.dw	0,(_P11)
      00869D 50 31 31              3169 	.ascii "P11"
      0086A0 00                    3170 	.db	0
      0086A1 01                    3171 	.db	1
      0086A2 00 00 0A D1           3172 	.dw	0,2769
      0086A6 09                    3173 	.uleb128	9
      0086A7 05                    3174 	.db	5
      0086A8 03                    3175 	.db	3
      0086A9 00 00 00 90           3176 	.dw	0,(_P10)
      0086AD 50 31 30              3177 	.ascii "P10"
      0086B0 00                    3178 	.db	0
      0086B1 01                    3179 	.db	1
      0086B2 00 00 0A D1           3180 	.dw	0,2769
      0086B6 09                    3181 	.uleb128	9
      0086B7 05                    3182 	.db	5
      0086B8 03                    3183 	.db	3
      0086B9 00 00 00 8F           3184 	.dw	0,(_TF1)
      0086BD 54 46 31              3185 	.ascii "TF1"
      0086C0 00                    3186 	.db	0
      0086C1 01                    3187 	.db	1
      0086C2 00 00 0A D1           3188 	.dw	0,2769
      0086C6 09                    3189 	.uleb128	9
      0086C7 05                    3190 	.db	5
      0086C8 03                    3191 	.db	3
      0086C9 00 00 00 8E           3192 	.dw	0,(_TR1)
      0086CD 54 52 31              3193 	.ascii "TR1"
      0086D0 00                    3194 	.db	0
      0086D1 01                    3195 	.db	1
      0086D2 00 00 0A D1           3196 	.dw	0,2769
      0086D6 09                    3197 	.uleb128	9
      0086D7 05                    3198 	.db	5
      0086D8 03                    3199 	.db	3
      0086D9 00 00 00 8D           3200 	.dw	0,(_TF0)
      0086DD 54 46 30              3201 	.ascii "TF0"
      0086E0 00                    3202 	.db	0
      0086E1 01                    3203 	.db	1
      0086E2 00 00 0A D1           3204 	.dw	0,2769
      0086E6 09                    3205 	.uleb128	9
      0086E7 05                    3206 	.db	5
      0086E8 03                    3207 	.db	3
      0086E9 00 00 00 8C           3208 	.dw	0,(_TR0)
      0086ED 54 52 30              3209 	.ascii "TR0"
      0086F0 00                    3210 	.db	0
      0086F1 01                    3211 	.db	1
      0086F2 00 00 0A D1           3212 	.dw	0,2769
      0086F6 09                    3213 	.uleb128	9
      0086F7 05                    3214 	.db	5
      0086F8 03                    3215 	.db	3
      0086F9 00 00 00 8B           3216 	.dw	0,(_IE1)
      0086FD 49 45 31              3217 	.ascii "IE1"
      008700 00                    3218 	.db	0
      008701 01                    3219 	.db	1
      008702 00 00 0A D1           3220 	.dw	0,2769
      008706 09                    3221 	.uleb128	9
      008707 05                    3222 	.db	5
      008708 03                    3223 	.db	3
      008709 00 00 00 8A           3224 	.dw	0,(_IT1)
      00870D 49 54 31              3225 	.ascii "IT1"
      008710 00                    3226 	.db	0
      008711 01                    3227 	.db	1
      008712 00 00 0A D1           3228 	.dw	0,2769
      008716 09                    3229 	.uleb128	9
      008717 05                    3230 	.db	5
      008718 03                    3231 	.db	3
      008719 00 00 00 89           3232 	.dw	0,(_IE0)
      00871D 49 45 30              3233 	.ascii "IE0"
      008720 00                    3234 	.db	0
      008721 01                    3235 	.db	1
      008722 00 00 0A D1           3236 	.dw	0,2769
      008726 09                    3237 	.uleb128	9
      008727 05                    3238 	.db	5
      008728 03                    3239 	.db	3
      008729 00 00 00 88           3240 	.dw	0,(_IT0)
      00872D 49 54 30              3241 	.ascii "IT0"
      008730 00                    3242 	.db	0
      008731 01                    3243 	.db	1
      008732 00 00 0A D1           3244 	.dw	0,2769
      008736 09                    3245 	.uleb128	9
      008737 05                    3246 	.db	5
      008738 03                    3247 	.db	3
      008739 00 00 00 87           3248 	.dw	0,(_P07)
      00873D 50 30 37              3249 	.ascii "P07"
      008740 00                    3250 	.db	0
      008741 01                    3251 	.db	1
      008742 00 00 0A D1           3252 	.dw	0,2769
      008746 09                    3253 	.uleb128	9
      008747 05                    3254 	.db	5
      008748 03                    3255 	.db	3
      008749 00 00 00 87           3256 	.dw	0,(_RXD)
      00874D 52 58 44              3257 	.ascii "RXD"
      008750 00                    3258 	.db	0
      008751 01                    3259 	.db	1
      008752 00 00 0A D1           3260 	.dw	0,2769
      008756 09                    3261 	.uleb128	9
      008757 05                    3262 	.db	5
      008758 03                    3263 	.db	3
      008759 00 00 00 86           3264 	.dw	0,(_P06)
      00875D 50 30 36              3265 	.ascii "P06"
      008760 00                    3266 	.db	0
      008761 01                    3267 	.db	1
      008762 00 00 0A D1           3268 	.dw	0,2769
      008766 09                    3269 	.uleb128	9
      008767 05                    3270 	.db	5
      008768 03                    3271 	.db	3
      008769 00 00 00 86           3272 	.dw	0,(_TXD)
      00876D 54 58 44              3273 	.ascii "TXD"
      008770 00                    3274 	.db	0
      008771 01                    3275 	.db	1
      008772 00 00 0A D1           3276 	.dw	0,2769
      008776 09                    3277 	.uleb128	9
      008777 05                    3278 	.db	5
      008778 03                    3279 	.db	3
      008779 00 00 00 85           3280 	.dw	0,(_P05)
      00877D 50 30 35              3281 	.ascii "P05"
      008780 00                    3282 	.db	0
      008781 01                    3283 	.db	1
      008782 00 00 0A D1           3284 	.dw	0,2769
      008786 09                    3285 	.uleb128	9
      008787 05                    3286 	.db	5
      008788 03                    3287 	.db	3
      008789 00 00 00 84           3288 	.dw	0,(_P04)
      00878D 50 30 34              3289 	.ascii "P04"
      008790 00                    3290 	.db	0
      008791 01                    3291 	.db	1
      008792 00 00 0A D1           3292 	.dw	0,2769
      008796 09                    3293 	.uleb128	9
      008797 05                    3294 	.db	5
      008798 03                    3295 	.db	3
      008799 00 00 00 84           3296 	.dw	0,(_STADC)
      00879D 53 54 41 44 43        3297 	.ascii "STADC"
      0087A2 00                    3298 	.db	0
      0087A3 01                    3299 	.db	1
      0087A4 00 00 0A D1           3300 	.dw	0,2769
      0087A8 09                    3301 	.uleb128	9
      0087A9 05                    3302 	.db	5
      0087AA 03                    3303 	.db	3
      0087AB 00 00 00 83           3304 	.dw	0,(_P03)
      0087AF 50 30 33              3305 	.ascii "P03"
      0087B2 00                    3306 	.db	0
      0087B3 01                    3307 	.db	1
      0087B4 00 00 0A D1           3308 	.dw	0,2769
      0087B8 09                    3309 	.uleb128	9
      0087B9 05                    3310 	.db	5
      0087BA 03                    3311 	.db	3
      0087BB 00 00 00 82           3312 	.dw	0,(_P02)
      0087BF 50 30 32              3313 	.ascii "P02"
      0087C2 00                    3314 	.db	0
      0087C3 01                    3315 	.db	1
      0087C4 00 00 0A D1           3316 	.dw	0,2769
      0087C8 09                    3317 	.uleb128	9
      0087C9 05                    3318 	.db	5
      0087CA 03                    3319 	.db	3
      0087CB 00 00 00 82           3320 	.dw	0,(_RXD_1)
      0087CF 52 58 44 5F 31        3321 	.ascii "RXD_1"
      0087D4 00                    3322 	.db	0
      0087D5 01                    3323 	.db	1
      0087D6 00 00 0A D1           3324 	.dw	0,2769
      0087DA 09                    3325 	.uleb128	9
      0087DB 05                    3326 	.db	5
      0087DC 03                    3327 	.db	3
      0087DD 00 00 00 81           3328 	.dw	0,(_P01)
      0087E1 50 30 31              3329 	.ascii "P01"
      0087E4 00                    3330 	.db	0
      0087E5 01                    3331 	.db	1
      0087E6 00 00 0A D1           3332 	.dw	0,2769
      0087EA 09                    3333 	.uleb128	9
      0087EB 05                    3334 	.db	5
      0087EC 03                    3335 	.db	3
      0087ED 00 00 00 81           3336 	.dw	0,(_MISO)
      0087F1 4D 49 53 4F           3337 	.ascii "MISO"
      0087F5 00                    3338 	.db	0
      0087F6 01                    3339 	.db	1
      0087F7 00 00 0A D1           3340 	.dw	0,2769
      0087FB 09                    3341 	.uleb128	9
      0087FC 05                    3342 	.db	5
      0087FD 03                    3343 	.db	3
      0087FE 00 00 00 80           3344 	.dw	0,(_P00)
      008802 50 30 30              3345 	.ascii "P00"
      008805 00                    3346 	.db	0
      008806 01                    3347 	.db	1
      008807 00 00 0A D1           3348 	.dw	0,2769
      00880B 09                    3349 	.uleb128	9
      00880C 05                    3350 	.db	5
      00880D 03                    3351 	.db	3
      00880E 00 00 00 80           3352 	.dw	0,(_MOSI)
      008812 4D 4F 53 49           3353 	.ascii "MOSI"
      008816 00                    3354 	.db	0
      008817 01                    3355 	.db	1
      008818 00 00 0A D1           3356 	.dw	0,2769
      00881C 00                    3357 	.uleb128	0
      00881D                       3358 Ldebug_info_end:
                                   3359 
                                   3360 	.area .debug_pubnames (NOLOAD)
      0037CB 00 00 08 8F           3361 	.dw	0,Ldebug_pubnames_end-Ldebug_pubnames_start
      0037CF                       3362 Ldebug_pubnames_start:
      0037CF 00 02                 3363 	.dw	2
      0037D1 00 00 77 14           3364 	.dw	0,(Ldebug_info_start-4)
      0037D5 00 00 11 09           3365 	.dw	0,4+Ldebug_info_end-Ldebug_info_start
      0037D9 00 00 00 A0           3366 	.dw	0,160
      0037DD 57 44 54 5F 4F 70 65  3367 	.ascii "WDT_Open"
             6E
      0037E5 00                    3368 	.db	0
      0037E6 00 00 00 E9           3369 	.dw	0,233
      0037EA 57 44 54 5F 49 6E 74  3370 	.ascii "WDT_Interrupt"
             65 72 72 75 70 74
      0037F7 00                    3371 	.db	0
      0037F8 00 00 01 38           3372 	.dw	0,312
      0037FC 57 44 54 5F 43 6C 65  3373 	.ascii "WDT_Clear"
             61 72
      003805 00                    3374 	.db	0
      003806 00 00 01 58           3375 	.dw	0,344
      00380A 42 49 54 5F 54 4D 50  3376 	.ascii "BIT_TMP"
      003811 00                    3377 	.db	0
      003812 00 00 01 72           3378 	.dw	0,370
      003816 50 30                 3379 	.ascii "P0"
      003818 00                    3380 	.db	0
      003819 00 00 01 81           3381 	.dw	0,385
      00381D 53 50                 3382 	.ascii "SP"
      00381F 00                    3383 	.db	0
      003820 00 00 01 90           3384 	.dw	0,400
      003824 44 50 4C              3385 	.ascii "DPL"
      003827 00                    3386 	.db	0
      003828 00 00 01 A0           3387 	.dw	0,416
      00382C 44 50 48              3388 	.ascii "DPH"
      00382F 00                    3389 	.db	0
      003830 00 00 01 B0           3390 	.dw	0,432
      003834 52 43 54 52 49 4D 30  3391 	.ascii "RCTRIM0"
      00383B 00                    3392 	.db	0
      00383C 00 00 01 C4           3393 	.dw	0,452
      003840 52 43 54 52 49 4D 31  3394 	.ascii "RCTRIM1"
      003847 00                    3395 	.db	0
      003848 00 00 01 D8           3396 	.dw	0,472
      00384C 52 57 4B              3397 	.ascii "RWK"
      00384F 00                    3398 	.db	0
      003850 00 00 01 E8           3399 	.dw	0,488
      003854 50 43 4F 4E           3400 	.ascii "PCON"
      003858 00                    3401 	.db	0
      003859 00 00 01 F9           3402 	.dw	0,505
      00385D 54 43 4F 4E           3403 	.ascii "TCON"
      003861 00                    3404 	.db	0
      003862 00 00 02 0A           3405 	.dw	0,522
      003866 54 4D 4F 44           3406 	.ascii "TMOD"
      00386A 00                    3407 	.db	0
      00386B 00 00 02 1B           3408 	.dw	0,539
      00386F 54 4C 30              3409 	.ascii "TL0"
      003872 00                    3410 	.db	0
      003873 00 00 02 2B           3411 	.dw	0,555
      003877 54 4C 31              3412 	.ascii "TL1"
      00387A 00                    3413 	.db	0
      00387B 00 00 02 3B           3414 	.dw	0,571
      00387F 54 48 30              3415 	.ascii "TH0"
      003882 00                    3416 	.db	0
      003883 00 00 02 4B           3417 	.dw	0,587
      003887 54 48 31              3418 	.ascii "TH1"
      00388A 00                    3419 	.db	0
      00388B 00 00 02 5B           3420 	.dw	0,603
      00388F 43 4B 43 4F 4E        3421 	.ascii "CKCON"
      003894 00                    3422 	.db	0
      003895 00 00 02 6D           3423 	.dw	0,621
      003899 57 4B 43 4F 4E        3424 	.ascii "WKCON"
      00389E 00                    3425 	.db	0
      00389F 00 00 02 7F           3426 	.dw	0,639
      0038A3 50 31                 3427 	.ascii "P1"
      0038A5 00                    3428 	.db	0
      0038A6 00 00 02 8E           3429 	.dw	0,654
      0038AA 53 46 52 53           3430 	.ascii "SFRS"
      0038AE 00                    3431 	.db	0
      0038AF 00 00 02 9F           3432 	.dw	0,671
      0038B3 43 41 50 43 4F 4E 30  3433 	.ascii "CAPCON0"
      0038BA 00                    3434 	.db	0
      0038BB 00 00 02 B3           3435 	.dw	0,691
      0038BF 43 41 50 43 4F 4E 31  3436 	.ascii "CAPCON1"
      0038C6 00                    3437 	.db	0
      0038C7 00 00 02 C7           3438 	.dw	0,711
      0038CB 43 41 50 43 4F 4E 32  3439 	.ascii "CAPCON2"
      0038D2 00                    3440 	.db	0
      0038D3 00 00 02 DB           3441 	.dw	0,731
      0038D7 43 4B 44 49 56        3442 	.ascii "CKDIV"
      0038DC 00                    3443 	.db	0
      0038DD 00 00 02 ED           3444 	.dw	0,749
      0038E1 43 4B 53 57 54        3445 	.ascii "CKSWT"
      0038E6 00                    3446 	.db	0
      0038E7 00 00 02 FF           3447 	.dw	0,767
      0038EB 43 4B 45 4E           3448 	.ascii "CKEN"
      0038EF 00                    3449 	.db	0
      0038F0 00 00 03 10           3450 	.dw	0,784
      0038F4 53 43 4F 4E           3451 	.ascii "SCON"
      0038F8 00                    3452 	.db	0
      0038F9 00 00 03 21           3453 	.dw	0,801
      0038FD 53 42 55 46           3454 	.ascii "SBUF"
      003901 00                    3455 	.db	0
      003902 00 00 03 32           3456 	.dw	0,818
      003906 53 42 55 46 5F 31     3457 	.ascii "SBUF_1"
      00390C 00                    3458 	.db	0
      00390D 00 00 03 45           3459 	.dw	0,837
      003911 45 49 45              3460 	.ascii "EIE"
      003914 00                    3461 	.db	0
      003915 00 00 03 55           3462 	.dw	0,853
      003919 45 49 45 31           3463 	.ascii "EIE1"
      00391D 00                    3464 	.db	0
      00391E 00 00 03 66           3465 	.dw	0,870
      003922 43 48 50 43 4F 4E     3466 	.ascii "CHPCON"
      003928 00                    3467 	.db	0
      003929 00 00 03 79           3468 	.dw	0,889
      00392D 50 32                 3469 	.ascii "P2"
      00392F 00                    3470 	.db	0
      003930 00 00 03 88           3471 	.dw	0,904
      003934 41 55 58 52 31        3472 	.ascii "AUXR1"
      003939 00                    3473 	.db	0
      00393A 00 00 03 9A           3474 	.dw	0,922
      00393E 42 4F 44 43 4F 4E 30  3475 	.ascii "BODCON0"
      003945 00                    3476 	.db	0
      003946 00 00 03 AE           3477 	.dw	0,942
      00394A 49 41 50 54 52 47     3478 	.ascii "IAPTRG"
      003950 00                    3479 	.db	0
      003951 00 00 03 C1           3480 	.dw	0,961
      003955 49 41 50 55 45 4E     3481 	.ascii "IAPUEN"
      00395B 00                    3482 	.db	0
      00395C 00 00 03 D4           3483 	.dw	0,980
      003960 49 41 50 41 4C        3484 	.ascii "IAPAL"
      003965 00                    3485 	.db	0
      003966 00 00 03 E6           3486 	.dw	0,998
      00396A 49 41 50 41 48        3487 	.ascii "IAPAH"
      00396F 00                    3488 	.db	0
      003970 00 00 03 F8           3489 	.dw	0,1016
      003974 49 45                 3490 	.ascii "IE"
      003976 00                    3491 	.db	0
      003977 00 00 04 07           3492 	.dw	0,1031
      00397B 53 41 44 44 52        3493 	.ascii "SADDR"
      003980 00                    3494 	.db	0
      003981 00 00 04 19           3495 	.dw	0,1049
      003985 57 44 43 4F 4E        3496 	.ascii "WDCON"
      00398A 00                    3497 	.db	0
      00398B 00 00 04 2B           3498 	.dw	0,1067
      00398F 42 4F 44 43 4F 4E 31  3499 	.ascii "BODCON1"
      003996 00                    3500 	.db	0
      003997 00 00 04 3F           3501 	.dw	0,1087
      00399B 50 33 4D 31           3502 	.ascii "P3M1"
      00399F 00                    3503 	.db	0
      0039A0 00 00 04 50           3504 	.dw	0,1104
      0039A4 50 33 53              3505 	.ascii "P3S"
      0039A7 00                    3506 	.db	0
      0039A8 00 00 04 60           3507 	.dw	0,1120
      0039AC 50 33 4D 32           3508 	.ascii "P3M2"
      0039B0 00                    3509 	.db	0
      0039B1 00 00 04 71           3510 	.dw	0,1137
      0039B5 50 33 53 52           3511 	.ascii "P3SR"
      0039B9 00                    3512 	.db	0
      0039BA 00 00 04 82           3513 	.dw	0,1154
      0039BE 49 41 50 46 44        3514 	.ascii "IAPFD"
      0039C3 00                    3515 	.db	0
      0039C4 00 00 04 94           3516 	.dw	0,1172
      0039C8 49 41 50 43 4E        3517 	.ascii "IAPCN"
      0039CD 00                    3518 	.db	0
      0039CE 00 00 04 A6           3519 	.dw	0,1190
      0039D2 50 33                 3520 	.ascii "P3"
      0039D4 00                    3521 	.db	0
      0039D5 00 00 04 B5           3522 	.dw	0,1205
      0039D9 50 30 4D 31           3523 	.ascii "P0M1"
      0039DD 00                    3524 	.db	0
      0039DE 00 00 04 C6           3525 	.dw	0,1222
      0039E2 50 30 53              3526 	.ascii "P0S"
      0039E5 00                    3527 	.db	0
      0039E6 00 00 04 D6           3528 	.dw	0,1238
      0039EA 50 30 4D 32           3529 	.ascii "P0M2"
      0039EE 00                    3530 	.db	0
      0039EF 00 00 04 E7           3531 	.dw	0,1255
      0039F3 50 30 53 52           3532 	.ascii "P0SR"
      0039F7 00                    3533 	.db	0
      0039F8 00 00 04 F8           3534 	.dw	0,1272
      0039FC 50 31 4D 31           3535 	.ascii "P1M1"
      003A00 00                    3536 	.db	0
      003A01 00 00 05 09           3537 	.dw	0,1289
      003A05 50 31 53              3538 	.ascii "P1S"
      003A08 00                    3539 	.db	0
      003A09 00 00 05 19           3540 	.dw	0,1305
      003A0D 50 31 4D 32           3541 	.ascii "P1M2"
      003A11 00                    3542 	.db	0
      003A12 00 00 05 2A           3543 	.dw	0,1322
      003A16 50 31 53 52           3544 	.ascii "P1SR"
      003A1A 00                    3545 	.db	0
      003A1B 00 00 05 3B           3546 	.dw	0,1339
      003A1F 50 32 53              3547 	.ascii "P2S"
      003A22 00                    3548 	.db	0
      003A23 00 00 05 4B           3549 	.dw	0,1355
      003A27 49 50 48              3550 	.ascii "IPH"
      003A2A 00                    3551 	.db	0
      003A2B 00 00 05 5B           3552 	.dw	0,1371
      003A2F 50 57 4D 49 4E 54 43  3553 	.ascii "PWMINTC"
      003A36 00                    3554 	.db	0
      003A37 00 00 05 6F           3555 	.dw	0,1391
      003A3B 49 50                 3556 	.ascii "IP"
      003A3D 00                    3557 	.db	0
      003A3E 00 00 05 7E           3558 	.dw	0,1406
      003A42 53 41 44 45 4E        3559 	.ascii "SADEN"
      003A47 00                    3560 	.db	0
      003A48 00 00 05 90           3561 	.dw	0,1424
      003A4C 53 41 44 45 4E 5F 31  3562 	.ascii "SADEN_1"
      003A53 00                    3563 	.db	0
      003A54 00 00 05 A4           3564 	.dw	0,1444
      003A58 53 41 44 44 52 5F 31  3565 	.ascii "SADDR_1"
      003A5F 00                    3566 	.db	0
      003A60 00 00 05 B8           3567 	.dw	0,1464
      003A64 49 32 44 41 54        3568 	.ascii "I2DAT"
      003A69 00                    3569 	.db	0
      003A6A 00 00 05 CA           3570 	.dw	0,1482
      003A6E 49 32 53 54 41 54     3571 	.ascii "I2STAT"
      003A74 00                    3572 	.db	0
      003A75 00 00 05 DD           3573 	.dw	0,1501
      003A79 49 32 43 4C 4B        3574 	.ascii "I2CLK"
      003A7E 00                    3575 	.db	0
      003A7F 00 00 05 EF           3576 	.dw	0,1519
      003A83 49 32 54 4F 43        3577 	.ascii "I2TOC"
      003A88 00                    3578 	.db	0
      003A89 00 00 06 01           3579 	.dw	0,1537
      003A8D 49 32 43 4F 4E        3580 	.ascii "I2CON"
      003A92 00                    3581 	.db	0
      003A93 00 00 06 13           3582 	.dw	0,1555
      003A97 49 32 41 44 44 52     3583 	.ascii "I2ADDR"
      003A9D 00                    3584 	.db	0
      003A9E 00 00 06 26           3585 	.dw	0,1574
      003AA2 41 44 43 52 4C        3586 	.ascii "ADCRL"
      003AA7 00                    3587 	.db	0
      003AA8 00 00 06 38           3588 	.dw	0,1592
      003AAC 41 44 43 52 48        3589 	.ascii "ADCRH"
      003AB1 00                    3590 	.db	0
      003AB2 00 00 06 4A           3591 	.dw	0,1610
      003AB6 54 33 43 4F 4E        3592 	.ascii "T3CON"
      003ABB 00                    3593 	.db	0
      003ABC 00 00 06 5C           3594 	.dw	0,1628
      003AC0 50 57 4D 34 48        3595 	.ascii "PWM4H"
      003AC5 00                    3596 	.db	0
      003AC6 00 00 06 6E           3597 	.dw	0,1646
      003ACA 52 4C 33              3598 	.ascii "RL3"
      003ACD 00                    3599 	.db	0
      003ACE 00 00 06 7E           3600 	.dw	0,1662
      003AD2 50 57 4D 35 48        3601 	.ascii "PWM5H"
      003AD7 00                    3602 	.db	0
      003AD8 00 00 06 90           3603 	.dw	0,1680
      003ADC 52 48 33              3604 	.ascii "RH3"
      003ADF 00                    3605 	.db	0
      003AE0 00 00 06 A0           3606 	.dw	0,1696
      003AE4 50 49 4F 43 4F 4E 31  3607 	.ascii "PIOCON1"
      003AEB 00                    3608 	.db	0
      003AEC 00 00 06 B4           3609 	.dw	0,1716
      003AF0 54 41                 3610 	.ascii "TA"
      003AF2 00                    3611 	.db	0
      003AF3 00 00 06 C3           3612 	.dw	0,1731
      003AF7 54 32 43 4F 4E        3613 	.ascii "T2CON"
      003AFC 00                    3614 	.db	0
      003AFD 00 00 06 D5           3615 	.dw	0,1749
      003B01 54 32 4D 4F 44        3616 	.ascii "T2MOD"
      003B06 00                    3617 	.db	0
      003B07 00 00 06 E7           3618 	.dw	0,1767
      003B0B 52 43 4D 50 32 4C     3619 	.ascii "RCMP2L"
      003B11 00                    3620 	.db	0
      003B12 00 00 06 FA           3621 	.dw	0,1786
      003B16 52 43 4D 50 32 48     3622 	.ascii "RCMP2H"
      003B1C 00                    3623 	.db	0
      003B1D 00 00 07 0D           3624 	.dw	0,1805
      003B21 54 4C 32              3625 	.ascii "TL2"
      003B24 00                    3626 	.db	0
      003B25 00 00 07 1D           3627 	.dw	0,1821
      003B29 50 57 4D 34 4C        3628 	.ascii "PWM4L"
      003B2E 00                    3629 	.db	0
      003B2F 00 00 07 2F           3630 	.dw	0,1839
      003B33 54 48 32              3631 	.ascii "TH2"
      003B36 00                    3632 	.db	0
      003B37 00 00 07 3F           3633 	.dw	0,1855
      003B3B 50 57 4D 35 4C        3634 	.ascii "PWM5L"
      003B40 00                    3635 	.db	0
      003B41 00 00 07 51           3636 	.dw	0,1873
      003B45 41 44 43 4D 50 4C     3637 	.ascii "ADCMPL"
      003B4B 00                    3638 	.db	0
      003B4C 00 00 07 64           3639 	.dw	0,1892
      003B50 41 44 43 4D 50 48     3640 	.ascii "ADCMPH"
      003B56 00                    3641 	.db	0
      003B57 00 00 07 77           3642 	.dw	0,1911
      003B5B 50 53 57              3643 	.ascii "PSW"
      003B5E 00                    3644 	.db	0
      003B5F 00 00 07 87           3645 	.dw	0,1927
      003B63 50 57 4D 50 48        3646 	.ascii "PWMPH"
      003B68 00                    3647 	.db	0
      003B69 00 00 07 99           3648 	.dw	0,1945
      003B6D 50 57 4D 30 48        3649 	.ascii "PWM0H"
      003B72 00                    3650 	.db	0
      003B73 00 00 07 AB           3651 	.dw	0,1963
      003B77 50 57 4D 31 48        3652 	.ascii "PWM1H"
      003B7C 00                    3653 	.db	0
      003B7D 00 00 07 BD           3654 	.dw	0,1981
      003B81 50 57 4D 32 48        3655 	.ascii "PWM2H"
      003B86 00                    3656 	.db	0
      003B87 00 00 07 CF           3657 	.dw	0,1999
      003B8B 50 57 4D 33 48        3658 	.ascii "PWM3H"
      003B90 00                    3659 	.db	0
      003B91 00 00 07 E1           3660 	.dw	0,2017
      003B95 50 4E 50              3661 	.ascii "PNP"
      003B98 00                    3662 	.db	0
      003B99 00 00 07 F1           3663 	.dw	0,2033
      003B9D 46 42 44              3664 	.ascii "FBD"
      003BA0 00                    3665 	.db	0
      003BA1 00 00 08 01           3666 	.dw	0,2049
      003BA5 50 57 4D 43 4F 4E 30  3667 	.ascii "PWMCON0"
      003BAC 00                    3668 	.db	0
      003BAD 00 00 08 15           3669 	.dw	0,2069
      003BB1 50 57 4D 50 4C        3670 	.ascii "PWMPL"
      003BB6 00                    3671 	.db	0
      003BB7 00 00 08 27           3672 	.dw	0,2087
      003BBB 50 57 4D 30 4C        3673 	.ascii "PWM0L"
      003BC0 00                    3674 	.db	0
      003BC1 00 00 08 39           3675 	.dw	0,2105
      003BC5 50 57 4D 31 4C        3676 	.ascii "PWM1L"
      003BCA 00                    3677 	.db	0
      003BCB 00 00 08 4B           3678 	.dw	0,2123
      003BCF 50 57 4D 32 4C        3679 	.ascii "PWM2L"
      003BD4 00                    3680 	.db	0
      003BD5 00 00 08 5D           3681 	.dw	0,2141
      003BD9 50 57 4D 33 4C        3682 	.ascii "PWM3L"
      003BDE 00                    3683 	.db	0
      003BDF 00 00 08 6F           3684 	.dw	0,2159
      003BE3 50 49 4F 43 4F 4E 30  3685 	.ascii "PIOCON0"
      003BEA 00                    3686 	.db	0
      003BEB 00 00 08 83           3687 	.dw	0,2179
      003BEF 50 57 4D 43 4F 4E 31  3688 	.ascii "PWMCON1"
      003BF6 00                    3689 	.db	0
      003BF7 00 00 08 97           3690 	.dw	0,2199
      003BFB 41 43 43              3691 	.ascii "ACC"
      003BFE 00                    3692 	.db	0
      003BFF 00 00 08 A7           3693 	.dw	0,2215
      003C03 41 44 43 43 4F 4E 31  3694 	.ascii "ADCCON1"
      003C0A 00                    3695 	.db	0
      003C0B 00 00 08 BB           3696 	.dw	0,2235
      003C0F 41 44 43 43 4F 4E 32  3697 	.ascii "ADCCON2"
      003C16 00                    3698 	.db	0
      003C17 00 00 08 CF           3699 	.dw	0,2255
      003C1B 41 44 43 44 4C 59     3700 	.ascii "ADCDLY"
      003C21 00                    3701 	.db	0
      003C22 00 00 08 E2           3702 	.dw	0,2274
      003C26 43 30 4C              3703 	.ascii "C0L"
      003C29 00                    3704 	.db	0
      003C2A 00 00 08 F2           3705 	.dw	0,2290
      003C2E 43 30 48              3706 	.ascii "C0H"
      003C31 00                    3707 	.db	0
      003C32 00 00 09 02           3708 	.dw	0,2306
      003C36 43 31 4C              3709 	.ascii "C1L"
      003C39 00                    3710 	.db	0
      003C3A 00 00 09 12           3711 	.dw	0,2322
      003C3E 43 31 48              3712 	.ascii "C1H"
      003C41 00                    3713 	.db	0
      003C42 00 00 09 22           3714 	.dw	0,2338
      003C46 41 44 43 43 4F 4E 30  3715 	.ascii "ADCCON0"
      003C4D 00                    3716 	.db	0
      003C4E 00 00 09 36           3717 	.dw	0,2358
      003C52 50 49 43 4F 4E        3718 	.ascii "PICON"
      003C57 00                    3719 	.db	0
      003C58 00 00 09 48           3720 	.dw	0,2376
      003C5C 50 49 4E 45 4E        3721 	.ascii "PINEN"
      003C61 00                    3722 	.db	0
      003C62 00 00 09 5A           3723 	.dw	0,2394
      003C66 50 49 50 45 4E        3724 	.ascii "PIPEN"
      003C6B 00                    3725 	.db	0
      003C6C 00 00 09 6C           3726 	.dw	0,2412
      003C70 50 49 46              3727 	.ascii "PIF"
      003C73 00                    3728 	.db	0
      003C74 00 00 09 7C           3729 	.dw	0,2428
      003C78 43 32 4C              3730 	.ascii "C2L"
      003C7B 00                    3731 	.db	0
      003C7C 00 00 09 8C           3732 	.dw	0,2444
      003C80 43 32 48              3733 	.ascii "C2H"
      003C83 00                    3734 	.db	0
      003C84 00 00 09 9C           3735 	.dw	0,2460
      003C88 45 49 50              3736 	.ascii "EIP"
      003C8B 00                    3737 	.db	0
      003C8C 00 00 09 AC           3738 	.dw	0,2476
      003C90 42                    3739 	.ascii "B"
      003C91 00                    3740 	.db	0
      003C92 00 00 09 BA           3741 	.dw	0,2490
      003C96 43 41 50 43 4F 4E 33  3742 	.ascii "CAPCON3"
      003C9D 00                    3743 	.db	0
      003C9E 00 00 09 CE           3744 	.dw	0,2510
      003CA2 43 41 50 43 4F 4E 34  3745 	.ascii "CAPCON4"
      003CA9 00                    3746 	.db	0
      003CAA 00 00 09 E2           3747 	.dw	0,2530
      003CAE 53 50 43 52           3748 	.ascii "SPCR"
      003CB2 00                    3749 	.db	0
      003CB3 00 00 09 F3           3750 	.dw	0,2547
      003CB7 53 50 43 52 32        3751 	.ascii "SPCR2"
      003CBC 00                    3752 	.db	0
      003CBD 00 00 0A 05           3753 	.dw	0,2565
      003CC1 53 50 53 52           3754 	.ascii "SPSR"
      003CC5 00                    3755 	.db	0
      003CC6 00 00 0A 16           3756 	.dw	0,2582
      003CCA 53 50 44 52           3757 	.ascii "SPDR"
      003CCE 00                    3758 	.db	0
      003CCF 00 00 0A 27           3759 	.dw	0,2599
      003CD3 41 49 4E 44 49 44 53  3760 	.ascii "AINDIDS"
      003CDA 00                    3761 	.db	0
      003CDB 00 00 0A 3B           3762 	.dw	0,2619
      003CDF 45 49 50 48           3763 	.ascii "EIPH"
      003CE3 00                    3764 	.db	0
      003CE4 00 00 0A 4C           3765 	.dw	0,2636
      003CE8 53 43 4F 4E 5F 31     3766 	.ascii "SCON_1"
      003CEE 00                    3767 	.db	0
      003CEF 00 00 0A 5F           3768 	.dw	0,2655
      003CF3 50 44 54 45 4E        3769 	.ascii "PDTEN"
      003CF8 00                    3770 	.db	0
      003CF9 00 00 0A 71           3771 	.dw	0,2673
      003CFD 50 44 54 43 4E 54     3772 	.ascii "PDTCNT"
      003D03 00                    3773 	.db	0
      003D04 00 00 0A 84           3774 	.dw	0,2692
      003D08 50 4D 45 4E           3775 	.ascii "PMEN"
      003D0C 00                    3776 	.db	0
      003D0D 00 00 0A 95           3777 	.dw	0,2709
      003D11 50 4D 44              3778 	.ascii "PMD"
      003D14 00                    3779 	.db	0
      003D15 00 00 0A A5           3780 	.dw	0,2725
      003D19 45 49 50 31           3781 	.ascii "EIP1"
      003D1D 00                    3782 	.db	0
      003D1E 00 00 0A B6           3783 	.dw	0,2742
      003D22 45 49 50 48 31        3784 	.ascii "EIPH1"
      003D27 00                    3785 	.db	0
      003D28 00 00 0A D6           3786 	.dw	0,2774
      003D2C 53 4D 30 5F 31        3787 	.ascii "SM0_1"
      003D31 00                    3788 	.db	0
      003D32 00 00 0A E8           3789 	.dw	0,2792
      003D36 46 45 5F 31           3790 	.ascii "FE_1"
      003D3A 00                    3791 	.db	0
      003D3B 00 00 0A F9           3792 	.dw	0,2809
      003D3F 53 4D 31 5F 31        3793 	.ascii "SM1_1"
      003D44 00                    3794 	.db	0
      003D45 00 00 0B 0B           3795 	.dw	0,2827
      003D49 53 4D 32 5F 31        3796 	.ascii "SM2_1"
      003D4E 00                    3797 	.db	0
      003D4F 00 00 0B 1D           3798 	.dw	0,2845
      003D53 52 45 4E 5F 31        3799 	.ascii "REN_1"
      003D58 00                    3800 	.db	0
      003D59 00 00 0B 2F           3801 	.dw	0,2863
      003D5D 54 42 38 5F 31        3802 	.ascii "TB8_1"
      003D62 00                    3803 	.db	0
      003D63 00 00 0B 41           3804 	.dw	0,2881
      003D67 52 42 38 5F 31        3805 	.ascii "RB8_1"
      003D6C 00                    3806 	.db	0
      003D6D 00 00 0B 53           3807 	.dw	0,2899
      003D71 54 49 5F 31           3808 	.ascii "TI_1"
      003D75 00                    3809 	.db	0
      003D76 00 00 0B 64           3810 	.dw	0,2916
      003D7A 52 49 5F 31           3811 	.ascii "RI_1"
      003D7E 00                    3812 	.db	0
      003D7F 00 00 0B 75           3813 	.dw	0,2933
      003D83 41 44 43 46           3814 	.ascii "ADCF"
      003D87 00                    3815 	.db	0
      003D88 00 00 0B 86           3816 	.dw	0,2950
      003D8C 41 44 43 53           3817 	.ascii "ADCS"
      003D90 00                    3818 	.db	0
      003D91 00 00 0B 97           3819 	.dw	0,2967
      003D95 45 54 47 53 45 4C 31  3820 	.ascii "ETGSEL1"
      003D9C 00                    3821 	.db	0
      003D9D 00 00 0B AB           3822 	.dw	0,2987
      003DA1 45 54 47 53 45 4C 30  3823 	.ascii "ETGSEL0"
      003DA8 00                    3824 	.db	0
      003DA9 00 00 0B BF           3825 	.dw	0,3007
      003DAD 41 44 43 48 53 33     3826 	.ascii "ADCHS3"
      003DB3 00                    3827 	.db	0
      003DB4 00 00 0B D2           3828 	.dw	0,3026
      003DB8 41 44 43 48 53 32     3829 	.ascii "ADCHS2"
      003DBE 00                    3830 	.db	0
      003DBF 00 00 0B E5           3831 	.dw	0,3045
      003DC3 41 44 43 48 53 31     3832 	.ascii "ADCHS1"
      003DC9 00                    3833 	.db	0
      003DCA 00 00 0B F8           3834 	.dw	0,3064
      003DCE 41 44 43 48 53 30     3835 	.ascii "ADCHS0"
      003DD4 00                    3836 	.db	0
      003DD5 00 00 0C 0B           3837 	.dw	0,3083
      003DD9 50 57 4D 52 55 4E     3838 	.ascii "PWMRUN"
      003DDF 00                    3839 	.db	0
      003DE0 00 00 0C 1E           3840 	.dw	0,3102
      003DE4 4C 4F 41 44           3841 	.ascii "LOAD"
      003DE8 00                    3842 	.db	0
      003DE9 00 00 0C 2F           3843 	.dw	0,3119
      003DED 50 57 4D 46           3844 	.ascii "PWMF"
      003DF1 00                    3845 	.db	0
      003DF2 00 00 0C 40           3846 	.dw	0,3136
      003DF6 43 4C 52 50 57 4D     3847 	.ascii "CLRPWM"
      003DFC 00                    3848 	.db	0
      003DFD 00 00 0C 53           3849 	.dw	0,3155
      003E01 43 59                 3850 	.ascii "CY"
      003E03 00                    3851 	.db	0
      003E04 00 00 0C 62           3852 	.dw	0,3170
      003E08 41 43                 3853 	.ascii "AC"
      003E0A 00                    3854 	.db	0
      003E0B 00 00 0C 71           3855 	.dw	0,3185
      003E0F 46 30                 3856 	.ascii "F0"
      003E11 00                    3857 	.db	0
      003E12 00 00 0C 80           3858 	.dw	0,3200
      003E16 52 53 31              3859 	.ascii "RS1"
      003E19 00                    3860 	.db	0
      003E1A 00 00 0C 90           3861 	.dw	0,3216
      003E1E 52 53 30              3862 	.ascii "RS0"
      003E21 00                    3863 	.db	0
      003E22 00 00 0C A0           3864 	.dw	0,3232
      003E26 4F 56                 3865 	.ascii "OV"
      003E28 00                    3866 	.db	0
      003E29 00 00 0C AF           3867 	.dw	0,3247
      003E2D 50                    3868 	.ascii "P"
      003E2E 00                    3869 	.db	0
      003E2F 00 00 0C BD           3870 	.dw	0,3261
      003E33 54 46 32              3871 	.ascii "TF2"
      003E36 00                    3872 	.db	0
      003E37 00 00 0C CD           3873 	.dw	0,3277
      003E3B 54 52 32              3874 	.ascii "TR2"
      003E3E 00                    3875 	.db	0
      003E3F 00 00 0C DD           3876 	.dw	0,3293
      003E43 43 4D 5F 52 4C 32     3877 	.ascii "CM_RL2"
      003E49 00                    3878 	.db	0
      003E4A 00 00 0C F0           3879 	.dw	0,3312
      003E4E 49 32 43 45 4E        3880 	.ascii "I2CEN"
      003E53 00                    3881 	.db	0
      003E54 00 00 0D 02           3882 	.dw	0,3330
      003E58 53 54 41              3883 	.ascii "STA"
      003E5B 00                    3884 	.db	0
      003E5C 00 00 0D 12           3885 	.dw	0,3346
      003E60 53 54 4F              3886 	.ascii "STO"
      003E63 00                    3887 	.db	0
      003E64 00 00 0D 22           3888 	.dw	0,3362
      003E68 53 49                 3889 	.ascii "SI"
      003E6A 00                    3890 	.db	0
      003E6B 00 00 0D 31           3891 	.dw	0,3377
      003E6F 41 41                 3892 	.ascii "AA"
      003E71 00                    3893 	.db	0
      003E72 00 00 0D 40           3894 	.dw	0,3392
      003E76 49 32 43 50 58        3895 	.ascii "I2CPX"
      003E7B 00                    3896 	.db	0
      003E7C 00 00 0D 52           3897 	.dw	0,3410
      003E80 50 41 44 43           3898 	.ascii "PADC"
      003E84 00                    3899 	.db	0
      003E85 00 00 0D 63           3900 	.dw	0,3427
      003E89 50 42 4F 44           3901 	.ascii "PBOD"
      003E8D 00                    3902 	.db	0
      003E8E 00 00 0D 74           3903 	.dw	0,3444
      003E92 50 53                 3904 	.ascii "PS"
      003E94 00                    3905 	.db	0
      003E95 00 00 0D 83           3906 	.dw	0,3459
      003E99 50 54 31              3907 	.ascii "PT1"
      003E9C 00                    3908 	.db	0
      003E9D 00 00 0D 93           3909 	.dw	0,3475
      003EA1 50 58 31              3910 	.ascii "PX1"
      003EA4 00                    3911 	.db	0
      003EA5 00 00 0D A3           3912 	.dw	0,3491
      003EA9 50 54 30              3913 	.ascii "PT0"
      003EAC 00                    3914 	.db	0
      003EAD 00 00 0D B3           3915 	.dw	0,3507
      003EB1 50 58 30              3916 	.ascii "PX0"
      003EB4 00                    3917 	.db	0
      003EB5 00 00 0D C3           3918 	.dw	0,3523
      003EB9 50 33 30              3919 	.ascii "P30"
      003EBC 00                    3920 	.db	0
      003EBD 00 00 0D D3           3921 	.dw	0,3539
      003EC1 45 41                 3922 	.ascii "EA"
      003EC3 00                    3923 	.db	0
      003EC4 00 00 0D E2           3924 	.dw	0,3554
      003EC8 45 41 44 43           3925 	.ascii "EADC"
      003ECC 00                    3926 	.db	0
      003ECD 00 00 0D F3           3927 	.dw	0,3571
      003ED1 45 42 4F 44           3928 	.ascii "EBOD"
      003ED5 00                    3929 	.db	0
      003ED6 00 00 0E 04           3930 	.dw	0,3588
      003EDA 45 53                 3931 	.ascii "ES"
      003EDC 00                    3932 	.db	0
      003EDD 00 00 0E 13           3933 	.dw	0,3603
      003EE1 45 54 31              3934 	.ascii "ET1"
      003EE4 00                    3935 	.db	0
      003EE5 00 00 0E 23           3936 	.dw	0,3619
      003EE9 45 58 31              3937 	.ascii "EX1"
      003EEC 00                    3938 	.db	0
      003EED 00 00 0E 33           3939 	.dw	0,3635
      003EF1 45 54 30              3940 	.ascii "ET0"
      003EF4 00                    3941 	.db	0
      003EF5 00 00 0E 43           3942 	.dw	0,3651
      003EF9 45 58 30              3943 	.ascii "EX0"
      003EFC 00                    3944 	.db	0
      003EFD 00 00 0E 53           3945 	.dw	0,3667
      003F01 50 32 30              3946 	.ascii "P20"
      003F04 00                    3947 	.db	0
      003F05 00 00 0E 63           3948 	.dw	0,3683
      003F09 53 4D 30              3949 	.ascii "SM0"
      003F0C 00                    3950 	.db	0
      003F0D 00 00 0E 73           3951 	.dw	0,3699
      003F11 46 45                 3952 	.ascii "FE"
      003F13 00                    3953 	.db	0
      003F14 00 00 0E 82           3954 	.dw	0,3714
      003F18 53 4D 31              3955 	.ascii "SM1"
      003F1B 00                    3956 	.db	0
      003F1C 00 00 0E 92           3957 	.dw	0,3730
      003F20 53 4D 32              3958 	.ascii "SM2"
      003F23 00                    3959 	.db	0
      003F24 00 00 0E A2           3960 	.dw	0,3746
      003F28 52 45 4E              3961 	.ascii "REN"
      003F2B 00                    3962 	.db	0
      003F2C 00 00 0E B2           3963 	.dw	0,3762
      003F30 54 42 38              3964 	.ascii "TB8"
      003F33 00                    3965 	.db	0
      003F34 00 00 0E C2           3966 	.dw	0,3778
      003F38 52 42 38              3967 	.ascii "RB8"
      003F3B 00                    3968 	.db	0
      003F3C 00 00 0E D2           3969 	.dw	0,3794
      003F40 54 49                 3970 	.ascii "TI"
      003F42 00                    3971 	.db	0
      003F43 00 00 0E E1           3972 	.dw	0,3809
      003F47 52 49                 3973 	.ascii "RI"
      003F49 00                    3974 	.db	0
      003F4A 00 00 0E F0           3975 	.dw	0,3824
      003F4E 50 31 37              3976 	.ascii "P17"
      003F51 00                    3977 	.db	0
      003F52 00 00 0F 00           3978 	.dw	0,3840
      003F56 50 31 36              3979 	.ascii "P16"
      003F59 00                    3980 	.db	0
      003F5A 00 00 0F 10           3981 	.dw	0,3856
      003F5E 54 58 44 5F 31        3982 	.ascii "TXD_1"
      003F63 00                    3983 	.db	0
      003F64 00 00 0F 22           3984 	.dw	0,3874
      003F68 50 31 35              3985 	.ascii "P15"
      003F6B 00                    3986 	.db	0
      003F6C 00 00 0F 32           3987 	.dw	0,3890
      003F70 50 31 34              3988 	.ascii "P14"
      003F73 00                    3989 	.db	0
      003F74 00 00 0F 42           3990 	.dw	0,3906
      003F78 53 44 41              3991 	.ascii "SDA"
      003F7B 00                    3992 	.db	0
      003F7C 00 00 0F 52           3993 	.dw	0,3922
      003F80 50 31 33              3994 	.ascii "P13"
      003F83 00                    3995 	.db	0
      003F84 00 00 0F 62           3996 	.dw	0,3938
      003F88 53 43 4C              3997 	.ascii "SCL"
      003F8B 00                    3998 	.db	0
      003F8C 00 00 0F 72           3999 	.dw	0,3954
      003F90 50 31 32              4000 	.ascii "P12"
      003F93 00                    4001 	.db	0
      003F94 00 00 0F 82           4002 	.dw	0,3970
      003F98 50 31 31              4003 	.ascii "P11"
      003F9B 00                    4004 	.db	0
      003F9C 00 00 0F 92           4005 	.dw	0,3986
      003FA0 50 31 30              4006 	.ascii "P10"
      003FA3 00                    4007 	.db	0
      003FA4 00 00 0F A2           4008 	.dw	0,4002
      003FA8 54 46 31              4009 	.ascii "TF1"
      003FAB 00                    4010 	.db	0
      003FAC 00 00 0F B2           4011 	.dw	0,4018
      003FB0 54 52 31              4012 	.ascii "TR1"
      003FB3 00                    4013 	.db	0
      003FB4 00 00 0F C2           4014 	.dw	0,4034
      003FB8 54 46 30              4015 	.ascii "TF0"
      003FBB 00                    4016 	.db	0
      003FBC 00 00 0F D2           4017 	.dw	0,4050
      003FC0 54 52 30              4018 	.ascii "TR0"
      003FC3 00                    4019 	.db	0
      003FC4 00 00 0F E2           4020 	.dw	0,4066
      003FC8 49 45 31              4021 	.ascii "IE1"
      003FCB 00                    4022 	.db	0
      003FCC 00 00 0F F2           4023 	.dw	0,4082
      003FD0 49 54 31              4024 	.ascii "IT1"
      003FD3 00                    4025 	.db	0
      003FD4 00 00 10 02           4026 	.dw	0,4098
      003FD8 49 45 30              4027 	.ascii "IE0"
      003FDB 00                    4028 	.db	0
      003FDC 00 00 10 12           4029 	.dw	0,4114
      003FE0 49 54 30              4030 	.ascii "IT0"
      003FE3 00                    4031 	.db	0
      003FE4 00 00 10 22           4032 	.dw	0,4130
      003FE8 50 30 37              4033 	.ascii "P07"
      003FEB 00                    4034 	.db	0
      003FEC 00 00 10 32           4035 	.dw	0,4146
      003FF0 52 58 44              4036 	.ascii "RXD"
      003FF3 00                    4037 	.db	0
      003FF4 00 00 10 42           4038 	.dw	0,4162
      003FF8 50 30 36              4039 	.ascii "P06"
      003FFB 00                    4040 	.db	0
      003FFC 00 00 10 52           4041 	.dw	0,4178
      004000 54 58 44              4042 	.ascii "TXD"
      004003 00                    4043 	.db	0
      004004 00 00 10 62           4044 	.dw	0,4194
      004008 50 30 35              4045 	.ascii "P05"
      00400B 00                    4046 	.db	0
      00400C 00 00 10 72           4047 	.dw	0,4210
      004010 50 30 34              4048 	.ascii "P04"
      004013 00                    4049 	.db	0
      004014 00 00 10 82           4050 	.dw	0,4226
      004018 53 54 41 44 43        4051 	.ascii "STADC"
      00401D 00                    4052 	.db	0
      00401E 00 00 10 94           4053 	.dw	0,4244
      004022 50 30 33              4054 	.ascii "P03"
      004025 00                    4055 	.db	0
      004026 00 00 10 A4           4056 	.dw	0,4260
      00402A 50 30 32              4057 	.ascii "P02"
      00402D 00                    4058 	.db	0
      00402E 00 00 10 B4           4059 	.dw	0,4276
      004032 52 58 44 5F 31        4060 	.ascii "RXD_1"
      004037 00                    4061 	.db	0
      004038 00 00 10 C6           4062 	.dw	0,4294
      00403C 50 30 31              4063 	.ascii "P01"
      00403F 00                    4064 	.db	0
      004040 00 00 10 D6           4065 	.dw	0,4310
      004044 4D 49 53 4F           4066 	.ascii "MISO"
      004048 00                    4067 	.db	0
      004049 00 00 10 E7           4068 	.dw	0,4327
      00404D 50 30 30              4069 	.ascii "P00"
      004050 00                    4070 	.db	0
      004051 00 00 10 F7           4071 	.dw	0,4343
      004055 4D 4F 53 49           4072 	.ascii "MOSI"
      004059 00                    4073 	.db	0
      00405A 00 00 00 00           4074 	.dw	0,0
      00405E                       4075 Ldebug_pubnames_end:
                                   4076 
                                   4077 	.area .debug_frame (NOLOAD)
      0007BC 00 00                 4078 	.dw	0
      0007BE 00 10                 4079 	.dw	Ldebug_CIE0_end-Ldebug_CIE0_start
      0007C0                       4080 Ldebug_CIE0_start:
      0007C0 FF FF                 4081 	.dw	0xffff
      0007C2 FF FF                 4082 	.dw	0xffff
      0007C4 01                    4083 	.db	1
      0007C5 00                    4084 	.db	0
      0007C6 01                    4085 	.uleb128	1
      0007C7 01                    4086 	.sleb128	1
      0007C8 09                    4087 	.db	9
      0007C9 0C                    4088 	.db	12
      0007CA 16                    4089 	.uleb128	22
      0007CB 02                    4090 	.uleb128	2
      0007CC 89                    4091 	.db	137
      0007CD 01                    4092 	.uleb128	1
      0007CE 00                    4093 	.db	0
      0007CF 00                    4094 	.db	0
      0007D0                       4095 Ldebug_CIE0_end:
      0007D0 00 00 00 14           4096 	.dw	0,20
      0007D4 00 00 07 BC           4097 	.dw	0,(Ldebug_CIE0_start-4)
      0007D8 00 00 1C 07           4098 	.dw	0,(Swdt$WDT_Clear$35)	;initial loc
      0007DC 00 00 00 19           4099 	.dw	0,Swdt$WDT_Clear$40-Swdt$WDT_Clear$35
      0007E0 01                    4100 	.db	1
      0007E1 00 00 1C 07           4101 	.dw	0,(Swdt$WDT_Clear$35)
      0007E5 0E                    4102 	.db	14
      0007E6 02                    4103 	.uleb128	2
      0007E7 00                    4104 	.db	0
                                   4105 
                                   4106 	.area .debug_frame (NOLOAD)
      0007E8 00 00                 4107 	.dw	0
      0007EA 00 10                 4108 	.dw	Ldebug_CIE1_end-Ldebug_CIE1_start
      0007EC                       4109 Ldebug_CIE1_start:
      0007EC FF FF                 4110 	.dw	0xffff
      0007EE FF FF                 4111 	.dw	0xffff
      0007F0 01                    4112 	.db	1
      0007F1 00                    4113 	.db	0
      0007F2 01                    4114 	.uleb128	1
      0007F3 01                    4115 	.sleb128	1
      0007F4 09                    4116 	.db	9
      0007F5 0C                    4117 	.db	12
      0007F6 16                    4118 	.uleb128	22
      0007F7 02                    4119 	.uleb128	2
      0007F8 89                    4120 	.db	137
      0007F9 01                    4121 	.uleb128	1
      0007FA 00                    4122 	.db	0
      0007FB 00                    4123 	.db	0
      0007FC                       4124 Ldebug_CIE1_end:
      0007FC 00 00 00 14           4125 	.dw	0,20
      000800 00 00 07 E8           4126 	.dw	0,(Ldebug_CIE1_start-4)
      000804 00 00 1B EF           4127 	.dw	0,(Swdt$WDT_Interrupt$24)	;initial loc
      000808 00 00 00 18           4128 	.dw	0,Swdt$WDT_Interrupt$33-Swdt$WDT_Interrupt$24
      00080C 01                    4129 	.db	1
      00080D 00 00 1B EF           4130 	.dw	0,(Swdt$WDT_Interrupt$24)
      000811 0E                    4131 	.db	14
      000812 02                    4132 	.uleb128	2
      000813 00                    4133 	.db	0
                                   4134 
                                   4135 	.area .debug_frame (NOLOAD)
      000814 00 00                 4136 	.dw	0
      000816 00 10                 4137 	.dw	Ldebug_CIE2_end-Ldebug_CIE2_start
      000818                       4138 Ldebug_CIE2_start:
      000818 FF FF                 4139 	.dw	0xffff
      00081A FF FF                 4140 	.dw	0xffff
      00081C 01                    4141 	.db	1
      00081D 00                    4142 	.db	0
      00081E 01                    4143 	.uleb128	1
      00081F 01                    4144 	.sleb128	1
      000820 09                    4145 	.db	9
      000821 0C                    4146 	.db	12
      000822 16                    4147 	.uleb128	22
      000823 02                    4148 	.uleb128	2
      000824 89                    4149 	.db	137
      000825 01                    4150 	.uleb128	1
      000826 00                    4151 	.db	0
      000827 00                    4152 	.db	0
      000828                       4153 Ldebug_CIE2_end:
      000828 00 00 00 14           4154 	.dw	0,20
      00082C 00 00 08 14           4155 	.dw	0,(Ldebug_CIE2_start-4)
      000830 00 00 1A CD           4156 	.dw	0,(Swdt$WDT_Open$1)	;initial loc
      000834 00 00 01 22           4157 	.dw	0,Swdt$WDT_Open$22-Swdt$WDT_Open$1
      000838 01                    4158 	.db	1
      000839 00 00 1A CD           4159 	.dw	0,(Swdt$WDT_Open$1)
      00083D 0E                    4160 	.db	14
      00083E 02                    4161 	.uleb128	2
      00083F 00                    4162 	.db	0
