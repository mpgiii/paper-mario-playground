.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_80059D50
/* 035150 80059D50 3C02800A */  lui   $v0, 0x800a
/* 035154 80059D54 8C42A650 */  lw    $v0, -0x59b0($v0)
/* 035158 80059D58 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 03515C 80059D5C AFBF0020 */  sw    $ra, 0x20($sp)
/* 035160 80059D60 AFB3001C */  sw    $s3, 0x1c($sp)
/* 035164 80059D64 AFB20018 */  sw    $s2, 0x18($sp)
/* 035168 80059D68 AFB10014 */  sw    $s1, 0x14($sp)
/* 03516C 80059D6C 30420C00 */  andi  $v0, $v0, 0xc00
/* 035170 80059D70 14400059 */  bnez  $v0, .L80059ED8
/* 035174 80059D74 AFB00010 */   sw    $s0, 0x10($sp)
/* 035178 80059D78 0000902D */  daddu $s2, $zero, $zero
/* 03517C 80059D7C 3C10800A */  lui   $s0, 0x800a
/* 035180 80059D80 26104000 */  addiu $s0, $s0, 0x4000
/* 035184 80059D84 24040003 */  addiu $a0, $zero, 3
.L80059D88:
/* 035188 80059D88 8E030000 */  lw    $v1, ($s0)
/* 03518C 80059D8C 30620001 */  andi  $v0, $v1, 1
/* 035190 80059D90 10400007 */  beqz  $v0, .L80059DB0
/* 035194 80059D94 26520001 */   addiu $s2, $s2, 1
/* 035198 80059D98 30620002 */  andi  $v0, $v1, 2
/* 03519C 80059D9C 14400004 */  bnez  $v0, .L80059DB0
/* 0351A0 80059DA0 00000000 */   nop   
/* 0351A4 80059DA4 34620002 */  ori   $v0, $v1, 2
/* 0351A8 80059DA8 AE020000 */  sw    $v0, ($s0)
/* 0351AC 80059DAC AE04000C */  sw    $a0, 0xc($s0)
.L80059DB0:
/* 0351B0 80059DB0 2A42000F */  slti  $v0, $s2, 0xf
/* 0351B4 80059DB4 1440FFF4 */  bnez  $v0, .L80059D88
/* 0351B8 80059DB8 26100020 */   addiu $s0, $s0, 0x20
/* 0351BC 80059DBC 0000902D */  daddu $s2, $zero, $zero
/* 0351C0 80059DC0 2413FFFD */  addiu $s3, $zero, -3
/* 0351C4 80059DC4 3C11800B */  lui   $s1, 0x800b
/* 0351C8 80059DC8 26314398 */  addiu $s1, $s1, 0x4398
.L80059DCC:
/* 0351CC 80059DCC 8E300000 */  lw    $s0, ($s1)
/* 0351D0 80059DD0 52000020 */  beql  $s0, $zero, .L80059E54
/* 0351D4 80059DD4 26520001 */   addiu $s2, $s2, 1
/* 0351D8 80059DD8 8E020000 */  lw    $v0, ($s0)
/* 0351DC 80059DDC 30420001 */  andi  $v0, $v0, 1
/* 0351E0 80059DE0 5040001C */  beql  $v0, $zero, .L80059E54
/* 0351E4 80059DE4 26520001 */   addiu $s2, $s2, 1
/* 0351E8 80059DE8 8E030010 */  lw    $v1, 0x10($s0)
/* 0351EC 80059DEC 8C620000 */  lw    $v0, ($v1)
/* 0351F0 80059DF0 3C048007 */  lui   $a0, 0x8007
/* 0351F4 80059DF4 8C84419C */  lw    $a0, 0x419c($a0)
/* 0351F8 80059DF8 00531024 */  and   $v0, $v0, $s3
/* 0351FC 80059DFC AC620000 */  sw    $v0, ($v1)
/* 035200 80059E00 80820070 */  lb    $v0, 0x70($a0)
/* 035204 80059E04 10400007 */  beqz  $v0, .L80059E24
/* 035208 80059E08 00000000 */   nop   
/* 03520C 80059E0C 8E020000 */  lw    $v0, ($s0)
/* 035210 80059E10 30420004 */  andi  $v0, $v0, 4
/* 035214 80059E14 5040000F */  beql  $v0, $zero, .L80059E54
/* 035218 80059E18 26520001 */   addiu $s2, $s2, 1
/* 03521C 80059E1C 0801678D */  j     .L80059E34
/* 035220 80059E20 00000000 */   nop   

.L80059E24:
/* 035224 80059E24 8E020000 */  lw    $v0, ($s0)
/* 035228 80059E28 30420004 */  andi  $v0, $v0, 4
/* 03522C 80059E2C 54400009 */  bnel  $v0, $zero, .L80059E54
/* 035230 80059E30 26520001 */   addiu $s2, $s2, 1
.L80059E34:
/* 035234 80059E34 8E020010 */  lw    $v0, 0x10($s0)
/* 035238 80059E38 8C420010 */  lw    $v0, 0x10($v0)
/* 03523C 80059E3C 0040F809 */  jalr  $v0
/* 035240 80059E40 0200202D */  daddu $a0, $s0, $zero
/* 035244 80059E44 8E020000 */  lw    $v0, ($s0)
/* 035248 80059E48 34420008 */  ori   $v0, $v0, 8
/* 03524C 80059E4C AE020000 */  sw    $v0, ($s0)
/* 035250 80059E50 26520001 */  addiu $s2, $s2, 1
.L80059E54:
/* 035254 80059E54 2A420060 */  slti  $v0, $s2, 0x60
/* 035258 80059E58 1440FFDC */  bnez  $v0, .L80059DCC
/* 03525C 80059E5C 26310004 */   addiu $s1, $s1, 4
/* 035260 80059E60 0000902D */  daddu $s2, $zero, $zero
/* 035264 80059E64 3C10800A */  lui   $s0, 0x800a
/* 035268 80059E68 26104000 */  addiu $s0, $s0, 0x4000
/* 03526C 80059E6C 2611001C */  addiu $s1, $s0, 0x1c
.L80059E70:
/* 035270 80059E70 8E030000 */  lw    $v1, ($s0)
/* 035274 80059E74 30620001 */  andi  $v0, $v1, 1
/* 035278 80059E78 50400013 */  beql  $v0, $zero, .L80059EC8
/* 03527C 80059E7C 26520001 */   addiu $s2, $s2, 1
/* 035280 80059E80 30620002 */  andi  $v0, $v1, 2
/* 035284 80059E84 50400010 */  beql  $v0, $zero, .L80059EC8
/* 035288 80059E88 26520001 */   addiu $s2, $s2, 1
/* 03528C 80059E8C 8E22FFF0 */  lw    $v0, -0x10($s1)
/* 035290 80059E90 10400003 */  beqz  $v0, .L80059EA0
/* 035294 80059E94 2442FFFF */   addiu $v0, $v0, -1
/* 035298 80059E98 080167B1 */  j     .L80059EC4
/* 03529C 80059E9C AE22FFF0 */   sw    $v0, -0x10($s1)

.L80059EA0:
/* 0352A0 80059EA0 8E240000 */  lw    $a0, ($s1)
/* 0352A4 80059EA4 50800005 */  beql  $a0, $zero, .L80059EBC
/* 0352A8 80059EA8 AE000000 */   sw    $zero, ($s0)
/* 0352AC 80059EAC 0C00AB1E */  jal   general_heap_free
/* 0352B0 80059EB0 00000000 */   nop   
/* 0352B4 80059EB4 AE200000 */  sw    $zero, ($s1)
/* 0352B8 80059EB8 AE000000 */  sw    $zero, ($s0)
.L80059EBC:
/* 0352BC 80059EBC 0C019A48 */  jal   osUnmapTLB
/* 0352C0 80059EC0 0240202D */   daddu $a0, $s2, $zero
.L80059EC4:
/* 0352C4 80059EC4 26520001 */  addiu $s2, $s2, 1
.L80059EC8:
/* 0352C8 80059EC8 26310020 */  addiu $s1, $s1, 0x20
/* 0352CC 80059ECC 2A42000F */  slti  $v0, $s2, 0xf
/* 0352D0 80059ED0 1440FFE7 */  bnez  $v0, .L80059E70
/* 0352D4 80059ED4 26100020 */   addiu $s0, $s0, 0x20
.L80059ED8:
/* 0352D8 80059ED8 8FBF0020 */  lw    $ra, 0x20($sp)
/* 0352DC 80059EDC 8FB3001C */  lw    $s3, 0x1c($sp)
/* 0352E0 80059EE0 8FB20018 */  lw    $s2, 0x18($sp)
/* 0352E4 80059EE4 8FB10014 */  lw    $s1, 0x14($sp)
/* 0352E8 80059EE8 8FB00010 */  lw    $s0, 0x10($sp)
/* 0352EC 80059EEC 03E00008 */  jr    $ra
/* 0352F0 80059EF0 27BD0028 */   addiu $sp, $sp, 0x28

