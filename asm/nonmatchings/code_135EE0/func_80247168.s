.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_80247168
/* 13A4A8 80247168 3C028027 */  lui   $v0, 0x8027
/* 13A4AC 8024716C 24420288 */  addiu $v0, $v0, 0x288
/* 13A4B0 80247170 00041840 */  sll   $v1, $a0, 1
/* 13A4B4 80247174 00641821 */  addu  $v1, $v1, $a0
/* 13A4B8 80247178 00031880 */  sll   $v1, $v1, 2
/* 13A4BC 8024717C 00621821 */  addu  $v1, $v1, $v0
/* 13A4C0 80247180 90620002 */  lbu   $v0, 2($v1)
/* 13A4C4 80247184 14400002 */  bnez  $v0, .L80247190
/* 13A4C8 80247188 00A2001A */   div   $zero, $a1, $v0
/* 13A4CC 8024718C 0007000D */  break 7
.L80247190:
/* 13A4D0 80247190 2401FFFF */  addiu $at, $zero, -1
/* 13A4D4 80247194 14410004 */  bne   $v0, $at, .L802471A8
/* 13A4D8 80247198 3C018000 */   lui   $at, 0x8000
/* 13A4DC 8024719C 14A10002 */  bne   $a1, $at, .L802471A8
/* 13A4E0 802471A0 00000000 */   nop   
/* 13A4E4 802471A4 0006000D */  break 6
.L802471A8:
/* 13A4E8 802471A8 00002812 */  mflo  $a1
/* 13A4EC 802471AC 24840001 */  addiu $a0, $a0, 1
/* 13A4F0 802471B0 90630001 */  lbu   $v1, 1($v1)
/* 13A4F4 802471B4 00041040 */  sll   $v0, $a0, 1
/* 13A4F8 802471B8 00441021 */  addu  $v0, $v0, $a0
/* 13A4FC 802471BC 00021080 */  sll   $v0, $v0, 2
/* 13A500 802471C0 00441023 */  subu  $v0, $v0, $a0
/* 13A504 802471C4 00031900 */  sll   $v1, $v1, 4
/* 13A508 802471C8 00431021 */  addu  $v0, $v0, $v1
/* 13A50C 802471CC 00052900 */  sll   $a1, $a1, 4
/* 13A510 802471D0 03E00008 */  jr    $ra
/* 13A514 802471D4 00451021 */   addu  $v0, $v0, $a1

