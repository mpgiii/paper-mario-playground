.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_8004E0F4
/* 0294F4 8004E0F4 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0294F8 8004E0F8 AFB10014 */  sw    $s1, 0x14($sp)
/* 0294FC 8004E0FC 0080882D */  daddu $s1, $a0, $zero
/* 029500 8004E100 AFBF0018 */  sw    $ra, 0x18($sp)
/* 029504 8004E104 AFB00010 */  sw    $s0, 0x10($sp)
/* 029508 8004E108 8E240000 */  lw    $a0, ($s1)
/* 02950C 8004E10C 1080000B */  beqz  $a0, .L8004E13C
/* 029510 8004E110 0000802D */   daddu $s0, $zero, $zero
/* 029514 8004E114 0C0135E5 */  jal   func_8004D794
/* 029518 8004E118 00000000 */   nop   
/* 02951C 8004E11C 50400008 */  beql  $v0, $zero, .L8004E140
/* 029520 8004E120 24100002 */   addiu $s0, $zero, 2
/* 029524 8004E124 8E250004 */  lw    $a1, 4($s1)
/* 029528 8004E128 8E26000C */  lw    $a2, 0xc($s1)
/* 02952C 8004E12C 0C014EC1 */  jal   func_80053B04
/* 029530 8004E130 2444002C */   addiu $a0, $v0, 0x2c
/* 029534 8004E134 08013851 */  j     .L8004E144
/* 029538 8004E138 0200102D */   daddu $v0, $s0, $zero

.L8004E13C:
/* 02953C 8004E13C 24100003 */  addiu $s0, $zero, 3
.L8004E140:
/* 029540 8004E140 0200102D */  daddu $v0, $s0, $zero
.L8004E144:
/* 029544 8004E144 8FBF0018 */  lw    $ra, 0x18($sp)
/* 029548 8004E148 8FB10014 */  lw    $s1, 0x14($sp)
/* 02954C 8004E14C 8FB00010 */  lw    $s0, 0x10($sp)
/* 029550 8004E150 03E00008 */  jr    $ra
/* 029554 8004E154 27BD0020 */   addiu $sp, $sp, 0x20

