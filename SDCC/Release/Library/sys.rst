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
                           000000   760 Lsys.MODIFY_HIRC$u8HIRCSEL$1_0$153==.
      00004A                        761 _MODIFY_HIRC_u8HIRCSEL_65536_153:
      00004A                        762 	.ds 1
                           000001   763 Lsys.MODIFY_HIRC$trimvalue16bit$1_0$154==.
      00004B                        764 _MODIFY_HIRC_trimvalue16bit_65536_154:
      00004B                        765 	.ds 1
                           000002   766 Lsys.FsysSelect$u8FsysMode$1_0$159==.
      00004C                        767 _FsysSelect_u8FsysMode_65536_159:
      00004C                        768 	.ds 1
                           000003   769 Lsys.ClockEnable$u8FsysMode$1_0$162==.
      00004D                        770 _ClockEnable_u8FsysMode_65536_162:
      00004D                        771 	.ds 1
                           000004   772 Lsys.ClockDisable$u8FsysMode$1_0$165==.
      00004E                        773 _ClockDisable_u8FsysMode_65536_165:
      00004E                        774 	.ds 1
                           000005   775 Lsys.ClockSwitch$u8FsysMode$1_0$168==.
      00004F                        776 _ClockSwitch_u8FsysMode_65536_168:
      00004F                        777 	.ds 1
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
                                    815 ;u8HIRCSEL                 Allocated with name '_MODIFY_HIRC_u8HIRCSEL_65536_153'
                                    816 ;trimvalue16bit            Allocated with name '_MODIFY_HIRC_trimvalue16bit_65536_154'
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
      0015C3                        827 _MODIFY_HIRC:
                           000007   828 	ar7 = 0x07
                           000006   829 	ar6 = 0x06
                           000005   830 	ar5 = 0x05
                           000004   831 	ar4 = 0x04
                           000003   832 	ar3 = 0x03
                           000002   833 	ar2 = 0x02
                           000001   834 	ar1 = 0x01
                           000000   835 	ar0 = 0x00
                           000000   836 	Ssys$MODIFY_HIRC$1 ==.
      0015C3 E5 82            [12]  837 	mov	a,dpl
      0015C5 90 00 4A         [24]  838 	mov	dptr,#_MODIFY_HIRC_u8HIRCSEL_65536_153
      0015C8 F0               [24]  839 	movx	@dptr,a
                           000006   840 	Ssys$MODIFY_HIRC$2 ==.
                                    841 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:29: set_CHPCON_IAPEN;
                                    842 ;	assignBit
      0015C9 A2 AF            [12]  843 	mov	c,_EA
      0015CB 92 00            [24]  844 	mov	_BIT_TMP,c
                                    845 ;	assignBit
      0015CD C2 AF            [12]  846 	clr	_EA
      0015CF 75 C7 AA         [24]  847 	mov	_TA,#0xaa
      0015D2 75 C7 55         [24]  848 	mov	_TA,#0x55
      0015D5 43 9F 01         [24]  849 	orl	_CHPCON,#0x01
                                    850 ;	assignBit
      0015D8 A2 00            [12]  851 	mov	c,_BIT_TMP
      0015DA 92 AF            [24]  852 	mov	_EA,c
                           000019   853 	Ssys$MODIFY_HIRC$3 ==.
                                    854 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:30: SFRS = 0 ;
      0015DC 75 91 00         [24]  855 	mov	_SFRS,#0x00
                           00001C   856 	Ssys$MODIFY_HIRC$4 ==.
                                    857 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:31: switch (u8HIRCSEL)
      0015DF 90 00 4A         [24]  858 	mov	dptr,#_MODIFY_HIRC_u8HIRCSEL_65536_153
      0015E2 E0               [24]  859 	movx	a,@dptr
      0015E3 FF               [12]  860 	mov	r7,a
      0015E4 BF 06 02         [24]  861 	cjne	r7,#0x06,00157$
      0015E7 80 0A            [24]  862 	sjmp	00101$
      0015E9                        863 00157$:
      0015E9 BF 07 02         [24]  864 	cjne	r7,#0x07,00158$
      0015EC 80 0A            [24]  865 	sjmp	00102$
      0015EE                        866 00158$:
                           00002B   867 	Ssys$MODIFY_HIRC$5 ==.
                           00002B   868 	Ssys$MODIFY_HIRC$6 ==.
                                    869 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:33: case HIRC_24:
      0015EE BF 08 0F         [24]  870 	cjne	r7,#0x08,00104$
      0015F1 80 0A            [24]  871 	sjmp	00103$
      0015F3                        872 00101$:
                           000030   873 	Ssys$MODIFY_HIRC$7 ==.
                                    874 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:34: IAPAL = 0x38;
      0015F3 75 A6 38         [24]  875 	mov	_IAPAL,#0x38
                           000033   876 	Ssys$MODIFY_HIRC$8 ==.
                                    877 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:35: break;
                           000033   878 	Ssys$MODIFY_HIRC$9 ==.
                                    879 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:36: case HIRC_16:
      0015F6 80 08            [24]  880 	sjmp	00104$
      0015F8                        881 00102$:
                           000035   882 	Ssys$MODIFY_HIRC$10 ==.
                                    883 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:37: IAPAL = 0x30;
      0015F8 75 A6 30         [24]  884 	mov	_IAPAL,#0x30
                           000038   885 	Ssys$MODIFY_HIRC$11 ==.
                                    886 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:38: break;
                           000038   887 	Ssys$MODIFY_HIRC$12 ==.
                                    888 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:39: case HIRC_166:
      0015FB 80 03            [24]  889 	sjmp	00104$
      0015FD                        890 00103$:
                           00003A   891 	Ssys$MODIFY_HIRC$13 ==.
                                    892 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:40: IAPAL = 0x30;
      0015FD 75 A6 30         [24]  893 	mov	_IAPAL,#0x30
                           00003D   894 	Ssys$MODIFY_HIRC$14 ==.
                           00003D   895 	Ssys$MODIFY_HIRC$15 ==.
                                    896 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:42: }
      001600                        897 00104$:
                           00003D   898 	Ssys$MODIFY_HIRC$16 ==.
                                    899 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:43: IAPAH = 0x00;
      001600 75 A7 00         [24]  900 	mov	_IAPAH,#0x00
                           000040   901 	Ssys$MODIFY_HIRC$17 ==.
                                    902 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:44: IAPCN = READ_UID;
      001603 75 AF 04         [24]  903 	mov	_IAPCN,#0x04
                           000043   904 	Ssys$MODIFY_HIRC$18 ==.
                                    905 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:45: set_IAPTRG_IAPGO;
                                    906 ;	assignBit
      001606 A2 AF            [12]  907 	mov	c,_EA
      001608 92 00            [24]  908 	mov	_BIT_TMP,c
                                    909 ;	assignBit
      00160A C2 AF            [12]  910 	clr	_EA
      00160C 75 C7 AA         [24]  911 	mov	_TA,#0xaa
      00160F 75 C7 55         [24]  912 	mov	_TA,#0x55
      001612 43 A4 01         [24]  913 	orl	_IAPTRG,#0x01
                                    914 ;	assignBit
      001615 A2 00            [12]  915 	mov	c,_BIT_TMP
      001617 92 AF            [24]  916 	mov	_EA,c
                           000056   917 	Ssys$MODIFY_HIRC$19 ==.
                                    918 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:46: hircmap0 = IAPFD;
      001619 AE AE            [24]  919 	mov	r6,_IAPFD
                           000058   920 	Ssys$MODIFY_HIRC$20 ==.
                                    921 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:47: IAPAL++;
      00161B E5 A6            [12]  922 	mov	a,_IAPAL
      00161D 04               [12]  923 	inc	a
      00161E F5 A6            [12]  924 	mov	_IAPAL,a
                           00005D   925 	Ssys$MODIFY_HIRC$21 ==.
                                    926 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:48: set_IAPTRG_IAPGO;
                                    927 ;	assignBit
      001620 A2 AF            [12]  928 	mov	c,_EA
      001622 92 00            [24]  929 	mov	_BIT_TMP,c
                                    930 ;	assignBit
      001624 C2 AF            [12]  931 	clr	_EA
      001626 75 C7 AA         [24]  932 	mov	_TA,#0xaa
      001629 75 C7 55         [24]  933 	mov	_TA,#0x55
      00162C 43 A4 01         [24]  934 	orl	_IAPTRG,#0x01
                                    935 ;	assignBit
      00162F A2 00            [12]  936 	mov	c,_BIT_TMP
      001631 92 AF            [24]  937 	mov	_EA,c
                           000070   938 	Ssys$MODIFY_HIRC$22 ==.
                                    939 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:49: hircmap1 = IAPFD;
      001633 AD AE            [24]  940 	mov	r5,_IAPFD
                           000072   941 	Ssys$MODIFY_HIRC$23 ==.
                                    942 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:51: switch (u8HIRCSEL)
      001635 BF 08 02         [24]  943 	cjne	r7,#0x08,00160$
      001638 80 03            [24]  944 	sjmp	00161$
      00163A                        945 00160$:
      00163A 02 16 C5         [24]  946 	ljmp	00118$
      00163D                        947 00161$:
                           00007A   948 	Ssys$MODIFY_HIRC$24 ==.
                           00007A   949 	Ssys$MODIFY_HIRC$25 ==.
                                    950 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:54: trimvalue16bit = ((hircmap0 << 1) + (hircmap1 & 0x01));
      00163D 8E 07            [24]  951 	mov	ar7,r6
      00163F EF               [12]  952 	mov	a,r7
      001640 2F               [12]  953 	add	a,r7
      001641 FF               [12]  954 	mov	r7,a
      001642 8D 04            [24]  955 	mov	ar4,r5
      001644 74 01            [12]  956 	mov	a,#0x01
      001646 5C               [12]  957 	anl	a,r4
      001647 2F               [12]  958 	add	a,r7
      001648 FF               [12]  959 	mov	r7,a
                           000086   960 	Ssys$MODIFY_HIRC$26 ==.
                                    961 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:55: judge = trimvalue16bit&0xC0;
      001649 74 C0            [12]  962 	mov	a,#0xc0
      00164B 5F               [12]  963 	anl	a,r7
      00164C FC               [12]  964 	mov	r4,a
                           00008A   965 	Ssys$MODIFY_HIRC$27 ==.
                                    966 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:56: offset = trimvalue16bit&0x3F;
      00164D 74 3F            [12]  967 	mov	a,#0x3f
      00164F 5F               [12]  968 	anl	a,r7
      001650 FB               [12]  969 	mov	r3,a
                           00008E   970 	Ssys$MODIFY_HIRC$28 ==.
                                    971 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:57: trimvalue16bit -= 14;
      001651 EF               [12]  972 	mov	a,r7
      001652 24 F2            [12]  973 	add	a,#0xf2
      001654 FF               [12]  974 	mov	r7,a
      001655 90 00 4B         [24]  975 	mov	dptr,#_MODIFY_HIRC_trimvalue16bit_65536_154
      001658 F0               [24]  976 	movx	@dptr,a
                           000096   977 	Ssys$MODIFY_HIRC$29 ==.
                                    978 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:58: IAPCN = READ_DID;
      001659 75 AF 0C         [24]  979 	mov	_IAPCN,#0x0c
                           000099   980 	Ssys$MODIFY_HIRC$30 ==.
                                    981 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:59: IAPAL = 1;
      00165C 75 A6 01         [24]  982 	mov	_IAPAL,#0x01
                           00009C   983 	Ssys$MODIFY_HIRC$31 ==.
                                    984 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:60: IAPAH = 0;
      00165F 75 A7 00         [24]  985 	mov	_IAPAH,#0x00
                           00009F   986 	Ssys$MODIFY_HIRC$32 ==.
                                    987 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:61: set_IAPTRG_IAPGO_WDCLR;
      001662 A2 AF            [12]  988 	mov	c,_EA
                                    989 ;	assignBit
      001664 C2 AF            [12]  990 	clr	_EA
                                    991 ;	assignBit
      001666 A2 AF            [12]  992 	mov	c,_EA
      001668 92 00            [24]  993 	mov	_BIT_TMP,c
                                    994 ;	assignBit
      00166A C2 AF            [12]  995 	clr	_EA
      00166C 75 C7 AA         [24]  996 	mov	_TA,#0xaa
      00166F 75 C7 55         [24]  997 	mov	_TA,#0x55
      001672 43 AA 40         [24]  998 	orl	_WDCON,#0x40
                                    999 ;	assignBit
      001675 A2 00            [12] 1000 	mov	c,_BIT_TMP
      001677 92 AF            [24] 1001 	mov	_EA,c
      001679 75 C7 AA         [24] 1002 	mov	_TA,#0xaa
      00167C 75 C7 55         [24] 1003 	mov	_TA,#0x55
      00167F 43 A4 01         [24] 1004 	orl	_IAPTRG,#0x01
                                   1005 ;	assignBit
      001682 A2 00            [12] 1006 	mov	c,_BIT_TMP
      001684 92 AF            [24] 1007 	mov	_EA,c
                           0000C3  1008 	Ssys$MODIFY_HIRC$33 ==.
                                   1009 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:63: if ((IAPFD==0x4B)||(IAPFD==0x52)||(IAPFD==0x53))    /* MG51 process */
      001686 74 4B            [12] 1010 	mov	a,#0x4b
      001688 B5 AE 02         [24] 1011 	cjne	a,_IAPFD,00162$
      00168B 80 0C            [24] 1012 	sjmp	00113$
      00168D                       1013 00162$:
      00168D 74 52            [12] 1014 	mov	a,#0x52
      00168F B5 AE 02         [24] 1015 	cjne	a,_IAPFD,00163$
      001692 80 05            [24] 1016 	sjmp	00113$
      001694                       1017 00163$:
      001694 74 53            [12] 1018 	mov	a,#0x53
      001696 B5 AE 24         [24] 1019 	cjne	a,_IAPFD,00114$
      001699                       1020 00113$:
                           0000D6  1021 	Ssys$MODIFY_HIRC$34 ==.
                           0000D6  1022 	Ssys$MODIFY_HIRC$35 ==.
                                   1023 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:65: if (offset<15)
      001699 BB 0F 00         [24] 1024 	cjne	r3,#0x0f,00166$
      00169C                       1025 00166$:
      00169C 50 18            [24] 1026 	jnc	00111$
                           0000DB  1027 	Ssys$MODIFY_HIRC$36 ==.
                           0000DB  1028 	Ssys$MODIFY_HIRC$37 ==.
                                   1029 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:67: if ((judge==0x40)||(judge==0x80)||(judge==0xC0))
      00169E BC 40 02         [24] 1030 	cjne	r4,#0x40,00168$
      0016A1 80 08            [24] 1031 	sjmp	00106$
      0016A3                       1032 00168$:
      0016A3 BC 80 02         [24] 1033 	cjne	r4,#0x80,00169$
      0016A6 80 03            [24] 1034 	sjmp	00106$
      0016A8                       1035 00169$:
      0016A8 BC C0 12         [24] 1036 	cjne	r4,#0xc0,00114$
      0016AB                       1037 00106$:
                           0000E8  1038 	Ssys$MODIFY_HIRC$38 ==.
                                   1039 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:68: trimvalue16bit -= 14;
      0016AB 8F 04            [24] 1040 	mov	ar4,r7
      0016AD EC               [12] 1041 	mov	a,r4
      0016AE 24 F2            [12] 1042 	add	a,#0xf2
      0016B0 90 00 4B         [24] 1043 	mov	dptr,#_MODIFY_HIRC_trimvalue16bit_65536_154
      0016B3 F0               [24] 1044 	movx	@dptr,a
                           0000F1  1045 	Ssys$MODIFY_HIRC$39 ==.
      0016B4 80 07            [24] 1046 	sjmp	00114$
      0016B6                       1047 00111$:
                           0000F3  1048 	Ssys$MODIFY_HIRC$40 ==.
                                   1049 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:71: trimvalue16bit -= 4;
      0016B6 EF               [12] 1050 	mov	a,r7
      0016B7 24 FC            [12] 1051 	add	a,#0xfc
      0016B9 90 00 4B         [24] 1052 	mov	dptr,#_MODIFY_HIRC_trimvalue16bit_65536_154
      0016BC F0               [24] 1053 	movx	@dptr,a
                           0000FA  1054 	Ssys$MODIFY_HIRC$41 ==.
      0016BD                       1055 00114$:
                           0000FA  1056 	Ssys$MODIFY_HIRC$42 ==.
                                   1057 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:73: hircmap0 = (trimvalue16bit >> 1);
      0016BD 90 00 4B         [24] 1058 	mov	dptr,#_MODIFY_HIRC_trimvalue16bit_65536_154
      0016C0 E0               [24] 1059 	movx	a,@dptr
      0016C1 FF               [12] 1060 	mov	r7,a
      0016C2 C3               [12] 1061 	clr	c
      0016C3 13               [12] 1062 	rrc	a
      0016C4 FE               [12] 1063 	mov	r6,a
                           000102  1064 	Ssys$MODIFY_HIRC$43 ==.
                           000102  1065 	Ssys$MODIFY_HIRC$44 ==.
                                   1066 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:77: }
      0016C5                       1067 00118$:
                           000102  1068 	Ssys$MODIFY_HIRC$45 ==.
                                   1069 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:79: TA = 0xAA;
      0016C5 75 C7 AA         [24] 1070 	mov	_TA,#0xaa
                           000105  1071 	Ssys$MODIFY_HIRC$46 ==.
                                   1072 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:80: TA = 0x55;
      0016C8 75 C7 55         [24] 1073 	mov	_TA,#0x55
                           000108  1074 	Ssys$MODIFY_HIRC$47 ==.
                                   1075 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:81: RCTRIM0 = hircmap0;
      0016CB 8E 84            [24] 1076 	mov	_RCTRIM0,r6
                           00010A  1077 	Ssys$MODIFY_HIRC$48 ==.
                                   1078 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:82: TA = 0xAA;
      0016CD 75 C7 AA         [24] 1079 	mov	_TA,#0xaa
                           00010D  1080 	Ssys$MODIFY_HIRC$49 ==.
                                   1081 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:83: TA = 0x55;
      0016D0 75 C7 55         [24] 1082 	mov	_TA,#0x55
                           000110  1083 	Ssys$MODIFY_HIRC$50 ==.
                                   1084 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:84: RCTRIM1 = hircmap1;
      0016D3 8D 85            [24] 1085 	mov	_RCTRIM1,r5
                           000112  1086 	Ssys$MODIFY_HIRC$51 ==.
                                   1087 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:85: clr_CHPCON_IAPEN;
                                   1088 ;	assignBit
      0016D5 A2 AF            [12] 1089 	mov	c,_EA
      0016D7 92 00            [24] 1090 	mov	_BIT_TMP,c
                                   1091 ;	assignBit
      0016D9 C2 AF            [12] 1092 	clr	_EA
      0016DB 75 C7 AA         [24] 1093 	mov	_TA,#0xaa
      0016DE 75 C7 55         [24] 1094 	mov	_TA,#0x55
      0016E1 53 9F FE         [24] 1095 	anl	_CHPCON,#0xfe
                                   1096 ;	assignBit
      0016E4 A2 00            [12] 1097 	mov	c,_BIT_TMP
      0016E6 92 AF            [24] 1098 	mov	_EA,c
                           000125  1099 	Ssys$MODIFY_HIRC$52 ==.
                                   1100 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:86: }
                           000125  1101 	Ssys$MODIFY_HIRC$53 ==.
                           000125  1102 	XG$MODIFY_HIRC$0$0 ==.
      0016E8 22               [24] 1103 	ret
                           000126  1104 	Ssys$MODIFY_HIRC$54 ==.
                                   1105 ;------------------------------------------------------------
                                   1106 ;Allocation info for local variables in function 'FsysSelect'
                                   1107 ;------------------------------------------------------------
                                   1108 ;u8FsysMode                Allocated with name '_FsysSelect_u8FsysMode_65536_159'
                                   1109 ;------------------------------------------------------------
                           000126  1110 	Ssys$FsysSelect$55 ==.
                                   1111 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:98: void FsysSelect(uint8_t u8FsysMode)
                                   1112 ;	-----------------------------------------
                                   1113 ;	 function FsysSelect
                                   1114 ;	-----------------------------------------
      0016E9                       1115 _FsysSelect:
                           000126  1116 	Ssys$FsysSelect$56 ==.
      0016E9 E5 82            [12] 1117 	mov	a,dpl
      0016EB 90 00 4C         [24] 1118 	mov	dptr,#_FsysSelect_u8FsysMode_65536_159
      0016EE F0               [24] 1119 	movx	@dptr,a
                           00012C  1120 	Ssys$FsysSelect$57 ==.
                                   1121 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:100: switch (u8FsysMode)
      0016EF E0               [24] 1122 	movx	a,@dptr
      0016F0 FF               [12] 1123 	mov	r7,a
      0016F1 BF 02 02         [24] 1124 	cjne	r7,#0x02,00119$
      0016F4 80 0A            [24] 1125 	sjmp	00101$
      0016F6                       1126 00119$:
      0016F6 BF 03 02         [24] 1127 	cjne	r7,#0x03,00120$
      0016F9 80 13            [24] 1128 	sjmp	00102$
      0016FB                       1129 00120$:
                           000138  1130 	Ssys$FsysSelect$58 ==.
                           000138  1131 	Ssys$FsysSelect$59 ==.
                                   1132 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:103: case FSYS_HIRC:
      0016FB BF 04 56         [24] 1133 	cjne	r7,#0x04,00105$
      0016FE 80 29            [24] 1134 	sjmp	00103$
      001700                       1135 00101$:
                           00013D  1136 	Ssys$FsysSelect$60 ==.
                                   1137 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:104: ClockEnable(FSYS_HIRC);                 //Enable HIRC
      001700 75 82 02         [24] 1138 	mov	dpl,#0x02
      001703 12 17 55         [24] 1139 	lcall	_ClockEnable
                           000143  1140 	Ssys$FsysSelect$61 ==.
                                   1141 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:105: ClockSwitch(FSYS_HIRC);                 //Switching system clock HIRC
      001706 75 82 02         [24] 1142 	mov	dpl,#0x02
      001709 12 17 C4         [24] 1143 	lcall	_ClockSwitch
                           000149  1144 	Ssys$FsysSelect$62 ==.
                                   1145 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:106: break;
                           000149  1146 	Ssys$FsysSelect$63 ==.
                                   1147 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:109: case FSYS_LIRC:
      00170C 80 46            [24] 1148 	sjmp	00105$
      00170E                       1149 00102$:
                           00014B  1150 	Ssys$FsysSelect$64 ==.
                                   1151 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:110: ClockSwitch(FSYS_LIRC);                 // LIRC always on switch system to LIRC
      00170E 75 82 03         [24] 1152 	mov	dpl,#0x03
      001711 12 17 C4         [24] 1153 	lcall	_ClockSwitch
                           000151  1154 	Ssys$FsysSelect$65 ==.
                                   1155 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:111: clr_CKEN_HIRCEN;                        // Disable HIRC if needed 
                                   1156 ;	assignBit
      001714 A2 AF            [12] 1157 	mov	c,_EA
      001716 92 00            [24] 1158 	mov	_BIT_TMP,c
                                   1159 ;	assignBit
      001718 C2 AF            [12] 1160 	clr	_EA
      00171A 75 C7 AA         [24] 1161 	mov	_TA,#0xaa
      00171D 75 C7 55         [24] 1162 	mov	_TA,#0x55
      001720 53 97 DF         [24] 1163 	anl	_CKEN,#0xdf
                                   1164 ;	assignBit
      001723 A2 00            [12] 1165 	mov	c,_BIT_TMP
      001725 92 AF            [24] 1166 	mov	_EA,c
                           000164  1167 	Ssys$FsysSelect$66 ==.
                                   1168 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:112: break;
                           000164  1169 	Ssys$FsysSelect$67 ==.
                                   1170 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:115: case FSYS_OSCIN_P30:
      001727 80 2B            [24] 1171 	sjmp	00105$
      001729                       1172 00103$:
                           000166  1173 	Ssys$FsysSelect$68 ==.
                                   1174 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:116: ClockEnable(FSYS_HIRC);                 //Enable and system clock to HIRC
      001729 75 82 02         [24] 1175 	mov	dpl,#0x02
      00172C 12 17 55         [24] 1176 	lcall	_ClockEnable
                           00016C  1177 	Ssys$FsysSelect$69 ==.
                                   1178 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:117: ClockSwitch(FSYS_HIRC);
      00172F 75 82 02         [24] 1179 	mov	dpl,#0x02
      001732 12 17 C4         [24] 1180 	lcall	_ClockSwitch
                           000172  1181 	Ssys$FsysSelect$70 ==.
                                   1182 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:118: ClockEnable(FSYS_OSCIN_P30);            //Enable External clock source
      001735 75 82 04         [24] 1183 	mov	dpl,#0x04
      001738 12 17 55         [24] 1184 	lcall	_ClockEnable
                           000178  1185 	Ssys$FsysSelect$71 ==.
                                   1186 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:119: ClockSwitch(FSYS_OSCIN_P30);            //Switching system clock to OSCIN 
      00173B 75 82 04         [24] 1187 	mov	dpl,#0x04
      00173E 12 17 C4         [24] 1188 	lcall	_ClockSwitch
                           00017E  1189 	Ssys$FsysSelect$72 ==.
                                   1190 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:120: clr_CKEN_HIRCEN;                        //step5: disable HIRC if needed 
                                   1191 ;	assignBit
      001741 A2 AF            [12] 1192 	mov	c,_EA
      001743 92 00            [24] 1193 	mov	_BIT_TMP,c
                                   1194 ;	assignBit
      001745 C2 AF            [12] 1195 	clr	_EA
      001747 75 C7 AA         [24] 1196 	mov	_TA,#0xaa
      00174A 75 C7 55         [24] 1197 	mov	_TA,#0x55
      00174D 53 97 DF         [24] 1198 	anl	_CKEN,#0xdf
                                   1199 ;	assignBit
      001750 A2 00            [12] 1200 	mov	c,_BIT_TMP
      001752 92 AF            [24] 1201 	mov	_EA,c
                           000191  1202 	Ssys$FsysSelect$73 ==.
                           000191  1203 	Ssys$FsysSelect$74 ==.
                                   1204 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:122: }
      001754                       1205 00105$:
                           000191  1206 	Ssys$FsysSelect$75 ==.
                                   1207 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:123: }
                           000191  1208 	Ssys$FsysSelect$76 ==.
                           000191  1209 	XG$FsysSelect$0$0 ==.
      001754 22               [24] 1210 	ret
                           000192  1211 	Ssys$FsysSelect$77 ==.
                                   1212 ;------------------------------------------------------------
                                   1213 ;Allocation info for local variables in function 'ClockEnable'
                                   1214 ;------------------------------------------------------------
                                   1215 ;u8FsysMode                Allocated with name '_ClockEnable_u8FsysMode_65536_162'
                                   1216 ;------------------------------------------------------------
                           000192  1217 	Ssys$ClockEnable$78 ==.
                                   1218 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:125: void ClockEnable(uint8_t u8FsysMode)
                                   1219 ;	-----------------------------------------
                                   1220 ;	 function ClockEnable
                                   1221 ;	-----------------------------------------
      001755                       1222 _ClockEnable:
                           000192  1223 	Ssys$ClockEnable$79 ==.
      001755 E5 82            [12] 1224 	mov	a,dpl
      001757 90 00 4D         [24] 1225 	mov	dptr,#_ClockEnable_u8FsysMode_65536_162
      00175A F0               [24] 1226 	movx	@dptr,a
                           000198  1227 	Ssys$ClockEnable$80 ==.
                                   1228 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:127: switch (u8FsysMode)
      00175B E0               [24] 1229 	movx	a,@dptr
      00175C FF               [12] 1230 	mov	r7,a
      00175D BF 02 02         [24] 1231 	cjne	r7,#0x02,00132$
      001760 80 05            [24] 1232 	sjmp	00101$
      001762                       1233 00132$:
                           00019F  1234 	Ssys$ClockEnable$81 ==.
                           00019F  1235 	Ssys$ClockEnable$82 ==.
                                   1236 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:130: case FSYS_HIRC:
      001762 BF 04 2A         [24] 1237 	cjne	r7,#0x04,00110$
      001765 80 1A            [24] 1238 	sjmp	00105$
      001767                       1239 00101$:
                           0001A4  1240 	Ssys$ClockEnable$83 ==.
                                   1241 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:131: set_CKEN_HIRCEN;                        //step1: Enable extnal clock source.
                                   1242 ;	assignBit
      001767 A2 AF            [12] 1243 	mov	c,_EA
      001769 92 00            [24] 1244 	mov	_BIT_TMP,c
                                   1245 ;	assignBit
      00176B C2 AF            [12] 1246 	clr	_EA
      00176D 75 C7 AA         [24] 1247 	mov	_TA,#0xaa
      001770 75 C7 55         [24] 1248 	mov	_TA,#0x55
      001773 43 97 20         [24] 1249 	orl	_CKEN,#0x20
                                   1250 ;	assignBit
      001776 A2 00            [12] 1251 	mov	c,_BIT_TMP
      001778 92 AF            [24] 1252 	mov	_EA,c
                           0001B7  1253 	Ssys$ClockEnable$84 ==.
                                   1254 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:132: while(!(CKSWT&SET_BIT5));               //step2: check clock source status and wait for ready
      00177A                       1255 00102$:
      00177A E5 96            [12] 1256 	mov	a,_CKSWT
      00177C 20 E5 10         [24] 1257 	jb	acc.5,00110$
                           0001BC  1258 	Ssys$ClockEnable$85 ==.
                                   1259 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:135: case FSYS_OSCIN_P30:
      00177F 80 F9            [24] 1260 	sjmp	00102$
      001781                       1261 00105$:
                           0001BE  1262 	Ssys$ClockEnable$86 ==.
                                   1263 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:136: TA=0xAA;TA=0x55;CKEN|=0xC0;             //step1: Enable extnal clock source.
      001781 75 C7 AA         [24] 1264 	mov	_TA,#0xaa
      001784 75 C7 55         [24] 1265 	mov	_TA,#0x55
      001787 43 97 C0         [24] 1266 	orl	_CKEN,#0xc0
                           0001C7  1267 	Ssys$ClockEnable$87 ==.
                                   1268 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:137: while(!(CKSWT&SET_BIT3));               //step2: check clock source status and wait for ready
      00178A                       1269 00106$:
      00178A E5 96            [12] 1270 	mov	a,_CKSWT
      00178C 30 E3 FB         [24] 1271 	jnb	acc.3,00106$
                           0001CC  1272 	Ssys$ClockEnable$88 ==.
                           0001CC  1273 	Ssys$ClockEnable$89 ==.
                                   1274 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:139: }
      00178F                       1275 00110$:
                           0001CC  1276 	Ssys$ClockEnable$90 ==.
                                   1277 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:140: }
                           0001CC  1278 	Ssys$ClockEnable$91 ==.
                           0001CC  1279 	XG$ClockEnable$0$0 ==.
      00178F 22               [24] 1280 	ret
                           0001CD  1281 	Ssys$ClockEnable$92 ==.
                                   1282 ;------------------------------------------------------------
                                   1283 ;Allocation info for local variables in function 'ClockDisable'
                                   1284 ;------------------------------------------------------------
                                   1285 ;u8FsysMode                Allocated with name '_ClockDisable_u8FsysMode_65536_165'
                                   1286 ;------------------------------------------------------------
                           0001CD  1287 	Ssys$ClockDisable$93 ==.
                                   1288 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:142: void ClockDisable(uint8_t u8FsysMode)
                                   1289 ;	-----------------------------------------
                                   1290 ;	 function ClockDisable
                                   1291 ;	-----------------------------------------
      001790                       1292 _ClockDisable:
                           0001CD  1293 	Ssys$ClockDisable$94 ==.
      001790 E5 82            [12] 1294 	mov	a,dpl
      001792 90 00 4E         [24] 1295 	mov	dptr,#_ClockDisable_u8FsysMode_65536_165
      001795 F0               [24] 1296 	movx	@dptr,a
                           0001D3  1297 	Ssys$ClockDisable$95 ==.
                                   1298 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:144: SFRS = 0;
      001796 75 91 00         [24] 1299 	mov	_SFRS,#0x00
                           0001D6  1300 	Ssys$ClockDisable$96 ==.
                                   1301 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:145: switch (u8FsysMode)
      001799 E0               [24] 1302 	movx	a,@dptr
      00179A FF               [12] 1303 	mov	r7,a
      00179B BF 02 02         [24] 1304 	cjne	r7,#0x02,00114$
      00179E 80 05            [24] 1305 	sjmp	00101$
      0017A0                       1306 00114$:
                           0001DD  1307 	Ssys$ClockDisable$97 ==.
                           0001DD  1308 	Ssys$ClockDisable$98 ==.
                                   1309 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:148: case FSYS_HIRC:
      0017A0 BF 04 20         [24] 1310 	cjne	r7,#0x04,00104$
      0017A3 80 15            [24] 1311 	sjmp	00102$
      0017A5                       1312 00101$:
                           0001E2  1313 	Ssys$ClockDisable$99 ==.
                                   1314 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:149: clr_CKEN_HIRCEN;
                                   1315 ;	assignBit
      0017A5 A2 AF            [12] 1316 	mov	c,_EA
      0017A7 92 00            [24] 1317 	mov	_BIT_TMP,c
                                   1318 ;	assignBit
      0017A9 C2 AF            [12] 1319 	clr	_EA
      0017AB 75 C7 AA         [24] 1320 	mov	_TA,#0xaa
      0017AE 75 C7 55         [24] 1321 	mov	_TA,#0x55
      0017B1 53 97 DF         [24] 1322 	anl	_CKEN,#0xdf
                                   1323 ;	assignBit
      0017B4 A2 00            [12] 1324 	mov	c,_BIT_TMP
      0017B6 92 AF            [24] 1325 	mov	_EA,c
                           0001F5  1326 	Ssys$ClockDisable$100 ==.
                                   1327 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:150: break;
                           0001F5  1328 	Ssys$ClockDisable$101 ==.
                                   1329 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:152: case FSYS_OSCIN_P30:
      0017B8 80 09            [24] 1330 	sjmp	00104$
      0017BA                       1331 00102$:
                           0001F7  1332 	Ssys$ClockDisable$102 ==.
                                   1333 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:153: TA=0xAA;TA=0x55;CKEN&=0x3F;
      0017BA 75 C7 AA         [24] 1334 	mov	_TA,#0xaa
      0017BD 75 C7 55         [24] 1335 	mov	_TA,#0x55
      0017C0 53 97 3F         [24] 1336 	anl	_CKEN,#0x3f
                           000200  1337 	Ssys$ClockDisable$103 ==.
                           000200  1338 	Ssys$ClockDisable$104 ==.
                                   1339 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:155: }
      0017C3                       1340 00104$:
                           000200  1341 	Ssys$ClockDisable$105 ==.
                                   1342 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:156: }
                           000200  1343 	Ssys$ClockDisable$106 ==.
                           000200  1344 	XG$ClockDisable$0$0 ==.
      0017C3 22               [24] 1345 	ret
                           000201  1346 	Ssys$ClockDisable$107 ==.
                                   1347 ;------------------------------------------------------------
                                   1348 ;Allocation info for local variables in function 'ClockSwitch'
                                   1349 ;------------------------------------------------------------
                                   1350 ;u8FsysMode                Allocated with name '_ClockSwitch_u8FsysMode_65536_168'
                                   1351 ;------------------------------------------------------------
                           000201  1352 	Ssys$ClockSwitch$108 ==.
                                   1353 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:158: void ClockSwitch(uint8_t u8FsysMode)
                                   1354 ;	-----------------------------------------
                                   1355 ;	 function ClockSwitch
                                   1356 ;	-----------------------------------------
      0017C4                       1357 _ClockSwitch:
                           000201  1358 	Ssys$ClockSwitch$109 ==.
      0017C4 E5 82            [12] 1359 	mov	a,dpl
      0017C6 90 00 4F         [24] 1360 	mov	dptr,#_ClockSwitch_u8FsysMode_65536_168
      0017C9 F0               [24] 1361 	movx	@dptr,a
                           000207  1362 	Ssys$ClockSwitch$110 ==.
                                   1363 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:160: SFRS = 0 ;
      0017CA 75 91 00         [24] 1364 	mov	_SFRS,#0x00
                           00020A  1365 	Ssys$ClockSwitch$111 ==.
                                   1366 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:161: BIT_TMP=EA;EA=0;
                                   1367 ;	assignBit
      0017CD A2 AF            [12] 1368 	mov	c,_EA
      0017CF 92 00            [24] 1369 	mov	_BIT_TMP,c
                                   1370 ;	assignBit
      0017D1 C2 AF            [12] 1371 	clr	_EA
                           000210  1372 	Ssys$ClockSwitch$112 ==.
                                   1373 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:162: switch (u8FsysMode)
      0017D3 90 00 4F         [24] 1374 	mov	dptr,#_ClockSwitch_u8FsysMode_65536_168
      0017D6 E0               [24] 1375 	movx	a,@dptr
      0017D7 FF               [12] 1376 	mov	r7,a
      0017D8 BF 02 02         [24] 1377 	cjne	r7,#0x02,00119$
      0017DB 80 0A            [24] 1378 	sjmp	00101$
      0017DD                       1379 00119$:
      0017DD BF 03 02         [24] 1380 	cjne	r7,#0x03,00120$
      0017E0 80 2D            [24] 1381 	sjmp	00102$
      0017E2                       1382 00120$:
                           00021F  1383 	Ssys$ClockSwitch$113 ==.
                           00021F  1384 	Ssys$ClockSwitch$114 ==.
                                   1385 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:165: case FSYS_HIRC:
      0017E2 BF 04 65         [24] 1386 	cjne	r7,#0x04,00104$
      0017E5 80 50            [24] 1387 	sjmp	00103$
      0017E7                       1388 00101$:
                           000224  1389 	Ssys$ClockSwitch$115 ==.
                                   1390 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:166: clr_CKSWT_OSC1;
                                   1391 ;	assignBit
      0017E7 A2 AF            [12] 1392 	mov	c,_EA
      0017E9 92 00            [24] 1393 	mov	_BIT_TMP,c
                                   1394 ;	assignBit
      0017EB C2 AF            [12] 1395 	clr	_EA
      0017ED 75 C7 AA         [24] 1396 	mov	_TA,#0xaa
      0017F0 75 C7 55         [24] 1397 	mov	_TA,#0x55
      0017F3 53 96 FB         [24] 1398 	anl	_CKSWT,#0xfb
                                   1399 ;	assignBit
      0017F6 A2 00            [12] 1400 	mov	c,_BIT_TMP
      0017F8 92 AF            [24] 1401 	mov	_EA,c
                           000237  1402 	Ssys$ClockSwitch$116 ==.
                                   1403 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:167: clr_CKSWT_OSC0;
                                   1404 ;	assignBit
      0017FA A2 AF            [12] 1405 	mov	c,_EA
      0017FC 92 00            [24] 1406 	mov	_BIT_TMP,c
                                   1407 ;	assignBit
      0017FE C2 AF            [12] 1408 	clr	_EA
      001800 75 C7 AA         [24] 1409 	mov	_TA,#0xaa
      001803 75 C7 55         [24] 1410 	mov	_TA,#0x55
      001806 53 96 FD         [24] 1411 	anl	_CKSWT,#0xfd
                                   1412 ;	assignBit
      001809 A2 00            [12] 1413 	mov	c,_BIT_TMP
      00180B 92 AF            [24] 1414 	mov	_EA,c
                           00024A  1415 	Ssys$ClockSwitch$117 ==.
                                   1416 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:168: break;
                           00024A  1417 	Ssys$ClockSwitch$118 ==.
                                   1418 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:170: case FSYS_LIRC:
      00180D 80 3B            [24] 1419 	sjmp	00104$
      00180F                       1420 00102$:
                           00024C  1421 	Ssys$ClockSwitch$119 ==.
                                   1422 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:171: set_CKSWT_OSC1;
                                   1423 ;	assignBit
      00180F A2 AF            [12] 1424 	mov	c,_EA
      001811 92 00            [24] 1425 	mov	_BIT_TMP,c
                                   1426 ;	assignBit
      001813 C2 AF            [12] 1427 	clr	_EA
      001815 75 C7 AA         [24] 1428 	mov	_TA,#0xaa
      001818 75 C7 55         [24] 1429 	mov	_TA,#0x55
      00181B 43 96 04         [24] 1430 	orl	_CKSWT,#0x04
                                   1431 ;	assignBit
      00181E A2 00            [12] 1432 	mov	c,_BIT_TMP
      001820 92 AF            [24] 1433 	mov	_EA,c
                           00025F  1434 	Ssys$ClockSwitch$120 ==.
                                   1435 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:172: clr_CKSWT_OSC0;
                                   1436 ;	assignBit
      001822 A2 AF            [12] 1437 	mov	c,_EA
      001824 92 00            [24] 1438 	mov	_BIT_TMP,c
                                   1439 ;	assignBit
      001826 C2 AF            [12] 1440 	clr	_EA
      001828 75 C7 AA         [24] 1441 	mov	_TA,#0xaa
      00182B 75 C7 55         [24] 1442 	mov	_TA,#0x55
      00182E 53 96 FD         [24] 1443 	anl	_CKSWT,#0xfd
                                   1444 ;	assignBit
      001831 A2 00            [12] 1445 	mov	c,_BIT_TMP
      001833 92 AF            [24] 1446 	mov	_EA,c
                           000272  1447 	Ssys$ClockSwitch$121 ==.
                                   1448 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:173: break;
                           000272  1449 	Ssys$ClockSwitch$122 ==.
                                   1450 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:175: case FSYS_OSCIN_P30:
      001835 80 13            [24] 1451 	sjmp	00104$
      001837                       1452 00103$:
                           000274  1453 	Ssys$ClockSwitch$123 ==.
                                   1454 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:176: set_CKSWT_ECLKST;
                                   1455 ;	assignBit
      001837 A2 AF            [12] 1456 	mov	c,_EA
      001839 92 00            [24] 1457 	mov	_BIT_TMP,c
                                   1458 ;	assignBit
      00183B C2 AF            [12] 1459 	clr	_EA
      00183D 75 C7 AA         [24] 1460 	mov	_TA,#0xaa
      001840 75 C7 55         [24] 1461 	mov	_TA,#0x55
      001843 43 96 08         [24] 1462 	orl	_CKSWT,#0x08
                                   1463 ;	assignBit
      001846 A2 00            [12] 1464 	mov	c,_BIT_TMP
      001848 92 AF            [24] 1465 	mov	_EA,c
                           000287  1466 	Ssys$ClockSwitch$124 ==.
                           000287  1467 	Ssys$ClockSwitch$125 ==.
                                   1468 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:178: }
      00184A                       1469 00104$:
                           000287  1470 	Ssys$ClockSwitch$126 ==.
                                   1471 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:179: EA = BIT_TMP;
                                   1472 ;	assignBit
      00184A A2 00            [12] 1473 	mov	c,_BIT_TMP
      00184C 92 AF            [24] 1474 	mov	_EA,c
                           00028B  1475 	Ssys$ClockSwitch$127 ==.
                                   1476 ;	C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c:180: }
                           00028B  1477 	Ssys$ClockSwitch$128 ==.
                           00028B  1478 	XG$ClockSwitch$0$0 ==.
      00184E 22               [24] 1479 	ret
                           00028C  1480 	Ssys$ClockSwitch$129 ==.
                                   1481 	.area CSEG    (CODE)
                                   1482 	.area CONST   (CODE)
                                   1483 	.area XINIT   (CODE)
                                   1484 	.area INITIALIZER
                                   1485 	.area CABS    (ABS,CODE)
                                   1486 
                                   1487 	.area .debug_line (NOLOAD)
      000F02 00 00 03 34           1488 	.dw	0,Ldebug_line_end-Ldebug_line_start
      000F06                       1489 Ldebug_line_start:
      000F06 00 02                 1490 	.dw	2
      000F08 00 00 00 A6           1491 	.dw	0,Ldebug_line_stmt-6-Ldebug_line_start
      000F0C 01                    1492 	.db	1
      000F0D 01                    1493 	.db	1
      000F0E FB                    1494 	.db	-5
      000F0F 0F                    1495 	.db	15
      000F10 0A                    1496 	.db	10
      000F11 00                    1497 	.db	0
      000F12 01                    1498 	.db	1
      000F13 01                    1499 	.db	1
      000F14 01                    1500 	.db	1
      000F15 01                    1501 	.db	1
      000F16 00                    1502 	.db	0
      000F17 00                    1503 	.db	0
      000F18 00                    1504 	.db	0
      000F19 01                    1505 	.db	1
      000F1A 2F 2E 2E 2F 69 6E 63  1506 	.ascii "/../include/mcs51"
             6C 75 64 65 2F 6D 63
             73 35 31
      000F2B 00                    1507 	.db	0
      000F2C 2F 2E 2E 2F 69 6E 63  1508 	.ascii "/../include"
             6C 75 64 65
      000F37 00                    1509 	.db	0
      000F38 00                    1510 	.db	0
      000F39 43 3A 2F 55 73 65 72  1511 	.ascii "C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c"
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
      000FAD 00                    1512 	.db	0
      000FAE 00                    1513 	.uleb128	0
      000FAF 00                    1514 	.uleb128	0
      000FB0 00                    1515 	.uleb128	0
      000FB1 00                    1516 	.db	0
      000FB2                       1517 Ldebug_line_stmt:
      000FB2 00                    1518 	.db	0
      000FB3 05                    1519 	.uleb128	5
      000FB4 02                    1520 	.db	2
      000FB5 00 00 15 C3           1521 	.dw	0,(Ssys$MODIFY_HIRC$0)
      000FB9 03                    1522 	.db	3
      000FBA 11                    1523 	.sleb128	17
      000FBB 01                    1524 	.db	1
      000FBC 09                    1525 	.db	9
      000FBD 00 06                 1526 	.dw	Ssys$MODIFY_HIRC$2-Ssys$MODIFY_HIRC$0
      000FBF 03                    1527 	.db	3
      000FC0 0B                    1528 	.sleb128	11
      000FC1 01                    1529 	.db	1
      000FC2 09                    1530 	.db	9
      000FC3 00 13                 1531 	.dw	Ssys$MODIFY_HIRC$3-Ssys$MODIFY_HIRC$2
      000FC5 03                    1532 	.db	3
      000FC6 01                    1533 	.sleb128	1
      000FC7 01                    1534 	.db	1
      000FC8 09                    1535 	.db	9
      000FC9 00 03                 1536 	.dw	Ssys$MODIFY_HIRC$4-Ssys$MODIFY_HIRC$3
      000FCB 03                    1537 	.db	3
      000FCC 01                    1538 	.sleb128	1
      000FCD 01                    1539 	.db	1
      000FCE 09                    1540 	.db	9
      000FCF 00 0F                 1541 	.dw	Ssys$MODIFY_HIRC$6-Ssys$MODIFY_HIRC$4
      000FD1 03                    1542 	.db	3
      000FD2 02                    1543 	.sleb128	2
      000FD3 01                    1544 	.db	1
      000FD4 09                    1545 	.db	9
      000FD5 00 05                 1546 	.dw	Ssys$MODIFY_HIRC$7-Ssys$MODIFY_HIRC$6
      000FD7 03                    1547 	.db	3
      000FD8 01                    1548 	.sleb128	1
      000FD9 01                    1549 	.db	1
      000FDA 09                    1550 	.db	9
      000FDB 00 03                 1551 	.dw	Ssys$MODIFY_HIRC$8-Ssys$MODIFY_HIRC$7
      000FDD 03                    1552 	.db	3
      000FDE 01                    1553 	.sleb128	1
      000FDF 01                    1554 	.db	1
      000FE0 09                    1555 	.db	9
      000FE1 00 00                 1556 	.dw	Ssys$MODIFY_HIRC$9-Ssys$MODIFY_HIRC$8
      000FE3 03                    1557 	.db	3
      000FE4 01                    1558 	.sleb128	1
      000FE5 01                    1559 	.db	1
      000FE6 09                    1560 	.db	9
      000FE7 00 02                 1561 	.dw	Ssys$MODIFY_HIRC$10-Ssys$MODIFY_HIRC$9
      000FE9 03                    1562 	.db	3
      000FEA 01                    1563 	.sleb128	1
      000FEB 01                    1564 	.db	1
      000FEC 09                    1565 	.db	9
      000FED 00 03                 1566 	.dw	Ssys$MODIFY_HIRC$11-Ssys$MODIFY_HIRC$10
      000FEF 03                    1567 	.db	3
      000FF0 01                    1568 	.sleb128	1
      000FF1 01                    1569 	.db	1
      000FF2 09                    1570 	.db	9
      000FF3 00 00                 1571 	.dw	Ssys$MODIFY_HIRC$12-Ssys$MODIFY_HIRC$11
      000FF5 03                    1572 	.db	3
      000FF6 01                    1573 	.sleb128	1
      000FF7 01                    1574 	.db	1
      000FF8 09                    1575 	.db	9
      000FF9 00 02                 1576 	.dw	Ssys$MODIFY_HIRC$13-Ssys$MODIFY_HIRC$12
      000FFB 03                    1577 	.db	3
      000FFC 01                    1578 	.sleb128	1
      000FFD 01                    1579 	.db	1
      000FFE 09                    1580 	.db	9
      000FFF 00 03                 1581 	.dw	Ssys$MODIFY_HIRC$15-Ssys$MODIFY_HIRC$13
      001001 03                    1582 	.db	3
      001002 02                    1583 	.sleb128	2
      001003 01                    1584 	.db	1
      001004 09                    1585 	.db	9
      001005 00 00                 1586 	.dw	Ssys$MODIFY_HIRC$16-Ssys$MODIFY_HIRC$15
      001007 03                    1587 	.db	3
      001008 01                    1588 	.sleb128	1
      001009 01                    1589 	.db	1
      00100A 09                    1590 	.db	9
      00100B 00 03                 1591 	.dw	Ssys$MODIFY_HIRC$17-Ssys$MODIFY_HIRC$16
      00100D 03                    1592 	.db	3
      00100E 01                    1593 	.sleb128	1
      00100F 01                    1594 	.db	1
      001010 09                    1595 	.db	9
      001011 00 03                 1596 	.dw	Ssys$MODIFY_HIRC$18-Ssys$MODIFY_HIRC$17
      001013 03                    1597 	.db	3
      001014 01                    1598 	.sleb128	1
      001015 01                    1599 	.db	1
      001016 09                    1600 	.db	9
      001017 00 13                 1601 	.dw	Ssys$MODIFY_HIRC$19-Ssys$MODIFY_HIRC$18
      001019 03                    1602 	.db	3
      00101A 01                    1603 	.sleb128	1
      00101B 01                    1604 	.db	1
      00101C 09                    1605 	.db	9
      00101D 00 02                 1606 	.dw	Ssys$MODIFY_HIRC$20-Ssys$MODIFY_HIRC$19
      00101F 03                    1607 	.db	3
      001020 01                    1608 	.sleb128	1
      001021 01                    1609 	.db	1
      001022 09                    1610 	.db	9
      001023 00 05                 1611 	.dw	Ssys$MODIFY_HIRC$21-Ssys$MODIFY_HIRC$20
      001025 03                    1612 	.db	3
      001026 01                    1613 	.sleb128	1
      001027 01                    1614 	.db	1
      001028 09                    1615 	.db	9
      001029 00 13                 1616 	.dw	Ssys$MODIFY_HIRC$22-Ssys$MODIFY_HIRC$21
      00102B 03                    1617 	.db	3
      00102C 01                    1618 	.sleb128	1
      00102D 01                    1619 	.db	1
      00102E 09                    1620 	.db	9
      00102F 00 02                 1621 	.dw	Ssys$MODIFY_HIRC$23-Ssys$MODIFY_HIRC$22
      001031 03                    1622 	.db	3
      001032 02                    1623 	.sleb128	2
      001033 01                    1624 	.db	1
      001034 09                    1625 	.db	9
      001035 00 08                 1626 	.dw	Ssys$MODIFY_HIRC$25-Ssys$MODIFY_HIRC$23
      001037 03                    1627 	.db	3
      001038 03                    1628 	.sleb128	3
      001039 01                    1629 	.db	1
      00103A 09                    1630 	.db	9
      00103B 00 0C                 1631 	.dw	Ssys$MODIFY_HIRC$26-Ssys$MODIFY_HIRC$25
      00103D 03                    1632 	.db	3
      00103E 01                    1633 	.sleb128	1
      00103F 01                    1634 	.db	1
      001040 09                    1635 	.db	9
      001041 00 04                 1636 	.dw	Ssys$MODIFY_HIRC$27-Ssys$MODIFY_HIRC$26
      001043 03                    1637 	.db	3
      001044 01                    1638 	.sleb128	1
      001045 01                    1639 	.db	1
      001046 09                    1640 	.db	9
      001047 00 04                 1641 	.dw	Ssys$MODIFY_HIRC$28-Ssys$MODIFY_HIRC$27
      001049 03                    1642 	.db	3
      00104A 01                    1643 	.sleb128	1
      00104B 01                    1644 	.db	1
      00104C 09                    1645 	.db	9
      00104D 00 08                 1646 	.dw	Ssys$MODIFY_HIRC$29-Ssys$MODIFY_HIRC$28
      00104F 03                    1647 	.db	3
      001050 01                    1648 	.sleb128	1
      001051 01                    1649 	.db	1
      001052 09                    1650 	.db	9
      001053 00 03                 1651 	.dw	Ssys$MODIFY_HIRC$30-Ssys$MODIFY_HIRC$29
      001055 03                    1652 	.db	3
      001056 01                    1653 	.sleb128	1
      001057 01                    1654 	.db	1
      001058 09                    1655 	.db	9
      001059 00 03                 1656 	.dw	Ssys$MODIFY_HIRC$31-Ssys$MODIFY_HIRC$30
      00105B 03                    1657 	.db	3
      00105C 01                    1658 	.sleb128	1
      00105D 01                    1659 	.db	1
      00105E 09                    1660 	.db	9
      00105F 00 03                 1661 	.dw	Ssys$MODIFY_HIRC$32-Ssys$MODIFY_HIRC$31
      001061 03                    1662 	.db	3
      001062 01                    1663 	.sleb128	1
      001063 01                    1664 	.db	1
      001064 09                    1665 	.db	9
      001065 00 24                 1666 	.dw	Ssys$MODIFY_HIRC$33-Ssys$MODIFY_HIRC$32
      001067 03                    1667 	.db	3
      001068 02                    1668 	.sleb128	2
      001069 01                    1669 	.db	1
      00106A 09                    1670 	.db	9
      00106B 00 13                 1671 	.dw	Ssys$MODIFY_HIRC$35-Ssys$MODIFY_HIRC$33
      00106D 03                    1672 	.db	3
      00106E 02                    1673 	.sleb128	2
      00106F 01                    1674 	.db	1
      001070 09                    1675 	.db	9
      001071 00 05                 1676 	.dw	Ssys$MODIFY_HIRC$37-Ssys$MODIFY_HIRC$35
      001073 03                    1677 	.db	3
      001074 02                    1678 	.sleb128	2
      001075 01                    1679 	.db	1
      001076 09                    1680 	.db	9
      001077 00 0D                 1681 	.dw	Ssys$MODIFY_HIRC$38-Ssys$MODIFY_HIRC$37
      001079 03                    1682 	.db	3
      00107A 01                    1683 	.sleb128	1
      00107B 01                    1684 	.db	1
      00107C 09                    1685 	.db	9
      00107D 00 0B                 1686 	.dw	Ssys$MODIFY_HIRC$40-Ssys$MODIFY_HIRC$38
      00107F 03                    1687 	.db	3
      001080 03                    1688 	.sleb128	3
      001081 01                    1689 	.db	1
      001082 09                    1690 	.db	9
      001083 00 07                 1691 	.dw	Ssys$MODIFY_HIRC$42-Ssys$MODIFY_HIRC$40
      001085 03                    1692 	.db	3
      001086 02                    1693 	.sleb128	2
      001087 01                    1694 	.db	1
      001088 09                    1695 	.db	9
      001089 00 08                 1696 	.dw	Ssys$MODIFY_HIRC$44-Ssys$MODIFY_HIRC$42
      00108B 03                    1697 	.db	3
      00108C 04                    1698 	.sleb128	4
      00108D 01                    1699 	.db	1
      00108E 09                    1700 	.db	9
      00108F 00 00                 1701 	.dw	Ssys$MODIFY_HIRC$45-Ssys$MODIFY_HIRC$44
      001091 03                    1702 	.db	3
      001092 02                    1703 	.sleb128	2
      001093 01                    1704 	.db	1
      001094 09                    1705 	.db	9
      001095 00 03                 1706 	.dw	Ssys$MODIFY_HIRC$46-Ssys$MODIFY_HIRC$45
      001097 03                    1707 	.db	3
      001098 01                    1708 	.sleb128	1
      001099 01                    1709 	.db	1
      00109A 09                    1710 	.db	9
      00109B 00 03                 1711 	.dw	Ssys$MODIFY_HIRC$47-Ssys$MODIFY_HIRC$46
      00109D 03                    1712 	.db	3
      00109E 01                    1713 	.sleb128	1
      00109F 01                    1714 	.db	1
      0010A0 09                    1715 	.db	9
      0010A1 00 02                 1716 	.dw	Ssys$MODIFY_HIRC$48-Ssys$MODIFY_HIRC$47
      0010A3 03                    1717 	.db	3
      0010A4 01                    1718 	.sleb128	1
      0010A5 01                    1719 	.db	1
      0010A6 09                    1720 	.db	9
      0010A7 00 03                 1721 	.dw	Ssys$MODIFY_HIRC$49-Ssys$MODIFY_HIRC$48
      0010A9 03                    1722 	.db	3
      0010AA 01                    1723 	.sleb128	1
      0010AB 01                    1724 	.db	1
      0010AC 09                    1725 	.db	9
      0010AD 00 03                 1726 	.dw	Ssys$MODIFY_HIRC$50-Ssys$MODIFY_HIRC$49
      0010AF 03                    1727 	.db	3
      0010B0 01                    1728 	.sleb128	1
      0010B1 01                    1729 	.db	1
      0010B2 09                    1730 	.db	9
      0010B3 00 02                 1731 	.dw	Ssys$MODIFY_HIRC$51-Ssys$MODIFY_HIRC$50
      0010B5 03                    1732 	.db	3
      0010B6 01                    1733 	.sleb128	1
      0010B7 01                    1734 	.db	1
      0010B8 09                    1735 	.db	9
      0010B9 00 13                 1736 	.dw	Ssys$MODIFY_HIRC$52-Ssys$MODIFY_HIRC$51
      0010BB 03                    1737 	.db	3
      0010BC 01                    1738 	.sleb128	1
      0010BD 01                    1739 	.db	1
      0010BE 09                    1740 	.db	9
      0010BF 00 01                 1741 	.dw	1+Ssys$MODIFY_HIRC$53-Ssys$MODIFY_HIRC$52
      0010C1 00                    1742 	.db	0
      0010C2 01                    1743 	.uleb128	1
      0010C3 01                    1744 	.db	1
      0010C4 00                    1745 	.db	0
      0010C5 05                    1746 	.uleb128	5
      0010C6 02                    1747 	.db	2
      0010C7 00 00 16 E9           1748 	.dw	0,(Ssys$FsysSelect$55)
      0010CB 03                    1749 	.db	3
      0010CC E1 00                 1750 	.sleb128	97
      0010CE 01                    1751 	.db	1
      0010CF 09                    1752 	.db	9
      0010D0 00 06                 1753 	.dw	Ssys$FsysSelect$57-Ssys$FsysSelect$55
      0010D2 03                    1754 	.db	3
      0010D3 02                    1755 	.sleb128	2
      0010D4 01                    1756 	.db	1
      0010D5 09                    1757 	.db	9
      0010D6 00 0C                 1758 	.dw	Ssys$FsysSelect$59-Ssys$FsysSelect$57
      0010D8 03                    1759 	.db	3
      0010D9 03                    1760 	.sleb128	3
      0010DA 01                    1761 	.db	1
      0010DB 09                    1762 	.db	9
      0010DC 00 05                 1763 	.dw	Ssys$FsysSelect$60-Ssys$FsysSelect$59
      0010DE 03                    1764 	.db	3
      0010DF 01                    1765 	.sleb128	1
      0010E0 01                    1766 	.db	1
      0010E1 09                    1767 	.db	9
      0010E2 00 06                 1768 	.dw	Ssys$FsysSelect$61-Ssys$FsysSelect$60
      0010E4 03                    1769 	.db	3
      0010E5 01                    1770 	.sleb128	1
      0010E6 01                    1771 	.db	1
      0010E7 09                    1772 	.db	9
      0010E8 00 06                 1773 	.dw	Ssys$FsysSelect$62-Ssys$FsysSelect$61
      0010EA 03                    1774 	.db	3
      0010EB 01                    1775 	.sleb128	1
      0010EC 01                    1776 	.db	1
      0010ED 09                    1777 	.db	9
      0010EE 00 00                 1778 	.dw	Ssys$FsysSelect$63-Ssys$FsysSelect$62
      0010F0 03                    1779 	.db	3
      0010F1 03                    1780 	.sleb128	3
      0010F2 01                    1781 	.db	1
      0010F3 09                    1782 	.db	9
      0010F4 00 02                 1783 	.dw	Ssys$FsysSelect$64-Ssys$FsysSelect$63
      0010F6 03                    1784 	.db	3
      0010F7 01                    1785 	.sleb128	1
      0010F8 01                    1786 	.db	1
      0010F9 09                    1787 	.db	9
      0010FA 00 06                 1788 	.dw	Ssys$FsysSelect$65-Ssys$FsysSelect$64
      0010FC 03                    1789 	.db	3
      0010FD 01                    1790 	.sleb128	1
      0010FE 01                    1791 	.db	1
      0010FF 09                    1792 	.db	9
      001100 00 13                 1793 	.dw	Ssys$FsysSelect$66-Ssys$FsysSelect$65
      001102 03                    1794 	.db	3
      001103 01                    1795 	.sleb128	1
      001104 01                    1796 	.db	1
      001105 09                    1797 	.db	9
      001106 00 00                 1798 	.dw	Ssys$FsysSelect$67-Ssys$FsysSelect$66
      001108 03                    1799 	.db	3
      001109 03                    1800 	.sleb128	3
      00110A 01                    1801 	.db	1
      00110B 09                    1802 	.db	9
      00110C 00 02                 1803 	.dw	Ssys$FsysSelect$68-Ssys$FsysSelect$67
      00110E 03                    1804 	.db	3
      00110F 01                    1805 	.sleb128	1
      001110 01                    1806 	.db	1
      001111 09                    1807 	.db	9
      001112 00 06                 1808 	.dw	Ssys$FsysSelect$69-Ssys$FsysSelect$68
      001114 03                    1809 	.db	3
      001115 01                    1810 	.sleb128	1
      001116 01                    1811 	.db	1
      001117 09                    1812 	.db	9
      001118 00 06                 1813 	.dw	Ssys$FsysSelect$70-Ssys$FsysSelect$69
      00111A 03                    1814 	.db	3
      00111B 01                    1815 	.sleb128	1
      00111C 01                    1816 	.db	1
      00111D 09                    1817 	.db	9
      00111E 00 06                 1818 	.dw	Ssys$FsysSelect$71-Ssys$FsysSelect$70
      001120 03                    1819 	.db	3
      001121 01                    1820 	.sleb128	1
      001122 01                    1821 	.db	1
      001123 09                    1822 	.db	9
      001124 00 06                 1823 	.dw	Ssys$FsysSelect$72-Ssys$FsysSelect$71
      001126 03                    1824 	.db	3
      001127 01                    1825 	.sleb128	1
      001128 01                    1826 	.db	1
      001129 09                    1827 	.db	9
      00112A 00 13                 1828 	.dw	Ssys$FsysSelect$74-Ssys$FsysSelect$72
      00112C 03                    1829 	.db	3
      00112D 02                    1830 	.sleb128	2
      00112E 01                    1831 	.db	1
      00112F 09                    1832 	.db	9
      001130 00 00                 1833 	.dw	Ssys$FsysSelect$75-Ssys$FsysSelect$74
      001132 03                    1834 	.db	3
      001133 01                    1835 	.sleb128	1
      001134 01                    1836 	.db	1
      001135 09                    1837 	.db	9
      001136 00 01                 1838 	.dw	1+Ssys$FsysSelect$76-Ssys$FsysSelect$75
      001138 00                    1839 	.db	0
      001139 01                    1840 	.uleb128	1
      00113A 01                    1841 	.db	1
      00113B 00                    1842 	.db	0
      00113C 05                    1843 	.uleb128	5
      00113D 02                    1844 	.db	2
      00113E 00 00 17 55           1845 	.dw	0,(Ssys$ClockEnable$78)
      001142 03                    1846 	.db	3
      001143 FC 00                 1847 	.sleb128	124
      001145 01                    1848 	.db	1
      001146 09                    1849 	.db	9
      001147 00 06                 1850 	.dw	Ssys$ClockEnable$80-Ssys$ClockEnable$78
      001149 03                    1851 	.db	3
      00114A 02                    1852 	.sleb128	2
      00114B 01                    1853 	.db	1
      00114C 09                    1854 	.db	9
      00114D 00 07                 1855 	.dw	Ssys$ClockEnable$82-Ssys$ClockEnable$80
      00114F 03                    1856 	.db	3
      001150 03                    1857 	.sleb128	3
      001151 01                    1858 	.db	1
      001152 09                    1859 	.db	9
      001153 00 05                 1860 	.dw	Ssys$ClockEnable$83-Ssys$ClockEnable$82
      001155 03                    1861 	.db	3
      001156 01                    1862 	.sleb128	1
      001157 01                    1863 	.db	1
      001158 09                    1864 	.db	9
      001159 00 13                 1865 	.dw	Ssys$ClockEnable$84-Ssys$ClockEnable$83
      00115B 03                    1866 	.db	3
      00115C 01                    1867 	.sleb128	1
      00115D 01                    1868 	.db	1
      00115E 09                    1869 	.db	9
      00115F 00 05                 1870 	.dw	Ssys$ClockEnable$85-Ssys$ClockEnable$84
      001161 03                    1871 	.db	3
      001162 03                    1872 	.sleb128	3
      001163 01                    1873 	.db	1
      001164 09                    1874 	.db	9
      001165 00 02                 1875 	.dw	Ssys$ClockEnable$86-Ssys$ClockEnable$85
      001167 03                    1876 	.db	3
      001168 01                    1877 	.sleb128	1
      001169 01                    1878 	.db	1
      00116A 09                    1879 	.db	9
      00116B 00 09                 1880 	.dw	Ssys$ClockEnable$87-Ssys$ClockEnable$86
      00116D 03                    1881 	.db	3
      00116E 01                    1882 	.sleb128	1
      00116F 01                    1883 	.db	1
      001170 09                    1884 	.db	9
      001171 00 05                 1885 	.dw	Ssys$ClockEnable$89-Ssys$ClockEnable$87
      001173 03                    1886 	.db	3
      001174 02                    1887 	.sleb128	2
      001175 01                    1888 	.db	1
      001176 09                    1889 	.db	9
      001177 00 00                 1890 	.dw	Ssys$ClockEnable$90-Ssys$ClockEnable$89
      001179 03                    1891 	.db	3
      00117A 01                    1892 	.sleb128	1
      00117B 01                    1893 	.db	1
      00117C 09                    1894 	.db	9
      00117D 00 01                 1895 	.dw	1+Ssys$ClockEnable$91-Ssys$ClockEnable$90
      00117F 00                    1896 	.db	0
      001180 01                    1897 	.uleb128	1
      001181 01                    1898 	.db	1
      001182 00                    1899 	.db	0
      001183 05                    1900 	.uleb128	5
      001184 02                    1901 	.db	2
      001185 00 00 17 90           1902 	.dw	0,(Ssys$ClockDisable$93)
      001189 03                    1903 	.db	3
      00118A 8D 01                 1904 	.sleb128	141
      00118C 01                    1905 	.db	1
      00118D 09                    1906 	.db	9
      00118E 00 06                 1907 	.dw	Ssys$ClockDisable$95-Ssys$ClockDisable$93
      001190 03                    1908 	.db	3
      001191 02                    1909 	.sleb128	2
      001192 01                    1910 	.db	1
      001193 09                    1911 	.db	9
      001194 00 03                 1912 	.dw	Ssys$ClockDisable$96-Ssys$ClockDisable$95
      001196 03                    1913 	.db	3
      001197 01                    1914 	.sleb128	1
      001198 01                    1915 	.db	1
      001199 09                    1916 	.db	9
      00119A 00 07                 1917 	.dw	Ssys$ClockDisable$98-Ssys$ClockDisable$96
      00119C 03                    1918 	.db	3
      00119D 03                    1919 	.sleb128	3
      00119E 01                    1920 	.db	1
      00119F 09                    1921 	.db	9
      0011A0 00 05                 1922 	.dw	Ssys$ClockDisable$99-Ssys$ClockDisable$98
      0011A2 03                    1923 	.db	3
      0011A3 01                    1924 	.sleb128	1
      0011A4 01                    1925 	.db	1
      0011A5 09                    1926 	.db	9
      0011A6 00 13                 1927 	.dw	Ssys$ClockDisable$100-Ssys$ClockDisable$99
      0011A8 03                    1928 	.db	3
      0011A9 01                    1929 	.sleb128	1
      0011AA 01                    1930 	.db	1
      0011AB 09                    1931 	.db	9
      0011AC 00 00                 1932 	.dw	Ssys$ClockDisable$101-Ssys$ClockDisable$100
      0011AE 03                    1933 	.db	3
      0011AF 02                    1934 	.sleb128	2
      0011B0 01                    1935 	.db	1
      0011B1 09                    1936 	.db	9
      0011B2 00 02                 1937 	.dw	Ssys$ClockDisable$102-Ssys$ClockDisable$101
      0011B4 03                    1938 	.db	3
      0011B5 01                    1939 	.sleb128	1
      0011B6 01                    1940 	.db	1
      0011B7 09                    1941 	.db	9
      0011B8 00 09                 1942 	.dw	Ssys$ClockDisable$104-Ssys$ClockDisable$102
      0011BA 03                    1943 	.db	3
      0011BB 02                    1944 	.sleb128	2
      0011BC 01                    1945 	.db	1
      0011BD 09                    1946 	.db	9
      0011BE 00 00                 1947 	.dw	Ssys$ClockDisable$105-Ssys$ClockDisable$104
      0011C0 03                    1948 	.db	3
      0011C1 01                    1949 	.sleb128	1
      0011C2 01                    1950 	.db	1
      0011C3 09                    1951 	.db	9
      0011C4 00 01                 1952 	.dw	1+Ssys$ClockDisable$106-Ssys$ClockDisable$105
      0011C6 00                    1953 	.db	0
      0011C7 01                    1954 	.uleb128	1
      0011C8 01                    1955 	.db	1
      0011C9 00                    1956 	.db	0
      0011CA 05                    1957 	.uleb128	5
      0011CB 02                    1958 	.db	2
      0011CC 00 00 17 C4           1959 	.dw	0,(Ssys$ClockSwitch$108)
      0011D0 03                    1960 	.db	3
      0011D1 9D 01                 1961 	.sleb128	157
      0011D3 01                    1962 	.db	1
      0011D4 09                    1963 	.db	9
      0011D5 00 06                 1964 	.dw	Ssys$ClockSwitch$110-Ssys$ClockSwitch$108
      0011D7 03                    1965 	.db	3
      0011D8 02                    1966 	.sleb128	2
      0011D9 01                    1967 	.db	1
      0011DA 09                    1968 	.db	9
      0011DB 00 03                 1969 	.dw	Ssys$ClockSwitch$111-Ssys$ClockSwitch$110
      0011DD 03                    1970 	.db	3
      0011DE 01                    1971 	.sleb128	1
      0011DF 01                    1972 	.db	1
      0011E0 09                    1973 	.db	9
      0011E1 00 06                 1974 	.dw	Ssys$ClockSwitch$112-Ssys$ClockSwitch$111
      0011E3 03                    1975 	.db	3
      0011E4 01                    1976 	.sleb128	1
      0011E5 01                    1977 	.db	1
      0011E6 09                    1978 	.db	9
      0011E7 00 0F                 1979 	.dw	Ssys$ClockSwitch$114-Ssys$ClockSwitch$112
      0011E9 03                    1980 	.db	3
      0011EA 03                    1981 	.sleb128	3
      0011EB 01                    1982 	.db	1
      0011EC 09                    1983 	.db	9
      0011ED 00 05                 1984 	.dw	Ssys$ClockSwitch$115-Ssys$ClockSwitch$114
      0011EF 03                    1985 	.db	3
      0011F0 01                    1986 	.sleb128	1
      0011F1 01                    1987 	.db	1
      0011F2 09                    1988 	.db	9
      0011F3 00 13                 1989 	.dw	Ssys$ClockSwitch$116-Ssys$ClockSwitch$115
      0011F5 03                    1990 	.db	3
      0011F6 01                    1991 	.sleb128	1
      0011F7 01                    1992 	.db	1
      0011F8 09                    1993 	.db	9
      0011F9 00 13                 1994 	.dw	Ssys$ClockSwitch$117-Ssys$ClockSwitch$116
      0011FB 03                    1995 	.db	3
      0011FC 01                    1996 	.sleb128	1
      0011FD 01                    1997 	.db	1
      0011FE 09                    1998 	.db	9
      0011FF 00 00                 1999 	.dw	Ssys$ClockSwitch$118-Ssys$ClockSwitch$117
      001201 03                    2000 	.db	3
      001202 02                    2001 	.sleb128	2
      001203 01                    2002 	.db	1
      001204 09                    2003 	.db	9
      001205 00 02                 2004 	.dw	Ssys$ClockSwitch$119-Ssys$ClockSwitch$118
      001207 03                    2005 	.db	3
      001208 01                    2006 	.sleb128	1
      001209 01                    2007 	.db	1
      00120A 09                    2008 	.db	9
      00120B 00 13                 2009 	.dw	Ssys$ClockSwitch$120-Ssys$ClockSwitch$119
      00120D 03                    2010 	.db	3
      00120E 01                    2011 	.sleb128	1
      00120F 01                    2012 	.db	1
      001210 09                    2013 	.db	9
      001211 00 13                 2014 	.dw	Ssys$ClockSwitch$121-Ssys$ClockSwitch$120
      001213 03                    2015 	.db	3
      001214 01                    2016 	.sleb128	1
      001215 01                    2017 	.db	1
      001216 09                    2018 	.db	9
      001217 00 00                 2019 	.dw	Ssys$ClockSwitch$122-Ssys$ClockSwitch$121
      001219 03                    2020 	.db	3
      00121A 02                    2021 	.sleb128	2
      00121B 01                    2022 	.db	1
      00121C 09                    2023 	.db	9
      00121D 00 02                 2024 	.dw	Ssys$ClockSwitch$123-Ssys$ClockSwitch$122
      00121F 03                    2025 	.db	3
      001220 01                    2026 	.sleb128	1
      001221 01                    2027 	.db	1
      001222 09                    2028 	.db	9
      001223 00 13                 2029 	.dw	Ssys$ClockSwitch$125-Ssys$ClockSwitch$123
      001225 03                    2030 	.db	3
      001226 02                    2031 	.sleb128	2
      001227 01                    2032 	.db	1
      001228 09                    2033 	.db	9
      001229 00 00                 2034 	.dw	Ssys$ClockSwitch$126-Ssys$ClockSwitch$125
      00122B 03                    2035 	.db	3
      00122C 01                    2036 	.sleb128	1
      00122D 01                    2037 	.db	1
      00122E 09                    2038 	.db	9
      00122F 00 04                 2039 	.dw	Ssys$ClockSwitch$127-Ssys$ClockSwitch$126
      001231 03                    2040 	.db	3
      001232 01                    2041 	.sleb128	1
      001233 01                    2042 	.db	1
      001234 09                    2043 	.db	9
      001235 00 01                 2044 	.dw	1+Ssys$ClockSwitch$128-Ssys$ClockSwitch$127
      001237 00                    2045 	.db	0
      001238 01                    2046 	.uleb128	1
      001239 01                    2047 	.db	1
      00123A                       2048 Ldebug_line_end:
                                   2049 
                                   2050 	.area .debug_loc (NOLOAD)
      0002D0                       2051 Ldebug_loc_start:
      0002D0 00 00 17 C4           2052 	.dw	0,(Ssys$ClockSwitch$109)
      0002D4 00 00 18 4F           2053 	.dw	0,(Ssys$ClockSwitch$129)
      0002D8 00 02                 2054 	.dw	2
      0002DA 86                    2055 	.db	134
      0002DB 01                    2056 	.sleb128	1
      0002DC 00 00 00 00           2057 	.dw	0,0
      0002E0 00 00 00 00           2058 	.dw	0,0
      0002E4 00 00 17 90           2059 	.dw	0,(Ssys$ClockDisable$94)
      0002E8 00 00 17 C4           2060 	.dw	0,(Ssys$ClockDisable$107)
      0002EC 00 02                 2061 	.dw	2
      0002EE 86                    2062 	.db	134
      0002EF 01                    2063 	.sleb128	1
      0002F0 00 00 00 00           2064 	.dw	0,0
      0002F4 00 00 00 00           2065 	.dw	0,0
      0002F8 00 00 17 55           2066 	.dw	0,(Ssys$ClockEnable$79)
      0002FC 00 00 17 90           2067 	.dw	0,(Ssys$ClockEnable$92)
      000300 00 02                 2068 	.dw	2
      000302 86                    2069 	.db	134
      000303 01                    2070 	.sleb128	1
      000304 00 00 00 00           2071 	.dw	0,0
      000308 00 00 00 00           2072 	.dw	0,0
      00030C 00 00 16 E9           2073 	.dw	0,(Ssys$FsysSelect$56)
      000310 00 00 17 55           2074 	.dw	0,(Ssys$FsysSelect$77)
      000314 00 02                 2075 	.dw	2
      000316 86                    2076 	.db	134
      000317 01                    2077 	.sleb128	1
      000318 00 00 00 00           2078 	.dw	0,0
      00031C 00 00 00 00           2079 	.dw	0,0
      000320 00 00 15 C3           2080 	.dw	0,(Ssys$MODIFY_HIRC$1)
      000324 00 00 16 E9           2081 	.dw	0,(Ssys$MODIFY_HIRC$54)
      000328 00 02                 2082 	.dw	2
      00032A 86                    2083 	.db	134
      00032B 01                    2084 	.sleb128	1
      00032C 00 00 00 00           2085 	.dw	0,0
      000330 00 00 00 00           2086 	.dw	0,0
                                   2087 
                                   2088 	.area .debug_abbrev (NOLOAD)
      00024C                       2089 Ldebug_abbrev:
      00024C 01                    2090 	.uleb128	1
      00024D 11                    2091 	.uleb128	17
      00024E 01                    2092 	.db	1
      00024F 03                    2093 	.uleb128	3
      000250 08                    2094 	.uleb128	8
      000251 10                    2095 	.uleb128	16
      000252 06                    2096 	.uleb128	6
      000253 13                    2097 	.uleb128	19
      000254 0B                    2098 	.uleb128	11
      000255 25                    2099 	.uleb128	37
      000256 08                    2100 	.uleb128	8
      000257 00                    2101 	.uleb128	0
      000258 00                    2102 	.uleb128	0
      000259 02                    2103 	.uleb128	2
      00025A 2E                    2104 	.uleb128	46
      00025B 01                    2105 	.db	1
      00025C 01                    2106 	.uleb128	1
      00025D 13                    2107 	.uleb128	19
      00025E 03                    2108 	.uleb128	3
      00025F 08                    2109 	.uleb128	8
      000260 11                    2110 	.uleb128	17
      000261 01                    2111 	.uleb128	1
      000262 12                    2112 	.uleb128	18
      000263 01                    2113 	.uleb128	1
      000264 3F                    2114 	.uleb128	63
      000265 0C                    2115 	.uleb128	12
      000266 40                    2116 	.uleb128	64
      000267 06                    2117 	.uleb128	6
      000268 00                    2118 	.uleb128	0
      000269 00                    2119 	.uleb128	0
      00026A 03                    2120 	.uleb128	3
      00026B 05                    2121 	.uleb128	5
      00026C 00                    2122 	.db	0
      00026D 02                    2123 	.uleb128	2
      00026E 0A                    2124 	.uleb128	10
      00026F 03                    2125 	.uleb128	3
      000270 08                    2126 	.uleb128	8
      000271 49                    2127 	.uleb128	73
      000272 13                    2128 	.uleb128	19
      000273 00                    2129 	.uleb128	0
      000274 00                    2130 	.uleb128	0
      000275 04                    2131 	.uleb128	4
      000276 0B                    2132 	.uleb128	11
      000277 00                    2133 	.db	0
      000278 11                    2134 	.uleb128	17
      000279 01                    2135 	.uleb128	1
      00027A 12                    2136 	.uleb128	18
      00027B 01                    2137 	.uleb128	1
      00027C 00                    2138 	.uleb128	0
      00027D 00                    2139 	.uleb128	0
      00027E 05                    2140 	.uleb128	5
      00027F 0B                    2141 	.uleb128	11
      000280 01                    2142 	.db	1
      000281 01                    2143 	.uleb128	1
      000282 13                    2144 	.uleb128	19
      000283 11                    2145 	.uleb128	17
      000284 01                    2146 	.uleb128	1
      000285 12                    2147 	.uleb128	18
      000286 01                    2148 	.uleb128	1
      000287 00                    2149 	.uleb128	0
      000288 00                    2150 	.uleb128	0
      000289 06                    2151 	.uleb128	6
      00028A 0B                    2152 	.uleb128	11
      00028B 01                    2153 	.db	1
      00028C 11                    2154 	.uleb128	17
      00028D 01                    2155 	.uleb128	1
      00028E 12                    2156 	.uleb128	18
      00028F 01                    2157 	.uleb128	1
      000290 00                    2158 	.uleb128	0
      000291 00                    2159 	.uleb128	0
      000292 07                    2160 	.uleb128	7
      000293 34                    2161 	.uleb128	52
      000294 00                    2162 	.db	0
      000295 02                    2163 	.uleb128	2
      000296 0A                    2164 	.uleb128	10
      000297 03                    2165 	.uleb128	3
      000298 08                    2166 	.uleb128	8
      000299 49                    2167 	.uleb128	73
      00029A 13                    2168 	.uleb128	19
      00029B 00                    2169 	.uleb128	0
      00029C 00                    2170 	.uleb128	0
      00029D 08                    2171 	.uleb128	8
      00029E 24                    2172 	.uleb128	36
      00029F 00                    2173 	.db	0
      0002A0 03                    2174 	.uleb128	3
      0002A1 08                    2175 	.uleb128	8
      0002A2 0B                    2176 	.uleb128	11
      0002A3 0B                    2177 	.uleb128	11
      0002A4 3E                    2178 	.uleb128	62
      0002A5 0B                    2179 	.uleb128	11
      0002A6 00                    2180 	.uleb128	0
      0002A7 00                    2181 	.uleb128	0
      0002A8 09                    2182 	.uleb128	9
      0002A9 34                    2183 	.uleb128	52
      0002AA 00                    2184 	.db	0
      0002AB 02                    2185 	.uleb128	2
      0002AC 0A                    2186 	.uleb128	10
      0002AD 03                    2187 	.uleb128	3
      0002AE 08                    2188 	.uleb128	8
      0002AF 3C                    2189 	.uleb128	60
      0002B0 0C                    2190 	.uleb128	12
      0002B1 3F                    2191 	.uleb128	63
      0002B2 0C                    2192 	.uleb128	12
      0002B3 49                    2193 	.uleb128	73
      0002B4 13                    2194 	.uleb128	19
      0002B5 00                    2195 	.uleb128	0
      0002B6 00                    2196 	.uleb128	0
      0002B7 0A                    2197 	.uleb128	10
      0002B8 35                    2198 	.uleb128	53
      0002B9 00                    2199 	.db	0
      0002BA 49                    2200 	.uleb128	73
      0002BB 13                    2201 	.uleb128	19
      0002BC 00                    2202 	.uleb128	0
      0002BD 00                    2203 	.uleb128	0
      0002BE 0B                    2204 	.uleb128	11
      0002BF 34                    2205 	.uleb128	52
      0002C0 00                    2206 	.db	0
      0002C1 02                    2207 	.uleb128	2
      0002C2 0A                    2208 	.uleb128	10
      0002C3 03                    2209 	.uleb128	3
      0002C4 08                    2210 	.uleb128	8
      0002C5 3F                    2211 	.uleb128	63
      0002C6 0C                    2212 	.uleb128	12
      0002C7 49                    2213 	.uleb128	73
      0002C8 13                    2214 	.uleb128	19
      0002C9 00                    2215 	.uleb128	0
      0002CA 00                    2216 	.uleb128	0
      0002CB 00                    2217 	.uleb128	0
                                   2218 
                                   2219 	.area .debug_info (NOLOAD)
      00530A 00 00 11 D6           2220 	.dw	0,Ldebug_info_end-Ldebug_info_start
      00530E                       2221 Ldebug_info_start:
      00530E 00 02                 2222 	.dw	2
      005310 00 00 02 4C           2223 	.dw	0,(Ldebug_abbrev)
      005314 04                    2224 	.db	4
      005315 01                    2225 	.uleb128	1
      005316 43 3A 2F 55 73 65 72  2226 	.ascii "C:/Users/Goosmos/Downloads/MS51_BSP-master/MS51_BSP-master/MS51FB9AE_MS51XB9AE_MS51XB9BE/Library/StdDriver/src/sys.c"
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
      00538A 00                    2227 	.db	0
      00538B 00 00 0F 02           2228 	.dw	0,(Ldebug_line_start+-4)
      00538F 01                    2229 	.db	1
      005390 53 44 43 43 20 76 65  2230 	.ascii "SDCC version 4.2.6 #13647"
             72 73 69 6F 6E 20 34
             2E 32 2E 36 20 23 31
             33 36 34 37
      0053A9 00                    2231 	.db	0
      0053AA 02                    2232 	.uleb128	2
      0053AB 00 00 01 18           2233 	.dw	0,280
      0053AF 4D 4F 44 49 46 59 5F  2234 	.ascii "MODIFY_HIRC"
             48 49 52 43
      0053BA 00                    2235 	.db	0
      0053BB 00 00 15 C3           2236 	.dw	0,(_MODIFY_HIRC)
      0053BF 00 00 16 E9           2237 	.dw	0,(XG$MODIFY_HIRC$0$0+1)
      0053C3 01                    2238 	.db	1
      0053C4 00 00 03 20           2239 	.dw	0,(Ldebug_loc_start+80)
      0053C8 03                    2240 	.uleb128	3
      0053C9 05                    2241 	.db	5
      0053CA 03                    2242 	.db	3
      0053CB 00 00 00 4A           2243 	.dw	0,(_MODIFY_HIRC_u8HIRCSEL_65536_153)
      0053CF 75 38 48 49 52 43 53  2244 	.ascii "u8HIRCSEL"
             45 4C
      0053D8 00                    2245 	.db	0
      0053D9 00 00 01 18           2246 	.dw	0,280
      0053DD 04                    2247 	.uleb128	4
      0053DE 00 00 15 EE           2248 	.dw	0,(Ssys$MODIFY_HIRC$5)
      0053E2 00 00 16 00           2249 	.dw	0,(Ssys$MODIFY_HIRC$14)
      0053E6 05                    2250 	.uleb128	5
      0053E7 00 00 00 FD           2251 	.dw	0,253
      0053EB 00 00 16 3D           2252 	.dw	0,(Ssys$MODIFY_HIRC$24)
      0053EF 00 00 16 C5           2253 	.dw	0,(Ssys$MODIFY_HIRC$43)
      0053F3 06                    2254 	.uleb128	6
      0053F4 00 00 16 99           2255 	.dw	0,(Ssys$MODIFY_HIRC$34)
      0053F8 00 00 16 BD           2256 	.dw	0,(Ssys$MODIFY_HIRC$41)
      0053FC 04                    2257 	.uleb128	4
      0053FD 00 00 16 9E           2258 	.dw	0,(Ssys$MODIFY_HIRC$36)
      005401 00 00 16 B4           2259 	.dw	0,(Ssys$MODIFY_HIRC$39)
      005405 00                    2260 	.uleb128	0
      005406 00                    2261 	.uleb128	0
      005407 07                    2262 	.uleb128	7
      005408 05                    2263 	.db	5
      005409 03                    2264 	.db	3
      00540A 00 00 00 4B           2265 	.dw	0,(_MODIFY_HIRC_trimvalue16bit_65536_154)
      00540E 74 72 69 6D 76 61 6C  2266 	.ascii "trimvalue16bit"
             75 65 31 36 62 69 74
      00541C 00                    2267 	.db	0
      00541D 00 00 01 18           2268 	.dw	0,280
      005421 00                    2269 	.uleb128	0
      005422 08                    2270 	.uleb128	8
      005423 75 6E 73 69 67 6E 65  2271 	.ascii "unsigned char"
             64 20 63 68 61 72
      005430 00                    2272 	.db	0
      005431 01                    2273 	.db	1
      005432 08                    2274 	.db	8
      005433 02                    2275 	.uleb128	2
      005434 00 00 01 66           2276 	.dw	0,358
      005438 46 73 79 73 53 65 6C  2277 	.ascii "FsysSelect"
             65 63 74
      005442 00                    2278 	.db	0
      005443 00 00 16 E9           2279 	.dw	0,(_FsysSelect)
      005447 00 00 17 55           2280 	.dw	0,(XG$FsysSelect$0$0+1)
      00544B 01                    2281 	.db	1
      00544C 00 00 03 0C           2282 	.dw	0,(Ldebug_loc_start+60)
      005450 03                    2283 	.uleb128	3
      005451 05                    2284 	.db	5
      005452 03                    2285 	.db	3
      005453 00 00 00 4C           2286 	.dw	0,(_FsysSelect_u8FsysMode_65536_159)
      005457 75 38 46 73 79 73 4D  2287 	.ascii "u8FsysMode"
             6F 64 65
      005461 00                    2288 	.db	0
      005462 00 00 01 18           2289 	.dw	0,280
      005466 04                    2290 	.uleb128	4
      005467 00 00 16 FB           2291 	.dw	0,(Ssys$FsysSelect$58)
      00546B 00 00 17 54           2292 	.dw	0,(Ssys$FsysSelect$73)
      00546F 00                    2293 	.uleb128	0
      005470 02                    2294 	.uleb128	2
      005471 00 00 01 A4           2295 	.dw	0,420
      005475 43 6C 6F 63 6B 45 6E  2296 	.ascii "ClockEnable"
             61 62 6C 65
      005480 00                    2297 	.db	0
      005481 00 00 17 55           2298 	.dw	0,(_ClockEnable)
      005485 00 00 17 90           2299 	.dw	0,(XG$ClockEnable$0$0+1)
      005489 01                    2300 	.db	1
      00548A 00 00 02 F8           2301 	.dw	0,(Ldebug_loc_start+40)
      00548E 03                    2302 	.uleb128	3
      00548F 05                    2303 	.db	5
      005490 03                    2304 	.db	3
      005491 00 00 00 4D           2305 	.dw	0,(_ClockEnable_u8FsysMode_65536_162)
      005495 75 38 46 73 79 73 4D  2306 	.ascii "u8FsysMode"
             6F 64 65
      00549F 00                    2307 	.db	0
      0054A0 00 00 01 18           2308 	.dw	0,280
      0054A4 04                    2309 	.uleb128	4
      0054A5 00 00 17 62           2310 	.dw	0,(Ssys$ClockEnable$81)
      0054A9 00 00 17 8F           2311 	.dw	0,(Ssys$ClockEnable$88)
      0054AD 00                    2312 	.uleb128	0
      0054AE 02                    2313 	.uleb128	2
      0054AF 00 00 01 E3           2314 	.dw	0,483
      0054B3 43 6C 6F 63 6B 44 69  2315 	.ascii "ClockDisable"
             73 61 62 6C 65
      0054BF 00                    2316 	.db	0
      0054C0 00 00 17 90           2317 	.dw	0,(_ClockDisable)
      0054C4 00 00 17 C4           2318 	.dw	0,(XG$ClockDisable$0$0+1)
      0054C8 01                    2319 	.db	1
      0054C9 00 00 02 E4           2320 	.dw	0,(Ldebug_loc_start+20)
      0054CD 03                    2321 	.uleb128	3
      0054CE 05                    2322 	.db	5
      0054CF 03                    2323 	.db	3
      0054D0 00 00 00 4E           2324 	.dw	0,(_ClockDisable_u8FsysMode_65536_165)
      0054D4 75 38 46 73 79 73 4D  2325 	.ascii "u8FsysMode"
             6F 64 65
      0054DE 00                    2326 	.db	0
      0054DF 00 00 01 18           2327 	.dw	0,280
      0054E3 04                    2328 	.uleb128	4
      0054E4 00 00 17 A0           2329 	.dw	0,(Ssys$ClockDisable$97)
      0054E8 00 00 17 C3           2330 	.dw	0,(Ssys$ClockDisable$103)
      0054EC 00                    2331 	.uleb128	0
      0054ED 02                    2332 	.uleb128	2
      0054EE 00 00 02 21           2333 	.dw	0,545
      0054F2 43 6C 6F 63 6B 53 77  2334 	.ascii "ClockSwitch"
             69 74 63 68
      0054FD 00                    2335 	.db	0
      0054FE 00 00 17 C4           2336 	.dw	0,(_ClockSwitch)
      005502 00 00 18 4F           2337 	.dw	0,(XG$ClockSwitch$0$0+1)
      005506 01                    2338 	.db	1
      005507 00 00 02 D0           2339 	.dw	0,(Ldebug_loc_start)
      00550B 03                    2340 	.uleb128	3
      00550C 05                    2341 	.db	5
      00550D 03                    2342 	.db	3
      00550E 00 00 00 4F           2343 	.dw	0,(_ClockSwitch_u8FsysMode_65536_168)
      005512 75 38 46 73 79 73 4D  2344 	.ascii "u8FsysMode"
             6F 64 65
      00551C 00                    2345 	.db	0
      00551D 00 00 01 18           2346 	.dw	0,280
      005521 04                    2347 	.uleb128	4
      005522 00 00 17 E2           2348 	.dw	0,(Ssys$ClockSwitch$113)
      005526 00 00 18 4A           2349 	.dw	0,(Ssys$ClockSwitch$124)
      00552A 00                    2350 	.uleb128	0
      00552B 08                    2351 	.uleb128	8
      00552C 5F 62 69 74           2352 	.ascii "_bit"
      005530 00                    2353 	.db	0
      005531 01                    2354 	.db	1
      005532 08                    2355 	.db	8
      005533 09                    2356 	.uleb128	9
      005534 05                    2357 	.db	5
      005535 03                    2358 	.db	3
      005536 00 00 00 00           2359 	.dw	0,(_BIT_TMP)
      00553A 42 49 54 5F 54 4D 50  2360 	.ascii "BIT_TMP"
      005541 00                    2361 	.db	0
      005542 01                    2362 	.db	1
      005543 01                    2363 	.db	1
      005544 00 00 02 21           2364 	.dw	0,545
      005548 0A                    2365 	.uleb128	10
      005549 00 00 01 18           2366 	.dw	0,280
      00554D 0B                    2367 	.uleb128	11
      00554E 05                    2368 	.db	5
      00554F 03                    2369 	.db	3
      005550 00 00 00 80           2370 	.dw	0,(_P0)
      005554 50 30                 2371 	.ascii "P0"
      005556 00                    2372 	.db	0
      005557 01                    2373 	.db	1
      005558 00 00 02 3E           2374 	.dw	0,574
      00555C 0B                    2375 	.uleb128	11
      00555D 05                    2376 	.db	5
      00555E 03                    2377 	.db	3
      00555F 00 00 00 81           2378 	.dw	0,(_SP)
      005563 53 50                 2379 	.ascii "SP"
      005565 00                    2380 	.db	0
      005566 01                    2381 	.db	1
      005567 00 00 02 3E           2382 	.dw	0,574
      00556B 0B                    2383 	.uleb128	11
      00556C 05                    2384 	.db	5
      00556D 03                    2385 	.db	3
      00556E 00 00 00 82           2386 	.dw	0,(_DPL)
      005572 44 50 4C              2387 	.ascii "DPL"
      005575 00                    2388 	.db	0
      005576 01                    2389 	.db	1
      005577 00 00 02 3E           2390 	.dw	0,574
      00557B 0B                    2391 	.uleb128	11
      00557C 05                    2392 	.db	5
      00557D 03                    2393 	.db	3
      00557E 00 00 00 83           2394 	.dw	0,(_DPH)
      005582 44 50 48              2395 	.ascii "DPH"
      005585 00                    2396 	.db	0
      005586 01                    2397 	.db	1
      005587 00 00 02 3E           2398 	.dw	0,574
      00558B 0B                    2399 	.uleb128	11
      00558C 05                    2400 	.db	5
      00558D 03                    2401 	.db	3
      00558E 00 00 00 84           2402 	.dw	0,(_RCTRIM0)
      005592 52 43 54 52 49 4D 30  2403 	.ascii "RCTRIM0"
      005599 00                    2404 	.db	0
      00559A 01                    2405 	.db	1
      00559B 00 00 02 3E           2406 	.dw	0,574
      00559F 0B                    2407 	.uleb128	11
      0055A0 05                    2408 	.db	5
      0055A1 03                    2409 	.db	3
      0055A2 00 00 00 85           2410 	.dw	0,(_RCTRIM1)
      0055A6 52 43 54 52 49 4D 31  2411 	.ascii "RCTRIM1"
      0055AD 00                    2412 	.db	0
      0055AE 01                    2413 	.db	1
      0055AF 00 00 02 3E           2414 	.dw	0,574
      0055B3 0B                    2415 	.uleb128	11
      0055B4 05                    2416 	.db	5
      0055B5 03                    2417 	.db	3
      0055B6 00 00 00 86           2418 	.dw	0,(_RWK)
      0055BA 52 57 4B              2419 	.ascii "RWK"
      0055BD 00                    2420 	.db	0
      0055BE 01                    2421 	.db	1
      0055BF 00 00 02 3E           2422 	.dw	0,574
      0055C3 0B                    2423 	.uleb128	11
      0055C4 05                    2424 	.db	5
      0055C5 03                    2425 	.db	3
      0055C6 00 00 00 87           2426 	.dw	0,(_PCON)
      0055CA 50 43 4F 4E           2427 	.ascii "PCON"
      0055CE 00                    2428 	.db	0
      0055CF 01                    2429 	.db	1
      0055D0 00 00 02 3E           2430 	.dw	0,574
      0055D4 0B                    2431 	.uleb128	11
      0055D5 05                    2432 	.db	5
      0055D6 03                    2433 	.db	3
      0055D7 00 00 00 88           2434 	.dw	0,(_TCON)
      0055DB 54 43 4F 4E           2435 	.ascii "TCON"
      0055DF 00                    2436 	.db	0
      0055E0 01                    2437 	.db	1
      0055E1 00 00 02 3E           2438 	.dw	0,574
      0055E5 0B                    2439 	.uleb128	11
      0055E6 05                    2440 	.db	5
      0055E7 03                    2441 	.db	3
      0055E8 00 00 00 89           2442 	.dw	0,(_TMOD)
      0055EC 54 4D 4F 44           2443 	.ascii "TMOD"
      0055F0 00                    2444 	.db	0
      0055F1 01                    2445 	.db	1
      0055F2 00 00 02 3E           2446 	.dw	0,574
      0055F6 0B                    2447 	.uleb128	11
      0055F7 05                    2448 	.db	5
      0055F8 03                    2449 	.db	3
      0055F9 00 00 00 8A           2450 	.dw	0,(_TL0)
      0055FD 54 4C 30              2451 	.ascii "TL0"
      005600 00                    2452 	.db	0
      005601 01                    2453 	.db	1
      005602 00 00 02 3E           2454 	.dw	0,574
      005606 0B                    2455 	.uleb128	11
      005607 05                    2456 	.db	5
      005608 03                    2457 	.db	3
      005609 00 00 00 8B           2458 	.dw	0,(_TL1)
      00560D 54 4C 31              2459 	.ascii "TL1"
      005610 00                    2460 	.db	0
      005611 01                    2461 	.db	1
      005612 00 00 02 3E           2462 	.dw	0,574
      005616 0B                    2463 	.uleb128	11
      005617 05                    2464 	.db	5
      005618 03                    2465 	.db	3
      005619 00 00 00 8C           2466 	.dw	0,(_TH0)
      00561D 54 48 30              2467 	.ascii "TH0"
      005620 00                    2468 	.db	0
      005621 01                    2469 	.db	1
      005622 00 00 02 3E           2470 	.dw	0,574
      005626 0B                    2471 	.uleb128	11
      005627 05                    2472 	.db	5
      005628 03                    2473 	.db	3
      005629 00 00 00 8D           2474 	.dw	0,(_TH1)
      00562D 54 48 31              2475 	.ascii "TH1"
      005630 00                    2476 	.db	0
      005631 01                    2477 	.db	1
      005632 00 00 02 3E           2478 	.dw	0,574
      005636 0B                    2479 	.uleb128	11
      005637 05                    2480 	.db	5
      005638 03                    2481 	.db	3
      005639 00 00 00 8E           2482 	.dw	0,(_CKCON)
      00563D 43 4B 43 4F 4E        2483 	.ascii "CKCON"
      005642 00                    2484 	.db	0
      005643 01                    2485 	.db	1
      005644 00 00 02 3E           2486 	.dw	0,574
      005648 0B                    2487 	.uleb128	11
      005649 05                    2488 	.db	5
      00564A 03                    2489 	.db	3
      00564B 00 00 00 8F           2490 	.dw	0,(_WKCON)
      00564F 57 4B 43 4F 4E        2491 	.ascii "WKCON"
      005654 00                    2492 	.db	0
      005655 01                    2493 	.db	1
      005656 00 00 02 3E           2494 	.dw	0,574
      00565A 0B                    2495 	.uleb128	11
      00565B 05                    2496 	.db	5
      00565C 03                    2497 	.db	3
      00565D 00 00 00 90           2498 	.dw	0,(_P1)
      005661 50 31                 2499 	.ascii "P1"
      005663 00                    2500 	.db	0
      005664 01                    2501 	.db	1
      005665 00 00 02 3E           2502 	.dw	0,574
      005669 0B                    2503 	.uleb128	11
      00566A 05                    2504 	.db	5
      00566B 03                    2505 	.db	3
      00566C 00 00 00 91           2506 	.dw	0,(_SFRS)
      005670 53 46 52 53           2507 	.ascii "SFRS"
      005674 00                    2508 	.db	0
      005675 01                    2509 	.db	1
      005676 00 00 02 3E           2510 	.dw	0,574
      00567A 0B                    2511 	.uleb128	11
      00567B 05                    2512 	.db	5
      00567C 03                    2513 	.db	3
      00567D 00 00 00 92           2514 	.dw	0,(_CAPCON0)
      005681 43 41 50 43 4F 4E 30  2515 	.ascii "CAPCON0"
      005688 00                    2516 	.db	0
      005689 01                    2517 	.db	1
      00568A 00 00 02 3E           2518 	.dw	0,574
      00568E 0B                    2519 	.uleb128	11
      00568F 05                    2520 	.db	5
      005690 03                    2521 	.db	3
      005691 00 00 00 93           2522 	.dw	0,(_CAPCON1)
      005695 43 41 50 43 4F 4E 31  2523 	.ascii "CAPCON1"
      00569C 00                    2524 	.db	0
      00569D 01                    2525 	.db	1
      00569E 00 00 02 3E           2526 	.dw	0,574
      0056A2 0B                    2527 	.uleb128	11
      0056A3 05                    2528 	.db	5
      0056A4 03                    2529 	.db	3
      0056A5 00 00 00 94           2530 	.dw	0,(_CAPCON2)
      0056A9 43 41 50 43 4F 4E 32  2531 	.ascii "CAPCON2"
      0056B0 00                    2532 	.db	0
      0056B1 01                    2533 	.db	1
      0056B2 00 00 02 3E           2534 	.dw	0,574
      0056B6 0B                    2535 	.uleb128	11
      0056B7 05                    2536 	.db	5
      0056B8 03                    2537 	.db	3
      0056B9 00 00 00 95           2538 	.dw	0,(_CKDIV)
      0056BD 43 4B 44 49 56        2539 	.ascii "CKDIV"
      0056C2 00                    2540 	.db	0
      0056C3 01                    2541 	.db	1
      0056C4 00 00 02 3E           2542 	.dw	0,574
      0056C8 0B                    2543 	.uleb128	11
      0056C9 05                    2544 	.db	5
      0056CA 03                    2545 	.db	3
      0056CB 00 00 00 96           2546 	.dw	0,(_CKSWT)
      0056CF 43 4B 53 57 54        2547 	.ascii "CKSWT"
      0056D4 00                    2548 	.db	0
      0056D5 01                    2549 	.db	1
      0056D6 00 00 02 3E           2550 	.dw	0,574
      0056DA 0B                    2551 	.uleb128	11
      0056DB 05                    2552 	.db	5
      0056DC 03                    2553 	.db	3
      0056DD 00 00 00 97           2554 	.dw	0,(_CKEN)
      0056E1 43 4B 45 4E           2555 	.ascii "CKEN"
      0056E5 00                    2556 	.db	0
      0056E6 01                    2557 	.db	1
      0056E7 00 00 02 3E           2558 	.dw	0,574
      0056EB 0B                    2559 	.uleb128	11
      0056EC 05                    2560 	.db	5
      0056ED 03                    2561 	.db	3
      0056EE 00 00 00 98           2562 	.dw	0,(_SCON)
      0056F2 53 43 4F 4E           2563 	.ascii "SCON"
      0056F6 00                    2564 	.db	0
      0056F7 01                    2565 	.db	1
      0056F8 00 00 02 3E           2566 	.dw	0,574
      0056FC 0B                    2567 	.uleb128	11
      0056FD 05                    2568 	.db	5
      0056FE 03                    2569 	.db	3
      0056FF 00 00 00 99           2570 	.dw	0,(_SBUF)
      005703 53 42 55 46           2571 	.ascii "SBUF"
      005707 00                    2572 	.db	0
      005708 01                    2573 	.db	1
      005709 00 00 02 3E           2574 	.dw	0,574
      00570D 0B                    2575 	.uleb128	11
      00570E 05                    2576 	.db	5
      00570F 03                    2577 	.db	3
      005710 00 00 00 9A           2578 	.dw	0,(_SBUF_1)
      005714 53 42 55 46 5F 31     2579 	.ascii "SBUF_1"
      00571A 00                    2580 	.db	0
      00571B 01                    2581 	.db	1
      00571C 00 00 02 3E           2582 	.dw	0,574
      005720 0B                    2583 	.uleb128	11
      005721 05                    2584 	.db	5
      005722 03                    2585 	.db	3
      005723 00 00 00 9B           2586 	.dw	0,(_EIE)
      005727 45 49 45              2587 	.ascii "EIE"
      00572A 00                    2588 	.db	0
      00572B 01                    2589 	.db	1
      00572C 00 00 02 3E           2590 	.dw	0,574
      005730 0B                    2591 	.uleb128	11
      005731 05                    2592 	.db	5
      005732 03                    2593 	.db	3
      005733 00 00 00 9C           2594 	.dw	0,(_EIE1)
      005737 45 49 45 31           2595 	.ascii "EIE1"
      00573B 00                    2596 	.db	0
      00573C 01                    2597 	.db	1
      00573D 00 00 02 3E           2598 	.dw	0,574
      005741 0B                    2599 	.uleb128	11
      005742 05                    2600 	.db	5
      005743 03                    2601 	.db	3
      005744 00 00 00 9F           2602 	.dw	0,(_CHPCON)
      005748 43 48 50 43 4F 4E     2603 	.ascii "CHPCON"
      00574E 00                    2604 	.db	0
      00574F 01                    2605 	.db	1
      005750 00 00 02 3E           2606 	.dw	0,574
      005754 0B                    2607 	.uleb128	11
      005755 05                    2608 	.db	5
      005756 03                    2609 	.db	3
      005757 00 00 00 A0           2610 	.dw	0,(_P2)
      00575B 50 32                 2611 	.ascii "P2"
      00575D 00                    2612 	.db	0
      00575E 01                    2613 	.db	1
      00575F 00 00 02 3E           2614 	.dw	0,574
      005763 0B                    2615 	.uleb128	11
      005764 05                    2616 	.db	5
      005765 03                    2617 	.db	3
      005766 00 00 00 A2           2618 	.dw	0,(_AUXR1)
      00576A 41 55 58 52 31        2619 	.ascii "AUXR1"
      00576F 00                    2620 	.db	0
      005770 01                    2621 	.db	1
      005771 00 00 02 3E           2622 	.dw	0,574
      005775 0B                    2623 	.uleb128	11
      005776 05                    2624 	.db	5
      005777 03                    2625 	.db	3
      005778 00 00 00 A3           2626 	.dw	0,(_BODCON0)
      00577C 42 4F 44 43 4F 4E 30  2627 	.ascii "BODCON0"
      005783 00                    2628 	.db	0
      005784 01                    2629 	.db	1
      005785 00 00 02 3E           2630 	.dw	0,574
      005789 0B                    2631 	.uleb128	11
      00578A 05                    2632 	.db	5
      00578B 03                    2633 	.db	3
      00578C 00 00 00 A4           2634 	.dw	0,(_IAPTRG)
      005790 49 41 50 54 52 47     2635 	.ascii "IAPTRG"
      005796 00                    2636 	.db	0
      005797 01                    2637 	.db	1
      005798 00 00 02 3E           2638 	.dw	0,574
      00579C 0B                    2639 	.uleb128	11
      00579D 05                    2640 	.db	5
      00579E 03                    2641 	.db	3
      00579F 00 00 00 A5           2642 	.dw	0,(_IAPUEN)
      0057A3 49 41 50 55 45 4E     2643 	.ascii "IAPUEN"
      0057A9 00                    2644 	.db	0
      0057AA 01                    2645 	.db	1
      0057AB 00 00 02 3E           2646 	.dw	0,574
      0057AF 0B                    2647 	.uleb128	11
      0057B0 05                    2648 	.db	5
      0057B1 03                    2649 	.db	3
      0057B2 00 00 00 A6           2650 	.dw	0,(_IAPAL)
      0057B6 49 41 50 41 4C        2651 	.ascii "IAPAL"
      0057BB 00                    2652 	.db	0
      0057BC 01                    2653 	.db	1
      0057BD 00 00 02 3E           2654 	.dw	0,574
      0057C1 0B                    2655 	.uleb128	11
      0057C2 05                    2656 	.db	5
      0057C3 03                    2657 	.db	3
      0057C4 00 00 00 A7           2658 	.dw	0,(_IAPAH)
      0057C8 49 41 50 41 48        2659 	.ascii "IAPAH"
      0057CD 00                    2660 	.db	0
      0057CE 01                    2661 	.db	1
      0057CF 00 00 02 3E           2662 	.dw	0,574
      0057D3 0B                    2663 	.uleb128	11
      0057D4 05                    2664 	.db	5
      0057D5 03                    2665 	.db	3
      0057D6 00 00 00 A8           2666 	.dw	0,(_IE)
      0057DA 49 45                 2667 	.ascii "IE"
      0057DC 00                    2668 	.db	0
      0057DD 01                    2669 	.db	1
      0057DE 00 00 02 3E           2670 	.dw	0,574
      0057E2 0B                    2671 	.uleb128	11
      0057E3 05                    2672 	.db	5
      0057E4 03                    2673 	.db	3
      0057E5 00 00 00 A9           2674 	.dw	0,(_SADDR)
      0057E9 53 41 44 44 52        2675 	.ascii "SADDR"
      0057EE 00                    2676 	.db	0
      0057EF 01                    2677 	.db	1
      0057F0 00 00 02 3E           2678 	.dw	0,574
      0057F4 0B                    2679 	.uleb128	11
      0057F5 05                    2680 	.db	5
      0057F6 03                    2681 	.db	3
      0057F7 00 00 00 AA           2682 	.dw	0,(_WDCON)
      0057FB 57 44 43 4F 4E        2683 	.ascii "WDCON"
      005800 00                    2684 	.db	0
      005801 01                    2685 	.db	1
      005802 00 00 02 3E           2686 	.dw	0,574
      005806 0B                    2687 	.uleb128	11
      005807 05                    2688 	.db	5
      005808 03                    2689 	.db	3
      005809 00 00 00 AB           2690 	.dw	0,(_BODCON1)
      00580D 42 4F 44 43 4F 4E 31  2691 	.ascii "BODCON1"
      005814 00                    2692 	.db	0
      005815 01                    2693 	.db	1
      005816 00 00 02 3E           2694 	.dw	0,574
      00581A 0B                    2695 	.uleb128	11
      00581B 05                    2696 	.db	5
      00581C 03                    2697 	.db	3
      00581D 00 00 00 AC           2698 	.dw	0,(_P3M1)
      005821 50 33 4D 31           2699 	.ascii "P3M1"
      005825 00                    2700 	.db	0
      005826 01                    2701 	.db	1
      005827 00 00 02 3E           2702 	.dw	0,574
      00582B 0B                    2703 	.uleb128	11
      00582C 05                    2704 	.db	5
      00582D 03                    2705 	.db	3
      00582E 00 00 00 AC           2706 	.dw	0,(_P3S)
      005832 50 33 53              2707 	.ascii "P3S"
      005835 00                    2708 	.db	0
      005836 01                    2709 	.db	1
      005837 00 00 02 3E           2710 	.dw	0,574
      00583B 0B                    2711 	.uleb128	11
      00583C 05                    2712 	.db	5
      00583D 03                    2713 	.db	3
      00583E 00 00 00 AD           2714 	.dw	0,(_P3M2)
      005842 50 33 4D 32           2715 	.ascii "P3M2"
      005846 00                    2716 	.db	0
      005847 01                    2717 	.db	1
      005848 00 00 02 3E           2718 	.dw	0,574
      00584C 0B                    2719 	.uleb128	11
      00584D 05                    2720 	.db	5
      00584E 03                    2721 	.db	3
      00584F 00 00 00 AD           2722 	.dw	0,(_P3SR)
      005853 50 33 53 52           2723 	.ascii "P3SR"
      005857 00                    2724 	.db	0
      005858 01                    2725 	.db	1
      005859 00 00 02 3E           2726 	.dw	0,574
      00585D 0B                    2727 	.uleb128	11
      00585E 05                    2728 	.db	5
      00585F 03                    2729 	.db	3
      005860 00 00 00 AE           2730 	.dw	0,(_IAPFD)
      005864 49 41 50 46 44        2731 	.ascii "IAPFD"
      005869 00                    2732 	.db	0
      00586A 01                    2733 	.db	1
      00586B 00 00 02 3E           2734 	.dw	0,574
      00586F 0B                    2735 	.uleb128	11
      005870 05                    2736 	.db	5
      005871 03                    2737 	.db	3
      005872 00 00 00 AF           2738 	.dw	0,(_IAPCN)
      005876 49 41 50 43 4E        2739 	.ascii "IAPCN"
      00587B 00                    2740 	.db	0
      00587C 01                    2741 	.db	1
      00587D 00 00 02 3E           2742 	.dw	0,574
      005881 0B                    2743 	.uleb128	11
      005882 05                    2744 	.db	5
      005883 03                    2745 	.db	3
      005884 00 00 00 B0           2746 	.dw	0,(_P3)
      005888 50 33                 2747 	.ascii "P3"
      00588A 00                    2748 	.db	0
      00588B 01                    2749 	.db	1
      00588C 00 00 02 3E           2750 	.dw	0,574
      005890 0B                    2751 	.uleb128	11
      005891 05                    2752 	.db	5
      005892 03                    2753 	.db	3
      005893 00 00 00 B1           2754 	.dw	0,(_P0M1)
      005897 50 30 4D 31           2755 	.ascii "P0M1"
      00589B 00                    2756 	.db	0
      00589C 01                    2757 	.db	1
      00589D 00 00 02 3E           2758 	.dw	0,574
      0058A1 0B                    2759 	.uleb128	11
      0058A2 05                    2760 	.db	5
      0058A3 03                    2761 	.db	3
      0058A4 00 00 00 B1           2762 	.dw	0,(_P0S)
      0058A8 50 30 53              2763 	.ascii "P0S"
      0058AB 00                    2764 	.db	0
      0058AC 01                    2765 	.db	1
      0058AD 00 00 02 3E           2766 	.dw	0,574
      0058B1 0B                    2767 	.uleb128	11
      0058B2 05                    2768 	.db	5
      0058B3 03                    2769 	.db	3
      0058B4 00 00 00 B2           2770 	.dw	0,(_P0M2)
      0058B8 50 30 4D 32           2771 	.ascii "P0M2"
      0058BC 00                    2772 	.db	0
      0058BD 01                    2773 	.db	1
      0058BE 00 00 02 3E           2774 	.dw	0,574
      0058C2 0B                    2775 	.uleb128	11
      0058C3 05                    2776 	.db	5
      0058C4 03                    2777 	.db	3
      0058C5 00 00 00 B2           2778 	.dw	0,(_P0SR)
      0058C9 50 30 53 52           2779 	.ascii "P0SR"
      0058CD 00                    2780 	.db	0
      0058CE 01                    2781 	.db	1
      0058CF 00 00 02 3E           2782 	.dw	0,574
      0058D3 0B                    2783 	.uleb128	11
      0058D4 05                    2784 	.db	5
      0058D5 03                    2785 	.db	3
      0058D6 00 00 00 B3           2786 	.dw	0,(_P1M1)
      0058DA 50 31 4D 31           2787 	.ascii "P1M1"
      0058DE 00                    2788 	.db	0
      0058DF 01                    2789 	.db	1
      0058E0 00 00 02 3E           2790 	.dw	0,574
      0058E4 0B                    2791 	.uleb128	11
      0058E5 05                    2792 	.db	5
      0058E6 03                    2793 	.db	3
      0058E7 00 00 00 B3           2794 	.dw	0,(_P1S)
      0058EB 50 31 53              2795 	.ascii "P1S"
      0058EE 00                    2796 	.db	0
      0058EF 01                    2797 	.db	1
      0058F0 00 00 02 3E           2798 	.dw	0,574
      0058F4 0B                    2799 	.uleb128	11
      0058F5 05                    2800 	.db	5
      0058F6 03                    2801 	.db	3
      0058F7 00 00 00 B4           2802 	.dw	0,(_P1M2)
      0058FB 50 31 4D 32           2803 	.ascii "P1M2"
      0058FF 00                    2804 	.db	0
      005900 01                    2805 	.db	1
      005901 00 00 02 3E           2806 	.dw	0,574
      005905 0B                    2807 	.uleb128	11
      005906 05                    2808 	.db	5
      005907 03                    2809 	.db	3
      005908 00 00 00 B4           2810 	.dw	0,(_P1SR)
      00590C 50 31 53 52           2811 	.ascii "P1SR"
      005910 00                    2812 	.db	0
      005911 01                    2813 	.db	1
      005912 00 00 02 3E           2814 	.dw	0,574
      005916 0B                    2815 	.uleb128	11
      005917 05                    2816 	.db	5
      005918 03                    2817 	.db	3
      005919 00 00 00 B5           2818 	.dw	0,(_P2S)
      00591D 50 32 53              2819 	.ascii "P2S"
      005920 00                    2820 	.db	0
      005921 01                    2821 	.db	1
      005922 00 00 02 3E           2822 	.dw	0,574
      005926 0B                    2823 	.uleb128	11
      005927 05                    2824 	.db	5
      005928 03                    2825 	.db	3
      005929 00 00 00 B7           2826 	.dw	0,(_IPH)
      00592D 49 50 48              2827 	.ascii "IPH"
      005930 00                    2828 	.db	0
      005931 01                    2829 	.db	1
      005932 00 00 02 3E           2830 	.dw	0,574
      005936 0B                    2831 	.uleb128	11
      005937 05                    2832 	.db	5
      005938 03                    2833 	.db	3
      005939 00 00 00 B7           2834 	.dw	0,(_PWMINTC)
      00593D 50 57 4D 49 4E 54 43  2835 	.ascii "PWMINTC"
      005944 00                    2836 	.db	0
      005945 01                    2837 	.db	1
      005946 00 00 02 3E           2838 	.dw	0,574
      00594A 0B                    2839 	.uleb128	11
      00594B 05                    2840 	.db	5
      00594C 03                    2841 	.db	3
      00594D 00 00 00 B8           2842 	.dw	0,(_IP)
      005951 49 50                 2843 	.ascii "IP"
      005953 00                    2844 	.db	0
      005954 01                    2845 	.db	1
      005955 00 00 02 3E           2846 	.dw	0,574
      005959 0B                    2847 	.uleb128	11
      00595A 05                    2848 	.db	5
      00595B 03                    2849 	.db	3
      00595C 00 00 00 B9           2850 	.dw	0,(_SADEN)
      005960 53 41 44 45 4E        2851 	.ascii "SADEN"
      005965 00                    2852 	.db	0
      005966 01                    2853 	.db	1
      005967 00 00 02 3E           2854 	.dw	0,574
      00596B 0B                    2855 	.uleb128	11
      00596C 05                    2856 	.db	5
      00596D 03                    2857 	.db	3
      00596E 00 00 00 BA           2858 	.dw	0,(_SADEN_1)
      005972 53 41 44 45 4E 5F 31  2859 	.ascii "SADEN_1"
      005979 00                    2860 	.db	0
      00597A 01                    2861 	.db	1
      00597B 00 00 02 3E           2862 	.dw	0,574
      00597F 0B                    2863 	.uleb128	11
      005980 05                    2864 	.db	5
      005981 03                    2865 	.db	3
      005982 00 00 00 BB           2866 	.dw	0,(_SADDR_1)
      005986 53 41 44 44 52 5F 31  2867 	.ascii "SADDR_1"
      00598D 00                    2868 	.db	0
      00598E 01                    2869 	.db	1
      00598F 00 00 02 3E           2870 	.dw	0,574
      005993 0B                    2871 	.uleb128	11
      005994 05                    2872 	.db	5
      005995 03                    2873 	.db	3
      005996 00 00 00 BC           2874 	.dw	0,(_I2DAT)
      00599A 49 32 44 41 54        2875 	.ascii "I2DAT"
      00599F 00                    2876 	.db	0
      0059A0 01                    2877 	.db	1
      0059A1 00 00 02 3E           2878 	.dw	0,574
      0059A5 0B                    2879 	.uleb128	11
      0059A6 05                    2880 	.db	5
      0059A7 03                    2881 	.db	3
      0059A8 00 00 00 BD           2882 	.dw	0,(_I2STAT)
      0059AC 49 32 53 54 41 54     2883 	.ascii "I2STAT"
      0059B2 00                    2884 	.db	0
      0059B3 01                    2885 	.db	1
      0059B4 00 00 02 3E           2886 	.dw	0,574
      0059B8 0B                    2887 	.uleb128	11
      0059B9 05                    2888 	.db	5
      0059BA 03                    2889 	.db	3
      0059BB 00 00 00 BE           2890 	.dw	0,(_I2CLK)
      0059BF 49 32 43 4C 4B        2891 	.ascii "I2CLK"
      0059C4 00                    2892 	.db	0
      0059C5 01                    2893 	.db	1
      0059C6 00 00 02 3E           2894 	.dw	0,574
      0059CA 0B                    2895 	.uleb128	11
      0059CB 05                    2896 	.db	5
      0059CC 03                    2897 	.db	3
      0059CD 00 00 00 BF           2898 	.dw	0,(_I2TOC)
      0059D1 49 32 54 4F 43        2899 	.ascii "I2TOC"
      0059D6 00                    2900 	.db	0
      0059D7 01                    2901 	.db	1
      0059D8 00 00 02 3E           2902 	.dw	0,574
      0059DC 0B                    2903 	.uleb128	11
      0059DD 05                    2904 	.db	5
      0059DE 03                    2905 	.db	3
      0059DF 00 00 00 C0           2906 	.dw	0,(_I2CON)
      0059E3 49 32 43 4F 4E        2907 	.ascii "I2CON"
      0059E8 00                    2908 	.db	0
      0059E9 01                    2909 	.db	1
      0059EA 00 00 02 3E           2910 	.dw	0,574
      0059EE 0B                    2911 	.uleb128	11
      0059EF 05                    2912 	.db	5
      0059F0 03                    2913 	.db	3
      0059F1 00 00 00 C1           2914 	.dw	0,(_I2ADDR)
      0059F5 49 32 41 44 44 52     2915 	.ascii "I2ADDR"
      0059FB 00                    2916 	.db	0
      0059FC 01                    2917 	.db	1
      0059FD 00 00 02 3E           2918 	.dw	0,574
      005A01 0B                    2919 	.uleb128	11
      005A02 05                    2920 	.db	5
      005A03 03                    2921 	.db	3
      005A04 00 00 00 C2           2922 	.dw	0,(_ADCRL)
      005A08 41 44 43 52 4C        2923 	.ascii "ADCRL"
      005A0D 00                    2924 	.db	0
      005A0E 01                    2925 	.db	1
      005A0F 00 00 02 3E           2926 	.dw	0,574
      005A13 0B                    2927 	.uleb128	11
      005A14 05                    2928 	.db	5
      005A15 03                    2929 	.db	3
      005A16 00 00 00 C3           2930 	.dw	0,(_ADCRH)
      005A1A 41 44 43 52 48        2931 	.ascii "ADCRH"
      005A1F 00                    2932 	.db	0
      005A20 01                    2933 	.db	1
      005A21 00 00 02 3E           2934 	.dw	0,574
      005A25 0B                    2935 	.uleb128	11
      005A26 05                    2936 	.db	5
      005A27 03                    2937 	.db	3
      005A28 00 00 00 C4           2938 	.dw	0,(_T3CON)
      005A2C 54 33 43 4F 4E        2939 	.ascii "T3CON"
      005A31 00                    2940 	.db	0
      005A32 01                    2941 	.db	1
      005A33 00 00 02 3E           2942 	.dw	0,574
      005A37 0B                    2943 	.uleb128	11
      005A38 05                    2944 	.db	5
      005A39 03                    2945 	.db	3
      005A3A 00 00 00 C4           2946 	.dw	0,(_PWM4H)
      005A3E 50 57 4D 34 48        2947 	.ascii "PWM4H"
      005A43 00                    2948 	.db	0
      005A44 01                    2949 	.db	1
      005A45 00 00 02 3E           2950 	.dw	0,574
      005A49 0B                    2951 	.uleb128	11
      005A4A 05                    2952 	.db	5
      005A4B 03                    2953 	.db	3
      005A4C 00 00 00 C5           2954 	.dw	0,(_RL3)
      005A50 52 4C 33              2955 	.ascii "RL3"
      005A53 00                    2956 	.db	0
      005A54 01                    2957 	.db	1
      005A55 00 00 02 3E           2958 	.dw	0,574
      005A59 0B                    2959 	.uleb128	11
      005A5A 05                    2960 	.db	5
      005A5B 03                    2961 	.db	3
      005A5C 00 00 00 C5           2962 	.dw	0,(_PWM5H)
      005A60 50 57 4D 35 48        2963 	.ascii "PWM5H"
      005A65 00                    2964 	.db	0
      005A66 01                    2965 	.db	1
      005A67 00 00 02 3E           2966 	.dw	0,574
      005A6B 0B                    2967 	.uleb128	11
      005A6C 05                    2968 	.db	5
      005A6D 03                    2969 	.db	3
      005A6E 00 00 00 C6           2970 	.dw	0,(_RH3)
      005A72 52 48 33              2971 	.ascii "RH3"
      005A75 00                    2972 	.db	0
      005A76 01                    2973 	.db	1
      005A77 00 00 02 3E           2974 	.dw	0,574
      005A7B 0B                    2975 	.uleb128	11
      005A7C 05                    2976 	.db	5
      005A7D 03                    2977 	.db	3
      005A7E 00 00 00 C6           2978 	.dw	0,(_PIOCON1)
      005A82 50 49 4F 43 4F 4E 31  2979 	.ascii "PIOCON1"
      005A89 00                    2980 	.db	0
      005A8A 01                    2981 	.db	1
      005A8B 00 00 02 3E           2982 	.dw	0,574
      005A8F 0B                    2983 	.uleb128	11
      005A90 05                    2984 	.db	5
      005A91 03                    2985 	.db	3
      005A92 00 00 00 C7           2986 	.dw	0,(_TA)
      005A96 54 41                 2987 	.ascii "TA"
      005A98 00                    2988 	.db	0
      005A99 01                    2989 	.db	1
      005A9A 00 00 02 3E           2990 	.dw	0,574
      005A9E 0B                    2991 	.uleb128	11
      005A9F 05                    2992 	.db	5
      005AA0 03                    2993 	.db	3
      005AA1 00 00 00 C8           2994 	.dw	0,(_T2CON)
      005AA5 54 32 43 4F 4E        2995 	.ascii "T2CON"
      005AAA 00                    2996 	.db	0
      005AAB 01                    2997 	.db	1
      005AAC 00 00 02 3E           2998 	.dw	0,574
      005AB0 0B                    2999 	.uleb128	11
      005AB1 05                    3000 	.db	5
      005AB2 03                    3001 	.db	3
      005AB3 00 00 00 C9           3002 	.dw	0,(_T2MOD)
      005AB7 54 32 4D 4F 44        3003 	.ascii "T2MOD"
      005ABC 00                    3004 	.db	0
      005ABD 01                    3005 	.db	1
      005ABE 00 00 02 3E           3006 	.dw	0,574
      005AC2 0B                    3007 	.uleb128	11
      005AC3 05                    3008 	.db	5
      005AC4 03                    3009 	.db	3
      005AC5 00 00 00 CA           3010 	.dw	0,(_RCMP2L)
      005AC9 52 43 4D 50 32 4C     3011 	.ascii "RCMP2L"
      005ACF 00                    3012 	.db	0
      005AD0 01                    3013 	.db	1
      005AD1 00 00 02 3E           3014 	.dw	0,574
      005AD5 0B                    3015 	.uleb128	11
      005AD6 05                    3016 	.db	5
      005AD7 03                    3017 	.db	3
      005AD8 00 00 00 CB           3018 	.dw	0,(_RCMP2H)
      005ADC 52 43 4D 50 32 48     3019 	.ascii "RCMP2H"
      005AE2 00                    3020 	.db	0
      005AE3 01                    3021 	.db	1
      005AE4 00 00 02 3E           3022 	.dw	0,574
      005AE8 0B                    3023 	.uleb128	11
      005AE9 05                    3024 	.db	5
      005AEA 03                    3025 	.db	3
      005AEB 00 00 00 CC           3026 	.dw	0,(_TL2)
      005AEF 54 4C 32              3027 	.ascii "TL2"
      005AF2 00                    3028 	.db	0
      005AF3 01                    3029 	.db	1
      005AF4 00 00 02 3E           3030 	.dw	0,574
      005AF8 0B                    3031 	.uleb128	11
      005AF9 05                    3032 	.db	5
      005AFA 03                    3033 	.db	3
      005AFB 00 00 00 CC           3034 	.dw	0,(_PWM4L)
      005AFF 50 57 4D 34 4C        3035 	.ascii "PWM4L"
      005B04 00                    3036 	.db	0
      005B05 01                    3037 	.db	1
      005B06 00 00 02 3E           3038 	.dw	0,574
      005B0A 0B                    3039 	.uleb128	11
      005B0B 05                    3040 	.db	5
      005B0C 03                    3041 	.db	3
      005B0D 00 00 00 CD           3042 	.dw	0,(_TH2)
      005B11 54 48 32              3043 	.ascii "TH2"
      005B14 00                    3044 	.db	0
      005B15 01                    3045 	.db	1
      005B16 00 00 02 3E           3046 	.dw	0,574
      005B1A 0B                    3047 	.uleb128	11
      005B1B 05                    3048 	.db	5
      005B1C 03                    3049 	.db	3
      005B1D 00 00 00 CD           3050 	.dw	0,(_PWM5L)
      005B21 50 57 4D 35 4C        3051 	.ascii "PWM5L"
      005B26 00                    3052 	.db	0
      005B27 01                    3053 	.db	1
      005B28 00 00 02 3E           3054 	.dw	0,574
      005B2C 0B                    3055 	.uleb128	11
      005B2D 05                    3056 	.db	5
      005B2E 03                    3057 	.db	3
      005B2F 00 00 00 CE           3058 	.dw	0,(_ADCMPL)
      005B33 41 44 43 4D 50 4C     3059 	.ascii "ADCMPL"
      005B39 00                    3060 	.db	0
      005B3A 01                    3061 	.db	1
      005B3B 00 00 02 3E           3062 	.dw	0,574
      005B3F 0B                    3063 	.uleb128	11
      005B40 05                    3064 	.db	5
      005B41 03                    3065 	.db	3
      005B42 00 00 00 CF           3066 	.dw	0,(_ADCMPH)
      005B46 41 44 43 4D 50 48     3067 	.ascii "ADCMPH"
      005B4C 00                    3068 	.db	0
      005B4D 01                    3069 	.db	1
      005B4E 00 00 02 3E           3070 	.dw	0,574
      005B52 0B                    3071 	.uleb128	11
      005B53 05                    3072 	.db	5
      005B54 03                    3073 	.db	3
      005B55 00 00 00 D0           3074 	.dw	0,(_PSW)
      005B59 50 53 57              3075 	.ascii "PSW"
      005B5C 00                    3076 	.db	0
      005B5D 01                    3077 	.db	1
      005B5E 00 00 02 3E           3078 	.dw	0,574
      005B62 0B                    3079 	.uleb128	11
      005B63 05                    3080 	.db	5
      005B64 03                    3081 	.db	3
      005B65 00 00 00 D1           3082 	.dw	0,(_PWMPH)
      005B69 50 57 4D 50 48        3083 	.ascii "PWMPH"
      005B6E 00                    3084 	.db	0
      005B6F 01                    3085 	.db	1
      005B70 00 00 02 3E           3086 	.dw	0,574
      005B74 0B                    3087 	.uleb128	11
      005B75 05                    3088 	.db	5
      005B76 03                    3089 	.db	3
      005B77 00 00 00 D2           3090 	.dw	0,(_PWM0H)
      005B7B 50 57 4D 30 48        3091 	.ascii "PWM0H"
      005B80 00                    3092 	.db	0
      005B81 01                    3093 	.db	1
      005B82 00 00 02 3E           3094 	.dw	0,574
      005B86 0B                    3095 	.uleb128	11
      005B87 05                    3096 	.db	5
      005B88 03                    3097 	.db	3
      005B89 00 00 00 D3           3098 	.dw	0,(_PWM1H)
      005B8D 50 57 4D 31 48        3099 	.ascii "PWM1H"
      005B92 00                    3100 	.db	0
      005B93 01                    3101 	.db	1
      005B94 00 00 02 3E           3102 	.dw	0,574
      005B98 0B                    3103 	.uleb128	11
      005B99 05                    3104 	.db	5
      005B9A 03                    3105 	.db	3
      005B9B 00 00 00 D4           3106 	.dw	0,(_PWM2H)
      005B9F 50 57 4D 32 48        3107 	.ascii "PWM2H"
      005BA4 00                    3108 	.db	0
      005BA5 01                    3109 	.db	1
      005BA6 00 00 02 3E           3110 	.dw	0,574
      005BAA 0B                    3111 	.uleb128	11
      005BAB 05                    3112 	.db	5
      005BAC 03                    3113 	.db	3
      005BAD 00 00 00 D5           3114 	.dw	0,(_PWM3H)
      005BB1 50 57 4D 33 48        3115 	.ascii "PWM3H"
      005BB6 00                    3116 	.db	0
      005BB7 01                    3117 	.db	1
      005BB8 00 00 02 3E           3118 	.dw	0,574
      005BBC 0B                    3119 	.uleb128	11
      005BBD 05                    3120 	.db	5
      005BBE 03                    3121 	.db	3
      005BBF 00 00 00 D6           3122 	.dw	0,(_PNP)
      005BC3 50 4E 50              3123 	.ascii "PNP"
      005BC6 00                    3124 	.db	0
      005BC7 01                    3125 	.db	1
      005BC8 00 00 02 3E           3126 	.dw	0,574
      005BCC 0B                    3127 	.uleb128	11
      005BCD 05                    3128 	.db	5
      005BCE 03                    3129 	.db	3
      005BCF 00 00 00 D7           3130 	.dw	0,(_FBD)
      005BD3 46 42 44              3131 	.ascii "FBD"
      005BD6 00                    3132 	.db	0
      005BD7 01                    3133 	.db	1
      005BD8 00 00 02 3E           3134 	.dw	0,574
      005BDC 0B                    3135 	.uleb128	11
      005BDD 05                    3136 	.db	5
      005BDE 03                    3137 	.db	3
      005BDF 00 00 00 D8           3138 	.dw	0,(_PWMCON0)
      005BE3 50 57 4D 43 4F 4E 30  3139 	.ascii "PWMCON0"
      005BEA 00                    3140 	.db	0
      005BEB 01                    3141 	.db	1
      005BEC 00 00 02 3E           3142 	.dw	0,574
      005BF0 0B                    3143 	.uleb128	11
      005BF1 05                    3144 	.db	5
      005BF2 03                    3145 	.db	3
      005BF3 00 00 00 D9           3146 	.dw	0,(_PWMPL)
      005BF7 50 57 4D 50 4C        3147 	.ascii "PWMPL"
      005BFC 00                    3148 	.db	0
      005BFD 01                    3149 	.db	1
      005BFE 00 00 02 3E           3150 	.dw	0,574
      005C02 0B                    3151 	.uleb128	11
      005C03 05                    3152 	.db	5
      005C04 03                    3153 	.db	3
      005C05 00 00 00 DA           3154 	.dw	0,(_PWM0L)
      005C09 50 57 4D 30 4C        3155 	.ascii "PWM0L"
      005C0E 00                    3156 	.db	0
      005C0F 01                    3157 	.db	1
      005C10 00 00 02 3E           3158 	.dw	0,574
      005C14 0B                    3159 	.uleb128	11
      005C15 05                    3160 	.db	5
      005C16 03                    3161 	.db	3
      005C17 00 00 00 DB           3162 	.dw	0,(_PWM1L)
      005C1B 50 57 4D 31 4C        3163 	.ascii "PWM1L"
      005C20 00                    3164 	.db	0
      005C21 01                    3165 	.db	1
      005C22 00 00 02 3E           3166 	.dw	0,574
      005C26 0B                    3167 	.uleb128	11
      005C27 05                    3168 	.db	5
      005C28 03                    3169 	.db	3
      005C29 00 00 00 DC           3170 	.dw	0,(_PWM2L)
      005C2D 50 57 4D 32 4C        3171 	.ascii "PWM2L"
      005C32 00                    3172 	.db	0
      005C33 01                    3173 	.db	1
      005C34 00 00 02 3E           3174 	.dw	0,574
      005C38 0B                    3175 	.uleb128	11
      005C39 05                    3176 	.db	5
      005C3A 03                    3177 	.db	3
      005C3B 00 00 00 DD           3178 	.dw	0,(_PWM3L)
      005C3F 50 57 4D 33 4C        3179 	.ascii "PWM3L"
      005C44 00                    3180 	.db	0
      005C45 01                    3181 	.db	1
      005C46 00 00 02 3E           3182 	.dw	0,574
      005C4A 0B                    3183 	.uleb128	11
      005C4B 05                    3184 	.db	5
      005C4C 03                    3185 	.db	3
      005C4D 00 00 00 DE           3186 	.dw	0,(_PIOCON0)
      005C51 50 49 4F 43 4F 4E 30  3187 	.ascii "PIOCON0"
      005C58 00                    3188 	.db	0
      005C59 01                    3189 	.db	1
      005C5A 00 00 02 3E           3190 	.dw	0,574
      005C5E 0B                    3191 	.uleb128	11
      005C5F 05                    3192 	.db	5
      005C60 03                    3193 	.db	3
      005C61 00 00 00 DF           3194 	.dw	0,(_PWMCON1)
      005C65 50 57 4D 43 4F 4E 31  3195 	.ascii "PWMCON1"
      005C6C 00                    3196 	.db	0
      005C6D 01                    3197 	.db	1
      005C6E 00 00 02 3E           3198 	.dw	0,574
      005C72 0B                    3199 	.uleb128	11
      005C73 05                    3200 	.db	5
      005C74 03                    3201 	.db	3
      005C75 00 00 00 E0           3202 	.dw	0,(_ACC)
      005C79 41 43 43              3203 	.ascii "ACC"
      005C7C 00                    3204 	.db	0
      005C7D 01                    3205 	.db	1
      005C7E 00 00 02 3E           3206 	.dw	0,574
      005C82 0B                    3207 	.uleb128	11
      005C83 05                    3208 	.db	5
      005C84 03                    3209 	.db	3
      005C85 00 00 00 E1           3210 	.dw	0,(_ADCCON1)
      005C89 41 44 43 43 4F 4E 31  3211 	.ascii "ADCCON1"
      005C90 00                    3212 	.db	0
      005C91 01                    3213 	.db	1
      005C92 00 00 02 3E           3214 	.dw	0,574
      005C96 0B                    3215 	.uleb128	11
      005C97 05                    3216 	.db	5
      005C98 03                    3217 	.db	3
      005C99 00 00 00 E2           3218 	.dw	0,(_ADCCON2)
      005C9D 41 44 43 43 4F 4E 32  3219 	.ascii "ADCCON2"
      005CA4 00                    3220 	.db	0
      005CA5 01                    3221 	.db	1
      005CA6 00 00 02 3E           3222 	.dw	0,574
      005CAA 0B                    3223 	.uleb128	11
      005CAB 05                    3224 	.db	5
      005CAC 03                    3225 	.db	3
      005CAD 00 00 00 E3           3226 	.dw	0,(_ADCDLY)
      005CB1 41 44 43 44 4C 59     3227 	.ascii "ADCDLY"
      005CB7 00                    3228 	.db	0
      005CB8 01                    3229 	.db	1
      005CB9 00 00 02 3E           3230 	.dw	0,574
      005CBD 0B                    3231 	.uleb128	11
      005CBE 05                    3232 	.db	5
      005CBF 03                    3233 	.db	3
      005CC0 00 00 00 E4           3234 	.dw	0,(_C0L)
      005CC4 43 30 4C              3235 	.ascii "C0L"
      005CC7 00                    3236 	.db	0
      005CC8 01                    3237 	.db	1
      005CC9 00 00 02 3E           3238 	.dw	0,574
      005CCD 0B                    3239 	.uleb128	11
      005CCE 05                    3240 	.db	5
      005CCF 03                    3241 	.db	3
      005CD0 00 00 00 E5           3242 	.dw	0,(_C0H)
      005CD4 43 30 48              3243 	.ascii "C0H"
      005CD7 00                    3244 	.db	0
      005CD8 01                    3245 	.db	1
      005CD9 00 00 02 3E           3246 	.dw	0,574
      005CDD 0B                    3247 	.uleb128	11
      005CDE 05                    3248 	.db	5
      005CDF 03                    3249 	.db	3
      005CE0 00 00 00 E6           3250 	.dw	0,(_C1L)
      005CE4 43 31 4C              3251 	.ascii "C1L"
      005CE7 00                    3252 	.db	0
      005CE8 01                    3253 	.db	1
      005CE9 00 00 02 3E           3254 	.dw	0,574
      005CED 0B                    3255 	.uleb128	11
      005CEE 05                    3256 	.db	5
      005CEF 03                    3257 	.db	3
      005CF0 00 00 00 E7           3258 	.dw	0,(_C1H)
      005CF4 43 31 48              3259 	.ascii "C1H"
      005CF7 00                    3260 	.db	0
      005CF8 01                    3261 	.db	1
      005CF9 00 00 02 3E           3262 	.dw	0,574
      005CFD 0B                    3263 	.uleb128	11
      005CFE 05                    3264 	.db	5
      005CFF 03                    3265 	.db	3
      005D00 00 00 00 E8           3266 	.dw	0,(_ADCCON0)
      005D04 41 44 43 43 4F 4E 30  3267 	.ascii "ADCCON0"
      005D0B 00                    3268 	.db	0
      005D0C 01                    3269 	.db	1
      005D0D 00 00 02 3E           3270 	.dw	0,574
      005D11 0B                    3271 	.uleb128	11
      005D12 05                    3272 	.db	5
      005D13 03                    3273 	.db	3
      005D14 00 00 00 E9           3274 	.dw	0,(_PICON)
      005D18 50 49 43 4F 4E        3275 	.ascii "PICON"
      005D1D 00                    3276 	.db	0
      005D1E 01                    3277 	.db	1
      005D1F 00 00 02 3E           3278 	.dw	0,574
      005D23 0B                    3279 	.uleb128	11
      005D24 05                    3280 	.db	5
      005D25 03                    3281 	.db	3
      005D26 00 00 00 EA           3282 	.dw	0,(_PINEN)
      005D2A 50 49 4E 45 4E        3283 	.ascii "PINEN"
      005D2F 00                    3284 	.db	0
      005D30 01                    3285 	.db	1
      005D31 00 00 02 3E           3286 	.dw	0,574
      005D35 0B                    3287 	.uleb128	11
      005D36 05                    3288 	.db	5
      005D37 03                    3289 	.db	3
      005D38 00 00 00 EB           3290 	.dw	0,(_PIPEN)
      005D3C 50 49 50 45 4E        3291 	.ascii "PIPEN"
      005D41 00                    3292 	.db	0
      005D42 01                    3293 	.db	1
      005D43 00 00 02 3E           3294 	.dw	0,574
      005D47 0B                    3295 	.uleb128	11
      005D48 05                    3296 	.db	5
      005D49 03                    3297 	.db	3
      005D4A 00 00 00 EC           3298 	.dw	0,(_PIF)
      005D4E 50 49 46              3299 	.ascii "PIF"
      005D51 00                    3300 	.db	0
      005D52 01                    3301 	.db	1
      005D53 00 00 02 3E           3302 	.dw	0,574
      005D57 0B                    3303 	.uleb128	11
      005D58 05                    3304 	.db	5
      005D59 03                    3305 	.db	3
      005D5A 00 00 00 ED           3306 	.dw	0,(_C2L)
      005D5E 43 32 4C              3307 	.ascii "C2L"
      005D61 00                    3308 	.db	0
      005D62 01                    3309 	.db	1
      005D63 00 00 02 3E           3310 	.dw	0,574
      005D67 0B                    3311 	.uleb128	11
      005D68 05                    3312 	.db	5
      005D69 03                    3313 	.db	3
      005D6A 00 00 00 EE           3314 	.dw	0,(_C2H)
      005D6E 43 32 48              3315 	.ascii "C2H"
      005D71 00                    3316 	.db	0
      005D72 01                    3317 	.db	1
      005D73 00 00 02 3E           3318 	.dw	0,574
      005D77 0B                    3319 	.uleb128	11
      005D78 05                    3320 	.db	5
      005D79 03                    3321 	.db	3
      005D7A 00 00 00 EF           3322 	.dw	0,(_EIP)
      005D7E 45 49 50              3323 	.ascii "EIP"
      005D81 00                    3324 	.db	0
      005D82 01                    3325 	.db	1
      005D83 00 00 02 3E           3326 	.dw	0,574
      005D87 0B                    3327 	.uleb128	11
      005D88 05                    3328 	.db	5
      005D89 03                    3329 	.db	3
      005D8A 00 00 00 F0           3330 	.dw	0,(_B)
      005D8E 42                    3331 	.ascii "B"
      005D8F 00                    3332 	.db	0
      005D90 01                    3333 	.db	1
      005D91 00 00 02 3E           3334 	.dw	0,574
      005D95 0B                    3335 	.uleb128	11
      005D96 05                    3336 	.db	5
      005D97 03                    3337 	.db	3
      005D98 00 00 00 F1           3338 	.dw	0,(_CAPCON3)
      005D9C 43 41 50 43 4F 4E 33  3339 	.ascii "CAPCON3"
      005DA3 00                    3340 	.db	0
      005DA4 01                    3341 	.db	1
      005DA5 00 00 02 3E           3342 	.dw	0,574
      005DA9 0B                    3343 	.uleb128	11
      005DAA 05                    3344 	.db	5
      005DAB 03                    3345 	.db	3
      005DAC 00 00 00 F2           3346 	.dw	0,(_CAPCON4)
      005DB0 43 41 50 43 4F 4E 34  3347 	.ascii "CAPCON4"
      005DB7 00                    3348 	.db	0
      005DB8 01                    3349 	.db	1
      005DB9 00 00 02 3E           3350 	.dw	0,574
      005DBD 0B                    3351 	.uleb128	11
      005DBE 05                    3352 	.db	5
      005DBF 03                    3353 	.db	3
      005DC0 00 00 00 F3           3354 	.dw	0,(_SPCR)
      005DC4 53 50 43 52           3355 	.ascii "SPCR"
      005DC8 00                    3356 	.db	0
      005DC9 01                    3357 	.db	1
      005DCA 00 00 02 3E           3358 	.dw	0,574
      005DCE 0B                    3359 	.uleb128	11
      005DCF 05                    3360 	.db	5
      005DD0 03                    3361 	.db	3
      005DD1 00 00 00 F3           3362 	.dw	0,(_SPCR2)
      005DD5 53 50 43 52 32        3363 	.ascii "SPCR2"
      005DDA 00                    3364 	.db	0
      005DDB 01                    3365 	.db	1
      005DDC 00 00 02 3E           3366 	.dw	0,574
      005DE0 0B                    3367 	.uleb128	11
      005DE1 05                    3368 	.db	5
      005DE2 03                    3369 	.db	3
      005DE3 00 00 00 F4           3370 	.dw	0,(_SPSR)
      005DE7 53 50 53 52           3371 	.ascii "SPSR"
      005DEB 00                    3372 	.db	0
      005DEC 01                    3373 	.db	1
      005DED 00 00 02 3E           3374 	.dw	0,574
      005DF1 0B                    3375 	.uleb128	11
      005DF2 05                    3376 	.db	5
      005DF3 03                    3377 	.db	3
      005DF4 00 00 00 F5           3378 	.dw	0,(_SPDR)
      005DF8 53 50 44 52           3379 	.ascii "SPDR"
      005DFC 00                    3380 	.db	0
      005DFD 01                    3381 	.db	1
      005DFE 00 00 02 3E           3382 	.dw	0,574
      005E02 0B                    3383 	.uleb128	11
      005E03 05                    3384 	.db	5
      005E04 03                    3385 	.db	3
      005E05 00 00 00 F6           3386 	.dw	0,(_AINDIDS)
      005E09 41 49 4E 44 49 44 53  3387 	.ascii "AINDIDS"
      005E10 00                    3388 	.db	0
      005E11 01                    3389 	.db	1
      005E12 00 00 02 3E           3390 	.dw	0,574
      005E16 0B                    3391 	.uleb128	11
      005E17 05                    3392 	.db	5
      005E18 03                    3393 	.db	3
      005E19 00 00 00 F7           3394 	.dw	0,(_EIPH)
      005E1D 45 49 50 48           3395 	.ascii "EIPH"
      005E21 00                    3396 	.db	0
      005E22 01                    3397 	.db	1
      005E23 00 00 02 3E           3398 	.dw	0,574
      005E27 0B                    3399 	.uleb128	11
      005E28 05                    3400 	.db	5
      005E29 03                    3401 	.db	3
      005E2A 00 00 00 F8           3402 	.dw	0,(_SCON_1)
      005E2E 53 43 4F 4E 5F 31     3403 	.ascii "SCON_1"
      005E34 00                    3404 	.db	0
      005E35 01                    3405 	.db	1
      005E36 00 00 02 3E           3406 	.dw	0,574
      005E3A 0B                    3407 	.uleb128	11
      005E3B 05                    3408 	.db	5
      005E3C 03                    3409 	.db	3
      005E3D 00 00 00 F9           3410 	.dw	0,(_PDTEN)
      005E41 50 44 54 45 4E        3411 	.ascii "PDTEN"
      005E46 00                    3412 	.db	0
      005E47 01                    3413 	.db	1
      005E48 00 00 02 3E           3414 	.dw	0,574
      005E4C 0B                    3415 	.uleb128	11
      005E4D 05                    3416 	.db	5
      005E4E 03                    3417 	.db	3
      005E4F 00 00 00 FA           3418 	.dw	0,(_PDTCNT)
      005E53 50 44 54 43 4E 54     3419 	.ascii "PDTCNT"
      005E59 00                    3420 	.db	0
      005E5A 01                    3421 	.db	1
      005E5B 00 00 02 3E           3422 	.dw	0,574
      005E5F 0B                    3423 	.uleb128	11
      005E60 05                    3424 	.db	5
      005E61 03                    3425 	.db	3
      005E62 00 00 00 FB           3426 	.dw	0,(_PMEN)
      005E66 50 4D 45 4E           3427 	.ascii "PMEN"
      005E6A 00                    3428 	.db	0
      005E6B 01                    3429 	.db	1
      005E6C 00 00 02 3E           3430 	.dw	0,574
      005E70 0B                    3431 	.uleb128	11
      005E71 05                    3432 	.db	5
      005E72 03                    3433 	.db	3
      005E73 00 00 00 FC           3434 	.dw	0,(_PMD)
      005E77 50 4D 44              3435 	.ascii "PMD"
      005E7A 00                    3436 	.db	0
      005E7B 01                    3437 	.db	1
      005E7C 00 00 02 3E           3438 	.dw	0,574
      005E80 0B                    3439 	.uleb128	11
      005E81 05                    3440 	.db	5
      005E82 03                    3441 	.db	3
      005E83 00 00 00 FE           3442 	.dw	0,(_EIP1)
      005E87 45 49 50 31           3443 	.ascii "EIP1"
      005E8B 00                    3444 	.db	0
      005E8C 01                    3445 	.db	1
      005E8D 00 00 02 3E           3446 	.dw	0,574
      005E91 0B                    3447 	.uleb128	11
      005E92 05                    3448 	.db	5
      005E93 03                    3449 	.db	3
      005E94 00 00 00 FF           3450 	.dw	0,(_EIPH1)
      005E98 45 49 50 48 31        3451 	.ascii "EIPH1"
      005E9D 00                    3452 	.db	0
      005E9E 01                    3453 	.db	1
      005E9F 00 00 02 3E           3454 	.dw	0,574
      005EA3 08                    3455 	.uleb128	8
      005EA4 5F 73 62 69 74        3456 	.ascii "_sbit"
      005EA9 00                    3457 	.db	0
      005EAA 01                    3458 	.db	1
      005EAB 08                    3459 	.db	8
      005EAC 0A                    3460 	.uleb128	10
      005EAD 00 00 0B 99           3461 	.dw	0,2969
      005EB1 0B                    3462 	.uleb128	11
      005EB2 05                    3463 	.db	5
      005EB3 03                    3464 	.db	3
      005EB4 00 00 00 FF           3465 	.dw	0,(_SM0_1)
      005EB8 53 4D 30 5F 31        3466 	.ascii "SM0_1"
      005EBD 00                    3467 	.db	0
      005EBE 01                    3468 	.db	1
      005EBF 00 00 0B A2           3469 	.dw	0,2978
      005EC3 0B                    3470 	.uleb128	11
      005EC4 05                    3471 	.db	5
      005EC5 03                    3472 	.db	3
      005EC6 00 00 00 FF           3473 	.dw	0,(_FE_1)
      005ECA 46 45 5F 31           3474 	.ascii "FE_1"
      005ECE 00                    3475 	.db	0
      005ECF 01                    3476 	.db	1
      005ED0 00 00 0B A2           3477 	.dw	0,2978
      005ED4 0B                    3478 	.uleb128	11
      005ED5 05                    3479 	.db	5
      005ED6 03                    3480 	.db	3
      005ED7 00 00 00 FE           3481 	.dw	0,(_SM1_1)
      005EDB 53 4D 31 5F 31        3482 	.ascii "SM1_1"
      005EE0 00                    3483 	.db	0
      005EE1 01                    3484 	.db	1
      005EE2 00 00 0B A2           3485 	.dw	0,2978
      005EE6 0B                    3486 	.uleb128	11
      005EE7 05                    3487 	.db	5
      005EE8 03                    3488 	.db	3
      005EE9 00 00 00 FD           3489 	.dw	0,(_SM2_1)
      005EED 53 4D 32 5F 31        3490 	.ascii "SM2_1"
      005EF2 00                    3491 	.db	0
      005EF3 01                    3492 	.db	1
      005EF4 00 00 0B A2           3493 	.dw	0,2978
      005EF8 0B                    3494 	.uleb128	11
      005EF9 05                    3495 	.db	5
      005EFA 03                    3496 	.db	3
      005EFB 00 00 00 FC           3497 	.dw	0,(_REN_1)
      005EFF 52 45 4E 5F 31        3498 	.ascii "REN_1"
      005F04 00                    3499 	.db	0
      005F05 01                    3500 	.db	1
      005F06 00 00 0B A2           3501 	.dw	0,2978
      005F0A 0B                    3502 	.uleb128	11
      005F0B 05                    3503 	.db	5
      005F0C 03                    3504 	.db	3
      005F0D 00 00 00 FB           3505 	.dw	0,(_TB8_1)
      005F11 54 42 38 5F 31        3506 	.ascii "TB8_1"
      005F16 00                    3507 	.db	0
      005F17 01                    3508 	.db	1
      005F18 00 00 0B A2           3509 	.dw	0,2978
      005F1C 0B                    3510 	.uleb128	11
      005F1D 05                    3511 	.db	5
      005F1E 03                    3512 	.db	3
      005F1F 00 00 00 FA           3513 	.dw	0,(_RB8_1)
      005F23 52 42 38 5F 31        3514 	.ascii "RB8_1"
      005F28 00                    3515 	.db	0
      005F29 01                    3516 	.db	1
      005F2A 00 00 0B A2           3517 	.dw	0,2978
      005F2E 0B                    3518 	.uleb128	11
      005F2F 05                    3519 	.db	5
      005F30 03                    3520 	.db	3
      005F31 00 00 00 F9           3521 	.dw	0,(_TI_1)
      005F35 54 49 5F 31           3522 	.ascii "TI_1"
      005F39 00                    3523 	.db	0
      005F3A 01                    3524 	.db	1
      005F3B 00 00 0B A2           3525 	.dw	0,2978
      005F3F 0B                    3526 	.uleb128	11
      005F40 05                    3527 	.db	5
      005F41 03                    3528 	.db	3
      005F42 00 00 00 F8           3529 	.dw	0,(_RI_1)
      005F46 52 49 5F 31           3530 	.ascii "RI_1"
      005F4A 00                    3531 	.db	0
      005F4B 01                    3532 	.db	1
      005F4C 00 00 0B A2           3533 	.dw	0,2978
      005F50 0B                    3534 	.uleb128	11
      005F51 05                    3535 	.db	5
      005F52 03                    3536 	.db	3
      005F53 00 00 00 EF           3537 	.dw	0,(_ADCF)
      005F57 41 44 43 46           3538 	.ascii "ADCF"
      005F5B 00                    3539 	.db	0
      005F5C 01                    3540 	.db	1
      005F5D 00 00 0B A2           3541 	.dw	0,2978
      005F61 0B                    3542 	.uleb128	11
      005F62 05                    3543 	.db	5
      005F63 03                    3544 	.db	3
      005F64 00 00 00 EE           3545 	.dw	0,(_ADCS)
      005F68 41 44 43 53           3546 	.ascii "ADCS"
      005F6C 00                    3547 	.db	0
      005F6D 01                    3548 	.db	1
      005F6E 00 00 0B A2           3549 	.dw	0,2978
      005F72 0B                    3550 	.uleb128	11
      005F73 05                    3551 	.db	5
      005F74 03                    3552 	.db	3
      005F75 00 00 00 ED           3553 	.dw	0,(_ETGSEL1)
      005F79 45 54 47 53 45 4C 31  3554 	.ascii "ETGSEL1"
      005F80 00                    3555 	.db	0
      005F81 01                    3556 	.db	1
      005F82 00 00 0B A2           3557 	.dw	0,2978
      005F86 0B                    3558 	.uleb128	11
      005F87 05                    3559 	.db	5
      005F88 03                    3560 	.db	3
      005F89 00 00 00 EC           3561 	.dw	0,(_ETGSEL0)
      005F8D 45 54 47 53 45 4C 30  3562 	.ascii "ETGSEL0"
      005F94 00                    3563 	.db	0
      005F95 01                    3564 	.db	1
      005F96 00 00 0B A2           3565 	.dw	0,2978
      005F9A 0B                    3566 	.uleb128	11
      005F9B 05                    3567 	.db	5
      005F9C 03                    3568 	.db	3
      005F9D 00 00 00 EB           3569 	.dw	0,(_ADCHS3)
      005FA1 41 44 43 48 53 33     3570 	.ascii "ADCHS3"
      005FA7 00                    3571 	.db	0
      005FA8 01                    3572 	.db	1
      005FA9 00 00 0B A2           3573 	.dw	0,2978
      005FAD 0B                    3574 	.uleb128	11
      005FAE 05                    3575 	.db	5
      005FAF 03                    3576 	.db	3
      005FB0 00 00 00 EA           3577 	.dw	0,(_ADCHS2)
      005FB4 41 44 43 48 53 32     3578 	.ascii "ADCHS2"
      005FBA 00                    3579 	.db	0
      005FBB 01                    3580 	.db	1
      005FBC 00 00 0B A2           3581 	.dw	0,2978
      005FC0 0B                    3582 	.uleb128	11
      005FC1 05                    3583 	.db	5
      005FC2 03                    3584 	.db	3
      005FC3 00 00 00 E9           3585 	.dw	0,(_ADCHS1)
      005FC7 41 44 43 48 53 31     3586 	.ascii "ADCHS1"
      005FCD 00                    3587 	.db	0
      005FCE 01                    3588 	.db	1
      005FCF 00 00 0B A2           3589 	.dw	0,2978
      005FD3 0B                    3590 	.uleb128	11
      005FD4 05                    3591 	.db	5
      005FD5 03                    3592 	.db	3
      005FD6 00 00 00 E8           3593 	.dw	0,(_ADCHS0)
      005FDA 41 44 43 48 53 30     3594 	.ascii "ADCHS0"
      005FE0 00                    3595 	.db	0
      005FE1 01                    3596 	.db	1
      005FE2 00 00 0B A2           3597 	.dw	0,2978
      005FE6 0B                    3598 	.uleb128	11
      005FE7 05                    3599 	.db	5
      005FE8 03                    3600 	.db	3
      005FE9 00 00 00 DF           3601 	.dw	0,(_PWMRUN)
      005FED 50 57 4D 52 55 4E     3602 	.ascii "PWMRUN"
      005FF3 00                    3603 	.db	0
      005FF4 01                    3604 	.db	1
      005FF5 00 00 0B A2           3605 	.dw	0,2978
      005FF9 0B                    3606 	.uleb128	11
      005FFA 05                    3607 	.db	5
      005FFB 03                    3608 	.db	3
      005FFC 00 00 00 DE           3609 	.dw	0,(_LOAD)
      006000 4C 4F 41 44           3610 	.ascii "LOAD"
      006004 00                    3611 	.db	0
      006005 01                    3612 	.db	1
      006006 00 00 0B A2           3613 	.dw	0,2978
      00600A 0B                    3614 	.uleb128	11
      00600B 05                    3615 	.db	5
      00600C 03                    3616 	.db	3
      00600D 00 00 00 DD           3617 	.dw	0,(_PWMF)
      006011 50 57 4D 46           3618 	.ascii "PWMF"
      006015 00                    3619 	.db	0
      006016 01                    3620 	.db	1
      006017 00 00 0B A2           3621 	.dw	0,2978
      00601B 0B                    3622 	.uleb128	11
      00601C 05                    3623 	.db	5
      00601D 03                    3624 	.db	3
      00601E 00 00 00 DC           3625 	.dw	0,(_CLRPWM)
      006022 43 4C 52 50 57 4D     3626 	.ascii "CLRPWM"
      006028 00                    3627 	.db	0
      006029 01                    3628 	.db	1
      00602A 00 00 0B A2           3629 	.dw	0,2978
      00602E 0B                    3630 	.uleb128	11
      00602F 05                    3631 	.db	5
      006030 03                    3632 	.db	3
      006031 00 00 00 D7           3633 	.dw	0,(_CY)
      006035 43 59                 3634 	.ascii "CY"
      006037 00                    3635 	.db	0
      006038 01                    3636 	.db	1
      006039 00 00 0B A2           3637 	.dw	0,2978
      00603D 0B                    3638 	.uleb128	11
      00603E 05                    3639 	.db	5
      00603F 03                    3640 	.db	3
      006040 00 00 00 D6           3641 	.dw	0,(_AC)
      006044 41 43                 3642 	.ascii "AC"
      006046 00                    3643 	.db	0
      006047 01                    3644 	.db	1
      006048 00 00 0B A2           3645 	.dw	0,2978
      00604C 0B                    3646 	.uleb128	11
      00604D 05                    3647 	.db	5
      00604E 03                    3648 	.db	3
      00604F 00 00 00 D5           3649 	.dw	0,(_F0)
      006053 46 30                 3650 	.ascii "F0"
      006055 00                    3651 	.db	0
      006056 01                    3652 	.db	1
      006057 00 00 0B A2           3653 	.dw	0,2978
      00605B 0B                    3654 	.uleb128	11
      00605C 05                    3655 	.db	5
      00605D 03                    3656 	.db	3
      00605E 00 00 00 D4           3657 	.dw	0,(_RS1)
      006062 52 53 31              3658 	.ascii "RS1"
      006065 00                    3659 	.db	0
      006066 01                    3660 	.db	1
      006067 00 00 0B A2           3661 	.dw	0,2978
      00606B 0B                    3662 	.uleb128	11
      00606C 05                    3663 	.db	5
      00606D 03                    3664 	.db	3
      00606E 00 00 00 D3           3665 	.dw	0,(_RS0)
      006072 52 53 30              3666 	.ascii "RS0"
      006075 00                    3667 	.db	0
      006076 01                    3668 	.db	1
      006077 00 00 0B A2           3669 	.dw	0,2978
      00607B 0B                    3670 	.uleb128	11
      00607C 05                    3671 	.db	5
      00607D 03                    3672 	.db	3
      00607E 00 00 00 D2           3673 	.dw	0,(_OV)
      006082 4F 56                 3674 	.ascii "OV"
      006084 00                    3675 	.db	0
      006085 01                    3676 	.db	1
      006086 00 00 0B A2           3677 	.dw	0,2978
      00608A 0B                    3678 	.uleb128	11
      00608B 05                    3679 	.db	5
      00608C 03                    3680 	.db	3
      00608D 00 00 00 D0           3681 	.dw	0,(_P)
      006091 50                    3682 	.ascii "P"
      006092 00                    3683 	.db	0
      006093 01                    3684 	.db	1
      006094 00 00 0B A2           3685 	.dw	0,2978
      006098 0B                    3686 	.uleb128	11
      006099 05                    3687 	.db	5
      00609A 03                    3688 	.db	3
      00609B 00 00 00 CF           3689 	.dw	0,(_TF2)
      00609F 54 46 32              3690 	.ascii "TF2"
      0060A2 00                    3691 	.db	0
      0060A3 01                    3692 	.db	1
      0060A4 00 00 0B A2           3693 	.dw	0,2978
      0060A8 0B                    3694 	.uleb128	11
      0060A9 05                    3695 	.db	5
      0060AA 03                    3696 	.db	3
      0060AB 00 00 00 CA           3697 	.dw	0,(_TR2)
      0060AF 54 52 32              3698 	.ascii "TR2"
      0060B2 00                    3699 	.db	0
      0060B3 01                    3700 	.db	1
      0060B4 00 00 0B A2           3701 	.dw	0,2978
      0060B8 0B                    3702 	.uleb128	11
      0060B9 05                    3703 	.db	5
      0060BA 03                    3704 	.db	3
      0060BB 00 00 00 C8           3705 	.dw	0,(_CM_RL2)
      0060BF 43 4D 5F 52 4C 32     3706 	.ascii "CM_RL2"
      0060C5 00                    3707 	.db	0
      0060C6 01                    3708 	.db	1
      0060C7 00 00 0B A2           3709 	.dw	0,2978
      0060CB 0B                    3710 	.uleb128	11
      0060CC 05                    3711 	.db	5
      0060CD 03                    3712 	.db	3
      0060CE 00 00 00 C6           3713 	.dw	0,(_I2CEN)
      0060D2 49 32 43 45 4E        3714 	.ascii "I2CEN"
      0060D7 00                    3715 	.db	0
      0060D8 01                    3716 	.db	1
      0060D9 00 00 0B A2           3717 	.dw	0,2978
      0060DD 0B                    3718 	.uleb128	11
      0060DE 05                    3719 	.db	5
      0060DF 03                    3720 	.db	3
      0060E0 00 00 00 C5           3721 	.dw	0,(_STA)
      0060E4 53 54 41              3722 	.ascii "STA"
      0060E7 00                    3723 	.db	0
      0060E8 01                    3724 	.db	1
      0060E9 00 00 0B A2           3725 	.dw	0,2978
      0060ED 0B                    3726 	.uleb128	11
      0060EE 05                    3727 	.db	5
      0060EF 03                    3728 	.db	3
      0060F0 00 00 00 C4           3729 	.dw	0,(_STO)
      0060F4 53 54 4F              3730 	.ascii "STO"
      0060F7 00                    3731 	.db	0
      0060F8 01                    3732 	.db	1
      0060F9 00 00 0B A2           3733 	.dw	0,2978
      0060FD 0B                    3734 	.uleb128	11
      0060FE 05                    3735 	.db	5
      0060FF 03                    3736 	.db	3
      006100 00 00 00 C3           3737 	.dw	0,(_SI)
      006104 53 49                 3738 	.ascii "SI"
      006106 00                    3739 	.db	0
      006107 01                    3740 	.db	1
      006108 00 00 0B A2           3741 	.dw	0,2978
      00610C 0B                    3742 	.uleb128	11
      00610D 05                    3743 	.db	5
      00610E 03                    3744 	.db	3
      00610F 00 00 00 C2           3745 	.dw	0,(_AA)
      006113 41 41                 3746 	.ascii "AA"
      006115 00                    3747 	.db	0
      006116 01                    3748 	.db	1
      006117 00 00 0B A2           3749 	.dw	0,2978
      00611B 0B                    3750 	.uleb128	11
      00611C 05                    3751 	.db	5
      00611D 03                    3752 	.db	3
      00611E 00 00 00 C0           3753 	.dw	0,(_I2CPX)
      006122 49 32 43 50 58        3754 	.ascii "I2CPX"
      006127 00                    3755 	.db	0
      006128 01                    3756 	.db	1
      006129 00 00 0B A2           3757 	.dw	0,2978
      00612D 0B                    3758 	.uleb128	11
      00612E 05                    3759 	.db	5
      00612F 03                    3760 	.db	3
      006130 00 00 00 BE           3761 	.dw	0,(_PADC)
      006134 50 41 44 43           3762 	.ascii "PADC"
      006138 00                    3763 	.db	0
      006139 01                    3764 	.db	1
      00613A 00 00 0B A2           3765 	.dw	0,2978
      00613E 0B                    3766 	.uleb128	11
      00613F 05                    3767 	.db	5
      006140 03                    3768 	.db	3
      006141 00 00 00 BD           3769 	.dw	0,(_PBOD)
      006145 50 42 4F 44           3770 	.ascii "PBOD"
      006149 00                    3771 	.db	0
      00614A 01                    3772 	.db	1
      00614B 00 00 0B A2           3773 	.dw	0,2978
      00614F 0B                    3774 	.uleb128	11
      006150 05                    3775 	.db	5
      006151 03                    3776 	.db	3
      006152 00 00 00 BC           3777 	.dw	0,(_PS)
      006156 50 53                 3778 	.ascii "PS"
      006158 00                    3779 	.db	0
      006159 01                    3780 	.db	1
      00615A 00 00 0B A2           3781 	.dw	0,2978
      00615E 0B                    3782 	.uleb128	11
      00615F 05                    3783 	.db	5
      006160 03                    3784 	.db	3
      006161 00 00 00 BB           3785 	.dw	0,(_PT1)
      006165 50 54 31              3786 	.ascii "PT1"
      006168 00                    3787 	.db	0
      006169 01                    3788 	.db	1
      00616A 00 00 0B A2           3789 	.dw	0,2978
      00616E 0B                    3790 	.uleb128	11
      00616F 05                    3791 	.db	5
      006170 03                    3792 	.db	3
      006171 00 00 00 BA           3793 	.dw	0,(_PX1)
      006175 50 58 31              3794 	.ascii "PX1"
      006178 00                    3795 	.db	0
      006179 01                    3796 	.db	1
      00617A 00 00 0B A2           3797 	.dw	0,2978
      00617E 0B                    3798 	.uleb128	11
      00617F 05                    3799 	.db	5
      006180 03                    3800 	.db	3
      006181 00 00 00 B9           3801 	.dw	0,(_PT0)
      006185 50 54 30              3802 	.ascii "PT0"
      006188 00                    3803 	.db	0
      006189 01                    3804 	.db	1
      00618A 00 00 0B A2           3805 	.dw	0,2978
      00618E 0B                    3806 	.uleb128	11
      00618F 05                    3807 	.db	5
      006190 03                    3808 	.db	3
      006191 00 00 00 B8           3809 	.dw	0,(_PX0)
      006195 50 58 30              3810 	.ascii "PX0"
      006198 00                    3811 	.db	0
      006199 01                    3812 	.db	1
      00619A 00 00 0B A2           3813 	.dw	0,2978
      00619E 0B                    3814 	.uleb128	11
      00619F 05                    3815 	.db	5
      0061A0 03                    3816 	.db	3
      0061A1 00 00 00 B0           3817 	.dw	0,(_P30)
      0061A5 50 33 30              3818 	.ascii "P30"
      0061A8 00                    3819 	.db	0
      0061A9 01                    3820 	.db	1
      0061AA 00 00 0B A2           3821 	.dw	0,2978
      0061AE 0B                    3822 	.uleb128	11
      0061AF 05                    3823 	.db	5
      0061B0 03                    3824 	.db	3
      0061B1 00 00 00 AF           3825 	.dw	0,(_EA)
      0061B5 45 41                 3826 	.ascii "EA"
      0061B7 00                    3827 	.db	0
      0061B8 01                    3828 	.db	1
      0061B9 00 00 0B A2           3829 	.dw	0,2978
      0061BD 0B                    3830 	.uleb128	11
      0061BE 05                    3831 	.db	5
      0061BF 03                    3832 	.db	3
      0061C0 00 00 00 AE           3833 	.dw	0,(_EADC)
      0061C4 45 41 44 43           3834 	.ascii "EADC"
      0061C8 00                    3835 	.db	0
      0061C9 01                    3836 	.db	1
      0061CA 00 00 0B A2           3837 	.dw	0,2978
      0061CE 0B                    3838 	.uleb128	11
      0061CF 05                    3839 	.db	5
      0061D0 03                    3840 	.db	3
      0061D1 00 00 00 AD           3841 	.dw	0,(_EBOD)
      0061D5 45 42 4F 44           3842 	.ascii "EBOD"
      0061D9 00                    3843 	.db	0
      0061DA 01                    3844 	.db	1
      0061DB 00 00 0B A2           3845 	.dw	0,2978
      0061DF 0B                    3846 	.uleb128	11
      0061E0 05                    3847 	.db	5
      0061E1 03                    3848 	.db	3
      0061E2 00 00 00 AC           3849 	.dw	0,(_ES)
      0061E6 45 53                 3850 	.ascii "ES"
      0061E8 00                    3851 	.db	0
      0061E9 01                    3852 	.db	1
      0061EA 00 00 0B A2           3853 	.dw	0,2978
      0061EE 0B                    3854 	.uleb128	11
      0061EF 05                    3855 	.db	5
      0061F0 03                    3856 	.db	3
      0061F1 00 00 00 AB           3857 	.dw	0,(_ET1)
      0061F5 45 54 31              3858 	.ascii "ET1"
      0061F8 00                    3859 	.db	0
      0061F9 01                    3860 	.db	1
      0061FA 00 00 0B A2           3861 	.dw	0,2978
      0061FE 0B                    3862 	.uleb128	11
      0061FF 05                    3863 	.db	5
      006200 03                    3864 	.db	3
      006201 00 00 00 AA           3865 	.dw	0,(_EX1)
      006205 45 58 31              3866 	.ascii "EX1"
      006208 00                    3867 	.db	0
      006209 01                    3868 	.db	1
      00620A 00 00 0B A2           3869 	.dw	0,2978
      00620E 0B                    3870 	.uleb128	11
      00620F 05                    3871 	.db	5
      006210 03                    3872 	.db	3
      006211 00 00 00 A9           3873 	.dw	0,(_ET0)
      006215 45 54 30              3874 	.ascii "ET0"
      006218 00                    3875 	.db	0
      006219 01                    3876 	.db	1
      00621A 00 00 0B A2           3877 	.dw	0,2978
      00621E 0B                    3878 	.uleb128	11
      00621F 05                    3879 	.db	5
      006220 03                    3880 	.db	3
      006221 00 00 00 A8           3881 	.dw	0,(_EX0)
      006225 45 58 30              3882 	.ascii "EX0"
      006228 00                    3883 	.db	0
      006229 01                    3884 	.db	1
      00622A 00 00 0B A2           3885 	.dw	0,2978
      00622E 0B                    3886 	.uleb128	11
      00622F 05                    3887 	.db	5
      006230 03                    3888 	.db	3
      006231 00 00 00 A0           3889 	.dw	0,(_P20)
      006235 50 32 30              3890 	.ascii "P20"
      006238 00                    3891 	.db	0
      006239 01                    3892 	.db	1
      00623A 00 00 0B A2           3893 	.dw	0,2978
      00623E 0B                    3894 	.uleb128	11
      00623F 05                    3895 	.db	5
      006240 03                    3896 	.db	3
      006241 00 00 00 9F           3897 	.dw	0,(_SM0)
      006245 53 4D 30              3898 	.ascii "SM0"
      006248 00                    3899 	.db	0
      006249 01                    3900 	.db	1
      00624A 00 00 0B A2           3901 	.dw	0,2978
      00624E 0B                    3902 	.uleb128	11
      00624F 05                    3903 	.db	5
      006250 03                    3904 	.db	3
      006251 00 00 00 9F           3905 	.dw	0,(_FE)
      006255 46 45                 3906 	.ascii "FE"
      006257 00                    3907 	.db	0
      006258 01                    3908 	.db	1
      006259 00 00 0B A2           3909 	.dw	0,2978
      00625D 0B                    3910 	.uleb128	11
      00625E 05                    3911 	.db	5
      00625F 03                    3912 	.db	3
      006260 00 00 00 9E           3913 	.dw	0,(_SM1)
      006264 53 4D 31              3914 	.ascii "SM1"
      006267 00                    3915 	.db	0
      006268 01                    3916 	.db	1
      006269 00 00 0B A2           3917 	.dw	0,2978
      00626D 0B                    3918 	.uleb128	11
      00626E 05                    3919 	.db	5
      00626F 03                    3920 	.db	3
      006270 00 00 00 9D           3921 	.dw	0,(_SM2)
      006274 53 4D 32              3922 	.ascii "SM2"
      006277 00                    3923 	.db	0
      006278 01                    3924 	.db	1
      006279 00 00 0B A2           3925 	.dw	0,2978
      00627D 0B                    3926 	.uleb128	11
      00627E 05                    3927 	.db	5
      00627F 03                    3928 	.db	3
      006280 00 00 00 9C           3929 	.dw	0,(_REN)
      006284 52 45 4E              3930 	.ascii "REN"
      006287 00                    3931 	.db	0
      006288 01                    3932 	.db	1
      006289 00 00 0B A2           3933 	.dw	0,2978
      00628D 0B                    3934 	.uleb128	11
      00628E 05                    3935 	.db	5
      00628F 03                    3936 	.db	3
      006290 00 00 00 9B           3937 	.dw	0,(_TB8)
      006294 54 42 38              3938 	.ascii "TB8"
      006297 00                    3939 	.db	0
      006298 01                    3940 	.db	1
      006299 00 00 0B A2           3941 	.dw	0,2978
      00629D 0B                    3942 	.uleb128	11
      00629E 05                    3943 	.db	5
      00629F 03                    3944 	.db	3
      0062A0 00 00 00 9A           3945 	.dw	0,(_RB8)
      0062A4 52 42 38              3946 	.ascii "RB8"
      0062A7 00                    3947 	.db	0
      0062A8 01                    3948 	.db	1
      0062A9 00 00 0B A2           3949 	.dw	0,2978
      0062AD 0B                    3950 	.uleb128	11
      0062AE 05                    3951 	.db	5
      0062AF 03                    3952 	.db	3
      0062B0 00 00 00 99           3953 	.dw	0,(_TI)
      0062B4 54 49                 3954 	.ascii "TI"
      0062B6 00                    3955 	.db	0
      0062B7 01                    3956 	.db	1
      0062B8 00 00 0B A2           3957 	.dw	0,2978
      0062BC 0B                    3958 	.uleb128	11
      0062BD 05                    3959 	.db	5
      0062BE 03                    3960 	.db	3
      0062BF 00 00 00 98           3961 	.dw	0,(_RI)
      0062C3 52 49                 3962 	.ascii "RI"
      0062C5 00                    3963 	.db	0
      0062C6 01                    3964 	.db	1
      0062C7 00 00 0B A2           3965 	.dw	0,2978
      0062CB 0B                    3966 	.uleb128	11
      0062CC 05                    3967 	.db	5
      0062CD 03                    3968 	.db	3
      0062CE 00 00 00 97           3969 	.dw	0,(_P17)
      0062D2 50 31 37              3970 	.ascii "P17"
      0062D5 00                    3971 	.db	0
      0062D6 01                    3972 	.db	1
      0062D7 00 00 0B A2           3973 	.dw	0,2978
      0062DB 0B                    3974 	.uleb128	11
      0062DC 05                    3975 	.db	5
      0062DD 03                    3976 	.db	3
      0062DE 00 00 00 96           3977 	.dw	0,(_P16)
      0062E2 50 31 36              3978 	.ascii "P16"
      0062E5 00                    3979 	.db	0
      0062E6 01                    3980 	.db	1
      0062E7 00 00 0B A2           3981 	.dw	0,2978
      0062EB 0B                    3982 	.uleb128	11
      0062EC 05                    3983 	.db	5
      0062ED 03                    3984 	.db	3
      0062EE 00 00 00 96           3985 	.dw	0,(_TXD_1)
      0062F2 54 58 44 5F 31        3986 	.ascii "TXD_1"
      0062F7 00                    3987 	.db	0
      0062F8 01                    3988 	.db	1
      0062F9 00 00 0B A2           3989 	.dw	0,2978
      0062FD 0B                    3990 	.uleb128	11
      0062FE 05                    3991 	.db	5
      0062FF 03                    3992 	.db	3
      006300 00 00 00 95           3993 	.dw	0,(_P15)
      006304 50 31 35              3994 	.ascii "P15"
      006307 00                    3995 	.db	0
      006308 01                    3996 	.db	1
      006309 00 00 0B A2           3997 	.dw	0,2978
      00630D 0B                    3998 	.uleb128	11
      00630E 05                    3999 	.db	5
      00630F 03                    4000 	.db	3
      006310 00 00 00 94           4001 	.dw	0,(_P14)
      006314 50 31 34              4002 	.ascii "P14"
      006317 00                    4003 	.db	0
      006318 01                    4004 	.db	1
      006319 00 00 0B A2           4005 	.dw	0,2978
      00631D 0B                    4006 	.uleb128	11
      00631E 05                    4007 	.db	5
      00631F 03                    4008 	.db	3
      006320 00 00 00 94           4009 	.dw	0,(_SDA)
      006324 53 44 41              4010 	.ascii "SDA"
      006327 00                    4011 	.db	0
      006328 01                    4012 	.db	1
      006329 00 00 0B A2           4013 	.dw	0,2978
      00632D 0B                    4014 	.uleb128	11
      00632E 05                    4015 	.db	5
      00632F 03                    4016 	.db	3
      006330 00 00 00 93           4017 	.dw	0,(_P13)
      006334 50 31 33              4018 	.ascii "P13"
      006337 00                    4019 	.db	0
      006338 01                    4020 	.db	1
      006339 00 00 0B A2           4021 	.dw	0,2978
      00633D 0B                    4022 	.uleb128	11
      00633E 05                    4023 	.db	5
      00633F 03                    4024 	.db	3
      006340 00 00 00 93           4025 	.dw	0,(_SCL)
      006344 53 43 4C              4026 	.ascii "SCL"
      006347 00                    4027 	.db	0
      006348 01                    4028 	.db	1
      006349 00 00 0B A2           4029 	.dw	0,2978
      00634D 0B                    4030 	.uleb128	11
      00634E 05                    4031 	.db	5
      00634F 03                    4032 	.db	3
      006350 00 00 00 92           4033 	.dw	0,(_P12)
      006354 50 31 32              4034 	.ascii "P12"
      006357 00                    4035 	.db	0
      006358 01                    4036 	.db	1
      006359 00 00 0B A2           4037 	.dw	0,2978
      00635D 0B                    4038 	.uleb128	11
      00635E 05                    4039 	.db	5
      00635F 03                    4040 	.db	3
      006360 00 00 00 91           4041 	.dw	0,(_P11)
      006364 50 31 31              4042 	.ascii "P11"
      006367 00                    4043 	.db	0
      006368 01                    4044 	.db	1
      006369 00 00 0B A2           4045 	.dw	0,2978
      00636D 0B                    4046 	.uleb128	11
      00636E 05                    4047 	.db	5
      00636F 03                    4048 	.db	3
      006370 00 00 00 90           4049 	.dw	0,(_P10)
      006374 50 31 30              4050 	.ascii "P10"
      006377 00                    4051 	.db	0
      006378 01                    4052 	.db	1
      006379 00 00 0B A2           4053 	.dw	0,2978
      00637D 0B                    4054 	.uleb128	11
      00637E 05                    4055 	.db	5
      00637F 03                    4056 	.db	3
      006380 00 00 00 8F           4057 	.dw	0,(_TF1)
      006384 54 46 31              4058 	.ascii "TF1"
      006387 00                    4059 	.db	0
      006388 01                    4060 	.db	1
      006389 00 00 0B A2           4061 	.dw	0,2978
      00638D 0B                    4062 	.uleb128	11
      00638E 05                    4063 	.db	5
      00638F 03                    4064 	.db	3
      006390 00 00 00 8E           4065 	.dw	0,(_TR1)
      006394 54 52 31              4066 	.ascii "TR1"
      006397 00                    4067 	.db	0
      006398 01                    4068 	.db	1
      006399 00 00 0B A2           4069 	.dw	0,2978
      00639D 0B                    4070 	.uleb128	11
      00639E 05                    4071 	.db	5
      00639F 03                    4072 	.db	3
      0063A0 00 00 00 8D           4073 	.dw	0,(_TF0)
      0063A4 54 46 30              4074 	.ascii "TF0"
      0063A7 00                    4075 	.db	0
      0063A8 01                    4076 	.db	1
      0063A9 00 00 0B A2           4077 	.dw	0,2978
      0063AD 0B                    4078 	.uleb128	11
      0063AE 05                    4079 	.db	5
      0063AF 03                    4080 	.db	3
      0063B0 00 00 00 8C           4081 	.dw	0,(_TR0)
      0063B4 54 52 30              4082 	.ascii "TR0"
      0063B7 00                    4083 	.db	0
      0063B8 01                    4084 	.db	1
      0063B9 00 00 0B A2           4085 	.dw	0,2978
      0063BD 0B                    4086 	.uleb128	11
      0063BE 05                    4087 	.db	5
      0063BF 03                    4088 	.db	3
      0063C0 00 00 00 8B           4089 	.dw	0,(_IE1)
      0063C4 49 45 31              4090 	.ascii "IE1"
      0063C7 00                    4091 	.db	0
      0063C8 01                    4092 	.db	1
      0063C9 00 00 0B A2           4093 	.dw	0,2978
      0063CD 0B                    4094 	.uleb128	11
      0063CE 05                    4095 	.db	5
      0063CF 03                    4096 	.db	3
      0063D0 00 00 00 8A           4097 	.dw	0,(_IT1)
      0063D4 49 54 31              4098 	.ascii "IT1"
      0063D7 00                    4099 	.db	0
      0063D8 01                    4100 	.db	1
      0063D9 00 00 0B A2           4101 	.dw	0,2978
      0063DD 0B                    4102 	.uleb128	11
      0063DE 05                    4103 	.db	5
      0063DF 03                    4104 	.db	3
      0063E0 00 00 00 89           4105 	.dw	0,(_IE0)
      0063E4 49 45 30              4106 	.ascii "IE0"
      0063E7 00                    4107 	.db	0
      0063E8 01                    4108 	.db	1
      0063E9 00 00 0B A2           4109 	.dw	0,2978
      0063ED 0B                    4110 	.uleb128	11
      0063EE 05                    4111 	.db	5
      0063EF 03                    4112 	.db	3
      0063F0 00 00 00 88           4113 	.dw	0,(_IT0)
      0063F4 49 54 30              4114 	.ascii "IT0"
      0063F7 00                    4115 	.db	0
      0063F8 01                    4116 	.db	1
      0063F9 00 00 0B A2           4117 	.dw	0,2978
      0063FD 0B                    4118 	.uleb128	11
      0063FE 05                    4119 	.db	5
      0063FF 03                    4120 	.db	3
      006400 00 00 00 87           4121 	.dw	0,(_P07)
      006404 50 30 37              4122 	.ascii "P07"
      006407 00                    4123 	.db	0
      006408 01                    4124 	.db	1
      006409 00 00 0B A2           4125 	.dw	0,2978
      00640D 0B                    4126 	.uleb128	11
      00640E 05                    4127 	.db	5
      00640F 03                    4128 	.db	3
      006410 00 00 00 87           4129 	.dw	0,(_RXD)
      006414 52 58 44              4130 	.ascii "RXD"
      006417 00                    4131 	.db	0
      006418 01                    4132 	.db	1
      006419 00 00 0B A2           4133 	.dw	0,2978
      00641D 0B                    4134 	.uleb128	11
      00641E 05                    4135 	.db	5
      00641F 03                    4136 	.db	3
      006420 00 00 00 86           4137 	.dw	0,(_P06)
      006424 50 30 36              4138 	.ascii "P06"
      006427 00                    4139 	.db	0
      006428 01                    4140 	.db	1
      006429 00 00 0B A2           4141 	.dw	0,2978
      00642D 0B                    4142 	.uleb128	11
      00642E 05                    4143 	.db	5
      00642F 03                    4144 	.db	3
      006430 00 00 00 86           4145 	.dw	0,(_TXD)
      006434 54 58 44              4146 	.ascii "TXD"
      006437 00                    4147 	.db	0
      006438 01                    4148 	.db	1
      006439 00 00 0B A2           4149 	.dw	0,2978
      00643D 0B                    4150 	.uleb128	11
      00643E 05                    4151 	.db	5
      00643F 03                    4152 	.db	3
      006440 00 00 00 85           4153 	.dw	0,(_P05)
      006444 50 30 35              4154 	.ascii "P05"
      006447 00                    4155 	.db	0
      006448 01                    4156 	.db	1
      006449 00 00 0B A2           4157 	.dw	0,2978
      00644D 0B                    4158 	.uleb128	11
      00644E 05                    4159 	.db	5
      00644F 03                    4160 	.db	3
      006450 00 00 00 84           4161 	.dw	0,(_P04)
      006454 50 30 34              4162 	.ascii "P04"
      006457 00                    4163 	.db	0
      006458 01                    4164 	.db	1
      006459 00 00 0B A2           4165 	.dw	0,2978
      00645D 0B                    4166 	.uleb128	11
      00645E 05                    4167 	.db	5
      00645F 03                    4168 	.db	3
      006460 00 00 00 84           4169 	.dw	0,(_STADC)
      006464 53 54 41 44 43        4170 	.ascii "STADC"
      006469 00                    4171 	.db	0
      00646A 01                    4172 	.db	1
      00646B 00 00 0B A2           4173 	.dw	0,2978
      00646F 0B                    4174 	.uleb128	11
      006470 05                    4175 	.db	5
      006471 03                    4176 	.db	3
      006472 00 00 00 83           4177 	.dw	0,(_P03)
      006476 50 30 33              4178 	.ascii "P03"
      006479 00                    4179 	.db	0
      00647A 01                    4180 	.db	1
      00647B 00 00 0B A2           4181 	.dw	0,2978
      00647F 0B                    4182 	.uleb128	11
      006480 05                    4183 	.db	5
      006481 03                    4184 	.db	3
      006482 00 00 00 82           4185 	.dw	0,(_P02)
      006486 50 30 32              4186 	.ascii "P02"
      006489 00                    4187 	.db	0
      00648A 01                    4188 	.db	1
      00648B 00 00 0B A2           4189 	.dw	0,2978
      00648F 0B                    4190 	.uleb128	11
      006490 05                    4191 	.db	5
      006491 03                    4192 	.db	3
      006492 00 00 00 82           4193 	.dw	0,(_RXD_1)
      006496 52 58 44 5F 31        4194 	.ascii "RXD_1"
      00649B 00                    4195 	.db	0
      00649C 01                    4196 	.db	1
      00649D 00 00 0B A2           4197 	.dw	0,2978
      0064A1 0B                    4198 	.uleb128	11
      0064A2 05                    4199 	.db	5
      0064A3 03                    4200 	.db	3
      0064A4 00 00 00 81           4201 	.dw	0,(_P01)
      0064A8 50 30 31              4202 	.ascii "P01"
      0064AB 00                    4203 	.db	0
      0064AC 01                    4204 	.db	1
      0064AD 00 00 0B A2           4205 	.dw	0,2978
      0064B1 0B                    4206 	.uleb128	11
      0064B2 05                    4207 	.db	5
      0064B3 03                    4208 	.db	3
      0064B4 00 00 00 81           4209 	.dw	0,(_MISO)
      0064B8 4D 49 53 4F           4210 	.ascii "MISO"
      0064BC 00                    4211 	.db	0
      0064BD 01                    4212 	.db	1
      0064BE 00 00 0B A2           4213 	.dw	0,2978
      0064C2 0B                    4214 	.uleb128	11
      0064C3 05                    4215 	.db	5
      0064C4 03                    4216 	.db	3
      0064C5 00 00 00 80           4217 	.dw	0,(_P00)
      0064C9 50 30 30              4218 	.ascii "P00"
      0064CC 00                    4219 	.db	0
      0064CD 01                    4220 	.db	1
      0064CE 00 00 0B A2           4221 	.dw	0,2978
      0064D2 0B                    4222 	.uleb128	11
      0064D3 05                    4223 	.db	5
      0064D4 03                    4224 	.db	3
      0064D5 00 00 00 80           4225 	.dw	0,(_MOSI)
      0064D9 4D 4F 53 49           4226 	.ascii "MOSI"
      0064DD 00                    4227 	.db	0
      0064DE 01                    4228 	.db	1
      0064DF 00 00 0B A2           4229 	.dw	0,2978
      0064E3 00                    4230 	.uleb128	0
      0064E4                       4231 Ldebug_info_end:
                                   4232 
                                   4233 	.area .debug_pubnames (NOLOAD)
      0025ED 00 00 08 B2           4234 	.dw	0,Ldebug_pubnames_end-Ldebug_pubnames_start
      0025F1                       4235 Ldebug_pubnames_start:
      0025F1 00 02                 4236 	.dw	2
      0025F3 00 00 53 0A           4237 	.dw	0,(Ldebug_info_start-4)
      0025F7 00 00 11 DA           4238 	.dw	0,4+Ldebug_info_end-Ldebug_info_start
      0025FB 00 00 00 A0           4239 	.dw	0,160
      0025FF 4D 4F 44 49 46 59 5F  4240 	.ascii "MODIFY_HIRC"
             48 49 52 43
      00260A 00                    4241 	.db	0
      00260B 00 00 01 29           4242 	.dw	0,297
      00260F 46 73 79 73 53 65 6C  4243 	.ascii "FsysSelect"
             65 63 74
      002619 00                    4244 	.db	0
      00261A 00 00 01 66           4245 	.dw	0,358
      00261E 43 6C 6F 63 6B 45 6E  4246 	.ascii "ClockEnable"
             61 62 6C 65
      002629 00                    4247 	.db	0
      00262A 00 00 01 A4           4248 	.dw	0,420
      00262E 43 6C 6F 63 6B 44 69  4249 	.ascii "ClockDisable"
             73 61 62 6C 65
      00263A 00                    4250 	.db	0
      00263B 00 00 01 E3           4251 	.dw	0,483
      00263F 43 6C 6F 63 6B 53 77  4252 	.ascii "ClockSwitch"
             69 74 63 68
      00264A 00                    4253 	.db	0
      00264B 00 00 02 29           4254 	.dw	0,553
      00264F 42 49 54 5F 54 4D 50  4255 	.ascii "BIT_TMP"
      002656 00                    4256 	.db	0
      002657 00 00 02 43           4257 	.dw	0,579
      00265B 50 30                 4258 	.ascii "P0"
      00265D 00                    4259 	.db	0
      00265E 00 00 02 52           4260 	.dw	0,594
      002662 53 50                 4261 	.ascii "SP"
      002664 00                    4262 	.db	0
      002665 00 00 02 61           4263 	.dw	0,609
      002669 44 50 4C              4264 	.ascii "DPL"
      00266C 00                    4265 	.db	0
      00266D 00 00 02 71           4266 	.dw	0,625
      002671 44 50 48              4267 	.ascii "DPH"
      002674 00                    4268 	.db	0
      002675 00 00 02 81           4269 	.dw	0,641
      002679 52 43 54 52 49 4D 30  4270 	.ascii "RCTRIM0"
      002680 00                    4271 	.db	0
      002681 00 00 02 95           4272 	.dw	0,661
      002685 52 43 54 52 49 4D 31  4273 	.ascii "RCTRIM1"
      00268C 00                    4274 	.db	0
      00268D 00 00 02 A9           4275 	.dw	0,681
      002691 52 57 4B              4276 	.ascii "RWK"
      002694 00                    4277 	.db	0
      002695 00 00 02 B9           4278 	.dw	0,697
      002699 50 43 4F 4E           4279 	.ascii "PCON"
      00269D 00                    4280 	.db	0
      00269E 00 00 02 CA           4281 	.dw	0,714
      0026A2 54 43 4F 4E           4282 	.ascii "TCON"
      0026A6 00                    4283 	.db	0
      0026A7 00 00 02 DB           4284 	.dw	0,731
      0026AB 54 4D 4F 44           4285 	.ascii "TMOD"
      0026AF 00                    4286 	.db	0
      0026B0 00 00 02 EC           4287 	.dw	0,748
      0026B4 54 4C 30              4288 	.ascii "TL0"
      0026B7 00                    4289 	.db	0
      0026B8 00 00 02 FC           4290 	.dw	0,764
      0026BC 54 4C 31              4291 	.ascii "TL1"
      0026BF 00                    4292 	.db	0
      0026C0 00 00 03 0C           4293 	.dw	0,780
      0026C4 54 48 30              4294 	.ascii "TH0"
      0026C7 00                    4295 	.db	0
      0026C8 00 00 03 1C           4296 	.dw	0,796
      0026CC 54 48 31              4297 	.ascii "TH1"
      0026CF 00                    4298 	.db	0
      0026D0 00 00 03 2C           4299 	.dw	0,812
      0026D4 43 4B 43 4F 4E        4300 	.ascii "CKCON"
      0026D9 00                    4301 	.db	0
      0026DA 00 00 03 3E           4302 	.dw	0,830
      0026DE 57 4B 43 4F 4E        4303 	.ascii "WKCON"
      0026E3 00                    4304 	.db	0
      0026E4 00 00 03 50           4305 	.dw	0,848
      0026E8 50 31                 4306 	.ascii "P1"
      0026EA 00                    4307 	.db	0
      0026EB 00 00 03 5F           4308 	.dw	0,863
      0026EF 53 46 52 53           4309 	.ascii "SFRS"
      0026F3 00                    4310 	.db	0
      0026F4 00 00 03 70           4311 	.dw	0,880
      0026F8 43 41 50 43 4F 4E 30  4312 	.ascii "CAPCON0"
      0026FF 00                    4313 	.db	0
      002700 00 00 03 84           4314 	.dw	0,900
      002704 43 41 50 43 4F 4E 31  4315 	.ascii "CAPCON1"
      00270B 00                    4316 	.db	0
      00270C 00 00 03 98           4317 	.dw	0,920
      002710 43 41 50 43 4F 4E 32  4318 	.ascii "CAPCON2"
      002717 00                    4319 	.db	0
      002718 00 00 03 AC           4320 	.dw	0,940
      00271C 43 4B 44 49 56        4321 	.ascii "CKDIV"
      002721 00                    4322 	.db	0
      002722 00 00 03 BE           4323 	.dw	0,958
      002726 43 4B 53 57 54        4324 	.ascii "CKSWT"
      00272B 00                    4325 	.db	0
      00272C 00 00 03 D0           4326 	.dw	0,976
      002730 43 4B 45 4E           4327 	.ascii "CKEN"
      002734 00                    4328 	.db	0
      002735 00 00 03 E1           4329 	.dw	0,993
      002739 53 43 4F 4E           4330 	.ascii "SCON"
      00273D 00                    4331 	.db	0
      00273E 00 00 03 F2           4332 	.dw	0,1010
      002742 53 42 55 46           4333 	.ascii "SBUF"
      002746 00                    4334 	.db	0
      002747 00 00 04 03           4335 	.dw	0,1027
      00274B 53 42 55 46 5F 31     4336 	.ascii "SBUF_1"
      002751 00                    4337 	.db	0
      002752 00 00 04 16           4338 	.dw	0,1046
      002756 45 49 45              4339 	.ascii "EIE"
      002759 00                    4340 	.db	0
      00275A 00 00 04 26           4341 	.dw	0,1062
      00275E 45 49 45 31           4342 	.ascii "EIE1"
      002762 00                    4343 	.db	0
      002763 00 00 04 37           4344 	.dw	0,1079
      002767 43 48 50 43 4F 4E     4345 	.ascii "CHPCON"
      00276D 00                    4346 	.db	0
      00276E 00 00 04 4A           4347 	.dw	0,1098
      002772 50 32                 4348 	.ascii "P2"
      002774 00                    4349 	.db	0
      002775 00 00 04 59           4350 	.dw	0,1113
      002779 41 55 58 52 31        4351 	.ascii "AUXR1"
      00277E 00                    4352 	.db	0
      00277F 00 00 04 6B           4353 	.dw	0,1131
      002783 42 4F 44 43 4F 4E 30  4354 	.ascii "BODCON0"
      00278A 00                    4355 	.db	0
      00278B 00 00 04 7F           4356 	.dw	0,1151
      00278F 49 41 50 54 52 47     4357 	.ascii "IAPTRG"
      002795 00                    4358 	.db	0
      002796 00 00 04 92           4359 	.dw	0,1170
      00279A 49 41 50 55 45 4E     4360 	.ascii "IAPUEN"
      0027A0 00                    4361 	.db	0
      0027A1 00 00 04 A5           4362 	.dw	0,1189
      0027A5 49 41 50 41 4C        4363 	.ascii "IAPAL"
      0027AA 00                    4364 	.db	0
      0027AB 00 00 04 B7           4365 	.dw	0,1207
      0027AF 49 41 50 41 48        4366 	.ascii "IAPAH"
      0027B4 00                    4367 	.db	0
      0027B5 00 00 04 C9           4368 	.dw	0,1225
      0027B9 49 45                 4369 	.ascii "IE"
      0027BB 00                    4370 	.db	0
      0027BC 00 00 04 D8           4371 	.dw	0,1240
      0027C0 53 41 44 44 52        4372 	.ascii "SADDR"
      0027C5 00                    4373 	.db	0
      0027C6 00 00 04 EA           4374 	.dw	0,1258
      0027CA 57 44 43 4F 4E        4375 	.ascii "WDCON"
      0027CF 00                    4376 	.db	0
      0027D0 00 00 04 FC           4377 	.dw	0,1276
      0027D4 42 4F 44 43 4F 4E 31  4378 	.ascii "BODCON1"
      0027DB 00                    4379 	.db	0
      0027DC 00 00 05 10           4380 	.dw	0,1296
      0027E0 50 33 4D 31           4381 	.ascii "P3M1"
      0027E4 00                    4382 	.db	0
      0027E5 00 00 05 21           4383 	.dw	0,1313
      0027E9 50 33 53              4384 	.ascii "P3S"
      0027EC 00                    4385 	.db	0
      0027ED 00 00 05 31           4386 	.dw	0,1329
      0027F1 50 33 4D 32           4387 	.ascii "P3M2"
      0027F5 00                    4388 	.db	0
      0027F6 00 00 05 42           4389 	.dw	0,1346
      0027FA 50 33 53 52           4390 	.ascii "P3SR"
      0027FE 00                    4391 	.db	0
      0027FF 00 00 05 53           4392 	.dw	0,1363
      002803 49 41 50 46 44        4393 	.ascii "IAPFD"
      002808 00                    4394 	.db	0
      002809 00 00 05 65           4395 	.dw	0,1381
      00280D 49 41 50 43 4E        4396 	.ascii "IAPCN"
      002812 00                    4397 	.db	0
      002813 00 00 05 77           4398 	.dw	0,1399
      002817 50 33                 4399 	.ascii "P3"
      002819 00                    4400 	.db	0
      00281A 00 00 05 86           4401 	.dw	0,1414
      00281E 50 30 4D 31           4402 	.ascii "P0M1"
      002822 00                    4403 	.db	0
      002823 00 00 05 97           4404 	.dw	0,1431
      002827 50 30 53              4405 	.ascii "P0S"
      00282A 00                    4406 	.db	0
      00282B 00 00 05 A7           4407 	.dw	0,1447
      00282F 50 30 4D 32           4408 	.ascii "P0M2"
      002833 00                    4409 	.db	0
      002834 00 00 05 B8           4410 	.dw	0,1464
      002838 50 30 53 52           4411 	.ascii "P0SR"
      00283C 00                    4412 	.db	0
      00283D 00 00 05 C9           4413 	.dw	0,1481
      002841 50 31 4D 31           4414 	.ascii "P1M1"
      002845 00                    4415 	.db	0
      002846 00 00 05 DA           4416 	.dw	0,1498
      00284A 50 31 53              4417 	.ascii "P1S"
      00284D 00                    4418 	.db	0
      00284E 00 00 05 EA           4419 	.dw	0,1514
      002852 50 31 4D 32           4420 	.ascii "P1M2"
      002856 00                    4421 	.db	0
      002857 00 00 05 FB           4422 	.dw	0,1531
      00285B 50 31 53 52           4423 	.ascii "P1SR"
      00285F 00                    4424 	.db	0
      002860 00 00 06 0C           4425 	.dw	0,1548
      002864 50 32 53              4426 	.ascii "P2S"
      002867 00                    4427 	.db	0
      002868 00 00 06 1C           4428 	.dw	0,1564
      00286C 49 50 48              4429 	.ascii "IPH"
      00286F 00                    4430 	.db	0
      002870 00 00 06 2C           4431 	.dw	0,1580
      002874 50 57 4D 49 4E 54 43  4432 	.ascii "PWMINTC"
      00287B 00                    4433 	.db	0
      00287C 00 00 06 40           4434 	.dw	0,1600
      002880 49 50                 4435 	.ascii "IP"
      002882 00                    4436 	.db	0
      002883 00 00 06 4F           4437 	.dw	0,1615
      002887 53 41 44 45 4E        4438 	.ascii "SADEN"
      00288C 00                    4439 	.db	0
      00288D 00 00 06 61           4440 	.dw	0,1633
      002891 53 41 44 45 4E 5F 31  4441 	.ascii "SADEN_1"
      002898 00                    4442 	.db	0
      002899 00 00 06 75           4443 	.dw	0,1653
      00289D 53 41 44 44 52 5F 31  4444 	.ascii "SADDR_1"
      0028A4 00                    4445 	.db	0
      0028A5 00 00 06 89           4446 	.dw	0,1673
      0028A9 49 32 44 41 54        4447 	.ascii "I2DAT"
      0028AE 00                    4448 	.db	0
      0028AF 00 00 06 9B           4449 	.dw	0,1691
      0028B3 49 32 53 54 41 54     4450 	.ascii "I2STAT"
      0028B9 00                    4451 	.db	0
      0028BA 00 00 06 AE           4452 	.dw	0,1710
      0028BE 49 32 43 4C 4B        4453 	.ascii "I2CLK"
      0028C3 00                    4454 	.db	0
      0028C4 00 00 06 C0           4455 	.dw	0,1728
      0028C8 49 32 54 4F 43        4456 	.ascii "I2TOC"
      0028CD 00                    4457 	.db	0
      0028CE 00 00 06 D2           4458 	.dw	0,1746
      0028D2 49 32 43 4F 4E        4459 	.ascii "I2CON"
      0028D7 00                    4460 	.db	0
      0028D8 00 00 06 E4           4461 	.dw	0,1764
      0028DC 49 32 41 44 44 52     4462 	.ascii "I2ADDR"
      0028E2 00                    4463 	.db	0
      0028E3 00 00 06 F7           4464 	.dw	0,1783
      0028E7 41 44 43 52 4C        4465 	.ascii "ADCRL"
      0028EC 00                    4466 	.db	0
      0028ED 00 00 07 09           4467 	.dw	0,1801
      0028F1 41 44 43 52 48        4468 	.ascii "ADCRH"
      0028F6 00                    4469 	.db	0
      0028F7 00 00 07 1B           4470 	.dw	0,1819
      0028FB 54 33 43 4F 4E        4471 	.ascii "T3CON"
      002900 00                    4472 	.db	0
      002901 00 00 07 2D           4473 	.dw	0,1837
      002905 50 57 4D 34 48        4474 	.ascii "PWM4H"
      00290A 00                    4475 	.db	0
      00290B 00 00 07 3F           4476 	.dw	0,1855
      00290F 52 4C 33              4477 	.ascii "RL3"
      002912 00                    4478 	.db	0
      002913 00 00 07 4F           4479 	.dw	0,1871
      002917 50 57 4D 35 48        4480 	.ascii "PWM5H"
      00291C 00                    4481 	.db	0
      00291D 00 00 07 61           4482 	.dw	0,1889
      002921 52 48 33              4483 	.ascii "RH3"
      002924 00                    4484 	.db	0
      002925 00 00 07 71           4485 	.dw	0,1905
      002929 50 49 4F 43 4F 4E 31  4486 	.ascii "PIOCON1"
      002930 00                    4487 	.db	0
      002931 00 00 07 85           4488 	.dw	0,1925
      002935 54 41                 4489 	.ascii "TA"
      002937 00                    4490 	.db	0
      002938 00 00 07 94           4491 	.dw	0,1940
      00293C 54 32 43 4F 4E        4492 	.ascii "T2CON"
      002941 00                    4493 	.db	0
      002942 00 00 07 A6           4494 	.dw	0,1958
      002946 54 32 4D 4F 44        4495 	.ascii "T2MOD"
      00294B 00                    4496 	.db	0
      00294C 00 00 07 B8           4497 	.dw	0,1976
      002950 52 43 4D 50 32 4C     4498 	.ascii "RCMP2L"
      002956 00                    4499 	.db	0
      002957 00 00 07 CB           4500 	.dw	0,1995
      00295B 52 43 4D 50 32 48     4501 	.ascii "RCMP2H"
      002961 00                    4502 	.db	0
      002962 00 00 07 DE           4503 	.dw	0,2014
      002966 54 4C 32              4504 	.ascii "TL2"
      002969 00                    4505 	.db	0
      00296A 00 00 07 EE           4506 	.dw	0,2030
      00296E 50 57 4D 34 4C        4507 	.ascii "PWM4L"
      002973 00                    4508 	.db	0
      002974 00 00 08 00           4509 	.dw	0,2048
      002978 54 48 32              4510 	.ascii "TH2"
      00297B 00                    4511 	.db	0
      00297C 00 00 08 10           4512 	.dw	0,2064
      002980 50 57 4D 35 4C        4513 	.ascii "PWM5L"
      002985 00                    4514 	.db	0
      002986 00 00 08 22           4515 	.dw	0,2082
      00298A 41 44 43 4D 50 4C     4516 	.ascii "ADCMPL"
      002990 00                    4517 	.db	0
      002991 00 00 08 35           4518 	.dw	0,2101
      002995 41 44 43 4D 50 48     4519 	.ascii "ADCMPH"
      00299B 00                    4520 	.db	0
      00299C 00 00 08 48           4521 	.dw	0,2120
      0029A0 50 53 57              4522 	.ascii "PSW"
      0029A3 00                    4523 	.db	0
      0029A4 00 00 08 58           4524 	.dw	0,2136
      0029A8 50 57 4D 50 48        4525 	.ascii "PWMPH"
      0029AD 00                    4526 	.db	0
      0029AE 00 00 08 6A           4527 	.dw	0,2154
      0029B2 50 57 4D 30 48        4528 	.ascii "PWM0H"
      0029B7 00                    4529 	.db	0
      0029B8 00 00 08 7C           4530 	.dw	0,2172
      0029BC 50 57 4D 31 48        4531 	.ascii "PWM1H"
      0029C1 00                    4532 	.db	0
      0029C2 00 00 08 8E           4533 	.dw	0,2190
      0029C6 50 57 4D 32 48        4534 	.ascii "PWM2H"
      0029CB 00                    4535 	.db	0
      0029CC 00 00 08 A0           4536 	.dw	0,2208
      0029D0 50 57 4D 33 48        4537 	.ascii "PWM3H"
      0029D5 00                    4538 	.db	0
      0029D6 00 00 08 B2           4539 	.dw	0,2226
      0029DA 50 4E 50              4540 	.ascii "PNP"
      0029DD 00                    4541 	.db	0
      0029DE 00 00 08 C2           4542 	.dw	0,2242
      0029E2 46 42 44              4543 	.ascii "FBD"
      0029E5 00                    4544 	.db	0
      0029E6 00 00 08 D2           4545 	.dw	0,2258
      0029EA 50 57 4D 43 4F 4E 30  4546 	.ascii "PWMCON0"
      0029F1 00                    4547 	.db	0
      0029F2 00 00 08 E6           4548 	.dw	0,2278
      0029F6 50 57 4D 50 4C        4549 	.ascii "PWMPL"
      0029FB 00                    4550 	.db	0
      0029FC 00 00 08 F8           4551 	.dw	0,2296
      002A00 50 57 4D 30 4C        4552 	.ascii "PWM0L"
      002A05 00                    4553 	.db	0
      002A06 00 00 09 0A           4554 	.dw	0,2314
      002A0A 50 57 4D 31 4C        4555 	.ascii "PWM1L"
      002A0F 00                    4556 	.db	0
      002A10 00 00 09 1C           4557 	.dw	0,2332
      002A14 50 57 4D 32 4C        4558 	.ascii "PWM2L"
      002A19 00                    4559 	.db	0
      002A1A 00 00 09 2E           4560 	.dw	0,2350
      002A1E 50 57 4D 33 4C        4561 	.ascii "PWM3L"
      002A23 00                    4562 	.db	0
      002A24 00 00 09 40           4563 	.dw	0,2368
      002A28 50 49 4F 43 4F 4E 30  4564 	.ascii "PIOCON0"
      002A2F 00                    4565 	.db	0
      002A30 00 00 09 54           4566 	.dw	0,2388
      002A34 50 57 4D 43 4F 4E 31  4567 	.ascii "PWMCON1"
      002A3B 00                    4568 	.db	0
      002A3C 00 00 09 68           4569 	.dw	0,2408
      002A40 41 43 43              4570 	.ascii "ACC"
      002A43 00                    4571 	.db	0
      002A44 00 00 09 78           4572 	.dw	0,2424
      002A48 41 44 43 43 4F 4E 31  4573 	.ascii "ADCCON1"
      002A4F 00                    4574 	.db	0
      002A50 00 00 09 8C           4575 	.dw	0,2444
      002A54 41 44 43 43 4F 4E 32  4576 	.ascii "ADCCON2"
      002A5B 00                    4577 	.db	0
      002A5C 00 00 09 A0           4578 	.dw	0,2464
      002A60 41 44 43 44 4C 59     4579 	.ascii "ADCDLY"
      002A66 00                    4580 	.db	0
      002A67 00 00 09 B3           4581 	.dw	0,2483
      002A6B 43 30 4C              4582 	.ascii "C0L"
      002A6E 00                    4583 	.db	0
      002A6F 00 00 09 C3           4584 	.dw	0,2499
      002A73 43 30 48              4585 	.ascii "C0H"
      002A76 00                    4586 	.db	0
      002A77 00 00 09 D3           4587 	.dw	0,2515
      002A7B 43 31 4C              4588 	.ascii "C1L"
      002A7E 00                    4589 	.db	0
      002A7F 00 00 09 E3           4590 	.dw	0,2531
      002A83 43 31 48              4591 	.ascii "C1H"
      002A86 00                    4592 	.db	0
      002A87 00 00 09 F3           4593 	.dw	0,2547
      002A8B 41 44 43 43 4F 4E 30  4594 	.ascii "ADCCON0"
      002A92 00                    4595 	.db	0
      002A93 00 00 0A 07           4596 	.dw	0,2567
      002A97 50 49 43 4F 4E        4597 	.ascii "PICON"
      002A9C 00                    4598 	.db	0
      002A9D 00 00 0A 19           4599 	.dw	0,2585
      002AA1 50 49 4E 45 4E        4600 	.ascii "PINEN"
      002AA6 00                    4601 	.db	0
      002AA7 00 00 0A 2B           4602 	.dw	0,2603
      002AAB 50 49 50 45 4E        4603 	.ascii "PIPEN"
      002AB0 00                    4604 	.db	0
      002AB1 00 00 0A 3D           4605 	.dw	0,2621
      002AB5 50 49 46              4606 	.ascii "PIF"
      002AB8 00                    4607 	.db	0
      002AB9 00 00 0A 4D           4608 	.dw	0,2637
      002ABD 43 32 4C              4609 	.ascii "C2L"
      002AC0 00                    4610 	.db	0
      002AC1 00 00 0A 5D           4611 	.dw	0,2653
      002AC5 43 32 48              4612 	.ascii "C2H"
      002AC8 00                    4613 	.db	0
      002AC9 00 00 0A 6D           4614 	.dw	0,2669
      002ACD 45 49 50              4615 	.ascii "EIP"
      002AD0 00                    4616 	.db	0
      002AD1 00 00 0A 7D           4617 	.dw	0,2685
      002AD5 42                    4618 	.ascii "B"
      002AD6 00                    4619 	.db	0
      002AD7 00 00 0A 8B           4620 	.dw	0,2699
      002ADB 43 41 50 43 4F 4E 33  4621 	.ascii "CAPCON3"
      002AE2 00                    4622 	.db	0
      002AE3 00 00 0A 9F           4623 	.dw	0,2719
      002AE7 43 41 50 43 4F 4E 34  4624 	.ascii "CAPCON4"
      002AEE 00                    4625 	.db	0
      002AEF 00 00 0A B3           4626 	.dw	0,2739
      002AF3 53 50 43 52           4627 	.ascii "SPCR"
      002AF7 00                    4628 	.db	0
      002AF8 00 00 0A C4           4629 	.dw	0,2756
      002AFC 53 50 43 52 32        4630 	.ascii "SPCR2"
      002B01 00                    4631 	.db	0
      002B02 00 00 0A D6           4632 	.dw	0,2774
      002B06 53 50 53 52           4633 	.ascii "SPSR"
      002B0A 00                    4634 	.db	0
      002B0B 00 00 0A E7           4635 	.dw	0,2791
      002B0F 53 50 44 52           4636 	.ascii "SPDR"
      002B13 00                    4637 	.db	0
      002B14 00 00 0A F8           4638 	.dw	0,2808
      002B18 41 49 4E 44 49 44 53  4639 	.ascii "AINDIDS"
      002B1F 00                    4640 	.db	0
      002B20 00 00 0B 0C           4641 	.dw	0,2828
      002B24 45 49 50 48           4642 	.ascii "EIPH"
      002B28 00                    4643 	.db	0
      002B29 00 00 0B 1D           4644 	.dw	0,2845
      002B2D 53 43 4F 4E 5F 31     4645 	.ascii "SCON_1"
      002B33 00                    4646 	.db	0
      002B34 00 00 0B 30           4647 	.dw	0,2864
      002B38 50 44 54 45 4E        4648 	.ascii "PDTEN"
      002B3D 00                    4649 	.db	0
      002B3E 00 00 0B 42           4650 	.dw	0,2882
      002B42 50 44 54 43 4E 54     4651 	.ascii "PDTCNT"
      002B48 00                    4652 	.db	0
      002B49 00 00 0B 55           4653 	.dw	0,2901
      002B4D 50 4D 45 4E           4654 	.ascii "PMEN"
      002B51 00                    4655 	.db	0
      002B52 00 00 0B 66           4656 	.dw	0,2918
      002B56 50 4D 44              4657 	.ascii "PMD"
      002B59 00                    4658 	.db	0
      002B5A 00 00 0B 76           4659 	.dw	0,2934
      002B5E 45 49 50 31           4660 	.ascii "EIP1"
      002B62 00                    4661 	.db	0
      002B63 00 00 0B 87           4662 	.dw	0,2951
      002B67 45 49 50 48 31        4663 	.ascii "EIPH1"
      002B6C 00                    4664 	.db	0
      002B6D 00 00 0B A7           4665 	.dw	0,2983
      002B71 53 4D 30 5F 31        4666 	.ascii "SM0_1"
      002B76 00                    4667 	.db	0
      002B77 00 00 0B B9           4668 	.dw	0,3001
      002B7B 46 45 5F 31           4669 	.ascii "FE_1"
      002B7F 00                    4670 	.db	0
      002B80 00 00 0B CA           4671 	.dw	0,3018
      002B84 53 4D 31 5F 31        4672 	.ascii "SM1_1"
      002B89 00                    4673 	.db	0
      002B8A 00 00 0B DC           4674 	.dw	0,3036
      002B8E 53 4D 32 5F 31        4675 	.ascii "SM2_1"
      002B93 00                    4676 	.db	0
      002B94 00 00 0B EE           4677 	.dw	0,3054
      002B98 52 45 4E 5F 31        4678 	.ascii "REN_1"
      002B9D 00                    4679 	.db	0
      002B9E 00 00 0C 00           4680 	.dw	0,3072
      002BA2 54 42 38 5F 31        4681 	.ascii "TB8_1"
      002BA7 00                    4682 	.db	0
      002BA8 00 00 0C 12           4683 	.dw	0,3090
      002BAC 52 42 38 5F 31        4684 	.ascii "RB8_1"
      002BB1 00                    4685 	.db	0
      002BB2 00 00 0C 24           4686 	.dw	0,3108
      002BB6 54 49 5F 31           4687 	.ascii "TI_1"
      002BBA 00                    4688 	.db	0
      002BBB 00 00 0C 35           4689 	.dw	0,3125
      002BBF 52 49 5F 31           4690 	.ascii "RI_1"
      002BC3 00                    4691 	.db	0
      002BC4 00 00 0C 46           4692 	.dw	0,3142
      002BC8 41 44 43 46           4693 	.ascii "ADCF"
      002BCC 00                    4694 	.db	0
      002BCD 00 00 0C 57           4695 	.dw	0,3159
      002BD1 41 44 43 53           4696 	.ascii "ADCS"
      002BD5 00                    4697 	.db	0
      002BD6 00 00 0C 68           4698 	.dw	0,3176
      002BDA 45 54 47 53 45 4C 31  4699 	.ascii "ETGSEL1"
      002BE1 00                    4700 	.db	0
      002BE2 00 00 0C 7C           4701 	.dw	0,3196
      002BE6 45 54 47 53 45 4C 30  4702 	.ascii "ETGSEL0"
      002BED 00                    4703 	.db	0
      002BEE 00 00 0C 90           4704 	.dw	0,3216
      002BF2 41 44 43 48 53 33     4705 	.ascii "ADCHS3"
      002BF8 00                    4706 	.db	0
      002BF9 00 00 0C A3           4707 	.dw	0,3235
      002BFD 41 44 43 48 53 32     4708 	.ascii "ADCHS2"
      002C03 00                    4709 	.db	0
      002C04 00 00 0C B6           4710 	.dw	0,3254
      002C08 41 44 43 48 53 31     4711 	.ascii "ADCHS1"
      002C0E 00                    4712 	.db	0
      002C0F 00 00 0C C9           4713 	.dw	0,3273
      002C13 41 44 43 48 53 30     4714 	.ascii "ADCHS0"
      002C19 00                    4715 	.db	0
      002C1A 00 00 0C DC           4716 	.dw	0,3292
      002C1E 50 57 4D 52 55 4E     4717 	.ascii "PWMRUN"
      002C24 00                    4718 	.db	0
      002C25 00 00 0C EF           4719 	.dw	0,3311
      002C29 4C 4F 41 44           4720 	.ascii "LOAD"
      002C2D 00                    4721 	.db	0
      002C2E 00 00 0D 00           4722 	.dw	0,3328
      002C32 50 57 4D 46           4723 	.ascii "PWMF"
      002C36 00                    4724 	.db	0
      002C37 00 00 0D 11           4725 	.dw	0,3345
      002C3B 43 4C 52 50 57 4D     4726 	.ascii "CLRPWM"
      002C41 00                    4727 	.db	0
      002C42 00 00 0D 24           4728 	.dw	0,3364
      002C46 43 59                 4729 	.ascii "CY"
      002C48 00                    4730 	.db	0
      002C49 00 00 0D 33           4731 	.dw	0,3379
      002C4D 41 43                 4732 	.ascii "AC"
      002C4F 00                    4733 	.db	0
      002C50 00 00 0D 42           4734 	.dw	0,3394
      002C54 46 30                 4735 	.ascii "F0"
      002C56 00                    4736 	.db	0
      002C57 00 00 0D 51           4737 	.dw	0,3409
      002C5B 52 53 31              4738 	.ascii "RS1"
      002C5E 00                    4739 	.db	0
      002C5F 00 00 0D 61           4740 	.dw	0,3425
      002C63 52 53 30              4741 	.ascii "RS0"
      002C66 00                    4742 	.db	0
      002C67 00 00 0D 71           4743 	.dw	0,3441
      002C6B 4F 56                 4744 	.ascii "OV"
      002C6D 00                    4745 	.db	0
      002C6E 00 00 0D 80           4746 	.dw	0,3456
      002C72 50                    4747 	.ascii "P"
      002C73 00                    4748 	.db	0
      002C74 00 00 0D 8E           4749 	.dw	0,3470
      002C78 54 46 32              4750 	.ascii "TF2"
      002C7B 00                    4751 	.db	0
      002C7C 00 00 0D 9E           4752 	.dw	0,3486
      002C80 54 52 32              4753 	.ascii "TR2"
      002C83 00                    4754 	.db	0
      002C84 00 00 0D AE           4755 	.dw	0,3502
      002C88 43 4D 5F 52 4C 32     4756 	.ascii "CM_RL2"
      002C8E 00                    4757 	.db	0
      002C8F 00 00 0D C1           4758 	.dw	0,3521
      002C93 49 32 43 45 4E        4759 	.ascii "I2CEN"
      002C98 00                    4760 	.db	0
      002C99 00 00 0D D3           4761 	.dw	0,3539
      002C9D 53 54 41              4762 	.ascii "STA"
      002CA0 00                    4763 	.db	0
      002CA1 00 00 0D E3           4764 	.dw	0,3555
      002CA5 53 54 4F              4765 	.ascii "STO"
      002CA8 00                    4766 	.db	0
      002CA9 00 00 0D F3           4767 	.dw	0,3571
      002CAD 53 49                 4768 	.ascii "SI"
      002CAF 00                    4769 	.db	0
      002CB0 00 00 0E 02           4770 	.dw	0,3586
      002CB4 41 41                 4771 	.ascii "AA"
      002CB6 00                    4772 	.db	0
      002CB7 00 00 0E 11           4773 	.dw	0,3601
      002CBB 49 32 43 50 58        4774 	.ascii "I2CPX"
      002CC0 00                    4775 	.db	0
      002CC1 00 00 0E 23           4776 	.dw	0,3619
      002CC5 50 41 44 43           4777 	.ascii "PADC"
      002CC9 00                    4778 	.db	0
      002CCA 00 00 0E 34           4779 	.dw	0,3636
      002CCE 50 42 4F 44           4780 	.ascii "PBOD"
      002CD2 00                    4781 	.db	0
      002CD3 00 00 0E 45           4782 	.dw	0,3653
      002CD7 50 53                 4783 	.ascii "PS"
      002CD9 00                    4784 	.db	0
      002CDA 00 00 0E 54           4785 	.dw	0,3668
      002CDE 50 54 31              4786 	.ascii "PT1"
      002CE1 00                    4787 	.db	0
      002CE2 00 00 0E 64           4788 	.dw	0,3684
      002CE6 50 58 31              4789 	.ascii "PX1"
      002CE9 00                    4790 	.db	0
      002CEA 00 00 0E 74           4791 	.dw	0,3700
      002CEE 50 54 30              4792 	.ascii "PT0"
      002CF1 00                    4793 	.db	0
      002CF2 00 00 0E 84           4794 	.dw	0,3716
      002CF6 50 58 30              4795 	.ascii "PX0"
      002CF9 00                    4796 	.db	0
      002CFA 00 00 0E 94           4797 	.dw	0,3732
      002CFE 50 33 30              4798 	.ascii "P30"
      002D01 00                    4799 	.db	0
      002D02 00 00 0E A4           4800 	.dw	0,3748
      002D06 45 41                 4801 	.ascii "EA"
      002D08 00                    4802 	.db	0
      002D09 00 00 0E B3           4803 	.dw	0,3763
      002D0D 45 41 44 43           4804 	.ascii "EADC"
      002D11 00                    4805 	.db	0
      002D12 00 00 0E C4           4806 	.dw	0,3780
      002D16 45 42 4F 44           4807 	.ascii "EBOD"
      002D1A 00                    4808 	.db	0
      002D1B 00 00 0E D5           4809 	.dw	0,3797
      002D1F 45 53                 4810 	.ascii "ES"
      002D21 00                    4811 	.db	0
      002D22 00 00 0E E4           4812 	.dw	0,3812
      002D26 45 54 31              4813 	.ascii "ET1"
      002D29 00                    4814 	.db	0
      002D2A 00 00 0E F4           4815 	.dw	0,3828
      002D2E 45 58 31              4816 	.ascii "EX1"
      002D31 00                    4817 	.db	0
      002D32 00 00 0F 04           4818 	.dw	0,3844
      002D36 45 54 30              4819 	.ascii "ET0"
      002D39 00                    4820 	.db	0
      002D3A 00 00 0F 14           4821 	.dw	0,3860
      002D3E 45 58 30              4822 	.ascii "EX0"
      002D41 00                    4823 	.db	0
      002D42 00 00 0F 24           4824 	.dw	0,3876
      002D46 50 32 30              4825 	.ascii "P20"
      002D49 00                    4826 	.db	0
      002D4A 00 00 0F 34           4827 	.dw	0,3892
      002D4E 53 4D 30              4828 	.ascii "SM0"
      002D51 00                    4829 	.db	0
      002D52 00 00 0F 44           4830 	.dw	0,3908
      002D56 46 45                 4831 	.ascii "FE"
      002D58 00                    4832 	.db	0
      002D59 00 00 0F 53           4833 	.dw	0,3923
      002D5D 53 4D 31              4834 	.ascii "SM1"
      002D60 00                    4835 	.db	0
      002D61 00 00 0F 63           4836 	.dw	0,3939
      002D65 53 4D 32              4837 	.ascii "SM2"
      002D68 00                    4838 	.db	0
      002D69 00 00 0F 73           4839 	.dw	0,3955
      002D6D 52 45 4E              4840 	.ascii "REN"
      002D70 00                    4841 	.db	0
      002D71 00 00 0F 83           4842 	.dw	0,3971
      002D75 54 42 38              4843 	.ascii "TB8"
      002D78 00                    4844 	.db	0
      002D79 00 00 0F 93           4845 	.dw	0,3987
      002D7D 52 42 38              4846 	.ascii "RB8"
      002D80 00                    4847 	.db	0
      002D81 00 00 0F A3           4848 	.dw	0,4003
      002D85 54 49                 4849 	.ascii "TI"
      002D87 00                    4850 	.db	0
      002D88 00 00 0F B2           4851 	.dw	0,4018
      002D8C 52 49                 4852 	.ascii "RI"
      002D8E 00                    4853 	.db	0
      002D8F 00 00 0F C1           4854 	.dw	0,4033
      002D93 50 31 37              4855 	.ascii "P17"
      002D96 00                    4856 	.db	0
      002D97 00 00 0F D1           4857 	.dw	0,4049
      002D9B 50 31 36              4858 	.ascii "P16"
      002D9E 00                    4859 	.db	0
      002D9F 00 00 0F E1           4860 	.dw	0,4065
      002DA3 54 58 44 5F 31        4861 	.ascii "TXD_1"
      002DA8 00                    4862 	.db	0
      002DA9 00 00 0F F3           4863 	.dw	0,4083
      002DAD 50 31 35              4864 	.ascii "P15"
      002DB0 00                    4865 	.db	0
      002DB1 00 00 10 03           4866 	.dw	0,4099
      002DB5 50 31 34              4867 	.ascii "P14"
      002DB8 00                    4868 	.db	0
      002DB9 00 00 10 13           4869 	.dw	0,4115
      002DBD 53 44 41              4870 	.ascii "SDA"
      002DC0 00                    4871 	.db	0
      002DC1 00 00 10 23           4872 	.dw	0,4131
      002DC5 50 31 33              4873 	.ascii "P13"
      002DC8 00                    4874 	.db	0
      002DC9 00 00 10 33           4875 	.dw	0,4147
      002DCD 53 43 4C              4876 	.ascii "SCL"
      002DD0 00                    4877 	.db	0
      002DD1 00 00 10 43           4878 	.dw	0,4163
      002DD5 50 31 32              4879 	.ascii "P12"
      002DD8 00                    4880 	.db	0
      002DD9 00 00 10 53           4881 	.dw	0,4179
      002DDD 50 31 31              4882 	.ascii "P11"
      002DE0 00                    4883 	.db	0
      002DE1 00 00 10 63           4884 	.dw	0,4195
      002DE5 50 31 30              4885 	.ascii "P10"
      002DE8 00                    4886 	.db	0
      002DE9 00 00 10 73           4887 	.dw	0,4211
      002DED 54 46 31              4888 	.ascii "TF1"
      002DF0 00                    4889 	.db	0
      002DF1 00 00 10 83           4890 	.dw	0,4227
      002DF5 54 52 31              4891 	.ascii "TR1"
      002DF8 00                    4892 	.db	0
      002DF9 00 00 10 93           4893 	.dw	0,4243
      002DFD 54 46 30              4894 	.ascii "TF0"
      002E00 00                    4895 	.db	0
      002E01 00 00 10 A3           4896 	.dw	0,4259
      002E05 54 52 30              4897 	.ascii "TR0"
      002E08 00                    4898 	.db	0
      002E09 00 00 10 B3           4899 	.dw	0,4275
      002E0D 49 45 31              4900 	.ascii "IE1"
      002E10 00                    4901 	.db	0
      002E11 00 00 10 C3           4902 	.dw	0,4291
      002E15 49 54 31              4903 	.ascii "IT1"
      002E18 00                    4904 	.db	0
      002E19 00 00 10 D3           4905 	.dw	0,4307
      002E1D 49 45 30              4906 	.ascii "IE0"
      002E20 00                    4907 	.db	0
      002E21 00 00 10 E3           4908 	.dw	0,4323
      002E25 49 54 30              4909 	.ascii "IT0"
      002E28 00                    4910 	.db	0
      002E29 00 00 10 F3           4911 	.dw	0,4339
      002E2D 50 30 37              4912 	.ascii "P07"
      002E30 00                    4913 	.db	0
      002E31 00 00 11 03           4914 	.dw	0,4355
      002E35 52 58 44              4915 	.ascii "RXD"
      002E38 00                    4916 	.db	0
      002E39 00 00 11 13           4917 	.dw	0,4371
      002E3D 50 30 36              4918 	.ascii "P06"
      002E40 00                    4919 	.db	0
      002E41 00 00 11 23           4920 	.dw	0,4387
      002E45 54 58 44              4921 	.ascii "TXD"
      002E48 00                    4922 	.db	0
      002E49 00 00 11 33           4923 	.dw	0,4403
      002E4D 50 30 35              4924 	.ascii "P05"
      002E50 00                    4925 	.db	0
      002E51 00 00 11 43           4926 	.dw	0,4419
      002E55 50 30 34              4927 	.ascii "P04"
      002E58 00                    4928 	.db	0
      002E59 00 00 11 53           4929 	.dw	0,4435
      002E5D 53 54 41 44 43        4930 	.ascii "STADC"
      002E62 00                    4931 	.db	0
      002E63 00 00 11 65           4932 	.dw	0,4453
      002E67 50 30 33              4933 	.ascii "P03"
      002E6A 00                    4934 	.db	0
      002E6B 00 00 11 75           4935 	.dw	0,4469
      002E6F 50 30 32              4936 	.ascii "P02"
      002E72 00                    4937 	.db	0
      002E73 00 00 11 85           4938 	.dw	0,4485
      002E77 52 58 44 5F 31        4939 	.ascii "RXD_1"
      002E7C 00                    4940 	.db	0
      002E7D 00 00 11 97           4941 	.dw	0,4503
      002E81 50 30 31              4942 	.ascii "P01"
      002E84 00                    4943 	.db	0
      002E85 00 00 11 A7           4944 	.dw	0,4519
      002E89 4D 49 53 4F           4945 	.ascii "MISO"
      002E8D 00                    4946 	.db	0
      002E8E 00 00 11 B8           4947 	.dw	0,4536
      002E92 50 30 30              4948 	.ascii "P00"
      002E95 00                    4949 	.db	0
      002E96 00 00 11 C8           4950 	.dw	0,4552
      002E9A 4D 4F 53 49           4951 	.ascii "MOSI"
      002E9E 00                    4952 	.db	0
      002E9F 00 00 00 00           4953 	.dw	0,0
      002EA3                       4954 Ldebug_pubnames_end:
                                   4955 
                                   4956 	.area .debug_frame (NOLOAD)
      000630 00 00                 4957 	.dw	0
      000632 00 10                 4958 	.dw	Ldebug_CIE0_end-Ldebug_CIE0_start
      000634                       4959 Ldebug_CIE0_start:
      000634 FF FF                 4960 	.dw	0xffff
      000636 FF FF                 4961 	.dw	0xffff
      000638 01                    4962 	.db	1
      000639 00                    4963 	.db	0
      00063A 01                    4964 	.uleb128	1
      00063B 01                    4965 	.sleb128	1
      00063C 09                    4966 	.db	9
      00063D 0C                    4967 	.db	12
      00063E 16                    4968 	.uleb128	22
      00063F 02                    4969 	.uleb128	2
      000640 89                    4970 	.db	137
      000641 01                    4971 	.uleb128	1
      000642 00                    4972 	.db	0
      000643 00                    4973 	.db	0
      000644                       4974 Ldebug_CIE0_end:
      000644 00 00 00 14           4975 	.dw	0,20
      000648 00 00 06 30           4976 	.dw	0,(Ldebug_CIE0_start-4)
      00064C 00 00 17 C4           4977 	.dw	0,(Ssys$ClockSwitch$109)	;initial loc
      000650 00 00 00 8B           4978 	.dw	0,Ssys$ClockSwitch$129-Ssys$ClockSwitch$109
      000654 01                    4979 	.db	1
      000655 00 00 17 C4           4980 	.dw	0,(Ssys$ClockSwitch$109)
      000659 0E                    4981 	.db	14
      00065A 02                    4982 	.uleb128	2
      00065B 00                    4983 	.db	0
                                   4984 
                                   4985 	.area .debug_frame (NOLOAD)
      00065C 00 00                 4986 	.dw	0
      00065E 00 10                 4987 	.dw	Ldebug_CIE1_end-Ldebug_CIE1_start
      000660                       4988 Ldebug_CIE1_start:
      000660 FF FF                 4989 	.dw	0xffff
      000662 FF FF                 4990 	.dw	0xffff
      000664 01                    4991 	.db	1
      000665 00                    4992 	.db	0
      000666 01                    4993 	.uleb128	1
      000667 01                    4994 	.sleb128	1
      000668 09                    4995 	.db	9
      000669 0C                    4996 	.db	12
      00066A 16                    4997 	.uleb128	22
      00066B 02                    4998 	.uleb128	2
      00066C 89                    4999 	.db	137
      00066D 01                    5000 	.uleb128	1
      00066E 00                    5001 	.db	0
      00066F 00                    5002 	.db	0
      000670                       5003 Ldebug_CIE1_end:
      000670 00 00 00 14           5004 	.dw	0,20
      000674 00 00 06 5C           5005 	.dw	0,(Ldebug_CIE1_start-4)
      000678 00 00 17 90           5006 	.dw	0,(Ssys$ClockDisable$94)	;initial loc
      00067C 00 00 00 34           5007 	.dw	0,Ssys$ClockDisable$107-Ssys$ClockDisable$94
      000680 01                    5008 	.db	1
      000681 00 00 17 90           5009 	.dw	0,(Ssys$ClockDisable$94)
      000685 0E                    5010 	.db	14
      000686 02                    5011 	.uleb128	2
      000687 00                    5012 	.db	0
                                   5013 
                                   5014 	.area .debug_frame (NOLOAD)
      000688 00 00                 5015 	.dw	0
      00068A 00 10                 5016 	.dw	Ldebug_CIE2_end-Ldebug_CIE2_start
      00068C                       5017 Ldebug_CIE2_start:
      00068C FF FF                 5018 	.dw	0xffff
      00068E FF FF                 5019 	.dw	0xffff
      000690 01                    5020 	.db	1
      000691 00                    5021 	.db	0
      000692 01                    5022 	.uleb128	1
      000693 01                    5023 	.sleb128	1
      000694 09                    5024 	.db	9
      000695 0C                    5025 	.db	12
      000696 16                    5026 	.uleb128	22
      000697 02                    5027 	.uleb128	2
      000698 89                    5028 	.db	137
      000699 01                    5029 	.uleb128	1
      00069A 00                    5030 	.db	0
      00069B 00                    5031 	.db	0
      00069C                       5032 Ldebug_CIE2_end:
      00069C 00 00 00 14           5033 	.dw	0,20
      0006A0 00 00 06 88           5034 	.dw	0,(Ldebug_CIE2_start-4)
      0006A4 00 00 17 55           5035 	.dw	0,(Ssys$ClockEnable$79)	;initial loc
      0006A8 00 00 00 3B           5036 	.dw	0,Ssys$ClockEnable$92-Ssys$ClockEnable$79
      0006AC 01                    5037 	.db	1
      0006AD 00 00 17 55           5038 	.dw	0,(Ssys$ClockEnable$79)
      0006B1 0E                    5039 	.db	14
      0006B2 02                    5040 	.uleb128	2
      0006B3 00                    5041 	.db	0
                                   5042 
                                   5043 	.area .debug_frame (NOLOAD)
      0006B4 00 00                 5044 	.dw	0
      0006B6 00 10                 5045 	.dw	Ldebug_CIE3_end-Ldebug_CIE3_start
      0006B8                       5046 Ldebug_CIE3_start:
      0006B8 FF FF                 5047 	.dw	0xffff
      0006BA FF FF                 5048 	.dw	0xffff
      0006BC 01                    5049 	.db	1
      0006BD 00                    5050 	.db	0
      0006BE 01                    5051 	.uleb128	1
      0006BF 01                    5052 	.sleb128	1
      0006C0 09                    5053 	.db	9
      0006C1 0C                    5054 	.db	12
      0006C2 16                    5055 	.uleb128	22
      0006C3 02                    5056 	.uleb128	2
      0006C4 89                    5057 	.db	137
      0006C5 01                    5058 	.uleb128	1
      0006C6 00                    5059 	.db	0
      0006C7 00                    5060 	.db	0
      0006C8                       5061 Ldebug_CIE3_end:
      0006C8 00 00 00 14           5062 	.dw	0,20
      0006CC 00 00 06 B4           5063 	.dw	0,(Ldebug_CIE3_start-4)
      0006D0 00 00 16 E9           5064 	.dw	0,(Ssys$FsysSelect$56)	;initial loc
      0006D4 00 00 00 6C           5065 	.dw	0,Ssys$FsysSelect$77-Ssys$FsysSelect$56
      0006D8 01                    5066 	.db	1
      0006D9 00 00 16 E9           5067 	.dw	0,(Ssys$FsysSelect$56)
      0006DD 0E                    5068 	.db	14
      0006DE 02                    5069 	.uleb128	2
      0006DF 00                    5070 	.db	0
                                   5071 
                                   5072 	.area .debug_frame (NOLOAD)
      0006E0 00 00                 5073 	.dw	0
      0006E2 00 10                 5074 	.dw	Ldebug_CIE4_end-Ldebug_CIE4_start
      0006E4                       5075 Ldebug_CIE4_start:
      0006E4 FF FF                 5076 	.dw	0xffff
      0006E6 FF FF                 5077 	.dw	0xffff
      0006E8 01                    5078 	.db	1
      0006E9 00                    5079 	.db	0
      0006EA 01                    5080 	.uleb128	1
      0006EB 01                    5081 	.sleb128	1
      0006EC 09                    5082 	.db	9
      0006ED 0C                    5083 	.db	12
      0006EE 16                    5084 	.uleb128	22
      0006EF 02                    5085 	.uleb128	2
      0006F0 89                    5086 	.db	137
      0006F1 01                    5087 	.uleb128	1
      0006F2 00                    5088 	.db	0
      0006F3 00                    5089 	.db	0
      0006F4                       5090 Ldebug_CIE4_end:
      0006F4 00 00 00 14           5091 	.dw	0,20
      0006F8 00 00 06 E0           5092 	.dw	0,(Ldebug_CIE4_start-4)
      0006FC 00 00 15 C3           5093 	.dw	0,(Ssys$MODIFY_HIRC$1)	;initial loc
      000700 00 00 01 26           5094 	.dw	0,Ssys$MODIFY_HIRC$54-Ssys$MODIFY_HIRC$1
      000704 01                    5095 	.db	1
      000705 00 00 15 C3           5096 	.dw	0,(Ssys$MODIFY_HIRC$1)
      000709 0E                    5097 	.db	14
      00070A 02                    5098 	.uleb128	2
      00070B 00                    5099 	.db	0
