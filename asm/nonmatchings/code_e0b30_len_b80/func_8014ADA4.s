.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_8014ADA4
/* 0E14A4 8014ADA4 3C028007 */  lui   $v0, 0x8007
/* 0E14A8 8014ADA8 8C42419C */  lw    $v0, 0x419c($v0)
/* 0E14AC 8014ADAC 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0E14B0 8014ADB0 AFBF0018 */  sw    $ra, 0x18($sp)
/* 0E14B4 8014ADB4 80420071 */  lb    $v0, 0x71($v0)
/* 0E14B8 8014ADB8 3C068016 */  lui   $a2, 0x8016
/* 0E14BC 8014ADBC 24C69AF0 */  addiu $a2, $a2, -0x6510
/* 0E14C0 8014ADC0 1440000A */  bnez  $v0, .L8014ADEC
/* 0E14C4 8014ADC4 24030008 */   addiu $v1, $zero, 8
/* 0E14C8 8014ADC8 94C20000 */  lhu   $v0, ($a2)
/* 0E14CC 8014ADCC 0000202D */  daddu $a0, $zero, $zero
/* 0E14D0 8014ADD0 AFA30010 */  sw    $v1, 0x10($sp)
/* 0E14D4 8014ADD4 8CC50024 */  lw    $a1, 0x24($a2)
/* 0E14D8 8014ADD8 00431025 */  or    $v0, $v0, $v1
/* 0E14DC 8014ADDC A4C20000 */  sh    $v0, ($a2)
/* 0E14E0 8014ADE0 8CC60028 */  lw    $a2, 0x28($a2)
/* 0E14E4 8014ADE4 0C0529F8 */  jal   _set_music_track
/* 0E14E8 8014ADE8 0080382D */   daddu $a3, $a0, $zero
.L8014ADEC:
/* 0E14EC 8014ADEC 8FBF0018 */  lw    $ra, 0x18($sp)
/* 0E14F0 8014ADF0 03E00008 */  jr    $ra
/* 0E14F4 8014ADF4 27BD0020 */   addiu $sp, $sp, 0x20

