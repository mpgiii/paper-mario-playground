.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel load_tile_header
/* 0AB46C 80114D6C 27BDFFB0 */  addiu $sp, $sp, -0x50
/* 0AB470 80114D70 AFB40038 */  sw    $s4, 0x38($sp)
/* 0AB474 80114D74 00A0A02D */  daddu $s4, $a1, $zero
/* 0AB478 80114D78 AFBF004C */  sw    $ra, 0x4c($sp)
/* 0AB47C 80114D7C AFBE0048 */  sw    $fp, 0x48($sp)
/* 0AB480 80114D80 AFB70044 */  sw    $s7, 0x44($sp)
/* 0AB484 80114D84 AFB60040 */  sw    $s6, 0x40($sp)
/* 0AB488 80114D88 AFB5003C */  sw    $s5, 0x3c($sp)
/* 0AB48C 80114D8C AFB30034 */  sw    $s3, 0x34($sp)
/* 0AB490 80114D90 AFB20030 */  sw    $s2, 0x30($sp)
/* 0AB494 80114D94 AFB1002C */  sw    $s1, 0x2c($sp)
/* 0AB498 80114D98 AFB00028 */  sw    $s0, 0x28($sp)
/* 0AB49C 80114D9C AFA60058 */  sw    $a2, 0x58($sp)
/* 0AB4A0 80114DA0 AFA00020 */  sw    $zero, 0x20($sp)
/* 0AB4A4 80114DA4 8C970008 */  lw    $s7, 8($a0)
/* 0AB4A8 80114DA8 12E0017B */  beqz  $s7, .L80115398
/* 0AB4AC 80114DAC 0280F02D */   daddu $fp, $s4, $zero
/* 0AB4B0 80114DB0 8FA80058 */  lw    $t0, 0x58($sp)
/* 0AB4B4 80114DB4 03C81021 */  addu  $v0, $fp, $t0
/* 0AB4B8 80114DB8 03C2102B */  sltu  $v0, $fp, $v0
/* 0AB4BC 80114DBC 10400171 */  beqz  $v0, .L80115384
/* 0AB4C0 80114DC0 24160001 */   addiu $s6, $zero, 1
/* 0AB4C4 80114DC4 3C128015 */  lui   $s2, 0x8015
/* 0AB4C8 80114DC8 26521740 */  addiu $s2, $s2, 0x1740
/* 0AB4CC 80114DCC 0280202D */  daddu $a0, $s4, $zero
.L80114DD0:
/* 0AB4D0 80114DD0 3C068015 */  lui   $a2, 0x8015
/* 0AB4D4 80114DD4 24C61740 */  addiu $a2, $a2, 0x1740
/* 0AB4D8 80114DD8 0C00A5CF */  jal   dma_copy
/* 0AB4DC 80114DDC 26850030 */   addiu $a1, $s4, 0x30
/* 0AB4E0 80114DE0 96430022 */  lhu   $v1, 0x22($s2)
/* 0AB4E4 80114DE4 96460026 */  lhu   $a2, 0x26($s2)
/* 0AB4E8 80114DE8 00660018 */  mult  $v1, $a2
/* 0AB4EC 80114DEC 9642002C */  lhu   $v0, 0x2c($s2)
/* 0AB4F0 80114DF0 30420F00 */  andi  $v0, $v0, 0xf00
/* 0AB4F4 80114DF4 00008012 */  mflo  $s0
/* 0AB4F8 80114DF8 14400047 */  bnez  $v0, .L80114F18
/* 0AB4FC 80114DFC 0060382D */   daddu $a3, $v1, $zero
/* 0AB500 80114E00 92420029 */  lbu   $v0, 0x29($s2)
/* 0AB504 80114E04 54560120 */  bnel  $v0, $s6, .L80115288
/* 0AB508 80114E08 00108042 */   srl   $s0, $s0, 1
/* 0AB50C 80114E0C 24040002 */  addiu $a0, $zero, 2
/* 0AB510 80114E10 14800002 */  bnez  $a0, .L80114E1C
/* 0AB514 80114E14 0064001A */   div   $zero, $v1, $a0
/* 0AB518 80114E18 0007000D */  break 7
.L80114E1C:
/* 0AB51C 80114E1C 2401FFFF */  addiu $at, $zero, -1
/* 0AB520 80114E20 14810004 */  bne   $a0, $at, .L80114E34
/* 0AB524 80114E24 3C018000 */   lui   $at, 0x8000
/* 0AB528 80114E28 14610002 */  bne   $v1, $at, .L80114E34
/* 0AB52C 80114E2C 00000000 */   nop   
/* 0AB530 80114E30 0006000D */  break 6
.L80114E34:
/* 0AB534 80114E34 00001012 */  mflo  $v0
/* 0AB538 80114E38 28420010 */  slti  $v0, $v0, 0x10
/* 0AB53C 80114E3C 54400112 */  bnel  $v0, $zero, .L80115288
/* 0AB540 80114E40 00108042 */   srl   $s0, $s0, 1
.L80114E44:
/* 0AB544 80114E44 14800002 */  bnez  $a0, .L80114E50
/* 0AB548 80114E48 00C4001A */   div   $zero, $a2, $a0
/* 0AB54C 80114E4C 0007000D */  break 7
.L80114E50:
/* 0AB550 80114E50 2401FFFF */  addiu $at, $zero, -1
/* 0AB554 80114E54 14810004 */  bne   $a0, $at, .L80114E68
/* 0AB558 80114E58 3C018000 */   lui   $at, 0x8000
/* 0AB55C 80114E5C 14C10002 */  bne   $a2, $at, .L80114E68
/* 0AB560 80114E60 00000000 */   nop   
/* 0AB564 80114E64 0006000D */  break 6
.L80114E68:
/* 0AB568 80114E68 00001012 */  mflo  $v0
/* 0AB56C 80114E6C 58400106 */  blezl $v0, .L80115288
/* 0AB570 80114E70 00108042 */   srl   $s0, $s0, 1
/* 0AB574 80114E74 14800002 */  bnez  $a0, .L80114E80
/* 0AB578 80114E78 00E4001A */   div   $zero, $a3, $a0
/* 0AB57C 80114E7C 0007000D */  break 7
.L80114E80:
/* 0AB580 80114E80 2401FFFF */  addiu $at, $zero, -1
/* 0AB584 80114E84 14810004 */  bne   $a0, $at, .L80114E98
/* 0AB588 80114E88 3C018000 */   lui   $at, 0x8000
/* 0AB58C 80114E8C 14E10002 */  bne   $a3, $at, .L80114E98
/* 0AB590 80114E90 00000000 */   nop   
/* 0AB594 80114E94 0006000D */  break 6
.L80114E98:
/* 0AB598 80114E98 00001012 */  mflo  $v0
/* 0AB59C 80114E9C 00000000 */  nop   
/* 0AB5A0 80114EA0 00000000 */  nop   
/* 0AB5A4 80114EA4 00460018 */  mult  $v0, $a2
/* 0AB5A8 80114EA8 00001812 */  mflo  $v1
/* 0AB5AC 80114EAC 00000000 */  nop   
/* 0AB5B0 80114EB0 14800002 */  bnez  $a0, .L80114EBC
/* 0AB5B4 80114EB4 0064001A */   div   $zero, $v1, $a0
/* 0AB5B8 80114EB8 0007000D */  break 7
.L80114EBC:
/* 0AB5BC 80114EBC 2401FFFF */  addiu $at, $zero, -1
/* 0AB5C0 80114EC0 14810004 */  bne   $a0, $at, .L80114ED4
/* 0AB5C4 80114EC4 3C018000 */   lui   $at, 0x8000
/* 0AB5C8 80114EC8 14610002 */  bne   $v1, $at, .L80114ED4
/* 0AB5CC 80114ECC 00000000 */   nop   
/* 0AB5D0 80114ED0 0006000D */  break 6
.L80114ED4:
/* 0AB5D4 80114ED4 00001812 */  mflo  $v1
/* 0AB5D8 80114ED8 00042040 */  sll   $a0, $a0, 1
/* 0AB5DC 80114EDC 14800002 */  bnez  $a0, .L80114EE8
/* 0AB5E0 80114EE0 00E4001A */   div   $zero, $a3, $a0
/* 0AB5E4 80114EE4 0007000D */  break 7
.L80114EE8:
/* 0AB5E8 80114EE8 2401FFFF */  addiu $at, $zero, -1
/* 0AB5EC 80114EEC 14810004 */  bne   $a0, $at, .L80114F00
/* 0AB5F0 80114EF0 3C018000 */   lui   $at, 0x8000
/* 0AB5F4 80114EF4 14E10002 */  bne   $a3, $at, .L80114F00
/* 0AB5F8 80114EF8 00000000 */   nop   
/* 0AB5FC 80114EFC 0006000D */  break 6
.L80114F00:
/* 0AB600 80114F00 00001012 */  mflo  $v0
/* 0AB604 80114F04 28420010 */  slti  $v0, $v0, 0x10
/* 0AB608 80114F08 1040FFCE */  beqz  $v0, .L80114E44
/* 0AB60C 80114F0C 02038021 */   addu  $s0, $s0, $v1
/* 0AB610 80114F10 080454A2 */  j     .L80115288
/* 0AB614 80114F14 00108042 */   srl   $s0, $s0, 1

.L80114F18:
/* 0AB618 80114F18 24080100 */  addiu $t0, $zero, 0x100
/* 0AB61C 80114F1C 14480044 */  bne   $v0, $t0, .L80115030
/* 0AB620 80114F20 00000000 */   nop   
/* 0AB624 80114F24 92420029 */  lbu   $v0, 0x29($s2)
/* 0AB628 80114F28 145600D7 */  bne   $v0, $s6, .L80115288
/* 0AB62C 80114F2C 24050002 */   addiu $a1, $zero, 2
/* 0AB630 80114F30 14A00002 */  bnez  $a1, .L80114F3C
/* 0AB634 80114F34 0065001A */   div   $zero, $v1, $a1
/* 0AB638 80114F38 0007000D */  break 7
.L80114F3C:
/* 0AB63C 80114F3C 2401FFFF */  addiu $at, $zero, -1
/* 0AB640 80114F40 14A10004 */  bne   $a1, $at, .L80114F54
/* 0AB644 80114F44 3C018000 */   lui   $at, 0x8000
/* 0AB648 80114F48 14610002 */  bne   $v1, $at, .L80114F54
/* 0AB64C 80114F4C 00000000 */   nop   
/* 0AB650 80114F50 0006000D */  break 6
.L80114F54:
/* 0AB654 80114F54 00001012 */  mflo  $v0
.L80114F58:
/* 0AB658 80114F58 28420008 */  slti  $v0, $v0, 8
/* 0AB65C 80114F5C 144000CA */  bnez  $v0, .L80115288
/* 0AB660 80114F60 00000000 */   nop   
/* 0AB664 80114F64 14A00002 */  bnez  $a1, .L80114F70
/* 0AB668 80114F68 00C5001A */   div   $zero, $a2, $a1
/* 0AB66C 80114F6C 0007000D */  break 7
.L80114F70:
/* 0AB670 80114F70 2401FFFF */  addiu $at, $zero, -1
/* 0AB674 80114F74 14A10004 */  bne   $a1, $at, .L80114F88
/* 0AB678 80114F78 3C018000 */   lui   $at, 0x8000
/* 0AB67C 80114F7C 14C10002 */  bne   $a2, $at, .L80114F88
/* 0AB680 80114F80 00000000 */   nop   
/* 0AB684 80114F84 0006000D */  break 6
.L80114F88:
/* 0AB688 80114F88 00001012 */  mflo  $v0
/* 0AB68C 80114F8C 184000BE */  blez  $v0, .L80115288
/* 0AB690 80114F90 00000000 */   nop   
/* 0AB694 80114F94 96430022 */  lhu   $v1, 0x22($s2)
/* 0AB698 80114F98 14A00002 */  bnez  $a1, .L80114FA4
/* 0AB69C 80114F9C 0065001A */   div   $zero, $v1, $a1
/* 0AB6A0 80114FA0 0007000D */  break 7
.L80114FA4:
/* 0AB6A4 80114FA4 2401FFFF */  addiu $at, $zero, -1
/* 0AB6A8 80114FA8 14A10004 */  bne   $a1, $at, .L80114FBC
/* 0AB6AC 80114FAC 3C018000 */   lui   $at, 0x8000
/* 0AB6B0 80114FB0 14610002 */  bne   $v1, $at, .L80114FBC
/* 0AB6B4 80114FB4 00000000 */   nop   
/* 0AB6B8 80114FB8 0006000D */  break 6
.L80114FBC:
/* 0AB6BC 80114FBC 00001012 */  mflo  $v0
/* 0AB6C0 80114FC0 00000000 */  nop   
/* 0AB6C4 80114FC4 00000000 */  nop   
/* 0AB6C8 80114FC8 00460018 */  mult  $v0, $a2
/* 0AB6CC 80114FCC 00004812 */  mflo  $t1
/* 0AB6D0 80114FD0 00000000 */  nop   
/* 0AB6D4 80114FD4 14A00002 */  bnez  $a1, .L80114FE0
/* 0AB6D8 80114FD8 0125001A */   div   $zero, $t1, $a1
/* 0AB6DC 80114FDC 0007000D */  break 7
.L80114FE0:
/* 0AB6E0 80114FE0 2401FFFF */  addiu $at, $zero, -1
/* 0AB6E4 80114FE4 14A10004 */  bne   $a1, $at, .L80114FF8
/* 0AB6E8 80114FE8 3C018000 */   lui   $at, 0x8000
/* 0AB6EC 80114FEC 15210002 */  bne   $t1, $at, .L80114FF8
/* 0AB6F0 80114FF0 00000000 */   nop   
/* 0AB6F4 80114FF4 0006000D */  break 6
.L80114FF8:
/* 0AB6F8 80114FF8 00002012 */  mflo  $a0
/* 0AB6FC 80114FFC 00052840 */  sll   $a1, $a1, 1
/* 0AB700 80115000 14A00002 */  bnez  $a1, .L8011500C
/* 0AB704 80115004 0065001A */   div   $zero, $v1, $a1
/* 0AB708 80115008 0007000D */  break 7
.L8011500C:
/* 0AB70C 8011500C 2401FFFF */  addiu $at, $zero, -1
/* 0AB710 80115010 14A10004 */  bne   $a1, $at, .L80115024
/* 0AB714 80115014 3C018000 */   lui   $at, 0x8000
/* 0AB718 80115018 14610002 */  bne   $v1, $at, .L80115024
/* 0AB71C 8011501C 00000000 */   nop   
/* 0AB720 80115020 0006000D */  break 6
.L80115024:
/* 0AB724 80115024 00001012 */  mflo  $v0
/* 0AB728 80115028 080453D6 */  j     .L80114F58
/* 0AB72C 8011502C 02048021 */   addu  $s0, $s0, $a0

.L80115030:
/* 0AB730 80115030 9642002C */  lhu   $v0, 0x2c($s2)
/* 0AB734 80115034 30430F00 */  andi  $v1, $v0, 0xf00
/* 0AB738 80115038 24020200 */  addiu $v0, $zero, 0x200
/* 0AB73C 8011503C 14620049 */  bne   $v1, $v0, .L80115164
/* 0AB740 80115040 24020300 */   addiu $v0, $zero, 0x300
/* 0AB744 80115044 92420029 */  lbu   $v0, 0x29($s2)
/* 0AB748 80115048 5456008F */  bnel  $v0, $s6, .L80115288
/* 0AB74C 8011504C 00108040 */   sll   $s0, $s0, 1
/* 0AB750 80115050 96470022 */  lhu   $a3, 0x22($s2)
/* 0AB754 80115054 24040002 */  addiu $a0, $zero, 2
/* 0AB758 80115058 14800002 */  bnez  $a0, .L80115064
/* 0AB75C 8011505C 00E4001A */   div   $zero, $a3, $a0
/* 0AB760 80115060 0007000D */  break 7
.L80115064:
/* 0AB764 80115064 2401FFFF */  addiu $at, $zero, -1
/* 0AB768 80115068 14810004 */  bne   $a0, $at, .L8011507C
/* 0AB76C 8011506C 3C018000 */   lui   $at, 0x8000
/* 0AB770 80115070 14E10002 */  bne   $a3, $at, .L8011507C
/* 0AB774 80115074 00000000 */   nop   
/* 0AB778 80115078 0006000D */  break 6
.L8011507C:
/* 0AB77C 8011507C 00001012 */  mflo  $v0
/* 0AB780 80115080 28420004 */  slti  $v0, $v0, 4
/* 0AB784 80115084 54400080 */  bnel  $v0, $zero, .L80115288
/* 0AB788 80115088 00108040 */   sll   $s0, $s0, 1
/* 0AB78C 8011508C 96460026 */  lhu   $a2, 0x26($s2)
.L80115090:
/* 0AB790 80115090 14800002 */  bnez  $a0, .L8011509C
/* 0AB794 80115094 00C4001A */   div   $zero, $a2, $a0
/* 0AB798 80115098 0007000D */  break 7
.L8011509C:
/* 0AB79C 8011509C 2401FFFF */  addiu $at, $zero, -1
/* 0AB7A0 801150A0 14810004 */  bne   $a0, $at, .L801150B4
/* 0AB7A4 801150A4 3C018000 */   lui   $at, 0x8000
/* 0AB7A8 801150A8 14C10002 */  bne   $a2, $at, .L801150B4
/* 0AB7AC 801150AC 00000000 */   nop   
/* 0AB7B0 801150B0 0006000D */  break 6
.L801150B4:
/* 0AB7B4 801150B4 00001012 */  mflo  $v0
/* 0AB7B8 801150B8 58400073 */  blezl $v0, .L80115288
/* 0AB7BC 801150BC 00108040 */   sll   $s0, $s0, 1
/* 0AB7C0 801150C0 14800002 */  bnez  $a0, .L801150CC
/* 0AB7C4 801150C4 00E4001A */   div   $zero, $a3, $a0
/* 0AB7C8 801150C8 0007000D */  break 7
.L801150CC:
/* 0AB7CC 801150CC 2401FFFF */  addiu $at, $zero, -1
/* 0AB7D0 801150D0 14810004 */  bne   $a0, $at, .L801150E4
/* 0AB7D4 801150D4 3C018000 */   lui   $at, 0x8000
/* 0AB7D8 801150D8 14E10002 */  bne   $a3, $at, .L801150E4
/* 0AB7DC 801150DC 00000000 */   nop   
/* 0AB7E0 801150E0 0006000D */  break 6
.L801150E4:
/* 0AB7E4 801150E4 00001012 */  mflo  $v0
/* 0AB7E8 801150E8 00000000 */  nop   
/* 0AB7EC 801150EC 00000000 */  nop   
/* 0AB7F0 801150F0 00460018 */  mult  $v0, $a2
/* 0AB7F4 801150F4 00001812 */  mflo  $v1
/* 0AB7F8 801150F8 00000000 */  nop   
/* 0AB7FC 801150FC 14800002 */  bnez  $a0, .L80115108
/* 0AB800 80115100 0064001A */   div   $zero, $v1, $a0
/* 0AB804 80115104 0007000D */  break 7
.L80115108:
/* 0AB808 80115108 2401FFFF */  addiu $at, $zero, -1
/* 0AB80C 8011510C 14810004 */  bne   $a0, $at, .L80115120
/* 0AB810 80115110 3C018000 */   lui   $at, 0x8000
/* 0AB814 80115114 14610002 */  bne   $v1, $at, .L80115120
/* 0AB818 80115118 00000000 */   nop   
/* 0AB81C 8011511C 0006000D */  break 6
.L80115120:
/* 0AB820 80115120 00001812 */  mflo  $v1
/* 0AB824 80115124 00042040 */  sll   $a0, $a0, 1
/* 0AB828 80115128 14800002 */  bnez  $a0, .L80115134
/* 0AB82C 8011512C 00E4001A */   div   $zero, $a3, $a0
/* 0AB830 80115130 0007000D */  break 7
.L80115134:
/* 0AB834 80115134 2401FFFF */  addiu $at, $zero, -1
/* 0AB838 80115138 14810004 */  bne   $a0, $at, .L8011514C
/* 0AB83C 8011513C 3C018000 */   lui   $at, 0x8000
/* 0AB840 80115140 14E10002 */  bne   $a3, $at, .L8011514C
/* 0AB844 80115144 00000000 */   nop   
/* 0AB848 80115148 0006000D */  break 6
.L8011514C:
/* 0AB84C 8011514C 00001012 */  mflo  $v0
/* 0AB850 80115150 28420004 */  slti  $v0, $v0, 4
/* 0AB854 80115154 1040FFCE */  beqz  $v0, .L80115090
/* 0AB858 80115158 02038021 */   addu  $s0, $s0, $v1
/* 0AB85C 8011515C 080454A2 */  j     .L80115288
/* 0AB860 80115160 00108040 */   sll   $s0, $s0, 1

.L80115164:
/* 0AB864 80115164 14620048 */  bne   $v1, $v0, .L80115288
/* 0AB868 80115168 00000000 */   nop   
/* 0AB86C 8011516C 92420029 */  lbu   $v0, 0x29($s2)
/* 0AB870 80115170 54560045 */  bnel  $v0, $s6, .L80115288
/* 0AB874 80115174 00108080 */   sll   $s0, $s0, 2
/* 0AB878 80115178 96470022 */  lhu   $a3, 0x22($s2)
/* 0AB87C 8011517C 24040002 */  addiu $a0, $zero, 2
/* 0AB880 80115180 14800002 */  bnez  $a0, .L8011518C
/* 0AB884 80115184 00E4001A */   div   $zero, $a3, $a0
/* 0AB888 80115188 0007000D */  break 7
.L8011518C:
/* 0AB88C 8011518C 2401FFFF */  addiu $at, $zero, -1
/* 0AB890 80115190 14810004 */  bne   $a0, $at, .L801151A4
/* 0AB894 80115194 3C018000 */   lui   $at, 0x8000
/* 0AB898 80115198 14E10002 */  bne   $a3, $at, .L801151A4
/* 0AB89C 8011519C 00000000 */   nop   
/* 0AB8A0 801151A0 0006000D */  break 6
.L801151A4:
/* 0AB8A4 801151A4 00001012 */  mflo  $v0
/* 0AB8A8 801151A8 0044102A */  slt   $v0, $v0, $a0
/* 0AB8AC 801151AC 54400036 */  bnel  $v0, $zero, .L80115288
/* 0AB8B0 801151B0 00108080 */   sll   $s0, $s0, 2
/* 0AB8B4 801151B4 96460026 */  lhu   $a2, 0x26($s2)
.L801151B8:
/* 0AB8B8 801151B8 14800002 */  bnez  $a0, .L801151C4
/* 0AB8BC 801151BC 00C4001A */   div   $zero, $a2, $a0
/* 0AB8C0 801151C0 0007000D */  break 7
.L801151C4:
/* 0AB8C4 801151C4 2401FFFF */  addiu $at, $zero, -1
/* 0AB8C8 801151C8 14810004 */  bne   $a0, $at, .L801151DC
/* 0AB8CC 801151CC 3C018000 */   lui   $at, 0x8000
/* 0AB8D0 801151D0 14C10002 */  bne   $a2, $at, .L801151DC
/* 0AB8D4 801151D4 00000000 */   nop   
/* 0AB8D8 801151D8 0006000D */  break 6
.L801151DC:
/* 0AB8DC 801151DC 00001012 */  mflo  $v0
/* 0AB8E0 801151E0 58400029 */  blezl $v0, .L80115288
/* 0AB8E4 801151E4 00108080 */   sll   $s0, $s0, 2
/* 0AB8E8 801151E8 14800002 */  bnez  $a0, .L801151F4
/* 0AB8EC 801151EC 00E4001A */   div   $zero, $a3, $a0
/* 0AB8F0 801151F0 0007000D */  break 7
.L801151F4:
/* 0AB8F4 801151F4 2401FFFF */  addiu $at, $zero, -1
/* 0AB8F8 801151F8 14810004 */  bne   $a0, $at, .L8011520C
/* 0AB8FC 801151FC 3C018000 */   lui   $at, 0x8000
/* 0AB900 80115200 14E10002 */  bne   $a3, $at, .L8011520C
/* 0AB904 80115204 00000000 */   nop   
/* 0AB908 80115208 0006000D */  break 6
.L8011520C:
/* 0AB90C 8011520C 00001012 */  mflo  $v0
/* 0AB910 80115210 00000000 */  nop   
/* 0AB914 80115214 00000000 */  nop   
/* 0AB918 80115218 00460018 */  mult  $v0, $a2
/* 0AB91C 8011521C 00001812 */  mflo  $v1
/* 0AB920 80115220 00000000 */  nop   
/* 0AB924 80115224 14800002 */  bnez  $a0, .L80115230
/* 0AB928 80115228 0064001A */   div   $zero, $v1, $a0
/* 0AB92C 8011522C 0007000D */  break 7
.L80115230:
/* 0AB930 80115230 2401FFFF */  addiu $at, $zero, -1
/* 0AB934 80115234 14810004 */  bne   $a0, $at, .L80115248
/* 0AB938 80115238 3C018000 */   lui   $at, 0x8000
/* 0AB93C 8011523C 14610002 */  bne   $v1, $at, .L80115248
/* 0AB940 80115240 00000000 */   nop   
/* 0AB944 80115244 0006000D */  break 6
.L80115248:
/* 0AB948 80115248 00001812 */  mflo  $v1
/* 0AB94C 8011524C 00042040 */  sll   $a0, $a0, 1
/* 0AB950 80115250 14800002 */  bnez  $a0, .L8011525C
/* 0AB954 80115254 00E4001A */   div   $zero, $a3, $a0
/* 0AB958 80115258 0007000D */  break 7
.L8011525C:
/* 0AB95C 8011525C 2401FFFF */  addiu $at, $zero, -1
/* 0AB960 80115260 14810004 */  bne   $a0, $at, .L80115274
/* 0AB964 80115264 3C018000 */   lui   $at, 0x8000
/* 0AB968 80115268 14E10002 */  bne   $a3, $at, .L80115274
/* 0AB96C 8011526C 00000000 */   nop   
/* 0AB970 80115270 0006000D */  break 6
.L80115274:
/* 0AB974 80115274 00001012 */  mflo  $v0
/* 0AB978 80115278 28420002 */  slti  $v0, $v0, 2
/* 0AB97C 8011527C 1040FFCE */  beqz  $v0, .L801151B8
/* 0AB980 80115280 02038021 */   addu  $s0, $s0, $v1
/* 0AB984 80115284 00108080 */  sll   $s0, $s0, 2
.L80115288:
/* 0AB988 80115288 9642002A */  lhu   $v0, 0x2a($s2)
/* 0AB98C 8011528C 24030002 */  addiu $v1, $zero, 2
/* 0AB990 80115290 3042000F */  andi  $v0, $v0, 0xf
/* 0AB994 80115294 14430007 */  bne   $v0, $v1, .L801152B4
/* 0AB998 80115298 0000A82D */   daddu $s5, $zero, $zero
/* 0AB99C 8011529C 9642002C */  lhu   $v0, 0x2c($s2)
/* 0AB9A0 801152A0 24080100 */  addiu $t0, $zero, 0x100
/* 0AB9A4 801152A4 30420F00 */  andi  $v0, $v0, 0xf00
/* 0AB9A8 801152A8 14480002 */  bne   $v0, $t0, .L801152B4
/* 0AB9AC 801152AC 24150020 */   addiu $s5, $zero, 0x20
/* 0AB9B0 801152B0 24150200 */  addiu $s5, $zero, 0x200
.L801152B4:
/* 0AB9B4 801152B4 92430029 */  lbu   $v1, 0x29($s2)
/* 0AB9B8 801152B8 24020003 */  addiu $v0, $zero, 3
/* 0AB9BC 801152BC 1462001F */  bne   $v1, $v0, .L8011533C
/* 0AB9C0 801152C0 0000982D */   daddu $s3, $zero, $zero
/* 0AB9C4 801152C4 96440020 */  lhu   $a0, 0x20($s2)
/* 0AB9C8 801152C8 96420024 */  lhu   $v0, 0x24($s2)
/* 0AB9CC 801152CC 00820018 */  mult  $a0, $v0
/* 0AB9D0 801152D0 9643002C */  lhu   $v1, 0x2c($s2)
/* 0AB9D4 801152D4 3063F000 */  andi  $v1, $v1, 0xf000
/* 0AB9D8 801152D8 00008812 */  mflo  $s1
/* 0AB9DC 801152DC 14600003 */  bnez  $v1, .L801152EC
/* 0AB9E0 801152E0 24081000 */   addiu $t0, $zero, 0x1000
/* 0AB9E4 801152E4 080454C3 */  j     .L8011530C
/* 0AB9E8 801152E8 00118842 */   srl   $s1, $s1, 1

.L801152EC:
/* 0AB9EC 801152EC 10680007 */  beq   $v1, $t0, .L8011530C
/* 0AB9F0 801152F0 24022000 */   addiu $v0, $zero, 0x2000
/* 0AB9F4 801152F4 14620003 */  bne   $v1, $v0, .L80115304
/* 0AB9F8 801152F8 24023000 */   addiu $v0, $zero, 0x3000
/* 0AB9FC 801152FC 080454C3 */  j     .L8011530C
/* 0ABA00 80115300 00118840 */   sll   $s1, $s1, 1

.L80115304:
/* 0ABA04 80115304 50620001 */  beql  $v1, $v0, .L8011530C
/* 0ABA08 80115308 00118880 */   sll   $s1, $s1, 2
.L8011530C:
/* 0ABA0C 8011530C 9642002A */  lhu   $v0, 0x2a($s2)
/* 0ABA10 80115310 24030020 */  addiu $v1, $zero, 0x20
/* 0ABA14 80115314 304200F0 */  andi  $v0, $v0, 0xf0
/* 0ABA18 80115318 14430009 */  bne   $v0, $v1, .L80115340
/* 0ABA1C 8011531C 0000982D */   daddu $s3, $zero, $zero
/* 0ABA20 80115320 9642002C */  lhu   $v0, 0x2c($s2)
/* 0ABA24 80115324 24081000 */  addiu $t0, $zero, 0x1000
/* 0ABA28 80115328 3042F000 */  andi  $v0, $v0, 0xf000
/* 0ABA2C 8011532C 14480004 */  bne   $v0, $t0, .L80115340
/* 0ABA30 80115330 0060982D */   daddu $s3, $v1, $zero
/* 0ABA34 80115334 080454D0 */  j     .L80115340
/* 0ABA38 80115338 24130200 */   addiu $s3, $zero, 0x200

.L8011533C:
/* 0ABA3C 8011533C 0260882D */  daddu $s1, $s3, $zero
.L80115340:
/* 0ABA40 80115340 02E0202D */  daddu $a0, $s7, $zero
/* 0ABA44 80115344 0C01BB5C */  jal   strcmp
/* 0ABA48 80115348 0240282D */   daddu $a1, $s2, $zero
/* 0ABA4C 8011534C 1040000D */  beqz  $v0, .L80115384
/* 0ABA50 80115350 02151021 */   addu  $v0, $s0, $s5
/* 0ABA54 80115354 24420030 */  addiu $v0, $v0, 0x30
/* 0ABA58 80115358 0282A021 */  addu  $s4, $s4, $v0
/* 0ABA5C 8011535C 8FA80020 */  lw    $t0, 0x20($sp)
/* 0ABA60 80115360 02331021 */  addu  $v0, $s1, $s3
/* 0ABA64 80115364 25080001 */  addiu $t0, $t0, 1
/* 0ABA68 80115368 AFA80020 */  sw    $t0, 0x20($sp)
/* 0ABA6C 8011536C 8FA80058 */  lw    $t0, 0x58($sp)
/* 0ABA70 80115370 0282A021 */  addu  $s4, $s4, $v0
/* 0ABA74 80115374 03C81021 */  addu  $v0, $fp, $t0
/* 0ABA78 80115378 0282102B */  sltu  $v0, $s4, $v0
/* 0ABA7C 8011537C 1440FE94 */  bnez  $v0, .L80114DD0
/* 0ABA80 80115380 0280202D */   daddu $a0, $s4, $zero
.L80115384:
/* 0ABA84 80115384 3C020004 */  lui   $v0, 4
/* 0ABA88 80115388 03C21021 */  addu  $v0, $fp, $v0
/* 0ABA8C 8011538C 0282102B */  sltu  $v0, $s4, $v0
/* 0ABA90 80115390 14400009 */  bnez  $v0, .L801153B8
/* 0ABA94 80115394 00000000 */   nop   
.L80115398:
/* 0ABA98 80115398 3C028015 */  lui   $v0, 0x8015
/* 0ABA9C 8011539C 8C423224 */  lw    $v0, 0x3224($v0)
/* 0ABAA0 801153A0 3C03800A */  lui   $v1, 0x800a
/* 0ABAA4 801153A4 8C63A5F4 */  lw    $v1, -0x5a0c($v1)
/* 0ABAA8 801153A8 00021080 */  sll   $v0, $v0, 2
/* 0ABAAC 801153AC 00431021 */  addu  $v0, $v0, $v1
/* 0ABAB0 801153B0 0804551A */  j     .L80115468
/* 0ABAB4 801153B4 A0400002 */   sb    $zero, 2($v0)

.L801153B8:
/* 0ABAB8 801153B8 3C168015 */  lui   $s6, 0x8015
/* 0ABABC 801153BC 26D63224 */  addiu $s6, $s6, 0x3224
/* 0ABAC0 801153C0 3C17800A */  lui   $s7, 0x800a
/* 0ABAC4 801153C4 26F7A5F4 */  addiu $s7, $s7, -0x5a0c
/* 0ABAC8 801153C8 8EC20000 */  lw    $v0, ($s6)
/* 0ABACC 801153CC 8EE30000 */  lw    $v1, ($s7)
/* 0ABAD0 801153D0 8FA80020 */  lw    $t0, 0x20($sp)
/* 0ABAD4 801153D4 00021080 */  sll   $v0, $v0, 2
/* 0ABAD8 801153D8 00431021 */  addu  $v0, $v0, $v1
/* 0ABADC 801153DC 25030001 */  addiu $v1, $t0, 1
/* 0ABAE0 801153E0 A0430002 */  sb    $v1, 2($v0)
/* 0ABAE4 801153E4 8EC20000 */  lw    $v0, ($s6)
/* 0ABAE8 801153E8 8EE30000 */  lw    $v1, ($s7)
/* 0ABAEC 801153EC 00021080 */  sll   $v0, $v0, 2
/* 0ABAF0 801153F0 00431021 */  addu  $v0, $v0, $v1
/* 0ABAF4 801153F4 90430002 */  lbu   $v1, 2($v0)
/* 0ABAF8 801153F8 3C048016 */  lui   $a0, 0x8016
/* 0ABAFC 801153FC 2484A590 */  addiu $a0, $a0, -0x5a70
/* 0ABB00 80115400 00031100 */  sll   $v0, $v1, 4
/* 0ABB04 80115404 00431021 */  addu  $v0, $v0, $v1
/* 0ABB08 80115408 00021080 */  sll   $v0, $v0, 2
/* 0ABB0C 8011540C 00442821 */  addu  $a1, $v0, $a0
/* 0ABB10 80115410 8CA20000 */  lw    $v0, ($a1)
/* 0ABB14 80115414 14400014 */  bnez  $v0, .L80115468
/* 0ABB18 80115418 26940030 */   addiu $s4, $s4, 0x30
/* 0ABB1C 8011541C 0280202D */  daddu $a0, $s4, $zero
/* 0ABB20 80115420 0240302D */  daddu $a2, $s2, $zero
/* 0ABB24 80115424 0200382D */  daddu $a3, $s0, $zero
/* 0ABB28 80115428 AFB50010 */  sw    $s5, 0x10($sp)
/* 0ABB2C 8011542C AFB10014 */  sw    $s1, 0x14($sp)
/* 0ABB30 80115430 0C0452D6 */  jal   func_80114B58
/* 0ABB34 80115434 AFB30018 */   sw    $s3, 0x18($sp)
/* 0ABB38 80115438 02902021 */  addu  $a0, $s4, $s0
/* 0ABB3C 8011543C 00952021 */  addu  $a0, $a0, $s5
/* 0ABB40 80115440 00912021 */  addu  $a0, $a0, $s1
/* 0ABB44 80115444 00932021 */  addu  $a0, $a0, $s3
/* 0ABB48 80115448 8EC20000 */  lw    $v0, ($s6)
/* 0ABB4C 8011544C 8EE30000 */  lw    $v1, ($s7)
/* 0ABB50 80115450 8FA70058 */  lw    $a3, 0x58($sp)
/* 0ABB54 80115454 00021080 */  sll   $v0, $v0, 2
/* 0ABB58 80115458 00431021 */  addu  $v0, $v0, $v1
/* 0ABB5C 8011545C 90450002 */  lbu   $a1, 2($v0)
/* 0ABB60 80115460 0C045526 */  jal   func_80115498
/* 0ABB64 80115464 03C0302D */   daddu $a2, $fp, $zero
.L80115468:
/* 0ABB68 80115468 8FBF004C */  lw    $ra, 0x4c($sp)
/* 0ABB6C 8011546C 8FBE0048 */  lw    $fp, 0x48($sp)
/* 0ABB70 80115470 8FB70044 */  lw    $s7, 0x44($sp)
/* 0ABB74 80115474 8FB60040 */  lw    $s6, 0x40($sp)
/* 0ABB78 80115478 8FB5003C */  lw    $s5, 0x3c($sp)
/* 0ABB7C 8011547C 8FB40038 */  lw    $s4, 0x38($sp)
/* 0ABB80 80115480 8FB30034 */  lw    $s3, 0x34($sp)
/* 0ABB84 80115484 8FB20030 */  lw    $s2, 0x30($sp)
/* 0ABB88 80115488 8FB1002C */  lw    $s1, 0x2c($sp)
/* 0ABB8C 8011548C 8FB00028 */  lw    $s0, 0x28($sp)
/* 0ABB90 80115490 03E00008 */  jr    $ra
/* 0ABB94 80115494 27BD0050 */   addiu $sp, $sp, 0x50

