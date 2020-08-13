.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel nuAuCleanDMABuffers
/* 026668 8004B268 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 02666C 8004B26C 3C02800A */  lui   $v0, 0x800a
/* 026670 8004B270 24423BD0 */  addiu $v0, $v0, 0x3bd0
/* 026674 8004B274 AFBF001C */  sw    $ra, 0x1c($sp)
/* 026678 8004B278 AFB20018 */  sw    $s2, 0x18($sp)
/* 02667C 8004B27C AFB10014 */  sw    $s1, 0x14($sp)
/* 026680 8004B280 AFB00010 */  sw    $s0, 0x10($sp)
/* 026684 8004B284 8C500004 */  lw    $s0, 4($v0)
/* 026688 8004B288 1200001A */  beqz  $s0, .L8004B2F4
/* 02668C 8004B28C 0040902D */   daddu $s2, $v0, $zero
.L8004B290:
/* 026690 8004B290 8E02000C */  lw    $v0, 0xc($s0)
/* 026694 8004B294 3C038008 */  lui   $v1, 0x8008
/* 026698 8004B298 8C63817C */  lw    $v1, -0x7e84($v1)
/* 02669C 8004B29C 8E110000 */  lw    $s1, ($s0)
/* 0266A0 8004B2A0 24420001 */  addiu $v0, $v0, 1
/* 0266A4 8004B2A4 0043102B */  sltu  $v0, $v0, $v1
/* 0266A8 8004B2A8 50400010 */  beql  $v0, $zero, .L8004B2EC
/* 0266AC 8004B2AC 0220802D */   daddu $s0, $s1, $zero
/* 0266B0 8004B2B0 8E420004 */  lw    $v0, 4($s2)
/* 0266B4 8004B2B4 50500001 */  beql  $v0, $s0, .L8004B2BC
/* 0266B8 8004B2B8 AE510004 */   sw    $s1, 4($s2)
.L8004B2BC:
/* 0266BC 8004B2BC 0C012D03 */  jal   alUnlink
/* 0266C0 8004B2C0 0200202D */   daddu $a0, $s0, $zero
/* 0266C4 8004B2C4 8E450008 */  lw    $a1, 8($s2)
/* 0266C8 8004B2C8 50A00005 */  beql  $a1, $zero, .L8004B2E0
/* 0266CC 8004B2CC AE500008 */   sw    $s0, 8($s2)
/* 0266D0 8004B2D0 0C012CFB */  jal   alLink
/* 0266D4 8004B2D4 0200202D */   daddu $a0, $s0, $zero
/* 0266D8 8004B2D8 08012CBB */  j     .L8004B2EC
/* 0266DC 8004B2DC 0220802D */   daddu $s0, $s1, $zero

.L8004B2E0:
/* 0266E0 8004B2E0 AE000000 */  sw    $zero, ($s0)
/* 0266E4 8004B2E4 AE000004 */  sw    $zero, 4($s0)
/* 0266E8 8004B2E8 0220802D */  daddu $s0, $s1, $zero
.L8004B2EC:
/* 0266EC 8004B2EC 1600FFE8 */  bnez  $s0, .L8004B290
/* 0266F0 8004B2F0 00000000 */   nop   
.L8004B2F4:
/* 0266F4 8004B2F4 3C038008 */  lui   $v1, 0x8008
/* 0266F8 8004B2F8 2463817C */  addiu $v1, $v1, -0x7e84
/* 0266FC 8004B2FC 8C620000 */  lw    $v0, ($v1)
/* 026700 8004B300 3C018008 */  lui   $at, 0x8008
/* 026704 8004B304 AC208178 */  sw    $zero, -0x7e88($at)
/* 026708 8004B308 24420001 */  addiu $v0, $v0, 1
/* 02670C 8004B30C AC620000 */  sw    $v0, ($v1)
/* 026710 8004B310 8FBF001C */  lw    $ra, 0x1c($sp)
/* 026714 8004B314 8FB20018 */  lw    $s2, 0x18($sp)
/* 026718 8004B318 8FB10014 */  lw    $s1, 0x14($sp)
/* 02671C 8004B31C 8FB00010 */  lw    $s0, 0x10($sp)
/* 026720 8004B320 03E00008 */  jr    $ra
/* 026724 8004B324 27BD0020 */   addiu $sp, $sp, 0x20

/* 026728 8004B328 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 02672C 8004B32C 00042400 */  sll   $a0, $a0, 0x10
/* 026730 8004B330 00042403 */  sra   $a0, $a0, 0x10
/* 026734 8004B334 24020001 */  addiu $v0, $zero, 1
/* 026738 8004B338 AFBF0014 */  sw    $ra, 0x14($sp)
/* 02673C 8004B33C 1082000B */  beq   $a0, $v0, .L8004B36C
/* 026740 8004B340 AFB00010 */   sw    $s0, 0x10($sp)
/* 026744 8004B344 24020002 */  addiu $v0, $zero, 2
/* 026748 8004B348 14820024 */  bne   $a0, $v0, .L8004B3DC
/* 02674C 8004B34C 00000000 */   nop   
/* 026750 8004B350 0C015B54 */  jal   func_80056D50
/* 026754 8004B354 00000000 */   nop   
/* 026758 8004B358 3C01800A */  lui   $at, 0x800a
/* 02675C 8004B35C 0C015B4D */  jal   func_80056D34
/* 026760 8004B360 A4220F50 */   sh    $v0, 0xf50($at)
/* 026764 8004B364 08012CF7 */  j     .L8004B3DC
/* 026768 8004B368 00000000 */   nop   

.L8004B36C:
/* 02676C 8004B36C 3C026666 */  lui   $v0, 0x6666
/* 026770 8004B370 3C03800A */  lui   $v1, 0x800a
/* 026774 8004B374 94630F50 */  lhu   $v1, 0xf50($v1)
/* 026778 8004B378 34426667 */  ori   $v0, $v0, 0x6667
/* 02677C 8004B37C 00031C00 */  sll   $v1, $v1, 0x10
/* 026780 8004B380 00032403 */  sra   $a0, $v1, 0x10
/* 026784 8004B384 00820018 */  mult  $a0, $v0
/* 026788 8004B388 00031FC3 */  sra   $v1, $v1, 0x1f
/* 02678C 8004B38C 00003810 */  mfhi  $a3
/* 026790 8004B390 000710C3 */  sra   $v0, $a3, 3
/* 026794 8004B394 00431023 */  subu  $v0, $v0, $v1
/* 026798 8004B398 00021400 */  sll   $v0, $v0, 0x10
/* 02679C 8004B39C 00021403 */  sra   $v0, $v0, 0x10
/* 0267A0 8004B3A0 00450018 */  mult  $v0, $a1
/* 0267A4 8004B3A4 00001812 */  mflo  $v1
/* 0267A8 8004B3A8 00838023 */  subu  $s0, $a0, $v1
/* 0267AC 8004B3AC 06020001 */  bltzl $s0, .L8004B3B4
/* 0267B0 8004B3B0 0000802D */   daddu $s0, $zero, $zero
.L8004B3B4:
/* 0267B4 8004B3B4 02100018 */  mult  $s0, $s0
/* 0267B8 8004B3B8 00003012 */  mflo  $a2
/* 0267BC 8004B3BC 000683C3 */  sra   $s0, $a2, 0xf
/* 0267C0 8004B3C0 00102400 */  sll   $a0, $s0, 0x10
/* 0267C4 8004B3C4 0C015B51 */  jal   func_80056D44
/* 0267C8 8004B3C8 00042403 */   sra   $a0, $a0, 0x10
/* 0267CC 8004B3CC 16000003 */  bnez  $s0, .L8004B3DC
/* 0267D0 8004B3D0 00000000 */   nop   
/* 0267D4 8004B3D4 3C018008 */  lui   $at, 0x8008
/* 0267D8 8004B3D8 A0208180 */  sb    $zero, -0x7e80($at)
.L8004B3DC:
/* 0267DC 8004B3DC 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0267E0 8004B3E0 8FB00010 */  lw    $s0, 0x10($sp)
/* 0267E4 8004B3E4 03E00008 */  jr    $ra
/* 0267E8 8004B3E8 27BD0018 */   addiu $sp, $sp, 0x18

