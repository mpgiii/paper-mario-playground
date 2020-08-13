.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_8014A1B4
/* 0E08B4 8014A1B4 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 0E08B8 8014A1B8 AFB00030 */  sw    $s0, 0x30($sp)
/* 0E08BC 8014A1BC 00E0802D */  daddu $s0, $a3, $zero
/* 0E08C0 8014A1C0 AFB20038 */  sw    $s2, 0x38($sp)
/* 0E08C4 8014A1C4 8FB20050 */  lw    $s2, 0x50($sp)
/* 0E08C8 8014A1C8 27A20020 */  addiu $v0, $sp, 0x20
/* 0E08CC 8014A1CC AFA20010 */  sw    $v0, 0x10($sp)
/* 0E08D0 8014A1D0 27A20024 */  addiu $v0, $sp, 0x24
/* 0E08D4 8014A1D4 AFA20014 */  sw    $v0, 0x14($sp)
/* 0E08D8 8014A1D8 27A20028 */  addiu $v0, $sp, 0x28
/* 0E08DC 8014A1DC 44860000 */  mtc1  $a2, $f0
/* 0E08E0 8014A1E0 3C048007 */  lui   $a0, 0x8007
/* 0E08E4 8014A1E4 8C847410 */  lw    $a0, 0x7410($a0)
/* 0E08E8 8014A1E8 44067000 */  mfc1  $a2, $f14
/* 0E08EC 8014A1EC 3C05800B */  lui   $a1, 0x800b
/* 0E08F0 8014A1F0 24A51D80 */  addiu $a1, $a1, 0x1d80
/* 0E08F4 8014A1F4 AFB10034 */  sw    $s1, 0x34($sp)
/* 0E08F8 8014A1F8 AFA20018 */  sw    $v0, 0x18($sp)
/* 0E08FC 8014A1FC 00041080 */  sll   $v0, $a0, 2
/* 0E0900 8014A200 00441021 */  addu  $v0, $v0, $a0
/* 0E0904 8014A204 00021080 */  sll   $v0, $v0, 2
/* 0E0908 8014A208 00441023 */  subu  $v0, $v0, $a0
/* 0E090C 8014A20C 000218C0 */  sll   $v1, $v0, 3
/* 0E0910 8014A210 00431021 */  addu  $v0, $v0, $v1
/* 0E0914 8014A214 000210C0 */  sll   $v0, $v0, 3
/* 0E0918 8014A218 00458821 */  addu  $s1, $v0, $a1
/* 0E091C 8014A21C 44056000 */  mfc1  $a1, $f12
/* 0E0920 8014A220 44070000 */  mfc1  $a3, $f0
/* 0E0924 8014A224 AFBF003C */  sw    $ra, 0x3c($sp)
/* 0E0928 8014A228 0C00B94E */  jal   get_screen_coords
/* 0E092C 8014A22C 00000000 */   nop   
/* 0E0930 8014A230 8FA20020 */  lw    $v0, 0x20($sp)
/* 0E0934 8014A234 24420BB8 */  addiu $v0, $v0, 0xbb8
/* 0E0938 8014A238 2C421771 */  sltiu $v0, $v0, 0x1771
/* 0E093C 8014A23C 10400008 */  beqz  $v0, .L8014A260
/* 0E0940 8014A240 24020001 */   addiu $v0, $zero, 1
/* 0E0944 8014A244 8FA30024 */  lw    $v1, 0x24($sp)
/* 0E0948 8014A248 28620BB9 */  slti  $v0, $v1, 0xbb9
/* 0E094C 8014A24C 10400003 */  beqz  $v0, .L8014A25C
/* 0E0950 8014A250 2862F448 */   slti  $v0, $v1, -0xbb8
/* 0E0954 8014A254 10400005 */  beqz  $v0, .L8014A26C
/* 0E0958 8014A258 2405007F */   addiu $a1, $zero, 0x7f
.L8014A25C:
/* 0E095C 8014A25C 24020001 */  addiu $v0, $zero, 1
.L8014A260:
/* 0E0960 8014A260 A6020000 */  sh    $v0, ($s0)
/* 0E0964 8014A264 08052903 */  j     .L8014A40C
/* 0E0968 8014A268 A6400000 */   sh    $zero, ($s2)

.L8014A26C:
/* 0E096C 8014A26C A6050000 */  sh    $a1, ($s0)
/* 0E0970 8014A270 8FA20020 */  lw    $v0, 0x20($sp)
/* 0E0974 8014A274 04410012 */  bgez  $v0, .L8014A2C0
/* 0E0978 8014A278 00000000 */   nop   
/* 0E097C 8014A27C 3C013E99 */  lui   $at, 0x3e99
/* 0E0980 8014A280 3421999A */  ori   $at, $at, 0x999a
/* 0E0984 8014A284 44811000 */  mtc1  $at, $f2
/* 0E0988 8014A288 44820000 */  mtc1  $v0, $f0
/* 0E098C 8014A28C 00000000 */  nop   
/* 0E0990 8014A290 46800020 */  cvt.s.w $f0, $f0
/* 0E0994 8014A294 46020002 */  mul.s $f0, $f0, $f2
/* 0E0998 8014A298 00000000 */  nop   
/* 0E099C 8014A29C 3C0142FE */  lui   $at, 0x42fe
/* 0E09A0 8014A2A0 44811000 */  mtc1  $at, $f2
/* 0E09A4 8014A2A4 00000000 */  nop   
/* 0E09A8 8014A2A8 46020000 */  add.s $f0, $f0, $f2
/* 0E09AC 8014A2AC 4600018D */  trunc.w.s $f6, $f0
/* 0E09B0 8014A2B0 44023000 */  mfc1  $v0, $f6
/* 0E09B4 8014A2B4 00000000 */  nop   
/* 0E09B8 8014A2B8 A6020000 */  sh    $v0, ($s0)
/* 0E09BC 8014A2BC AFA00020 */  sw    $zero, 0x20($sp)
.L8014A2C0:
/* 0E09C0 8014A2C0 8624000A */  lh    $a0, 0xa($s1)
/* 0E09C4 8014A2C4 8FA30020 */  lw    $v1, 0x20($sp)
/* 0E09C8 8014A2C8 0083102A */  slt   $v0, $a0, $v1
/* 0E09CC 8014A2CC 10400013 */  beqz  $v0, .L8014A31C
/* 0E09D0 8014A2D0 00641023 */   subu  $v0, $v1, $a0
/* 0E09D4 8014A2D4 3C013E99 */  lui   $at, 0x3e99
/* 0E09D8 8014A2D8 3421999A */  ori   $at, $at, 0x999a
/* 0E09DC 8014A2DC 44810000 */  mtc1  $at, $f0
/* 0E09E0 8014A2E0 44821000 */  mtc1  $v0, $f2
/* 0E09E4 8014A2E4 00000000 */  nop   
/* 0E09E8 8014A2E8 468010A0 */  cvt.s.w $f2, $f2
/* 0E09EC 8014A2EC 46001082 */  mul.s $f2, $f2, $f0
/* 0E09F0 8014A2F0 00000000 */  nop   
/* 0E09F4 8014A2F4 3C0142FE */  lui   $at, 0x42fe
/* 0E09F8 8014A2F8 44810000 */  mtc1  $at, $f0
/* 0E09FC 8014A2FC 00000000 */  nop   
/* 0E0A00 8014A300 46020001 */  sub.s $f0, $f0, $f2
/* 0E0A04 8014A304 4600018D */  trunc.w.s $f6, $f0
/* 0E0A08 8014A308 44023000 */  mfc1  $v0, $f6
/* 0E0A0C 8014A30C 00000000 */  nop   
/* 0E0A10 8014A310 A6020000 */  sh    $v0, ($s0)
/* 0E0A14 8014A314 8622000A */  lh    $v0, 0xa($s1)
/* 0E0A18 8014A318 AFA20020 */  sw    $v0, 0x20($sp)
.L8014A31C:
/* 0E0A1C 8014A31C 24031388 */  addiu $v1, $zero, 0x1388
/* 0E0A20 8014A320 8FA20028 */  lw    $v0, 0x28($sp)
/* 0E0A24 8014A324 3C01447A */  lui   $at, 0x447a
/* 0E0A28 8014A328 44811000 */  mtc1  $at, $f2
/* 0E0A2C 8014A32C 00621823 */  subu  $v1, $v1, $v0
/* 0E0A30 8014A330 44830000 */  mtc1  $v1, $f0
/* 0E0A34 8014A334 00000000 */  nop   
/* 0E0A38 8014A338 46800020 */  cvt.s.w $f0, $f0
/* 0E0A3C 8014A33C 46000005 */  abs.s $f0, $f0
/* 0E0A40 8014A340 4600103C */  c.lt.s $f2, $f0
/* 0E0A44 8014A344 00000000 */  nop   
/* 0E0A48 8014A348 45030001 */  bc1tl .L8014A350
/* 0E0A4C 8014A34C 46001006 */   mov.s $f0, $f2
.L8014A350:
/* 0E0A50 8014A350 3C0144BB */  lui   $at, 0x44bb
/* 0E0A54 8014A354 34218000 */  ori   $at, $at, 0x8000
/* 0E0A58 8014A358 44811000 */  mtc1  $at, $f2
/* 0E0A5C 8014A35C 86020000 */  lh    $v0, ($s0)
/* 0E0A60 8014A360 46001081 */  sub.s $f2, $f2, $f0
/* 0E0A64 8014A364 44820000 */  mtc1  $v0, $f0
/* 0E0A68 8014A368 00000000 */  nop   
/* 0E0A6C 8014A36C 46800020 */  cvt.s.w $f0, $f0
/* 0E0A70 8014A370 46020002 */  mul.s $f0, $f0, $f2
/* 0E0A74 8014A374 00000000 */  nop   
/* 0E0A78 8014A378 3C013A83 */  lui   $at, 0x3a83
/* 0E0A7C 8014A37C 3421126F */  ori   $at, $at, 0x126f
/* 0E0A80 8014A380 44811000 */  mtc1  $at, $f2
/* 0E0A84 8014A384 00000000 */  nop   
/* 0E0A88 8014A388 46020002 */  mul.s $f0, $f0, $f2
/* 0E0A8C 8014A38C 00000000 */  nop   
/* 0E0A90 8014A390 4600018D */  trunc.w.s $f6, $f0
/* 0E0A94 8014A394 44023000 */  mfc1  $v0, $f6
/* 0E0A98 8014A398 00000000 */  nop   
/* 0E0A9C 8014A39C A6020000 */  sh    $v0, ($s0)
/* 0E0AA0 8014A3A0 00021400 */  sll   $v0, $v0, 0x10
/* 0E0AA4 8014A3A4 00021403 */  sra   $v0, $v0, 0x10
/* 0E0AA8 8014A3A8 28420080 */  slti  $v0, $v0, 0x80
/* 0E0AAC 8014A3AC 50400001 */  beql  $v0, $zero, .L8014A3B4
/* 0E0AB0 8014A3B0 A6050000 */   sh    $a1, ($s0)
.L8014A3B4:
/* 0E0AB4 8014A3B4 86020000 */  lh    $v0, ($s0)
/* 0E0AB8 8014A3B8 1C400002 */  bgtz  $v0, .L8014A3C4
/* 0E0ABC 8014A3BC 24020001 */   addiu $v0, $zero, 1
/* 0E0AC0 8014A3C0 A6020000 */  sh    $v0, ($s0)
.L8014A3C4:
/* 0E0AC4 8014A3C4 3C014280 */  lui   $at, 0x4280
/* 0E0AC8 8014A3C8 44811000 */  mtc1  $at, $f2
/* 0E0ACC 8014A3CC C7A00020 */  lwc1  $f0, 0x20($sp)
/* 0E0AD0 8014A3D0 46800020 */  cvt.s.w $f0, $f0
/* 0E0AD4 8014A3D4 46020002 */  mul.s $f0, $f0, $f2
/* 0E0AD8 8014A3D8 00000000 */  nop   
/* 0E0ADC 8014A3DC 8622000A */  lh    $v0, 0xa($s1)
/* 0E0AE0 8014A3E0 3C014200 */  lui   $at, 0x4200
/* 0E0AE4 8014A3E4 44812000 */  mtc1  $at, $f4
/* 0E0AE8 8014A3E8 44821000 */  mtc1  $v0, $f2
/* 0E0AEC 8014A3EC 00000000 */  nop   
/* 0E0AF0 8014A3F0 468010A0 */  cvt.s.w $f2, $f2
/* 0E0AF4 8014A3F4 46020003 */  div.s $f0, $f0, $f2
/* 0E0AF8 8014A3F8 46040000 */  add.s $f0, $f0, $f4
/* 0E0AFC 8014A3FC 4600018D */  trunc.w.s $f6, $f0
/* 0E0B00 8014A400 44023000 */  mfc1  $v0, $f6
/* 0E0B04 8014A404 00000000 */  nop   
/* 0E0B08 8014A408 A6420000 */  sh    $v0, ($s2)
.L8014A40C:
/* 0E0B0C 8014A40C 8FBF003C */  lw    $ra, 0x3c($sp)
/* 0E0B10 8014A410 8FB20038 */  lw    $s2, 0x38($sp)
/* 0E0B14 8014A414 8FB10034 */  lw    $s1, 0x34($sp)
/* 0E0B18 8014A418 8FB00030 */  lw    $s0, 0x30($sp)
/* 0E0B1C 8014A41C 03E00008 */  jr    $ra
/* 0E0B20 8014A420 27BD0040 */   addiu $sp, $sp, 0x40

/* 0E0B24 8014A424 00000000 */  nop   
/* 0E0B28 8014A428 00000000 */  nop   
/* 0E0B2C 8014A42C 00000000 */  nop   


