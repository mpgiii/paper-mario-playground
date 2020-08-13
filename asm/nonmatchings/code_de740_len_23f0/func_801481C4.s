.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_801481C4
/* 0DE8C4 801481C4 27BDFF08 */  addiu $sp, $sp, -0xf8
/* 0DE8C8 801481C8 AFB300AC */  sw    $s3, 0xac($sp)
/* 0DE8CC 801481CC 0080982D */  daddu $s3, $a0, $zero
/* 0DE8D0 801481D0 3C01BF80 */  lui   $at, 0xbf80
/* 0DE8D4 801481D4 44819000 */  mtc1  $at, $f18
/* 0DE8D8 801481D8 3C038007 */  lui   $v1, 0x8007
/* 0DE8DC 801481DC 8C637410 */  lw    $v1, 0x7410($v1)
/* 0DE8E0 801481E0 3C04800B */  lui   $a0, 0x800b
/* 0DE8E4 801481E4 24841D80 */  addiu $a0, $a0, 0x1d80
/* 0DE8E8 801481E8 AFBF00C4 */  sw    $ra, 0xc4($sp)
/* 0DE8EC 801481EC AFBE00C0 */  sw    $fp, 0xc0($sp)
/* 0DE8F0 801481F0 AFB700BC */  sw    $s7, 0xbc($sp)
/* 0DE8F4 801481F4 AFB600B8 */  sw    $s6, 0xb8($sp)
/* 0DE8F8 801481F8 AFB500B4 */  sw    $s5, 0xb4($sp)
/* 0DE8FC 801481FC AFB400B0 */  sw    $s4, 0xb0($sp)
/* 0DE900 80148200 AFB200A8 */  sw    $s2, 0xa8($sp)
/* 0DE904 80148204 AFB100A4 */  sw    $s1, 0xa4($sp)
/* 0DE908 80148208 AFB000A0 */  sw    $s0, 0xa0($sp)
/* 0DE90C 8014820C F7BE00F0 */  sdc1  $f30, 0xf0($sp)
/* 0DE910 80148210 F7BC00E8 */  sdc1  $f28, 0xe8($sp)
/* 0DE914 80148214 F7BA00E0 */  sdc1  $f26, 0xe0($sp)
/* 0DE918 80148218 F7B800D8 */  sdc1  $f24, 0xd8($sp)
/* 0DE91C 8014821C F7B600D0 */  sdc1  $f22, 0xd0($sp)
/* 0DE920 80148220 F7B400C8 */  sdc1  $f20, 0xc8($sp)
/* 0DE924 80148224 AFA70104 */  sw    $a3, 0x104($sp)
/* 0DE928 80148228 AFA0004C */  sw    $zero, 0x4c($sp)
/* 0DE92C 8014822C 00031080 */  sll   $v0, $v1, 2
/* 0DE930 80148230 00431021 */  addu  $v0, $v0, $v1
/* 0DE934 80148234 00021080 */  sll   $v0, $v0, 2
/* 0DE938 80148238 00431023 */  subu  $v0, $v0, $v1
/* 0DE93C 8014823C 000218C0 */  sll   $v1, $v0, 3
/* 0DE940 80148240 00431021 */  addu  $v0, $v0, $v1
/* 0DE944 80148244 E7B20060 */  swc1  $f18, 0x60($sp)
/* 0DE948 80148248 C7B2004C */  lwc1  $f18, 0x4c($sp)
/* 0DE94C 8014824C 000210C0 */  sll   $v0, $v0, 3
/* 0DE950 80148250 E7B20048 */  swc1  $f18, 0x48($sp)
/* 0DE954 80148254 E7B20050 */  swc1  $f18, 0x50($sp)
/* 0DE958 80148258 E7B2007C */  swc1  $f18, 0x7c($sp)
/* 0DE95C 8014825C E7B20078 */  swc1  $f18, 0x78($sp)
/* 0DE960 80148260 E7B20080 */  swc1  $f18, 0x80($sp)
/* 0DE964 80148264 E7B20084 */  swc1  $f18, 0x84($sp)
/* 0DE968 80148268 E7B20088 */  swc1  $f18, 0x88($sp)
/* 0DE96C 8014826C C6720008 */  lwc1  $f18, 8($s3)
/* 0DE970 80148270 00441021 */  addu  $v0, $v0, $a0
/* 0DE974 80148274 46009087 */  neg.s $f2, $f18
/* 0DE978 80148278 E7B20064 */  swc1  $f18, 0x64($sp)
/* 0DE97C 8014827C C7B20080 */  lwc1  $f18, 0x80($sp)
/* 0DE980 80148280 C44000DC */  lwc1  $f0, 0xdc($v0)
/* 0DE984 80148284 E7B2008C */  swc1  $f18, 0x8c($sp)
/* 0DE988 80148288 C6720028 */  lwc1  $f18, 0x28($s3)
/* 0DE98C 8014828C 46001082 */  mul.s $f2, $f2, $f0
/* 0DE990 80148290 00000000 */  nop   
/* 0DE994 80148294 E7B20068 */  swc1  $f18, 0x68($sp)
/* 0DE998 80148298 C44000FC */  lwc1  $f0, 0xfc($v0)
/* 0DE99C 8014829C C7B20080 */  lwc1  $f18, 0x80($sp)
/* 0DE9A0 801482A0 3C028015 */  lui   $v0, 0x8015
/* 0DE9A4 801482A4 8C421328 */  lw    $v0, 0x1328($v0)
/* 0DE9A8 801482A8 8FB40108 */  lw    $s4, 0x108($sp)
/* 0DE9AC 801482AC E7B20090 */  swc1  $f18, 0x90($sp)
/* 0DE9B0 801482B0 C7B20068 */  lwc1  $f18, 0x68($sp)
/* 0DE9B4 801482B4 8FB5010C */  lw    $s5, 0x10c($sp)
/* 0DE9B8 801482B8 46009002 */  mul.s $f0, $f18, $f0
/* 0DE9BC 801482BC 00000000 */  nop   
/* 0DE9C0 801482C0 C7B20080 */  lwc1  $f18, 0x80($sp)
/* 0DE9C4 801482C4 E7B20094 */  swc1  $f18, 0x94($sp)
/* 0DE9C8 801482C8 904300AC */  lbu   $v1, 0xac($v0)
/* 0DE9CC 801482CC E7B20098 */  swc1  $f18, 0x98($sp)
/* 0DE9D0 801482D0 44839000 */  mtc1  $v1, $f18
/* 0DE9D4 801482D4 00000000 */  nop   
/* 0DE9D8 801482D8 468094A0 */  cvt.s.w $f18, $f18
/* 0DE9DC 801482DC E7B2006C */  swc1  $f18, 0x6c($sp)
/* 0DE9E0 801482E0 904300AD */  lbu   $v1, 0xad($v0)
/* 0DE9E4 801482E4 904200AE */  lbu   $v0, 0xae($v0)
/* 0DE9E8 801482E8 44839000 */  mtc1  $v1, $f18
/* 0DE9EC 801482EC 00000000 */  nop   
/* 0DE9F0 801482F0 468094A0 */  cvt.s.w $f18, $f18
/* 0DE9F4 801482F4 E7B20070 */  swc1  $f18, 0x70($sp)
/* 0DE9F8 801482F8 44829000 */  mtc1  $v0, $f18
/* 0DE9FC 801482FC 00000000 */  nop   
/* 0DEA00 80148300 468094A0 */  cvt.s.w $f18, $f18
/* 0DEA04 80148304 E7B20074 */  swc1  $f18, 0x74($sp)
/* 0DEA08 80148308 46001080 */  add.s $f2, $f2, $f0
/* 0DEA0C 8014830C C7B20098 */  lwc1  $f18, 0x98($sp)
/* 0DEA10 80148310 8FB60110 */  lw    $s6, 0x110($sp)
/* 0DEA14 80148314 4612103C */  c.lt.s $f2, $f18
/* 0DEA18 80148318 C6720030 */  lwc1  $f18, 0x30($s3)
/* 0DEA1C 8014831C E7B20054 */  swc1  $f18, 0x54($sp)
/* 0DEA20 80148320 C6720034 */  lwc1  $f18, 0x34($s3)
/* 0DEA24 80148324 00A0B82D */  daddu $s7, $a1, $zero
/* 0DEA28 80148328 E7B20058 */  swc1  $f18, 0x58($sp)
/* 0DEA2C 8014832C C6720038 */  lwc1  $f18, 0x38($s3)
/* 0DEA30 80148330 E7B2005C */  swc1  $f18, 0x5c($sp)
/* 0DEA34 80148334 C67E0018 */  lwc1  $f30, 0x18($s3)
/* 0DEA38 80148338 45000005 */  bc1f  .L80148350
/* 0DEA3C 8014833C 00C0F02D */   daddu $fp, $a2, $zero
/* 0DEA40 80148340 3C013F80 */  lui   $at, 0x3f80
/* 0DEA44 80148344 44819000 */  mtc1  $at, $f18
/* 0DEA48 80148348 00000000 */  nop   
/* 0DEA4C 8014834C E7B20060 */  swc1  $f18, 0x60($sp)
.L80148350:
/* 0DEA50 80148350 0000902D */  daddu $s2, $zero, $zero
/* 0DEA54 80148354 C7BC0098 */  lwc1  $f28, 0x98($sp)
/* 0DEA58 80148358 24110004 */  addiu $s1, $zero, 4
.L8014835C:
/* 0DEA5C 8014835C 3C028015 */  lui   $v0, 0x8015
/* 0DEA60 80148360 8C421328 */  lw    $v0, 0x1328($v0)
/* 0DEA64 80148364 00518021 */  addu  $s0, $v0, $s1
/* 0DEA68 80148368 92020000 */  lbu   $v0, ($s0)
/* 0DEA6C 8014836C 30420001 */  andi  $v0, $v0, 1
/* 0DEA70 80148370 504000F5 */  beql  $v0, $zero, .L80148748
/* 0DEA74 80148374 26520001 */   addiu $s2, $s2, 1
/* 0DEA78 80148378 C6000004 */  lwc1  $f0, 4($s0)
/* 0DEA7C 8014837C C7B20054 */  lwc1  $f18, 0x54($sp)
/* 0DEA80 80148380 46009681 */  sub.s $f26, $f18, $f0
/* 0DEA84 80148384 461AD082 */  mul.s $f2, $f26, $f26
/* 0DEA88 80148388 00000000 */  nop   
/* 0DEA8C 8014838C C6000008 */  lwc1  $f0, 8($s0)
/* 0DEA90 80148390 C7B20058 */  lwc1  $f18, 0x58($sp)
/* 0DEA94 80148394 46009601 */  sub.s $f24, $f18, $f0
/* 0DEA98 80148398 4618C102 */  mul.s $f4, $f24, $f24
/* 0DEA9C 8014839C 00000000 */  nop   
/* 0DEAA0 801483A0 C600000C */  lwc1  $f0, 0xc($s0)
/* 0DEAA4 801483A4 C7B2005C */  lwc1  $f18, 0x5c($sp)
/* 0DEAA8 801483A8 46009581 */  sub.s $f22, $f18, $f0
/* 0DEAAC 801483AC 4616B002 */  mul.s $f0, $f22, $f22
/* 0DEAB0 801483B0 00000000 */  nop   
/* 0DEAB4 801483B4 46041080 */  add.s $f2, $f2, $f4
/* 0DEAB8 801483B8 46001500 */  add.s $f20, $f2, $f0
/* 0DEABC 801483BC 461CA032 */  c.eq.s $f20, $f28
/* 0DEAC0 801483C0 00000000 */  nop   
/* 0DEAC4 801483C4 4501000D */  bc1t  .L801483FC
/* 0DEAC8 801483C8 4600E086 */   mov.s $f2, $f28
/* 0DEACC 801483CC 4600A004 */  sqrt.s $f0, $f20
/* 0DEAD0 801483D0 46000032 */  c.eq.s $f0, $f0
/* 0DEAD4 801483D4 00000000 */  nop   
/* 0DEAD8 801483D8 45010003 */  bc1t  .L801483E8
/* 0DEADC 801483DC 00000000 */   nop   
/* 0DEAE0 801483E0 0C0187BC */  jal   sqrtf
/* 0DEAE4 801483E4 4600A306 */   mov.s $f12, $f20
.L801483E8:
/* 0DEAE8 801483E8 3C013F80 */  lui   $at, 0x3f80
/* 0DEAEC 801483EC 44819000 */  mtc1  $at, $f18
/* 0DEAF0 801483F0 46000086 */  mov.s $f2, $f0
/* 0DEAF4 801483F4 08052100 */  j     .L80148400
/* 0DEAF8 801483F8 46029003 */   div.s $f0, $f18, $f2

.L801483FC:
/* 0DEAFC 801483FC 4600E006 */  mov.s $f0, $f28
.L80148400:
/* 0DEB00 80148400 4600D682 */  mul.s $f26, $f26, $f0
/* 0DEB04 80148404 00000000 */  nop   
/* 0DEB08 80148408 4600C602 */  mul.s $f24, $f24, $f0
/* 0DEB0C 8014840C 00000000 */  nop   
/* 0DEB10 80148410 92030000 */  lbu   $v1, ($s0)
/* 0DEB14 80148414 4600B582 */  mul.s $f22, $f22, $f0
/* 0DEB18 80148418 00000000 */  nop   
/* 0DEB1C 8014841C 30620004 */  andi  $v0, $v1, 4
/* 0DEB20 80148420 5040000E */  beql  $v0, $zero, .L8014845C
/* 0DEB24 80148424 30620008 */   andi  $v0, $v1, 8
/* 0DEB28 80148428 461C1032 */  c.eq.s $f2, $f28
/* 0DEB2C 8014842C 00000000 */  nop   
/* 0DEB30 80148430 45000006 */  bc1f  .L8014844C
/* 0DEB34 80148434 00000000 */   nop   
/* 0DEB38 80148438 C6000010 */  lwc1  $f0, 0x10($s0)
/* 0DEB3C 8014843C 461C0032 */  c.eq.s $f0, $f28
/* 0DEB40 80148440 00000000 */  nop   
/* 0DEB44 80148444 4501001E */  bc1t  .L801484C0
/* 0DEB48 80148448 00000000 */   nop   
.L8014844C:
/* 0DEB4C 8014844C C6000010 */  lwc1  $f0, 0x10($s0)
/* 0DEB50 80148450 46001002 */  mul.s $f0, $f2, $f0
/* 0DEB54 80148454 08052125 */  j     .L80148494
/* 0DEB58 80148458 00000000 */   nop   

.L8014845C:
/* 0DEB5C 8014845C 10400018 */  beqz  $v0, .L801484C0
/* 0DEB60 80148460 00000000 */   nop   
/* 0DEB64 80148464 461CA032 */  c.eq.s $f20, $f28
/* 0DEB68 80148468 00000000 */  nop   
/* 0DEB6C 8014846C 45000006 */  bc1f  .L80148488
/* 0DEB70 80148470 00000000 */   nop   
/* 0DEB74 80148474 C6000010 */  lwc1  $f0, 0x10($s0)
/* 0DEB78 80148478 461C0032 */  c.eq.s $f0, $f28
/* 0DEB7C 8014847C 00000000 */  nop   
/* 0DEB80 80148480 4501000F */  bc1t  .L801484C0
/* 0DEB84 80148484 00000000 */   nop   
.L80148488:
/* 0DEB88 80148488 C6000010 */  lwc1  $f0, 0x10($s0)
/* 0DEB8C 8014848C 4600A002 */  mul.s $f0, $f20, $f0
/* 0DEB90 80148490 00000000 */  nop   
.L80148494:
/* 0DEB94 80148494 3C013F80 */  lui   $at, 0x3f80
/* 0DEB98 80148498 44819000 */  mtc1  $at, $f18
/* 0DEB9C 8014849C 00000000 */  nop   
/* 0DEBA0 801484A0 46009203 */  div.s $f8, $f18, $f0
/* 0DEBA4 801484A4 4608D682 */  mul.s $f26, $f26, $f8
/* 0DEBA8 801484A8 00000000 */  nop   
/* 0DEBAC 801484AC 4608C602 */  mul.s $f24, $f24, $f8
/* 0DEBB0 801484B0 00000000 */  nop   
/* 0DEBB4 801484B4 4608B582 */  mul.s $f22, $f22, $f8
/* 0DEBB8 801484B8 08052132 */  j     .L801484C8
/* 0DEBBC 801484BC 00000000 */   nop   

.L801484C0:
/* 0DEBC0 801484C0 3C013F80 */  lui   $at, 0x3f80
/* 0DEBC4 801484C4 44814000 */  mtc1  $at, $f8
.L801484C8:
/* 0DEBC8 801484C8 3C013F80 */  lui   $at, 0x3f80
/* 0DEBCC 801484CC 44819000 */  mtc1  $at, $f18
/* 0DEBD0 801484D0 00000000 */  nop   
/* 0DEBD4 801484D4 4608903C */  c.lt.s $f18, $f8
/* 0DEBD8 801484D8 00000000 */  nop   
/* 0DEBDC 801484DC 45030001 */  bc1tl .L801484E4
/* 0DEBE0 801484E0 46009206 */   mov.s $f8, $f18
.L801484E4:
/* 0DEBE4 801484E4 C7B20048 */  lwc1  $f18, 0x48($sp)
/* 0DEBE8 801484E8 461A9480 */  add.s $f18, $f18, $f26
/* 0DEBEC 801484EC E7B20048 */  swc1  $f18, 0x48($sp)
/* 0DEBF0 801484F0 C7B2004C */  lwc1  $f18, 0x4c($sp)
/* 0DEBF4 801484F4 46189480 */  add.s $f18, $f18, $f24
/* 0DEBF8 801484F8 E7B2004C */  swc1  $f18, 0x4c($sp)
/* 0DEBFC 801484FC C7B20050 */  lwc1  $f18, 0x50($sp)
/* 0DEC00 80148500 46169480 */  add.s $f18, $f18, $f22
/* 0DEC04 80148504 E7B20050 */  swc1  $f18, 0x50($sp)
/* 0DEC08 80148508 C7B20060 */  lwc1  $f18, 0x60($sp)
/* 0DEC0C 8014850C 461C903C */  c.lt.s $f18, $f28
/* 0DEC10 80148510 00000000 */  nop   
/* 0DEC14 80148514 45000005 */  bc1f  .L8014852C
/* 0DEC18 80148518 4600F086 */   mov.s $f2, $f30
/* 0DEC1C 8014851C C7B20068 */  lwc1  $f18, 0x68($sp)
/* 0DEC20 80148520 C7A00064 */  lwc1  $f0, 0x64($sp)
/* 0DEC24 80148524 0805214E */  j     .L80148538
/* 0DEC28 80148528 46009107 */   neg.s $f4, $f18

.L8014852C:
/* 0DEC2C 8014852C C7B20064 */  lwc1  $f18, 0x64($sp)
/* 0DEC30 80148530 C7A40068 */  lwc1  $f4, 0x68($sp)
/* 0DEC34 80148534 46009007 */  neg.s $f0, $f18
.L80148538:
/* 0DEC38 80148538 461A0002 */  mul.s $f0, $f0, $f26
/* 0DEC3C 8014853C 00000000 */  nop   
/* 0DEC40 80148540 46181082 */  mul.s $f2, $f2, $f24
/* 0DEC44 80148544 00000000 */  nop   
/* 0DEC48 80148548 46162102 */  mul.s $f4, $f4, $f22
/* 0DEC4C 8014854C 00000000 */  nop   
/* 0DEC50 80148550 46020000 */  add.s $f0, $f0, $f2
/* 0DEC54 80148554 C7B20060 */  lwc1  $f18, 0x60($sp)
/* 0DEC58 80148558 461C903C */  c.lt.s $f18, $f28
/* 0DEC5C 8014855C 00000000 */  nop   
/* 0DEC60 80148560 45000005 */  bc1f  .L80148578
/* 0DEC64 80148564 46040280 */   add.s $f10, $f0, $f4
/* 0DEC68 80148568 C7A20068 */  lwc1  $f2, 0x68($sp)
/* 0DEC6C 8014856C C7A60064 */  lwc1  $f6, 0x64($sp)
/* 0DEC70 80148570 08052163 */  j     .L8014858C
/* 0DEC74 80148574 4600F106 */   mov.s $f4, $f30

.L80148578:
/* 0DEC78 80148578 C7B20068 */  lwc1  $f18, 0x68($sp)
/* 0DEC7C 8014857C 46009087 */  neg.s $f2, $f18
/* 0DEC80 80148580 C7B20064 */  lwc1  $f18, 0x64($sp)
/* 0DEC84 80148584 4600F106 */  mov.s $f4, $f30
/* 0DEC88 80148588 46009187 */  neg.s $f6, $f18
.L8014858C:
/* 0DEC8C 8014858C 461A1082 */  mul.s $f2, $f2, $f26
/* 0DEC90 80148590 00000000 */  nop   
/* 0DEC94 80148594 46182102 */  mul.s $f4, $f4, $f24
/* 0DEC98 80148598 00000000 */  nop   
/* 0DEC9C 8014859C 46163182 */  mul.s $f6, $f6, $f22
/* 0DECA0 801485A0 00000000 */  nop   
/* 0DECA4 801485A4 46005005 */  abs.s $f0, $f10
/* 0DECA8 801485A8 46004302 */  mul.s $f12, $f8, $f0
/* 0DECAC 801485AC 00000000 */  nop   
/* 0DECB0 801485B0 46041080 */  add.s $f2, $f2, $f4
/* 0DECB4 801485B4 46061400 */  add.s $f16, $f2, $f6
/* 0DECB8 801485B8 460AE03C */  c.lt.s $f28, $f10
/* 0DECBC 801485BC 46008005 */  abs.s $f0, $f16
/* 0DECC0 801485C0 46004182 */  mul.s $f6, $f8, $f0
/* 0DECC4 801485C4 00000000 */  nop   
/* 0DECC8 801485C8 45000021 */  bc1f  .L80148650
/* 0DECCC 801485CC 46008506 */   mov.s $f20, $f16
/* 0DECD0 801485D0 92020001 */  lbu   $v0, 1($s0)
/* 0DECD4 801485D4 44827000 */  mtc1  $v0, $f14
/* 0DECD8 801485D8 00000000 */  nop   
/* 0DECDC 801485DC 468073A0 */  cvt.s.w $f14, $f14
/* 0DECE0 801485E0 460C7102 */  mul.s $f4, $f14, $f12
/* 0DECE4 801485E4 00000000 */  nop   
/* 0DECE8 801485E8 C7B20078 */  lwc1  $f18, 0x78($sp)
/* 0DECEC 801485EC 92020002 */  lbu   $v0, 2($s0)
/* 0DECF0 801485F0 46049480 */  add.s $f18, $f18, $f4
/* 0DECF4 801485F4 44825000 */  mtc1  $v0, $f10
/* 0DECF8 801485F8 00000000 */  nop   
/* 0DECFC 801485FC 468052A0 */  cvt.s.w $f10, $f10
/* 0DED00 80148600 92020003 */  lbu   $v0, 3($s0)
/* 0DED04 80148604 460C5082 */  mul.s $f2, $f10, $f12
/* 0DED08 80148608 00000000 */  nop   
/* 0DED0C 8014860C E7B20078 */  swc1  $f18, 0x78($sp)
/* 0DED10 80148610 C7B2007C */  lwc1  $f18, 0x7c($sp)
/* 0DED14 80148614 46029480 */  add.s $f18, $f18, $f2
/* 0DED18 80148618 44824000 */  mtc1  $v0, $f8
/* 0DED1C 8014861C 00000000 */  nop   
/* 0DED20 80148620 46804220 */  cvt.s.w $f8, $f8
/* 0DED24 80148624 460C4002 */  mul.s $f0, $f8, $f12
/* 0DED28 80148628 00000000 */  nop   
/* 0DED2C 8014862C E7B2007C */  swc1  $f18, 0x7c($sp)
/* 0DED30 80148630 C7B20080 */  lwc1  $f18, 0x80($sp)
/* 0DED34 80148634 46009480 */  add.s $f18, $f18, $f0
/* 0DED38 80148638 4610E03C */  c.lt.s $f28, $f16
/* 0DED3C 8014863C 00000000 */  nop   
/* 0DED40 80148640 45010021 */  bc1t  .L801486C8
/* 0DED44 80148644 E7B20080 */   swc1  $f18, 0x80($sp)
/* 0DED48 80148648 080521C2 */  j     .L80148708
/* 0DED4C 8014864C 00000000 */   nop   

.L80148650:
/* 0DED50 80148650 92020001 */  lbu   $v0, 1($s0)
/* 0DED54 80148654 44827000 */  mtc1  $v0, $f14
/* 0DED58 80148658 00000000 */  nop   
/* 0DED5C 8014865C 468073A0 */  cvt.s.w $f14, $f14
/* 0DED60 80148660 460C7102 */  mul.s $f4, $f14, $f12
/* 0DED64 80148664 00000000 */  nop   
/* 0DED68 80148668 C7B2006C */  lwc1  $f18, 0x6c($sp)
/* 0DED6C 8014866C 92020002 */  lbu   $v0, 2($s0)
/* 0DED70 80148670 46049480 */  add.s $f18, $f18, $f4
/* 0DED74 80148674 44825000 */  mtc1  $v0, $f10
/* 0DED78 80148678 00000000 */  nop   
/* 0DED7C 8014867C 468052A0 */  cvt.s.w $f10, $f10
/* 0DED80 80148680 92020003 */  lbu   $v0, 3($s0)
/* 0DED84 80148684 460C5082 */  mul.s $f2, $f10, $f12
/* 0DED88 80148688 00000000 */  nop   
/* 0DED8C 8014868C E7B2006C */  swc1  $f18, 0x6c($sp)
/* 0DED90 80148690 C7B20070 */  lwc1  $f18, 0x70($sp)
/* 0DED94 80148694 46029480 */  add.s $f18, $f18, $f2
/* 0DED98 80148698 44824000 */  mtc1  $v0, $f8
/* 0DED9C 8014869C 00000000 */  nop   
/* 0DEDA0 801486A0 46804220 */  cvt.s.w $f8, $f8
/* 0DEDA4 801486A4 460C4002 */  mul.s $f0, $f8, $f12
/* 0DEDA8 801486A8 00000000 */  nop   
/* 0DEDAC 801486AC E7B20070 */  swc1  $f18, 0x70($sp)
/* 0DEDB0 801486B0 C7B20074 */  lwc1  $f18, 0x74($sp)
/* 0DEDB4 801486B4 46009480 */  add.s $f18, $f18, $f0
/* 0DEDB8 801486B8 4614E03C */  c.lt.s $f28, $f20
/* 0DEDBC 801486BC 00000000 */  nop   
/* 0DEDC0 801486C0 45000011 */  bc1f  .L80148708
/* 0DEDC4 801486C4 E7B20074 */   swc1  $f18, 0x74($sp)
.L801486C8:
/* 0DEDC8 801486C8 46067002 */  mul.s $f0, $f14, $f6
/* 0DEDCC 801486CC 00000000 */  nop   
/* 0DEDD0 801486D0 C7B20084 */  lwc1  $f18, 0x84($sp)
/* 0DEDD4 801486D4 46009480 */  add.s $f18, $f18, $f0
/* 0DEDD8 801486D8 46065082 */  mul.s $f2, $f10, $f6
/* 0DEDDC 801486DC 00000000 */  nop   
/* 0DEDE0 801486E0 E7B20084 */  swc1  $f18, 0x84($sp)
/* 0DEDE4 801486E4 C7B20088 */  lwc1  $f18, 0x88($sp)
/* 0DEDE8 801486E8 46029480 */  add.s $f18, $f18, $f2
/* 0DEDEC 801486EC 46064102 */  mul.s $f4, $f8, $f6
/* 0DEDF0 801486F0 00000000 */  nop   
/* 0DEDF4 801486F4 E7B20088 */  swc1  $f18, 0x88($sp)
/* 0DEDF8 801486F8 C7B2008C */  lwc1  $f18, 0x8c($sp)
/* 0DEDFC 801486FC 46049480 */  add.s $f18, $f18, $f4
/* 0DEE00 80148700 080521D1 */  j     .L80148744
/* 0DEE04 80148704 E7B2008C */   swc1  $f18, 0x8c($sp)

.L80148708:
/* 0DEE08 80148708 46067002 */  mul.s $f0, $f14, $f6
/* 0DEE0C 8014870C 00000000 */  nop   
/* 0DEE10 80148710 C7B20090 */  lwc1  $f18, 0x90($sp)
/* 0DEE14 80148714 46009480 */  add.s $f18, $f18, $f0
/* 0DEE18 80148718 46065082 */  mul.s $f2, $f10, $f6
/* 0DEE1C 8014871C 00000000 */  nop   
/* 0DEE20 80148720 E7B20090 */  swc1  $f18, 0x90($sp)
/* 0DEE24 80148724 C7B20094 */  lwc1  $f18, 0x94($sp)
/* 0DEE28 80148728 46029480 */  add.s $f18, $f18, $f2
/* 0DEE2C 8014872C 46064102 */  mul.s $f4, $f8, $f6
/* 0DEE30 80148730 00000000 */  nop   
/* 0DEE34 80148734 E7B20094 */  swc1  $f18, 0x94($sp)
/* 0DEE38 80148738 C7B20098 */  lwc1  $f18, 0x98($sp)
/* 0DEE3C 8014873C 46049480 */  add.s $f18, $f18, $f4
/* 0DEE40 80148740 E7B20098 */  swc1  $f18, 0x98($sp)
.L80148744:
/* 0DEE44 80148744 26520001 */  addiu $s2, $s2, 1
.L80148748:
/* 0DEE48 80148748 2A420007 */  slti  $v0, $s2, 7
/* 0DEE4C 8014874C 1440FF03 */  bnez  $v0, .L8014835C
/* 0DEE50 80148750 26310018 */   addiu $s1, $s1, 0x18
/* 0DEE54 80148754 44800000 */  mtc1  $zero, $f0
/* 0DEE58 80148758 C7B20060 */  lwc1  $f18, 0x60($sp)
/* 0DEE5C 8014875C 4600903C */  c.lt.s $f18, $f0
/* 0DEE60 80148760 00000000 */  nop   
/* 0DEE64 80148764 45000004 */  bc1f  .L80148778
/* 0DEE68 80148768 4600F086 */   mov.s $f2, $f30
/* 0DEE6C 8014876C C7A00068 */  lwc1  $f0, 0x68($sp)
/* 0DEE70 80148770 080521E2 */  j     .L80148788
/* 0DEE74 80148774 C7A40064 */   lwc1  $f4, 0x64($sp)

.L80148778:
/* 0DEE78 80148778 C7B20068 */  lwc1  $f18, 0x68($sp)
/* 0DEE7C 8014877C 46009007 */  neg.s $f0, $f18
/* 0DEE80 80148780 C7B20064 */  lwc1  $f18, 0x64($sp)
/* 0DEE84 80148784 46009107 */  neg.s $f4, $f18
.L80148788:
/* 0DEE88 80148788 C7B20048 */  lwc1  $f18, 0x48($sp)
/* 0DEE8C 8014878C 46120002 */  mul.s $f0, $f0, $f18
/* 0DEE90 80148790 00000000 */  nop   
/* 0DEE94 80148794 C7B2004C */  lwc1  $f18, 0x4c($sp)
/* 0DEE98 80148798 46121082 */  mul.s $f2, $f2, $f18
/* 0DEE9C 8014879C 00000000 */  nop   
/* 0DEEA0 801487A0 C7B20050 */  lwc1  $f18, 0x50($sp)
/* 0DEEA4 801487A4 46122102 */  mul.s $f4, $f4, $f18
/* 0DEEA8 801487A8 00000000 */  nop   
/* 0DEEAC 801487AC 46020000 */  add.s $f0, $f0, $f2
/* 0DEEB0 801487B0 46040000 */  add.s $f0, $f0, $f4
/* 0DEEB4 801487B4 44801000 */  mtc1  $zero, $f2
/* 0DEEB8 801487B8 00000000 */  nop   
/* 0DEEBC 801487BC 4600103C */  c.lt.s $f2, $f0
/* 0DEEC0 801487C0 00000000 */  nop   
/* 0DEEC4 801487C4 45000031 */  bc1f  .L8014888C
/* 0DEEC8 801487C8 00000000 */   nop   
/* 0DEECC 801487CC C7B2006C */  lwc1  $f18, 0x6c($sp)
/* 0DEED0 801487D0 4600948D */  trunc.w.s $f18, $f18
/* 0DEED4 801487D4 E7B20024 */  swc1  $f18, 0x24($sp)
/* 0DEED8 801487D8 C7B20070 */  lwc1  $f18, 0x70($sp)
/* 0DEEDC 801487DC 4600948D */  trunc.w.s $f18, $f18
/* 0DEEE0 801487E0 E7B20028 */  swc1  $f18, 0x28($sp)
/* 0DEEE4 801487E4 C7B20074 */  lwc1  $f18, 0x74($sp)
/* 0DEEE8 801487E8 3C038015 */  lui   $v1, 0x8015
/* 0DEEEC 801487EC 8C631328 */  lw    $v1, 0x1328($v1)
/* 0DEEF0 801487F0 4600948D */  trunc.w.s $f18, $f18
/* 0DEEF4 801487F4 E7B2002C */  swc1  $f18, 0x2c($sp)
/* 0DEEF8 801487F8 C7B20048 */  lwc1  $f18, 0x48($sp)
/* 0DEEFC 801487FC E7B20018 */  swc1  $f18, 0x18($sp)
/* 0DEF00 80148800 C7B2004C */  lwc1  $f18, 0x4c($sp)
/* 0DEF04 80148804 E7B2001C */  swc1  $f18, 0x1c($sp)
/* 0DEF08 80148808 C7B20050 */  lwc1  $f18, 0x50($sp)
/* 0DEF0C 8014880C AFB40010 */  sw    $s4, 0x10($sp)
/* 0DEF10 80148810 AFB50014 */  sw    $s5, 0x14($sp)
/* 0DEF14 80148814 E7B20020 */  swc1  $f18, 0x20($sp)
/* 0DEF18 80148818 906200AC */  lbu   $v0, 0xac($v1)
/* 0DEF1C 8014881C C7B20078 */  lwc1  $f18, 0x78($sp)
/* 0DEF20 80148820 44820000 */  mtc1  $v0, $f0
/* 0DEF24 80148824 00000000 */  nop   
/* 0DEF28 80148828 46800020 */  cvt.s.w $f0, $f0
/* 0DEF2C 8014882C 46120000 */  add.s $f0, $f0, $f18
/* 0DEF30 80148830 C7B20084 */  lwc1  $f18, 0x84($sp)
/* 0DEF34 80148834 46120000 */  add.s $f0, $f0, $f18
/* 0DEF38 80148838 4600048D */  trunc.w.s $f18, $f0
/* 0DEF3C 8014883C E7B20030 */  swc1  $f18, 0x30($sp)
/* 0DEF40 80148840 906200AD */  lbu   $v0, 0xad($v1)
/* 0DEF44 80148844 C7B2007C */  lwc1  $f18, 0x7c($sp)
/* 0DEF48 80148848 44820000 */  mtc1  $v0, $f0
/* 0DEF4C 8014884C 00000000 */  nop   
/* 0DEF50 80148850 46800020 */  cvt.s.w $f0, $f0
/* 0DEF54 80148854 46120000 */  add.s $f0, $f0, $f18
/* 0DEF58 80148858 C7B20088 */  lwc1  $f18, 0x88($sp)
/* 0DEF5C 8014885C 46120000 */  add.s $f0, $f0, $f18
/* 0DEF60 80148860 4600048D */  trunc.w.s $f18, $f0
/* 0DEF64 80148864 E7B20034 */  swc1  $f18, 0x34($sp)
/* 0DEF68 80148868 906200AE */  lbu   $v0, 0xae($v1)
/* 0DEF6C 8014886C C7B20080 */  lwc1  $f18, 0x80($sp)
/* 0DEF70 80148870 44820000 */  mtc1  $v0, $f0
/* 0DEF74 80148874 00000000 */  nop   
/* 0DEF78 80148878 46800020 */  cvt.s.w $f0, $f0
/* 0DEF7C 8014887C 46120000 */  add.s $f0, $f0, $f18
/* 0DEF80 80148880 C7B2008C */  lwc1  $f18, 0x8c($sp)
/* 0DEF84 80148884 08052252 */  j     .L80148948
/* 0DEF88 80148888 46120000 */   add.s $f0, $f0, $f18

.L8014888C:
/* 0DEF8C 8014888C C7B2006C */  lwc1  $f18, 0x6c($sp)
/* 0DEF90 80148890 4600948D */  trunc.w.s $f18, $f18
/* 0DEF94 80148894 E7B20024 */  swc1  $f18, 0x24($sp)
/* 0DEF98 80148898 C7B20070 */  lwc1  $f18, 0x70($sp)
/* 0DEF9C 8014889C 4600948D */  trunc.w.s $f18, $f18
/* 0DEFA0 801488A0 E7B20028 */  swc1  $f18, 0x28($sp)
/* 0DEFA4 801488A4 C7B20074 */  lwc1  $f18, 0x74($sp)
/* 0DEFA8 801488A8 3C038015 */  lui   $v1, 0x8015
/* 0DEFAC 801488AC 8C631328 */  lw    $v1, 0x1328($v1)
/* 0DEFB0 801488B0 4600948D */  trunc.w.s $f18, $f18
/* 0DEFB4 801488B4 E7B2002C */  swc1  $f18, 0x2c($sp)
/* 0DEFB8 801488B8 C7B20048 */  lwc1  $f18, 0x48($sp)
/* 0DEFBC 801488BC E7B20018 */  swc1  $f18, 0x18($sp)
/* 0DEFC0 801488C0 C7B2004C */  lwc1  $f18, 0x4c($sp)
/* 0DEFC4 801488C4 E7B2001C */  swc1  $f18, 0x1c($sp)
/* 0DEFC8 801488C8 C7B20050 */  lwc1  $f18, 0x50($sp)
/* 0DEFCC 801488CC AFB40010 */  sw    $s4, 0x10($sp)
/* 0DEFD0 801488D0 AFB50014 */  sw    $s5, 0x14($sp)
/* 0DEFD4 801488D4 E7B20020 */  swc1  $f18, 0x20($sp)
/* 0DEFD8 801488D8 906200AC */  lbu   $v0, 0xac($v1)
/* 0DEFDC 801488DC C7B20078 */  lwc1  $f18, 0x78($sp)
/* 0DEFE0 801488E0 44820000 */  mtc1  $v0, $f0
/* 0DEFE4 801488E4 00000000 */  nop   
/* 0DEFE8 801488E8 46800020 */  cvt.s.w $f0, $f0
/* 0DEFEC 801488EC 46120000 */  add.s $f0, $f0, $f18
/* 0DEFF0 801488F0 C7B20090 */  lwc1  $f18, 0x90($sp)
/* 0DEFF4 801488F4 46120000 */  add.s $f0, $f0, $f18
/* 0DEFF8 801488F8 4600048D */  trunc.w.s $f18, $f0
/* 0DEFFC 801488FC E7B20030 */  swc1  $f18, 0x30($sp)
/* 0DF000 80148900 906200AD */  lbu   $v0, 0xad($v1)
/* 0DF004 80148904 C7B2007C */  lwc1  $f18, 0x7c($sp)
/* 0DF008 80148908 44820000 */  mtc1  $v0, $f0
/* 0DF00C 8014890C 00000000 */  nop   
/* 0DF010 80148910 46800020 */  cvt.s.w $f0, $f0
/* 0DF014 80148914 46120000 */  add.s $f0, $f0, $f18
/* 0DF018 80148918 C7B20094 */  lwc1  $f18, 0x94($sp)
/* 0DF01C 8014891C 46120000 */  add.s $f0, $f0, $f18
/* 0DF020 80148920 4600048D */  trunc.w.s $f18, $f0
/* 0DF024 80148924 E7B20034 */  swc1  $f18, 0x34($sp)
/* 0DF028 80148928 906200AE */  lbu   $v0, 0xae($v1)
/* 0DF02C 8014892C C7B20080 */  lwc1  $f18, 0x80($sp)
/* 0DF030 80148930 44820000 */  mtc1  $v0, $f0
/* 0DF034 80148934 00000000 */  nop   
/* 0DF038 80148938 46800020 */  cvt.s.w $f0, $f0
/* 0DF03C 8014893C 46120000 */  add.s $f0, $f0, $f18
/* 0DF040 80148940 C7B20098 */  lwc1  $f18, 0x98($sp)
/* 0DF044 80148944 46120000 */  add.s $f0, $f0, $f18
.L80148948:
/* 0DF048 80148948 0260202D */  daddu $a0, $s3, $zero
/* 0DF04C 8014894C 02E0282D */  daddu $a1, $s7, $zero
/* 0DF050 80148950 4600048D */  trunc.w.s $f18, $f0
/* 0DF054 80148954 E7B20038 */  swc1  $f18, 0x38($sp)
/* 0DF058 80148958 906200AF */  lbu   $v0, 0xaf($v1)
/* 0DF05C 8014895C 8FA70104 */  lw    $a3, 0x104($sp)
/* 0DF060 80148960 03C0302D */  daddu $a2, $fp, $zero
/* 0DF064 80148964 AFB60040 */  sw    $s6, 0x40($sp)
/* 0DF068 80148968 0C05226E */  jal   func_801489B8
/* 0DF06C 8014896C AFA2003C */   sw    $v0, 0x3c($sp)
/* 0DF070 80148970 8FBF00C4 */  lw    $ra, 0xc4($sp)
/* 0DF074 80148974 8FBE00C0 */  lw    $fp, 0xc0($sp)
/* 0DF078 80148978 8FB700BC */  lw    $s7, 0xbc($sp)
/* 0DF07C 8014897C 8FB600B8 */  lw    $s6, 0xb8($sp)
/* 0DF080 80148980 8FB500B4 */  lw    $s5, 0xb4($sp)
/* 0DF084 80148984 8FB400B0 */  lw    $s4, 0xb0($sp)
/* 0DF088 80148988 8FB300AC */  lw    $s3, 0xac($sp)
/* 0DF08C 8014898C 8FB200A8 */  lw    $s2, 0xa8($sp)
/* 0DF090 80148990 8FB100A4 */  lw    $s1, 0xa4($sp)
/* 0DF094 80148994 8FB000A0 */  lw    $s0, 0xa0($sp)
/* 0DF098 80148998 D7BE00F0 */  ldc1  $f30, 0xf0($sp)
/* 0DF09C 8014899C D7BC00E8 */  ldc1  $f28, 0xe8($sp)
/* 0DF0A0 801489A0 D7BA00E0 */  ldc1  $f26, 0xe0($sp)
/* 0DF0A4 801489A4 D7B800D8 */  ldc1  $f24, 0xd8($sp)
/* 0DF0A8 801489A8 D7B600D0 */  ldc1  $f22, 0xd0($sp)
/* 0DF0AC 801489AC D7B400C8 */  ldc1  $f20, 0xc8($sp)
/* 0DF0B0 801489B0 03E00008 */  jr    $ra
/* 0DF0B4 801489B4 27BD00F8 */   addiu $sp, $sp, 0xf8

