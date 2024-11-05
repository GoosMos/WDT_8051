                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.2.6 #13647 (MINGW32)
                                      4 ;--------------------------------------------------------
                                      5 	.module sys
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
                                    243 	.globl _MODIFY_HIRC
                                    244 	.globl _FsysSelect
                                    245 	.globl _ClockEnable
                                    246 	.globl _ClockDisable
                                    247 	.globl _ClockSwitch
                                    248 ;--------------------------------------------------------
                                    249 ; special function registers
                                    250 ;--------------------------------------------------------
                                    251 	.area RSEG    (ABS,DATA)
      000000                        252 	.org 0x0000
                           000080   253 G$P0$0_0$0 == 0x0080
                           000080   254 _P0	=	0x0080
                           000081   255 G$SP$0_0$0 == 0x0081
                           000081   256 _SP	=	0x0081
                           000082   257 G$DPL$0_0$0 == 0x0082
                           000082   258 _DPL	=	0x0082
                           000083   259 G$DPH$0_0$0 == 0x0083
                           000083   260 _DPH	=	0x0083
                           000084   261 G$RCTRIM0$0_0$0 == 0x0084
                           000084   262 _RCTRIM0	=	0x0084
                           000085   263 G$RCTRIM1$0_0$0 == 0x0085
                           000085   264 _RCTRIM1	=	0x0085
                           000086   265 G$RWK$0_0$0 == 0x0086
                           000086   266 _RWK	=	0x0086
                           000087   267 G$PCON$0_0$0 == 0x0087
                           000087   268 _PCON	=	0x0087
                           000088   269 G$TCON$0_0$0 == 0x0088
                           000088   270 _TCON	=	0x0088
                           000089   271 G$TMOD$0_0$0 == 0x0089
                           000089   272 _TMOD	=	0x0089
                           00008A   273 G$TL0$0_0$0 == 0x008a
                           00008A   274 _TL0	=	0x008a
                           00008B   275 G$TL1$0_0$0 == 0x008b
                           00008B   276 _TL1	=	0x008b
                           00008C   277 G$TH0$0_0$0 == 0x008c
                           00008C   278 _TH0	=	0x008c
                           00008D   279 G$TH1$0_0$0 == 0x008d
                           00008D   280 _TH1	=	0x008d
                           00008E   281 G$CKCON$0_0$0 == 0x008e
                           00008E   282 _CKCON	=	0x008e
                           00008F   283 G$WKCON$0_0$0 == 0x008f
                           00008F   284 _WKCON	=	0x008f
                           000090   285 G$P1$0_0$0 == 0x0090
                           000090   286 _P1	=	0x0090
                           000091   287 G$SFRS$0_0$0 == 0x0091
                           000091   288 _SFRS	=	0x0091
                           000092   289 G$CAPCON0$0_0$0 == 0x0092
                           000092   290 _CAPCON0	=	0x0092
                           000093   291 G$CAPCON1$0_0$0 == 0x0093
                           000093   292 _CAPCON1	=	0x0093
                           000094   293 G$CAPCON2$0_0$0 == 0x0094
                           000094   294 _CAPCON2	=	0x0094
                           000095   295 G$CKDIV$0_0$0 == 0x0095
                           000095   296 _CKDIV	=	0x0095
                           000096   297 G$CKSWT$0_0$0 == 0x0096
                           000096   298 _CKSWT	=	0x0096
                           000097   299 G$CKEN$0_0$0 == 0x0097
                           000097   300 _CKEN	=	0x0097
                           000098   301 G$SCON$0_0$0 == 0x0098
                           000098   302 _SCON	=	0x0098
                           000099   303 G$SBUF$0_0$0 == 0x0099
                           000099   304 _SBUF	=	0x0099
                           00009A   305 G$SBUF_1$0_0$0 == 0x009a
                           00009A   306 _SBUF_1	=	0x009a
                           00009B   307 G$EIE$0_0$0 == 0x009b
                           00009B   308 _EIE	=	0x009b
                           00009C   309 G$EIE1$0_0$0 == 0x009c
                           00009C   310 _EIE1	=	0x009c
                           00009F   311 G$CHPCON$0_0$0 == 0x009f
                           00009F   312 _CHPCON	=	0x009f
                           0000A0   313 G$P2$0_0$0 == 0x00a0
                           0000A0   314 _P2	=	0x00a0
                           0000A2   315 G$AUXR1$0_0$0 == 0x00a2
                           0000A2   316 _AUXR1	=	0x00a2
                           0000A3   317 G$BODCON0$0_0$0 == 0x00a3
                           0000A3   318 _BODCON0	=	0x00a3
                           0000A4   319 G$IAPTRG$0_0$0 == 0x00a4
                           0000A4   320 _IAPTRG	=	0x00a4
                           0000A5   321 G$IAPUEN$0_0$0 == 0x00a5
                           0000A5   322 _IAPUEN	=	0x00a5
                           0000A6   323 G$IAPAL$0_0$0 == 0x00a6
                           0000A6   324 _IAPAL	=	0x00a6
                           0000A7   325 G$IAPAH$0_0$0 == 0x00a7
                           0000A7   326 _IAPAH	=	0x00a7
                           0000A8   327 G$IE$0_0$0 == 0x00a8
                           0000A8   328 _IE	=	0x00a8
                           0000A9   329 G$SADDR$0_0$0 == 0x00a9
                           0000A9   330 _SADDR	=	0x00a9
                           0000AA   331 G$WDCON$0_0$0 == 0x00aa
                           0000AA   332 _WDCON	=	0x00aa
                           0000AB   333 G$BODCON1$0_0$0 == 0x00ab
                           0000AB   334 _BODCON1	=	0x00ab
                           0000AC   335 G$P3M1$0_0$0 == 0x00ac
                           0000AC   336 _P3M1	=	0x00ac
                           0000AC   337 G$P3S$0_0$0 == 0x00ac
                           0000AC   338 _P3S	=	0x00ac
                           0000AD   339 G$P3M2$0_0$0 == 0x00ad
                           0000AD   340 _P3M2	=	0x00ad
                           0000AD   341 G$P3SR$0_0$0 == 0x00ad
                           0000AD   342 _P3SR	=	0x00ad
                           0000AE   343 G$IAPFD$0_0$0 == 0x00ae
                           0000AE   344 _IAPFD	=	0x00ae
                           0000AF   345 G$IAPCN$0_0$0 == 0x00af
                           0000AF   346 _IAPCN	=	0x00af
                           0000B0   347 G$P3$0_0$0 == 0x00b0
                           0000B0   348 _P3	=	0x00b0
                           0000B1   349 G$P0M1$0_0$0 == 0x00b1
                           0000B1   350 _P0M1	=	0x00b1
                           0000B1   351 G$P0S$0_0$0 == 0x00b1
                           0000B1   352 _P0S	=	0x00b1
                           0000B2   353 G$P0M2$0_0$0 == 0x00b2
                           0000B2   354 _P0M2	=	0x00b2
                           0000B2   355 G$P0SR$0_0$0 == 0x00b2
                           0000B2   356 _P0SR	=	0x00b2
                           0000B3   357 G$P1M1$0_0$0 == 0x00b3
                           0000B3   358 _P1M1	=	0x00b3
                           0000B3   359 G$P1S$0_0$0 == 0x00b3
                           0000B3   360 _P1S	=	0x00b3
                           0000B4   361 G$P1M2$0_0$0 == 0x00b4
                           0000B4   362 _P1M2	=	0x00b4
                           0000B4   363 G$P1SR$0_0$0 == 0x00b4
                           0000B4   364 _P1SR	=	0x00b4
                           0000B5   365 G$P2S$0_0$0 == 0x00b5
                           0000B5   366 _P2S	=	0x00b5
                           0000B7   367 G$IPH$0_0$0 == 0x00b7
                           0000B7   368 _IPH	=	0x00b7
                           0000B7   369 G$PWMINTC$0_0$0 == 0x00b7
                           0000B7   370 _PWMINTC	=	0x00b7
                           0000B8   371 G$IP$0_0$0 == 0x00b8
                           0000B8   372 _IP	=	0x00b8
                           0000B9   373 G$SADEN$0_0$0 == 0x00b9
                           0000B9   374 _SADEN	=	0x00b9
                           0000BA   375 G$SADEN_1$0_0$0 == 0x00ba
                           0000BA   376 _SADEN_1	=	0x00ba
                           0000BB   377 G$SADDR_1$0_0$0 == 0x00bb
                           0000BB   378 _SADDR_1	=	0x00bb
                           0000BC   379 G$I2DAT$0_0$0 == 0x00bc
                           0000BC   380 _I2DAT	=	0x00bc
                           0000BD   381 G$I2STAT$0_0$0 == 0x00bd
                           0000BD   382 _I2STAT	=	0x00bd
                           0000BE   383 G$I2CLK$0_0$0 == 0x00be
                           0000BE   384 _I2CLK	=	0x00be
                           0000BF   385 G$I2TOC$0_0$0 == 0x00bf
                           0000BF   386 _I2TOC	=	0x00bf
                           0000C0   387 G$I2CON$0_0$0 == 0x00c0
                           0000C0   388 _I2CON	=	0x00c0
                           0000C1   389 G$I2ADDR$0_0$0 == 0x00c1
                           0000C1   390 _I2ADDR	=	0x00c1
                           0000C2   391 G$ADCRL$0_0$0 == 0x00c2
                           0000C2   392 _ADCRL	=	0x00c2
                           0000C3   393 G$ADCRH$0_0$0 == 0x00c3
                           0000C3   394 _ADCRH	=	0x00c3
                           0000C4   395 G$T3CON$0_0$0 == 0x00c4
                           0000C4   396 _T3CON	=	0x00c4
                           0000C4   397 G$PWM4H$0_0$0 == 0x00c4
                           0000C4   398 _PWM4H	=	0x00c4
                           0000C5   399 G$RL3$0_0$0 == 0x00c5
                           0000C5   400 _RL3	=	0x00c5
                           0000C5   401 G$PWM5H$0_0$0 == 0x00c5
                           0000C5   402 _PWM5H	=	0x00c5
                           0000C6   403 G$RH3$0_0$0 == 0x00c6
                           0000C6   404 _RH3	=	0x00c6
                           0000C6   405 G$PIOCON1$0_0$0 == 0x00c6
                           0000C6   406 _PIOCON1	=	0x00c6
                           0000C7   407 G$TA$0_0$0 == 0x00c7
                           0000C7   408 _TA	=	0x00c7
                           0000C8   409 G$T2CON$0_0$0 == 0x00c8
                           0000C8   410 _T2CON	=	0x00c8
                           0000C9   411 G$T2MOD$0_0$0 == 0x00c9
                           0000C9   412 _T2MOD	=	0x00c9
                           0000CA   413 G$RCMP2L$0_0$0 == 0x00ca
                           0000CA   414 _RCMP2L	=	0x00ca
                           0000CB   415 G$RCMP2H$0_0$0 == 0x00cb
                           0000CB   416 _RCMP2H	=	0x00cb
                           0000CC   417 G$TL2$0_0$0 == 0x00cc
                           0000CC   418 _TL2	=	0x00cc
                           0000CC   419 G$PWM4L$0_0$0 == 0x00cc
                           0000CC   420 _PWM4L	=	0x00cc
                           0000CD   421 G$TH2$0_0$0 == 0x00cd
                           0000CD   422 _TH2	=	0x00cd
                           0000CD   423 G$PWM5L$0_0$0 == 0x00cd
                           0000CD   424 _PWM5L	=	0x00cd
                           0000CE   425 G$ADCMPL$0_0$0 == 0x00ce
                           0000CE   426 _ADCMPL	=	0x00ce
                           0000CF   427 G$ADCMPH$0_0$0 == 0x00cf
                           0000CF   428 _ADCMPH	=	0x00cf
                           0000D0   429 G$PSW$0_0$0 == 0x00d0
                           0000D0   430 _PSW	=	0x00d0
                           0000D1   431 G$PWMPH$0_0$0 == 0x00d1
                           0000D1   432 _PWMPH	=	0x00d1
                           0000D2   433 G$PWM0H$0_0$0 == 0x00d2
                           0000D2   434 _PWM0H	=	0x00d2
                           0000D3   435 G$PWM1H$0_0$0 == 0x00d3
                           0000D3   436 _PWM1H	=	0x00d3
                           0000D4   437 G$PWM2H$0_0$0 == 0x00d4
                           0000D4   438 _PWM2H	=	0x00d4
                           0000D5   439 G$PWM3H$0_0$0 == 0x00d5
                           0000D5   440 _PWM3H	=	0x00d5
                           0000D6   441 G$PNP$0_0$0 == 0x00d6
                           0000D6   442 _PNP	=	0x00d6
                           0000D7   443 G$FBD$0_0$0 == 0x00d7
                           0000D7   444 _FBD	=	0x00d7
                           0000D8   445 G$PWMCON0$0_0$0 == 0x00d8
                           0000D8   446 _PWMCON0	=	0x00d8
                           0000D9   447 G$PWMPL$0_0$0 == 0x00d9
                           0000D9   448 _PWMPL	=	0x00d9
                           0000DA   449 G$PWM0L$0_0$0 == 0x00da
                           0000DA   450 _PWM0L	=	0x00da
                           0000DB   451 G$PWM1L$0_0$0 == 0x00db
                           0000DB   452 _PWM1L	=	0x00db
                           0000DC   453 G$PWM2L$0_0$0 == 0x00dc
                           0000DC   454 _PWM2L	=	0x00dc
                           0000DD   455 G$PWM3L$0_0$0 == 0x00dd
                           0000DD   456 _PWM3L	=	0x00dd
                           0000DE   457 G$PIOCON0$0_0$0 == 0x00de
                           0000DE   458 _PIOCON0	=	0x00de
                           0000DF   459 G$PWMCON1$0_0$0 == 0x00df
                           0000DF   460 _PWMCON1	=	0x00df
                           0000E0   461 G$ACC$0_0$0 == 0x00e0
                           0000E0   462 _ACC	=	0x00e0
                           0000E1   463 G$ADCCON1$0_0$0 == 0x00e1
                           0000E1   464 _ADCCON1	=	0x00e1
                           0000E2   465 G$ADCCON2$0_0$0 == 0x00e2
                           0000E2   466 _ADCCON2	=	0x00e2
                           0000E3   467 G$ADCDLY$0_0$0 == 0x00e3
                           0000E3   468 _ADCDLY	=	0x00e3
                           0000E4   469 G$C0L$0_0$0 == 0x00e4
                           0000E4   470 _C0L	=	0x00e4
                           0000E5   471 G$C0H$0_0$0 == 0x00e5
                           0000E5   472 _C0H	=	0x00e5
                           0000E6   473 G$C1L$0_0$0 == 0x00e6
                           0000E6   474 _C1L	=	0x00e6
                           0000E7   475 G$C1H$0_0$0 == 0x00e7
                           0000E7   476 _C1H	=	0x00e7
                           0000E8   477 G$ADCCON0$0_0$0 == 0x00e8
                           0000E8   478 _ADCCON0	=	0x00e8
                           0000E9   479 G$PICON$0_0$0 == 0x00e9
                           0000E9   480 _PICON	=	0x00e9
                           0000EA   481 G$PINEN$0_0$0 == 0x00ea
                           0000EA   482 _PINEN	=	0x00ea
                           0000EB   483 G$PIPEN$0_0$0 == 0x00eb
                           0000EB   484 _PIPEN	=	0x00eb
                           0000EC   485 G$PIF$0_0$0 == 0x00ec
                           0000EC   486 _PIF	=	0x00ec
                           0000ED   487 G$C2L$0_0$0 == 0x00ed
                           0000ED   488 _C2L	=	0x00ed
                           0000EE   489 G$C2H$0_0$0 == 0x00ee
                           0000EE   490 _C2H	=	0x00ee
                           0000EF   491 G$EIP$0_0$0 == 0x00ef
                           0000EF   492 _EIP	=	0x00ef
                           0000F0   493 G$B$0_0$0 == 0x00f0
                           0000F0   494 _B	=	0x00f0
                           0000F1   495 G$CAPCON3$0_0$0 == 0x00f1
                           0000F1   496 _CAPCON3	=	0x00f1
                           0000F2   497 G$CAPCON4$0_0$0 == 0x00f2
                           0000F2   498 _CAPCON4	=	0x00f2
                           0000F3   499 G$SPCR$0_0$0 == 0x00f3
                           0000F3   500 _SPCR	=	0x00f3
                           0000F3   501 G$SPCR2$0_0$0 == 0x00f3
                           0000F3   502 _SPCR2	=	0x00f3
                           0000F4   503 G$SPSR$0_0$0 == 0x00f4
                           0000F4   504 _SPSR	=	0x00f4
                           0000F5   505 G$SPDR$0_0$0 == 0x00f5
                           0000F5   506 _SPDR	=	0x00f5
                           0000F6   507 G$AINDIDS$0_0$0 == 0x00f6
                           0000F6   508 _AINDIDS	=	0x00f6
                           0000F7   509 G$EIPH$0_0$0 == 0x00f7
                           0000F7   510 _EIPH	=	0x00f7
                           0000F8   511 G$SCON_1$0_0$0 == 0x00f8
                           0000F8   512 _SCON_1	=	0x00f8
                           0000F9   513 G$PDTEN$0_0$0 == 0x00f9
                           0000F9   514 _PDTEN	=	0x00f9
                           0000FA   515 G$PDTCNT$0_0$0 == 0x00fa
                           0000FA   516 _PDTCNT	=	0x00fa
                           0000FB   517 G$PMEN$0_0$0 == 0x00fb
                           0000FB   518 _PMEN	=	0x00fb
                           0000FC   519 G$PMD$0_0$0 == 0x00fc
                           0000FC   520 _PMD	=	0x00fc
                           0000FE   521 G$EIP1$0_0$0 == 0x00fe
                           0000FE   522 _EIP1	=	0x00fe
                           0000FF   523 G$EIPH1$0_0$0 == 0x00ff
                           0000FF   524 _EIPH1	=	0x00ff
                                    525 ;--------------------------------------------------------
                                    526 ; special function bits
                                    527 ;--------------------------------------------------------
                                    528 	.area RSEG    (ABS,DATA)
      000000                        529 	.org 0x0000
                           0000FF   530 G$SM0_1$0_0$0 == 0x00ff
                           0000FF   531 _SM0_1	=	0x00ff
                           0000FF   532 G$FE_1$0_0$0 == 0x00ff
                           0000FF   533 _FE_1	=	0x00ff
                           0000FE   534 G$SM1_1$0_0$0 == 0x00fe
                           0000FE   535 _SM1_1	=	0x00fe
                           0000FD   536 G$SM2_1$0_0$0 == 0x00fd
                           0000FD   537 _SM2_1	=	0x00fd
                           0000FC   538 G$REN_1$0_0$0 == 0x00fc
                           0000FC   539 _REN_1	=	0x00fc
                           0000FB   540 G$TB8_1$0_0$0 == 0x00fb
                           0000FB   541 _TB8_1	=	0x00fb
                           0000FA   542 G$RB8_1$0_0$0 == 0x00fa
                           0000FA   543 _RB8_1	=	0x00fa
                           0000F9   544 G$TI_1$0_0$0 == 0x00f9
                           0000F9   545 _TI_1	=	0x00f9
                           0000F8   546 G$RI_1$0_0$0 == 0x00f8
                           0000F8   547 _RI_1	=	0x00f8
                           0000EF   548 G$ADCF$0_0$0 == 0x00ef
                           0000EF   549 _ADCF	=	0x00ef
                           0000EE   550 G$ADCS$0_0$0 == 0x00ee
                           0000EE   551 _ADCS	=	0x00ee
                           0000ED   552 G$ETGSEL1$0_0$0 == 0x00ed
                           0000ED   553 _ETGSEL1	=	0x00ed
                           0000EC   554 G$ETGSEL0$0_0$0 == 0x00ec
                           0000EC   555 _ETGSEL0	=	0x00ec
                           0000EB   556 G$ADCHS3$0_0$0 == 0x00eb
                           0000EB   557 _ADCHS3	=	0x00eb
                           0000EA   558 G$ADCHS2$0_0$0 == 0x00ea
                           0000EA   559 _ADCHS2	=	0x00ea
                           0000E9   560 G$ADCHS1$0_0$0 == 0x00e9
                           0000E9   561 _ADCHS1	=	0x00e9
                           0000E8   562 G$ADCHS0$0_0$0 == 0x00e8
                           0000E8   563 _ADCHS0	=	0x00e8
                           0000DF   564 G$PWMRUN$0_0$0 == 0x00df
                           0000DF   565 _PWMRUN	=	0x00df
                           0000DE   566 G$LOAD$0_0$0 == 0x00de
                           0000DE   567 _LOAD	=	0x00de
                           0000DD   568 G$PWMF$0_0$0 == 0x00dd
                           0000DD   569 _PWMF	=	0x00dd
                           0000DC   570 G$CLRPWM$0_0$0 == 0x00dc
                           0000DC   571 _CLRPWM	=	0x00dc
                           0000D7   572 G$CY$0_0$0 == 0x00d7
                           0000D7   573 _CY	=	0x00d7
                           0000D6   574 G$AC$0_0$0 == 0x00d6
                           0000D6   575 _AC	=	0x00d6
                           0000D5   576 G$F0$0_0$0 == 0x00d5
                           0000D5   577 _F0	=	0x00d5
                           0000D4   578 G$RS1$0_0$0 == 0x00d4
                           0000D4   579 _RS1	=	0x00d4
                           0000D3   580 G$RS0$0_0$0 == 0x00d3
                           0000D3   581 _RS0	=	0x00d3
                           0000D2   582 G$OV$0_0$0 == 0x00d2
                           0000D2   583 _OV	=	0x00d2
                           0000D0   584 G$P$0_0$0 == 0x00d0
                           0000D0   585 _P	=	0x00d0
                           0000CF   586 G$TF2$0_0$0 == 0x00cf
                           0000CF   587 _TF2	=	0x00cf
                           0000CA   588 G$TR2$0_0$0 == 0x00ca
                           0000CA   589 _TR2	=	0x00ca
                           0000C8   590 G$CM_RL2$0_0$0 == 0x00c8
                           0000C8   591 _CM_RL2	=	0x00c8
                           0000C6   592 G$I2CEN$0_0$0 == 0x00c6
                           0000C6   593 _I2CEN	=	0x00c6
                           0000C5   594 G$STA$0_0$0 == 0x00c5
                           0000C5   595 _STA	=	0x00c5
                           0000C4   596 G$STO$0_0$0 == 0x00c4
                           0000C4   597 _STO	=	0x00c4
                           0000C3   598 G$SI$0_0$0 == 0x00c3
                           0000C3   599 _SI	=	0x00c3
                           0000C2   600 G$AA$0_0$0 == 0x00c2
                           0000C2   601 _AA	=	0x00c2
                           0000C0   602 G$I2CPX$0_0$0 == 0x00c0
                           0000C0   603 _I2CPX	=	0x00c0
                           0000BE   604 G$PADC$0_0$0 == 0x00be
                           0000BE   605 _PADC	=	0x00be
                           0000BD   606 G$PBOD$0_0$0 == 0x00bd
                           0000BD   607 _PBOD	=	0x00bd
                           0000BC   608 G$PS$0_0$0 == 0x00bc
                           0000BC   609 _PS	=	0x00bc
                           0000BB   610 G$PT1$0_0$0 == 0x00bb
                           0000BB   611 _PT1	=	0x00bb
                           0000BA   612 G$PX1$0_0$0 == 0x00ba
                           0000BA   613 _PX1	=	0x00ba
                           0000B9   614 G$PT0$0_0$0 == 0x00b9
                           0000B9   615 _PT0	=	0x00b9
                           0000B8   616 G$PX0$0_0$0 == 0x00b8
                           0000B8   617 _PX0	=	0x00b8
                           0000B0   618 G$P30$0_0$0 == 0x00b0
                           0000B0   619 _P30	=	0x00b0
                           0000AF   620 G$EA$0_0$0 == 0x00af
                           0000AF   621 _EA	=	0x00af
                           0000AE   622 G$EADC$0_0$0 == 0x00ae
                           0000AE   623 _EADC	=	0x00ae
                           0000AD   624 G$EBOD$0_0$0 == 0x00ad
                           0000AD   625 _EBOD	=	0x00ad
                           0000AC   626 G$ES$0_0$0 == 0x00ac
                           0000AC   627 _ES	=	0x00ac
                           0000AB   628 G$ET1$0_0$0 == 0x00ab
                           0000AB   629 _ET1	=	0x00ab
                           0000AA   630 G$EX1$0_0$0 == 0x00aa
                           0000AA   631 _EX1	=	0x00aa
                           0000A9   632 G$ET0$0_0$0 == 0x00a9
                           0000A9   633 _ET0	=	0x00a9
                           0000A8   634 G$EX0$0_0$0 == 0x00a8
                           0000A8   635 _EX0	=	0x00a8
                           0000A0   636 G$P20$0_0$0 == 0x00a0
                           0000A0   637 _P20	=	0x00a0
                           00009F   638 G$SM0$0_0$0 == 0x009f
                           00009F   639 _SM0	=	0x009f
                           00009F   640 G$FE$0_0$0 == 0x009f
                           00009F   641 _FE	=	0x009f
                           00009E   642 G$SM1$0_0$0 == 0x009e
                           00009E   643 _SM1	=	0x009e
                           00009D   644 G$SM2$0_0$0 == 0x009d
                           00009D   645 _SM2	=	0x009d
                           00009C   646 G$REN$0_0$0 == 0x009c
                           00009C   647 _REN	=	0x009c
                           00009B   648 G$TB8$0_0$0 == 0x009b
                           00009B   649 _TB8	=	0x009b
                           00009A   650 G$RB8$0_0$0 == 0x009a
                           00009A   651 _RB8	=	0x009a
                           000099   652 G$TI$0_0$0 == 0x0099
                           000099   653 _TI	=	0x0099
                           000098   654 G$RI$0_0$0 == 0x0098
                           000098   655 _RI	=	0x0098
                           000097   656 G$P17$0_0$0 == 0x0097
                           000097   657 _P17	=	0x0097
                           000096   658 G$P16$0_0$0 == 0x0096
                           000096   659 _P16	=	0x0096
                           000096   660 G$TXD_1$0_0$0 == 0x0096
                           000096   661 _TXD_1	=	0x0096
                           000095   662 G$P15$0_0$0 == 0x0095
                           000095   663 _P15	=	0x0095
                           000094   664 G$P14$0_0$0 == 0x0094
                           000094   665 _P14	=	0x0094
                           000094   666 G$SDA$0_0$0 == 0x0094
                           000094   667 _SDA	=	0x0094
                           000093   668 G$P13$0_0$0 == 0x0093
                           000093   669 _P13	=	0x0093
                           000093   670 G$SCL$0_0$0 == 0x0093
                           000093   671 _SCL	=	0x0093
                           000092   672 G$P12$0_0$0 == 0x0092
                           000092   673 _P12	=	0x0092
                           000091   674 G$P11$0_0$0 == 0x0091
                           000091   675 _P11	=	0x0091
                           000090   676 G$P10$0_0$0 == 0x0090
                           000090   677 _P10	=	0x0090
                           00008F   678 G$TF1$0_0$0 == 0x008f
                           00008F   679 _TF1	=	0x008f
                           00008E   680 G$TR1$0_0$0 == 0x008e
                           00008E   681 _TR1	=	0x008e
                           00008D   682 G$TF0$0_0$0 == 0x008d
                           00008D   683 _TF0	=	0x008d
                           00008C   684 G$TR0$0_0$0 == 0x008c
                           00008C   685 _TR0	=	0x008c
                           00008B   686 G$IE1$0_0$0 == 0x008b
                           00008B   687 _IE1	=	0x008b
                           00008A   688 G$IT1$0_0$0 == 0x008a
                           00008A   689 _IT1	=	0x008a
                           000089   690 G$IE0$0_0$0 == 0x0089
                           000089   691 _IE0	=	0x0089
                           000088   692 G$IT0$0_0$0 == 0x0088
                           000088   693 _IT0	=	0x0088
                           000087   694 G$P07$0_0$0 == 0x0087
                           000087   695 _P07	=	0x0087
                           000087   696 G$RXD$0_0$0 == 0x0087
                           000087   697 _RXD	=	0x0087
                           000086   698 G$P06$0_0$0 == 0x0086
                           000086   699 _P06	=	0x0086
                           000086   700 G$TXD$0_0$0 == 0x0086
                           000086   701 _TXD	=	0x0086
                           000085   702 G$P05$0_0$0 == 0x0085
                           000085   703 _P05	=	0x0085
                           000084   704 G$P04$0_0$0 == 0x0084
                           000084   705 _P04	=	0x0084
                           000084   706 G$STADC$0_0$0 == 0x0084
                           000084   707 _STADC	=	0x0084
                           000083   708 G$P03$0_0$0 == 0x0083
                           000083   709 _P03	=	0x0083
                           000082   710 G$P02$0_0$0 == 0x0082
                           000082   711 _P02	=	0x0082
                           000082   712 G$RXD_1$0_0$0 == 0x0082
                           000082   713 _RXD_1	=	0x0082
                           000081   714 G$P01$0_0$0 == 0x0081
                           000081   715 _P01	=	0x0081
                           000081   716 G$MISO$0_0$0 == 0x0081
                           000081   717 _MISO	=	0x0081
                           000080   718 G$P00$0_0$0 == 0x0080
                           000080   719 _P00	=	0x0080
                           000080   720 G$MOSI$0_0$0 == 0x0080
                           000080   721 _MOSI	=	0x0080
                                    722 ;--------------------------------------------------------
                                    723 ; overlayable register banks
                                    724 ;--------------------------------------------------------
                                    725 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        726 	.ds 8
                                    727 ;--------------------------------------------------------
                                    728 ; internal ram data
                                    729 ;--------------------------------------------------------
                                    730 	.area DSEG    (DATA)
                                    731 ;--------------------------------------------------------
                                    732 ; internal ram data
                                    733 ;--------------------------------------------------------
                                    734 	.area INITIALIZED
                                    735 ;--------------------------------------------------------
                                    736 ; overlayable items in internal ram
                                    737 ;--------------------------------------------------------
                                    738 	.area	OSEG    (OVR,DATA)
                                    739 ;--------------------------------------------------------
                                    740 ; indirectly addressable internal ram data
                                    741 ;--------------------------------------------------------
                                    742 	.area ISEG    (DATA)
                                    743 ;--------------------------------------------------------
                                    744 ; absolute internal ram data
                                    745 ;--------------------------------------------------------
                                    746 	.area IABS    (ABS,DATA)
                                    747 	.area IABS    (ABS,DATA)
                                    748 ;--------------------------------------------------------
                                    749 ; bit data
                                    750 ;--------------------------------------------------------
                                    751 	.area BSEG    (BIT)
                                    752 ;--------------------------------------------------------
                                    753 ; paged external ram data
                                    754 ;--------------------------------------------------------
                                    755 	.area PSEG    (PAG,XDATA)
                                    756 ;--------------------------------------------------------
                                    757 ; uninitialized external ram data
                                    758 ;--------------------------------------------------------
                                    759 	.area XSEG    (XDATA)
                           000000   760 Lsys.MODIFY_HIRC$u8HIRCSEL$1_0$145==.
      00002B                        761 _MODIFY_HIRC_u8HIRCSEL_65536_145:
      00002B                        762 	.ds 1
                           000001   763 Lsys.MODIFY_HIRC$trimvalue16bit$1_0$146==.
      00002C                        764 _MODIFY_HIRC_trimvalue16bit_65536_146:
      00002C                        765 	.ds 1
                           000002   766 Lsys.FsysSelect$u8FsysMode$1_0$151==.
      00002D                        767 _FsysSelect_u8FsysMode_65536_151:
      00002D                        768 	.ds 1
                           000003   769 Lsys.ClockEnable$u8FsysMode$1_0$154==.
      00002E                        770 _ClockEnable_u8FsysMode_65536_154:
      00002E                        771 	.ds 1
                           000004   772 Lsys.ClockDisable$u8FsysMode$1_0$157==.
      00002F                        773 _ClockDisable_u8FsysMode_65536_157:
      00002F                        774 	.ds 1
                           000005   775 Lsys.ClockSwitch$u8FsysMode$1_0$160==.
      000030                        776 _ClockSwitch_u8FsysMode_65536_160:
      000030                        777 	.ds 1
                                    778 ;--------------------------------------------------------
                                    779 ; absolute external ram data
                                    780 ;--------------------------------------------------------
                                    781 	.area XABS    (ABS,XDATA)
                                    782 ;--------------------------------------------------------
                                    783 ; initialized external ram data
                                    784 ;--------------------------------------------------------
                                    785 	.area XISEG   (XDATA)
                                    786 	.area HOME    (CODE)
                                    787 	.area GSINIT0 (CODE)
                                    788 	.area GSINIT1 (CODE)
                                    789 	.area GSINIT2 (CODE)
                                    790 	.area GSINIT3 (CODE)
                                    791 	.area GSINIT4 (CODE)
                                    792 	.area GSINIT5 (CODE)
                                    793 	.area GSINIT  (CODE)
                                    794 	.area GSFINAL (CODE)
                                    795 	.area CSEG    (CODE)
                                    796 ;--------------------------------------------------------
                                    797 ; global & static initialisations
                                    798 ;--------------------------------------------------------
                                    799 	.area HOME    (CODE)
                                    800 	.area GSINIT  (CODE)
                                    801 	.area GSFINAL (CODE)
                                    802 	.area GSINIT  (CODE)
                                    803 ;--------------------------------------------------------
                                    804 ; Home
                                    805 ;--------------------------------------------------------
                                    806 	.area HOME    (CODE)
                                    807 	.area HOME    (CODE)
                                    808 ;--------------------------------------------------------
                                    809 ; code
                                    810 ;--------------------------------------------------------
                                    811 	.area CSEG    (CODE)
                                    812 ;------------------------------------------------------------
                                    813 ;Allocation info for local variables in function 'MODIFY_HIRC'
                                    814 ;------------------------------------------------------------
                                    815 ;u8HIRCSEL                 Allocated with name '_MODIFY_HIRC_u8HIRCSEL_65536_145'
                                    816 ;trimvalue16bit            Allocated with name '_MODIFY_HIRC_trimvalue16bit_65536_146'
                                    817 ;hircmap0                  Allocated to registers r6 
                                    818 ;hircmap1                  Allocated to registers r5 
                                    819 ;offset                    Allocated to registers r3 
                                    820 ;judge                     Allocated to registers r4 
                                    821 ;------------------------------------------------------------
                           000000   822 	Ssys$MODIFY_HIRC$0 ==.
                                    823 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:18: void MODIFY_HIRC(uint8_t u8HIRCSEL)
                                    824 ;	-----------------------------------------
                                    825 ;	 function MODIFY_HIRC
                                    826 ;	-----------------------------------------
      001219                        827 _MODIFY_HIRC:
                           000007   828 	ar7 = 0x07
                           000006   829 	ar6 = 0x06
                           000005   830 	ar5 = 0x05
                           000004   831 	ar4 = 0x04
                           000003   832 	ar3 = 0x03
                           000002   833 	ar2 = 0x02
                           000001   834 	ar1 = 0x01
                           000000   835 	ar0 = 0x00
                           000000   836 	Ssys$MODIFY_HIRC$1 ==.
      001219 E5 82            [12]  837 	mov	a,dpl
      00121B 90 00 2B         [24]  838 	mov	dptr,#_MODIFY_HIRC_u8HIRCSEL_65536_145
      00121E F0               [24]  839 	movx	@dptr,a
                           000006   840 	Ssys$MODIFY_HIRC$2 ==.
                                    841 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:29: set_CHPCON_IAPEN;
                                    842 ;	assignBit
      00121F A2 AF            [12]  843 	mov	c,_EA
      001221 92 00            [24]  844 	mov	_BIT_TMP,c
                                    845 ;	assignBit
      001223 C2 AF            [12]  846 	clr	_EA
      001225 75 C7 AA         [24]  847 	mov	_TA,#0xaa
      001228 75 C7 55         [24]  848 	mov	_TA,#0x55
      00122B 43 9F 01         [24]  849 	orl	_CHPCON,#0x01
                                    850 ;	assignBit
      00122E A2 00            [12]  851 	mov	c,_BIT_TMP
      001230 92 AF            [24]  852 	mov	_EA,c
                           000019   853 	Ssys$MODIFY_HIRC$3 ==.
                                    854 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:30: SFRS = 0 ;
      001232 75 91 00         [24]  855 	mov	_SFRS,#0x00
                           00001C   856 	Ssys$MODIFY_HIRC$4 ==.
                                    857 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:31: switch (u8HIRCSEL)
      001235 90 00 2B         [24]  858 	mov	dptr,#_MODIFY_HIRC_u8HIRCSEL_65536_145
      001238 E0               [24]  859 	movx	a,@dptr
      001239 FF               [12]  860 	mov	r7,a
      00123A BF 06 02         [24]  861 	cjne	r7,#0x06,00157$
      00123D 80 0A            [24]  862 	sjmp	00101$
      00123F                        863 00157$:
      00123F BF 07 02         [24]  864 	cjne	r7,#0x07,00158$
      001242 80 0A            [24]  865 	sjmp	00102$
      001244                        866 00158$:
                           00002B   867 	Ssys$MODIFY_HIRC$5 ==.
                           00002B   868 	Ssys$MODIFY_HIRC$6 ==.
                                    869 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:33: case HIRC_24:
      001244 BF 08 0F         [24]  870 	cjne	r7,#0x08,00104$
      001247 80 0A            [24]  871 	sjmp	00103$
      001249                        872 00101$:
                           000030   873 	Ssys$MODIFY_HIRC$7 ==.
                                    874 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:34: IAPAL = 0x38;
      001249 75 A6 38         [24]  875 	mov	_IAPAL,#0x38
                           000033   876 	Ssys$MODIFY_HIRC$8 ==.
                                    877 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:35: break;
                           000033   878 	Ssys$MODIFY_HIRC$9 ==.
                                    879 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:36: case HIRC_16:
      00124C 80 08            [24]  880 	sjmp	00104$
      00124E                        881 00102$:
                           000035   882 	Ssys$MODIFY_HIRC$10 ==.
                                    883 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:37: IAPAL = 0x30;
      00124E 75 A6 30         [24]  884 	mov	_IAPAL,#0x30
                           000038   885 	Ssys$MODIFY_HIRC$11 ==.
                                    886 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:38: break;
                           000038   887 	Ssys$MODIFY_HIRC$12 ==.
                                    888 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:39: case HIRC_166:
      001251 80 03            [24]  889 	sjmp	00104$
      001253                        890 00103$:
                           00003A   891 	Ssys$MODIFY_HIRC$13 ==.
                                    892 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:40: IAPAL = 0x30;
      001253 75 A6 30         [24]  893 	mov	_IAPAL,#0x30
                           00003D   894 	Ssys$MODIFY_HIRC$14 ==.
                           00003D   895 	Ssys$MODIFY_HIRC$15 ==.
                                    896 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:42: }
      001256                        897 00104$:
                           00003D   898 	Ssys$MODIFY_HIRC$16 ==.
                                    899 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:44: IAPAH = 0x00;
      001256 75 A7 00         [24]  900 	mov	_IAPAH,#0x00
                           000040   901 	Ssys$MODIFY_HIRC$17 ==.
                                    902 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:45: IAPCN = READ_UID;
      001259 75 AF 04         [24]  903 	mov	_IAPCN,#0x04
                           000043   904 	Ssys$MODIFY_HIRC$18 ==.
                                    905 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:46: set_IAPTRG_IAPGO;
                                    906 ;	assignBit
      00125C A2 AF            [12]  907 	mov	c,_EA
      00125E 92 00            [24]  908 	mov	_BIT_TMP,c
                                    909 ;	assignBit
      001260 C2 AF            [12]  910 	clr	_EA
      001262 75 C7 AA         [24]  911 	mov	_TA,#0xaa
      001265 75 C7 55         [24]  912 	mov	_TA,#0x55
      001268 43 A4 01         [24]  913 	orl	_IAPTRG,#0x01
                                    914 ;	assignBit
      00126B A2 00            [12]  915 	mov	c,_BIT_TMP
      00126D 92 AF            [24]  916 	mov	_EA,c
                           000056   917 	Ssys$MODIFY_HIRC$19 ==.
                                    918 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:47: hircmap0 = IAPFD;
      00126F AE AE            [24]  919 	mov	r6,_IAPFD
                           000058   920 	Ssys$MODIFY_HIRC$20 ==.
                                    921 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:48: IAPAL++;
      001271 E5 A6            [12]  922 	mov	a,_IAPAL
      001273 04               [12]  923 	inc	a
      001274 F5 A6            [12]  924 	mov	_IAPAL,a
                           00005D   925 	Ssys$MODIFY_HIRC$21 ==.
                                    926 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:49: set_IAPTRG_IAPGO;
                                    927 ;	assignBit
      001276 A2 AF            [12]  928 	mov	c,_EA
      001278 92 00            [24]  929 	mov	_BIT_TMP,c
                                    930 ;	assignBit
      00127A C2 AF            [12]  931 	clr	_EA
      00127C 75 C7 AA         [24]  932 	mov	_TA,#0xaa
      00127F 75 C7 55         [24]  933 	mov	_TA,#0x55
      001282 43 A4 01         [24]  934 	orl	_IAPTRG,#0x01
                                    935 ;	assignBit
      001285 A2 00            [12]  936 	mov	c,_BIT_TMP
      001287 92 AF            [24]  937 	mov	_EA,c
                           000070   938 	Ssys$MODIFY_HIRC$22 ==.
                                    939 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:50: hircmap1 = IAPFD;
      001289 AD AE            [24]  940 	mov	r5,_IAPFD
                           000072   941 	Ssys$MODIFY_HIRC$23 ==.
                                    942 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:52: switch (u8HIRCSEL)
      00128B BF 08 02         [24]  943 	cjne	r7,#0x08,00160$
      00128E 80 03            [24]  944 	sjmp	00161$
      001290                        945 00160$:
      001290 02 13 1B         [24]  946 	ljmp	00118$
      001293                        947 00161$:
                           00007A   948 	Ssys$MODIFY_HIRC$24 ==.
                           00007A   949 	Ssys$MODIFY_HIRC$25 ==.
                                    950 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:55: trimvalue16bit = ((hircmap0 << 1) + (hircmap1 & 0x01));
      001293 8E 07            [24]  951 	mov	ar7,r6
      001295 EF               [12]  952 	mov	a,r7
      001296 2F               [12]  953 	add	a,r7
      001297 FF               [12]  954 	mov	r7,a
      001298 8D 04            [24]  955 	mov	ar4,r5
      00129A 74 01            [12]  956 	mov	a,#0x01
      00129C 5C               [12]  957 	anl	a,r4
      00129D 2F               [12]  958 	add	a,r7
      00129E FF               [12]  959 	mov	r7,a
                           000086   960 	Ssys$MODIFY_HIRC$26 ==.
                                    961 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:56: judge = trimvalue16bit&0xC0;
      00129F 74 C0            [12]  962 	mov	a,#0xc0
      0012A1 5F               [12]  963 	anl	a,r7
      0012A2 FC               [12]  964 	mov	r4,a
                           00008A   965 	Ssys$MODIFY_HIRC$27 ==.
                                    966 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:57: offset = trimvalue16bit&0x3F;
      0012A3 74 3F            [12]  967 	mov	a,#0x3f
      0012A5 5F               [12]  968 	anl	a,r7
      0012A6 FB               [12]  969 	mov	r3,a
                           00008E   970 	Ssys$MODIFY_HIRC$28 ==.
                                    971 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:58: trimvalue16bit -= 14;
      0012A7 EF               [12]  972 	mov	a,r7
      0012A8 24 F2            [12]  973 	add	a,#0xf2
      0012AA FF               [12]  974 	mov	r7,a
      0012AB 90 00 2C         [24]  975 	mov	dptr,#_MODIFY_HIRC_trimvalue16bit_65536_146
      0012AE F0               [24]  976 	movx	@dptr,a
                           000096   977 	Ssys$MODIFY_HIRC$29 ==.
                                    978 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:59: IAPCN = READ_DID;
      0012AF 75 AF 0C         [24]  979 	mov	_IAPCN,#0x0c
                           000099   980 	Ssys$MODIFY_HIRC$30 ==.
                                    981 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:60: IAPAL = 1;
      0012B2 75 A6 01         [24]  982 	mov	_IAPAL,#0x01
                           00009C   983 	Ssys$MODIFY_HIRC$31 ==.
                                    984 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:61: IAPAH = 0;
      0012B5 75 A7 00         [24]  985 	mov	_IAPAH,#0x00
                           00009F   986 	Ssys$MODIFY_HIRC$32 ==.
                                    987 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:62: set_IAPTRG_IAPGO_WDCLR;
      0012B8 A2 AF            [12]  988 	mov	c,_EA
                                    989 ;	assignBit
      0012BA C2 AF            [12]  990 	clr	_EA
                                    991 ;	assignBit
      0012BC A2 AF            [12]  992 	mov	c,_EA
      0012BE 92 00            [24]  993 	mov	_BIT_TMP,c
                                    994 ;	assignBit
      0012C0 C2 AF            [12]  995 	clr	_EA
      0012C2 75 C7 AA         [24]  996 	mov	_TA,#0xaa
      0012C5 75 C7 55         [24]  997 	mov	_TA,#0x55
      0012C8 43 AA 40         [24]  998 	orl	_WDCON,#0x40
                                    999 ;	assignBit
      0012CB A2 00            [12] 1000 	mov	c,_BIT_TMP
      0012CD 92 AF            [24] 1001 	mov	_EA,c
      0012CF 75 C7 AA         [24] 1002 	mov	_TA,#0xaa
      0012D2 75 C7 55         [24] 1003 	mov	_TA,#0x55
      0012D5 43 A4 01         [24] 1004 	orl	_IAPTRG,#0x01
                                   1005 ;	assignBit
      0012D8 A2 00            [12] 1006 	mov	c,_BIT_TMP
      0012DA 92 AF            [24] 1007 	mov	_EA,c
                           0000C3  1008 	Ssys$MODIFY_HIRC$33 ==.
                                   1009 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:64: if ((IAPFD==0x4B)||(IAPFD==0x52)||(IAPFD==0x53))    // MG51 process
      0012DC 74 4B            [12] 1010 	mov	a,#0x4b
      0012DE B5 AE 02         [24] 1011 	cjne	a,_IAPFD,00162$
      0012E1 80 0C            [24] 1012 	sjmp	00113$
      0012E3                       1013 00162$:
      0012E3 74 52            [12] 1014 	mov	a,#0x52
      0012E5 B5 AE 02         [24] 1015 	cjne	a,_IAPFD,00163$
      0012E8 80 05            [24] 1016 	sjmp	00113$
      0012EA                       1017 00163$:
      0012EA 74 53            [12] 1018 	mov	a,#0x53
      0012EC B5 AE 24         [24] 1019 	cjne	a,_IAPFD,00114$
      0012EF                       1020 00113$:
                           0000D6  1021 	Ssys$MODIFY_HIRC$34 ==.
                           0000D6  1022 	Ssys$MODIFY_HIRC$35 ==.
                                   1023 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:66: if (offset<15)
      0012EF BB 0F 00         [24] 1024 	cjne	r3,#0x0f,00166$
      0012F2                       1025 00166$:
      0012F2 50 18            [24] 1026 	jnc	00111$
                           0000DB  1027 	Ssys$MODIFY_HIRC$36 ==.
                           0000DB  1028 	Ssys$MODIFY_HIRC$37 ==.
                                   1029 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:68: if ((judge==0x40)||(judge==0x80)||(judge==0xC0))
      0012F4 BC 40 02         [24] 1030 	cjne	r4,#0x40,00168$
      0012F7 80 08            [24] 1031 	sjmp	00106$
      0012F9                       1032 00168$:
      0012F9 BC 80 02         [24] 1033 	cjne	r4,#0x80,00169$
      0012FC 80 03            [24] 1034 	sjmp	00106$
      0012FE                       1035 00169$:
      0012FE BC C0 12         [24] 1036 	cjne	r4,#0xc0,00114$
      001301                       1037 00106$:
                           0000E8  1038 	Ssys$MODIFY_HIRC$38 ==.
                                   1039 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:69: trimvalue16bit -= 14;
      001301 8F 04            [24] 1040 	mov	ar4,r7
      001303 EC               [12] 1041 	mov	a,r4
      001304 24 F2            [12] 1042 	add	a,#0xf2
      001306 90 00 2C         [24] 1043 	mov	dptr,#_MODIFY_HIRC_trimvalue16bit_65536_146
      001309 F0               [24] 1044 	movx	@dptr,a
                           0000F1  1045 	Ssys$MODIFY_HIRC$39 ==.
      00130A 80 07            [24] 1046 	sjmp	00114$
      00130C                       1047 00111$:
                           0000F3  1048 	Ssys$MODIFY_HIRC$40 ==.
                                   1049 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:72: trimvalue16bit -= 4;
      00130C EF               [12] 1050 	mov	a,r7
      00130D 24 FC            [12] 1051 	add	a,#0xfc
      00130F 90 00 2C         [24] 1052 	mov	dptr,#_MODIFY_HIRC_trimvalue16bit_65536_146
      001312 F0               [24] 1053 	movx	@dptr,a
                           0000FA  1054 	Ssys$MODIFY_HIRC$41 ==.
      001313                       1055 00114$:
                           0000FA  1056 	Ssys$MODIFY_HIRC$42 ==.
                                   1057 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:74: hircmap0 = (trimvalue16bit >> 1);
      001313 90 00 2C         [24] 1058 	mov	dptr,#_MODIFY_HIRC_trimvalue16bit_65536_146
      001316 E0               [24] 1059 	movx	a,@dptr
      001317 FF               [12] 1060 	mov	r7,a
      001318 C3               [12] 1061 	clr	c
      001319 13               [12] 1062 	rrc	a
      00131A FE               [12] 1063 	mov	r6,a
                           000102  1064 	Ssys$MODIFY_HIRC$43 ==.
                           000102  1065 	Ssys$MODIFY_HIRC$44 ==.
                                   1066 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:78: }
      00131B                       1067 00118$:
                           000102  1068 	Ssys$MODIFY_HIRC$45 ==.
                                   1069 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:80: TA = 0xAA;
      00131B 75 C7 AA         [24] 1070 	mov	_TA,#0xaa
                           000105  1071 	Ssys$MODIFY_HIRC$46 ==.
                                   1072 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:81: TA = 0x55;
      00131E 75 C7 55         [24] 1073 	mov	_TA,#0x55
                           000108  1074 	Ssys$MODIFY_HIRC$47 ==.
                                   1075 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:82: RCTRIM0 = hircmap0;
      001321 8E 84            [24] 1076 	mov	_RCTRIM0,r6
                           00010A  1077 	Ssys$MODIFY_HIRC$48 ==.
                                   1078 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:83: TA = 0xAA;
      001323 75 C7 AA         [24] 1079 	mov	_TA,#0xaa
                           00010D  1080 	Ssys$MODIFY_HIRC$49 ==.
                                   1081 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:84: TA = 0x55;
      001326 75 C7 55         [24] 1082 	mov	_TA,#0x55
                           000110  1083 	Ssys$MODIFY_HIRC$50 ==.
                                   1084 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:85: RCTRIM1 = hircmap1;
      001329 8D 85            [24] 1085 	mov	_RCTRIM1,r5
                           000112  1086 	Ssys$MODIFY_HIRC$51 ==.
                                   1087 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:86: clr_CHPCON_IAPEN;
                                   1088 ;	assignBit
      00132B A2 AF            [12] 1089 	mov	c,_EA
      00132D 92 00            [24] 1090 	mov	_BIT_TMP,c
                                   1091 ;	assignBit
      00132F C2 AF            [12] 1092 	clr	_EA
      001331 75 C7 AA         [24] 1093 	mov	_TA,#0xaa
      001334 75 C7 55         [24] 1094 	mov	_TA,#0x55
      001337 53 9F FE         [24] 1095 	anl	_CHPCON,#0xfe
                                   1096 ;	assignBit
      00133A A2 00            [12] 1097 	mov	c,_BIT_TMP
      00133C 92 AF            [24] 1098 	mov	_EA,c
                           000125  1099 	Ssys$MODIFY_HIRC$52 ==.
                                   1100 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:87: }
                           000125  1101 	Ssys$MODIFY_HIRC$53 ==.
                           000125  1102 	XG$MODIFY_HIRC$0$0 ==.
      00133E 22               [24] 1103 	ret
                           000126  1104 	Ssys$MODIFY_HIRC$54 ==.
                                   1105 ;------------------------------------------------------------
                                   1106 ;Allocation info for local variables in function 'FsysSelect'
                                   1107 ;------------------------------------------------------------
                                   1108 ;u8FsysMode                Allocated with name '_FsysSelect_u8FsysMode_65536_151'
                                   1109 ;------------------------------------------------------------
                           000126  1110 	Ssys$FsysSelect$55 ==.
                                   1111 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:99: void FsysSelect(uint8_t u8FsysMode)
                                   1112 ;	-----------------------------------------
                                   1113 ;	 function FsysSelect
                                   1114 ;	-----------------------------------------
      00133F                       1115 _FsysSelect:
                           000126  1116 	Ssys$FsysSelect$56 ==.
      00133F E5 82            [12] 1117 	mov	a,dpl
      001341 90 00 2D         [24] 1118 	mov	dptr,#_FsysSelect_u8FsysMode_65536_151
      001344 F0               [24] 1119 	movx	@dptr,a
                           00012C  1120 	Ssys$FsysSelect$57 ==.
                                   1121 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:101: switch (u8FsysMode)
      001345 E0               [24] 1122 	movx	a,@dptr
      001346 FF               [12] 1123 	mov	r7,a
      001347 BF 02 02         [24] 1124 	cjne	r7,#0x02,00119$
      00134A 80 0A            [24] 1125 	sjmp	00101$
      00134C                       1126 00119$:
      00134C BF 03 02         [24] 1127 	cjne	r7,#0x03,00120$
      00134F 80 13            [24] 1128 	sjmp	00102$
      001351                       1129 00120$:
                           000138  1130 	Ssys$FsysSelect$58 ==.
                           000138  1131 	Ssys$FsysSelect$59 ==.
                                   1132 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:104: case FSYS_HIRC:
      001351 BF 04 56         [24] 1133 	cjne	r7,#0x04,00105$
      001354 80 29            [24] 1134 	sjmp	00103$
      001356                       1135 00101$:
                           00013D  1136 	Ssys$FsysSelect$60 ==.
                                   1137 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:105: ClockEnable(FSYS_HIRC);                 //Enable HIRC
      001356 75 82 02         [24] 1138 	mov	dpl,#0x02
      001359 12 13 AB         [24] 1139 	lcall	_ClockEnable
                           000143  1140 	Ssys$FsysSelect$61 ==.
                                   1141 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:106: ClockSwitch(FSYS_HIRC);                 //Switching system clock HIRC
      00135C 75 82 02         [24] 1142 	mov	dpl,#0x02
      00135F 12 14 1A         [24] 1143 	lcall	_ClockSwitch
                           000149  1144 	Ssys$FsysSelect$62 ==.
                                   1145 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:107: break;
                           000149  1146 	Ssys$FsysSelect$63 ==.
                                   1147 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:110: case FSYS_LIRC:
      001362 80 46            [24] 1148 	sjmp	00105$
      001364                       1149 00102$:
                           00014B  1150 	Ssys$FsysSelect$64 ==.
                                   1151 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:111: ClockSwitch(FSYS_LIRC);                 // LIRC always on switch system to LIRC
      001364 75 82 03         [24] 1152 	mov	dpl,#0x03
      001367 12 14 1A         [24] 1153 	lcall	_ClockSwitch
                           000151  1154 	Ssys$FsysSelect$65 ==.
                                   1155 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:112: clr_CKEN_HIRCEN;                        // Disable HIRC if needed 
                                   1156 ;	assignBit
      00136A A2 AF            [12] 1157 	mov	c,_EA
      00136C 92 00            [24] 1158 	mov	_BIT_TMP,c
                                   1159 ;	assignBit
      00136E C2 AF            [12] 1160 	clr	_EA
      001370 75 C7 AA         [24] 1161 	mov	_TA,#0xaa
      001373 75 C7 55         [24] 1162 	mov	_TA,#0x55
      001376 53 97 DF         [24] 1163 	anl	_CKEN,#0xdf
                                   1164 ;	assignBit
      001379 A2 00            [12] 1165 	mov	c,_BIT_TMP
      00137B 92 AF            [24] 1166 	mov	_EA,c
                           000164  1167 	Ssys$FsysSelect$66 ==.
                                   1168 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:113: break;
                           000164  1169 	Ssys$FsysSelect$67 ==.
                                   1170 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:116: case FSYS_OSCIN_P30:
      00137D 80 2B            [24] 1171 	sjmp	00105$
      00137F                       1172 00103$:
                           000166  1173 	Ssys$FsysSelect$68 ==.
                                   1174 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:117: ClockEnable(FSYS_HIRC);                 //Enable and system clock to HIRC
      00137F 75 82 02         [24] 1175 	mov	dpl,#0x02
      001382 12 13 AB         [24] 1176 	lcall	_ClockEnable
                           00016C  1177 	Ssys$FsysSelect$69 ==.
                                   1178 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:118: ClockSwitch(FSYS_HIRC);
      001385 75 82 02         [24] 1179 	mov	dpl,#0x02
      001388 12 14 1A         [24] 1180 	lcall	_ClockSwitch
                           000172  1181 	Ssys$FsysSelect$70 ==.
                                   1182 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:119: ClockEnable(FSYS_OSCIN_P30);            //Enable External clock source
      00138B 75 82 04         [24] 1183 	mov	dpl,#0x04
      00138E 12 13 AB         [24] 1184 	lcall	_ClockEnable
                           000178  1185 	Ssys$FsysSelect$71 ==.
                                   1186 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:120: ClockSwitch(FSYS_OSCIN_P30);            //Switching system clock to OSCIN 
      001391 75 82 04         [24] 1187 	mov	dpl,#0x04
      001394 12 14 1A         [24] 1188 	lcall	_ClockSwitch
                           00017E  1189 	Ssys$FsysSelect$72 ==.
                                   1190 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:121: clr_CKEN_HIRCEN;                        //step5: disable HIRC if needed 
                                   1191 ;	assignBit
      001397 A2 AF            [12] 1192 	mov	c,_EA
      001399 92 00            [24] 1193 	mov	_BIT_TMP,c
                                   1194 ;	assignBit
      00139B C2 AF            [12] 1195 	clr	_EA
      00139D 75 C7 AA         [24] 1196 	mov	_TA,#0xaa
      0013A0 75 C7 55         [24] 1197 	mov	_TA,#0x55
      0013A3 53 97 DF         [24] 1198 	anl	_CKEN,#0xdf
                                   1199 ;	assignBit
      0013A6 A2 00            [12] 1200 	mov	c,_BIT_TMP
      0013A8 92 AF            [24] 1201 	mov	_EA,c
                           000191  1202 	Ssys$FsysSelect$73 ==.
                           000191  1203 	Ssys$FsysSelect$74 ==.
                                   1204 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:123: }
      0013AA                       1205 00105$:
                           000191  1206 	Ssys$FsysSelect$75 ==.
                                   1207 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:124: }
                           000191  1208 	Ssys$FsysSelect$76 ==.
                           000191  1209 	XG$FsysSelect$0$0 ==.
      0013AA 22               [24] 1210 	ret
                           000192  1211 	Ssys$FsysSelect$77 ==.
                                   1212 ;------------------------------------------------------------
                                   1213 ;Allocation info for local variables in function 'ClockEnable'
                                   1214 ;------------------------------------------------------------
                                   1215 ;u8FsysMode                Allocated with name '_ClockEnable_u8FsysMode_65536_154'
                                   1216 ;------------------------------------------------------------
                           000192  1217 	Ssys$ClockEnable$78 ==.
                                   1218 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:126: void ClockEnable(uint8_t u8FsysMode)
                                   1219 ;	-----------------------------------------
                                   1220 ;	 function ClockEnable
                                   1221 ;	-----------------------------------------
      0013AB                       1222 _ClockEnable:
                           000192  1223 	Ssys$ClockEnable$79 ==.
      0013AB E5 82            [12] 1224 	mov	a,dpl
      0013AD 90 00 2E         [24] 1225 	mov	dptr,#_ClockEnable_u8FsysMode_65536_154
      0013B0 F0               [24] 1226 	movx	@dptr,a
                           000198  1227 	Ssys$ClockEnable$80 ==.
                                   1228 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:128: switch (u8FsysMode)
      0013B1 E0               [24] 1229 	movx	a,@dptr
      0013B2 FF               [12] 1230 	mov	r7,a
      0013B3 BF 02 02         [24] 1231 	cjne	r7,#0x02,00132$
      0013B6 80 05            [24] 1232 	sjmp	00101$
      0013B8                       1233 00132$:
                           00019F  1234 	Ssys$ClockEnable$81 ==.
                           00019F  1235 	Ssys$ClockEnable$82 ==.
                                   1236 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:131: case FSYS_HIRC:
      0013B8 BF 04 2A         [24] 1237 	cjne	r7,#0x04,00110$
      0013BB 80 1A            [24] 1238 	sjmp	00105$
      0013BD                       1239 00101$:
                           0001A4  1240 	Ssys$ClockEnable$83 ==.
                                   1241 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:132: set_CKEN_HIRCEN;                        //step1: Enable extnal clock source.
                                   1242 ;	assignBit
      0013BD A2 AF            [12] 1243 	mov	c,_EA
      0013BF 92 00            [24] 1244 	mov	_BIT_TMP,c
                                   1245 ;	assignBit
      0013C1 C2 AF            [12] 1246 	clr	_EA
      0013C3 75 C7 AA         [24] 1247 	mov	_TA,#0xaa
      0013C6 75 C7 55         [24] 1248 	mov	_TA,#0x55
      0013C9 43 97 20         [24] 1249 	orl	_CKEN,#0x20
                                   1250 ;	assignBit
      0013CC A2 00            [12] 1251 	mov	c,_BIT_TMP
      0013CE 92 AF            [24] 1252 	mov	_EA,c
                           0001B7  1253 	Ssys$ClockEnable$84 ==.
                                   1254 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:133: while(!(CKSWT&SET_BIT5));               //step2: check clock source status and wait for ready
      0013D0                       1255 00102$:
      0013D0 E5 96            [12] 1256 	mov	a,_CKSWT
      0013D2 20 E5 10         [24] 1257 	jb	acc.5,00110$
                           0001BC  1258 	Ssys$ClockEnable$85 ==.
                                   1259 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:136: case FSYS_OSCIN_P30:
      0013D5 80 F9            [24] 1260 	sjmp	00102$
      0013D7                       1261 00105$:
                           0001BE  1262 	Ssys$ClockEnable$86 ==.
                                   1263 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:137: TA=0xAA;TA=0x55;CKEN|=0xC0;             //step1: Enable extnal clock source.
      0013D7 75 C7 AA         [24] 1264 	mov	_TA,#0xaa
      0013DA 75 C7 55         [24] 1265 	mov	_TA,#0x55
      0013DD 43 97 C0         [24] 1266 	orl	_CKEN,#0xc0
                           0001C7  1267 	Ssys$ClockEnable$87 ==.
                                   1268 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:138: while(!(CKSWT&SET_BIT3));               //step2: check clock source status and wait for ready
      0013E0                       1269 00106$:
      0013E0 E5 96            [12] 1270 	mov	a,_CKSWT
      0013E2 30 E3 FB         [24] 1271 	jnb	acc.3,00106$
                           0001CC  1272 	Ssys$ClockEnable$88 ==.
                           0001CC  1273 	Ssys$ClockEnable$89 ==.
                                   1274 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:140: }
      0013E5                       1275 00110$:
                           0001CC  1276 	Ssys$ClockEnable$90 ==.
                                   1277 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:141: }
                           0001CC  1278 	Ssys$ClockEnable$91 ==.
                           0001CC  1279 	XG$ClockEnable$0$0 ==.
      0013E5 22               [24] 1280 	ret
                           0001CD  1281 	Ssys$ClockEnable$92 ==.
                                   1282 ;------------------------------------------------------------
                                   1283 ;Allocation info for local variables in function 'ClockDisable'
                                   1284 ;------------------------------------------------------------
                                   1285 ;u8FsysMode                Allocated with name '_ClockDisable_u8FsysMode_65536_157'
                                   1286 ;------------------------------------------------------------
                           0001CD  1287 	Ssys$ClockDisable$93 ==.
                                   1288 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:143: void ClockDisable(uint8_t u8FsysMode)
                                   1289 ;	-----------------------------------------
                                   1290 ;	 function ClockDisable
                                   1291 ;	-----------------------------------------
      0013E6                       1292 _ClockDisable:
                           0001CD  1293 	Ssys$ClockDisable$94 ==.
      0013E6 E5 82            [12] 1294 	mov	a,dpl
      0013E8 90 00 2F         [24] 1295 	mov	dptr,#_ClockDisable_u8FsysMode_65536_157
      0013EB F0               [24] 1296 	movx	@dptr,a
                           0001D3  1297 	Ssys$ClockDisable$95 ==.
                                   1298 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:145: SFRS = 0;
      0013EC 75 91 00         [24] 1299 	mov	_SFRS,#0x00
                           0001D6  1300 	Ssys$ClockDisable$96 ==.
                                   1301 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:146: switch (u8FsysMode)
      0013EF E0               [24] 1302 	movx	a,@dptr
      0013F0 FF               [12] 1303 	mov	r7,a
      0013F1 BF 02 02         [24] 1304 	cjne	r7,#0x02,00114$
      0013F4 80 05            [24] 1305 	sjmp	00101$
      0013F6                       1306 00114$:
                           0001DD  1307 	Ssys$ClockDisable$97 ==.
                           0001DD  1308 	Ssys$ClockDisable$98 ==.
                                   1309 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:149: case FSYS_HIRC:
      0013F6 BF 04 20         [24] 1310 	cjne	r7,#0x04,00104$
      0013F9 80 15            [24] 1311 	sjmp	00102$
      0013FB                       1312 00101$:
                           0001E2  1313 	Ssys$ClockDisable$99 ==.
                                   1314 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:150: clr_CKEN_HIRCEN;
                                   1315 ;	assignBit
      0013FB A2 AF            [12] 1316 	mov	c,_EA
      0013FD 92 00            [24] 1317 	mov	_BIT_TMP,c
                                   1318 ;	assignBit
      0013FF C2 AF            [12] 1319 	clr	_EA
      001401 75 C7 AA         [24] 1320 	mov	_TA,#0xaa
      001404 75 C7 55         [24] 1321 	mov	_TA,#0x55
      001407 53 97 DF         [24] 1322 	anl	_CKEN,#0xdf
                                   1323 ;	assignBit
      00140A A2 00            [12] 1324 	mov	c,_BIT_TMP
      00140C 92 AF            [24] 1325 	mov	_EA,c
                           0001F5  1326 	Ssys$ClockDisable$100 ==.
                                   1327 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:151: break;
                           0001F5  1328 	Ssys$ClockDisable$101 ==.
                                   1329 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:153: case FSYS_OSCIN_P30:
      00140E 80 09            [24] 1330 	sjmp	00104$
      001410                       1331 00102$:
                           0001F7  1332 	Ssys$ClockDisable$102 ==.
                                   1333 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:154: TA=0xAA;TA=0x55;CKEN&=0x3F;
      001410 75 C7 AA         [24] 1334 	mov	_TA,#0xaa
      001413 75 C7 55         [24] 1335 	mov	_TA,#0x55
      001416 53 97 3F         [24] 1336 	anl	_CKEN,#0x3f
                           000200  1337 	Ssys$ClockDisable$103 ==.
                           000200  1338 	Ssys$ClockDisable$104 ==.
                                   1339 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:156: }
      001419                       1340 00104$:
                           000200  1341 	Ssys$ClockDisable$105 ==.
                                   1342 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:157: }
                           000200  1343 	Ssys$ClockDisable$106 ==.
                           000200  1344 	XG$ClockDisable$0$0 ==.
      001419 22               [24] 1345 	ret
                           000201  1346 	Ssys$ClockDisable$107 ==.
                                   1347 ;------------------------------------------------------------
                                   1348 ;Allocation info for local variables in function 'ClockSwitch'
                                   1349 ;------------------------------------------------------------
                                   1350 ;u8FsysMode                Allocated with name '_ClockSwitch_u8FsysMode_65536_160'
                                   1351 ;------------------------------------------------------------
                           000201  1352 	Ssys$ClockSwitch$108 ==.
                                   1353 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:159: void ClockSwitch(uint8_t u8FsysMode)
                                   1354 ;	-----------------------------------------
                                   1355 ;	 function ClockSwitch
                                   1356 ;	-----------------------------------------
      00141A                       1357 _ClockSwitch:
                           000201  1358 	Ssys$ClockSwitch$109 ==.
      00141A E5 82            [12] 1359 	mov	a,dpl
      00141C 90 00 30         [24] 1360 	mov	dptr,#_ClockSwitch_u8FsysMode_65536_160
      00141F F0               [24] 1361 	movx	@dptr,a
                           000207  1362 	Ssys$ClockSwitch$110 ==.
                                   1363 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:161: SFRS = 0 ;
      001420 75 91 00         [24] 1364 	mov	_SFRS,#0x00
                           00020A  1365 	Ssys$ClockSwitch$111 ==.
                                   1366 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:162: BIT_TMP=EA;EA=0;
                                   1367 ;	assignBit
      001423 A2 AF            [12] 1368 	mov	c,_EA
      001425 92 00            [24] 1369 	mov	_BIT_TMP,c
                                   1370 ;	assignBit
      001427 C2 AF            [12] 1371 	clr	_EA
                           000210  1372 	Ssys$ClockSwitch$112 ==.
                                   1373 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:163: switch (u8FsysMode)
      001429 90 00 30         [24] 1374 	mov	dptr,#_ClockSwitch_u8FsysMode_65536_160
      00142C E0               [24] 1375 	movx	a,@dptr
      00142D FF               [12] 1376 	mov	r7,a
      00142E BF 02 02         [24] 1377 	cjne	r7,#0x02,00119$
      001431 80 0A            [24] 1378 	sjmp	00101$
      001433                       1379 00119$:
      001433 BF 03 02         [24] 1380 	cjne	r7,#0x03,00120$
      001436 80 2D            [24] 1381 	sjmp	00102$
      001438                       1382 00120$:
                           00021F  1383 	Ssys$ClockSwitch$113 ==.
                           00021F  1384 	Ssys$ClockSwitch$114 ==.
                                   1385 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:166: case FSYS_HIRC:
      001438 BF 04 65         [24] 1386 	cjne	r7,#0x04,00104$
      00143B 80 50            [24] 1387 	sjmp	00103$
      00143D                       1388 00101$:
                           000224  1389 	Ssys$ClockSwitch$115 ==.
                                   1390 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:167: clr_CKSWT_OSC1;
                                   1391 ;	assignBit
      00143D A2 AF            [12] 1392 	mov	c,_EA
      00143F 92 00            [24] 1393 	mov	_BIT_TMP,c
                                   1394 ;	assignBit
      001441 C2 AF            [12] 1395 	clr	_EA
      001443 75 C7 AA         [24] 1396 	mov	_TA,#0xaa
      001446 75 C7 55         [24] 1397 	mov	_TA,#0x55
      001449 53 96 FB         [24] 1398 	anl	_CKSWT,#0xfb
                                   1399 ;	assignBit
      00144C A2 00            [12] 1400 	mov	c,_BIT_TMP
      00144E 92 AF            [24] 1401 	mov	_EA,c
                           000237  1402 	Ssys$ClockSwitch$116 ==.
                                   1403 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:168: clr_CKSWT_OSC0;
                                   1404 ;	assignBit
      001450 A2 AF            [12] 1405 	mov	c,_EA
      001452 92 00            [24] 1406 	mov	_BIT_TMP,c
                                   1407 ;	assignBit
      001454 C2 AF            [12] 1408 	clr	_EA
      001456 75 C7 AA         [24] 1409 	mov	_TA,#0xaa
      001459 75 C7 55         [24] 1410 	mov	_TA,#0x55
      00145C 53 96 FD         [24] 1411 	anl	_CKSWT,#0xfd
                                   1412 ;	assignBit
      00145F A2 00            [12] 1413 	mov	c,_BIT_TMP
      001461 92 AF            [24] 1414 	mov	_EA,c
                           00024A  1415 	Ssys$ClockSwitch$117 ==.
                                   1416 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:169: break;
                           00024A  1417 	Ssys$ClockSwitch$118 ==.
                                   1418 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:171: case FSYS_LIRC:
      001463 80 3B            [24] 1419 	sjmp	00104$
      001465                       1420 00102$:
                           00024C  1421 	Ssys$ClockSwitch$119 ==.
                                   1422 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:172: set_CKSWT_OSC1;
                                   1423 ;	assignBit
      001465 A2 AF            [12] 1424 	mov	c,_EA
      001467 92 00            [24] 1425 	mov	_BIT_TMP,c
                                   1426 ;	assignBit
      001469 C2 AF            [12] 1427 	clr	_EA
      00146B 75 C7 AA         [24] 1428 	mov	_TA,#0xaa
      00146E 75 C7 55         [24] 1429 	mov	_TA,#0x55
      001471 43 96 04         [24] 1430 	orl	_CKSWT,#0x04
                                   1431 ;	assignBit
      001474 A2 00            [12] 1432 	mov	c,_BIT_TMP
      001476 92 AF            [24] 1433 	mov	_EA,c
                           00025F  1434 	Ssys$ClockSwitch$120 ==.
                                   1435 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:173: clr_CKSWT_OSC0;
                                   1436 ;	assignBit
      001478 A2 AF            [12] 1437 	mov	c,_EA
      00147A 92 00            [24] 1438 	mov	_BIT_TMP,c
                                   1439 ;	assignBit
      00147C C2 AF            [12] 1440 	clr	_EA
      00147E 75 C7 AA         [24] 1441 	mov	_TA,#0xaa
      001481 75 C7 55         [24] 1442 	mov	_TA,#0x55
      001484 53 96 FD         [24] 1443 	anl	_CKSWT,#0xfd
                                   1444 ;	assignBit
      001487 A2 00            [12] 1445 	mov	c,_BIT_TMP
      001489 92 AF            [24] 1446 	mov	_EA,c
                           000272  1447 	Ssys$ClockSwitch$121 ==.
                                   1448 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:174: break;
                           000272  1449 	Ssys$ClockSwitch$122 ==.
                                   1450 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:176: case FSYS_OSCIN_P30:
      00148B 80 13            [24] 1451 	sjmp	00104$
      00148D                       1452 00103$:
                           000274  1453 	Ssys$ClockSwitch$123 ==.
                                   1454 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:177: set_CKSWT_ECLKST;
                                   1455 ;	assignBit
      00148D A2 AF            [12] 1456 	mov	c,_EA
      00148F 92 00            [24] 1457 	mov	_BIT_TMP,c
                                   1458 ;	assignBit
      001491 C2 AF            [12] 1459 	clr	_EA
      001493 75 C7 AA         [24] 1460 	mov	_TA,#0xaa
      001496 75 C7 55         [24] 1461 	mov	_TA,#0x55
      001499 43 96 08         [24] 1462 	orl	_CKSWT,#0x08
                                   1463 ;	assignBit
      00149C A2 00            [12] 1464 	mov	c,_BIT_TMP
      00149E 92 AF            [24] 1465 	mov	_EA,c
                           000287  1466 	Ssys$ClockSwitch$124 ==.
                           000287  1467 	Ssys$ClockSwitch$125 ==.
                                   1468 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:179: }
      0014A0                       1469 00104$:
                           000287  1470 	Ssys$ClockSwitch$126 ==.
                                   1471 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:180: EA = BIT_TMP;
                                   1472 ;	assignBit
      0014A0 A2 00            [12] 1473 	mov	c,_BIT_TMP
      0014A2 92 AF            [24] 1474 	mov	_EA,c
                           00028B  1475 	Ssys$ClockSwitch$127 ==.
                                   1476 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:181: }
                           00028B  1477 	Ssys$ClockSwitch$128 ==.
                           00028B  1478 	XG$ClockSwitch$0$0 ==.
      0014A4 22               [24] 1479 	ret
                           00028C  1480 	Ssys$ClockSwitch$129 ==.
                                   1481 	.area CSEG    (CODE)
                                   1482 	.area CONST   (CODE)
                                   1483 	.area XINIT   (CODE)
                                   1484 	.area INITIALIZER
                                   1485 	.area CABS    (ABS,CODE)
                                   1486 
                                   1487 	.area .debug_line (NOLOAD)
      000D2D 00 00 03 34           1488 	.dw	0,Ldebug_line_end-Ldebug_line_start
      000D31                       1489 Ldebug_line_start:
      000D31 00 02                 1490 	.dw	2
      000D33 00 00 00 A6           1491 	.dw	0,Ldebug_line_stmt-6-Ldebug_line_start
      000D37 01                    1492 	.db	1
      000D38 01                    1493 	.db	1
      000D39 FB                    1494 	.db	-5
      000D3A 0F                    1495 	.db	15
      000D3B 0A                    1496 	.db	10
      000D3C 00                    1497 	.db	0
      000D3D 01                    1498 	.db	1
      000D3E 01                    1499 	.db	1
      000D3F 01                    1500 	.db	1
      000D40 01                    1501 	.db	1
      000D41 00                    1502 	.db	0
      000D42 00                    1503 	.db	0
      000D43 00                    1504 	.db	0
      000D44 01                    1505 	.db	1
      000D45 2F 2E 2E 2F 69 6E 63  1506 	.ascii "/../include/mcs51"
             6C 75 64 65 2F 6D 63
             73 35 31
      000D56 00                    1507 	.db	0
      000D57 2F 2E 2E 2F 69 6E 63  1508 	.ascii "/../include"
             6C 75 64 65
      000D62 00                    1509 	.db	0
      000D63 00                    1510 	.db	0
      000D64 43 3A 2F 55 73 65 72  1511 	.ascii "C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c"
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
             79 73 2E 63
      000DD8 00                    1512 	.db	0
      000DD9 00                    1513 	.uleb128	0
      000DDA 00                    1514 	.uleb128	0
      000DDB 00                    1515 	.uleb128	0
      000DDC 00                    1516 	.db	0
      000DDD                       1517 Ldebug_line_stmt:
      000DDD 00                    1518 	.db	0
      000DDE 05                    1519 	.uleb128	5
      000DDF 02                    1520 	.db	2
      000DE0 00 00 12 19           1521 	.dw	0,(Ssys$MODIFY_HIRC$0)
      000DE4 03                    1522 	.db	3
      000DE5 11                    1523 	.sleb128	17
      000DE6 01                    1524 	.db	1
      000DE7 09                    1525 	.db	9
      000DE8 00 06                 1526 	.dw	Ssys$MODIFY_HIRC$2-Ssys$MODIFY_HIRC$0
      000DEA 03                    1527 	.db	3
      000DEB 0B                    1528 	.sleb128	11
      000DEC 01                    1529 	.db	1
      000DED 09                    1530 	.db	9
      000DEE 00 13                 1531 	.dw	Ssys$MODIFY_HIRC$3-Ssys$MODIFY_HIRC$2
      000DF0 03                    1532 	.db	3
      000DF1 01                    1533 	.sleb128	1
      000DF2 01                    1534 	.db	1
      000DF3 09                    1535 	.db	9
      000DF4 00 03                 1536 	.dw	Ssys$MODIFY_HIRC$4-Ssys$MODIFY_HIRC$3
      000DF6 03                    1537 	.db	3
      000DF7 01                    1538 	.sleb128	1
      000DF8 01                    1539 	.db	1
      000DF9 09                    1540 	.db	9
      000DFA 00 0F                 1541 	.dw	Ssys$MODIFY_HIRC$6-Ssys$MODIFY_HIRC$4
      000DFC 03                    1542 	.db	3
      000DFD 02                    1543 	.sleb128	2
      000DFE 01                    1544 	.db	1
      000DFF 09                    1545 	.db	9
      000E00 00 05                 1546 	.dw	Ssys$MODIFY_HIRC$7-Ssys$MODIFY_HIRC$6
      000E02 03                    1547 	.db	3
      000E03 01                    1548 	.sleb128	1
      000E04 01                    1549 	.db	1
      000E05 09                    1550 	.db	9
      000E06 00 03                 1551 	.dw	Ssys$MODIFY_HIRC$8-Ssys$MODIFY_HIRC$7
      000E08 03                    1552 	.db	3
      000E09 01                    1553 	.sleb128	1
      000E0A 01                    1554 	.db	1
      000E0B 09                    1555 	.db	9
      000E0C 00 00                 1556 	.dw	Ssys$MODIFY_HIRC$9-Ssys$MODIFY_HIRC$8
      000E0E 03                    1557 	.db	3
      000E0F 01                    1558 	.sleb128	1
      000E10 01                    1559 	.db	1
      000E11 09                    1560 	.db	9
      000E12 00 02                 1561 	.dw	Ssys$MODIFY_HIRC$10-Ssys$MODIFY_HIRC$9
      000E14 03                    1562 	.db	3
      000E15 01                    1563 	.sleb128	1
      000E16 01                    1564 	.db	1
      000E17 09                    1565 	.db	9
      000E18 00 03                 1566 	.dw	Ssys$MODIFY_HIRC$11-Ssys$MODIFY_HIRC$10
      000E1A 03                    1567 	.db	3
      000E1B 01                    1568 	.sleb128	1
      000E1C 01                    1569 	.db	1
      000E1D 09                    1570 	.db	9
      000E1E 00 00                 1571 	.dw	Ssys$MODIFY_HIRC$12-Ssys$MODIFY_HIRC$11
      000E20 03                    1572 	.db	3
      000E21 01                    1573 	.sleb128	1
      000E22 01                    1574 	.db	1
      000E23 09                    1575 	.db	9
      000E24 00 02                 1576 	.dw	Ssys$MODIFY_HIRC$13-Ssys$MODIFY_HIRC$12
      000E26 03                    1577 	.db	3
      000E27 01                    1578 	.sleb128	1
      000E28 01                    1579 	.db	1
      000E29 09                    1580 	.db	9
      000E2A 00 03                 1581 	.dw	Ssys$MODIFY_HIRC$15-Ssys$MODIFY_HIRC$13
      000E2C 03                    1582 	.db	3
      000E2D 02                    1583 	.sleb128	2
      000E2E 01                    1584 	.db	1
      000E2F 09                    1585 	.db	9
      000E30 00 00                 1586 	.dw	Ssys$MODIFY_HIRC$16-Ssys$MODIFY_HIRC$15
      000E32 03                    1587 	.db	3
      000E33 02                    1588 	.sleb128	2
      000E34 01                    1589 	.db	1
      000E35 09                    1590 	.db	9
      000E36 00 03                 1591 	.dw	Ssys$MODIFY_HIRC$17-Ssys$MODIFY_HIRC$16
      000E38 03                    1592 	.db	3
      000E39 01                    1593 	.sleb128	1
      000E3A 01                    1594 	.db	1
      000E3B 09                    1595 	.db	9
      000E3C 00 03                 1596 	.dw	Ssys$MODIFY_HIRC$18-Ssys$MODIFY_HIRC$17
      000E3E 03                    1597 	.db	3
      000E3F 01                    1598 	.sleb128	1
      000E40 01                    1599 	.db	1
      000E41 09                    1600 	.db	9
      000E42 00 13                 1601 	.dw	Ssys$MODIFY_HIRC$19-Ssys$MODIFY_HIRC$18
      000E44 03                    1602 	.db	3
      000E45 01                    1603 	.sleb128	1
      000E46 01                    1604 	.db	1
      000E47 09                    1605 	.db	9
      000E48 00 02                 1606 	.dw	Ssys$MODIFY_HIRC$20-Ssys$MODIFY_HIRC$19
      000E4A 03                    1607 	.db	3
      000E4B 01                    1608 	.sleb128	1
      000E4C 01                    1609 	.db	1
      000E4D 09                    1610 	.db	9
      000E4E 00 05                 1611 	.dw	Ssys$MODIFY_HIRC$21-Ssys$MODIFY_HIRC$20
      000E50 03                    1612 	.db	3
      000E51 01                    1613 	.sleb128	1
      000E52 01                    1614 	.db	1
      000E53 09                    1615 	.db	9
      000E54 00 13                 1616 	.dw	Ssys$MODIFY_HIRC$22-Ssys$MODIFY_HIRC$21
      000E56 03                    1617 	.db	3
      000E57 01                    1618 	.sleb128	1
      000E58 01                    1619 	.db	1
      000E59 09                    1620 	.db	9
      000E5A 00 02                 1621 	.dw	Ssys$MODIFY_HIRC$23-Ssys$MODIFY_HIRC$22
      000E5C 03                    1622 	.db	3
      000E5D 02                    1623 	.sleb128	2
      000E5E 01                    1624 	.db	1
      000E5F 09                    1625 	.db	9
      000E60 00 08                 1626 	.dw	Ssys$MODIFY_HIRC$25-Ssys$MODIFY_HIRC$23
      000E62 03                    1627 	.db	3
      000E63 03                    1628 	.sleb128	3
      000E64 01                    1629 	.db	1
      000E65 09                    1630 	.db	9
      000E66 00 0C                 1631 	.dw	Ssys$MODIFY_HIRC$26-Ssys$MODIFY_HIRC$25
      000E68 03                    1632 	.db	3
      000E69 01                    1633 	.sleb128	1
      000E6A 01                    1634 	.db	1
      000E6B 09                    1635 	.db	9
      000E6C 00 04                 1636 	.dw	Ssys$MODIFY_HIRC$27-Ssys$MODIFY_HIRC$26
      000E6E 03                    1637 	.db	3
      000E6F 01                    1638 	.sleb128	1
      000E70 01                    1639 	.db	1
      000E71 09                    1640 	.db	9
      000E72 00 04                 1641 	.dw	Ssys$MODIFY_HIRC$28-Ssys$MODIFY_HIRC$27
      000E74 03                    1642 	.db	3
      000E75 01                    1643 	.sleb128	1
      000E76 01                    1644 	.db	1
      000E77 09                    1645 	.db	9
      000E78 00 08                 1646 	.dw	Ssys$MODIFY_HIRC$29-Ssys$MODIFY_HIRC$28
      000E7A 03                    1647 	.db	3
      000E7B 01                    1648 	.sleb128	1
      000E7C 01                    1649 	.db	1
      000E7D 09                    1650 	.db	9
      000E7E 00 03                 1651 	.dw	Ssys$MODIFY_HIRC$30-Ssys$MODIFY_HIRC$29
      000E80 03                    1652 	.db	3
      000E81 01                    1653 	.sleb128	1
      000E82 01                    1654 	.db	1
      000E83 09                    1655 	.db	9
      000E84 00 03                 1656 	.dw	Ssys$MODIFY_HIRC$31-Ssys$MODIFY_HIRC$30
      000E86 03                    1657 	.db	3
      000E87 01                    1658 	.sleb128	1
      000E88 01                    1659 	.db	1
      000E89 09                    1660 	.db	9
      000E8A 00 03                 1661 	.dw	Ssys$MODIFY_HIRC$32-Ssys$MODIFY_HIRC$31
      000E8C 03                    1662 	.db	3
      000E8D 01                    1663 	.sleb128	1
      000E8E 01                    1664 	.db	1
      000E8F 09                    1665 	.db	9
      000E90 00 24                 1666 	.dw	Ssys$MODIFY_HIRC$33-Ssys$MODIFY_HIRC$32
      000E92 03                    1667 	.db	3
      000E93 02                    1668 	.sleb128	2
      000E94 01                    1669 	.db	1
      000E95 09                    1670 	.db	9
      000E96 00 13                 1671 	.dw	Ssys$MODIFY_HIRC$35-Ssys$MODIFY_HIRC$33
      000E98 03                    1672 	.db	3
      000E99 02                    1673 	.sleb128	2
      000E9A 01                    1674 	.db	1
      000E9B 09                    1675 	.db	9
      000E9C 00 05                 1676 	.dw	Ssys$MODIFY_HIRC$37-Ssys$MODIFY_HIRC$35
      000E9E 03                    1677 	.db	3
      000E9F 02                    1678 	.sleb128	2
      000EA0 01                    1679 	.db	1
      000EA1 09                    1680 	.db	9
      000EA2 00 0D                 1681 	.dw	Ssys$MODIFY_HIRC$38-Ssys$MODIFY_HIRC$37
      000EA4 03                    1682 	.db	3
      000EA5 01                    1683 	.sleb128	1
      000EA6 01                    1684 	.db	1
      000EA7 09                    1685 	.db	9
      000EA8 00 0B                 1686 	.dw	Ssys$MODIFY_HIRC$40-Ssys$MODIFY_HIRC$38
      000EAA 03                    1687 	.db	3
      000EAB 03                    1688 	.sleb128	3
      000EAC 01                    1689 	.db	1
      000EAD 09                    1690 	.db	9
      000EAE 00 07                 1691 	.dw	Ssys$MODIFY_HIRC$42-Ssys$MODIFY_HIRC$40
      000EB0 03                    1692 	.db	3
      000EB1 02                    1693 	.sleb128	2
      000EB2 01                    1694 	.db	1
      000EB3 09                    1695 	.db	9
      000EB4 00 08                 1696 	.dw	Ssys$MODIFY_HIRC$44-Ssys$MODIFY_HIRC$42
      000EB6 03                    1697 	.db	3
      000EB7 04                    1698 	.sleb128	4
      000EB8 01                    1699 	.db	1
      000EB9 09                    1700 	.db	9
      000EBA 00 00                 1701 	.dw	Ssys$MODIFY_HIRC$45-Ssys$MODIFY_HIRC$44
      000EBC 03                    1702 	.db	3
      000EBD 02                    1703 	.sleb128	2
      000EBE 01                    1704 	.db	1
      000EBF 09                    1705 	.db	9
      000EC0 00 03                 1706 	.dw	Ssys$MODIFY_HIRC$46-Ssys$MODIFY_HIRC$45
      000EC2 03                    1707 	.db	3
      000EC3 01                    1708 	.sleb128	1
      000EC4 01                    1709 	.db	1
      000EC5 09                    1710 	.db	9
      000EC6 00 03                 1711 	.dw	Ssys$MODIFY_HIRC$47-Ssys$MODIFY_HIRC$46
      000EC8 03                    1712 	.db	3
      000EC9 01                    1713 	.sleb128	1
      000ECA 01                    1714 	.db	1
      000ECB 09                    1715 	.db	9
      000ECC 00 02                 1716 	.dw	Ssys$MODIFY_HIRC$48-Ssys$MODIFY_HIRC$47
      000ECE 03                    1717 	.db	3
      000ECF 01                    1718 	.sleb128	1
      000ED0 01                    1719 	.db	1
      000ED1 09                    1720 	.db	9
      000ED2 00 03                 1721 	.dw	Ssys$MODIFY_HIRC$49-Ssys$MODIFY_HIRC$48
      000ED4 03                    1722 	.db	3
      000ED5 01                    1723 	.sleb128	1
      000ED6 01                    1724 	.db	1
      000ED7 09                    1725 	.db	9
      000ED8 00 03                 1726 	.dw	Ssys$MODIFY_HIRC$50-Ssys$MODIFY_HIRC$49
      000EDA 03                    1727 	.db	3
      000EDB 01                    1728 	.sleb128	1
      000EDC 01                    1729 	.db	1
      000EDD 09                    1730 	.db	9
      000EDE 00 02                 1731 	.dw	Ssys$MODIFY_HIRC$51-Ssys$MODIFY_HIRC$50
      000EE0 03                    1732 	.db	3
      000EE1 01                    1733 	.sleb128	1
      000EE2 01                    1734 	.db	1
      000EE3 09                    1735 	.db	9
      000EE4 00 13                 1736 	.dw	Ssys$MODIFY_HIRC$52-Ssys$MODIFY_HIRC$51
      000EE6 03                    1737 	.db	3
      000EE7 01                    1738 	.sleb128	1
      000EE8 01                    1739 	.db	1
      000EE9 09                    1740 	.db	9
      000EEA 00 01                 1741 	.dw	1+Ssys$MODIFY_HIRC$53-Ssys$MODIFY_HIRC$52
      000EEC 00                    1742 	.db	0
      000EED 01                    1743 	.uleb128	1
      000EEE 01                    1744 	.db	1
      000EEF 00                    1745 	.db	0
      000EF0 05                    1746 	.uleb128	5
      000EF1 02                    1747 	.db	2
      000EF2 00 00 13 3F           1748 	.dw	0,(Ssys$FsysSelect$55)
      000EF6 03                    1749 	.db	3
      000EF7 E2 00                 1750 	.sleb128	98
      000EF9 01                    1751 	.db	1
      000EFA 09                    1752 	.db	9
      000EFB 00 06                 1753 	.dw	Ssys$FsysSelect$57-Ssys$FsysSelect$55
      000EFD 03                    1754 	.db	3
      000EFE 02                    1755 	.sleb128	2
      000EFF 01                    1756 	.db	1
      000F00 09                    1757 	.db	9
      000F01 00 0C                 1758 	.dw	Ssys$FsysSelect$59-Ssys$FsysSelect$57
      000F03 03                    1759 	.db	3
      000F04 03                    1760 	.sleb128	3
      000F05 01                    1761 	.db	1
      000F06 09                    1762 	.db	9
      000F07 00 05                 1763 	.dw	Ssys$FsysSelect$60-Ssys$FsysSelect$59
      000F09 03                    1764 	.db	3
      000F0A 01                    1765 	.sleb128	1
      000F0B 01                    1766 	.db	1
      000F0C 09                    1767 	.db	9
      000F0D 00 06                 1768 	.dw	Ssys$FsysSelect$61-Ssys$FsysSelect$60
      000F0F 03                    1769 	.db	3
      000F10 01                    1770 	.sleb128	1
      000F11 01                    1771 	.db	1
      000F12 09                    1772 	.db	9
      000F13 00 06                 1773 	.dw	Ssys$FsysSelect$62-Ssys$FsysSelect$61
      000F15 03                    1774 	.db	3
      000F16 01                    1775 	.sleb128	1
      000F17 01                    1776 	.db	1
      000F18 09                    1777 	.db	9
      000F19 00 00                 1778 	.dw	Ssys$FsysSelect$63-Ssys$FsysSelect$62
      000F1B 03                    1779 	.db	3
      000F1C 03                    1780 	.sleb128	3
      000F1D 01                    1781 	.db	1
      000F1E 09                    1782 	.db	9
      000F1F 00 02                 1783 	.dw	Ssys$FsysSelect$64-Ssys$FsysSelect$63
      000F21 03                    1784 	.db	3
      000F22 01                    1785 	.sleb128	1
      000F23 01                    1786 	.db	1
      000F24 09                    1787 	.db	9
      000F25 00 06                 1788 	.dw	Ssys$FsysSelect$65-Ssys$FsysSelect$64
      000F27 03                    1789 	.db	3
      000F28 01                    1790 	.sleb128	1
      000F29 01                    1791 	.db	1
      000F2A 09                    1792 	.db	9
      000F2B 00 13                 1793 	.dw	Ssys$FsysSelect$66-Ssys$FsysSelect$65
      000F2D 03                    1794 	.db	3
      000F2E 01                    1795 	.sleb128	1
      000F2F 01                    1796 	.db	1
      000F30 09                    1797 	.db	9
      000F31 00 00                 1798 	.dw	Ssys$FsysSelect$67-Ssys$FsysSelect$66
      000F33 03                    1799 	.db	3
      000F34 03                    1800 	.sleb128	3
      000F35 01                    1801 	.db	1
      000F36 09                    1802 	.db	9
      000F37 00 02                 1803 	.dw	Ssys$FsysSelect$68-Ssys$FsysSelect$67
      000F39 03                    1804 	.db	3
      000F3A 01                    1805 	.sleb128	1
      000F3B 01                    1806 	.db	1
      000F3C 09                    1807 	.db	9
      000F3D 00 06                 1808 	.dw	Ssys$FsysSelect$69-Ssys$FsysSelect$68
      000F3F 03                    1809 	.db	3
      000F40 01                    1810 	.sleb128	1
      000F41 01                    1811 	.db	1
      000F42 09                    1812 	.db	9
      000F43 00 06                 1813 	.dw	Ssys$FsysSelect$70-Ssys$FsysSelect$69
      000F45 03                    1814 	.db	3
      000F46 01                    1815 	.sleb128	1
      000F47 01                    1816 	.db	1
      000F48 09                    1817 	.db	9
      000F49 00 06                 1818 	.dw	Ssys$FsysSelect$71-Ssys$FsysSelect$70
      000F4B 03                    1819 	.db	3
      000F4C 01                    1820 	.sleb128	1
      000F4D 01                    1821 	.db	1
      000F4E 09                    1822 	.db	9
      000F4F 00 06                 1823 	.dw	Ssys$FsysSelect$72-Ssys$FsysSelect$71
      000F51 03                    1824 	.db	3
      000F52 01                    1825 	.sleb128	1
      000F53 01                    1826 	.db	1
      000F54 09                    1827 	.db	9
      000F55 00 13                 1828 	.dw	Ssys$FsysSelect$74-Ssys$FsysSelect$72
      000F57 03                    1829 	.db	3
      000F58 02                    1830 	.sleb128	2
      000F59 01                    1831 	.db	1
      000F5A 09                    1832 	.db	9
      000F5B 00 00                 1833 	.dw	Ssys$FsysSelect$75-Ssys$FsysSelect$74
      000F5D 03                    1834 	.db	3
      000F5E 01                    1835 	.sleb128	1
      000F5F 01                    1836 	.db	1
      000F60 09                    1837 	.db	9
      000F61 00 01                 1838 	.dw	1+Ssys$FsysSelect$76-Ssys$FsysSelect$75
      000F63 00                    1839 	.db	0
      000F64 01                    1840 	.uleb128	1
      000F65 01                    1841 	.db	1
      000F66 00                    1842 	.db	0
      000F67 05                    1843 	.uleb128	5
      000F68 02                    1844 	.db	2
      000F69 00 00 13 AB           1845 	.dw	0,(Ssys$ClockEnable$78)
      000F6D 03                    1846 	.db	3
      000F6E FD 00                 1847 	.sleb128	125
      000F70 01                    1848 	.db	1
      000F71 09                    1849 	.db	9
      000F72 00 06                 1850 	.dw	Ssys$ClockEnable$80-Ssys$ClockEnable$78
      000F74 03                    1851 	.db	3
      000F75 02                    1852 	.sleb128	2
      000F76 01                    1853 	.db	1
      000F77 09                    1854 	.db	9
      000F78 00 07                 1855 	.dw	Ssys$ClockEnable$82-Ssys$ClockEnable$80
      000F7A 03                    1856 	.db	3
      000F7B 03                    1857 	.sleb128	3
      000F7C 01                    1858 	.db	1
      000F7D 09                    1859 	.db	9
      000F7E 00 05                 1860 	.dw	Ssys$ClockEnable$83-Ssys$ClockEnable$82
      000F80 03                    1861 	.db	3
      000F81 01                    1862 	.sleb128	1
      000F82 01                    1863 	.db	1
      000F83 09                    1864 	.db	9
      000F84 00 13                 1865 	.dw	Ssys$ClockEnable$84-Ssys$ClockEnable$83
      000F86 03                    1866 	.db	3
      000F87 01                    1867 	.sleb128	1
      000F88 01                    1868 	.db	1
      000F89 09                    1869 	.db	9
      000F8A 00 05                 1870 	.dw	Ssys$ClockEnable$85-Ssys$ClockEnable$84
      000F8C 03                    1871 	.db	3
      000F8D 03                    1872 	.sleb128	3
      000F8E 01                    1873 	.db	1
      000F8F 09                    1874 	.db	9
      000F90 00 02                 1875 	.dw	Ssys$ClockEnable$86-Ssys$ClockEnable$85
      000F92 03                    1876 	.db	3
      000F93 01                    1877 	.sleb128	1
      000F94 01                    1878 	.db	1
      000F95 09                    1879 	.db	9
      000F96 00 09                 1880 	.dw	Ssys$ClockEnable$87-Ssys$ClockEnable$86
      000F98 03                    1881 	.db	3
      000F99 01                    1882 	.sleb128	1
      000F9A 01                    1883 	.db	1
      000F9B 09                    1884 	.db	9
      000F9C 00 05                 1885 	.dw	Ssys$ClockEnable$89-Ssys$ClockEnable$87
      000F9E 03                    1886 	.db	3
      000F9F 02                    1887 	.sleb128	2
      000FA0 01                    1888 	.db	1
      000FA1 09                    1889 	.db	9
      000FA2 00 00                 1890 	.dw	Ssys$ClockEnable$90-Ssys$ClockEnable$89
      000FA4 03                    1891 	.db	3
      000FA5 01                    1892 	.sleb128	1
      000FA6 01                    1893 	.db	1
      000FA7 09                    1894 	.db	9
      000FA8 00 01                 1895 	.dw	1+Ssys$ClockEnable$91-Ssys$ClockEnable$90
      000FAA 00                    1896 	.db	0
      000FAB 01                    1897 	.uleb128	1
      000FAC 01                    1898 	.db	1
      000FAD 00                    1899 	.db	0
      000FAE 05                    1900 	.uleb128	5
      000FAF 02                    1901 	.db	2
      000FB0 00 00 13 E6           1902 	.dw	0,(Ssys$ClockDisable$93)
      000FB4 03                    1903 	.db	3
      000FB5 8E 01                 1904 	.sleb128	142
      000FB7 01                    1905 	.db	1
      000FB8 09                    1906 	.db	9
      000FB9 00 06                 1907 	.dw	Ssys$ClockDisable$95-Ssys$ClockDisable$93
      000FBB 03                    1908 	.db	3
      000FBC 02                    1909 	.sleb128	2
      000FBD 01                    1910 	.db	1
      000FBE 09                    1911 	.db	9
      000FBF 00 03                 1912 	.dw	Ssys$ClockDisable$96-Ssys$ClockDisable$95
      000FC1 03                    1913 	.db	3
      000FC2 01                    1914 	.sleb128	1
      000FC3 01                    1915 	.db	1
      000FC4 09                    1916 	.db	9
      000FC5 00 07                 1917 	.dw	Ssys$ClockDisable$98-Ssys$ClockDisable$96
      000FC7 03                    1918 	.db	3
      000FC8 03                    1919 	.sleb128	3
      000FC9 01                    1920 	.db	1
      000FCA 09                    1921 	.db	9
      000FCB 00 05                 1922 	.dw	Ssys$ClockDisable$99-Ssys$ClockDisable$98
      000FCD 03                    1923 	.db	3
      000FCE 01                    1924 	.sleb128	1
      000FCF 01                    1925 	.db	1
      000FD0 09                    1926 	.db	9
      000FD1 00 13                 1927 	.dw	Ssys$ClockDisable$100-Ssys$ClockDisable$99
      000FD3 03                    1928 	.db	3
      000FD4 01                    1929 	.sleb128	1
      000FD5 01                    1930 	.db	1
      000FD6 09                    1931 	.db	9
      000FD7 00 00                 1932 	.dw	Ssys$ClockDisable$101-Ssys$ClockDisable$100
      000FD9 03                    1933 	.db	3
      000FDA 02                    1934 	.sleb128	2
      000FDB 01                    1935 	.db	1
      000FDC 09                    1936 	.db	9
      000FDD 00 02                 1937 	.dw	Ssys$ClockDisable$102-Ssys$ClockDisable$101
      000FDF 03                    1938 	.db	3
      000FE0 01                    1939 	.sleb128	1
      000FE1 01                    1940 	.db	1
      000FE2 09                    1941 	.db	9
      000FE3 00 09                 1942 	.dw	Ssys$ClockDisable$104-Ssys$ClockDisable$102
      000FE5 03                    1943 	.db	3
      000FE6 02                    1944 	.sleb128	2
      000FE7 01                    1945 	.db	1
      000FE8 09                    1946 	.db	9
      000FE9 00 00                 1947 	.dw	Ssys$ClockDisable$105-Ssys$ClockDisable$104
      000FEB 03                    1948 	.db	3
      000FEC 01                    1949 	.sleb128	1
      000FED 01                    1950 	.db	1
      000FEE 09                    1951 	.db	9
      000FEF 00 01                 1952 	.dw	1+Ssys$ClockDisable$106-Ssys$ClockDisable$105
      000FF1 00                    1953 	.db	0
      000FF2 01                    1954 	.uleb128	1
      000FF3 01                    1955 	.db	1
      000FF4 00                    1956 	.db	0
      000FF5 05                    1957 	.uleb128	5
      000FF6 02                    1958 	.db	2
      000FF7 00 00 14 1A           1959 	.dw	0,(Ssys$ClockSwitch$108)
      000FFB 03                    1960 	.db	3
      000FFC 9E 01                 1961 	.sleb128	158
      000FFE 01                    1962 	.db	1
      000FFF 09                    1963 	.db	9
      001000 00 06                 1964 	.dw	Ssys$ClockSwitch$110-Ssys$ClockSwitch$108
      001002 03                    1965 	.db	3
      001003 02                    1966 	.sleb128	2
      001004 01                    1967 	.db	1
      001005 09                    1968 	.db	9
      001006 00 03                 1969 	.dw	Ssys$ClockSwitch$111-Ssys$ClockSwitch$110
      001008 03                    1970 	.db	3
      001009 01                    1971 	.sleb128	1
      00100A 01                    1972 	.db	1
      00100B 09                    1973 	.db	9
      00100C 00 06                 1974 	.dw	Ssys$ClockSwitch$112-Ssys$ClockSwitch$111
      00100E 03                    1975 	.db	3
      00100F 01                    1976 	.sleb128	1
      001010 01                    1977 	.db	1
      001011 09                    1978 	.db	9
      001012 00 0F                 1979 	.dw	Ssys$ClockSwitch$114-Ssys$ClockSwitch$112
      001014 03                    1980 	.db	3
      001015 03                    1981 	.sleb128	3
      001016 01                    1982 	.db	1
      001017 09                    1983 	.db	9
      001018 00 05                 1984 	.dw	Ssys$ClockSwitch$115-Ssys$ClockSwitch$114
      00101A 03                    1985 	.db	3
      00101B 01                    1986 	.sleb128	1
      00101C 01                    1987 	.db	1
      00101D 09                    1988 	.db	9
      00101E 00 13                 1989 	.dw	Ssys$ClockSwitch$116-Ssys$ClockSwitch$115
      001020 03                    1990 	.db	3
      001021 01                    1991 	.sleb128	1
      001022 01                    1992 	.db	1
      001023 09                    1993 	.db	9
      001024 00 13                 1994 	.dw	Ssys$ClockSwitch$117-Ssys$ClockSwitch$116
      001026 03                    1995 	.db	3
      001027 01                    1996 	.sleb128	1
      001028 01                    1997 	.db	1
      001029 09                    1998 	.db	9
      00102A 00 00                 1999 	.dw	Ssys$ClockSwitch$118-Ssys$ClockSwitch$117
      00102C 03                    2000 	.db	3
      00102D 02                    2001 	.sleb128	2
      00102E 01                    2002 	.db	1
      00102F 09                    2003 	.db	9
      001030 00 02                 2004 	.dw	Ssys$ClockSwitch$119-Ssys$ClockSwitch$118
      001032 03                    2005 	.db	3
      001033 01                    2006 	.sleb128	1
      001034 01                    2007 	.db	1
      001035 09                    2008 	.db	9
      001036 00 13                 2009 	.dw	Ssys$ClockSwitch$120-Ssys$ClockSwitch$119
      001038 03                    2010 	.db	3
      001039 01                    2011 	.sleb128	1
      00103A 01                    2012 	.db	1
      00103B 09                    2013 	.db	9
      00103C 00 13                 2014 	.dw	Ssys$ClockSwitch$121-Ssys$ClockSwitch$120
      00103E 03                    2015 	.db	3
      00103F 01                    2016 	.sleb128	1
      001040 01                    2017 	.db	1
      001041 09                    2018 	.db	9
      001042 00 00                 2019 	.dw	Ssys$ClockSwitch$122-Ssys$ClockSwitch$121
      001044 03                    2020 	.db	3
      001045 02                    2021 	.sleb128	2
      001046 01                    2022 	.db	1
      001047 09                    2023 	.db	9
      001048 00 02                 2024 	.dw	Ssys$ClockSwitch$123-Ssys$ClockSwitch$122
      00104A 03                    2025 	.db	3
      00104B 01                    2026 	.sleb128	1
      00104C 01                    2027 	.db	1
      00104D 09                    2028 	.db	9
      00104E 00 13                 2029 	.dw	Ssys$ClockSwitch$125-Ssys$ClockSwitch$123
      001050 03                    2030 	.db	3
      001051 02                    2031 	.sleb128	2
      001052 01                    2032 	.db	1
      001053 09                    2033 	.db	9
      001054 00 00                 2034 	.dw	Ssys$ClockSwitch$126-Ssys$ClockSwitch$125
      001056 03                    2035 	.db	3
      001057 01                    2036 	.sleb128	1
      001058 01                    2037 	.db	1
      001059 09                    2038 	.db	9
      00105A 00 04                 2039 	.dw	Ssys$ClockSwitch$127-Ssys$ClockSwitch$126
      00105C 03                    2040 	.db	3
      00105D 01                    2041 	.sleb128	1
      00105E 01                    2042 	.db	1
      00105F 09                    2043 	.db	9
      001060 00 01                 2044 	.dw	1+Ssys$ClockSwitch$128-Ssys$ClockSwitch$127
      001062 00                    2045 	.db	0
      001063 01                    2046 	.uleb128	1
      001064 01                    2047 	.db	1
      001065                       2048 Ldebug_line_end:
                                   2049 
                                   2050 	.area .debug_loc (NOLOAD)
      0002BC                       2051 Ldebug_loc_start:
      0002BC 00 00 14 1A           2052 	.dw	0,(Ssys$ClockSwitch$109)
      0002C0 00 00 14 A5           2053 	.dw	0,(Ssys$ClockSwitch$129)
      0002C4 00 02                 2054 	.dw	2
      0002C6 86                    2055 	.db	134
      0002C7 01                    2056 	.sleb128	1
      0002C8 00 00 00 00           2057 	.dw	0,0
      0002CC 00 00 00 00           2058 	.dw	0,0
      0002D0 00 00 13 E6           2059 	.dw	0,(Ssys$ClockDisable$94)
      0002D4 00 00 14 1A           2060 	.dw	0,(Ssys$ClockDisable$107)
      0002D8 00 02                 2061 	.dw	2
      0002DA 86                    2062 	.db	134
      0002DB 01                    2063 	.sleb128	1
      0002DC 00 00 00 00           2064 	.dw	0,0
      0002E0 00 00 00 00           2065 	.dw	0,0
      0002E4 00 00 13 AB           2066 	.dw	0,(Ssys$ClockEnable$79)
      0002E8 00 00 13 E6           2067 	.dw	0,(Ssys$ClockEnable$92)
      0002EC 00 02                 2068 	.dw	2
      0002EE 86                    2069 	.db	134
      0002EF 01                    2070 	.sleb128	1
      0002F0 00 00 00 00           2071 	.dw	0,0
      0002F4 00 00 00 00           2072 	.dw	0,0
      0002F8 00 00 13 3F           2073 	.dw	0,(Ssys$FsysSelect$56)
      0002FC 00 00 13 AB           2074 	.dw	0,(Ssys$FsysSelect$77)
      000300 00 02                 2075 	.dw	2
      000302 86                    2076 	.db	134
      000303 01                    2077 	.sleb128	1
      000304 00 00 00 00           2078 	.dw	0,0
      000308 00 00 00 00           2079 	.dw	0,0
      00030C 00 00 12 19           2080 	.dw	0,(Ssys$MODIFY_HIRC$1)
      000310 00 00 13 3F           2081 	.dw	0,(Ssys$MODIFY_HIRC$54)
      000314 00 02                 2082 	.dw	2
      000316 86                    2083 	.db	134
      000317 01                    2084 	.sleb128	1
      000318 00 00 00 00           2085 	.dw	0,0
      00031C 00 00 00 00           2086 	.dw	0,0
                                   2087 
                                   2088 	.area .debug_abbrev (NOLOAD)
      0001D9                       2089 Ldebug_abbrev:
      0001D9 01                    2090 	.uleb128	1
      0001DA 11                    2091 	.uleb128	17
      0001DB 01                    2092 	.db	1
      0001DC 03                    2093 	.uleb128	3
      0001DD 08                    2094 	.uleb128	8
      0001DE 10                    2095 	.uleb128	16
      0001DF 06                    2096 	.uleb128	6
      0001E0 13                    2097 	.uleb128	19
      0001E1 0B                    2098 	.uleb128	11
      0001E2 25                    2099 	.uleb128	37
      0001E3 08                    2100 	.uleb128	8
      0001E4 00                    2101 	.uleb128	0
      0001E5 00                    2102 	.uleb128	0
      0001E6 02                    2103 	.uleb128	2
      0001E7 2E                    2104 	.uleb128	46
      0001E8 01                    2105 	.db	1
      0001E9 01                    2106 	.uleb128	1
      0001EA 13                    2107 	.uleb128	19
      0001EB 03                    2108 	.uleb128	3
      0001EC 08                    2109 	.uleb128	8
      0001ED 11                    2110 	.uleb128	17
      0001EE 01                    2111 	.uleb128	1
      0001EF 12                    2112 	.uleb128	18
      0001F0 01                    2113 	.uleb128	1
      0001F1 3F                    2114 	.uleb128	63
      0001F2 0C                    2115 	.uleb128	12
      0001F3 40                    2116 	.uleb128	64
      0001F4 06                    2117 	.uleb128	6
      0001F5 00                    2118 	.uleb128	0
      0001F6 00                    2119 	.uleb128	0
      0001F7 03                    2120 	.uleb128	3
      0001F8 05                    2121 	.uleb128	5
      0001F9 00                    2122 	.db	0
      0001FA 02                    2123 	.uleb128	2
      0001FB 0A                    2124 	.uleb128	10
      0001FC 03                    2125 	.uleb128	3
      0001FD 08                    2126 	.uleb128	8
      0001FE 49                    2127 	.uleb128	73
      0001FF 13                    2128 	.uleb128	19
      000200 00                    2129 	.uleb128	0
      000201 00                    2130 	.uleb128	0
      000202 04                    2131 	.uleb128	4
      000203 0B                    2132 	.uleb128	11
      000204 00                    2133 	.db	0
      000205 11                    2134 	.uleb128	17
      000206 01                    2135 	.uleb128	1
      000207 12                    2136 	.uleb128	18
      000208 01                    2137 	.uleb128	1
      000209 00                    2138 	.uleb128	0
      00020A 00                    2139 	.uleb128	0
      00020B 05                    2140 	.uleb128	5
      00020C 0B                    2141 	.uleb128	11
      00020D 01                    2142 	.db	1
      00020E 01                    2143 	.uleb128	1
      00020F 13                    2144 	.uleb128	19
      000210 11                    2145 	.uleb128	17
      000211 01                    2146 	.uleb128	1
      000212 12                    2147 	.uleb128	18
      000213 01                    2148 	.uleb128	1
      000214 00                    2149 	.uleb128	0
      000215 00                    2150 	.uleb128	0
      000216 06                    2151 	.uleb128	6
      000217 0B                    2152 	.uleb128	11
      000218 01                    2153 	.db	1
      000219 11                    2154 	.uleb128	17
      00021A 01                    2155 	.uleb128	1
      00021B 12                    2156 	.uleb128	18
      00021C 01                    2157 	.uleb128	1
      00021D 00                    2158 	.uleb128	0
      00021E 00                    2159 	.uleb128	0
      00021F 07                    2160 	.uleb128	7
      000220 34                    2161 	.uleb128	52
      000221 00                    2162 	.db	0
      000222 02                    2163 	.uleb128	2
      000223 0A                    2164 	.uleb128	10
      000224 03                    2165 	.uleb128	3
      000225 08                    2166 	.uleb128	8
      000226 49                    2167 	.uleb128	73
      000227 13                    2168 	.uleb128	19
      000228 00                    2169 	.uleb128	0
      000229 00                    2170 	.uleb128	0
      00022A 08                    2171 	.uleb128	8
      00022B 24                    2172 	.uleb128	36
      00022C 00                    2173 	.db	0
      00022D 03                    2174 	.uleb128	3
      00022E 08                    2175 	.uleb128	8
      00022F 0B                    2176 	.uleb128	11
      000230 0B                    2177 	.uleb128	11
      000231 3E                    2178 	.uleb128	62
      000232 0B                    2179 	.uleb128	11
      000233 00                    2180 	.uleb128	0
      000234 00                    2181 	.uleb128	0
      000235 09                    2182 	.uleb128	9
      000236 34                    2183 	.uleb128	52
      000237 00                    2184 	.db	0
      000238 02                    2185 	.uleb128	2
      000239 0A                    2186 	.uleb128	10
      00023A 03                    2187 	.uleb128	3
      00023B 08                    2188 	.uleb128	8
      00023C 3C                    2189 	.uleb128	60
      00023D 0C                    2190 	.uleb128	12
      00023E 3F                    2191 	.uleb128	63
      00023F 0C                    2192 	.uleb128	12
      000240 49                    2193 	.uleb128	73
      000241 13                    2194 	.uleb128	19
      000242 00                    2195 	.uleb128	0
      000243 00                    2196 	.uleb128	0
      000244 0A                    2197 	.uleb128	10
      000245 35                    2198 	.uleb128	53
      000246 00                    2199 	.db	0
      000247 49                    2200 	.uleb128	73
      000248 13                    2201 	.uleb128	19
      000249 00                    2202 	.uleb128	0
      00024A 00                    2203 	.uleb128	0
      00024B 0B                    2204 	.uleb128	11
      00024C 34                    2205 	.uleb128	52
      00024D 00                    2206 	.db	0
      00024E 02                    2207 	.uleb128	2
      00024F 0A                    2208 	.uleb128	10
      000250 03                    2209 	.uleb128	3
      000251 08                    2210 	.uleb128	8
      000252 3F                    2211 	.uleb128	63
      000253 0C                    2212 	.uleb128	12
      000254 49                    2213 	.uleb128	73
      000255 13                    2214 	.uleb128	19
      000256 00                    2215 	.uleb128	0
      000257 00                    2216 	.uleb128	0
      000258 00                    2217 	.uleb128	0
                                   2218 
                                   2219 	.area .debug_info (NOLOAD)
      004139 00 00 11 D6           2220 	.dw	0,Ldebug_info_end-Ldebug_info_start
      00413D                       2221 Ldebug_info_start:
      00413D 00 02                 2222 	.dw	2
      00413F 00 00 01 D9           2223 	.dw	0,(Ldebug_abbrev)
      004143 04                    2224 	.db	4
      004144 01                    2225 	.uleb128	1
      004145 43 3A 2F 55 73 65 72  2226 	.ascii "C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c"
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
             79 73 2E 63
      0041B9 00                    2227 	.db	0
      0041BA 00 00 0D 2D           2228 	.dw	0,(Ldebug_line_start+-4)
      0041BE 01                    2229 	.db	1
      0041BF 53 44 43 43 20 76 65  2230 	.ascii "SDCC version 4.2.6 #13647"
             72 73 69 6F 6E 20 34
             2E 32 2E 36 20 23 31
             33 36 34 37
      0041D8 00                    2231 	.db	0
      0041D9 02                    2232 	.uleb128	2
      0041DA 00 00 01 18           2233 	.dw	0,280
      0041DE 4D 4F 44 49 46 59 5F  2234 	.ascii "MODIFY_HIRC"
             48 49 52 43
      0041E9 00                    2235 	.db	0
      0041EA 00 00 12 19           2236 	.dw	0,(_MODIFY_HIRC)
      0041EE 00 00 13 3F           2237 	.dw	0,(XG$MODIFY_HIRC$0$0+1)
      0041F2 01                    2238 	.db	1
      0041F3 00 00 03 0C           2239 	.dw	0,(Ldebug_loc_start+80)
      0041F7 03                    2240 	.uleb128	3
      0041F8 05                    2241 	.db	5
      0041F9 03                    2242 	.db	3
      0041FA 00 00 00 2B           2243 	.dw	0,(_MODIFY_HIRC_u8HIRCSEL_65536_145)
      0041FE 75 38 48 49 52 43 53  2244 	.ascii "u8HIRCSEL"
             45 4C
      004207 00                    2245 	.db	0
      004208 00 00 01 18           2246 	.dw	0,280
      00420C 04                    2247 	.uleb128	4
      00420D 00 00 12 44           2248 	.dw	0,(Ssys$MODIFY_HIRC$5)
      004211 00 00 12 56           2249 	.dw	0,(Ssys$MODIFY_HIRC$14)
      004215 05                    2250 	.uleb128	5
      004216 00 00 00 FD           2251 	.dw	0,253
      00421A 00 00 12 93           2252 	.dw	0,(Ssys$MODIFY_HIRC$24)
      00421E 00 00 13 1B           2253 	.dw	0,(Ssys$MODIFY_HIRC$43)
      004222 06                    2254 	.uleb128	6
      004223 00 00 12 EF           2255 	.dw	0,(Ssys$MODIFY_HIRC$34)
      004227 00 00 13 13           2256 	.dw	0,(Ssys$MODIFY_HIRC$41)
      00422B 04                    2257 	.uleb128	4
      00422C 00 00 12 F4           2258 	.dw	0,(Ssys$MODIFY_HIRC$36)
      004230 00 00 13 0A           2259 	.dw	0,(Ssys$MODIFY_HIRC$39)
      004234 00                    2260 	.uleb128	0
      004235 00                    2261 	.uleb128	0
      004236 07                    2262 	.uleb128	7
      004237 05                    2263 	.db	5
      004238 03                    2264 	.db	3
      004239 00 00 00 2C           2265 	.dw	0,(_MODIFY_HIRC_trimvalue16bit_65536_146)
      00423D 74 72 69 6D 76 61 6C  2266 	.ascii "trimvalue16bit"
             75 65 31 36 62 69 74
      00424B 00                    2267 	.db	0
      00424C 00 00 01 18           2268 	.dw	0,280
      004250 00                    2269 	.uleb128	0
      004251 08                    2270 	.uleb128	8
      004252 75 6E 73 69 67 6E 65  2271 	.ascii "unsigned char"
             64 20 63 68 61 72
      00425F 00                    2272 	.db	0
      004260 01                    2273 	.db	1
      004261 08                    2274 	.db	8
      004262 02                    2275 	.uleb128	2
      004263 00 00 01 66           2276 	.dw	0,358
      004267 46 73 79 73 53 65 6C  2277 	.ascii "FsysSelect"
             65 63 74
      004271 00                    2278 	.db	0
      004272 00 00 13 3F           2279 	.dw	0,(_FsysSelect)
      004276 00 00 13 AB           2280 	.dw	0,(XG$FsysSelect$0$0+1)
      00427A 01                    2281 	.db	1
      00427B 00 00 02 F8           2282 	.dw	0,(Ldebug_loc_start+60)
      00427F 03                    2283 	.uleb128	3
      004280 05                    2284 	.db	5
      004281 03                    2285 	.db	3
      004282 00 00 00 2D           2286 	.dw	0,(_FsysSelect_u8FsysMode_65536_151)
      004286 75 38 46 73 79 73 4D  2287 	.ascii "u8FsysMode"
             6F 64 65
      004290 00                    2288 	.db	0
      004291 00 00 01 18           2289 	.dw	0,280
      004295 04                    2290 	.uleb128	4
      004296 00 00 13 51           2291 	.dw	0,(Ssys$FsysSelect$58)
      00429A 00 00 13 AA           2292 	.dw	0,(Ssys$FsysSelect$73)
      00429E 00                    2293 	.uleb128	0
      00429F 02                    2294 	.uleb128	2
      0042A0 00 00 01 A4           2295 	.dw	0,420
      0042A4 43 6C 6F 63 6B 45 6E  2296 	.ascii "ClockEnable"
             61 62 6C 65
      0042AF 00                    2297 	.db	0
      0042B0 00 00 13 AB           2298 	.dw	0,(_ClockEnable)
      0042B4 00 00 13 E6           2299 	.dw	0,(XG$ClockEnable$0$0+1)
      0042B8 01                    2300 	.db	1
      0042B9 00 00 02 E4           2301 	.dw	0,(Ldebug_loc_start+40)
      0042BD 03                    2302 	.uleb128	3
      0042BE 05                    2303 	.db	5
      0042BF 03                    2304 	.db	3
      0042C0 00 00 00 2E           2305 	.dw	0,(_ClockEnable_u8FsysMode_65536_154)
      0042C4 75 38 46 73 79 73 4D  2306 	.ascii "u8FsysMode"
             6F 64 65
      0042CE 00                    2307 	.db	0
      0042CF 00 00 01 18           2308 	.dw	0,280
      0042D3 04                    2309 	.uleb128	4
      0042D4 00 00 13 B8           2310 	.dw	0,(Ssys$ClockEnable$81)
      0042D8 00 00 13 E5           2311 	.dw	0,(Ssys$ClockEnable$88)
      0042DC 00                    2312 	.uleb128	0
      0042DD 02                    2313 	.uleb128	2
      0042DE 00 00 01 E3           2314 	.dw	0,483
      0042E2 43 6C 6F 63 6B 44 69  2315 	.ascii "ClockDisable"
             73 61 62 6C 65
      0042EE 00                    2316 	.db	0
      0042EF 00 00 13 E6           2317 	.dw	0,(_ClockDisable)
      0042F3 00 00 14 1A           2318 	.dw	0,(XG$ClockDisable$0$0+1)
      0042F7 01                    2319 	.db	1
      0042F8 00 00 02 D0           2320 	.dw	0,(Ldebug_loc_start+20)
      0042FC 03                    2321 	.uleb128	3
      0042FD 05                    2322 	.db	5
      0042FE 03                    2323 	.db	3
      0042FF 00 00 00 2F           2324 	.dw	0,(_ClockDisable_u8FsysMode_65536_157)
      004303 75 38 46 73 79 73 4D  2325 	.ascii "u8FsysMode"
             6F 64 65
      00430D 00                    2326 	.db	0
      00430E 00 00 01 18           2327 	.dw	0,280
      004312 04                    2328 	.uleb128	4
      004313 00 00 13 F6           2329 	.dw	0,(Ssys$ClockDisable$97)
      004317 00 00 14 19           2330 	.dw	0,(Ssys$ClockDisable$103)
      00431B 00                    2331 	.uleb128	0
      00431C 02                    2332 	.uleb128	2
      00431D 00 00 02 21           2333 	.dw	0,545
      004321 43 6C 6F 63 6B 53 77  2334 	.ascii "ClockSwitch"
             69 74 63 68
      00432C 00                    2335 	.db	0
      00432D 00 00 14 1A           2336 	.dw	0,(_ClockSwitch)
      004331 00 00 14 A5           2337 	.dw	0,(XG$ClockSwitch$0$0+1)
      004335 01                    2338 	.db	1
      004336 00 00 02 BC           2339 	.dw	0,(Ldebug_loc_start)
      00433A 03                    2340 	.uleb128	3
      00433B 05                    2341 	.db	5
      00433C 03                    2342 	.db	3
      00433D 00 00 00 30           2343 	.dw	0,(_ClockSwitch_u8FsysMode_65536_160)
      004341 75 38 46 73 79 73 4D  2344 	.ascii "u8FsysMode"
             6F 64 65
      00434B 00                    2345 	.db	0
      00434C 00 00 01 18           2346 	.dw	0,280
      004350 04                    2347 	.uleb128	4
      004351 00 00 14 38           2348 	.dw	0,(Ssys$ClockSwitch$113)
      004355 00 00 14 A0           2349 	.dw	0,(Ssys$ClockSwitch$124)
      004359 00                    2350 	.uleb128	0
      00435A 08                    2351 	.uleb128	8
      00435B 5F 62 69 74           2352 	.ascii "_bit"
      00435F 00                    2353 	.db	0
      004360 01                    2354 	.db	1
      004361 08                    2355 	.db	8
      004362 09                    2356 	.uleb128	9
      004363 05                    2357 	.db	5
      004364 03                    2358 	.db	3
      004365 00 00 00 00           2359 	.dw	0,(_BIT_TMP)
      004369 42 49 54 5F 54 4D 50  2360 	.ascii "BIT_TMP"
      004370 00                    2361 	.db	0
      004371 01                    2362 	.db	1
      004372 01                    2363 	.db	1
      004373 00 00 02 21           2364 	.dw	0,545
      004377 0A                    2365 	.uleb128	10
      004378 00 00 01 18           2366 	.dw	0,280
      00437C 0B                    2367 	.uleb128	11
      00437D 05                    2368 	.db	5
      00437E 03                    2369 	.db	3
      00437F 00 00 00 80           2370 	.dw	0,(_P0)
      004383 50 30                 2371 	.ascii "P0"
      004385 00                    2372 	.db	0
      004386 01                    2373 	.db	1
      004387 00 00 02 3E           2374 	.dw	0,574
      00438B 0B                    2375 	.uleb128	11
      00438C 05                    2376 	.db	5
      00438D 03                    2377 	.db	3
      00438E 00 00 00 81           2378 	.dw	0,(_SP)
      004392 53 50                 2379 	.ascii "SP"
      004394 00                    2380 	.db	0
      004395 01                    2381 	.db	1
      004396 00 00 02 3E           2382 	.dw	0,574
      00439A 0B                    2383 	.uleb128	11
      00439B 05                    2384 	.db	5
      00439C 03                    2385 	.db	3
      00439D 00 00 00 82           2386 	.dw	0,(_DPL)
      0043A1 44 50 4C              2387 	.ascii "DPL"
      0043A4 00                    2388 	.db	0
      0043A5 01                    2389 	.db	1
      0043A6 00 00 02 3E           2390 	.dw	0,574
      0043AA 0B                    2391 	.uleb128	11
      0043AB 05                    2392 	.db	5
      0043AC 03                    2393 	.db	3
      0043AD 00 00 00 83           2394 	.dw	0,(_DPH)
      0043B1 44 50 48              2395 	.ascii "DPH"
      0043B4 00                    2396 	.db	0
      0043B5 01                    2397 	.db	1
      0043B6 00 00 02 3E           2398 	.dw	0,574
      0043BA 0B                    2399 	.uleb128	11
      0043BB 05                    2400 	.db	5
      0043BC 03                    2401 	.db	3
      0043BD 00 00 00 84           2402 	.dw	0,(_RCTRIM0)
      0043C1 52 43 54 52 49 4D 30  2403 	.ascii "RCTRIM0"
      0043C8 00                    2404 	.db	0
      0043C9 01                    2405 	.db	1
      0043CA 00 00 02 3E           2406 	.dw	0,574
      0043CE 0B                    2407 	.uleb128	11
      0043CF 05                    2408 	.db	5
      0043D0 03                    2409 	.db	3
      0043D1 00 00 00 85           2410 	.dw	0,(_RCTRIM1)
      0043D5 52 43 54 52 49 4D 31  2411 	.ascii "RCTRIM1"
      0043DC 00                    2412 	.db	0
      0043DD 01                    2413 	.db	1
      0043DE 00 00 02 3E           2414 	.dw	0,574
      0043E2 0B                    2415 	.uleb128	11
      0043E3 05                    2416 	.db	5
      0043E4 03                    2417 	.db	3
      0043E5 00 00 00 86           2418 	.dw	0,(_RWK)
      0043E9 52 57 4B              2419 	.ascii "RWK"
      0043EC 00                    2420 	.db	0
      0043ED 01                    2421 	.db	1
      0043EE 00 00 02 3E           2422 	.dw	0,574
      0043F2 0B                    2423 	.uleb128	11
      0043F3 05                    2424 	.db	5
      0043F4 03                    2425 	.db	3
      0043F5 00 00 00 87           2426 	.dw	0,(_PCON)
      0043F9 50 43 4F 4E           2427 	.ascii "PCON"
      0043FD 00                    2428 	.db	0
      0043FE 01                    2429 	.db	1
      0043FF 00 00 02 3E           2430 	.dw	0,574
      004403 0B                    2431 	.uleb128	11
      004404 05                    2432 	.db	5
      004405 03                    2433 	.db	3
      004406 00 00 00 88           2434 	.dw	0,(_TCON)
      00440A 54 43 4F 4E           2435 	.ascii "TCON"
      00440E 00                    2436 	.db	0
      00440F 01                    2437 	.db	1
      004410 00 00 02 3E           2438 	.dw	0,574
      004414 0B                    2439 	.uleb128	11
      004415 05                    2440 	.db	5
      004416 03                    2441 	.db	3
      004417 00 00 00 89           2442 	.dw	0,(_TMOD)
      00441B 54 4D 4F 44           2443 	.ascii "TMOD"
      00441F 00                    2444 	.db	0
      004420 01                    2445 	.db	1
      004421 00 00 02 3E           2446 	.dw	0,574
      004425 0B                    2447 	.uleb128	11
      004426 05                    2448 	.db	5
      004427 03                    2449 	.db	3
      004428 00 00 00 8A           2450 	.dw	0,(_TL0)
      00442C 54 4C 30              2451 	.ascii "TL0"
      00442F 00                    2452 	.db	0
      004430 01                    2453 	.db	1
      004431 00 00 02 3E           2454 	.dw	0,574
      004435 0B                    2455 	.uleb128	11
      004436 05                    2456 	.db	5
      004437 03                    2457 	.db	3
      004438 00 00 00 8B           2458 	.dw	0,(_TL1)
      00443C 54 4C 31              2459 	.ascii "TL1"
      00443F 00                    2460 	.db	0
      004440 01                    2461 	.db	1
      004441 00 00 02 3E           2462 	.dw	0,574
      004445 0B                    2463 	.uleb128	11
      004446 05                    2464 	.db	5
      004447 03                    2465 	.db	3
      004448 00 00 00 8C           2466 	.dw	0,(_TH0)
      00444C 54 48 30              2467 	.ascii "TH0"
      00444F 00                    2468 	.db	0
      004450 01                    2469 	.db	1
      004451 00 00 02 3E           2470 	.dw	0,574
      004455 0B                    2471 	.uleb128	11
      004456 05                    2472 	.db	5
      004457 03                    2473 	.db	3
      004458 00 00 00 8D           2474 	.dw	0,(_TH1)
      00445C 54 48 31              2475 	.ascii "TH1"
      00445F 00                    2476 	.db	0
      004460 01                    2477 	.db	1
      004461 00 00 02 3E           2478 	.dw	0,574
      004465 0B                    2479 	.uleb128	11
      004466 05                    2480 	.db	5
      004467 03                    2481 	.db	3
      004468 00 00 00 8E           2482 	.dw	0,(_CKCON)
      00446C 43 4B 43 4F 4E        2483 	.ascii "CKCON"
      004471 00                    2484 	.db	0
      004472 01                    2485 	.db	1
      004473 00 00 02 3E           2486 	.dw	0,574
      004477 0B                    2487 	.uleb128	11
      004478 05                    2488 	.db	5
      004479 03                    2489 	.db	3
      00447A 00 00 00 8F           2490 	.dw	0,(_WKCON)
      00447E 57 4B 43 4F 4E        2491 	.ascii "WKCON"
      004483 00                    2492 	.db	0
      004484 01                    2493 	.db	1
      004485 00 00 02 3E           2494 	.dw	0,574
      004489 0B                    2495 	.uleb128	11
      00448A 05                    2496 	.db	5
      00448B 03                    2497 	.db	3
      00448C 00 00 00 90           2498 	.dw	0,(_P1)
      004490 50 31                 2499 	.ascii "P1"
      004492 00                    2500 	.db	0
      004493 01                    2501 	.db	1
      004494 00 00 02 3E           2502 	.dw	0,574
      004498 0B                    2503 	.uleb128	11
      004499 05                    2504 	.db	5
      00449A 03                    2505 	.db	3
      00449B 00 00 00 91           2506 	.dw	0,(_SFRS)
      00449F 53 46 52 53           2507 	.ascii "SFRS"
      0044A3 00                    2508 	.db	0
      0044A4 01                    2509 	.db	1
      0044A5 00 00 02 3E           2510 	.dw	0,574
      0044A9 0B                    2511 	.uleb128	11
      0044AA 05                    2512 	.db	5
      0044AB 03                    2513 	.db	3
      0044AC 00 00 00 92           2514 	.dw	0,(_CAPCON0)
      0044B0 43 41 50 43 4F 4E 30  2515 	.ascii "CAPCON0"
      0044B7 00                    2516 	.db	0
      0044B8 01                    2517 	.db	1
      0044B9 00 00 02 3E           2518 	.dw	0,574
      0044BD 0B                    2519 	.uleb128	11
      0044BE 05                    2520 	.db	5
      0044BF 03                    2521 	.db	3
      0044C0 00 00 00 93           2522 	.dw	0,(_CAPCON1)
      0044C4 43 41 50 43 4F 4E 31  2523 	.ascii "CAPCON1"
      0044CB 00                    2524 	.db	0
      0044CC 01                    2525 	.db	1
      0044CD 00 00 02 3E           2526 	.dw	0,574
      0044D1 0B                    2527 	.uleb128	11
      0044D2 05                    2528 	.db	5
      0044D3 03                    2529 	.db	3
      0044D4 00 00 00 94           2530 	.dw	0,(_CAPCON2)
      0044D8 43 41 50 43 4F 4E 32  2531 	.ascii "CAPCON2"
      0044DF 00                    2532 	.db	0
      0044E0 01                    2533 	.db	1
      0044E1 00 00 02 3E           2534 	.dw	0,574
      0044E5 0B                    2535 	.uleb128	11
      0044E6 05                    2536 	.db	5
      0044E7 03                    2537 	.db	3
      0044E8 00 00 00 95           2538 	.dw	0,(_CKDIV)
      0044EC 43 4B 44 49 56        2539 	.ascii "CKDIV"
      0044F1 00                    2540 	.db	0
      0044F2 01                    2541 	.db	1
      0044F3 00 00 02 3E           2542 	.dw	0,574
      0044F7 0B                    2543 	.uleb128	11
      0044F8 05                    2544 	.db	5
      0044F9 03                    2545 	.db	3
      0044FA 00 00 00 96           2546 	.dw	0,(_CKSWT)
      0044FE 43 4B 53 57 54        2547 	.ascii "CKSWT"
      004503 00                    2548 	.db	0
      004504 01                    2549 	.db	1
      004505 00 00 02 3E           2550 	.dw	0,574
      004509 0B                    2551 	.uleb128	11
      00450A 05                    2552 	.db	5
      00450B 03                    2553 	.db	3
      00450C 00 00 00 97           2554 	.dw	0,(_CKEN)
      004510 43 4B 45 4E           2555 	.ascii "CKEN"
      004514 00                    2556 	.db	0
      004515 01                    2557 	.db	1
      004516 00 00 02 3E           2558 	.dw	0,574
      00451A 0B                    2559 	.uleb128	11
      00451B 05                    2560 	.db	5
      00451C 03                    2561 	.db	3
      00451D 00 00 00 98           2562 	.dw	0,(_SCON)
      004521 53 43 4F 4E           2563 	.ascii "SCON"
      004525 00                    2564 	.db	0
      004526 01                    2565 	.db	1
      004527 00 00 02 3E           2566 	.dw	0,574
      00452B 0B                    2567 	.uleb128	11
      00452C 05                    2568 	.db	5
      00452D 03                    2569 	.db	3
      00452E 00 00 00 99           2570 	.dw	0,(_SBUF)
      004532 53 42 55 46           2571 	.ascii "SBUF"
      004536 00                    2572 	.db	0
      004537 01                    2573 	.db	1
      004538 00 00 02 3E           2574 	.dw	0,574
      00453C 0B                    2575 	.uleb128	11
      00453D 05                    2576 	.db	5
      00453E 03                    2577 	.db	3
      00453F 00 00 00 9A           2578 	.dw	0,(_SBUF_1)
      004543 53 42 55 46 5F 31     2579 	.ascii "SBUF_1"
      004549 00                    2580 	.db	0
      00454A 01                    2581 	.db	1
      00454B 00 00 02 3E           2582 	.dw	0,574
      00454F 0B                    2583 	.uleb128	11
      004550 05                    2584 	.db	5
      004551 03                    2585 	.db	3
      004552 00 00 00 9B           2586 	.dw	0,(_EIE)
      004556 45 49 45              2587 	.ascii "EIE"
      004559 00                    2588 	.db	0
      00455A 01                    2589 	.db	1
      00455B 00 00 02 3E           2590 	.dw	0,574
      00455F 0B                    2591 	.uleb128	11
      004560 05                    2592 	.db	5
      004561 03                    2593 	.db	3
      004562 00 00 00 9C           2594 	.dw	0,(_EIE1)
      004566 45 49 45 31           2595 	.ascii "EIE1"
      00456A 00                    2596 	.db	0
      00456B 01                    2597 	.db	1
      00456C 00 00 02 3E           2598 	.dw	0,574
      004570 0B                    2599 	.uleb128	11
      004571 05                    2600 	.db	5
      004572 03                    2601 	.db	3
      004573 00 00 00 9F           2602 	.dw	0,(_CHPCON)
      004577 43 48 50 43 4F 4E     2603 	.ascii "CHPCON"
      00457D 00                    2604 	.db	0
      00457E 01                    2605 	.db	1
      00457F 00 00 02 3E           2606 	.dw	0,574
      004583 0B                    2607 	.uleb128	11
      004584 05                    2608 	.db	5
      004585 03                    2609 	.db	3
      004586 00 00 00 A0           2610 	.dw	0,(_P2)
      00458A 50 32                 2611 	.ascii "P2"
      00458C 00                    2612 	.db	0
      00458D 01                    2613 	.db	1
      00458E 00 00 02 3E           2614 	.dw	0,574
      004592 0B                    2615 	.uleb128	11
      004593 05                    2616 	.db	5
      004594 03                    2617 	.db	3
      004595 00 00 00 A2           2618 	.dw	0,(_AUXR1)
      004599 41 55 58 52 31        2619 	.ascii "AUXR1"
      00459E 00                    2620 	.db	0
      00459F 01                    2621 	.db	1
      0045A0 00 00 02 3E           2622 	.dw	0,574
      0045A4 0B                    2623 	.uleb128	11
      0045A5 05                    2624 	.db	5
      0045A6 03                    2625 	.db	3
      0045A7 00 00 00 A3           2626 	.dw	0,(_BODCON0)
      0045AB 42 4F 44 43 4F 4E 30  2627 	.ascii "BODCON0"
      0045B2 00                    2628 	.db	0
      0045B3 01                    2629 	.db	1
      0045B4 00 00 02 3E           2630 	.dw	0,574
      0045B8 0B                    2631 	.uleb128	11
      0045B9 05                    2632 	.db	5
      0045BA 03                    2633 	.db	3
      0045BB 00 00 00 A4           2634 	.dw	0,(_IAPTRG)
      0045BF 49 41 50 54 52 47     2635 	.ascii "IAPTRG"
      0045C5 00                    2636 	.db	0
      0045C6 01                    2637 	.db	1
      0045C7 00 00 02 3E           2638 	.dw	0,574
      0045CB 0B                    2639 	.uleb128	11
      0045CC 05                    2640 	.db	5
      0045CD 03                    2641 	.db	3
      0045CE 00 00 00 A5           2642 	.dw	0,(_IAPUEN)
      0045D2 49 41 50 55 45 4E     2643 	.ascii "IAPUEN"
      0045D8 00                    2644 	.db	0
      0045D9 01                    2645 	.db	1
      0045DA 00 00 02 3E           2646 	.dw	0,574
      0045DE 0B                    2647 	.uleb128	11
      0045DF 05                    2648 	.db	5
      0045E0 03                    2649 	.db	3
      0045E1 00 00 00 A6           2650 	.dw	0,(_IAPAL)
      0045E5 49 41 50 41 4C        2651 	.ascii "IAPAL"
      0045EA 00                    2652 	.db	0
      0045EB 01                    2653 	.db	1
      0045EC 00 00 02 3E           2654 	.dw	0,574
      0045F0 0B                    2655 	.uleb128	11
      0045F1 05                    2656 	.db	5
      0045F2 03                    2657 	.db	3
      0045F3 00 00 00 A7           2658 	.dw	0,(_IAPAH)
      0045F7 49 41 50 41 48        2659 	.ascii "IAPAH"
      0045FC 00                    2660 	.db	0
      0045FD 01                    2661 	.db	1
      0045FE 00 00 02 3E           2662 	.dw	0,574
      004602 0B                    2663 	.uleb128	11
      004603 05                    2664 	.db	5
      004604 03                    2665 	.db	3
      004605 00 00 00 A8           2666 	.dw	0,(_IE)
      004609 49 45                 2667 	.ascii "IE"
      00460B 00                    2668 	.db	0
      00460C 01                    2669 	.db	1
      00460D 00 00 02 3E           2670 	.dw	0,574
      004611 0B                    2671 	.uleb128	11
      004612 05                    2672 	.db	5
      004613 03                    2673 	.db	3
      004614 00 00 00 A9           2674 	.dw	0,(_SADDR)
      004618 53 41 44 44 52        2675 	.ascii "SADDR"
      00461D 00                    2676 	.db	0
      00461E 01                    2677 	.db	1
      00461F 00 00 02 3E           2678 	.dw	0,574
      004623 0B                    2679 	.uleb128	11
      004624 05                    2680 	.db	5
      004625 03                    2681 	.db	3
      004626 00 00 00 AA           2682 	.dw	0,(_WDCON)
      00462A 57 44 43 4F 4E        2683 	.ascii "WDCON"
      00462F 00                    2684 	.db	0
      004630 01                    2685 	.db	1
      004631 00 00 02 3E           2686 	.dw	0,574
      004635 0B                    2687 	.uleb128	11
      004636 05                    2688 	.db	5
      004637 03                    2689 	.db	3
      004638 00 00 00 AB           2690 	.dw	0,(_BODCON1)
      00463C 42 4F 44 43 4F 4E 31  2691 	.ascii "BODCON1"
      004643 00                    2692 	.db	0
      004644 01                    2693 	.db	1
      004645 00 00 02 3E           2694 	.dw	0,574
      004649 0B                    2695 	.uleb128	11
      00464A 05                    2696 	.db	5
      00464B 03                    2697 	.db	3
      00464C 00 00 00 AC           2698 	.dw	0,(_P3M1)
      004650 50 33 4D 31           2699 	.ascii "P3M1"
      004654 00                    2700 	.db	0
      004655 01                    2701 	.db	1
      004656 00 00 02 3E           2702 	.dw	0,574
      00465A 0B                    2703 	.uleb128	11
      00465B 05                    2704 	.db	5
      00465C 03                    2705 	.db	3
      00465D 00 00 00 AC           2706 	.dw	0,(_P3S)
      004661 50 33 53              2707 	.ascii "P3S"
      004664 00                    2708 	.db	0
      004665 01                    2709 	.db	1
      004666 00 00 02 3E           2710 	.dw	0,574
      00466A 0B                    2711 	.uleb128	11
      00466B 05                    2712 	.db	5
      00466C 03                    2713 	.db	3
      00466D 00 00 00 AD           2714 	.dw	0,(_P3M2)
      004671 50 33 4D 32           2715 	.ascii "P3M2"
      004675 00                    2716 	.db	0
      004676 01                    2717 	.db	1
      004677 00 00 02 3E           2718 	.dw	0,574
      00467B 0B                    2719 	.uleb128	11
      00467C 05                    2720 	.db	5
      00467D 03                    2721 	.db	3
      00467E 00 00 00 AD           2722 	.dw	0,(_P3SR)
      004682 50 33 53 52           2723 	.ascii "P3SR"
      004686 00                    2724 	.db	0
      004687 01                    2725 	.db	1
      004688 00 00 02 3E           2726 	.dw	0,574
      00468C 0B                    2727 	.uleb128	11
      00468D 05                    2728 	.db	5
      00468E 03                    2729 	.db	3
      00468F 00 00 00 AE           2730 	.dw	0,(_IAPFD)
      004693 49 41 50 46 44        2731 	.ascii "IAPFD"
      004698 00                    2732 	.db	0
      004699 01                    2733 	.db	1
      00469A 00 00 02 3E           2734 	.dw	0,574
      00469E 0B                    2735 	.uleb128	11
      00469F 05                    2736 	.db	5
      0046A0 03                    2737 	.db	3
      0046A1 00 00 00 AF           2738 	.dw	0,(_IAPCN)
      0046A5 49 41 50 43 4E        2739 	.ascii "IAPCN"
      0046AA 00                    2740 	.db	0
      0046AB 01                    2741 	.db	1
      0046AC 00 00 02 3E           2742 	.dw	0,574
      0046B0 0B                    2743 	.uleb128	11
      0046B1 05                    2744 	.db	5
      0046B2 03                    2745 	.db	3
      0046B3 00 00 00 B0           2746 	.dw	0,(_P3)
      0046B7 50 33                 2747 	.ascii "P3"
      0046B9 00                    2748 	.db	0
      0046BA 01                    2749 	.db	1
      0046BB 00 00 02 3E           2750 	.dw	0,574
      0046BF 0B                    2751 	.uleb128	11
      0046C0 05                    2752 	.db	5
      0046C1 03                    2753 	.db	3
      0046C2 00 00 00 B1           2754 	.dw	0,(_P0M1)
      0046C6 50 30 4D 31           2755 	.ascii "P0M1"
      0046CA 00                    2756 	.db	0
      0046CB 01                    2757 	.db	1
      0046CC 00 00 02 3E           2758 	.dw	0,574
      0046D0 0B                    2759 	.uleb128	11
      0046D1 05                    2760 	.db	5
      0046D2 03                    2761 	.db	3
      0046D3 00 00 00 B1           2762 	.dw	0,(_P0S)
      0046D7 50 30 53              2763 	.ascii "P0S"
      0046DA 00                    2764 	.db	0
      0046DB 01                    2765 	.db	1
      0046DC 00 00 02 3E           2766 	.dw	0,574
      0046E0 0B                    2767 	.uleb128	11
      0046E1 05                    2768 	.db	5
      0046E2 03                    2769 	.db	3
      0046E3 00 00 00 B2           2770 	.dw	0,(_P0M2)
      0046E7 50 30 4D 32           2771 	.ascii "P0M2"
      0046EB 00                    2772 	.db	0
      0046EC 01                    2773 	.db	1
      0046ED 00 00 02 3E           2774 	.dw	0,574
      0046F1 0B                    2775 	.uleb128	11
      0046F2 05                    2776 	.db	5
      0046F3 03                    2777 	.db	3
      0046F4 00 00 00 B2           2778 	.dw	0,(_P0SR)
      0046F8 50 30 53 52           2779 	.ascii "P0SR"
      0046FC 00                    2780 	.db	0
      0046FD 01                    2781 	.db	1
      0046FE 00 00 02 3E           2782 	.dw	0,574
      004702 0B                    2783 	.uleb128	11
      004703 05                    2784 	.db	5
      004704 03                    2785 	.db	3
      004705 00 00 00 B3           2786 	.dw	0,(_P1M1)
      004709 50 31 4D 31           2787 	.ascii "P1M1"
      00470D 00                    2788 	.db	0
      00470E 01                    2789 	.db	1
      00470F 00 00 02 3E           2790 	.dw	0,574
      004713 0B                    2791 	.uleb128	11
      004714 05                    2792 	.db	5
      004715 03                    2793 	.db	3
      004716 00 00 00 B3           2794 	.dw	0,(_P1S)
      00471A 50 31 53              2795 	.ascii "P1S"
      00471D 00                    2796 	.db	0
      00471E 01                    2797 	.db	1
      00471F 00 00 02 3E           2798 	.dw	0,574
      004723 0B                    2799 	.uleb128	11
      004724 05                    2800 	.db	5
      004725 03                    2801 	.db	3
      004726 00 00 00 B4           2802 	.dw	0,(_P1M2)
      00472A 50 31 4D 32           2803 	.ascii "P1M2"
      00472E 00                    2804 	.db	0
      00472F 01                    2805 	.db	1
      004730 00 00 02 3E           2806 	.dw	0,574
      004734 0B                    2807 	.uleb128	11
      004735 05                    2808 	.db	5
      004736 03                    2809 	.db	3
      004737 00 00 00 B4           2810 	.dw	0,(_P1SR)
      00473B 50 31 53 52           2811 	.ascii "P1SR"
      00473F 00                    2812 	.db	0
      004740 01                    2813 	.db	1
      004741 00 00 02 3E           2814 	.dw	0,574
      004745 0B                    2815 	.uleb128	11
      004746 05                    2816 	.db	5
      004747 03                    2817 	.db	3
      004748 00 00 00 B5           2818 	.dw	0,(_P2S)
      00474C 50 32 53              2819 	.ascii "P2S"
      00474F 00                    2820 	.db	0
      004750 01                    2821 	.db	1
      004751 00 00 02 3E           2822 	.dw	0,574
      004755 0B                    2823 	.uleb128	11
      004756 05                    2824 	.db	5
      004757 03                    2825 	.db	3
      004758 00 00 00 B7           2826 	.dw	0,(_IPH)
      00475C 49 50 48              2827 	.ascii "IPH"
      00475F 00                    2828 	.db	0
      004760 01                    2829 	.db	1
      004761 00 00 02 3E           2830 	.dw	0,574
      004765 0B                    2831 	.uleb128	11
      004766 05                    2832 	.db	5
      004767 03                    2833 	.db	3
      004768 00 00 00 B7           2834 	.dw	0,(_PWMINTC)
      00476C 50 57 4D 49 4E 54 43  2835 	.ascii "PWMINTC"
      004773 00                    2836 	.db	0
      004774 01                    2837 	.db	1
      004775 00 00 02 3E           2838 	.dw	0,574
      004779 0B                    2839 	.uleb128	11
      00477A 05                    2840 	.db	5
      00477B 03                    2841 	.db	3
      00477C 00 00 00 B8           2842 	.dw	0,(_IP)
      004780 49 50                 2843 	.ascii "IP"
      004782 00                    2844 	.db	0
      004783 01                    2845 	.db	1
      004784 00 00 02 3E           2846 	.dw	0,574
      004788 0B                    2847 	.uleb128	11
      004789 05                    2848 	.db	5
      00478A 03                    2849 	.db	3
      00478B 00 00 00 B9           2850 	.dw	0,(_SADEN)
      00478F 53 41 44 45 4E        2851 	.ascii "SADEN"
      004794 00                    2852 	.db	0
      004795 01                    2853 	.db	1
      004796 00 00 02 3E           2854 	.dw	0,574
      00479A 0B                    2855 	.uleb128	11
      00479B 05                    2856 	.db	5
      00479C 03                    2857 	.db	3
      00479D 00 00 00 BA           2858 	.dw	0,(_SADEN_1)
      0047A1 53 41 44 45 4E 5F 31  2859 	.ascii "SADEN_1"
      0047A8 00                    2860 	.db	0
      0047A9 01                    2861 	.db	1
      0047AA 00 00 02 3E           2862 	.dw	0,574
      0047AE 0B                    2863 	.uleb128	11
      0047AF 05                    2864 	.db	5
      0047B0 03                    2865 	.db	3
      0047B1 00 00 00 BB           2866 	.dw	0,(_SADDR_1)
      0047B5 53 41 44 44 52 5F 31  2867 	.ascii "SADDR_1"
      0047BC 00                    2868 	.db	0
      0047BD 01                    2869 	.db	1
      0047BE 00 00 02 3E           2870 	.dw	0,574
      0047C2 0B                    2871 	.uleb128	11
      0047C3 05                    2872 	.db	5
      0047C4 03                    2873 	.db	3
      0047C5 00 00 00 BC           2874 	.dw	0,(_I2DAT)
      0047C9 49 32 44 41 54        2875 	.ascii "I2DAT"
      0047CE 00                    2876 	.db	0
      0047CF 01                    2877 	.db	1
      0047D0 00 00 02 3E           2878 	.dw	0,574
      0047D4 0B                    2879 	.uleb128	11
      0047D5 05                    2880 	.db	5
      0047D6 03                    2881 	.db	3
      0047D7 00 00 00 BD           2882 	.dw	0,(_I2STAT)
      0047DB 49 32 53 54 41 54     2883 	.ascii "I2STAT"
      0047E1 00                    2884 	.db	0
      0047E2 01                    2885 	.db	1
      0047E3 00 00 02 3E           2886 	.dw	0,574
      0047E7 0B                    2887 	.uleb128	11
      0047E8 05                    2888 	.db	5
      0047E9 03                    2889 	.db	3
      0047EA 00 00 00 BE           2890 	.dw	0,(_I2CLK)
      0047EE 49 32 43 4C 4B        2891 	.ascii "I2CLK"
      0047F3 00                    2892 	.db	0
      0047F4 01                    2893 	.db	1
      0047F5 00 00 02 3E           2894 	.dw	0,574
      0047F9 0B                    2895 	.uleb128	11
      0047FA 05                    2896 	.db	5
      0047FB 03                    2897 	.db	3
      0047FC 00 00 00 BF           2898 	.dw	0,(_I2TOC)
      004800 49 32 54 4F 43        2899 	.ascii "I2TOC"
      004805 00                    2900 	.db	0
      004806 01                    2901 	.db	1
      004807 00 00 02 3E           2902 	.dw	0,574
      00480B 0B                    2903 	.uleb128	11
      00480C 05                    2904 	.db	5
      00480D 03                    2905 	.db	3
      00480E 00 00 00 C0           2906 	.dw	0,(_I2CON)
      004812 49 32 43 4F 4E        2907 	.ascii "I2CON"
      004817 00                    2908 	.db	0
      004818 01                    2909 	.db	1
      004819 00 00 02 3E           2910 	.dw	0,574
      00481D 0B                    2911 	.uleb128	11
      00481E 05                    2912 	.db	5
      00481F 03                    2913 	.db	3
      004820 00 00 00 C1           2914 	.dw	0,(_I2ADDR)
      004824 49 32 41 44 44 52     2915 	.ascii "I2ADDR"
      00482A 00                    2916 	.db	0
      00482B 01                    2917 	.db	1
      00482C 00 00 02 3E           2918 	.dw	0,574
      004830 0B                    2919 	.uleb128	11
      004831 05                    2920 	.db	5
      004832 03                    2921 	.db	3
      004833 00 00 00 C2           2922 	.dw	0,(_ADCRL)
      004837 41 44 43 52 4C        2923 	.ascii "ADCRL"
      00483C 00                    2924 	.db	0
      00483D 01                    2925 	.db	1
      00483E 00 00 02 3E           2926 	.dw	0,574
      004842 0B                    2927 	.uleb128	11
      004843 05                    2928 	.db	5
      004844 03                    2929 	.db	3
      004845 00 00 00 C3           2930 	.dw	0,(_ADCRH)
      004849 41 44 43 52 48        2931 	.ascii "ADCRH"
      00484E 00                    2932 	.db	0
      00484F 01                    2933 	.db	1
      004850 00 00 02 3E           2934 	.dw	0,574
      004854 0B                    2935 	.uleb128	11
      004855 05                    2936 	.db	5
      004856 03                    2937 	.db	3
      004857 00 00 00 C4           2938 	.dw	0,(_T3CON)
      00485B 54 33 43 4F 4E        2939 	.ascii "T3CON"
      004860 00                    2940 	.db	0
      004861 01                    2941 	.db	1
      004862 00 00 02 3E           2942 	.dw	0,574
      004866 0B                    2943 	.uleb128	11
      004867 05                    2944 	.db	5
      004868 03                    2945 	.db	3
      004869 00 00 00 C4           2946 	.dw	0,(_PWM4H)
      00486D 50 57 4D 34 48        2947 	.ascii "PWM4H"
      004872 00                    2948 	.db	0
      004873 01                    2949 	.db	1
      004874 00 00 02 3E           2950 	.dw	0,574
      004878 0B                    2951 	.uleb128	11
      004879 05                    2952 	.db	5
      00487A 03                    2953 	.db	3
      00487B 00 00 00 C5           2954 	.dw	0,(_RL3)
      00487F 52 4C 33              2955 	.ascii "RL3"
      004882 00                    2956 	.db	0
      004883 01                    2957 	.db	1
      004884 00 00 02 3E           2958 	.dw	0,574
      004888 0B                    2959 	.uleb128	11
      004889 05                    2960 	.db	5
      00488A 03                    2961 	.db	3
      00488B 00 00 00 C5           2962 	.dw	0,(_PWM5H)
      00488F 50 57 4D 35 48        2963 	.ascii "PWM5H"
      004894 00                    2964 	.db	0
      004895 01                    2965 	.db	1
      004896 00 00 02 3E           2966 	.dw	0,574
      00489A 0B                    2967 	.uleb128	11
      00489B 05                    2968 	.db	5
      00489C 03                    2969 	.db	3
      00489D 00 00 00 C6           2970 	.dw	0,(_RH3)
      0048A1 52 48 33              2971 	.ascii "RH3"
      0048A4 00                    2972 	.db	0
      0048A5 01                    2973 	.db	1
      0048A6 00 00 02 3E           2974 	.dw	0,574
      0048AA 0B                    2975 	.uleb128	11
      0048AB 05                    2976 	.db	5
      0048AC 03                    2977 	.db	3
      0048AD 00 00 00 C6           2978 	.dw	0,(_PIOCON1)
      0048B1 50 49 4F 43 4F 4E 31  2979 	.ascii "PIOCON1"
      0048B8 00                    2980 	.db	0
      0048B9 01                    2981 	.db	1
      0048BA 00 00 02 3E           2982 	.dw	0,574
      0048BE 0B                    2983 	.uleb128	11
      0048BF 05                    2984 	.db	5
      0048C0 03                    2985 	.db	3
      0048C1 00 00 00 C7           2986 	.dw	0,(_TA)
      0048C5 54 41                 2987 	.ascii "TA"
      0048C7 00                    2988 	.db	0
      0048C8 01                    2989 	.db	1
      0048C9 00 00 02 3E           2990 	.dw	0,574
      0048CD 0B                    2991 	.uleb128	11
      0048CE 05                    2992 	.db	5
      0048CF 03                    2993 	.db	3
      0048D0 00 00 00 C8           2994 	.dw	0,(_T2CON)
      0048D4 54 32 43 4F 4E        2995 	.ascii "T2CON"
      0048D9 00                    2996 	.db	0
      0048DA 01                    2997 	.db	1
      0048DB 00 00 02 3E           2998 	.dw	0,574
      0048DF 0B                    2999 	.uleb128	11
      0048E0 05                    3000 	.db	5
      0048E1 03                    3001 	.db	3
      0048E2 00 00 00 C9           3002 	.dw	0,(_T2MOD)
      0048E6 54 32 4D 4F 44        3003 	.ascii "T2MOD"
      0048EB 00                    3004 	.db	0
      0048EC 01                    3005 	.db	1
      0048ED 00 00 02 3E           3006 	.dw	0,574
      0048F1 0B                    3007 	.uleb128	11
      0048F2 05                    3008 	.db	5
      0048F3 03                    3009 	.db	3
      0048F4 00 00 00 CA           3010 	.dw	0,(_RCMP2L)
      0048F8 52 43 4D 50 32 4C     3011 	.ascii "RCMP2L"
      0048FE 00                    3012 	.db	0
      0048FF 01                    3013 	.db	1
      004900 00 00 02 3E           3014 	.dw	0,574
      004904 0B                    3015 	.uleb128	11
      004905 05                    3016 	.db	5
      004906 03                    3017 	.db	3
      004907 00 00 00 CB           3018 	.dw	0,(_RCMP2H)
      00490B 52 43 4D 50 32 48     3019 	.ascii "RCMP2H"
      004911 00                    3020 	.db	0
      004912 01                    3021 	.db	1
      004913 00 00 02 3E           3022 	.dw	0,574
      004917 0B                    3023 	.uleb128	11
      004918 05                    3024 	.db	5
      004919 03                    3025 	.db	3
      00491A 00 00 00 CC           3026 	.dw	0,(_TL2)
      00491E 54 4C 32              3027 	.ascii "TL2"
      004921 00                    3028 	.db	0
      004922 01                    3029 	.db	1
      004923 00 00 02 3E           3030 	.dw	0,574
      004927 0B                    3031 	.uleb128	11
      004928 05                    3032 	.db	5
      004929 03                    3033 	.db	3
      00492A 00 00 00 CC           3034 	.dw	0,(_PWM4L)
      00492E 50 57 4D 34 4C        3035 	.ascii "PWM4L"
      004933 00                    3036 	.db	0
      004934 01                    3037 	.db	1
      004935 00 00 02 3E           3038 	.dw	0,574
      004939 0B                    3039 	.uleb128	11
      00493A 05                    3040 	.db	5
      00493B 03                    3041 	.db	3
      00493C 00 00 00 CD           3042 	.dw	0,(_TH2)
      004940 54 48 32              3043 	.ascii "TH2"
      004943 00                    3044 	.db	0
      004944 01                    3045 	.db	1
      004945 00 00 02 3E           3046 	.dw	0,574
      004949 0B                    3047 	.uleb128	11
      00494A 05                    3048 	.db	5
      00494B 03                    3049 	.db	3
      00494C 00 00 00 CD           3050 	.dw	0,(_PWM5L)
      004950 50 57 4D 35 4C        3051 	.ascii "PWM5L"
      004955 00                    3052 	.db	0
      004956 01                    3053 	.db	1
      004957 00 00 02 3E           3054 	.dw	0,574
      00495B 0B                    3055 	.uleb128	11
      00495C 05                    3056 	.db	5
      00495D 03                    3057 	.db	3
      00495E 00 00 00 CE           3058 	.dw	0,(_ADCMPL)
      004962 41 44 43 4D 50 4C     3059 	.ascii "ADCMPL"
      004968 00                    3060 	.db	0
      004969 01                    3061 	.db	1
      00496A 00 00 02 3E           3062 	.dw	0,574
      00496E 0B                    3063 	.uleb128	11
      00496F 05                    3064 	.db	5
      004970 03                    3065 	.db	3
      004971 00 00 00 CF           3066 	.dw	0,(_ADCMPH)
      004975 41 44 43 4D 50 48     3067 	.ascii "ADCMPH"
      00497B 00                    3068 	.db	0
      00497C 01                    3069 	.db	1
      00497D 00 00 02 3E           3070 	.dw	0,574
      004981 0B                    3071 	.uleb128	11
      004982 05                    3072 	.db	5
      004983 03                    3073 	.db	3
      004984 00 00 00 D0           3074 	.dw	0,(_PSW)
      004988 50 53 57              3075 	.ascii "PSW"
      00498B 00                    3076 	.db	0
      00498C 01                    3077 	.db	1
      00498D 00 00 02 3E           3078 	.dw	0,574
      004991 0B                    3079 	.uleb128	11
      004992 05                    3080 	.db	5
      004993 03                    3081 	.db	3
      004994 00 00 00 D1           3082 	.dw	0,(_PWMPH)
      004998 50 57 4D 50 48        3083 	.ascii "PWMPH"
      00499D 00                    3084 	.db	0
      00499E 01                    3085 	.db	1
      00499F 00 00 02 3E           3086 	.dw	0,574
      0049A3 0B                    3087 	.uleb128	11
      0049A4 05                    3088 	.db	5
      0049A5 03                    3089 	.db	3
      0049A6 00 00 00 D2           3090 	.dw	0,(_PWM0H)
      0049AA 50 57 4D 30 48        3091 	.ascii "PWM0H"
      0049AF 00                    3092 	.db	0
      0049B0 01                    3093 	.db	1
      0049B1 00 00 02 3E           3094 	.dw	0,574
      0049B5 0B                    3095 	.uleb128	11
      0049B6 05                    3096 	.db	5
      0049B7 03                    3097 	.db	3
      0049B8 00 00 00 D3           3098 	.dw	0,(_PWM1H)
      0049BC 50 57 4D 31 48        3099 	.ascii "PWM1H"
      0049C1 00                    3100 	.db	0
      0049C2 01                    3101 	.db	1
      0049C3 00 00 02 3E           3102 	.dw	0,574
      0049C7 0B                    3103 	.uleb128	11
      0049C8 05                    3104 	.db	5
      0049C9 03                    3105 	.db	3
      0049CA 00 00 00 D4           3106 	.dw	0,(_PWM2H)
      0049CE 50 57 4D 32 48        3107 	.ascii "PWM2H"
      0049D3 00                    3108 	.db	0
      0049D4 01                    3109 	.db	1
      0049D5 00 00 02 3E           3110 	.dw	0,574
      0049D9 0B                    3111 	.uleb128	11
      0049DA 05                    3112 	.db	5
      0049DB 03                    3113 	.db	3
      0049DC 00 00 00 D5           3114 	.dw	0,(_PWM3H)
      0049E0 50 57 4D 33 48        3115 	.ascii "PWM3H"
      0049E5 00                    3116 	.db	0
      0049E6 01                    3117 	.db	1
      0049E7 00 00 02 3E           3118 	.dw	0,574
      0049EB 0B                    3119 	.uleb128	11
      0049EC 05                    3120 	.db	5
      0049ED 03                    3121 	.db	3
      0049EE 00 00 00 D6           3122 	.dw	0,(_PNP)
      0049F2 50 4E 50              3123 	.ascii "PNP"
      0049F5 00                    3124 	.db	0
      0049F6 01                    3125 	.db	1
      0049F7 00 00 02 3E           3126 	.dw	0,574
      0049FB 0B                    3127 	.uleb128	11
      0049FC 05                    3128 	.db	5
      0049FD 03                    3129 	.db	3
      0049FE 00 00 00 D7           3130 	.dw	0,(_FBD)
      004A02 46 42 44              3131 	.ascii "FBD"
      004A05 00                    3132 	.db	0
      004A06 01                    3133 	.db	1
      004A07 00 00 02 3E           3134 	.dw	0,574
      004A0B 0B                    3135 	.uleb128	11
      004A0C 05                    3136 	.db	5
      004A0D 03                    3137 	.db	3
      004A0E 00 00 00 D8           3138 	.dw	0,(_PWMCON0)
      004A12 50 57 4D 43 4F 4E 30  3139 	.ascii "PWMCON0"
      004A19 00                    3140 	.db	0
      004A1A 01                    3141 	.db	1
      004A1B 00 00 02 3E           3142 	.dw	0,574
      004A1F 0B                    3143 	.uleb128	11
      004A20 05                    3144 	.db	5
      004A21 03                    3145 	.db	3
      004A22 00 00 00 D9           3146 	.dw	0,(_PWMPL)
      004A26 50 57 4D 50 4C        3147 	.ascii "PWMPL"
      004A2B 00                    3148 	.db	0
      004A2C 01                    3149 	.db	1
      004A2D 00 00 02 3E           3150 	.dw	0,574
      004A31 0B                    3151 	.uleb128	11
      004A32 05                    3152 	.db	5
      004A33 03                    3153 	.db	3
      004A34 00 00 00 DA           3154 	.dw	0,(_PWM0L)
      004A38 50 57 4D 30 4C        3155 	.ascii "PWM0L"
      004A3D 00                    3156 	.db	0
      004A3E 01                    3157 	.db	1
      004A3F 00 00 02 3E           3158 	.dw	0,574
      004A43 0B                    3159 	.uleb128	11
      004A44 05                    3160 	.db	5
      004A45 03                    3161 	.db	3
      004A46 00 00 00 DB           3162 	.dw	0,(_PWM1L)
      004A4A 50 57 4D 31 4C        3163 	.ascii "PWM1L"
      004A4F 00                    3164 	.db	0
      004A50 01                    3165 	.db	1
      004A51 00 00 02 3E           3166 	.dw	0,574
      004A55 0B                    3167 	.uleb128	11
      004A56 05                    3168 	.db	5
      004A57 03                    3169 	.db	3
      004A58 00 00 00 DC           3170 	.dw	0,(_PWM2L)
      004A5C 50 57 4D 32 4C        3171 	.ascii "PWM2L"
      004A61 00                    3172 	.db	0
      004A62 01                    3173 	.db	1
      004A63 00 00 02 3E           3174 	.dw	0,574
      004A67 0B                    3175 	.uleb128	11
      004A68 05                    3176 	.db	5
      004A69 03                    3177 	.db	3
      004A6A 00 00 00 DD           3178 	.dw	0,(_PWM3L)
      004A6E 50 57 4D 33 4C        3179 	.ascii "PWM3L"
      004A73 00                    3180 	.db	0
      004A74 01                    3181 	.db	1
      004A75 00 00 02 3E           3182 	.dw	0,574
      004A79 0B                    3183 	.uleb128	11
      004A7A 05                    3184 	.db	5
      004A7B 03                    3185 	.db	3
      004A7C 00 00 00 DE           3186 	.dw	0,(_PIOCON0)
      004A80 50 49 4F 43 4F 4E 30  3187 	.ascii "PIOCON0"
      004A87 00                    3188 	.db	0
      004A88 01                    3189 	.db	1
      004A89 00 00 02 3E           3190 	.dw	0,574
      004A8D 0B                    3191 	.uleb128	11
      004A8E 05                    3192 	.db	5
      004A8F 03                    3193 	.db	3
      004A90 00 00 00 DF           3194 	.dw	0,(_PWMCON1)
      004A94 50 57 4D 43 4F 4E 31  3195 	.ascii "PWMCON1"
      004A9B 00                    3196 	.db	0
      004A9C 01                    3197 	.db	1
      004A9D 00 00 02 3E           3198 	.dw	0,574
      004AA1 0B                    3199 	.uleb128	11
      004AA2 05                    3200 	.db	5
      004AA3 03                    3201 	.db	3
      004AA4 00 00 00 E0           3202 	.dw	0,(_ACC)
      004AA8 41 43 43              3203 	.ascii "ACC"
      004AAB 00                    3204 	.db	0
      004AAC 01                    3205 	.db	1
      004AAD 00 00 02 3E           3206 	.dw	0,574
      004AB1 0B                    3207 	.uleb128	11
      004AB2 05                    3208 	.db	5
      004AB3 03                    3209 	.db	3
      004AB4 00 00 00 E1           3210 	.dw	0,(_ADCCON1)
      004AB8 41 44 43 43 4F 4E 31  3211 	.ascii "ADCCON1"
      004ABF 00                    3212 	.db	0
      004AC0 01                    3213 	.db	1
      004AC1 00 00 02 3E           3214 	.dw	0,574
      004AC5 0B                    3215 	.uleb128	11
      004AC6 05                    3216 	.db	5
      004AC7 03                    3217 	.db	3
      004AC8 00 00 00 E2           3218 	.dw	0,(_ADCCON2)
      004ACC 41 44 43 43 4F 4E 32  3219 	.ascii "ADCCON2"
      004AD3 00                    3220 	.db	0
      004AD4 01                    3221 	.db	1
      004AD5 00 00 02 3E           3222 	.dw	0,574
      004AD9 0B                    3223 	.uleb128	11
      004ADA 05                    3224 	.db	5
      004ADB 03                    3225 	.db	3
      004ADC 00 00 00 E3           3226 	.dw	0,(_ADCDLY)
      004AE0 41 44 43 44 4C 59     3227 	.ascii "ADCDLY"
      004AE6 00                    3228 	.db	0
      004AE7 01                    3229 	.db	1
      004AE8 00 00 02 3E           3230 	.dw	0,574
      004AEC 0B                    3231 	.uleb128	11
      004AED 05                    3232 	.db	5
      004AEE 03                    3233 	.db	3
      004AEF 00 00 00 E4           3234 	.dw	0,(_C0L)
      004AF3 43 30 4C              3235 	.ascii "C0L"
      004AF6 00                    3236 	.db	0
      004AF7 01                    3237 	.db	1
      004AF8 00 00 02 3E           3238 	.dw	0,574
      004AFC 0B                    3239 	.uleb128	11
      004AFD 05                    3240 	.db	5
      004AFE 03                    3241 	.db	3
      004AFF 00 00 00 E5           3242 	.dw	0,(_C0H)
      004B03 43 30 48              3243 	.ascii "C0H"
      004B06 00                    3244 	.db	0
      004B07 01                    3245 	.db	1
      004B08 00 00 02 3E           3246 	.dw	0,574
      004B0C 0B                    3247 	.uleb128	11
      004B0D 05                    3248 	.db	5
      004B0E 03                    3249 	.db	3
      004B0F 00 00 00 E6           3250 	.dw	0,(_C1L)
      004B13 43 31 4C              3251 	.ascii "C1L"
      004B16 00                    3252 	.db	0
      004B17 01                    3253 	.db	1
      004B18 00 00 02 3E           3254 	.dw	0,574
      004B1C 0B                    3255 	.uleb128	11
      004B1D 05                    3256 	.db	5
      004B1E 03                    3257 	.db	3
      004B1F 00 00 00 E7           3258 	.dw	0,(_C1H)
      004B23 43 31 48              3259 	.ascii "C1H"
      004B26 00                    3260 	.db	0
      004B27 01                    3261 	.db	1
      004B28 00 00 02 3E           3262 	.dw	0,574
      004B2C 0B                    3263 	.uleb128	11
      004B2D 05                    3264 	.db	5
      004B2E 03                    3265 	.db	3
      004B2F 00 00 00 E8           3266 	.dw	0,(_ADCCON0)
      004B33 41 44 43 43 4F 4E 30  3267 	.ascii "ADCCON0"
      004B3A 00                    3268 	.db	0
      004B3B 01                    3269 	.db	1
      004B3C 00 00 02 3E           3270 	.dw	0,574
      004B40 0B                    3271 	.uleb128	11
      004B41 05                    3272 	.db	5
      004B42 03                    3273 	.db	3
      004B43 00 00 00 E9           3274 	.dw	0,(_PICON)
      004B47 50 49 43 4F 4E        3275 	.ascii "PICON"
      004B4C 00                    3276 	.db	0
      004B4D 01                    3277 	.db	1
      004B4E 00 00 02 3E           3278 	.dw	0,574
      004B52 0B                    3279 	.uleb128	11
      004B53 05                    3280 	.db	5
      004B54 03                    3281 	.db	3
      004B55 00 00 00 EA           3282 	.dw	0,(_PINEN)
      004B59 50 49 4E 45 4E        3283 	.ascii "PINEN"
      004B5E 00                    3284 	.db	0
      004B5F 01                    3285 	.db	1
      004B60 00 00 02 3E           3286 	.dw	0,574
      004B64 0B                    3287 	.uleb128	11
      004B65 05                    3288 	.db	5
      004B66 03                    3289 	.db	3
      004B67 00 00 00 EB           3290 	.dw	0,(_PIPEN)
      004B6B 50 49 50 45 4E        3291 	.ascii "PIPEN"
      004B70 00                    3292 	.db	0
      004B71 01                    3293 	.db	1
      004B72 00 00 02 3E           3294 	.dw	0,574
      004B76 0B                    3295 	.uleb128	11
      004B77 05                    3296 	.db	5
      004B78 03                    3297 	.db	3
      004B79 00 00 00 EC           3298 	.dw	0,(_PIF)
      004B7D 50 49 46              3299 	.ascii "PIF"
      004B80 00                    3300 	.db	0
      004B81 01                    3301 	.db	1
      004B82 00 00 02 3E           3302 	.dw	0,574
      004B86 0B                    3303 	.uleb128	11
      004B87 05                    3304 	.db	5
      004B88 03                    3305 	.db	3
      004B89 00 00 00 ED           3306 	.dw	0,(_C2L)
      004B8D 43 32 4C              3307 	.ascii "C2L"
      004B90 00                    3308 	.db	0
      004B91 01                    3309 	.db	1
      004B92 00 00 02 3E           3310 	.dw	0,574
      004B96 0B                    3311 	.uleb128	11
      004B97 05                    3312 	.db	5
      004B98 03                    3313 	.db	3
      004B99 00 00 00 EE           3314 	.dw	0,(_C2H)
      004B9D 43 32 48              3315 	.ascii "C2H"
      004BA0 00                    3316 	.db	0
      004BA1 01                    3317 	.db	1
      004BA2 00 00 02 3E           3318 	.dw	0,574
      004BA6 0B                    3319 	.uleb128	11
      004BA7 05                    3320 	.db	5
      004BA8 03                    3321 	.db	3
      004BA9 00 00 00 EF           3322 	.dw	0,(_EIP)
      004BAD 45 49 50              3323 	.ascii "EIP"
      004BB0 00                    3324 	.db	0
      004BB1 01                    3325 	.db	1
      004BB2 00 00 02 3E           3326 	.dw	0,574
      004BB6 0B                    3327 	.uleb128	11
      004BB7 05                    3328 	.db	5
      004BB8 03                    3329 	.db	3
      004BB9 00 00 00 F0           3330 	.dw	0,(_B)
      004BBD 42                    3331 	.ascii "B"
      004BBE 00                    3332 	.db	0
      004BBF 01                    3333 	.db	1
      004BC0 00 00 02 3E           3334 	.dw	0,574
      004BC4 0B                    3335 	.uleb128	11
      004BC5 05                    3336 	.db	5
      004BC6 03                    3337 	.db	3
      004BC7 00 00 00 F1           3338 	.dw	0,(_CAPCON3)
      004BCB 43 41 50 43 4F 4E 33  3339 	.ascii "CAPCON3"
      004BD2 00                    3340 	.db	0
      004BD3 01                    3341 	.db	1
      004BD4 00 00 02 3E           3342 	.dw	0,574
      004BD8 0B                    3343 	.uleb128	11
      004BD9 05                    3344 	.db	5
      004BDA 03                    3345 	.db	3
      004BDB 00 00 00 F2           3346 	.dw	0,(_CAPCON4)
      004BDF 43 41 50 43 4F 4E 34  3347 	.ascii "CAPCON4"
      004BE6 00                    3348 	.db	0
      004BE7 01                    3349 	.db	1
      004BE8 00 00 02 3E           3350 	.dw	0,574
      004BEC 0B                    3351 	.uleb128	11
      004BED 05                    3352 	.db	5
      004BEE 03                    3353 	.db	3
      004BEF 00 00 00 F3           3354 	.dw	0,(_SPCR)
      004BF3 53 50 43 52           3355 	.ascii "SPCR"
      004BF7 00                    3356 	.db	0
      004BF8 01                    3357 	.db	1
      004BF9 00 00 02 3E           3358 	.dw	0,574
      004BFD 0B                    3359 	.uleb128	11
      004BFE 05                    3360 	.db	5
      004BFF 03                    3361 	.db	3
      004C00 00 00 00 F3           3362 	.dw	0,(_SPCR2)
      004C04 53 50 43 52 32        3363 	.ascii "SPCR2"
      004C09 00                    3364 	.db	0
      004C0A 01                    3365 	.db	1
      004C0B 00 00 02 3E           3366 	.dw	0,574
      004C0F 0B                    3367 	.uleb128	11
      004C10 05                    3368 	.db	5
      004C11 03                    3369 	.db	3
      004C12 00 00 00 F4           3370 	.dw	0,(_SPSR)
      004C16 53 50 53 52           3371 	.ascii "SPSR"
      004C1A 00                    3372 	.db	0
      004C1B 01                    3373 	.db	1
      004C1C 00 00 02 3E           3374 	.dw	0,574
      004C20 0B                    3375 	.uleb128	11
      004C21 05                    3376 	.db	5
      004C22 03                    3377 	.db	3
      004C23 00 00 00 F5           3378 	.dw	0,(_SPDR)
      004C27 53 50 44 52           3379 	.ascii "SPDR"
      004C2B 00                    3380 	.db	0
      004C2C 01                    3381 	.db	1
      004C2D 00 00 02 3E           3382 	.dw	0,574
      004C31 0B                    3383 	.uleb128	11
      004C32 05                    3384 	.db	5
      004C33 03                    3385 	.db	3
      004C34 00 00 00 F6           3386 	.dw	0,(_AINDIDS)
      004C38 41 49 4E 44 49 44 53  3387 	.ascii "AINDIDS"
      004C3F 00                    3388 	.db	0
      004C40 01                    3389 	.db	1
      004C41 00 00 02 3E           3390 	.dw	0,574
      004C45 0B                    3391 	.uleb128	11
      004C46 05                    3392 	.db	5
      004C47 03                    3393 	.db	3
      004C48 00 00 00 F7           3394 	.dw	0,(_EIPH)
      004C4C 45 49 50 48           3395 	.ascii "EIPH"
      004C50 00                    3396 	.db	0
      004C51 01                    3397 	.db	1
      004C52 00 00 02 3E           3398 	.dw	0,574
      004C56 0B                    3399 	.uleb128	11
      004C57 05                    3400 	.db	5
      004C58 03                    3401 	.db	3
      004C59 00 00 00 F8           3402 	.dw	0,(_SCON_1)
      004C5D 53 43 4F 4E 5F 31     3403 	.ascii "SCON_1"
      004C63 00                    3404 	.db	0
      004C64 01                    3405 	.db	1
      004C65 00 00 02 3E           3406 	.dw	0,574
      004C69 0B                    3407 	.uleb128	11
      004C6A 05                    3408 	.db	5
      004C6B 03                    3409 	.db	3
      004C6C 00 00 00 F9           3410 	.dw	0,(_PDTEN)
      004C70 50 44 54 45 4E        3411 	.ascii "PDTEN"
      004C75 00                    3412 	.db	0
      004C76 01                    3413 	.db	1
      004C77 00 00 02 3E           3414 	.dw	0,574
      004C7B 0B                    3415 	.uleb128	11
      004C7C 05                    3416 	.db	5
      004C7D 03                    3417 	.db	3
      004C7E 00 00 00 FA           3418 	.dw	0,(_PDTCNT)
      004C82 50 44 54 43 4E 54     3419 	.ascii "PDTCNT"
      004C88 00                    3420 	.db	0
      004C89 01                    3421 	.db	1
      004C8A 00 00 02 3E           3422 	.dw	0,574
      004C8E 0B                    3423 	.uleb128	11
      004C8F 05                    3424 	.db	5
      004C90 03                    3425 	.db	3
      004C91 00 00 00 FB           3426 	.dw	0,(_PMEN)
      004C95 50 4D 45 4E           3427 	.ascii "PMEN"
      004C99 00                    3428 	.db	0
      004C9A 01                    3429 	.db	1
      004C9B 00 00 02 3E           3430 	.dw	0,574
      004C9F 0B                    3431 	.uleb128	11
      004CA0 05                    3432 	.db	5
      004CA1 03                    3433 	.db	3
      004CA2 00 00 00 FC           3434 	.dw	0,(_PMD)
      004CA6 50 4D 44              3435 	.ascii "PMD"
      004CA9 00                    3436 	.db	0
      004CAA 01                    3437 	.db	1
      004CAB 00 00 02 3E           3438 	.dw	0,574
      004CAF 0B                    3439 	.uleb128	11
      004CB0 05                    3440 	.db	5
      004CB1 03                    3441 	.db	3
      004CB2 00 00 00 FE           3442 	.dw	0,(_EIP1)
      004CB6 45 49 50 31           3443 	.ascii "EIP1"
      004CBA 00                    3444 	.db	0
      004CBB 01                    3445 	.db	1
      004CBC 00 00 02 3E           3446 	.dw	0,574
      004CC0 0B                    3447 	.uleb128	11
      004CC1 05                    3448 	.db	5
      004CC2 03                    3449 	.db	3
      004CC3 00 00 00 FF           3450 	.dw	0,(_EIPH1)
      004CC7 45 49 50 48 31        3451 	.ascii "EIPH1"
      004CCC 00                    3452 	.db	0
      004CCD 01                    3453 	.db	1
      004CCE 00 00 02 3E           3454 	.dw	0,574
      004CD2 08                    3455 	.uleb128	8
      004CD3 5F 73 62 69 74        3456 	.ascii "_sbit"
      004CD8 00                    3457 	.db	0
      004CD9 01                    3458 	.db	1
      004CDA 08                    3459 	.db	8
      004CDB 0A                    3460 	.uleb128	10
      004CDC 00 00 0B 99           3461 	.dw	0,2969
      004CE0 0B                    3462 	.uleb128	11
      004CE1 05                    3463 	.db	5
      004CE2 03                    3464 	.db	3
      004CE3 00 00 00 FF           3465 	.dw	0,(_SM0_1)
      004CE7 53 4D 30 5F 31        3466 	.ascii "SM0_1"
      004CEC 00                    3467 	.db	0
      004CED 01                    3468 	.db	1
      004CEE 00 00 0B A2           3469 	.dw	0,2978
      004CF2 0B                    3470 	.uleb128	11
      004CF3 05                    3471 	.db	5
      004CF4 03                    3472 	.db	3
      004CF5 00 00 00 FF           3473 	.dw	0,(_FE_1)
      004CF9 46 45 5F 31           3474 	.ascii "FE_1"
      004CFD 00                    3475 	.db	0
      004CFE 01                    3476 	.db	1
      004CFF 00 00 0B A2           3477 	.dw	0,2978
      004D03 0B                    3478 	.uleb128	11
      004D04 05                    3479 	.db	5
      004D05 03                    3480 	.db	3
      004D06 00 00 00 FE           3481 	.dw	0,(_SM1_1)
      004D0A 53 4D 31 5F 31        3482 	.ascii "SM1_1"
      004D0F 00                    3483 	.db	0
      004D10 01                    3484 	.db	1
      004D11 00 00 0B A2           3485 	.dw	0,2978
      004D15 0B                    3486 	.uleb128	11
      004D16 05                    3487 	.db	5
      004D17 03                    3488 	.db	3
      004D18 00 00 00 FD           3489 	.dw	0,(_SM2_1)
      004D1C 53 4D 32 5F 31        3490 	.ascii "SM2_1"
      004D21 00                    3491 	.db	0
      004D22 01                    3492 	.db	1
      004D23 00 00 0B A2           3493 	.dw	0,2978
      004D27 0B                    3494 	.uleb128	11
      004D28 05                    3495 	.db	5
      004D29 03                    3496 	.db	3
      004D2A 00 00 00 FC           3497 	.dw	0,(_REN_1)
      004D2E 52 45 4E 5F 31        3498 	.ascii "REN_1"
      004D33 00                    3499 	.db	0
      004D34 01                    3500 	.db	1
      004D35 00 00 0B A2           3501 	.dw	0,2978
      004D39 0B                    3502 	.uleb128	11
      004D3A 05                    3503 	.db	5
      004D3B 03                    3504 	.db	3
      004D3C 00 00 00 FB           3505 	.dw	0,(_TB8_1)
      004D40 54 42 38 5F 31        3506 	.ascii "TB8_1"
      004D45 00                    3507 	.db	0
      004D46 01                    3508 	.db	1
      004D47 00 00 0B A2           3509 	.dw	0,2978
      004D4B 0B                    3510 	.uleb128	11
      004D4C 05                    3511 	.db	5
      004D4D 03                    3512 	.db	3
      004D4E 00 00 00 FA           3513 	.dw	0,(_RB8_1)
      004D52 52 42 38 5F 31        3514 	.ascii "RB8_1"
      004D57 00                    3515 	.db	0
      004D58 01                    3516 	.db	1
      004D59 00 00 0B A2           3517 	.dw	0,2978
      004D5D 0B                    3518 	.uleb128	11
      004D5E 05                    3519 	.db	5
      004D5F 03                    3520 	.db	3
      004D60 00 00 00 F9           3521 	.dw	0,(_TI_1)
      004D64 54 49 5F 31           3522 	.ascii "TI_1"
      004D68 00                    3523 	.db	0
      004D69 01                    3524 	.db	1
      004D6A 00 00 0B A2           3525 	.dw	0,2978
      004D6E 0B                    3526 	.uleb128	11
      004D6F 05                    3527 	.db	5
      004D70 03                    3528 	.db	3
      004D71 00 00 00 F8           3529 	.dw	0,(_RI_1)
      004D75 52 49 5F 31           3530 	.ascii "RI_1"
      004D79 00                    3531 	.db	0
      004D7A 01                    3532 	.db	1
      004D7B 00 00 0B A2           3533 	.dw	0,2978
      004D7F 0B                    3534 	.uleb128	11
      004D80 05                    3535 	.db	5
      004D81 03                    3536 	.db	3
      004D82 00 00 00 EF           3537 	.dw	0,(_ADCF)
      004D86 41 44 43 46           3538 	.ascii "ADCF"
      004D8A 00                    3539 	.db	0
      004D8B 01                    3540 	.db	1
      004D8C 00 00 0B A2           3541 	.dw	0,2978
      004D90 0B                    3542 	.uleb128	11
      004D91 05                    3543 	.db	5
      004D92 03                    3544 	.db	3
      004D93 00 00 00 EE           3545 	.dw	0,(_ADCS)
      004D97 41 44 43 53           3546 	.ascii "ADCS"
      004D9B 00                    3547 	.db	0
      004D9C 01                    3548 	.db	1
      004D9D 00 00 0B A2           3549 	.dw	0,2978
      004DA1 0B                    3550 	.uleb128	11
      004DA2 05                    3551 	.db	5
      004DA3 03                    3552 	.db	3
      004DA4 00 00 00 ED           3553 	.dw	0,(_ETGSEL1)
      004DA8 45 54 47 53 45 4C 31  3554 	.ascii "ETGSEL1"
      004DAF 00                    3555 	.db	0
      004DB0 01                    3556 	.db	1
      004DB1 00 00 0B A2           3557 	.dw	0,2978
      004DB5 0B                    3558 	.uleb128	11
      004DB6 05                    3559 	.db	5
      004DB7 03                    3560 	.db	3
      004DB8 00 00 00 EC           3561 	.dw	0,(_ETGSEL0)
      004DBC 45 54 47 53 45 4C 30  3562 	.ascii "ETGSEL0"
      004DC3 00                    3563 	.db	0
      004DC4 01                    3564 	.db	1
      004DC5 00 00 0B A2           3565 	.dw	0,2978
      004DC9 0B                    3566 	.uleb128	11
      004DCA 05                    3567 	.db	5
      004DCB 03                    3568 	.db	3
      004DCC 00 00 00 EB           3569 	.dw	0,(_ADCHS3)
      004DD0 41 44 43 48 53 33     3570 	.ascii "ADCHS3"
      004DD6 00                    3571 	.db	0
      004DD7 01                    3572 	.db	1
      004DD8 00 00 0B A2           3573 	.dw	0,2978
      004DDC 0B                    3574 	.uleb128	11
      004DDD 05                    3575 	.db	5
      004DDE 03                    3576 	.db	3
      004DDF 00 00 00 EA           3577 	.dw	0,(_ADCHS2)
      004DE3 41 44 43 48 53 32     3578 	.ascii "ADCHS2"
      004DE9 00                    3579 	.db	0
      004DEA 01                    3580 	.db	1
      004DEB 00 00 0B A2           3581 	.dw	0,2978
      004DEF 0B                    3582 	.uleb128	11
      004DF0 05                    3583 	.db	5
      004DF1 03                    3584 	.db	3
      004DF2 00 00 00 E9           3585 	.dw	0,(_ADCHS1)
      004DF6 41 44 43 48 53 31     3586 	.ascii "ADCHS1"
      004DFC 00                    3587 	.db	0
      004DFD 01                    3588 	.db	1
      004DFE 00 00 0B A2           3589 	.dw	0,2978
      004E02 0B                    3590 	.uleb128	11
      004E03 05                    3591 	.db	5
      004E04 03                    3592 	.db	3
      004E05 00 00 00 E8           3593 	.dw	0,(_ADCHS0)
      004E09 41 44 43 48 53 30     3594 	.ascii "ADCHS0"
      004E0F 00                    3595 	.db	0
      004E10 01                    3596 	.db	1
      004E11 00 00 0B A2           3597 	.dw	0,2978
      004E15 0B                    3598 	.uleb128	11
      004E16 05                    3599 	.db	5
      004E17 03                    3600 	.db	3
      004E18 00 00 00 DF           3601 	.dw	0,(_PWMRUN)
      004E1C 50 57 4D 52 55 4E     3602 	.ascii "PWMRUN"
      004E22 00                    3603 	.db	0
      004E23 01                    3604 	.db	1
      004E24 00 00 0B A2           3605 	.dw	0,2978
      004E28 0B                    3606 	.uleb128	11
      004E29 05                    3607 	.db	5
      004E2A 03                    3608 	.db	3
      004E2B 00 00 00 DE           3609 	.dw	0,(_LOAD)
      004E2F 4C 4F 41 44           3610 	.ascii "LOAD"
      004E33 00                    3611 	.db	0
      004E34 01                    3612 	.db	1
      004E35 00 00 0B A2           3613 	.dw	0,2978
      004E39 0B                    3614 	.uleb128	11
      004E3A 05                    3615 	.db	5
      004E3B 03                    3616 	.db	3
      004E3C 00 00 00 DD           3617 	.dw	0,(_PWMF)
      004E40 50 57 4D 46           3618 	.ascii "PWMF"
      004E44 00                    3619 	.db	0
      004E45 01                    3620 	.db	1
      004E46 00 00 0B A2           3621 	.dw	0,2978
      004E4A 0B                    3622 	.uleb128	11
      004E4B 05                    3623 	.db	5
      004E4C 03                    3624 	.db	3
      004E4D 00 00 00 DC           3625 	.dw	0,(_CLRPWM)
      004E51 43 4C 52 50 57 4D     3626 	.ascii "CLRPWM"
      004E57 00                    3627 	.db	0
      004E58 01                    3628 	.db	1
      004E59 00 00 0B A2           3629 	.dw	0,2978
      004E5D 0B                    3630 	.uleb128	11
      004E5E 05                    3631 	.db	5
      004E5F 03                    3632 	.db	3
      004E60 00 00 00 D7           3633 	.dw	0,(_CY)
      004E64 43 59                 3634 	.ascii "CY"
      004E66 00                    3635 	.db	0
      004E67 01                    3636 	.db	1
      004E68 00 00 0B A2           3637 	.dw	0,2978
      004E6C 0B                    3638 	.uleb128	11
      004E6D 05                    3639 	.db	5
      004E6E 03                    3640 	.db	3
      004E6F 00 00 00 D6           3641 	.dw	0,(_AC)
      004E73 41 43                 3642 	.ascii "AC"
      004E75 00                    3643 	.db	0
      004E76 01                    3644 	.db	1
      004E77 00 00 0B A2           3645 	.dw	0,2978
      004E7B 0B                    3646 	.uleb128	11
      004E7C 05                    3647 	.db	5
      004E7D 03                    3648 	.db	3
      004E7E 00 00 00 D5           3649 	.dw	0,(_F0)
      004E82 46 30                 3650 	.ascii "F0"
      004E84 00                    3651 	.db	0
      004E85 01                    3652 	.db	1
      004E86 00 00 0B A2           3653 	.dw	0,2978
      004E8A 0B                    3654 	.uleb128	11
      004E8B 05                    3655 	.db	5
      004E8C 03                    3656 	.db	3
      004E8D 00 00 00 D4           3657 	.dw	0,(_RS1)
      004E91 52 53 31              3658 	.ascii "RS1"
      004E94 00                    3659 	.db	0
      004E95 01                    3660 	.db	1
      004E96 00 00 0B A2           3661 	.dw	0,2978
      004E9A 0B                    3662 	.uleb128	11
      004E9B 05                    3663 	.db	5
      004E9C 03                    3664 	.db	3
      004E9D 00 00 00 D3           3665 	.dw	0,(_RS0)
      004EA1 52 53 30              3666 	.ascii "RS0"
      004EA4 00                    3667 	.db	0
      004EA5 01                    3668 	.db	1
      004EA6 00 00 0B A2           3669 	.dw	0,2978
      004EAA 0B                    3670 	.uleb128	11
      004EAB 05                    3671 	.db	5
      004EAC 03                    3672 	.db	3
      004EAD 00 00 00 D2           3673 	.dw	0,(_OV)
      004EB1 4F 56                 3674 	.ascii "OV"
      004EB3 00                    3675 	.db	0
      004EB4 01                    3676 	.db	1
      004EB5 00 00 0B A2           3677 	.dw	0,2978
      004EB9 0B                    3678 	.uleb128	11
      004EBA 05                    3679 	.db	5
      004EBB 03                    3680 	.db	3
      004EBC 00 00 00 D0           3681 	.dw	0,(_P)
      004EC0 50                    3682 	.ascii "P"
      004EC1 00                    3683 	.db	0
      004EC2 01                    3684 	.db	1
      004EC3 00 00 0B A2           3685 	.dw	0,2978
      004EC7 0B                    3686 	.uleb128	11
      004EC8 05                    3687 	.db	5
      004EC9 03                    3688 	.db	3
      004ECA 00 00 00 CF           3689 	.dw	0,(_TF2)
      004ECE 54 46 32              3690 	.ascii "TF2"
      004ED1 00                    3691 	.db	0
      004ED2 01                    3692 	.db	1
      004ED3 00 00 0B A2           3693 	.dw	0,2978
      004ED7 0B                    3694 	.uleb128	11
      004ED8 05                    3695 	.db	5
      004ED9 03                    3696 	.db	3
      004EDA 00 00 00 CA           3697 	.dw	0,(_TR2)
      004EDE 54 52 32              3698 	.ascii "TR2"
      004EE1 00                    3699 	.db	0
      004EE2 01                    3700 	.db	1
      004EE3 00 00 0B A2           3701 	.dw	0,2978
      004EE7 0B                    3702 	.uleb128	11
      004EE8 05                    3703 	.db	5
      004EE9 03                    3704 	.db	3
      004EEA 00 00 00 C8           3705 	.dw	0,(_CM_RL2)
      004EEE 43 4D 5F 52 4C 32     3706 	.ascii "CM_RL2"
      004EF4 00                    3707 	.db	0
      004EF5 01                    3708 	.db	1
      004EF6 00 00 0B A2           3709 	.dw	0,2978
      004EFA 0B                    3710 	.uleb128	11
      004EFB 05                    3711 	.db	5
      004EFC 03                    3712 	.db	3
      004EFD 00 00 00 C6           3713 	.dw	0,(_I2CEN)
      004F01 49 32 43 45 4E        3714 	.ascii "I2CEN"
      004F06 00                    3715 	.db	0
      004F07 01                    3716 	.db	1
      004F08 00 00 0B A2           3717 	.dw	0,2978
      004F0C 0B                    3718 	.uleb128	11
      004F0D 05                    3719 	.db	5
      004F0E 03                    3720 	.db	3
      004F0F 00 00 00 C5           3721 	.dw	0,(_STA)
      004F13 53 54 41              3722 	.ascii "STA"
      004F16 00                    3723 	.db	0
      004F17 01                    3724 	.db	1
      004F18 00 00 0B A2           3725 	.dw	0,2978
      004F1C 0B                    3726 	.uleb128	11
      004F1D 05                    3727 	.db	5
      004F1E 03                    3728 	.db	3
      004F1F 00 00 00 C4           3729 	.dw	0,(_STO)
      004F23 53 54 4F              3730 	.ascii "STO"
      004F26 00                    3731 	.db	0
      004F27 01                    3732 	.db	1
      004F28 00 00 0B A2           3733 	.dw	0,2978
      004F2C 0B                    3734 	.uleb128	11
      004F2D 05                    3735 	.db	5
      004F2E 03                    3736 	.db	3
      004F2F 00 00 00 C3           3737 	.dw	0,(_SI)
      004F33 53 49                 3738 	.ascii "SI"
      004F35 00                    3739 	.db	0
      004F36 01                    3740 	.db	1
      004F37 00 00 0B A2           3741 	.dw	0,2978
      004F3B 0B                    3742 	.uleb128	11
      004F3C 05                    3743 	.db	5
      004F3D 03                    3744 	.db	3
      004F3E 00 00 00 C2           3745 	.dw	0,(_AA)
      004F42 41 41                 3746 	.ascii "AA"
      004F44 00                    3747 	.db	0
      004F45 01                    3748 	.db	1
      004F46 00 00 0B A2           3749 	.dw	0,2978
      004F4A 0B                    3750 	.uleb128	11
      004F4B 05                    3751 	.db	5
      004F4C 03                    3752 	.db	3
      004F4D 00 00 00 C0           3753 	.dw	0,(_I2CPX)
      004F51 49 32 43 50 58        3754 	.ascii "I2CPX"
      004F56 00                    3755 	.db	0
      004F57 01                    3756 	.db	1
      004F58 00 00 0B A2           3757 	.dw	0,2978
      004F5C 0B                    3758 	.uleb128	11
      004F5D 05                    3759 	.db	5
      004F5E 03                    3760 	.db	3
      004F5F 00 00 00 BE           3761 	.dw	0,(_PADC)
      004F63 50 41 44 43           3762 	.ascii "PADC"
      004F67 00                    3763 	.db	0
      004F68 01                    3764 	.db	1
      004F69 00 00 0B A2           3765 	.dw	0,2978
      004F6D 0B                    3766 	.uleb128	11
      004F6E 05                    3767 	.db	5
      004F6F 03                    3768 	.db	3
      004F70 00 00 00 BD           3769 	.dw	0,(_PBOD)
      004F74 50 42 4F 44           3770 	.ascii "PBOD"
      004F78 00                    3771 	.db	0
      004F79 01                    3772 	.db	1
      004F7A 00 00 0B A2           3773 	.dw	0,2978
      004F7E 0B                    3774 	.uleb128	11
      004F7F 05                    3775 	.db	5
      004F80 03                    3776 	.db	3
      004F81 00 00 00 BC           3777 	.dw	0,(_PS)
      004F85 50 53                 3778 	.ascii "PS"
      004F87 00                    3779 	.db	0
      004F88 01                    3780 	.db	1
      004F89 00 00 0B A2           3781 	.dw	0,2978
      004F8D 0B                    3782 	.uleb128	11
      004F8E 05                    3783 	.db	5
      004F8F 03                    3784 	.db	3
      004F90 00 00 00 BB           3785 	.dw	0,(_PT1)
      004F94 50 54 31              3786 	.ascii "PT1"
      004F97 00                    3787 	.db	0
      004F98 01                    3788 	.db	1
      004F99 00 00 0B A2           3789 	.dw	0,2978
      004F9D 0B                    3790 	.uleb128	11
      004F9E 05                    3791 	.db	5
      004F9F 03                    3792 	.db	3
      004FA0 00 00 00 BA           3793 	.dw	0,(_PX1)
      004FA4 50 58 31              3794 	.ascii "PX1"
      004FA7 00                    3795 	.db	0
      004FA8 01                    3796 	.db	1
      004FA9 00 00 0B A2           3797 	.dw	0,2978
      004FAD 0B                    3798 	.uleb128	11
      004FAE 05                    3799 	.db	5
      004FAF 03                    3800 	.db	3
      004FB0 00 00 00 B9           3801 	.dw	0,(_PT0)
      004FB4 50 54 30              3802 	.ascii "PT0"
      004FB7 00                    3803 	.db	0
      004FB8 01                    3804 	.db	1
      004FB9 00 00 0B A2           3805 	.dw	0,2978
      004FBD 0B                    3806 	.uleb128	11
      004FBE 05                    3807 	.db	5
      004FBF 03                    3808 	.db	3
      004FC0 00 00 00 B8           3809 	.dw	0,(_PX0)
      004FC4 50 58 30              3810 	.ascii "PX0"
      004FC7 00                    3811 	.db	0
      004FC8 01                    3812 	.db	1
      004FC9 00 00 0B A2           3813 	.dw	0,2978
      004FCD 0B                    3814 	.uleb128	11
      004FCE 05                    3815 	.db	5
      004FCF 03                    3816 	.db	3
      004FD0 00 00 00 B0           3817 	.dw	0,(_P30)
      004FD4 50 33 30              3818 	.ascii "P30"
      004FD7 00                    3819 	.db	0
      004FD8 01                    3820 	.db	1
      004FD9 00 00 0B A2           3821 	.dw	0,2978
      004FDD 0B                    3822 	.uleb128	11
      004FDE 05                    3823 	.db	5
      004FDF 03                    3824 	.db	3
      004FE0 00 00 00 AF           3825 	.dw	0,(_EA)
      004FE4 45 41                 3826 	.ascii "EA"
      004FE6 00                    3827 	.db	0
      004FE7 01                    3828 	.db	1
      004FE8 00 00 0B A2           3829 	.dw	0,2978
      004FEC 0B                    3830 	.uleb128	11
      004FED 05                    3831 	.db	5
      004FEE 03                    3832 	.db	3
      004FEF 00 00 00 AE           3833 	.dw	0,(_EADC)
      004FF3 45 41 44 43           3834 	.ascii "EADC"
      004FF7 00                    3835 	.db	0
      004FF8 01                    3836 	.db	1
      004FF9 00 00 0B A2           3837 	.dw	0,2978
      004FFD 0B                    3838 	.uleb128	11
      004FFE 05                    3839 	.db	5
      004FFF 03                    3840 	.db	3
      005000 00 00 00 AD           3841 	.dw	0,(_EBOD)
      005004 45 42 4F 44           3842 	.ascii "EBOD"
      005008 00                    3843 	.db	0
      005009 01                    3844 	.db	1
      00500A 00 00 0B A2           3845 	.dw	0,2978
      00500E 0B                    3846 	.uleb128	11
      00500F 05                    3847 	.db	5
      005010 03                    3848 	.db	3
      005011 00 00 00 AC           3849 	.dw	0,(_ES)
      005015 45 53                 3850 	.ascii "ES"
      005017 00                    3851 	.db	0
      005018 01                    3852 	.db	1
      005019 00 00 0B A2           3853 	.dw	0,2978
      00501D 0B                    3854 	.uleb128	11
      00501E 05                    3855 	.db	5
      00501F 03                    3856 	.db	3
      005020 00 00 00 AB           3857 	.dw	0,(_ET1)
      005024 45 54 31              3858 	.ascii "ET1"
      005027 00                    3859 	.db	0
      005028 01                    3860 	.db	1
      005029 00 00 0B A2           3861 	.dw	0,2978
      00502D 0B                    3862 	.uleb128	11
      00502E 05                    3863 	.db	5
      00502F 03                    3864 	.db	3
      005030 00 00 00 AA           3865 	.dw	0,(_EX1)
      005034 45 58 31              3866 	.ascii "EX1"
      005037 00                    3867 	.db	0
      005038 01                    3868 	.db	1
      005039 00 00 0B A2           3869 	.dw	0,2978
      00503D 0B                    3870 	.uleb128	11
      00503E 05                    3871 	.db	5
      00503F 03                    3872 	.db	3
      005040 00 00 00 A9           3873 	.dw	0,(_ET0)
      005044 45 54 30              3874 	.ascii "ET0"
      005047 00                    3875 	.db	0
      005048 01                    3876 	.db	1
      005049 00 00 0B A2           3877 	.dw	0,2978
      00504D 0B                    3878 	.uleb128	11
      00504E 05                    3879 	.db	5
      00504F 03                    3880 	.db	3
      005050 00 00 00 A8           3881 	.dw	0,(_EX0)
      005054 45 58 30              3882 	.ascii "EX0"
      005057 00                    3883 	.db	0
      005058 01                    3884 	.db	1
      005059 00 00 0B A2           3885 	.dw	0,2978
      00505D 0B                    3886 	.uleb128	11
      00505E 05                    3887 	.db	5
      00505F 03                    3888 	.db	3
      005060 00 00 00 A0           3889 	.dw	0,(_P20)
      005064 50 32 30              3890 	.ascii "P20"
      005067 00                    3891 	.db	0
      005068 01                    3892 	.db	1
      005069 00 00 0B A2           3893 	.dw	0,2978
      00506D 0B                    3894 	.uleb128	11
      00506E 05                    3895 	.db	5
      00506F 03                    3896 	.db	3
      005070 00 00 00 9F           3897 	.dw	0,(_SM0)
      005074 53 4D 30              3898 	.ascii "SM0"
      005077 00                    3899 	.db	0
      005078 01                    3900 	.db	1
      005079 00 00 0B A2           3901 	.dw	0,2978
      00507D 0B                    3902 	.uleb128	11
      00507E 05                    3903 	.db	5
      00507F 03                    3904 	.db	3
      005080 00 00 00 9F           3905 	.dw	0,(_FE)
      005084 46 45                 3906 	.ascii "FE"
      005086 00                    3907 	.db	0
      005087 01                    3908 	.db	1
      005088 00 00 0B A2           3909 	.dw	0,2978
      00508C 0B                    3910 	.uleb128	11
      00508D 05                    3911 	.db	5
      00508E 03                    3912 	.db	3
      00508F 00 00 00 9E           3913 	.dw	0,(_SM1)
      005093 53 4D 31              3914 	.ascii "SM1"
      005096 00                    3915 	.db	0
      005097 01                    3916 	.db	1
      005098 00 00 0B A2           3917 	.dw	0,2978
      00509C 0B                    3918 	.uleb128	11
      00509D 05                    3919 	.db	5
      00509E 03                    3920 	.db	3
      00509F 00 00 00 9D           3921 	.dw	0,(_SM2)
      0050A3 53 4D 32              3922 	.ascii "SM2"
      0050A6 00                    3923 	.db	0
      0050A7 01                    3924 	.db	1
      0050A8 00 00 0B A2           3925 	.dw	0,2978
      0050AC 0B                    3926 	.uleb128	11
      0050AD 05                    3927 	.db	5
      0050AE 03                    3928 	.db	3
      0050AF 00 00 00 9C           3929 	.dw	0,(_REN)
      0050B3 52 45 4E              3930 	.ascii "REN"
      0050B6 00                    3931 	.db	0
      0050B7 01                    3932 	.db	1
      0050B8 00 00 0B A2           3933 	.dw	0,2978
      0050BC 0B                    3934 	.uleb128	11
      0050BD 05                    3935 	.db	5
      0050BE 03                    3936 	.db	3
      0050BF 00 00 00 9B           3937 	.dw	0,(_TB8)
      0050C3 54 42 38              3938 	.ascii "TB8"
      0050C6 00                    3939 	.db	0
      0050C7 01                    3940 	.db	1
      0050C8 00 00 0B A2           3941 	.dw	0,2978
      0050CC 0B                    3942 	.uleb128	11
      0050CD 05                    3943 	.db	5
      0050CE 03                    3944 	.db	3
      0050CF 00 00 00 9A           3945 	.dw	0,(_RB8)
      0050D3 52 42 38              3946 	.ascii "RB8"
      0050D6 00                    3947 	.db	0
      0050D7 01                    3948 	.db	1
      0050D8 00 00 0B A2           3949 	.dw	0,2978
      0050DC 0B                    3950 	.uleb128	11
      0050DD 05                    3951 	.db	5
      0050DE 03                    3952 	.db	3
      0050DF 00 00 00 99           3953 	.dw	0,(_TI)
      0050E3 54 49                 3954 	.ascii "TI"
      0050E5 00                    3955 	.db	0
      0050E6 01                    3956 	.db	1
      0050E7 00 00 0B A2           3957 	.dw	0,2978
      0050EB 0B                    3958 	.uleb128	11
      0050EC 05                    3959 	.db	5
      0050ED 03                    3960 	.db	3
      0050EE 00 00 00 98           3961 	.dw	0,(_RI)
      0050F2 52 49                 3962 	.ascii "RI"
      0050F4 00                    3963 	.db	0
      0050F5 01                    3964 	.db	1
      0050F6 00 00 0B A2           3965 	.dw	0,2978
      0050FA 0B                    3966 	.uleb128	11
      0050FB 05                    3967 	.db	5
      0050FC 03                    3968 	.db	3
      0050FD 00 00 00 97           3969 	.dw	0,(_P17)
      005101 50 31 37              3970 	.ascii "P17"
      005104 00                    3971 	.db	0
      005105 01                    3972 	.db	1
      005106 00 00 0B A2           3973 	.dw	0,2978
      00510A 0B                    3974 	.uleb128	11
      00510B 05                    3975 	.db	5
      00510C 03                    3976 	.db	3
      00510D 00 00 00 96           3977 	.dw	0,(_P16)
      005111 50 31 36              3978 	.ascii "P16"
      005114 00                    3979 	.db	0
      005115 01                    3980 	.db	1
      005116 00 00 0B A2           3981 	.dw	0,2978
      00511A 0B                    3982 	.uleb128	11
      00511B 05                    3983 	.db	5
      00511C 03                    3984 	.db	3
      00511D 00 00 00 96           3985 	.dw	0,(_TXD_1)
      005121 54 58 44 5F 31        3986 	.ascii "TXD_1"
      005126 00                    3987 	.db	0
      005127 01                    3988 	.db	1
      005128 00 00 0B A2           3989 	.dw	0,2978
      00512C 0B                    3990 	.uleb128	11
      00512D 05                    3991 	.db	5
      00512E 03                    3992 	.db	3
      00512F 00 00 00 95           3993 	.dw	0,(_P15)
      005133 50 31 35              3994 	.ascii "P15"
      005136 00                    3995 	.db	0
      005137 01                    3996 	.db	1
      005138 00 00 0B A2           3997 	.dw	0,2978
      00513C 0B                    3998 	.uleb128	11
      00513D 05                    3999 	.db	5
      00513E 03                    4000 	.db	3
      00513F 00 00 00 94           4001 	.dw	0,(_P14)
      005143 50 31 34              4002 	.ascii "P14"
      005146 00                    4003 	.db	0
      005147 01                    4004 	.db	1
      005148 00 00 0B A2           4005 	.dw	0,2978
      00514C 0B                    4006 	.uleb128	11
      00514D 05                    4007 	.db	5
      00514E 03                    4008 	.db	3
      00514F 00 00 00 94           4009 	.dw	0,(_SDA)
      005153 53 44 41              4010 	.ascii "SDA"
      005156 00                    4011 	.db	0
      005157 01                    4012 	.db	1
      005158 00 00 0B A2           4013 	.dw	0,2978
      00515C 0B                    4014 	.uleb128	11
      00515D 05                    4015 	.db	5
      00515E 03                    4016 	.db	3
      00515F 00 00 00 93           4017 	.dw	0,(_P13)
      005163 50 31 33              4018 	.ascii "P13"
      005166 00                    4019 	.db	0
      005167 01                    4020 	.db	1
      005168 00 00 0B A2           4021 	.dw	0,2978
      00516C 0B                    4022 	.uleb128	11
      00516D 05                    4023 	.db	5
      00516E 03                    4024 	.db	3
      00516F 00 00 00 93           4025 	.dw	0,(_SCL)
      005173 53 43 4C              4026 	.ascii "SCL"
      005176 00                    4027 	.db	0
      005177 01                    4028 	.db	1
      005178 00 00 0B A2           4029 	.dw	0,2978
      00517C 0B                    4030 	.uleb128	11
      00517D 05                    4031 	.db	5
      00517E 03                    4032 	.db	3
      00517F 00 00 00 92           4033 	.dw	0,(_P12)
      005183 50 31 32              4034 	.ascii "P12"
      005186 00                    4035 	.db	0
      005187 01                    4036 	.db	1
      005188 00 00 0B A2           4037 	.dw	0,2978
      00518C 0B                    4038 	.uleb128	11
      00518D 05                    4039 	.db	5
      00518E 03                    4040 	.db	3
      00518F 00 00 00 91           4041 	.dw	0,(_P11)
      005193 50 31 31              4042 	.ascii "P11"
      005196 00                    4043 	.db	0
      005197 01                    4044 	.db	1
      005198 00 00 0B A2           4045 	.dw	0,2978
      00519C 0B                    4046 	.uleb128	11
      00519D 05                    4047 	.db	5
      00519E 03                    4048 	.db	3
      00519F 00 00 00 90           4049 	.dw	0,(_P10)
      0051A3 50 31 30              4050 	.ascii "P10"
      0051A6 00                    4051 	.db	0
      0051A7 01                    4052 	.db	1
      0051A8 00 00 0B A2           4053 	.dw	0,2978
      0051AC 0B                    4054 	.uleb128	11
      0051AD 05                    4055 	.db	5
      0051AE 03                    4056 	.db	3
      0051AF 00 00 00 8F           4057 	.dw	0,(_TF1)
      0051B3 54 46 31              4058 	.ascii "TF1"
      0051B6 00                    4059 	.db	0
      0051B7 01                    4060 	.db	1
      0051B8 00 00 0B A2           4061 	.dw	0,2978
      0051BC 0B                    4062 	.uleb128	11
      0051BD 05                    4063 	.db	5
      0051BE 03                    4064 	.db	3
      0051BF 00 00 00 8E           4065 	.dw	0,(_TR1)
      0051C3 54 52 31              4066 	.ascii "TR1"
      0051C6 00                    4067 	.db	0
      0051C7 01                    4068 	.db	1
      0051C8 00 00 0B A2           4069 	.dw	0,2978
      0051CC 0B                    4070 	.uleb128	11
      0051CD 05                    4071 	.db	5
      0051CE 03                    4072 	.db	3
      0051CF 00 00 00 8D           4073 	.dw	0,(_TF0)
      0051D3 54 46 30              4074 	.ascii "TF0"
      0051D6 00                    4075 	.db	0
      0051D7 01                    4076 	.db	1
      0051D8 00 00 0B A2           4077 	.dw	0,2978
      0051DC 0B                    4078 	.uleb128	11
      0051DD 05                    4079 	.db	5
      0051DE 03                    4080 	.db	3
      0051DF 00 00 00 8C           4081 	.dw	0,(_TR0)
      0051E3 54 52 30              4082 	.ascii "TR0"
      0051E6 00                    4083 	.db	0
      0051E7 01                    4084 	.db	1
      0051E8 00 00 0B A2           4085 	.dw	0,2978
      0051EC 0B                    4086 	.uleb128	11
      0051ED 05                    4087 	.db	5
      0051EE 03                    4088 	.db	3
      0051EF 00 00 00 8B           4089 	.dw	0,(_IE1)
      0051F3 49 45 31              4090 	.ascii "IE1"
      0051F6 00                    4091 	.db	0
      0051F7 01                    4092 	.db	1
      0051F8 00 00 0B A2           4093 	.dw	0,2978
      0051FC 0B                    4094 	.uleb128	11
      0051FD 05                    4095 	.db	5
      0051FE 03                    4096 	.db	3
      0051FF 00 00 00 8A           4097 	.dw	0,(_IT1)
      005203 49 54 31              4098 	.ascii "IT1"
      005206 00                    4099 	.db	0
      005207 01                    4100 	.db	1
      005208 00 00 0B A2           4101 	.dw	0,2978
      00520C 0B                    4102 	.uleb128	11
      00520D 05                    4103 	.db	5
      00520E 03                    4104 	.db	3
      00520F 00 00 00 89           4105 	.dw	0,(_IE0)
      005213 49 45 30              4106 	.ascii "IE0"
      005216 00                    4107 	.db	0
      005217 01                    4108 	.db	1
      005218 00 00 0B A2           4109 	.dw	0,2978
      00521C 0B                    4110 	.uleb128	11
      00521D 05                    4111 	.db	5
      00521E 03                    4112 	.db	3
      00521F 00 00 00 88           4113 	.dw	0,(_IT0)
      005223 49 54 30              4114 	.ascii "IT0"
      005226 00                    4115 	.db	0
      005227 01                    4116 	.db	1
      005228 00 00 0B A2           4117 	.dw	0,2978
      00522C 0B                    4118 	.uleb128	11
      00522D 05                    4119 	.db	5
      00522E 03                    4120 	.db	3
      00522F 00 00 00 87           4121 	.dw	0,(_P07)
      005233 50 30 37              4122 	.ascii "P07"
      005236 00                    4123 	.db	0
      005237 01                    4124 	.db	1
      005238 00 00 0B A2           4125 	.dw	0,2978
      00523C 0B                    4126 	.uleb128	11
      00523D 05                    4127 	.db	5
      00523E 03                    4128 	.db	3
      00523F 00 00 00 87           4129 	.dw	0,(_RXD)
      005243 52 58 44              4130 	.ascii "RXD"
      005246 00                    4131 	.db	0
      005247 01                    4132 	.db	1
      005248 00 00 0B A2           4133 	.dw	0,2978
      00524C 0B                    4134 	.uleb128	11
      00524D 05                    4135 	.db	5
      00524E 03                    4136 	.db	3
      00524F 00 00 00 86           4137 	.dw	0,(_P06)
      005253 50 30 36              4138 	.ascii "P06"
      005256 00                    4139 	.db	0
      005257 01                    4140 	.db	1
      005258 00 00 0B A2           4141 	.dw	0,2978
      00525C 0B                    4142 	.uleb128	11
      00525D 05                    4143 	.db	5
      00525E 03                    4144 	.db	3
      00525F 00 00 00 86           4145 	.dw	0,(_TXD)
      005263 54 58 44              4146 	.ascii "TXD"
      005266 00                    4147 	.db	0
      005267 01                    4148 	.db	1
      005268 00 00 0B A2           4149 	.dw	0,2978
      00526C 0B                    4150 	.uleb128	11
      00526D 05                    4151 	.db	5
      00526E 03                    4152 	.db	3
      00526F 00 00 00 85           4153 	.dw	0,(_P05)
      005273 50 30 35              4154 	.ascii "P05"
      005276 00                    4155 	.db	0
      005277 01                    4156 	.db	1
      005278 00 00 0B A2           4157 	.dw	0,2978
      00527C 0B                    4158 	.uleb128	11
      00527D 05                    4159 	.db	5
      00527E 03                    4160 	.db	3
      00527F 00 00 00 84           4161 	.dw	0,(_P04)
      005283 50 30 34              4162 	.ascii "P04"
      005286 00                    4163 	.db	0
      005287 01                    4164 	.db	1
      005288 00 00 0B A2           4165 	.dw	0,2978
      00528C 0B                    4166 	.uleb128	11
      00528D 05                    4167 	.db	5
      00528E 03                    4168 	.db	3
      00528F 00 00 00 84           4169 	.dw	0,(_STADC)
      005293 53 54 41 44 43        4170 	.ascii "STADC"
      005298 00                    4171 	.db	0
      005299 01                    4172 	.db	1
      00529A 00 00 0B A2           4173 	.dw	0,2978
      00529E 0B                    4174 	.uleb128	11
      00529F 05                    4175 	.db	5
      0052A0 03                    4176 	.db	3
      0052A1 00 00 00 83           4177 	.dw	0,(_P03)
      0052A5 50 30 33              4178 	.ascii "P03"
      0052A8 00                    4179 	.db	0
      0052A9 01                    4180 	.db	1
      0052AA 00 00 0B A2           4181 	.dw	0,2978
      0052AE 0B                    4182 	.uleb128	11
      0052AF 05                    4183 	.db	5
      0052B0 03                    4184 	.db	3
      0052B1 00 00 00 82           4185 	.dw	0,(_P02)
      0052B5 50 30 32              4186 	.ascii "P02"
      0052B8 00                    4187 	.db	0
      0052B9 01                    4188 	.db	1
      0052BA 00 00 0B A2           4189 	.dw	0,2978
      0052BE 0B                    4190 	.uleb128	11
      0052BF 05                    4191 	.db	5
      0052C0 03                    4192 	.db	3
      0052C1 00 00 00 82           4193 	.dw	0,(_RXD_1)
      0052C5 52 58 44 5F 31        4194 	.ascii "RXD_1"
      0052CA 00                    4195 	.db	0
      0052CB 01                    4196 	.db	1
      0052CC 00 00 0B A2           4197 	.dw	0,2978
      0052D0 0B                    4198 	.uleb128	11
      0052D1 05                    4199 	.db	5
      0052D2 03                    4200 	.db	3
      0052D3 00 00 00 81           4201 	.dw	0,(_P01)
      0052D7 50 30 31              4202 	.ascii "P01"
      0052DA 00                    4203 	.db	0
      0052DB 01                    4204 	.db	1
      0052DC 00 00 0B A2           4205 	.dw	0,2978
      0052E0 0B                    4206 	.uleb128	11
      0052E1 05                    4207 	.db	5
      0052E2 03                    4208 	.db	3
      0052E3 00 00 00 81           4209 	.dw	0,(_MISO)
      0052E7 4D 49 53 4F           4210 	.ascii "MISO"
      0052EB 00                    4211 	.db	0
      0052EC 01                    4212 	.db	1
      0052ED 00 00 0B A2           4213 	.dw	0,2978
      0052F1 0B                    4214 	.uleb128	11
      0052F2 05                    4215 	.db	5
      0052F3 03                    4216 	.db	3
      0052F4 00 00 00 80           4217 	.dw	0,(_P00)
      0052F8 50 30 30              4218 	.ascii "P00"
      0052FB 00                    4219 	.db	0
      0052FC 01                    4220 	.db	1
      0052FD 00 00 0B A2           4221 	.dw	0,2978
      005301 0B                    4222 	.uleb128	11
      005302 05                    4223 	.db	5
      005303 03                    4224 	.db	3
      005304 00 00 00 80           4225 	.dw	0,(_MOSI)
      005308 4D 4F 53 49           4226 	.ascii "MOSI"
      00530C 00                    4227 	.db	0
      00530D 01                    4228 	.db	1
      00530E 00 00 0B A2           4229 	.dw	0,2978
      005312 00                    4230 	.uleb128	0
      005313                       4231 Ldebug_info_end:
                                   4232 
                                   4233 	.area .debug_pubnames (NOLOAD)
      001D6F 00 00 08 B2           4234 	.dw	0,Ldebug_pubnames_end-Ldebug_pubnames_start
      001D73                       4235 Ldebug_pubnames_start:
      001D73 00 02                 4236 	.dw	2
      001D75 00 00 41 39           4237 	.dw	0,(Ldebug_info_start-4)
      001D79 00 00 11 DA           4238 	.dw	0,4+Ldebug_info_end-Ldebug_info_start
      001D7D 00 00 00 A0           4239 	.dw	0,160
      001D81 4D 4F 44 49 46 59 5F  4240 	.ascii "MODIFY_HIRC"
             48 49 52 43
      001D8C 00                    4241 	.db	0
      001D8D 00 00 01 29           4242 	.dw	0,297
      001D91 46 73 79 73 53 65 6C  4243 	.ascii "FsysSelect"
             65 63 74
      001D9B 00                    4244 	.db	0
      001D9C 00 00 01 66           4245 	.dw	0,358
      001DA0 43 6C 6F 63 6B 45 6E  4246 	.ascii "ClockEnable"
             61 62 6C 65
      001DAB 00                    4247 	.db	0
      001DAC 00 00 01 A4           4248 	.dw	0,420
      001DB0 43 6C 6F 63 6B 44 69  4249 	.ascii "ClockDisable"
             73 61 62 6C 65
      001DBC 00                    4250 	.db	0
      001DBD 00 00 01 E3           4251 	.dw	0,483
      001DC1 43 6C 6F 63 6B 53 77  4252 	.ascii "ClockSwitch"
             69 74 63 68
      001DCC 00                    4253 	.db	0
      001DCD 00 00 02 29           4254 	.dw	0,553
      001DD1 42 49 54 5F 54 4D 50  4255 	.ascii "BIT_TMP"
      001DD8 00                    4256 	.db	0
      001DD9 00 00 02 43           4257 	.dw	0,579
      001DDD 50 30                 4258 	.ascii "P0"
      001DDF 00                    4259 	.db	0
      001DE0 00 00 02 52           4260 	.dw	0,594
      001DE4 53 50                 4261 	.ascii "SP"
      001DE6 00                    4262 	.db	0
      001DE7 00 00 02 61           4263 	.dw	0,609
      001DEB 44 50 4C              4264 	.ascii "DPL"
      001DEE 00                    4265 	.db	0
      001DEF 00 00 02 71           4266 	.dw	0,625
      001DF3 44 50 48              4267 	.ascii "DPH"
      001DF6 00                    4268 	.db	0
      001DF7 00 00 02 81           4269 	.dw	0,641
      001DFB 52 43 54 52 49 4D 30  4270 	.ascii "RCTRIM0"
      001E02 00                    4271 	.db	0
      001E03 00 00 02 95           4272 	.dw	0,661
      001E07 52 43 54 52 49 4D 31  4273 	.ascii "RCTRIM1"
      001E0E 00                    4274 	.db	0
      001E0F 00 00 02 A9           4275 	.dw	0,681
      001E13 52 57 4B              4276 	.ascii "RWK"
      001E16 00                    4277 	.db	0
      001E17 00 00 02 B9           4278 	.dw	0,697
      001E1B 50 43 4F 4E           4279 	.ascii "PCON"
      001E1F 00                    4280 	.db	0
      001E20 00 00 02 CA           4281 	.dw	0,714
      001E24 54 43 4F 4E           4282 	.ascii "TCON"
      001E28 00                    4283 	.db	0
      001E29 00 00 02 DB           4284 	.dw	0,731
      001E2D 54 4D 4F 44           4285 	.ascii "TMOD"
      001E31 00                    4286 	.db	0
      001E32 00 00 02 EC           4287 	.dw	0,748
      001E36 54 4C 30              4288 	.ascii "TL0"
      001E39 00                    4289 	.db	0
      001E3A 00 00 02 FC           4290 	.dw	0,764
      001E3E 54 4C 31              4291 	.ascii "TL1"
      001E41 00                    4292 	.db	0
      001E42 00 00 03 0C           4293 	.dw	0,780
      001E46 54 48 30              4294 	.ascii "TH0"
      001E49 00                    4295 	.db	0
      001E4A 00 00 03 1C           4296 	.dw	0,796
      001E4E 54 48 31              4297 	.ascii "TH1"
      001E51 00                    4298 	.db	0
      001E52 00 00 03 2C           4299 	.dw	0,812
      001E56 43 4B 43 4F 4E        4300 	.ascii "CKCON"
      001E5B 00                    4301 	.db	0
      001E5C 00 00 03 3E           4302 	.dw	0,830
      001E60 57 4B 43 4F 4E        4303 	.ascii "WKCON"
      001E65 00                    4304 	.db	0
      001E66 00 00 03 50           4305 	.dw	0,848
      001E6A 50 31                 4306 	.ascii "P1"
      001E6C 00                    4307 	.db	0
      001E6D 00 00 03 5F           4308 	.dw	0,863
      001E71 53 46 52 53           4309 	.ascii "SFRS"
      001E75 00                    4310 	.db	0
      001E76 00 00 03 70           4311 	.dw	0,880
      001E7A 43 41 50 43 4F 4E 30  4312 	.ascii "CAPCON0"
      001E81 00                    4313 	.db	0
      001E82 00 00 03 84           4314 	.dw	0,900
      001E86 43 41 50 43 4F 4E 31  4315 	.ascii "CAPCON1"
      001E8D 00                    4316 	.db	0
      001E8E 00 00 03 98           4317 	.dw	0,920
      001E92 43 41 50 43 4F 4E 32  4318 	.ascii "CAPCON2"
      001E99 00                    4319 	.db	0
      001E9A 00 00 03 AC           4320 	.dw	0,940
      001E9E 43 4B 44 49 56        4321 	.ascii "CKDIV"
      001EA3 00                    4322 	.db	0
      001EA4 00 00 03 BE           4323 	.dw	0,958
      001EA8 43 4B 53 57 54        4324 	.ascii "CKSWT"
      001EAD 00                    4325 	.db	0
      001EAE 00 00 03 D0           4326 	.dw	0,976
      001EB2 43 4B 45 4E           4327 	.ascii "CKEN"
      001EB6 00                    4328 	.db	0
      001EB7 00 00 03 E1           4329 	.dw	0,993
      001EBB 53 43 4F 4E           4330 	.ascii "SCON"
      001EBF 00                    4331 	.db	0
      001EC0 00 00 03 F2           4332 	.dw	0,1010
      001EC4 53 42 55 46           4333 	.ascii "SBUF"
      001EC8 00                    4334 	.db	0
      001EC9 00 00 04 03           4335 	.dw	0,1027
      001ECD 53 42 55 46 5F 31     4336 	.ascii "SBUF_1"
      001ED3 00                    4337 	.db	0
      001ED4 00 00 04 16           4338 	.dw	0,1046
      001ED8 45 49 45              4339 	.ascii "EIE"
      001EDB 00                    4340 	.db	0
      001EDC 00 00 04 26           4341 	.dw	0,1062
      001EE0 45 49 45 31           4342 	.ascii "EIE1"
      001EE4 00                    4343 	.db	0
      001EE5 00 00 04 37           4344 	.dw	0,1079
      001EE9 43 48 50 43 4F 4E     4345 	.ascii "CHPCON"
      001EEF 00                    4346 	.db	0
      001EF0 00 00 04 4A           4347 	.dw	0,1098
      001EF4 50 32                 4348 	.ascii "P2"
      001EF6 00                    4349 	.db	0
      001EF7 00 00 04 59           4350 	.dw	0,1113
      001EFB 41 55 58 52 31        4351 	.ascii "AUXR1"
      001F00 00                    4352 	.db	0
      001F01 00 00 04 6B           4353 	.dw	0,1131
      001F05 42 4F 44 43 4F 4E 30  4354 	.ascii "BODCON0"
      001F0C 00                    4355 	.db	0
      001F0D 00 00 04 7F           4356 	.dw	0,1151
      001F11 49 41 50 54 52 47     4357 	.ascii "IAPTRG"
      001F17 00                    4358 	.db	0
      001F18 00 00 04 92           4359 	.dw	0,1170
      001F1C 49 41 50 55 45 4E     4360 	.ascii "IAPUEN"
      001F22 00                    4361 	.db	0
      001F23 00 00 04 A5           4362 	.dw	0,1189
      001F27 49 41 50 41 4C        4363 	.ascii "IAPAL"
      001F2C 00                    4364 	.db	0
      001F2D 00 00 04 B7           4365 	.dw	0,1207
      001F31 49 41 50 41 48        4366 	.ascii "IAPAH"
      001F36 00                    4367 	.db	0
      001F37 00 00 04 C9           4368 	.dw	0,1225
      001F3B 49 45                 4369 	.ascii "IE"
      001F3D 00                    4370 	.db	0
      001F3E 00 00 04 D8           4371 	.dw	0,1240
      001F42 53 41 44 44 52        4372 	.ascii "SADDR"
      001F47 00                    4373 	.db	0
      001F48 00 00 04 EA           4374 	.dw	0,1258
      001F4C 57 44 43 4F 4E        4375 	.ascii "WDCON"
      001F51 00                    4376 	.db	0
      001F52 00 00 04 FC           4377 	.dw	0,1276
      001F56 42 4F 44 43 4F 4E 31  4378 	.ascii "BODCON1"
      001F5D 00                    4379 	.db	0
      001F5E 00 00 05 10           4380 	.dw	0,1296
      001F62 50 33 4D 31           4381 	.ascii "P3M1"
      001F66 00                    4382 	.db	0
      001F67 00 00 05 21           4383 	.dw	0,1313
      001F6B 50 33 53              4384 	.ascii "P3S"
      001F6E 00                    4385 	.db	0
      001F6F 00 00 05 31           4386 	.dw	0,1329
      001F73 50 33 4D 32           4387 	.ascii "P3M2"
      001F77 00                    4388 	.db	0
      001F78 00 00 05 42           4389 	.dw	0,1346
      001F7C 50 33 53 52           4390 	.ascii "P3SR"
      001F80 00                    4391 	.db	0
      001F81 00 00 05 53           4392 	.dw	0,1363
      001F85 49 41 50 46 44        4393 	.ascii "IAPFD"
      001F8A 00                    4394 	.db	0
      001F8B 00 00 05 65           4395 	.dw	0,1381
      001F8F 49 41 50 43 4E        4396 	.ascii "IAPCN"
      001F94 00                    4397 	.db	0
      001F95 00 00 05 77           4398 	.dw	0,1399
      001F99 50 33                 4399 	.ascii "P3"
      001F9B 00                    4400 	.db	0
      001F9C 00 00 05 86           4401 	.dw	0,1414
      001FA0 50 30 4D 31           4402 	.ascii "P0M1"
      001FA4 00                    4403 	.db	0
      001FA5 00 00 05 97           4404 	.dw	0,1431
      001FA9 50 30 53              4405 	.ascii "P0S"
      001FAC 00                    4406 	.db	0
      001FAD 00 00 05 A7           4407 	.dw	0,1447
      001FB1 50 30 4D 32           4408 	.ascii "P0M2"
      001FB5 00                    4409 	.db	0
      001FB6 00 00 05 B8           4410 	.dw	0,1464
      001FBA 50 30 53 52           4411 	.ascii "P0SR"
      001FBE 00                    4412 	.db	0
      001FBF 00 00 05 C9           4413 	.dw	0,1481
      001FC3 50 31 4D 31           4414 	.ascii "P1M1"
      001FC7 00                    4415 	.db	0
      001FC8 00 00 05 DA           4416 	.dw	0,1498
      001FCC 50 31 53              4417 	.ascii "P1S"
      001FCF 00                    4418 	.db	0
      001FD0 00 00 05 EA           4419 	.dw	0,1514
      001FD4 50 31 4D 32           4420 	.ascii "P1M2"
      001FD8 00                    4421 	.db	0
      001FD9 00 00 05 FB           4422 	.dw	0,1531
      001FDD 50 31 53 52           4423 	.ascii "P1SR"
      001FE1 00                    4424 	.db	0
      001FE2 00 00 06 0C           4425 	.dw	0,1548
      001FE6 50 32 53              4426 	.ascii "P2S"
      001FE9 00                    4427 	.db	0
      001FEA 00 00 06 1C           4428 	.dw	0,1564
      001FEE 49 50 48              4429 	.ascii "IPH"
      001FF1 00                    4430 	.db	0
      001FF2 00 00 06 2C           4431 	.dw	0,1580
      001FF6 50 57 4D 49 4E 54 43  4432 	.ascii "PWMINTC"
      001FFD 00                    4433 	.db	0
      001FFE 00 00 06 40           4434 	.dw	0,1600
      002002 49 50                 4435 	.ascii "IP"
      002004 00                    4436 	.db	0
      002005 00 00 06 4F           4437 	.dw	0,1615
      002009 53 41 44 45 4E        4438 	.ascii "SADEN"
      00200E 00                    4439 	.db	0
      00200F 00 00 06 61           4440 	.dw	0,1633
      002013 53 41 44 45 4E 5F 31  4441 	.ascii "SADEN_1"
      00201A 00                    4442 	.db	0
      00201B 00 00 06 75           4443 	.dw	0,1653
      00201F 53 41 44 44 52 5F 31  4444 	.ascii "SADDR_1"
      002026 00                    4445 	.db	0
      002027 00 00 06 89           4446 	.dw	0,1673
      00202B 49 32 44 41 54        4447 	.ascii "I2DAT"
      002030 00                    4448 	.db	0
      002031 00 00 06 9B           4449 	.dw	0,1691
      002035 49 32 53 54 41 54     4450 	.ascii "I2STAT"
      00203B 00                    4451 	.db	0
      00203C 00 00 06 AE           4452 	.dw	0,1710
      002040 49 32 43 4C 4B        4453 	.ascii "I2CLK"
      002045 00                    4454 	.db	0
      002046 00 00 06 C0           4455 	.dw	0,1728
      00204A 49 32 54 4F 43        4456 	.ascii "I2TOC"
      00204F 00                    4457 	.db	0
      002050 00 00 06 D2           4458 	.dw	0,1746
      002054 49 32 43 4F 4E        4459 	.ascii "I2CON"
      002059 00                    4460 	.db	0
      00205A 00 00 06 E4           4461 	.dw	0,1764
      00205E 49 32 41 44 44 52     4462 	.ascii "I2ADDR"
      002064 00                    4463 	.db	0
      002065 00 00 06 F7           4464 	.dw	0,1783
      002069 41 44 43 52 4C        4465 	.ascii "ADCRL"
      00206E 00                    4466 	.db	0
      00206F 00 00 07 09           4467 	.dw	0,1801
      002073 41 44 43 52 48        4468 	.ascii "ADCRH"
      002078 00                    4469 	.db	0
      002079 00 00 07 1B           4470 	.dw	0,1819
      00207D 54 33 43 4F 4E        4471 	.ascii "T3CON"
      002082 00                    4472 	.db	0
      002083 00 00 07 2D           4473 	.dw	0,1837
      002087 50 57 4D 34 48        4474 	.ascii "PWM4H"
      00208C 00                    4475 	.db	0
      00208D 00 00 07 3F           4476 	.dw	0,1855
      002091 52 4C 33              4477 	.ascii "RL3"
      002094 00                    4478 	.db	0
      002095 00 00 07 4F           4479 	.dw	0,1871
      002099 50 57 4D 35 48        4480 	.ascii "PWM5H"
      00209E 00                    4481 	.db	0
      00209F 00 00 07 61           4482 	.dw	0,1889
      0020A3 52 48 33              4483 	.ascii "RH3"
      0020A6 00                    4484 	.db	0
      0020A7 00 00 07 71           4485 	.dw	0,1905
      0020AB 50 49 4F 43 4F 4E 31  4486 	.ascii "PIOCON1"
      0020B2 00                    4487 	.db	0
      0020B3 00 00 07 85           4488 	.dw	0,1925
      0020B7 54 41                 4489 	.ascii "TA"
      0020B9 00                    4490 	.db	0
      0020BA 00 00 07 94           4491 	.dw	0,1940
      0020BE 54 32 43 4F 4E        4492 	.ascii "T2CON"
      0020C3 00                    4493 	.db	0
      0020C4 00 00 07 A6           4494 	.dw	0,1958
      0020C8 54 32 4D 4F 44        4495 	.ascii "T2MOD"
      0020CD 00                    4496 	.db	0
      0020CE 00 00 07 B8           4497 	.dw	0,1976
      0020D2 52 43 4D 50 32 4C     4498 	.ascii "RCMP2L"
      0020D8 00                    4499 	.db	0
      0020D9 00 00 07 CB           4500 	.dw	0,1995
      0020DD 52 43 4D 50 32 48     4501 	.ascii "RCMP2H"
      0020E3 00                    4502 	.db	0
      0020E4 00 00 07 DE           4503 	.dw	0,2014
      0020E8 54 4C 32              4504 	.ascii "TL2"
      0020EB 00                    4505 	.db	0
      0020EC 00 00 07 EE           4506 	.dw	0,2030
      0020F0 50 57 4D 34 4C        4507 	.ascii "PWM4L"
      0020F5 00                    4508 	.db	0
      0020F6 00 00 08 00           4509 	.dw	0,2048
      0020FA 54 48 32              4510 	.ascii "TH2"
      0020FD 00                    4511 	.db	0
      0020FE 00 00 08 10           4512 	.dw	0,2064
      002102 50 57 4D 35 4C        4513 	.ascii "PWM5L"
      002107 00                    4514 	.db	0
      002108 00 00 08 22           4515 	.dw	0,2082
      00210C 41 44 43 4D 50 4C     4516 	.ascii "ADCMPL"
      002112 00                    4517 	.db	0
      002113 00 00 08 35           4518 	.dw	0,2101
      002117 41 44 43 4D 50 48     4519 	.ascii "ADCMPH"
      00211D 00                    4520 	.db	0
      00211E 00 00 08 48           4521 	.dw	0,2120
      002122 50 53 57              4522 	.ascii "PSW"
      002125 00                    4523 	.db	0
      002126 00 00 08 58           4524 	.dw	0,2136
      00212A 50 57 4D 50 48        4525 	.ascii "PWMPH"
      00212F 00                    4526 	.db	0
      002130 00 00 08 6A           4527 	.dw	0,2154
      002134 50 57 4D 30 48        4528 	.ascii "PWM0H"
      002139 00                    4529 	.db	0
      00213A 00 00 08 7C           4530 	.dw	0,2172
      00213E 50 57 4D 31 48        4531 	.ascii "PWM1H"
      002143 00                    4532 	.db	0
      002144 00 00 08 8E           4533 	.dw	0,2190
      002148 50 57 4D 32 48        4534 	.ascii "PWM2H"
      00214D 00                    4535 	.db	0
      00214E 00 00 08 A0           4536 	.dw	0,2208
      002152 50 57 4D 33 48        4537 	.ascii "PWM3H"
      002157 00                    4538 	.db	0
      002158 00 00 08 B2           4539 	.dw	0,2226
      00215C 50 4E 50              4540 	.ascii "PNP"
      00215F 00                    4541 	.db	0
      002160 00 00 08 C2           4542 	.dw	0,2242
      002164 46 42 44              4543 	.ascii "FBD"
      002167 00                    4544 	.db	0
      002168 00 00 08 D2           4545 	.dw	0,2258
      00216C 50 57 4D 43 4F 4E 30  4546 	.ascii "PWMCON0"
      002173 00                    4547 	.db	0
      002174 00 00 08 E6           4548 	.dw	0,2278
      002178 50 57 4D 50 4C        4549 	.ascii "PWMPL"
      00217D 00                    4550 	.db	0
      00217E 00 00 08 F8           4551 	.dw	0,2296
      002182 50 57 4D 30 4C        4552 	.ascii "PWM0L"
      002187 00                    4553 	.db	0
      002188 00 00 09 0A           4554 	.dw	0,2314
      00218C 50 57 4D 31 4C        4555 	.ascii "PWM1L"
      002191 00                    4556 	.db	0
      002192 00 00 09 1C           4557 	.dw	0,2332
      002196 50 57 4D 32 4C        4558 	.ascii "PWM2L"
      00219B 00                    4559 	.db	0
      00219C 00 00 09 2E           4560 	.dw	0,2350
      0021A0 50 57 4D 33 4C        4561 	.ascii "PWM3L"
      0021A5 00                    4562 	.db	0
      0021A6 00 00 09 40           4563 	.dw	0,2368
      0021AA 50 49 4F 43 4F 4E 30  4564 	.ascii "PIOCON0"
      0021B1 00                    4565 	.db	0
      0021B2 00 00 09 54           4566 	.dw	0,2388
      0021B6 50 57 4D 43 4F 4E 31  4567 	.ascii "PWMCON1"
      0021BD 00                    4568 	.db	0
      0021BE 00 00 09 68           4569 	.dw	0,2408
      0021C2 41 43 43              4570 	.ascii "ACC"
      0021C5 00                    4571 	.db	0
      0021C6 00 00 09 78           4572 	.dw	0,2424
      0021CA 41 44 43 43 4F 4E 31  4573 	.ascii "ADCCON1"
      0021D1 00                    4574 	.db	0
      0021D2 00 00 09 8C           4575 	.dw	0,2444
      0021D6 41 44 43 43 4F 4E 32  4576 	.ascii "ADCCON2"
      0021DD 00                    4577 	.db	0
      0021DE 00 00 09 A0           4578 	.dw	0,2464
      0021E2 41 44 43 44 4C 59     4579 	.ascii "ADCDLY"
      0021E8 00                    4580 	.db	0
      0021E9 00 00 09 B3           4581 	.dw	0,2483
      0021ED 43 30 4C              4582 	.ascii "C0L"
      0021F0 00                    4583 	.db	0
      0021F1 00 00 09 C3           4584 	.dw	0,2499
      0021F5 43 30 48              4585 	.ascii "C0H"
      0021F8 00                    4586 	.db	0
      0021F9 00 00 09 D3           4587 	.dw	0,2515
      0021FD 43 31 4C              4588 	.ascii "C1L"
      002200 00                    4589 	.db	0
      002201 00 00 09 E3           4590 	.dw	0,2531
      002205 43 31 48              4591 	.ascii "C1H"
      002208 00                    4592 	.db	0
      002209 00 00 09 F3           4593 	.dw	0,2547
      00220D 41 44 43 43 4F 4E 30  4594 	.ascii "ADCCON0"
      002214 00                    4595 	.db	0
      002215 00 00 0A 07           4596 	.dw	0,2567
      002219 50 49 43 4F 4E        4597 	.ascii "PICON"
      00221E 00                    4598 	.db	0
      00221F 00 00 0A 19           4599 	.dw	0,2585
      002223 50 49 4E 45 4E        4600 	.ascii "PINEN"
      002228 00                    4601 	.db	0
      002229 00 00 0A 2B           4602 	.dw	0,2603
      00222D 50 49 50 45 4E        4603 	.ascii "PIPEN"
      002232 00                    4604 	.db	0
      002233 00 00 0A 3D           4605 	.dw	0,2621
      002237 50 49 46              4606 	.ascii "PIF"
      00223A 00                    4607 	.db	0
      00223B 00 00 0A 4D           4608 	.dw	0,2637
      00223F 43 32 4C              4609 	.ascii "C2L"
      002242 00                    4610 	.db	0
      002243 00 00 0A 5D           4611 	.dw	0,2653
      002247 43 32 48              4612 	.ascii "C2H"
      00224A 00                    4613 	.db	0
      00224B 00 00 0A 6D           4614 	.dw	0,2669
      00224F 45 49 50              4615 	.ascii "EIP"
      002252 00                    4616 	.db	0
      002253 00 00 0A 7D           4617 	.dw	0,2685
      002257 42                    4618 	.ascii "B"
      002258 00                    4619 	.db	0
      002259 00 00 0A 8B           4620 	.dw	0,2699
      00225D 43 41 50 43 4F 4E 33  4621 	.ascii "CAPCON3"
      002264 00                    4622 	.db	0
      002265 00 00 0A 9F           4623 	.dw	0,2719
      002269 43 41 50 43 4F 4E 34  4624 	.ascii "CAPCON4"
      002270 00                    4625 	.db	0
      002271 00 00 0A B3           4626 	.dw	0,2739
      002275 53 50 43 52           4627 	.ascii "SPCR"
      002279 00                    4628 	.db	0
      00227A 00 00 0A C4           4629 	.dw	0,2756
      00227E 53 50 43 52 32        4630 	.ascii "SPCR2"
      002283 00                    4631 	.db	0
      002284 00 00 0A D6           4632 	.dw	0,2774
      002288 53 50 53 52           4633 	.ascii "SPSR"
      00228C 00                    4634 	.db	0
      00228D 00 00 0A E7           4635 	.dw	0,2791
      002291 53 50 44 52           4636 	.ascii "SPDR"
      002295 00                    4637 	.db	0
      002296 00 00 0A F8           4638 	.dw	0,2808
      00229A 41 49 4E 44 49 44 53  4639 	.ascii "AINDIDS"
      0022A1 00                    4640 	.db	0
      0022A2 00 00 0B 0C           4641 	.dw	0,2828
      0022A6 45 49 50 48           4642 	.ascii "EIPH"
      0022AA 00                    4643 	.db	0
      0022AB 00 00 0B 1D           4644 	.dw	0,2845
      0022AF 53 43 4F 4E 5F 31     4645 	.ascii "SCON_1"
      0022B5 00                    4646 	.db	0
      0022B6 00 00 0B 30           4647 	.dw	0,2864
      0022BA 50 44 54 45 4E        4648 	.ascii "PDTEN"
      0022BF 00                    4649 	.db	0
      0022C0 00 00 0B 42           4650 	.dw	0,2882
      0022C4 50 44 54 43 4E 54     4651 	.ascii "PDTCNT"
      0022CA 00                    4652 	.db	0
      0022CB 00 00 0B 55           4653 	.dw	0,2901
      0022CF 50 4D 45 4E           4654 	.ascii "PMEN"
      0022D3 00                    4655 	.db	0
      0022D4 00 00 0B 66           4656 	.dw	0,2918
      0022D8 50 4D 44              4657 	.ascii "PMD"
      0022DB 00                    4658 	.db	0
      0022DC 00 00 0B 76           4659 	.dw	0,2934
      0022E0 45 49 50 31           4660 	.ascii "EIP1"
      0022E4 00                    4661 	.db	0
      0022E5 00 00 0B 87           4662 	.dw	0,2951
      0022E9 45 49 50 48 31        4663 	.ascii "EIPH1"
      0022EE 00                    4664 	.db	0
      0022EF 00 00 0B A7           4665 	.dw	0,2983
      0022F3 53 4D 30 5F 31        4666 	.ascii "SM0_1"
      0022F8 00                    4667 	.db	0
      0022F9 00 00 0B B9           4668 	.dw	0,3001
      0022FD 46 45 5F 31           4669 	.ascii "FE_1"
      002301 00                    4670 	.db	0
      002302 00 00 0B CA           4671 	.dw	0,3018
      002306 53 4D 31 5F 31        4672 	.ascii "SM1_1"
      00230B 00                    4673 	.db	0
      00230C 00 00 0B DC           4674 	.dw	0,3036
      002310 53 4D 32 5F 31        4675 	.ascii "SM2_1"
      002315 00                    4676 	.db	0
      002316 00 00 0B EE           4677 	.dw	0,3054
      00231A 52 45 4E 5F 31        4678 	.ascii "REN_1"
      00231F 00                    4679 	.db	0
      002320 00 00 0C 00           4680 	.dw	0,3072
      002324 54 42 38 5F 31        4681 	.ascii "TB8_1"
      002329 00                    4682 	.db	0
      00232A 00 00 0C 12           4683 	.dw	0,3090
      00232E 52 42 38 5F 31        4684 	.ascii "RB8_1"
      002333 00                    4685 	.db	0
      002334 00 00 0C 24           4686 	.dw	0,3108
      002338 54 49 5F 31           4687 	.ascii "TI_1"
      00233C 00                    4688 	.db	0
      00233D 00 00 0C 35           4689 	.dw	0,3125
      002341 52 49 5F 31           4690 	.ascii "RI_1"
      002345 00                    4691 	.db	0
      002346 00 00 0C 46           4692 	.dw	0,3142
      00234A 41 44 43 46           4693 	.ascii "ADCF"
      00234E 00                    4694 	.db	0
      00234F 00 00 0C 57           4695 	.dw	0,3159
      002353 41 44 43 53           4696 	.ascii "ADCS"
      002357 00                    4697 	.db	0
      002358 00 00 0C 68           4698 	.dw	0,3176
      00235C 45 54 47 53 45 4C 31  4699 	.ascii "ETGSEL1"
      002363 00                    4700 	.db	0
      002364 00 00 0C 7C           4701 	.dw	0,3196
      002368 45 54 47 53 45 4C 30  4702 	.ascii "ETGSEL0"
      00236F 00                    4703 	.db	0
      002370 00 00 0C 90           4704 	.dw	0,3216
      002374 41 44 43 48 53 33     4705 	.ascii "ADCHS3"
      00237A 00                    4706 	.db	0
      00237B 00 00 0C A3           4707 	.dw	0,3235
      00237F 41 44 43 48 53 32     4708 	.ascii "ADCHS2"
      002385 00                    4709 	.db	0
      002386 00 00 0C B6           4710 	.dw	0,3254
      00238A 41 44 43 48 53 31     4711 	.ascii "ADCHS1"
      002390 00                    4712 	.db	0
      002391 00 00 0C C9           4713 	.dw	0,3273
      002395 41 44 43 48 53 30     4714 	.ascii "ADCHS0"
      00239B 00                    4715 	.db	0
      00239C 00 00 0C DC           4716 	.dw	0,3292
      0023A0 50 57 4D 52 55 4E     4717 	.ascii "PWMRUN"
      0023A6 00                    4718 	.db	0
      0023A7 00 00 0C EF           4719 	.dw	0,3311
      0023AB 4C 4F 41 44           4720 	.ascii "LOAD"
      0023AF 00                    4721 	.db	0
      0023B0 00 00 0D 00           4722 	.dw	0,3328
      0023B4 50 57 4D 46           4723 	.ascii "PWMF"
      0023B8 00                    4724 	.db	0
      0023B9 00 00 0D 11           4725 	.dw	0,3345
      0023BD 43 4C 52 50 57 4D     4726 	.ascii "CLRPWM"
      0023C3 00                    4727 	.db	0
      0023C4 00 00 0D 24           4728 	.dw	0,3364
      0023C8 43 59                 4729 	.ascii "CY"
      0023CA 00                    4730 	.db	0
      0023CB 00 00 0D 33           4731 	.dw	0,3379
      0023CF 41 43                 4732 	.ascii "AC"
      0023D1 00                    4733 	.db	0
      0023D2 00 00 0D 42           4734 	.dw	0,3394
      0023D6 46 30                 4735 	.ascii "F0"
      0023D8 00                    4736 	.db	0
      0023D9 00 00 0D 51           4737 	.dw	0,3409
      0023DD 52 53 31              4738 	.ascii "RS1"
      0023E0 00                    4739 	.db	0
      0023E1 00 00 0D 61           4740 	.dw	0,3425
      0023E5 52 53 30              4741 	.ascii "RS0"
      0023E8 00                    4742 	.db	0
      0023E9 00 00 0D 71           4743 	.dw	0,3441
      0023ED 4F 56                 4744 	.ascii "OV"
      0023EF 00                    4745 	.db	0
      0023F0 00 00 0D 80           4746 	.dw	0,3456
      0023F4 50                    4747 	.ascii "P"
      0023F5 00                    4748 	.db	0
      0023F6 00 00 0D 8E           4749 	.dw	0,3470
      0023FA 54 46 32              4750 	.ascii "TF2"
      0023FD 00                    4751 	.db	0
      0023FE 00 00 0D 9E           4752 	.dw	0,3486
      002402 54 52 32              4753 	.ascii "TR2"
      002405 00                    4754 	.db	0
      002406 00 00 0D AE           4755 	.dw	0,3502
      00240A 43 4D 5F 52 4C 32     4756 	.ascii "CM_RL2"
      002410 00                    4757 	.db	0
      002411 00 00 0D C1           4758 	.dw	0,3521
      002415 49 32 43 45 4E        4759 	.ascii "I2CEN"
      00241A 00                    4760 	.db	0
      00241B 00 00 0D D3           4761 	.dw	0,3539
      00241F 53 54 41              4762 	.ascii "STA"
      002422 00                    4763 	.db	0
      002423 00 00 0D E3           4764 	.dw	0,3555
      002427 53 54 4F              4765 	.ascii "STO"
      00242A 00                    4766 	.db	0
      00242B 00 00 0D F3           4767 	.dw	0,3571
      00242F 53 49                 4768 	.ascii "SI"
      002431 00                    4769 	.db	0
      002432 00 00 0E 02           4770 	.dw	0,3586
      002436 41 41                 4771 	.ascii "AA"
      002438 00                    4772 	.db	0
      002439 00 00 0E 11           4773 	.dw	0,3601
      00243D 49 32 43 50 58        4774 	.ascii "I2CPX"
      002442 00                    4775 	.db	0
      002443 00 00 0E 23           4776 	.dw	0,3619
      002447 50 41 44 43           4777 	.ascii "PADC"
      00244B 00                    4778 	.db	0
      00244C 00 00 0E 34           4779 	.dw	0,3636
      002450 50 42 4F 44           4780 	.ascii "PBOD"
      002454 00                    4781 	.db	0
      002455 00 00 0E 45           4782 	.dw	0,3653
      002459 50 53                 4783 	.ascii "PS"
      00245B 00                    4784 	.db	0
      00245C 00 00 0E 54           4785 	.dw	0,3668
      002460 50 54 31              4786 	.ascii "PT1"
      002463 00                    4787 	.db	0
      002464 00 00 0E 64           4788 	.dw	0,3684
      002468 50 58 31              4789 	.ascii "PX1"
      00246B 00                    4790 	.db	0
      00246C 00 00 0E 74           4791 	.dw	0,3700
      002470 50 54 30              4792 	.ascii "PT0"
      002473 00                    4793 	.db	0
      002474 00 00 0E 84           4794 	.dw	0,3716
      002478 50 58 30              4795 	.ascii "PX0"
      00247B 00                    4796 	.db	0
      00247C 00 00 0E 94           4797 	.dw	0,3732
      002480 50 33 30              4798 	.ascii "P30"
      002483 00                    4799 	.db	0
      002484 00 00 0E A4           4800 	.dw	0,3748
      002488 45 41                 4801 	.ascii "EA"
      00248A 00                    4802 	.db	0
      00248B 00 00 0E B3           4803 	.dw	0,3763
      00248F 45 41 44 43           4804 	.ascii "EADC"
      002493 00                    4805 	.db	0
      002494 00 00 0E C4           4806 	.dw	0,3780
      002498 45 42 4F 44           4807 	.ascii "EBOD"
      00249C 00                    4808 	.db	0
      00249D 00 00 0E D5           4809 	.dw	0,3797
      0024A1 45 53                 4810 	.ascii "ES"
      0024A3 00                    4811 	.db	0
      0024A4 00 00 0E E4           4812 	.dw	0,3812
      0024A8 45 54 31              4813 	.ascii "ET1"
      0024AB 00                    4814 	.db	0
      0024AC 00 00 0E F4           4815 	.dw	0,3828
      0024B0 45 58 31              4816 	.ascii "EX1"
      0024B3 00                    4817 	.db	0
      0024B4 00 00 0F 04           4818 	.dw	0,3844
      0024B8 45 54 30              4819 	.ascii "ET0"
      0024BB 00                    4820 	.db	0
      0024BC 00 00 0F 14           4821 	.dw	0,3860
      0024C0 45 58 30              4822 	.ascii "EX0"
      0024C3 00                    4823 	.db	0
      0024C4 00 00 0F 24           4824 	.dw	0,3876
      0024C8 50 32 30              4825 	.ascii "P20"
      0024CB 00                    4826 	.db	0
      0024CC 00 00 0F 34           4827 	.dw	0,3892
      0024D0 53 4D 30              4828 	.ascii "SM0"
      0024D3 00                    4829 	.db	0
      0024D4 00 00 0F 44           4830 	.dw	0,3908
      0024D8 46 45                 4831 	.ascii "FE"
      0024DA 00                    4832 	.db	0
      0024DB 00 00 0F 53           4833 	.dw	0,3923
      0024DF 53 4D 31              4834 	.ascii "SM1"
      0024E2 00                    4835 	.db	0
      0024E3 00 00 0F 63           4836 	.dw	0,3939
      0024E7 53 4D 32              4837 	.ascii "SM2"
      0024EA 00                    4838 	.db	0
      0024EB 00 00 0F 73           4839 	.dw	0,3955
      0024EF 52 45 4E              4840 	.ascii "REN"
      0024F2 00                    4841 	.db	0
      0024F3 00 00 0F 83           4842 	.dw	0,3971
      0024F7 54 42 38              4843 	.ascii "TB8"
      0024FA 00                    4844 	.db	0
      0024FB 00 00 0F 93           4845 	.dw	0,3987
      0024FF 52 42 38              4846 	.ascii "RB8"
      002502 00                    4847 	.db	0
      002503 00 00 0F A3           4848 	.dw	0,4003
      002507 54 49                 4849 	.ascii "TI"
      002509 00                    4850 	.db	0
      00250A 00 00 0F B2           4851 	.dw	0,4018
      00250E 52 49                 4852 	.ascii "RI"
      002510 00                    4853 	.db	0
      002511 00 00 0F C1           4854 	.dw	0,4033
      002515 50 31 37              4855 	.ascii "P17"
      002518 00                    4856 	.db	0
      002519 00 00 0F D1           4857 	.dw	0,4049
      00251D 50 31 36              4858 	.ascii "P16"
      002520 00                    4859 	.db	0
      002521 00 00 0F E1           4860 	.dw	0,4065
      002525 54 58 44 5F 31        4861 	.ascii "TXD_1"
      00252A 00                    4862 	.db	0
      00252B 00 00 0F F3           4863 	.dw	0,4083
      00252F 50 31 35              4864 	.ascii "P15"
      002532 00                    4865 	.db	0
      002533 00 00 10 03           4866 	.dw	0,4099
      002537 50 31 34              4867 	.ascii "P14"
      00253A 00                    4868 	.db	0
      00253B 00 00 10 13           4869 	.dw	0,4115
      00253F 53 44 41              4870 	.ascii "SDA"
      002542 00                    4871 	.db	0
      002543 00 00 10 23           4872 	.dw	0,4131
      002547 50 31 33              4873 	.ascii "P13"
      00254A 00                    4874 	.db	0
      00254B 00 00 10 33           4875 	.dw	0,4147
      00254F 53 43 4C              4876 	.ascii "SCL"
      002552 00                    4877 	.db	0
      002553 00 00 10 43           4878 	.dw	0,4163
      002557 50 31 32              4879 	.ascii "P12"
      00255A 00                    4880 	.db	0
      00255B 00 00 10 53           4881 	.dw	0,4179
      00255F 50 31 31              4882 	.ascii "P11"
      002562 00                    4883 	.db	0
      002563 00 00 10 63           4884 	.dw	0,4195
      002567 50 31 30              4885 	.ascii "P10"
      00256A 00                    4886 	.db	0
      00256B 00 00 10 73           4887 	.dw	0,4211
      00256F 54 46 31              4888 	.ascii "TF1"
      002572 00                    4889 	.db	0
      002573 00 00 10 83           4890 	.dw	0,4227
      002577 54 52 31              4891 	.ascii "TR1"
      00257A 00                    4892 	.db	0
      00257B 00 00 10 93           4893 	.dw	0,4243
      00257F 54 46 30              4894 	.ascii "TF0"
      002582 00                    4895 	.db	0
      002583 00 00 10 A3           4896 	.dw	0,4259
      002587 54 52 30              4897 	.ascii "TR0"
      00258A 00                    4898 	.db	0
      00258B 00 00 10 B3           4899 	.dw	0,4275
      00258F 49 45 31              4900 	.ascii "IE1"
      002592 00                    4901 	.db	0
      002593 00 00 10 C3           4902 	.dw	0,4291
      002597 49 54 31              4903 	.ascii "IT1"
      00259A 00                    4904 	.db	0
      00259B 00 00 10 D3           4905 	.dw	0,4307
      00259F 49 45 30              4906 	.ascii "IE0"
      0025A2 00                    4907 	.db	0
      0025A3 00 00 10 E3           4908 	.dw	0,4323
      0025A7 49 54 30              4909 	.ascii "IT0"
      0025AA 00                    4910 	.db	0
      0025AB 00 00 10 F3           4911 	.dw	0,4339
      0025AF 50 30 37              4912 	.ascii "P07"
      0025B2 00                    4913 	.db	0
      0025B3 00 00 11 03           4914 	.dw	0,4355
      0025B7 52 58 44              4915 	.ascii "RXD"
      0025BA 00                    4916 	.db	0
      0025BB 00 00 11 13           4917 	.dw	0,4371
      0025BF 50 30 36              4918 	.ascii "P06"
      0025C2 00                    4919 	.db	0
      0025C3 00 00 11 23           4920 	.dw	0,4387
      0025C7 54 58 44              4921 	.ascii "TXD"
      0025CA 00                    4922 	.db	0
      0025CB 00 00 11 33           4923 	.dw	0,4403
      0025CF 50 30 35              4924 	.ascii "P05"
      0025D2 00                    4925 	.db	0
      0025D3 00 00 11 43           4926 	.dw	0,4419
      0025D7 50 30 34              4927 	.ascii "P04"
      0025DA 00                    4928 	.db	0
      0025DB 00 00 11 53           4929 	.dw	0,4435
      0025DF 53 54 41 44 43        4930 	.ascii "STADC"
      0025E4 00                    4931 	.db	0
      0025E5 00 00 11 65           4932 	.dw	0,4453
      0025E9 50 30 33              4933 	.ascii "P03"
      0025EC 00                    4934 	.db	0
      0025ED 00 00 11 75           4935 	.dw	0,4469
      0025F1 50 30 32              4936 	.ascii "P02"
      0025F4 00                    4937 	.db	0
      0025F5 00 00 11 85           4938 	.dw	0,4485
      0025F9 52 58 44 5F 31        4939 	.ascii "RXD_1"
      0025FE 00                    4940 	.db	0
      0025FF 00 00 11 97           4941 	.dw	0,4503
      002603 50 30 31              4942 	.ascii "P01"
      002606 00                    4943 	.db	0
      002607 00 00 11 A7           4944 	.dw	0,4519
      00260B 4D 49 53 4F           4945 	.ascii "MISO"
      00260F 00                    4946 	.db	0
      002610 00 00 11 B8           4947 	.dw	0,4536
      002614 50 30 30              4948 	.ascii "P00"
      002617 00                    4949 	.db	0
      002618 00 00 11 C8           4950 	.dw	0,4552
      00261C 4D 4F 53 49           4951 	.ascii "MOSI"
      002620 00                    4952 	.db	0
      002621 00 00 00 00           4953 	.dw	0,0
      002625                       4954 Ldebug_pubnames_end:
                                   4955 
                                   4956 	.area .debug_frame (NOLOAD)
      000604 00 00                 4957 	.dw	0
      000606 00 10                 4958 	.dw	Ldebug_CIE0_end-Ldebug_CIE0_start
      000608                       4959 Ldebug_CIE0_start:
      000608 FF FF                 4960 	.dw	0xffff
      00060A FF FF                 4961 	.dw	0xffff
      00060C 01                    4962 	.db	1
      00060D 00                    4963 	.db	0
      00060E 01                    4964 	.uleb128	1
      00060F 01                    4965 	.sleb128	1
      000610 09                    4966 	.db	9
      000611 0C                    4967 	.db	12
      000612 16                    4968 	.uleb128	22
      000613 02                    4969 	.uleb128	2
      000614 89                    4970 	.db	137
      000615 01                    4971 	.uleb128	1
      000616 00                    4972 	.db	0
      000617 00                    4973 	.db	0
      000618                       4974 Ldebug_CIE0_end:
      000618 00 00 00 14           4975 	.dw	0,20
      00061C 00 00 06 04           4976 	.dw	0,(Ldebug_CIE0_start-4)
      000620 00 00 14 1A           4977 	.dw	0,(Ssys$ClockSwitch$109)	;initial loc
      000624 00 00 00 8B           4978 	.dw	0,Ssys$ClockSwitch$129-Ssys$ClockSwitch$109
      000628 01                    4979 	.db	1
      000629 00 00 14 1A           4980 	.dw	0,(Ssys$ClockSwitch$109)
      00062D 0E                    4981 	.db	14
      00062E 02                    4982 	.uleb128	2
      00062F 00                    4983 	.db	0
                                   4984 
                                   4985 	.area .debug_frame (NOLOAD)
      000630 00 00                 4986 	.dw	0
      000632 00 10                 4987 	.dw	Ldebug_CIE1_end-Ldebug_CIE1_start
      000634                       4988 Ldebug_CIE1_start:
      000634 FF FF                 4989 	.dw	0xffff
      000636 FF FF                 4990 	.dw	0xffff
      000638 01                    4991 	.db	1
      000639 00                    4992 	.db	0
      00063A 01                    4993 	.uleb128	1
      00063B 01                    4994 	.sleb128	1
      00063C 09                    4995 	.db	9
      00063D 0C                    4996 	.db	12
      00063E 16                    4997 	.uleb128	22
      00063F 02                    4998 	.uleb128	2
      000640 89                    4999 	.db	137
      000641 01                    5000 	.uleb128	1
      000642 00                    5001 	.db	0
      000643 00                    5002 	.db	0
      000644                       5003 Ldebug_CIE1_end:
      000644 00 00 00 14           5004 	.dw	0,20
      000648 00 00 06 30           5005 	.dw	0,(Ldebug_CIE1_start-4)
      00064C 00 00 13 E6           5006 	.dw	0,(Ssys$ClockDisable$94)	;initial loc
      000650 00 00 00 34           5007 	.dw	0,Ssys$ClockDisable$107-Ssys$ClockDisable$94
      000654 01                    5008 	.db	1
      000655 00 00 13 E6           5009 	.dw	0,(Ssys$ClockDisable$94)
      000659 0E                    5010 	.db	14
      00065A 02                    5011 	.uleb128	2
      00065B 00                    5012 	.db	0
                                   5013 
                                   5014 	.area .debug_frame (NOLOAD)
      00065C 00 00                 5015 	.dw	0
      00065E 00 10                 5016 	.dw	Ldebug_CIE2_end-Ldebug_CIE2_start
      000660                       5017 Ldebug_CIE2_start:
      000660 FF FF                 5018 	.dw	0xffff
      000662 FF FF                 5019 	.dw	0xffff
      000664 01                    5020 	.db	1
      000665 00                    5021 	.db	0
      000666 01                    5022 	.uleb128	1
      000667 01                    5023 	.sleb128	1
      000668 09                    5024 	.db	9
      000669 0C                    5025 	.db	12
      00066A 16                    5026 	.uleb128	22
      00066B 02                    5027 	.uleb128	2
      00066C 89                    5028 	.db	137
      00066D 01                    5029 	.uleb128	1
      00066E 00                    5030 	.db	0
      00066F 00                    5031 	.db	0
      000670                       5032 Ldebug_CIE2_end:
      000670 00 00 00 14           5033 	.dw	0,20
      000674 00 00 06 5C           5034 	.dw	0,(Ldebug_CIE2_start-4)
      000678 00 00 13 AB           5035 	.dw	0,(Ssys$ClockEnable$79)	;initial loc
      00067C 00 00 00 3B           5036 	.dw	0,Ssys$ClockEnable$92-Ssys$ClockEnable$79
      000680 01                    5037 	.db	1
      000681 00 00 13 AB           5038 	.dw	0,(Ssys$ClockEnable$79)
      000685 0E                    5039 	.db	14
      000686 02                    5040 	.uleb128	2
      000687 00                    5041 	.db	0
                                   5042 
                                   5043 	.area .debug_frame (NOLOAD)
      000688 00 00                 5044 	.dw	0
      00068A 00 10                 5045 	.dw	Ldebug_CIE3_end-Ldebug_CIE3_start
      00068C                       5046 Ldebug_CIE3_start:
      00068C FF FF                 5047 	.dw	0xffff
      00068E FF FF                 5048 	.dw	0xffff
      000690 01                    5049 	.db	1
      000691 00                    5050 	.db	0
      000692 01                    5051 	.uleb128	1
      000693 01                    5052 	.sleb128	1
      000694 09                    5053 	.db	9
      000695 0C                    5054 	.db	12
      000696 16                    5055 	.uleb128	22
      000697 02                    5056 	.uleb128	2
      000698 89                    5057 	.db	137
      000699 01                    5058 	.uleb128	1
      00069A 00                    5059 	.db	0
      00069B 00                    5060 	.db	0
      00069C                       5061 Ldebug_CIE3_end:
      00069C 00 00 00 14           5062 	.dw	0,20
      0006A0 00 00 06 88           5063 	.dw	0,(Ldebug_CIE3_start-4)
      0006A4 00 00 13 3F           5064 	.dw	0,(Ssys$FsysSelect$56)	;initial loc
      0006A8 00 00 00 6C           5065 	.dw	0,Ssys$FsysSelect$77-Ssys$FsysSelect$56
      0006AC 01                    5066 	.db	1
      0006AD 00 00 13 3F           5067 	.dw	0,(Ssys$FsysSelect$56)
      0006B1 0E                    5068 	.db	14
      0006B2 02                    5069 	.uleb128	2
      0006B3 00                    5070 	.db	0
                                   5071 
                                   5072 	.area .debug_frame (NOLOAD)
      0006B4 00 00                 5073 	.dw	0
      0006B6 00 10                 5074 	.dw	Ldebug_CIE4_end-Ldebug_CIE4_start
      0006B8                       5075 Ldebug_CIE4_start:
      0006B8 FF FF                 5076 	.dw	0xffff
      0006BA FF FF                 5077 	.dw	0xffff
      0006BC 01                    5078 	.db	1
      0006BD 00                    5079 	.db	0
      0006BE 01                    5080 	.uleb128	1
      0006BF 01                    5081 	.sleb128	1
      0006C0 09                    5082 	.db	9
      0006C1 0C                    5083 	.db	12
      0006C2 16                    5084 	.uleb128	22
      0006C3 02                    5085 	.uleb128	2
      0006C4 89                    5086 	.db	137
      0006C5 01                    5087 	.uleb128	1
      0006C6 00                    5088 	.db	0
      0006C7 00                    5089 	.db	0
      0006C8                       5090 Ldebug_CIE4_end:
      0006C8 00 00 00 14           5091 	.dw	0,20
      0006CC 00 00 06 B4           5092 	.dw	0,(Ldebug_CIE4_start-4)
      0006D0 00 00 12 19           5093 	.dw	0,(Ssys$MODIFY_HIRC$1)	;initial loc
      0006D4 00 00 01 26           5094 	.dw	0,Ssys$MODIFY_HIRC$54-Ssys$MODIFY_HIRC$1
      0006D8 01                    5095 	.db	1
      0006D9 00 00 12 19           5096 	.dw	0,(Ssys$MODIFY_HIRC$1)
      0006DD 0E                    5097 	.db	14
      0006DE 02                    5098 	.uleb128	2
      0006DF 00                    5099 	.db	0
