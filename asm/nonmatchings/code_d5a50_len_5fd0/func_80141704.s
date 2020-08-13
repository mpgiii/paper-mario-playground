.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_80141704
/* 0D7E04 80141704 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0D7E08 80141708 AFB3001C */  sw    $s3, 0x1c($sp)
/* 0D7E0C 8014170C 0080982D */  daddu $s3, $a0, $zero
/* 0D7E10 80141710 AFBF0020 */  sw    $ra, 0x20($sp)
/* 0D7E14 80141714 AFB20018 */  sw    $s2, 0x18($sp)
/* 0D7E18 80141718 AFB10014 */  sw    $s1, 0x14($sp)
/* 0D7E1C 8014171C AFB00010 */  sw    $s0, 0x10($sp)
/* 0D7E20 80141720 8E700004 */  lw    $s0, 4($s3)
/* 0D7E24 80141724 8E64001C */  lw    $a0, 0x1c($s3)
/* 0D7E28 80141728 8E030000 */  lw    $v1, ($s0)
/* 0D7E2C 8014172C 2C62001C */  sltiu $v0, $v1, 0x1c
/* 0D7E30 80141730 104002AF */  beqz  $v0, .L801421F0
/* 0D7E34 80141734 26100004 */   addiu $s0, $s0, 4
/* 0D7E38 80141738 00031080 */  sll   $v0, $v1, 2
/* 0D7E3C 8014173C 3C018015 */  lui   $at, 0x8015
/* 0D7E40 80141740 00220821 */  addu  $at, $at, $v0
/* 0D7E44 80141744 8C2211B0 */  lw    $v0, 0x11b0($at)
/* 0D7E48 80141748 00400008 */  jr    $v0
/* 0D7E4C 8014174C 00000000 */   nop   
/* 0D7E50 80141750 8E620000 */  lw    $v0, ($s3)
/* 0D7E54 80141754 2403003C */  addiu $v1, $zero, 0x3c
/* 0D7E58 80141758 A2630047 */  sb    $v1, 0x47($s3)
/* 0D7E5C 8014175C 34420004 */  ori   $v0, $v0, 4
/* 0D7E60 80141760 0805087C */  j     .L801421F0
/* 0D7E64 80141764 AE620000 */   sw    $v0, ($s3)

/* 0D7E68 80141768 2402003C */  addiu $v0, $zero, 0x3c
/* 0D7E6C 8014176C A2620047 */  sb    $v0, 0x47($s3)
/* 0D7E70 80141770 8E620000 */  lw    $v0, ($s3)
/* 0D7E74 80141774 3C030004 */  lui   $v1, 4
/* 0D7E78 80141778 00431025 */  or    $v0, $v0, $v1
/* 0D7E7C 8014177C 0805087C */  j     .L801421F0
/* 0D7E80 80141780 AE620000 */   sw    $v0, ($s3)

/* 0D7E84 80141784 24020001 */  addiu $v0, $zero, 1
/* 0D7E88 80141788 8E630000 */  lw    $v1, ($s3)
/* 0D7E8C 8014178C 3C040008 */  lui   $a0, 8
/* 0D7E90 80141790 AE700004 */  sw    $s0, 4($s3)
/* 0D7E94 80141794 00641825 */  or    $v1, $v1, $a0
/* 0D7E98 80141798 0805087D */  j     .L801421F4
/* 0D7E9C 8014179C AE630000 */   sw    $v1, ($s3)

/* 0D7EA0 801417A0 8E630000 */  lw    $v1, ($s3)
/* 0D7EA4 801417A4 24020001 */  addiu $v0, $zero, 1
/* 0D7EA8 801417A8 AE700004 */  sw    $s0, 4($s3)
/* 0D7EAC 801417AC 34634000 */  ori   $v1, $v1, 0x4000
/* 0D7EB0 801417B0 0805087D */  j     .L801421F4
/* 0D7EB4 801417B4 AE630000 */   sw    $v1, ($s3)

/* 0D7EB8 801417B8 24020001 */  addiu $v0, $zero, 1
/* 0D7EBC 801417BC 8E630000 */  lw    $v1, ($s3)
/* 0D7EC0 801417C0 2404BFFF */  addiu $a0, $zero, -0x4001
/* 0D7EC4 801417C4 0805073C */  j     .L80141CF0
/* 0D7EC8 801417C8 AE700004 */   sw    $s0, 4($s3)

/* 0D7ECC 801417CC 8E110000 */  lw    $s1, ($s0)
/* 0D7ED0 801417D0 26100004 */  addiu $s0, $s0, 4
/* 0D7ED4 801417D4 8E630000 */  lw    $v1, ($s3)
/* 0D7ED8 801417D8 24020001 */  addiu $v0, $zero, 1
/* 0D7EDC 801417DC AE700004 */  sw    $s0, 4($s3)
/* 0D7EE0 801417E0 00711825 */  or    $v1, $v1, $s1
/* 0D7EE4 801417E4 0805087D */  j     .L801421F4
/* 0D7EE8 801417E8 AE630000 */   sw    $v1, ($s3)

/* 0D7EEC 801417EC 8E110000 */  lw    $s1, ($s0)
/* 0D7EF0 801417F0 26100004 */  addiu $s0, $s0, 4
/* 0D7EF4 801417F4 8E630000 */  lw    $v1, ($s3)
/* 0D7EF8 801417F8 24020001 */  addiu $v0, $zero, 1
/* 0D7EFC 801417FC AE700004 */  sw    $s0, 4($s3)
/* 0D7F00 80141800 0805073C */  j     .L80141CF0
/* 0D7F04 80141804 00112027 */   nor   $a0, $zero, $s1

/* 0D7F08 80141808 92020003 */  lbu   $v0, 3($s0)
/* 0D7F0C 8014180C 26100004 */  addiu $s0, $s0, 4
/* 0D7F10 80141810 A2620047 */  sb    $v0, 0x47($s3)
/* 0D7F14 80141814 8E020000 */  lw    $v0, ($s0)
/* 0D7F18 80141818 3C030040 */  lui   $v1, 0x40
/* 0D7F1C 8014181C AE620010 */  sw    $v0, 0x10($s3)
/* 0D7F20 80141820 8E620000 */  lw    $v0, ($s3)
/* 0D7F24 80141824 26100004 */  addiu $s0, $s0, 4
/* 0D7F28 80141828 00431024 */  and   $v0, $v0, $v1
/* 0D7F2C 8014182C 10400005 */  beqz  $v0, .L80141844
/* 0D7F30 80141830 AE700004 */   sw    $s0, 4($s3)
/* 0D7F34 80141834 8E620010 */  lw    $v0, 0x10($s3)
/* 0D7F38 80141838 8E630018 */  lw    $v1, 0x18($s3)
/* 0D7F3C 8014183C 00431021 */  addu  $v0, $v0, $v1
/* 0D7F40 80141840 AE620010 */  sw    $v0, 0x10($s3)
.L80141844:
/* 0D7F44 80141844 8E630000 */  lw    $v1, ($s3)
/* 0D7F48 80141848 30620100 */  andi  $v0, $v1, 0x100
/* 0D7F4C 8014184C 10400268 */  beqz  $v0, .L801421F0
/* 0D7F50 80141850 3C020010 */   lui   $v0, 0x10
/* 0D7F54 80141854 00621024 */  and   $v0, $v1, $v0
/* 0D7F58 80141858 14400012 */  bnez  $v0, .L801418A4
/* 0D7F5C 8014185C 00000000 */   nop   
/* 0D7F60 80141860 3C028015 */  lui   $v0, 0x8015
/* 0D7F64 80141864 2442EFCC */  addiu $v0, $v0, -0x1034
/* 0D7F68 80141868 82650046 */  lb    $a1, 0x46($s3)
/* 0D7F6C 8014186C 82660045 */  lb    $a2, 0x45($s3)
/* 0D7F70 80141870 00051840 */  sll   $v1, $a1, 1
/* 0D7F74 80141874 00651821 */  addu  $v1, $v1, $a1
/* 0D7F78 80141878 00031840 */  sll   $v1, $v1, 1
/* 0D7F7C 8014187C 00621821 */  addu  $v1, $v1, $v0
/* 0D7F80 80141880 84670000 */  lh    $a3, ($v1)
/* 0D7F84 80141884 84680002 */  lh    $t0, 2($v1)
/* 0D7F88 80141888 00061840 */  sll   $v1, $a2, 1
/* 0D7F8C 8014188C 00661821 */  addu  $v1, $v1, $a2
/* 0D7F90 80141890 00031840 */  sll   $v1, $v1, 1
/* 0D7F94 80141894 00621821 */  addu  $v1, $v1, $v0
/* 0D7F98 80141898 84640000 */  lh    $a0, ($v1)
/* 0D7F9C 8014189C 0805062D */  j     .L801418B4
/* 0D7FA0 801418A0 84650002 */   lh    $a1, 2($v1)

.L801418A4:
/* 0D7FA4 801418A4 9267004E */  lbu   $a3, 0x4e($s3)
/* 0D7FA8 801418A8 9268004F */  lbu   $t0, 0x4f($s3)
/* 0D7FAC 801418AC 92640050 */  lbu   $a0, 0x50($s3)
/* 0D7FB0 801418B0 92650051 */  lbu   $a1, 0x51($s3)
.L801418B4:
/* 0D7FB4 801418B4 8E630000 */  lw    $v1, ($s3)
/* 0D7FB8 801418B8 30620200 */  andi  $v0, $v1, 0x200
/* 0D7FBC 801418BC 144000CD */  bnez  $v0, .L80141BF4
/* 0D7FC0 801418C0 2402FDFF */   addiu $v0, $zero, -0x201
/* 0D7FC4 801418C4 34620200 */  ori   $v0, $v1, 0x200
/* 0D7FC8 801418C8 44870000 */  mtc1  $a3, $f0
/* 0D7FCC 801418CC 00000000 */  nop   
/* 0D7FD0 801418D0 46800020 */  cvt.s.w $f0, $f0
/* 0D7FD4 801418D4 44882000 */  mtc1  $t0, $f4
/* 0D7FD8 801418D8 00000000 */  nop   
/* 0D7FDC 801418DC 46802120 */  cvt.s.w $f4, $f4
/* 0D7FE0 801418E0 44841000 */  mtc1  $a0, $f2
/* 0D7FE4 801418E4 00000000 */  nop   
/* 0D7FE8 801418E8 468010A0 */  cvt.s.w $f2, $f2
/* 0D7FEC 801418EC AE620000 */  sw    $v0, ($s3)
/* 0D7FF0 801418F0 82620047 */  lb    $v0, 0x47($s3)
/* 0D7FF4 801418F4 46001081 */  sub.s $f2, $f2, $f0
/* 0D7FF8 801418F8 E6600028 */  swc1  $f0, 0x28($s3)
/* 0D7FFC 801418FC 44820000 */  mtc1  $v0, $f0
/* 0D8000 80141900 00000000 */  nop   
/* 0D8004 80141904 46800020 */  cvt.s.w $f0, $f0
/* 0D8008 80141908 46001083 */  div.s $f2, $f2, $f0
/* 0D800C 8014190C 44850000 */  mtc1  $a1, $f0
/* 0D8010 80141910 00000000 */  nop   
/* 0D8014 80141914 46800020 */  cvt.s.w $f0, $f0
/* 0D8018 80141918 08050713 */  j     .L80141C4C
/* 0D801C 8014191C E664002C */   swc1  $f4, 0x2c($s3)

/* 0D8020 80141920 92020003 */  lbu   $v0, 3($s0)
/* 0D8024 80141924 26100004 */  addiu $s0, $s0, 4
/* 0D8028 80141928 A2620047 */  sb    $v0, 0x47($s3)
/* 0D802C 8014192C 8E020000 */  lw    $v0, ($s0)
/* 0D8030 80141930 26100004 */  addiu $s0, $s0, 4
/* 0D8034 80141934 AE620010 */  sw    $v0, 0x10($s3)
/* 0D8038 80141938 8E020000 */  lw    $v0, ($s0)
/* 0D803C 8014193C 3C030040 */  lui   $v1, 0x40
/* 0D8040 80141940 AE620014 */  sw    $v0, 0x14($s3)
/* 0D8044 80141944 8E620000 */  lw    $v0, ($s3)
/* 0D8048 80141948 26100004 */  addiu $s0, $s0, 4
/* 0D804C 8014194C 00431024 */  and   $v0, $v0, $v1
/* 0D8050 80141950 10400009 */  beqz  $v0, .L80141978
/* 0D8054 80141954 AE700004 */   sw    $s0, 4($s3)
/* 0D8058 80141958 8E620010 */  lw    $v0, 0x10($s3)
/* 0D805C 8014195C 8E640018 */  lw    $a0, 0x18($s3)
/* 0D8060 80141960 8E630014 */  lw    $v1, 0x14($s3)
/* 0D8064 80141964 0080282D */  daddu $a1, $a0, $zero
/* 0D8068 80141968 00441021 */  addu  $v0, $v0, $a0
/* 0D806C 8014196C 00651821 */  addu  $v1, $v1, $a1
/* 0D8070 80141970 AE620010 */  sw    $v0, 0x10($s3)
/* 0D8074 80141974 AE630014 */  sw    $v1, 0x14($s3)
.L80141978:
/* 0D8078 80141978 8E630000 */  lw    $v1, ($s3)
/* 0D807C 8014197C 30620100 */  andi  $v0, $v1, 0x100
/* 0D8080 80141980 1040021B */  beqz  $v0, .L801421F0
/* 0D8084 80141984 3C020010 */   lui   $v0, 0x10
/* 0D8088 80141988 00621024 */  and   $v0, $v1, $v0
/* 0D808C 8014198C 14400012 */  bnez  $v0, .L801419D8
/* 0D8090 80141990 00000000 */   nop   
/* 0D8094 80141994 3C028015 */  lui   $v0, 0x8015
/* 0D8098 80141998 2442EFCC */  addiu $v0, $v0, -0x1034
/* 0D809C 8014199C 82650046 */  lb    $a1, 0x46($s3)
/* 0D80A0 801419A0 82660045 */  lb    $a2, 0x45($s3)
/* 0D80A4 801419A4 00051840 */  sll   $v1, $a1, 1
/* 0D80A8 801419A8 00651821 */  addu  $v1, $v1, $a1
/* 0D80AC 801419AC 00031840 */  sll   $v1, $v1, 1
/* 0D80B0 801419B0 00621821 */  addu  $v1, $v1, $v0
/* 0D80B4 801419B4 84670000 */  lh    $a3, ($v1)
/* 0D80B8 801419B8 84680002 */  lh    $t0, 2($v1)
/* 0D80BC 801419BC 00061840 */  sll   $v1, $a2, 1
/* 0D80C0 801419C0 00661821 */  addu  $v1, $v1, $a2
/* 0D80C4 801419C4 00031840 */  sll   $v1, $v1, 1
/* 0D80C8 801419C8 00621821 */  addu  $v1, $v1, $v0
/* 0D80CC 801419CC 84640000 */  lh    $a0, ($v1)
/* 0D80D0 801419D0 0805067A */  j     .L801419E8
/* 0D80D4 801419D4 84650002 */   lh    $a1, 2($v1)

.L801419D8:
/* 0D80D8 801419D8 9267004E */  lbu   $a3, 0x4e($s3)
/* 0D80DC 801419DC 9268004F */  lbu   $t0, 0x4f($s3)
/* 0D80E0 801419E0 92640050 */  lbu   $a0, 0x50($s3)
/* 0D80E4 801419E4 92650051 */  lbu   $a1, 0x51($s3)
.L801419E8:
/* 0D80E8 801419E8 8E630000 */  lw    $v1, ($s3)
/* 0D80EC 801419EC 30620200 */  andi  $v0, $v1, 0x200
/* 0D80F0 801419F0 14400080 */  bnez  $v0, .L80141BF4
/* 0D80F4 801419F4 2402FDFF */   addiu $v0, $zero, -0x201
/* 0D80F8 801419F8 34620200 */  ori   $v0, $v1, 0x200
/* 0D80FC 801419FC 44870000 */  mtc1  $a3, $f0
/* 0D8100 80141A00 00000000 */  nop   
/* 0D8104 80141A04 46800020 */  cvt.s.w $f0, $f0
/* 0D8108 80141A08 44882000 */  mtc1  $t0, $f4
/* 0D810C 80141A0C 00000000 */  nop   
/* 0D8110 80141A10 46802120 */  cvt.s.w $f4, $f4
/* 0D8114 80141A14 44841000 */  mtc1  $a0, $f2
/* 0D8118 80141A18 00000000 */  nop   
/* 0D811C 80141A1C 468010A0 */  cvt.s.w $f2, $f2
/* 0D8120 80141A20 AE620000 */  sw    $v0, ($s3)
/* 0D8124 80141A24 82620047 */  lb    $v0, 0x47($s3)
/* 0D8128 80141A28 46001081 */  sub.s $f2, $f2, $f0
/* 0D812C 80141A2C E6600028 */  swc1  $f0, 0x28($s3)
/* 0D8130 80141A30 44820000 */  mtc1  $v0, $f0
/* 0D8134 80141A34 00000000 */  nop   
/* 0D8138 80141A38 46800020 */  cvt.s.w $f0, $f0
/* 0D813C 80141A3C 46001083 */  div.s $f2, $f2, $f0
/* 0D8140 80141A40 44850000 */  mtc1  $a1, $f0
/* 0D8144 80141A44 00000000 */  nop   
/* 0D8148 80141A48 46800020 */  cvt.s.w $f0, $f0
/* 0D814C 80141A4C 08050713 */  j     .L80141C4C
/* 0D8150 80141A50 E664002C */   swc1  $f4, 0x2c($s3)

/* 0D8154 80141A54 92030003 */  lbu   $v1, 3($s0)
/* 0D8158 80141A58 8E620000 */  lw    $v0, ($s3)
/* 0D815C 80141A5C 26100004 */  addiu $s0, $s0, 4
/* 0D8160 80141A60 30420400 */  andi  $v0, $v0, 0x400
/* 0D8164 80141A64 14400007 */  bnez  $v0, .L80141A84
/* 0D8168 80141A68 A2630047 */   sb    $v1, 0x47($s3)
/* 0D816C 80141A6C 3C058015 */  lui   $a1, 0x8015
/* 0D8170 80141A70 24A57970 */  addiu $a1, $a1, 0x7970
/* 0D8174 80141A74 3C078015 */  lui   $a3, 0x8015
/* 0D8178 80141A78 24E77F70 */  addiu $a3, $a3, 0x7f70
/* 0D817C 80141A7C 080506A6 */  j     .L80141A98
/* 0D8180 80141A80 0000182D */   daddu $v1, $zero, $zero

.L80141A84:
/* 0D8184 80141A84 3C058016 */  lui   $a1, 0x8016
/* 0D8188 80141A88 24A58580 */  addiu $a1, $a1, -0x7a80
/* 0D818C 80141A8C 3C078016 */  lui   $a3, 0x8016
/* 0D8190 80141A90 24E78B80 */  addiu $a3, $a3, -0x7480
/* 0D8194 80141A94 0000182D */  daddu $v1, $zero, $zero
.L80141A98:
/* 0D8198 80141A98 8E060000 */  lw    $a2, ($s0)
/* 0D819C 80141A9C 00A0202D */  daddu $a0, $a1, $zero
.L80141AA0:
/* 0D81A0 80141AA0 8C820000 */  lw    $v0, ($a0)
/* 0D81A4 80141AA4 50460007 */  beql  $v0, $a2, .L80141AC4
/* 0D81A8 80141AA8 26100004 */   addiu $s0, $s0, 4
/* 0D81AC 80141AAC 24630001 */  addiu $v1, $v1, 1
/* 0D81B0 80141AB0 286200C0 */  slti  $v0, $v1, 0xc0
/* 0D81B4 80141AB4 1440FFFA */  bnez  $v0, .L80141AA0
/* 0D81B8 80141AB8 24840008 */   addiu $a0, $a0, 8
.L80141ABC:
/* 0D81BC 80141ABC 080506AF */  j     .L80141ABC
/* 0D81C0 80141AC0 00000000 */   nop   

.L80141AC4:
/* 0D81C4 80141AC4 000310C0 */  sll   $v0, $v1, 3
/* 0D81C8 80141AC8 0000182D */  daddu $v1, $zero, $zero
/* 0D81CC 80141ACC 00451021 */  addu  $v0, $v0, $a1
/* 0D81D0 80141AD0 8C420004 */  lw    $v0, 4($v0)
/* 0D81D4 80141AD4 00E0202D */  daddu $a0, $a3, $zero
/* 0D81D8 80141AD8 AE620010 */  sw    $v0, 0x10($s3)
/* 0D81DC 80141ADC 8E050000 */  lw    $a1, ($s0)
.L80141AE0:
/* 0D81E0 80141AE0 8C820000 */  lw    $v0, ($a0)
/* 0D81E4 80141AE4 10450007 */  beq   $v0, $a1, .L80141B04
/* 0D81E8 80141AE8 000310C0 */   sll   $v0, $v1, 3
/* 0D81EC 80141AEC 24630001 */  addiu $v1, $v1, 1
/* 0D81F0 80141AF0 286200C0 */  slti  $v0, $v1, 0xc0
/* 0D81F4 80141AF4 1440FFFA */  bnez  $v0, .L80141AE0
/* 0D81F8 80141AF8 24840008 */   addiu $a0, $a0, 8
.L80141AFC:
/* 0D81FC 80141AFC 080506BF */  j     .L80141AFC
/* 0D8200 80141B00 00000000 */   nop   

.L80141B04:
/* 0D8204 80141B04 00471021 */  addu  $v0, $v0, $a3
/* 0D8208 80141B08 8C420004 */  lw    $v0, 4($v0)
/* 0D820C 80141B0C 8E630000 */  lw    $v1, ($s3)
/* 0D8210 80141B10 2610000C */  addiu $s0, $s0, 0xc
/* 0D8214 80141B14 AE700004 */  sw    $s0, 4($s3)
/* 0D8218 80141B18 AE620014 */  sw    $v0, 0x14($s3)
/* 0D821C 80141B1C 30620100 */  andi  $v0, $v1, 0x100
/* 0D8220 80141B20 104001B3 */  beqz  $v0, .L801421F0
/* 0D8224 80141B24 3C020010 */   lui   $v0, 0x10
/* 0D8228 80141B28 00621024 */  and   $v0, $v1, $v0
/* 0D822C 80141B2C 14400012 */  bnez  $v0, .L80141B78
/* 0D8230 80141B30 00000000 */   nop   
/* 0D8234 80141B34 3C028015 */  lui   $v0, 0x8015
/* 0D8238 80141B38 2442EFCC */  addiu $v0, $v0, -0x1034
/* 0D823C 80141B3C 82650046 */  lb    $a1, 0x46($s3)
/* 0D8240 80141B40 82660045 */  lb    $a2, 0x45($s3)
/* 0D8244 80141B44 00051840 */  sll   $v1, $a1, 1
/* 0D8248 80141B48 00651821 */  addu  $v1, $v1, $a1
/* 0D824C 80141B4C 00031840 */  sll   $v1, $v1, 1
/* 0D8250 80141B50 00621821 */  addu  $v1, $v1, $v0
/* 0D8254 80141B54 84670000 */  lh    $a3, ($v1)
/* 0D8258 80141B58 84680002 */  lh    $t0, 2($v1)
/* 0D825C 80141B5C 00061840 */  sll   $v1, $a2, 1
/* 0D8260 80141B60 00661821 */  addu  $v1, $v1, $a2
/* 0D8264 80141B64 00031840 */  sll   $v1, $v1, 1
/* 0D8268 80141B68 00621821 */  addu  $v1, $v1, $v0
/* 0D826C 80141B6C 84640000 */  lh    $a0, ($v1)
/* 0D8270 80141B70 080506E2 */  j     .L80141B88
/* 0D8274 80141B74 84650002 */   lh    $a1, 2($v1)

.L80141B78:
/* 0D8278 80141B78 9267004E */  lbu   $a3, 0x4e($s3)
/* 0D827C 80141B7C 9268004F */  lbu   $t0, 0x4f($s3)
/* 0D8280 80141B80 92640050 */  lbu   $a0, 0x50($s3)
/* 0D8284 80141B84 92650051 */  lbu   $a1, 0x51($s3)
.L80141B88:
/* 0D8288 80141B88 8E630000 */  lw    $v1, ($s3)
/* 0D828C 80141B8C 30620200 */  andi  $v0, $v1, 0x200
/* 0D8290 80141B90 14400018 */  bnez  $v0, .L80141BF4
/* 0D8294 80141B94 2402FDFF */   addiu $v0, $zero, -0x201
/* 0D8298 80141B98 34620200 */  ori   $v0, $v1, 0x200
/* 0D829C 80141B9C 44870000 */  mtc1  $a3, $f0
/* 0D82A0 80141BA0 00000000 */  nop   
/* 0D82A4 80141BA4 46800020 */  cvt.s.w $f0, $f0
/* 0D82A8 80141BA8 44882000 */  mtc1  $t0, $f4
/* 0D82AC 80141BAC 00000000 */  nop   
/* 0D82B0 80141BB0 46802120 */  cvt.s.w $f4, $f4
/* 0D82B4 80141BB4 44841000 */  mtc1  $a0, $f2
/* 0D82B8 80141BB8 00000000 */  nop   
/* 0D82BC 80141BBC 468010A0 */  cvt.s.w $f2, $f2
/* 0D82C0 80141BC0 AE620000 */  sw    $v0, ($s3)
/* 0D82C4 80141BC4 82620047 */  lb    $v0, 0x47($s3)
/* 0D82C8 80141BC8 46001081 */  sub.s $f2, $f2, $f0
/* 0D82CC 80141BCC E6600028 */  swc1  $f0, 0x28($s3)
/* 0D82D0 80141BD0 44820000 */  mtc1  $v0, $f0
/* 0D82D4 80141BD4 00000000 */  nop   
/* 0D82D8 80141BD8 46800020 */  cvt.s.w $f0, $f0
/* 0D82DC 80141BDC 46001083 */  div.s $f2, $f2, $f0
/* 0D82E0 80141BE0 44850000 */  mtc1  $a1, $f0
/* 0D82E4 80141BE4 00000000 */  nop   
/* 0D82E8 80141BE8 46800020 */  cvt.s.w $f0, $f0
/* 0D82EC 80141BEC 08050713 */  j     .L80141C4C
/* 0D82F0 80141BF0 E664002C */   swc1  $f4, 0x2c($s3)

.L80141BF4:
/* 0D82F4 80141BF4 00621024 */  and   $v0, $v1, $v0
/* 0D82F8 80141BF8 44840000 */  mtc1  $a0, $f0
/* 0D82FC 80141BFC 00000000 */  nop   
/* 0D8300 80141C00 46800020 */  cvt.s.w $f0, $f0
/* 0D8304 80141C04 44852000 */  mtc1  $a1, $f4
/* 0D8308 80141C08 00000000 */  nop   
/* 0D830C 80141C0C 46802120 */  cvt.s.w $f4, $f4
/* 0D8310 80141C10 44871000 */  mtc1  $a3, $f2
/* 0D8314 80141C14 00000000 */  nop   
/* 0D8318 80141C18 468010A0 */  cvt.s.w $f2, $f2
/* 0D831C 80141C1C AE620000 */  sw    $v0, ($s3)
/* 0D8320 80141C20 82620047 */  lb    $v0, 0x47($s3)
/* 0D8324 80141C24 46001081 */  sub.s $f2, $f2, $f0
/* 0D8328 80141C28 E6600028 */  swc1  $f0, 0x28($s3)
/* 0D832C 80141C2C E664002C */  swc1  $f4, 0x2c($s3)
/* 0D8330 80141C30 44820000 */  mtc1  $v0, $f0
/* 0D8334 80141C34 00000000 */  nop   
/* 0D8338 80141C38 46800020 */  cvt.s.w $f0, $f0
/* 0D833C 80141C3C 46001083 */  div.s $f2, $f2, $f0
/* 0D8340 80141C40 44880000 */  mtc1  $t0, $f0
/* 0D8344 80141C44 00000000 */  nop   
/* 0D8348 80141C48 46800020 */  cvt.s.w $f0, $f0
.L80141C4C:
/* 0D834C 80141C4C 46040001 */  sub.s $f0, $f0, $f4
/* 0D8350 80141C50 E6620020 */  swc1  $f2, 0x20($s3)
/* 0D8354 80141C54 44821000 */  mtc1  $v0, $f2
/* 0D8358 80141C58 00000000 */  nop   
/* 0D835C 80141C5C 468010A0 */  cvt.s.w $f2, $f2
/* 0D8360 80141C60 46020003 */  div.s $f0, $f0, $f2
/* 0D8364 80141C64 0805087C */  j     .L801421F0
/* 0D8368 80141C68 E6600024 */   swc1  $f0, 0x24($s3)

/* 0D836C 80141C6C 8E63000C */  lw    $v1, 0xc($s3)
/* 0D8370 80141C70 24020001 */  addiu $v0, $zero, 1
/* 0D8374 80141C74 0805087D */  j     .L801421F4
/* 0D8378 80141C78 AE630004 */   sw    $v1, 4($s3)

/* 0D837C 80141C7C 24020001 */  addiu $v0, $zero, 1
/* 0D8380 80141C80 AE70000C */  sw    $s0, 0xc($s3)
/* 0D8384 80141C84 0805087D */  j     .L801421F4
/* 0D8388 80141C88 AE700004 */   sw    $s0, 4($s3)

/* 0D838C 80141C8C 8E110000 */  lw    $s1, ($s0)
/* 0D8390 80141C90 26100004 */  addiu $s0, $s0, 4
/* 0D8394 80141C94 8E120000 */  lw    $s2, ($s0)
/* 0D8398 80141C98 26100004 */  addiu $s0, $s0, 4
/* 0D839C 80141C9C 0C00A67F */  jal   rand_int
/* 0D83A0 80141CA0 0220202D */   daddu $a0, $s1, $zero
/* 0D83A4 80141CA4 0052102A */  slt   $v0, $v0, $s2
/* 0D83A8 80141CA8 50400102 */  beql  $v0, $zero, .L801420B4
/* 0D83AC 80141CAC AE700004 */   sw    $s0, 4($s3)
/* 0D83B0 80141CB0 8E62000C */  lw    $v0, 0xc($s3)
/* 0D83B4 80141CB4 0805082D */  j     .L801420B4
/* 0D83B8 80141CB8 AE620004 */   sw    $v0, 4($s3)

/* 0D83BC 80141CBC 92040003 */  lbu   $a0, 3($s0)
/* 0D83C0 80141CC0 26100004 */  addiu $s0, $s0, 4
/* 0D83C4 80141CC4 24030400 */  addiu $v1, $zero, 0x400
/* 0D83C8 80141CC8 AE630034 */  sw    $v1, 0x34($s3)
/* 0D83CC 80141CCC AE630038 */  sw    $v1, 0x38($s3)
/* 0D83D0 80141CD0 8E630000 */  lw    $v1, ($s3)
/* 0D83D4 80141CD4 24020001 */  addiu $v0, $zero, 1
/* 0D83D8 80141CD8 AE700004 */  sw    $s0, 4($s3)
/* 0D83DC 80141CDC A2640045 */  sb    $a0, 0x45($s3)
/* 0D83E0 80141CE0 A2640046 */  sb    $a0, 0x46($s3)
/* 0D83E4 80141CE4 2404FEFF */  addiu $a0, $zero, -0x101
/* 0D83E8 80141CE8 00641824 */  and   $v1, $v1, $a0
/* 0D83EC 80141CEC 2404F7FF */  addiu $a0, $zero, -0x801
.L80141CF0:
/* 0D83F0 80141CF0 00641824 */  and   $v1, $v1, $a0
/* 0D83F4 80141CF4 0805087D */  j     .L801421F4
/* 0D83F8 80141CF8 AE630000 */   sw    $v1, ($s3)

/* 0D83FC 80141CFC 8E050000 */  lw    $a1, ($s0)
/* 0D8400 80141D00 26100004 */  addiu $s0, $s0, 4
/* 0D8404 80141D04 8E060000 */  lw    $a2, ($s0)
/* 0D8408 80141D08 26100004 */  addiu $s0, $s0, 4
/* 0D840C 80141D0C 24020001 */  addiu $v0, $zero, 1
/* 0D8410 80141D10 3C013F80 */  lui   $at, 0x3f80
/* 0D8414 80141D14 44813000 */  mtc1  $at, $f6
/* 0D8418 80141D18 3C048015 */  lui   $a0, 0x8015
/* 0D841C 80141D1C 2484EFCC */  addiu $a0, $a0, -0x1034
/* 0D8420 80141D20 AE700004 */  sw    $s0, 4($s3)
/* 0D8424 80141D24 00451804 */  sllv  $v1, $a1, $v0
/* 0D8428 80141D28 00651821 */  addu  $v1, $v1, $a1
/* 0D842C 80141D2C 00431804 */  sllv  $v1, $v1, $v0
/* 0D8430 80141D30 00641821 */  addu  $v1, $v1, $a0
/* 0D8434 80141D34 A2650046 */  sb    $a1, 0x46($s3)
/* 0D8438 80141D38 A2660045 */  sb    $a2, 0x45($s3)
/* 0D843C 80141D3C 84670000 */  lh    $a3, ($v1)
/* 0D8440 80141D40 84680002 */  lh    $t0, 2($v1)
/* 0D8444 80141D44 00461804 */  sllv  $v1, $a2, $v0
/* 0D8448 80141D48 00661821 */  addu  $v1, $v1, $a2
/* 0D844C 80141D4C 00431804 */  sllv  $v1, $v1, $v0
/* 0D8450 80141D50 00641821 */  addu  $v1, $v1, $a0
/* 0D8454 80141D54 84640000 */  lh    $a0, ($v1)
/* 0D8458 80141D58 84650002 */  lh    $a1, 2($v1)
/* 0D845C 80141D5C 8E630000 */  lw    $v1, ($s3)
/* 0D8460 80141D60 44841000 */  mtc1  $a0, $f2
/* 0D8464 80141D64 00000000 */  nop   
/* 0D8468 80141D68 468010A0 */  cvt.s.w $f2, $f2
/* 0D846C 80141D6C 44870000 */  mtc1  $a3, $f0
/* 0D8470 80141D70 00000000 */  nop   
/* 0D8474 80141D74 46800020 */  cvt.s.w $f0, $f0
/* 0D8478 80141D78 46001203 */  div.s $f8, $f2, $f0
/* 0D847C 80141D7C 46083203 */  div.s $f8, $f6, $f8
/* 0D8480 80141D80 3C014480 */  lui   $at, 0x4480
/* 0D8484 80141D84 44811000 */  mtc1  $at, $f2
/* 0D8488 80141D88 44852000 */  mtc1  $a1, $f4
/* 0D848C 80141D8C 00000000 */  nop   
/* 0D8490 80141D90 46802120 */  cvt.s.w $f4, $f4
/* 0D8494 80141D94 46024202 */  mul.s $f8, $f8, $f2
/* 0D8498 80141D98 00000000 */  nop   
/* 0D849C 80141D9C 44880000 */  mtc1  $t0, $f0
/* 0D84A0 80141DA0 00000000 */  nop   
/* 0D84A4 80141DA4 46800020 */  cvt.s.w $f0, $f0
/* 0D84A8 80141DA8 46002283 */  div.s $f10, $f4, $f0
/* 0D84AC 80141DAC 460A3283 */  div.s $f10, $f6, $f10
/* 0D84B0 80141DB0 2404FEFF */  addiu $a0, $zero, -0x101
/* 0D84B4 80141DB4 46025082 */  mul.s $f2, $f10, $f2
/* 0D84B8 80141DB8 00000000 */  nop   
/* 0D84BC 80141DBC 00641824 */  and   $v1, $v1, $a0
/* 0D84C0 80141DC0 34630800 */  ori   $v1, $v1, 0x800
/* 0D84C4 80141DC4 AE630000 */  sw    $v1, ($s3)
/* 0D84C8 80141DC8 4600430D */  trunc.w.s $f12, $f8
/* 0D84CC 80141DCC E66C0034 */  swc1  $f12, 0x34($s3)
/* 0D84D0 80141DD0 4600130D */  trunc.w.s $f12, $f2
/* 0D84D4 80141DD4 0805087D */  j     .L801421F4
/* 0D84D8 80141DD8 E66C0038 */   swc1  $f12, 0x38($s3)

/* 0D84DC 80141DDC 8E050000 */  lw    $a1, ($s0)
/* 0D84E0 80141DE0 26100004 */  addiu $s0, $s0, 4
/* 0D84E4 80141DE4 8E060000 */  lw    $a2, ($s0)
/* 0D84E8 80141DE8 26100004 */  addiu $s0, $s0, 4
/* 0D84EC 80141DEC 24020001 */  addiu $v0, $zero, 1
/* 0D84F0 80141DF0 8E630000 */  lw    $v1, ($s3)
/* 0D84F4 80141DF4 24040400 */  addiu $a0, $zero, 0x400
/* 0D84F8 80141DF8 AE640034 */  sw    $a0, 0x34($s3)
/* 0D84FC 80141DFC AE640038 */  sw    $a0, 0x38($s3)
/* 0D8500 80141E00 2404F7FF */  addiu $a0, $zero, -0x801
/* 0D8504 80141E04 AE700004 */  sw    $s0, 4($s3)
/* 0D8508 80141E08 34630100 */  ori   $v1, $v1, 0x100
/* 0D850C 80141E0C 00641824 */  and   $v1, $v1, $a0
/* 0D8510 80141E10 2404FDFF */  addiu $a0, $zero, -0x201
/* 0D8514 80141E14 00641824 */  and   $v1, $v1, $a0
/* 0D8518 80141E18 A2650046 */  sb    $a1, 0x46($s3)
/* 0D851C 80141E1C A2660045 */  sb    $a2, 0x45($s3)
/* 0D8520 80141E20 0805087D */  j     .L801421F4
/* 0D8524 80141E24 AE630000 */   sw    $v1, ($s3)

/* 0D8528 80141E28 8E110000 */  lw    $s1, ($s0)
/* 0D852C 80141E2C 26100004 */  addiu $s0, $s0, 4
/* 0D8530 80141E30 92630040 */  lbu   $v1, 0x40($s3)
/* 0D8534 80141E34 24020001 */  addiu $v0, $zero, 1
/* 0D8538 80141E38 AE700004 */  sw    $s0, 4($s3)
/* 0D853C 80141E3C 00711821 */  addu  $v1, $v1, $s1
/* 0D8540 80141E40 0805087D */  j     .L801421F4
/* 0D8544 80141E44 A2630040 */   sb    $v1, 0x40($s3)

/* 0D8548 80141E48 8E120000 */  lw    $s2, ($s0)
/* 0D854C 80141E4C 8E620000 */  lw    $v0, ($s3)
/* 0D8550 80141E50 30422000 */  andi  $v0, $v0, 0x2000
/* 0D8554 80141E54 14400004 */  bnez  $v0, .L80141E68
/* 0D8558 80141E58 26100004 */   addiu $s0, $s0, 4
/* 0D855C 80141E5C 92620041 */  lbu   $v0, 0x41($s3)
/* 0D8560 80141E60 080507A8 */  j     .L80141EA0
/* 0D8564 80141E64 00521021 */   addu  $v0, $v0, $s2

.L80141E68:
/* 0D8568 80141E68 92620041 */  lbu   $v0, 0x41($s3)
/* 0D856C 80141E6C 080507A8 */  j     .L80141EA0
/* 0D8570 80141E70 00521023 */   subu  $v0, $v0, $s2

/* 0D8574 80141E74 8E110000 */  lw    $s1, ($s0)
/* 0D8578 80141E78 26100004 */  addiu $s0, $s0, 4
/* 0D857C 80141E7C 8E120000 */  lw    $s2, ($s0)
/* 0D8580 80141E80 8E620000 */  lw    $v0, ($s3)
/* 0D8584 80141E84 26100004 */  addiu $s0, $s0, 4
/* 0D8588 80141E88 30422000 */  andi  $v0, $v0, 0x2000
/* 0D858C 80141E8C 14400003 */  bnez  $v0, .L80141E9C
/* 0D8590 80141E90 A2710040 */   sb    $s1, 0x40($s3)
/* 0D8594 80141E94 0805082C */  j     .L801420B0
/* 0D8598 80141E98 A2720041 */   sb    $s2, 0x41($s3)

.L80141E9C:
/* 0D859C 80141E9C 00121023 */  negu  $v0, $s2
.L80141EA0:
/* 0D85A0 80141EA0 0805082C */  j     .L801420B0
/* 0D85A4 80141EA4 A2620041 */   sb    $v0, 0x41($s3)

/* 0D85A8 80141EA8 3C013780 */  lui   $at, 0x3780
/* 0D85AC 80141EAC 44810000 */  mtc1  $at, $f0
/* 0D85B0 80141EB0 C6040000 */  lwc1  $f4, ($s0)
/* 0D85B4 80141EB4 46802120 */  cvt.s.w $f4, $f4
/* 0D85B8 80141EB8 46002102 */  mul.s $f4, $f4, $f0
/* 0D85BC 80141EBC 00000000 */  nop   
/* 0D85C0 80141EC0 26100004 */  addiu $s0, $s0, 4
/* 0D85C4 80141EC4 8E620000 */  lw    $v0, ($s3)
/* 0D85C8 80141EC8 3C030010 */  lui   $v1, 0x10
/* 0D85CC 80141ECC 00431024 */  and   $v0, $v0, $v1
/* 0D85D0 80141ED0 14400012 */  bnez  $v0, .L80141F1C
/* 0D85D4 80141ED4 E6640030 */   swc1  $f4, 0x30($s3)
/* 0D85D8 80141ED8 82630046 */  lb    $v1, 0x46($s3)
/* 0D85DC 80141EDC 3C048015 */  lui   $a0, 0x8015
/* 0D85E0 80141EE0 2484EFCC */  addiu $a0, $a0, -0x1034
/* 0D85E4 80141EE4 00031040 */  sll   $v0, $v1, 1
/* 0D85E8 80141EE8 00431021 */  addu  $v0, $v0, $v1
/* 0D85EC 80141EEC 00021040 */  sll   $v0, $v0, 1
/* 0D85F0 80141EF0 00441021 */  addu  $v0, $v0, $a0
/* 0D85F4 80141EF4 84470000 */  lh    $a3, ($v0)
/* 0D85F8 80141EF8 82630045 */  lb    $v1, 0x45($s3)
/* 0D85FC 80141EFC 84480002 */  lh    $t0, 2($v0)
/* 0D8600 80141F00 00031040 */  sll   $v0, $v1, 1
/* 0D8604 80141F04 00431021 */  addu  $v0, $v0, $v1
/* 0D8608 80141F08 00021040 */  sll   $v0, $v0, 1
/* 0D860C 80141F0C 00441021 */  addu  $v0, $v0, $a0
/* 0D8610 80141F10 84440000 */  lh    $a0, ($v0)
/* 0D8614 80141F14 080507CB */  j     .L80141F2C
/* 0D8618 80141F18 84450002 */   lh    $a1, 2($v0)

.L80141F1C:
/* 0D861C 80141F1C 9267004E */  lbu   $a3, 0x4e($s3)
/* 0D8620 80141F20 9268004F */  lbu   $t0, 0x4f($s3)
/* 0D8624 80141F24 92640050 */  lbu   $a0, 0x50($s3)
/* 0D8628 80141F28 92650051 */  lbu   $a1, 0x51($s3)
.L80141F2C:
/* 0D862C 80141F2C 44840000 */  mtc1  $a0, $f0
/* 0D8630 80141F30 00000000 */  nop   
/* 0D8634 80141F34 46800020 */  cvt.s.w $f0, $f0
/* 0D8638 80141F38 46040002 */  mul.s $f0, $f0, $f4
/* 0D863C 80141F3C 00000000 */  nop   
/* 0D8640 80141F40 3C014F00 */  lui   $at, 0x4f00
/* 0D8644 80141F44 44811000 */  mtc1  $at, $f2
/* 0D8648 80141F48 00000000 */  nop   
/* 0D864C 80141F4C 4600103E */  c.le.s $f2, $f0
/* 0D8650 80141F50 00000000 */  nop   
/* 0D8654 80141F54 45010005 */  bc1t  .L80141F6C
/* 0D8658 80141F58 26660048 */   addiu $a2, $s3, 0x48
/* 0D865C 80141F5C 4600030D */  trunc.w.s $f12, $f0
/* 0D8660 80141F60 44036000 */  mfc1  $v1, $f12
/* 0D8664 80141F64 080507E1 */  j     .L80141F84
/* 0D8668 80141F68 00000000 */   nop   

.L80141F6C:
/* 0D866C 80141F6C 46020001 */  sub.s $f0, $f0, $f2
/* 0D8670 80141F70 3C028000 */  lui   $v0, 0x8000
/* 0D8674 80141F74 4600030D */  trunc.w.s $f12, $f0
/* 0D8678 80141F78 44036000 */  mfc1  $v1, $f12
/* 0D867C 80141F7C 00000000 */  nop   
/* 0D8680 80141F80 00621825 */  or    $v1, $v1, $v0
.L80141F84:
/* 0D8684 80141F84 44850000 */  mtc1  $a1, $f0
/* 0D8688 80141F88 00000000 */  nop   
/* 0D868C 80141F8C 46800020 */  cvt.s.w $f0, $f0
/* 0D8690 80141F90 46040002 */  mul.s $f0, $f0, $f4
/* 0D8694 80141F94 00000000 */  nop   
/* 0D8698 80141F98 3C014F00 */  lui   $at, 0x4f00
/* 0D869C 80141F9C 44811000 */  mtc1  $at, $f2
/* 0D86A0 80141FA0 A0C30000 */  sb    $v1, ($a2)
/* 0D86A4 80141FA4 4600103E */  c.le.s $f2, $f0
/* 0D86A8 80141FA8 00000000 */  nop   
/* 0D86AC 80141FAC 45010005 */  bc1t  .L80141FC4
/* 0D86B0 80141FB0 26660049 */   addiu $a2, $s3, 0x49
/* 0D86B4 80141FB4 4600030D */  trunc.w.s $f12, $f0
/* 0D86B8 80141FB8 44036000 */  mfc1  $v1, $f12
/* 0D86BC 80141FBC 080507F7 */  j     .L80141FDC
/* 0D86C0 80141FC0 00000000 */   nop   

.L80141FC4:
/* 0D86C4 80141FC4 46020001 */  sub.s $f0, $f0, $f2
/* 0D86C8 80141FC8 3C028000 */  lui   $v0, 0x8000
/* 0D86CC 80141FCC 4600030D */  trunc.w.s $f12, $f0
/* 0D86D0 80141FD0 44036000 */  mfc1  $v1, $f12
/* 0D86D4 80141FD4 00000000 */  nop   
/* 0D86D8 80141FD8 00621825 */  or    $v1, $v1, $v0
.L80141FDC:
/* 0D86DC 80141FDC 44840000 */  mtc1  $a0, $f0
/* 0D86E0 80141FE0 00000000 */  nop   
/* 0D86E4 80141FE4 46800020 */  cvt.s.w $f0, $f0
/* 0D86E8 80141FE8 44871000 */  mtc1  $a3, $f2
/* 0D86EC 80141FEC 00000000 */  nop   
/* 0D86F0 80141FF0 468010A0 */  cvt.s.w $f2, $f2
/* 0D86F4 80141FF4 46020003 */  div.s $f0, $f0, $f2
/* 0D86F8 80141FF8 46040202 */  mul.s $f8, $f0, $f4
/* 0D86FC 80141FFC 00000000 */  nop   
/* 0D8700 80142000 44850000 */  mtc1  $a1, $f0
/* 0D8704 80142004 00000000 */  nop   
/* 0D8708 80142008 46800020 */  cvt.s.w $f0, $f0
/* 0D870C 8014200C 44881000 */  mtc1  $t0, $f2
/* 0D8710 80142010 00000000 */  nop   
/* 0D8714 80142014 468010A0 */  cvt.s.w $f2, $f2
/* 0D8718 80142018 46020003 */  div.s $f0, $f0, $f2
/* 0D871C 8014201C 3C013F80 */  lui   $at, 0x3f80
/* 0D8720 80142020 44811000 */  mtc1  $at, $f2
/* 0D8724 80142024 46040282 */  mul.s $f10, $f0, $f4
/* 0D8728 80142028 00000000 */  nop   
/* 0D872C 8014202C 3C014480 */  lui   $at, 0x4480
/* 0D8730 80142030 44810000 */  mtc1  $at, $f0
/* 0D8734 80142034 A0C30000 */  sb    $v1, ($a2)
/* 0D8738 80142038 46081203 */  div.s $f8, $f2, $f8
/* 0D873C 8014203C 46004102 */  mul.s $f4, $f8, $f0
/* 0D8740 80142040 00000000 */  nop   
/* 0D8744 80142044 8E630000 */  lw    $v1, ($s3)
/* 0D8748 80142048 2404FEFF */  addiu $a0, $zero, -0x101
/* 0D874C 8014204C AE700004 */  sw    $s0, 4($s3)
/* 0D8750 80142050 460A1283 */  div.s $f10, $f2, $f10
/* 0D8754 80142054 46005002 */  mul.s $f0, $f10, $f0
/* 0D8758 80142058 00000000 */  nop   
/* 0D875C 8014205C 00641824 */  and   $v1, $v1, $a0
/* 0D8760 80142060 34630810 */  ori   $v1, $v1, 0x810
/* 0D8764 80142064 AE630000 */  sw    $v1, ($s3)
/* 0D8768 80142068 4600230D */  trunc.w.s $f12, $f4
/* 0D876C 8014206C E66C0034 */  swc1  $f12, 0x34($s3)
/* 0D8770 80142070 4600030D */  trunc.w.s $f12, $f0
/* 0D8774 80142074 E66C0038 */  swc1  $f12, 0x38($s3)
/* 0D8778 80142078 0805087D */  j     .L801421F4
/* 0D877C 8014207C 24020001 */   addiu $v0, $zero, 1

/* 0D8780 80142080 8E110000 */  lw    $s1, ($s0)
/* 0D8784 80142084 8E620000 */  lw    $v0, ($s3)
/* 0D8788 80142088 26100004 */  addiu $s0, $s0, 4
/* 0D878C 8014208C 34440020 */  ori   $a0, $v0, 0x20
/* 0D8790 80142090 A271004A */  sb    $s1, 0x4a($s3)
/* 0D8794 80142094 322300FF */  andi  $v1, $s1, 0xff
/* 0D8798 80142098 240200FF */  addiu $v0, $zero, 0xff
/* 0D879C 8014209C 14620004 */  bne   $v1, $v0, .L801420B0
/* 0D87A0 801420A0 AE640000 */   sw    $a0, ($s3)
/* 0D87A4 801420A4 2402FFDF */  addiu $v0, $zero, -0x21
/* 0D87A8 801420A8 00821024 */  and   $v0, $a0, $v0
/* 0D87AC 801420AC AE620000 */  sw    $v0, ($s3)
.L801420B0:
/* 0D87B0 801420B0 AE700004 */  sw    $s0, 4($s3)
.L801420B4:
/* 0D87B4 801420B4 0805087D */  j     .L801421F4
/* 0D87B8 801420B8 24020001 */   addiu $v0, $zero, 1

/* 0D87BC 801420BC 8E110000 */  lw    $s1, ($s0)
/* 0D87C0 801420C0 26100004 */  addiu $s0, $s0, 4
/* 0D87C4 801420C4 8E120000 */  lw    $s2, ($s0)
/* 0D87C8 801420C8 26100004 */  addiu $s0, $s0, 4
/* 0D87CC 801420CC 0C00A67F */  jal   rand_int
/* 0D87D0 801420D0 02512023 */   subu  $a0, $s2, $s1
/* 0D87D4 801420D4 00511021 */  addu  $v0, $v0, $s1
/* 0D87D8 801420D8 A2620047 */  sb    $v0, 0x47($s3)
/* 0D87DC 801420DC 0805087C */  j     .L801421F0
/* 0D87E0 801420E0 AE700004 */   sw    $s0, 4($s3)

/* 0D87E4 801420E4 92030003 */  lbu   $v1, 3($s0)
/* 0D87E8 801420E8 26100004 */  addiu $s0, $s0, 4
/* 0D87EC 801420EC 24020001 */  addiu $v0, $zero, 1
/* 0D87F0 801420F0 2404FEFF */  addiu $a0, $zero, -0x101
/* 0D87F4 801420F4 A263004E */  sb    $v1, 0x4e($s3)
/* 0D87F8 801420F8 A2630050 */  sb    $v1, 0x50($s3)
/* 0D87FC 801420FC 92050003 */  lbu   $a1, 3($s0)
/* 0D8800 80142100 24030400 */  addiu $v1, $zero, 0x400
/* 0D8804 80142104 AE630034 */  sw    $v1, 0x34($s3)
/* 0D8808 80142108 AE630038 */  sw    $v1, 0x38($s3)
/* 0D880C 8014210C 8E630000 */  lw    $v1, ($s3)
/* 0D8810 80142110 26100004 */  addiu $s0, $s0, 4
/* 0D8814 80142114 AE700004 */  sw    $s0, 4($s3)
/* 0D8818 80142118 A2600045 */  sb    $zero, 0x45($s3)
/* 0D881C 8014211C A2600046 */  sb    $zero, 0x46($s3)
/* 0D8820 80142120 00641824 */  and   $v1, $v1, $a0
/* 0D8824 80142124 2404F7FF */  addiu $a0, $zero, -0x801
/* 0D8828 80142128 00641824 */  and   $v1, $v1, $a0
/* 0D882C 8014212C 3C040010 */  lui   $a0, 0x10
/* 0D8830 80142130 00641825 */  or    $v1, $v1, $a0
/* 0D8834 80142134 AE630000 */  sw    $v1, ($s3)
/* 0D8838 80142138 A265004F */  sb    $a1, 0x4f($s3)
/* 0D883C 8014213C 0805087D */  j     .L801421F4
/* 0D8840 80142140 A2650051 */   sb    $a1, 0x51($s3)

/* 0D8844 80142144 8E110000 */  lw    $s1, ($s0)
/* 0D8848 80142148 26100004 */  addiu $s0, $s0, 4
/* 0D884C 8014214C 3C03F0FF */  lui   $v1, 0xf0ff
/* 0D8850 80142150 3463FFFF */  ori   $v1, $v1, 0xffff
/* 0D8854 80142154 8E640000 */  lw    $a0, ($s3)
/* 0D8858 80142158 24020001 */  addiu $v0, $zero, 1
/* 0D885C 8014215C AE700004 */  sw    $s0, 4($s3)
/* 0D8860 80142160 00832024 */  and   $a0, $a0, $v1
/* 0D8864 80142164 00111E00 */  sll   $v1, $s1, 0x18
/* 0D8868 80142168 00832025 */  or    $a0, $a0, $v1
/* 0D886C 8014216C 0805087D */  j     .L801421F4
/* 0D8870 80142170 AE640000 */   sw    $a0, ($s3)

/* 0D8874 80142174 8E110000 */  lw    $s1, ($s0)
/* 0D8878 80142178 26100004 */  addiu $s0, $s0, 4
/* 0D887C 8014217C 0C00A67F */  jal   rand_int
/* 0D8880 80142180 2624FFFF */   addiu $a0, $s1, -1
/* 0D8884 80142184 00021080 */  sll   $v0, $v0, 2
/* 0D8888 80142188 00501021 */  addu  $v0, $v0, $s0
/* 0D888C 8014218C 8C450000 */  lw    $a1, ($v0)
/* 0D8890 80142190 0260202D */  daddu $a0, $s3, $zero
/* 0D8894 80142194 0C04FCD4 */  jal   func_8013F350
/* 0D8898 80142198 AC850004 */   sw    $a1, 4($a0)
/* 0D889C 8014219C 0805087D */  j     .L801421F4
/* 0D88A0 801421A0 24020001 */   addiu $v0, $zero, 1

/* 0D88A4 801421A4 8E060000 */  lw    $a2, ($s0)
/* 0D88A8 801421A8 26100004 */  addiu $s0, $s0, 4
/* 0D88AC 801421AC 0C05272D */  jal   play_sound
/* 0D88B0 801421B0 00C0202D */   daddu $a0, $a2, $zero
/* 0D88B4 801421B4 24020001 */  addiu $v0, $zero, 1
/* 0D88B8 801421B8 0805087D */  j     .L801421F4
/* 0D88BC 801421BC AE700004 */   sw    $s0, 4($s3)

/* 0D88C0 801421C0 8E050000 */  lw    $a1, ($s0)
/* 0D88C4 801421C4 26100004 */  addiu $s0, $s0, 4
/* 0D88C8 801421C8 8E060000 */  lw    $a2, ($s0)
/* 0D88CC 801421CC 26100004 */  addiu $s0, $s0, 4
/* 0D88D0 801421D0 8E620000 */  lw    $v0, ($s3)
/* 0D88D4 801421D4 3C030001 */  lui   $v1, 1
/* 0D88D8 801421D8 00431024 */  and   $v0, $v0, $v1
/* 0D88DC 801421DC 1040FFB5 */  beqz  $v0, .L801420B4
/* 0D88E0 801421E0 AE700004 */   sw    $s0, 4($s3)
/* 0D88E4 801421E4 A4850028 */  sh    $a1, 0x28($a0)
/* 0D88E8 801421E8 0805082D */  j     .L801420B4
/* 0D88EC 801421EC A486002A */   sh    $a2, 0x2a($a0)

.L801421F0:
/* 0D88F0 801421F0 0000102D */  daddu $v0, $zero, $zero
.L801421F4:
/* 0D88F4 801421F4 8FBF0020 */  lw    $ra, 0x20($sp)
/* 0D88F8 801421F8 8FB3001C */  lw    $s3, 0x1c($sp)
/* 0D88FC 801421FC 8FB20018 */  lw    $s2, 0x18($sp)
/* 0D8900 80142200 8FB10014 */  lw    $s1, 0x14($sp)
/* 0D8904 80142204 8FB00010 */  lw    $s0, 0x10($sp)
/* 0D8908 80142208 03E00008 */  jr    $ra
/* 0D890C 8014220C 27BD0028 */   addiu $sp, $sp, 0x28

