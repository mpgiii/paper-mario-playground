.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel osSiGetAccess
/* 0411C4 80065DC4 3C028009 */  lui   $v0, 0x8009
/* 0411C8 80065DC8 8C424640 */  lw    $v0, 0x4640($v0)
/* 0411CC 80065DCC 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0411D0 80065DD0 1440000F */  bnez  $v0, .L80065E10
/* 0411D4 80065DD4 AFBF0018 */   sw    $ra, 0x18($sp)
/* 0411D8 80065DD8 24020001 */  addiu $v0, $zero, 1
/* 0411DC 80065DDC 3C018009 */  lui   $at, 0x8009
/* 0411E0 80065DE0 AC224640 */  sw    $v0, 0x4640($at)
/* 0411E4 80065DE4 3C04800E */  lui   $a0, 0x800e
/* 0411E8 80065DE8 2484ACA8 */  addiu $a0, $a0, -0x5358
/* 0411EC 80065DEC 3C05800B */  lui   $a1, 0x800b
/* 0411F0 80065DF0 24A5F900 */  addiu $a1, $a1, -0x700
/* 0411F4 80065DF4 0C019560 */  jal   osCreateMesgQueue
/* 0411F8 80065DF8 24060001 */   addiu $a2, $zero, 1
/* 0411FC 80065DFC 3C04800E */  lui   $a0, 0x800e
/* 041200 80065E00 2484ACA8 */  addiu $a0, $a0, -0x5358
/* 041204 80065E04 00002821 */  addu  $a1, $zero, $zero
/* 041208 80065E08 0C019608 */  jal   osSendMesg
/* 04120C 80065E0C 00003021 */   addu  $a2, $zero, $zero
.L80065E10:
/* 041210 80065E10 3C04800E */  lui   $a0, 0x800e
/* 041214 80065E14 2484ACA8 */  addiu $a0, $a0, -0x5358
/* 041218 80065E18 27A50010 */  addiu $a1, $sp, 0x10
/* 04121C 80065E1C 0C0195BC */  jal   osRecvMesg
/* 041220 80065E20 24060001 */   addiu $a2, $zero, 1
/* 041224 80065E24 8FBF0018 */  lw    $ra, 0x18($sp)
/* 041228 80065E28 03E00008 */  jr    $ra
/* 04122C 80065E2C 27BD0020 */   addiu $sp, $sp, 0x20

