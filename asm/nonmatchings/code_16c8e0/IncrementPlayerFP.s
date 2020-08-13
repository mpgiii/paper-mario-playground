.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel IncrementPlayerFP
/* 190640 80261D60 3C048011 */  lui   $a0, 0x8011
/* 190644 80261D64 2484F290 */  addiu $a0, $a0, -0xd70
/* 190648 80261D68 90820005 */  lbu   $v0, 5($a0)
/* 19064C 80261D6C 80830006 */  lb    $v1, 6($a0)
/* 190650 80261D70 24420001 */  addiu $v0, $v0, 1
/* 190654 80261D74 A0820005 */  sb    $v0, 5($a0)
/* 190658 80261D78 00021600 */  sll   $v0, $v0, 0x18
/* 19065C 80261D7C 00021603 */  sra   $v0, $v0, 0x18
/* 190660 80261D80 0062182A */  slt   $v1, $v1, $v0
/* 190664 80261D84 90820006 */  lbu   $v0, 6($a0)
/* 190668 80261D88 54600001 */  bnezl $v1, .L80261D90
/* 19066C 80261D8C A0820005 */   sb    $v0, 5($a0)
.L80261D90:
/* 190670 80261D90 03E00008 */  jr    $ra
/* 190674 80261D94 24020002 */   addiu $v0, $zero, 2

/* 190678 80261D98 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 19067C 80261D9C AFBF0010 */  sw    $ra, 0x10($sp)
/* 190680 80261DA0 0C09A75B */  jal   get_actor
/* 190684 80261DA4 8C840148 */   lw    $a0, 0x148($a0)
/* 190688 80261DA8 0040202D */  daddu $a0, $v0, $zero
/* 19068C 80261DAC 24050004 */  addiu $a1, $zero, 4
/* 190690 80261DB0 0000302D */  daddu $a2, $zero, $zero
/* 190694 80261DB4 0C099B3C */  jal   inflict_status_set_duration
/* 190698 80261DB8 24070001 */   addiu $a3, $zero, 1
/* 19069C 80261DBC 0C099DDF */  jal   func_8026777C
/* 1906A0 80261DC0 00000000 */   nop   
/* 1906A4 80261DC4 8FBF0010 */  lw    $ra, 0x10($sp)
/* 1906A8 80261DC8 24020002 */  addiu $v0, $zero, 2
/* 1906AC 80261DCC 03E00008 */  jr    $ra
/* 1906B0 80261DD0 27BD0018 */   addiu $sp, $sp, 0x18

/* 1906B4 80261DD4 3C038011 */  lui   $v1, 0x8011
/* 1906B8 80261DD8 2463F290 */  addiu $v1, $v1, -0xd70
/* 1906BC 80261DDC 80620000 */  lb    $v0, ($v1)
/* 1906C0 80261DE0 AC8200B0 */  sw    $v0, 0xb0($a0)
/* 1906C4 80261DE4 80620001 */  lb    $v0, 1($v1)
/* 1906C8 80261DE8 AC8200B4 */  sw    $v0, 0xb4($a0)
/* 1906CC 80261DEC 03E00008 */  jr    $ra
/* 1906D0 80261DF0 24020002 */   addiu $v0, $zero, 2

/* 1906D4 80261DF4 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 1906D8 80261DF8 AFB10014 */  sw    $s1, 0x14($sp)
/* 1906DC 80261DFC 0080882D */  daddu $s1, $a0, $zero
/* 1906E0 80261E00 AFBF0018 */  sw    $ra, 0x18($sp)
/* 1906E4 80261E04 AFB00010 */  sw    $s0, 0x10($sp)
/* 1906E8 80261E08 8E2400AC */  lw    $a0, 0xac($s1)
/* 1906EC 80261E0C 0C04C3D6 */  jal   get_item_entity
/* 1906F0 80261E10 00A0802D */   daddu $s0, $a1, $zero
/* 1906F4 80261E14 12000003 */  beqz  $s0, .L80261E24
/* 1906F8 80261E18 0040202D */   daddu $a0, $v0, $zero
/* 1906FC 80261E1C AE200070 */  sw    $zero, 0x70($s1)
/* 190700 80261E20 AE200074 */  sw    $zero, 0x74($s1)
.L80261E24:
/* 190704 80261E24 8E230074 */  lw    $v1, 0x74($s1)
/* 190708 80261E28 24050001 */  addiu $a1, $zero, 1
/* 19070C 80261E2C 10650020 */  beq   $v1, $a1, .L80261EB0
/* 190710 80261E30 28620002 */   slti  $v0, $v1, 2
/* 190714 80261E34 10400005 */  beqz  $v0, .L80261E4C
/* 190718 80261E38 24020002 */   addiu $v0, $zero, 2
/* 19071C 80261E3C 10600009 */  beqz  $v1, .L80261E64
/* 190720 80261E40 0000102D */   daddu $v0, $zero, $zero
/* 190724 80261E44 080987E8 */  j     .L80261FA0
/* 190728 80261E48 00000000 */   nop   

.L80261E4C:
/* 19072C 80261E4C 10620033 */  beq   $v1, $v0, .L80261F1C
/* 190730 80261E50 24020003 */   addiu $v0, $zero, 3
/* 190734 80261E54 10620049 */  beq   $v1, $v0, .L80261F7C
/* 190738 80261E58 0000102D */   daddu $v0, $zero, $zero
/* 19073C 80261E5C 080987E8 */  j     .L80261FA0
/* 190740 80261E60 00000000 */   nop   

.L80261E64:
/* 190744 80261E64 8E220070 */  lw    $v0, 0x70($s1)
/* 190748 80261E68 2442FFFF */  addiu $v0, $v0, -1
/* 19074C 80261E6C AE220070 */  sw    $v0, 0x70($s1)
/* 190750 80261E70 C480000C */  lwc1  $f0, 0xc($a0)
/* 190754 80261E74 44821000 */  mtc1  $v0, $f2
/* 190758 80261E78 00000000 */  nop   
/* 19075C 80261E7C 468010A0 */  cvt.s.w $f2, $f2
/* 190760 80261E80 46020000 */  add.s $f0, $f0, $f2
/* 190764 80261E84 44801000 */  mtc1  $zero, $f2
/* 190768 80261E88 00000000 */  nop   
/* 19076C 80261E8C 4602003C */  c.lt.s $f0, $f2
/* 190770 80261E90 00000000 */  nop   
/* 190774 80261E94 45000041 */  bc1f  .L80261F9C
/* 190778 80261E98 E480000C */   swc1  $f0, 0xc($a0)
/* 19077C 80261E9C 24020008 */  addiu $v0, $zero, 8
/* 190780 80261EA0 E482000C */  swc1  $f2, 0xc($a0)
/* 190784 80261EA4 AE220070 */  sw    $v0, 0x70($s1)
/* 190788 80261EA8 080987E7 */  j     .L80261F9C
/* 19078C 80261EAC AE250074 */   sw    $a1, 0x74($s1)

.L80261EB0:
/* 190790 80261EB0 8E220070 */  lw    $v0, 0x70($s1)
/* 190794 80261EB4 2442FFFF */  addiu $v0, $v0, -1
/* 190798 80261EB8 AE220070 */  sw    $v0, 0x70($s1)
/* 19079C 80261EBC C480000C */  lwc1  $f0, 0xc($a0)
/* 1907A0 80261EC0 44821000 */  mtc1  $v0, $f2
/* 1907A4 80261EC4 00000000 */  nop   
/* 1907A8 80261EC8 468010A0 */  cvt.s.w $f2, $f2
/* 1907AC 80261ECC 46020000 */  add.s $f0, $f0, $f2
/* 1907B0 80261ED0 44802000 */  mtc1  $zero, $f4
/* 1907B4 80261ED4 E480000C */  swc1  $f0, 0xc($a0)
/* 1907B8 80261ED8 C4800008 */  lwc1  $f0, 8($a0)
/* 1907BC 80261EDC 3C013FF8 */  lui   $at, 0x3ff8
/* 1907C0 80261EE0 44811800 */  mtc1  $at, $f3
/* 1907C4 80261EE4 44801000 */  mtc1  $zero, $f2
/* 1907C8 80261EE8 46000021 */  cvt.d.s $f0, $f0
/* 1907CC 80261EEC 46220000 */  add.d $f0, $f0, $f2
/* 1907D0 80261EF0 C482000C */  lwc1  $f2, 0xc($a0)
/* 1907D4 80261EF4 4604103C */  c.lt.s $f2, $f4
/* 1907D8 80261EF8 46200020 */  cvt.s.d $f0, $f0
/* 1907DC 80261EFC 45000027 */  bc1f  .L80261F9C
/* 1907E0 80261F00 E4800008 */   swc1  $f0, 8($a0)
/* 1907E4 80261F04 24020004 */  addiu $v0, $zero, 4
/* 1907E8 80261F08 E484000C */  swc1  $f4, 0xc($a0)
/* 1907EC 80261F0C AE220070 */  sw    $v0, 0x70($s1)
/* 1907F0 80261F10 24020002 */  addiu $v0, $zero, 2
/* 1907F4 80261F14 080987E7 */  j     .L80261F9C
/* 1907F8 80261F18 AE220074 */   sw    $v0, 0x74($s1)

.L80261F1C:
/* 1907FC 80261F1C 8E220070 */  lw    $v0, 0x70($s1)
/* 190800 80261F20 2442FFFF */  addiu $v0, $v0, -1
/* 190804 80261F24 AE220070 */  sw    $v0, 0x70($s1)
/* 190808 80261F28 C480000C */  lwc1  $f0, 0xc($a0)
/* 19080C 80261F2C 44821000 */  mtc1  $v0, $f2
/* 190810 80261F30 00000000 */  nop   
/* 190814 80261F34 468010A0 */  cvt.s.w $f2, $f2
/* 190818 80261F38 46020000 */  add.s $f0, $f0, $f2
/* 19081C 80261F3C 44802000 */  mtc1  $zero, $f4
/* 190820 80261F40 E480000C */  swc1  $f0, 0xc($a0)
/* 190824 80261F44 C4800008 */  lwc1  $f0, 8($a0)
/* 190828 80261F48 3C01802A */  lui   $at, 0x802a
/* 19082C 80261F4C D422D598 */  ldc1  $f2, -0x2a68($at)
/* 190830 80261F50 46000021 */  cvt.d.s $f0, $f0
/* 190834 80261F54 46220000 */  add.d $f0, $f0, $f2
/* 190838 80261F58 C482000C */  lwc1  $f2, 0xc($a0)
/* 19083C 80261F5C 4604103C */  c.lt.s $f2, $f4
/* 190840 80261F60 46200020 */  cvt.s.d $f0, $f0
/* 190844 80261F64 4500000D */  bc1f  .L80261F9C
/* 190848 80261F68 E4800008 */   swc1  $f0, 8($a0)
/* 19084C 80261F6C 24020003 */  addiu $v0, $zero, 3
/* 190850 80261F70 E484000C */  swc1  $f4, 0xc($a0)
/* 190854 80261F74 080987E7 */  j     .L80261F9C
/* 190858 80261F78 AE220074 */   sw    $v0, 0x74($s1)

.L80261F7C:
/* 19085C 80261F7C 24020002 */  addiu $v0, $zero, 2
/* 190860 80261F80 3C04802A */  lui   $a0, 0x802a
/* 190864 80261F84 2484FBB0 */  addiu $a0, $a0, -0x450
/* 190868 80261F88 24030014 */  addiu $v1, $zero, 0x14
/* 19086C 80261F8C AC830000 */  sw    $v1, ($a0)
/* 190870 80261F90 AC830004 */  sw    $v1, 4($a0)
/* 190874 80261F94 080987E8 */  j     .L80261FA0
/* 190878 80261F98 AC830008 */   sw    $v1, 8($a0)

.L80261F9C:
.L80261F9C:
/* 19087C 80261F9C 0000102D */  daddu $v0, $zero, $zero
.L80261FA0:
/* 190880 80261FA0 8FBF0018 */  lw    $ra, 0x18($sp)
/* 190884 80261FA4 8FB10014 */  lw    $s1, 0x14($sp)
/* 190888 80261FA8 8FB00010 */  lw    $s0, 0x10($sp)
/* 19088C 80261FAC 03E00008 */  jr    $ra
/* 190890 80261FB0 27BD0020 */   addiu $sp, $sp, 0x20

/* 190894 80261FB4 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 190898 80261FB8 AFB20018 */  sw    $s2, 0x18($sp)
/* 19089C 80261FBC 0080902D */  daddu $s2, $a0, $zero
/* 1908A0 80261FC0 AFBF001C */  sw    $ra, 0x1c($sp)
/* 1908A4 80261FC4 AFB10014 */  sw    $s1, 0x14($sp)
/* 1908A8 80261FC8 AFB00010 */  sw    $s0, 0x10($sp)
/* 1908AC 80261FCC F7B40020 */  sdc1  $f20, 0x20($sp)
/* 1908B0 80261FD0 8E4400AC */  lw    $a0, 0xac($s2)
/* 1908B4 80261FD4 0C04C3D6 */  jal   get_item_entity
/* 1908B8 80261FD8 00A0802D */   daddu $s0, $a1, $zero
/* 1908BC 80261FDC 3C04800E */  lui   $a0, 0x800e
/* 1908C0 80261FE0 8C84C148 */  lw    $a0, -0x3eb8($a0)
/* 1908C4 80261FE4 12000004 */  beqz  $s0, .L80261FF8
/* 1908C8 80261FE8 0040882D */   daddu $s1, $v0, $zero
/* 1908CC 80261FEC 2402000A */  addiu $v0, $zero, 0xa
/* 1908D0 80261FF0 AE400070 */  sw    $zero, 0x70($s2)
/* 1908D4 80261FF4 AE420074 */  sw    $v0, 0x74($s2)
.L80261FF8:
/* 1908D8 80261FF8 8E430070 */  lw    $v1, 0x70($s2)
/* 1908DC 80261FFC 10600005 */  beqz  $v1, .L80262014
/* 1908E0 80262000 24020001 */   addiu $v0, $zero, 1
/* 1908E4 80262004 10620032 */  beq   $v1, $v0, .L802620D0
/* 1908E8 80262008 0000102D */   daddu $v0, $zero, $zero
/* 1908EC 8026200C 08098837 */  j     .L802620DC
/* 1908F0 80262010 00000000 */   nop   

.L80262014:
/* 1908F4 80262014 C4880144 */  lwc1  $f8, 0x144($a0)
/* 1908F8 80262018 C62A0008 */  lwc1  $f10, 8($s1)
/* 1908FC 8026201C C4840148 */  lwc1  $f4, 0x148($a0)
/* 190900 80262020 460A4201 */  sub.s $f8, $f8, $f10
/* 190904 80262024 3C014140 */  lui   $at, 0x4140
/* 190908 80262028 44816000 */  mtc1  $at, $f12
/* 19090C 8026202C C482014C */  lwc1  $f2, 0x14c($a0)
/* 190910 80262030 460C2100 */  add.s $f4, $f4, $f12
/* 190914 80262034 3C0140A0 */  lui   $at, 0x40a0
/* 190918 80262038 4481A000 */  mtc1  $at, $f20
/* 19091C 8026203C 00000000 */  nop   
/* 190920 80262040 46141081 */  sub.s $f2, $f2, $f20
/* 190924 80262044 C620000C */  lwc1  $f0, 0xc($s1)
/* 190928 80262048 46002101 */  sub.s $f4, $f4, $f0
/* 19092C 8026204C C6460074 */  lwc1  $f6, 0x74($s2)
/* 190930 80262050 468031A0 */  cvt.s.w $f6, $f6
/* 190934 80262054 46064203 */  div.s $f8, $f8, $f6
/* 190938 80262058 46085280 */  add.s $f10, $f10, $f8
/* 19093C 8026205C C6200010 */  lwc1  $f0, 0x10($s1)
/* 190940 80262060 46001081 */  sub.s $f2, $f2, $f0
/* 190944 80262064 C628000C */  lwc1  $f8, 0xc($s1)
/* 190948 80262068 46062103 */  div.s $f4, $f4, $f6
/* 19094C 8026206C 46044200 */  add.s $f8, $f8, $f4
/* 190950 80262070 46061083 */  div.s $f2, $f2, $f6
/* 190954 80262074 46020000 */  add.s $f0, $f0, $f2
/* 190958 80262078 E62A0008 */  swc1  $f10, 8($s1)
/* 19095C 8026207C E628000C */  swc1  $f8, 0xc($s1)
/* 190960 80262080 E6200010 */  swc1  $f0, 0x10($s1)
/* 190964 80262084 C4800148 */  lwc1  $f0, 0x148($a0)
/* 190968 80262088 460C0000 */  add.s $f0, $f0, $f12
/* 19096C 8026208C 46004386 */  mov.s $f14, $f8
/* 190970 80262090 8C860144 */  lw    $a2, 0x144($a0)
/* 190974 80262094 44070000 */  mfc1  $a3, $f0
/* 190978 80262098 0C00A7B5 */  jal   dist2D
/* 19097C 8026209C 46005306 */   mov.s $f12, $f10
/* 190980 802620A0 C622000C */  lwc1  $f2, 0xc($s1)
/* 190984 802620A4 46140003 */  div.s $f0, $f0, $f20
/* 190988 802620A8 46001080 */  add.s $f2, $f2, $f0
/* 19098C 802620AC E622000C */  swc1  $f2, 0xc($s1)
/* 190990 802620B0 8E430074 */  lw    $v1, 0x74($s2)
/* 190994 802620B4 24020001 */  addiu $v0, $zero, 1
/* 190998 802620B8 50620001 */  beql  $v1, $v0, .L802620C0
/* 19099C 802620BC AE430070 */   sw    $v1, 0x70($s2)
.L802620C0:
/* 1909A0 802620C0 8E420074 */  lw    $v0, 0x74($s2)
/* 1909A4 802620C4 2442FFFF */  addiu $v0, $v0, -1
/* 1909A8 802620C8 08098836 */  j     .L802620D8
/* 1909AC 802620CC AE420074 */   sw    $v0, 0x74($s2)

.L802620D0:
/* 1909B0 802620D0 08098837 */  j     .L802620DC
/* 1909B4 802620D4 24020002 */   addiu $v0, $zero, 2

.L802620D8:
/* 1909B8 802620D8 0000102D */  daddu $v0, $zero, $zero
.L802620DC:
/* 1909BC 802620DC 8FBF001C */  lw    $ra, 0x1c($sp)
/* 1909C0 802620E0 8FB20018 */  lw    $s2, 0x18($sp)
/* 1909C4 802620E4 8FB10014 */  lw    $s1, 0x14($sp)
/* 1909C8 802620E8 8FB00010 */  lw    $s0, 0x10($sp)
/* 1909CC 802620EC D7B40020 */  ldc1  $f20, 0x20($sp)
/* 1909D0 802620F0 03E00008 */  jr    $ra
/* 1909D4 802620F4 27BD0028 */   addiu $sp, $sp, 0x28

/* 1909D8 802620F8 8C8200BC */  lw    $v0, 0xbc($a0)
/* 1909DC 802620FC 3C03802A */  lui   $v1, 0x802a
/* 1909E0 80262100 2463FBB0 */  addiu $v1, $v1, -0x450
/* 1909E4 80262104 00021080 */  sll   $v0, $v0, 2
/* 1909E8 80262108 00431821 */  addu  $v1, $v0, $v1
/* 1909EC 8026210C 8C620000 */  lw    $v0, ($v1)
/* 1909F0 80262110 14400003 */  bnez  $v0, .L80262120
/* 1909F4 80262114 2442FFFF */   addiu $v0, $v0, -1
/* 1909F8 80262118 03E00008 */  jr    $ra
/* 1909FC 8026211C 24020002 */   addiu $v0, $zero, 2

.L80262120:
/* 190A00 80262120 AC620000 */  sw    $v0, ($v1)
/* 190A04 80262124 03E00008 */  jr    $ra
/* 190A08 80262128 0000102D */   daddu $v0, $zero, $zero

/* 190A0C 8026212C 00000000 */  nop   
/* 190A10 80262130 27BDFFB8 */  addiu $sp, $sp, -0x48
/* 190A14 80262134 AFB20038 */  sw    $s2, 0x38($sp)
/* 190A18 80262138 0000902D */  daddu $s2, $zero, $zero
/* 190A1C 8026213C AFB00030 */  sw    $s0, 0x30($sp)
/* 190A20 80262140 0240802D */  daddu $s0, $s2, $zero
/* 190A24 80262144 0240202D */  daddu $a0, $s2, $zero
/* 190A28 80262148 27A2002C */  addiu $v0, $sp, 0x2c
/* 190A2C 8026214C C7A20058 */  lwc1  $f2, 0x58($sp)
/* 190A30 80262150 27A50020 */  addiu $a1, $sp, 0x20
/* 190A34 80262154 AFA60028 */  sw    $a2, 0x28($sp)
/* 190A38 80262158 27A60024 */  addiu $a2, $sp, 0x24
/* 190A3C 8026215C F7B40040 */  sdc1  $f20, 0x40($sp)
/* 190A40 80262160 4487A000 */  mtc1  $a3, $f20
/* 190A44 80262164 3C0142B4 */  lui   $at, 0x42b4
/* 190A48 80262168 44810000 */  mtc1  $at, $f0
/* 190A4C 8026216C 27A70028 */  addiu $a3, $sp, 0x28
/* 190A50 80262170 AFBF003C */  sw    $ra, 0x3c($sp)
/* 190A54 80262174 AFB10034 */  sw    $s1, 0x34($sp)
/* 190A58 80262178 E7AC0020 */  swc1  $f12, 0x20($sp)
/* 190A5C 8026217C E7AE0024 */  swc1  $f14, 0x24($sp)
/* 190A60 80262180 E7B4002C */  swc1  $f20, 0x2c($sp)
/* 190A64 80262184 AFA20010 */  sw    $v0, 0x10($sp)
/* 190A68 80262188 E7A00014 */  swc1  $f0, 0x14($sp)
/* 190A6C 8026218C 0C0371DE */  jal   func_800DC778
/* 190A70 80262190 E7A20018 */   swc1  $f2, 0x18($sp)
/* 190A74 80262194 10400013 */  beqz  $v0, .L802621E4
/* 190A78 80262198 24020001 */   addiu $v0, $zero, 1
/* 190A7C 8026219C C7A0002C */  lwc1  $f0, 0x2c($sp)
/* 190A80 802621A0 4614003E */  c.le.s $f0, $f20
/* 190A84 802621A4 00000000 */  nop   
/* 190A88 802621A8 4500000E */  bc1f  .L802621E4
/* 190A8C 802621AC 00000000 */   nop   
/* 190A90 802621B0 3C118011 */  lui   $s1, 0x8011
/* 190A94 802621B4 2631C98C */  addiu $s1, $s1, -0x3674
/* 190A98 802621B8 0C016F6A */  jal   get_collider_type_by_id
/* 190A9C 802621BC 92240003 */   lbu   $a0, 3($s1)
/* 190AA0 802621C0 3C048011 */  lui   $a0, 0x8011
/* 190AA4 802621C4 9084C96B */  lbu   $a0, -0x3695($a0)
/* 190AA8 802621C8 0C016F6A */  jal   get_collider_type_by_id
/* 190AAC 802621CC 0040802D */   daddu $s0, $v0, $zero
/* 190AB0 802621D0 92230003 */  lbu   $v1, 3($s1)
/* 190AB4 802621D4 02028024 */  and   $s0, $s0, $v0
/* 190AB8 802621D8 56030001 */  bnel  $s0, $v1, .L802621E0
/* 190ABC 802621DC 0240802D */   daddu $s0, $s2, $zero
.L802621E0:
/* 190AC0 802621E0 24020001 */  addiu $v0, $zero, 1
.L802621E4:
/* 190AC4 802621E4 52020001 */  beql  $s0, $v0, .L802621EC
/* 190AC8 802621E8 0040902D */   daddu $s2, $v0, $zero
.L802621EC:
/* 190ACC 802621EC 0240102D */  daddu $v0, $s2, $zero
/* 190AD0 802621F0 8FBF003C */  lw    $ra, 0x3c($sp)
/* 190AD4 802621F4 8FB20038 */  lw    $s2, 0x38($sp)
/* 190AD8 802621F8 8FB10034 */  lw    $s1, 0x34($sp)
/* 190ADC 802621FC 8FB00030 */  lw    $s0, 0x30($sp)
/* 190AE0 80262200 D7B40040 */  ldc1  $f20, 0x40($sp)
/* 190AE4 80262204 03E00008 */  jr    $ra
/* 190AE8 80262208 27BD0048 */   addiu $sp, $sp, 0x48

/* 190AEC 8026220C 3C0142C8 */  lui   $at, 0x42c8
/* 190AF0 80262210 44810000 */  mtc1  $at, $f0
/* 190AF4 80262214 00000000 */  nop   
/* 190AF8 80262218 460E003C */  c.lt.s $f0, $f14
/* 190AFC 8026221C 00000000 */  nop   
/* 190B00 80262220 45000002 */  bc1f  .L8026222C
/* 190B04 80262224 0000102D */   daddu $v0, $zero, $zero
/* 190B08 80262228 2402001C */  addiu $v0, $zero, 0x1c
.L8026222C:
/* 190B0C 8026222C 03E00008 */  jr    $ra
/* 190B10 80262230 00000000 */   nop   

/* 190B14 80262234 00000000 */  nop   
/* 190B18 80262238 00000000 */  nop   
/* 190B1C 8026223C 00000000 */  nop   
