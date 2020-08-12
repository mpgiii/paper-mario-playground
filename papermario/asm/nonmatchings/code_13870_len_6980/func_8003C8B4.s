.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel func_8003C8B4
/* 017CB4 8003C8B4 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 017CB8 8003C8B8 AFB00020 */  sw    $s0, 0x20($sp)
/* 017CBC 8003C8BC 00858021 */  addu  $s0, $a0, $a1
/* 017CC0 8003C8C0 AFBF0024 */  sw    $ra, 0x24($sp)
/* 017CC4 8003C8C4 82030330 */  lb    $v1, 0x330($s0)
/* 017CC8 8003C8C8 10600005 */  beqz  $v1, .L8003C8E0
/* 017CCC 8003C8CC 24020001 */   addiu $v0, $zero, 1
/* 017CD0 8003C8D0 1062001A */  beq   $v1, $v0, .L8003C93C
/* 017CD4 8003C8D4 00051080 */   sll   $v0, $a1, 2
/* 017CD8 8003C8D8 0800F25D */  j     .L8003C974
/* 017CDC 8003C8DC 00000000 */   nop   

.L8003C8E0:
/* 017CE0 8003C8E0 848300A8 */  lh    $v1, 0xa8($a0)
/* 017CE4 8003C8E4 C482003C */  lwc1  $f2, 0x3c($a0)
/* 017CE8 8003C8E8 24020003 */  addiu $v0, $zero, 3
/* 017CEC 8003C8EC AFA20014 */  sw    $v0, 0x14($sp)
/* 017CF0 8003C8F0 00051080 */  sll   $v0, $a1, 2
/* 017CF4 8003C8F4 24420324 */  addiu $v0, $v0, 0x324
/* 017CF8 8003C8F8 3C0141A0 */  lui   $at, 0x41a0
/* 017CFC 8003C8FC 44810000 */  mtc1  $at, $f0
/* 017D00 8003C900 00821021 */  addu  $v0, $a0, $v0
/* 017D04 8003C904 AFA20018 */  sw    $v0, 0x18($sp)
/* 017D08 8003C908 E7A00010 */  swc1  $f0, 0x10($sp)
/* 017D0C 8003C90C 44830000 */  mtc1  $v1, $f0
/* 017D10 8003C910 00000000 */  nop   
/* 017D14 8003C914 46800020 */  cvt.s.w $f0, $f0
/* 017D18 8003C918 46001080 */  add.s $f2, $f2, $f0
/* 017D1C 8003C91C 8C850038 */  lw    $a1, 0x38($a0)
/* 017D20 8003C920 8C870040 */  lw    $a3, 0x40($a0)
/* 017D24 8003C924 44061000 */  mfc1  $a2, $f2
/* 017D28 8003C928 0C01C28C */  jal   func_80070A30
/* 017D2C 8003C92C 0000202D */   daddu $a0, $zero, $zero
/* 017D30 8003C930 24020001 */  addiu $v0, $zero, 1
/* 017D34 8003C934 0800F25D */  j     .L8003C974
/* 017D38 8003C938 A2020330 */   sb    $v0, 0x330($s0)

.L8003C93C:
/* 017D3C 8003C93C 00821021 */  addu  $v0, $a0, $v0
/* 017D40 8003C940 8C420324 */  lw    $v0, 0x324($v0)
/* 017D44 8003C944 C4800038 */  lwc1  $f0, 0x38($a0)
/* 017D48 8003C948 8C43000C */  lw    $v1, 0xc($v0)
/* 017D4C 8003C94C E4600004 */  swc1  $f0, 4($v1)
/* 017D50 8003C950 848200A8 */  lh    $v0, 0xa8($a0)
/* 017D54 8003C954 C480003C */  lwc1  $f0, 0x3c($a0)
/* 017D58 8003C958 44821000 */  mtc1  $v0, $f2
/* 017D5C 8003C95C 00000000 */  nop   
/* 017D60 8003C960 468010A0 */  cvt.s.w $f2, $f2
/* 017D64 8003C964 46020000 */  add.s $f0, $f0, $f2
/* 017D68 8003C968 E4600008 */  swc1  $f0, 8($v1)
/* 017D6C 8003C96C C4800040 */  lwc1  $f0, 0x40($a0)
/* 017D70 8003C970 E460000C */  swc1  $f0, 0xc($v1)
.L8003C974:
/* 017D74 8003C974 8FBF0024 */  lw    $ra, 0x24($sp)
/* 017D78 8003C978 8FB00020 */  lw    $s0, 0x20($sp)
/* 017D7C 8003C97C 03E00008 */  jr    $ra
/* 017D80 8003C980 27BD0028 */   addiu $sp, $sp, 0x28
