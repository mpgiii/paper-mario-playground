.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800EA6CC
/* 083B7C 800EA6CC 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 083B80 800EA6D0 AFB3001C */  sw    $s3, 0x1c($sp)
/* 083B84 800EA6D4 3C138011 */  lui   $s3, 0x8011
/* 083B88 800EA6D8 2673F290 */  addiu $s3, $s3, -0xd70
/* 083B8C 800EA6DC 3C058011 */  lui   $a1, 0x8011
/* 083B90 800EA6E0 24A5EBB0 */  addiu $a1, $a1, -0x1450
/* 083B94 800EA6E4 AFBF0020 */  sw    $ra, 0x20($sp)
/* 083B98 800EA6E8 AFB20018 */  sw    $s2, 0x18($sp)
/* 083B9C 800EA6EC AFB10014 */  sw    $s1, 0x14($sp)
/* 083BA0 800EA6F0 AFB00010 */  sw    $s0, 0x10($sp)
/* 083BA4 800EA6F4 80A20014 */  lb    $v0, 0x14($a1)
/* 083BA8 800EA6F8 3C068011 */  lui   $a2, 0x8011
/* 083BAC 800EA6FC 24C6EFC8 */  addiu $a2, $a2, -0x1038
/* 083BB0 800EA700 5440001F */  bnezl $v0, .L800EA780
/* 083BB4 800EA704 A4A00004 */   sh    $zero, 4($a1)
/* 083BB8 800EA708 3C038007 */  lui   $v1, 0x8007
/* 083BBC 800EA70C 8C63419C */  lw    $v1, 0x419c($v1)
/* 083BC0 800EA710 80620081 */  lb    $v0, 0x81($v1)
/* 083BC4 800EA714 00621021 */  addu  $v0, $v1, $v0
/* 083BC8 800EA718 90420040 */  lbu   $v0, 0x40($v0)
/* 083BCC 800EA71C 00021600 */  sll   $v0, $v0, 0x18
/* 083BD0 800EA720 00021603 */  sra   $v0, $v0, 0x18
/* 083BD4 800EA724 A4A20004 */  sh    $v0, 4($a1)
/* 083BD8 800EA728 80620081 */  lb    $v0, 0x81($v1)
/* 083BDC 800EA72C 00621021 */  addu  $v0, $v1, $v0
/* 083BE0 800EA730 90420044 */  lbu   $v0, 0x44($v0)
/* 083BE4 800EA734 00021600 */  sll   $v0, $v0, 0x18
/* 083BE8 800EA738 00021603 */  sra   $v0, $v0, 0x18
/* 083BEC 800EA73C A4A20006 */  sh    $v0, 6($a1)
/* 083BF0 800EA740 80620081 */  lb    $v0, 0x81($v1)
/* 083BF4 800EA744 00021080 */  sll   $v0, $v0, 2
/* 083BF8 800EA748 00621021 */  addu  $v0, $v1, $v0
/* 083BFC 800EA74C 8C420000 */  lw    $v0, ($v0)
/* 083C00 800EA750 ACA20008 */  sw    $v0, 8($a1)
/* 083C04 800EA754 80620081 */  lb    $v0, 0x81($v1)
/* 083C08 800EA758 00021080 */  sll   $v0, $v0, 2
/* 083C0C 800EA75C 00621021 */  addu  $v0, $v1, $v0
/* 083C10 800EA760 8C420010 */  lw    $v0, 0x10($v0)
/* 083C14 800EA764 ACA2000C */  sw    $v0, 0xc($a1)
/* 083C18 800EA768 80620081 */  lb    $v0, 0x81($v1)
/* 083C1C 800EA76C 00021080 */  sll   $v0, $v0, 2
/* 083C20 800EA770 00621821 */  addu  $v1, $v1, $v0
/* 083C24 800EA774 8C620020 */  lw    $v0, 0x20($v1)
/* 083C28 800EA778 0803A9E4 */  j     .L800EA790
/* 083C2C 800EA77C ACA20010 */   sw    $v0, 0x10($a1)

.L800EA780:
/* 083C30 800EA780 A4A00006 */  sh    $zero, 6($a1)
/* 083C34 800EA784 ACA00008 */  sw    $zero, 8($a1)
/* 083C38 800EA788 ACA0000C */  sw    $zero, 0xc($a1)
/* 083C3C 800EA78C ACA00010 */  sw    $zero, 0x10($a1)
.L800EA790:
/* 083C40 800EA790 8CC40004 */  lw    $a0, 4($a2)
/* 083C44 800EA794 30820004 */  andi  $v0, $a0, 4
/* 083C48 800EA798 1040000A */  beqz  $v0, .L800EA7C4
/* 083C4C 800EA79C 2402FFFB */   addiu $v0, $zero, -5
/* 083C50 800EA7A0 8CA3000C */  lw    $v1, 0xc($a1)
/* 083C54 800EA7A4 00821024 */  and   $v0, $a0, $v0
/* 083C58 800EA7A8 ACC20004 */  sw    $v0, 4($a2)
/* 083C5C 800EA7AC 34634004 */  ori   $v1, $v1, 0x4004
/* 083C60 800EA7B0 ACA3000C */  sw    $v1, 0xc($a1)
/* 083C64 800EA7B4 8CC20004 */  lw    $v0, 4($a2)
/* 083C68 800EA7B8 3C034000 */  lui   $v1, 0x4000
/* 083C6C 800EA7BC 00431025 */  or    $v0, $v0, $v1
/* 083C70 800EA7C0 ACC20004 */  sw    $v0, 4($a2)
.L800EA7C4:
/* 083C74 800EA7C4 3C038011 */  lui   $v1, 0x8011
/* 083C78 800EA7C8 2463CFE8 */  addiu $v1, $v1, -0x3018
/* 083C7C 800EA7CC 8C620000 */  lw    $v0, ($v1)
/* 083C80 800EA7D0 10400006 */  beqz  $v0, .L800EA7EC
/* 083C84 800EA7D4 00000000 */   nop   
/* 083C88 800EA7D8 3C018011 */  lui   $at, 0x8011
/* 083C8C 800EA7DC AC22CD30 */  sw    $v0, -0x32d0($at)
/* 083C90 800EA7E0 3C018011 */  lui   $at, 0x8011
/* 083C94 800EA7E4 AC20CD34 */  sw    $zero, -0x32cc($at)
/* 083C98 800EA7E8 AC600000 */  sw    $zero, ($v1)
.L800EA7EC:
/* 083C9C 800EA7EC 3C038011 */  lui   $v1, 0x8011
/* 083CA0 800EA7F0 8C63CD30 */  lw    $v1, -0x32d0($v1)
/* 083CA4 800EA7F4 2C620002 */  sltiu $v0, $v1, 2
/* 083CA8 800EA7F8 14400009 */  bnez  $v0, .L800EA820
/* 083CAC 800EA7FC 2C62000B */   sltiu $v0, $v1, 0xb
/* 083CB0 800EA800 24020008 */  addiu $v0, $zero, 8
/* 083CB4 800EA804 10620006 */  beq   $v1, $v0, .L800EA820
/* 083CB8 800EA808 2C62000B */   sltiu $v0, $v1, 0xb
/* 083CBC 800EA80C 3C018011 */  lui   $at, 0x8011
/* 083CC0 800EA810 AC20CFC4 */  sw    $zero, -0x303c($at)
/* 083CC4 800EA814 3C038011 */  lui   $v1, 0x8011
/* 083CC8 800EA818 8C63CD30 */  lw    $v1, -0x32d0($v1)
/* 083CCC 800EA81C 2C62000B */  sltiu $v0, $v1, 0xb
.L800EA820:
/* 083CD0 800EA820 1040024A */  beqz  $v0, .L800EB14C
/* 083CD4 800EA824 00031080 */   sll   $v0, $v1, 2
/* 083CD8 800EA828 3C018011 */  lui   $at, 0x8011
/* 083CDC 800EA82C 00220821 */  addu  $at, $at, $v0
/* 083CE0 800EA830 8C22C118 */  lw    $v0, -0x3ee8($at)
/* 083CE4 800EA834 00400008 */  jr    $v0
/* 083CE8 800EA838 00000000 */   nop   
/* 083CEC 800EA83C 24040003 */  addiu $a0, $zero, 3
/* 083CF0 800EA840 3C118011 */  lui   $s1, 0x8011
/* 083CF4 800EA844 2631CD34 */  addiu $s1, $s1, -0x32cc
/* 083CF8 800EA848 3C018011 */  lui   $at, 0x8011
/* 083CFC 800EA84C AC24CFC4 */  sw    $a0, -0x303c($at)
/* 083D00 800EA850 8E230000 */  lw    $v1, ($s1)
/* 083D04 800EA854 24120001 */  addiu $s2, $zero, 1
/* 083D08 800EA858 1072002B */  beq   $v1, $s2, .L800EA908
/* 083D0C 800EA85C 28620002 */   slti  $v0, $v1, 2
/* 083D10 800EA860 50400005 */  beql  $v0, $zero, .L800EA878
/* 083D14 800EA864 24020002 */   addiu $v0, $zero, 2
/* 083D18 800EA868 10600009 */  beqz  $v1, .L800EA890
/* 083D1C 800EA86C 00000000 */   nop   
/* 083D20 800EA870 0803AC53 */  j     .L800EB14C
/* 083D24 800EA874 00000000 */   nop   

.L800EA878:
/* 083D28 800EA878 1062003F */  beq   $v1, $v0, .L800EA978
/* 083D2C 800EA87C 00000000 */   nop   
/* 083D30 800EA880 10640056 */  beq   $v1, $a0, .L800EA9DC
/* 083D34 800EA884 00000000 */   nop   
/* 083D38 800EA888 0803AC53 */  j     .L800EB14C
/* 083D3C 800EA88C 00000000 */   nop   

.L800EA890:
/* 083D40 800EA890 0C03805E */  jal   func_800E0178
/* 083D44 800EA894 00000000 */   nop   
/* 083D48 800EA898 0C05272D */  jal   play_sound
/* 083D4C 800EA89C 2404000D */   addiu $a0, $zero, 0xd
/* 083D50 800EA8A0 3C108011 */  lui   $s0, 0x8011
/* 083D54 800EA8A4 2610CFDC */  addiu $s0, $s0, -0x3024
/* 083D58 800EA8A8 0C0B102B */  jal   kill_script_by_ID
/* 083D5C 800EA8AC 8E040000 */   lw    $a0, ($s0)
/* 083D60 800EA8B0 3C028011 */  lui   $v0, 0x8011
/* 083D64 800EA8B4 8C42CFEC */  lw    $v0, -0x3014($v0)
/* 083D68 800EA8B8 24050014 */  addiu $a1, $zero, 0x14
/* 083D6C 800EA8BC 8C440020 */  lw    $a0, 0x20($v0)
/* 083D70 800EA8C0 0C0B0CF8 */  jal   start_script
/* 083D74 800EA8C4 24060020 */   addiu $a2, $zero, 0x20
/* 083D78 800EA8C8 8C430144 */  lw    $v1, 0x144($v0)
/* 083D7C 800EA8CC 3C018011 */  lui   $at, 0x8011
/* 083D80 800EA8D0 AC22CFD4 */  sw    $v0, -0x302c($at)
/* 083D84 800EA8D4 AE030000 */  sw    $v1, ($s0)
/* 083D88 800EA8D8 3C058011 */  lui   $a1, 0x8011
/* 083D8C 800EA8DC 8CA5C930 */  lw    $a1, -0x36d0($a1)
/* 083D90 800EA8E0 2403000A */  addiu $v1, $zero, 0xa
/* 083D94 800EA8E4 A0430004 */  sb    $v1, 4($v0)
/* 083D98 800EA8E8 8E230000 */  lw    $v1, ($s1)
/* 083D9C 800EA8EC 24040001 */  addiu $a0, $zero, 1
/* 083DA0 800EA8F0 00641821 */  addu  $v1, $v1, $a0
/* 083DA4 800EA8F4 AC45014C */  sw    $a1, 0x14c($v0)
/* 083DA8 800EA8F8 0C009C22 */  jal   func_80027088
/* 083DAC 800EA8FC AE230000 */   sw    $v1, ($s1)
/* 083DB0 800EA900 0803AC53 */  j     .L800EB14C
/* 083DB4 800EA904 00000000 */   nop   

.L800EA908:
/* 083DB8 800EA908 3C048011 */  lui   $a0, 0x8011
/* 083DBC 800EA90C 8C84CFDC */  lw    $a0, -0x3024($a0)
/* 083DC0 800EA910 0C0B1059 */  jal   does_script_exist
/* 083DC4 800EA914 00000000 */   nop   
/* 083DC8 800EA918 1440020C */  bnez  $v0, .L800EB14C
/* 083DCC 800EA91C 00000000 */   nop   
/* 083DD0 800EA920 0C009C22 */  jal   func_80027088
/* 083DD4 800EA924 0000202D */   daddu $a0, $zero, $zero
/* 083DD8 800EA928 0C03A9AA */  jal   func_800EA6A8
/* 083DDC 800EA92C 00000000 */   nop   
/* 083DE0 800EA930 3C028011 */  lui   $v0, 0x8011
/* 083DE4 800EA934 8C42CFE4 */  lw    $v0, -0x301c($v0)
/* 083DE8 800EA938 3C018011 */  lui   $at, 0x8011
/* 083DEC 800EA93C AC22CFD8 */  sw    $v0, -0x3028($at)
/* 083DF0 800EA940 0C03A974 */  jal   func_800EA5D0
/* 083DF4 800EA944 A2620012 */   sb    $v0, 0x12($s3)
/* 083DF8 800EA948 0C05272D */  jal   play_sound
/* 083DFC 800EA94C 2404000E */   addiu $a0, $zero, 0xe
/* 083E00 800EA950 3C028011 */  lui   $v0, 0x8011
/* 083E04 800EA954 8C42CFEC */  lw    $v0, -0x3014($v0)
/* 083E08 800EA958 3C048011 */  lui   $a0, 0x8011
/* 083E0C 800EA95C 8C84C930 */  lw    $a0, -0x36d0($a0)
/* 083E10 800EA960 8C420010 */  lw    $v0, 0x10($v0)
/* 083E14 800EA964 0040F809 */  jalr  $v0
/* 083E18 800EA968 00000000 */  nop   
/* 083E1C 800EA96C 8E220000 */  lw    $v0, ($s1)
/* 083E20 800EA970 24420001 */  addiu $v0, $v0, 1
/* 083E24 800EA974 AE220000 */  sw    $v0, ($s1)
.L800EA978:
/* 083E28 800EA978 3C028011 */  lui   $v0, 0x8011
/* 083E2C 800EA97C 8C42CFEC */  lw    $v0, -0x3014($v0)
/* 083E30 800EA980 24050014 */  addiu $a1, $zero, 0x14
/* 083E34 800EA984 8C440014 */  lw    $a0, 0x14($v0)
/* 083E38 800EA988 0C0B0CF8 */  jal   start_script
/* 083E3C 800EA98C 24060020 */   addiu $a2, $zero, 0x20
/* 083E40 800EA990 8C430144 */  lw    $v1, 0x144($v0)
/* 083E44 800EA994 3C068011 */  lui   $a2, 0x8011
/* 083E48 800EA998 8CC6C930 */  lw    $a2, -0x36d0($a2)
/* 083E4C 800EA99C 3C058011 */  lui   $a1, 0x8011
/* 083E50 800EA9A0 24A5CD34 */  addiu $a1, $a1, -0x32cc
/* 083E54 800EA9A4 3C018011 */  lui   $at, 0x8011
/* 083E58 800EA9A8 AC22CFD4 */  sw    $v0, -0x302c($at)
/* 083E5C 800EA9AC 3C018011 */  lui   $at, 0x8011
/* 083E60 800EA9B0 AC23CFDC */  sw    $v1, -0x3024($at)
/* 083E64 800EA9B4 2403000A */  addiu $v1, $zero, 0xa
/* 083E68 800EA9B8 A0430004 */  sb    $v1, 4($v0)
/* 083E6C 800EA9BC 8CA30000 */  lw    $v1, ($a1)
/* 083E70 800EA9C0 24040001 */  addiu $a0, $zero, 1
/* 083E74 800EA9C4 AC46014C */  sw    $a2, 0x14c($v0)
/* 083E78 800EA9C8 00641821 */  addu  $v1, $v1, $a0
/* 083E7C 800EA9CC 0C009C22 */  jal   func_80027088
/* 083E80 800EA9D0 ACA30000 */   sw    $v1, ($a1)
/* 083E84 800EA9D4 0803AC53 */  j     .L800EB14C
/* 083E88 800EA9D8 00000000 */   nop   

.L800EA9DC:
/* 083E8C 800EA9DC 3C108011 */  lui   $s0, 0x8011
/* 083E90 800EA9E0 2610CFDC */  addiu $s0, $s0, -0x3024
/* 083E94 800EA9E4 0C0B1059 */  jal   does_script_exist
/* 083E98 800EA9E8 8E040000 */   lw    $a0, ($s0)
/* 083E9C 800EA9EC 144001D7 */  bnez  $v0, .L800EB14C
/* 083EA0 800EA9F0 24050014 */   addiu $a1, $zero, 0x14
/* 083EA4 800EA9F4 3C028011 */  lui   $v0, 0x8011
/* 083EA8 800EA9F8 8C42CFEC */  lw    $v0, -0x3014($v0)
/* 083EAC 800EA9FC 8C440018 */  lw    $a0, 0x18($v0)
/* 083EB0 800EAA00 0C0B0CF8 */  jal   start_script
/* 083EB4 800EAA04 24060020 */   addiu $a2, $zero, 0x20
/* 083EB8 800EAA08 3C038011 */  lui   $v1, 0x8011
/* 083EBC 800EAA0C 8C63C930 */  lw    $v1, -0x36d0($v1)
/* 083EC0 800EAA10 8C440144 */  lw    $a0, 0x144($v0)
/* 083EC4 800EAA14 3C018011 */  lui   $at, 0x8011
/* 083EC8 800EAA18 AC22CFD4 */  sw    $v0, -0x302c($at)
/* 083ECC 800EAA1C AC43014C */  sw    $v1, 0x14c($v0)
/* 083ED0 800EAA20 2403000A */  addiu $v1, $zero, 0xa
/* 083ED4 800EAA24 AE040000 */  sw    $a0, ($s0)
/* 083ED8 800EAA28 A0430004 */  sb    $v1, 4($v0)
/* 083EDC 800EAA2C 3C018011 */  lui   $at, 0x8011
/* 083EE0 800EAA30 0C038069 */  jal   func_800E01A4
/* 083EE4 800EAA34 AC32CD30 */   sw    $s2, -0x32d0($at)
/* 083EE8 800EAA38 0C009C22 */  jal   func_80027088
/* 083EEC 800EAA3C 0000202D */   daddu $a0, $zero, $zero
/* 083EF0 800EAA40 0803AC53 */  j     .L800EB14C
/* 083EF4 800EAA44 00000000 */   nop   

/* 083EF8 800EAA48 24040003 */  addiu $a0, $zero, 3
/* 083EFC 800EAA4C 3C108011 */  lui   $s0, 0x8011
/* 083F00 800EAA50 2610CD34 */  addiu $s0, $s0, -0x32cc
/* 083F04 800EAA54 3C018011 */  lui   $at, 0x8011
/* 083F08 800EAA58 AC24CFC4 */  sw    $a0, -0x303c($at)
/* 083F0C 800EAA5C 8E030000 */  lw    $v1, ($s0)
/* 083F10 800EAA60 24110001 */  addiu $s1, $zero, 1
/* 083F14 800EAA64 10710014 */  beq   $v1, $s1, .L800EAAB8
/* 083F18 800EAA68 28620002 */   slti  $v0, $v1, 2
/* 083F1C 800EAA6C 50400005 */  beql  $v0, $zero, .L800EAA84
/* 083F20 800EAA70 24020002 */   addiu $v0, $zero, 2
/* 083F24 800EAA74 10600009 */  beqz  $v1, .L800EAA9C
/* 083F28 800EAA78 00000000 */   nop   
/* 083F2C 800EAA7C 0803AC53 */  j     .L800EB14C
/* 083F30 800EAA80 00000000 */   nop   

.L800EAA84:
/* 083F34 800EAA84 10620170 */  beq   $v1, $v0, .L800EB048
/* 083F38 800EAA88 00000000 */   nop   
/* 083F3C 800EAA8C 1064002E */  beq   $v1, $a0, .L800EAB48
/* 083F40 800EAA90 24050014 */   addiu $a1, $zero, 0x14
/* 083F44 800EAA94 0803AC53 */  j     .L800EB14C
/* 083F48 800EAA98 00000000 */   nop   

.L800EAA9C:
/* 083F4C 800EAA9C 3C048011 */  lui   $a0, 0x8011
/* 083F50 800EAAA0 8C84CFDC */  lw    $a0, -0x3024($a0)
/* 083F54 800EAAA4 0C0B102B */  jal   kill_script_by_ID
/* 083F58 800EAAA8 00000000 */   nop   
/* 083F5C 800EAAAC 8E020000 */  lw    $v0, ($s0)
/* 083F60 800EAAB0 24420001 */  addiu $v0, $v0, 1
/* 083F64 800EAAB4 AE020000 */  sw    $v0, ($s0)
.L800EAAB8:
/* 083F68 800EAAB8 0C03A9AA */  jal   func_800EA6A8
/* 083F6C 800EAABC 00000000 */   nop   
/* 083F70 800EAAC0 3C028011 */  lui   $v0, 0x8011
/* 083F74 800EAAC4 8C42CFE4 */  lw    $v0, -0x301c($v0)
/* 083F78 800EAAC8 3C018011 */  lui   $at, 0x8011
/* 083F7C 800EAACC AC22CFD8 */  sw    $v0, -0x3028($at)
/* 083F80 800EAAD0 0C03A974 */  jal   func_800EA5D0
/* 083F84 800EAAD4 A2620012 */   sb    $v0, 0x12($s3)
/* 083F88 800EAAD8 3C048011 */  lui   $a0, 0x8011
/* 083F8C 800EAADC 8C84C930 */  lw    $a0, -0x36d0($a0)
/* 083F90 800EAAE0 3C018010 */  lui   $at, 0x8010
/* 083F94 800EAAE4 C422833C */  lwc1  $f2, -0x7cc4($at)
/* 083F98 800EAAE8 3C018010 */  lui   $at, 0x8010
/* 083F9C 800EAAEC C4248340 */  lwc1  $f4, -0x7cc0($at)
/* 083FA0 800EAAF0 3C018010 */  lui   $at, 0x8010
/* 083FA4 800EAAF4 C4268344 */  lwc1  $f6, -0x7cbc($at)
/* 083FA8 800EAAF8 3C013F80 */  lui   $at, 0x3f80
/* 083FAC 800EAAFC 44810000 */  mtc1  $at, $f0
/* 083FB0 800EAB00 3C028011 */  lui   $v0, 0x8011
/* 083FB4 800EAB04 8C42CFEC */  lw    $v0, -0x3014($v0)
/* 083FB8 800EAB08 E4820038 */  swc1  $f2, 0x38($a0)
/* 083FBC 800EAB0C E484003C */  swc1  $f4, 0x3c($a0)
/* 083FC0 800EAB10 E4860040 */  swc1  $f6, 0x40($a0)
/* 083FC4 800EAB14 AC80001C */  sw    $zero, 0x1c($a0)
/* 083FC8 800EAB18 E4800054 */  swc1  $f0, 0x54($a0)
/* 083FCC 800EAB1C E4800058 */  swc1  $f0, 0x58($a0)
/* 083FD0 800EAB20 E480005C */  swc1  $f0, 0x5c($a0)
/* 083FD4 800EAB24 8C420010 */  lw    $v0, 0x10($v0)
/* 083FD8 800EAB28 0040F809 */  jalr  $v0
/* 083FDC 800EAB2C 00000000 */  nop   
/* 083FE0 800EAB30 3C038011 */  lui   $v1, 0x8011
/* 083FE4 800EAB34 2463CD34 */  addiu $v1, $v1, -0x32cc
/* 083FE8 800EAB38 8C620000 */  lw    $v0, ($v1)
/* 083FEC 800EAB3C 24420001 */  addiu $v0, $v0, 1
/* 083FF0 800EAB40 0803AC14 */  j     .L800EB050
/* 083FF4 800EAB44 AC620000 */   sw    $v0, ($v1)

.L800EAB48:
/* 083FF8 800EAB48 3C028011 */  lui   $v0, 0x8011
/* 083FFC 800EAB4C 8C42CFEC */  lw    $v0, -0x3014($v0)
/* 084000 800EAB50 8C440018 */  lw    $a0, 0x18($v0)
/* 084004 800EAB54 0C0B0CF8 */  jal   start_script
/* 084008 800EAB58 24060020 */   addiu $a2, $zero, 0x20
/* 08400C 800EAB5C 3C038011 */  lui   $v1, 0x8011
/* 084010 800EAB60 8C63C930 */  lw    $v1, -0x36d0($v1)
/* 084014 800EAB64 8C440144 */  lw    $a0, 0x144($v0)
/* 084018 800EAB68 3C018011 */  lui   $at, 0x8011
/* 08401C 800EAB6C AC22CFD4 */  sw    $v0, -0x302c($at)
/* 084020 800EAB70 AC43014C */  sw    $v1, 0x14c($v0)
/* 084024 800EAB74 2403000A */  addiu $v1, $zero, 0xa
/* 084028 800EAB78 3C018011 */  lui   $at, 0x8011
/* 08402C 800EAB7C AC24CFDC */  sw    $a0, -0x3024($at)
/* 084030 800EAB80 A0430004 */  sb    $v1, 4($v0)
/* 084034 800EAB84 3C018011 */  lui   $at, 0x8011
/* 084038 800EAB88 0803AC53 */  j     .L800EB14C
/* 08403C 800EAB8C AC31CD30 */   sw    $s1, -0x32d0($at)

/* 084040 800EAB90 3C118011 */  lui   $s1, 0x8011
/* 084044 800EAB94 2631CD34 */  addiu $s1, $s1, -0x32cc
/* 084048 800EAB98 8E300000 */  lw    $s0, ($s1)
/* 08404C 800EAB9C 12000005 */  beqz  $s0, .L800EABB4
/* 084050 800EABA0 24020001 */   addiu $v0, $zero, 1
/* 084054 800EABA4 12020010 */  beq   $s0, $v0, .L800EABE8
/* 084058 800EABA8 00000000 */   nop   
/* 08405C 800EABAC 0803AC53 */  j     .L800EB14C
/* 084060 800EABB0 00000000 */   nop   

.L800EABB4:
/* 084064 800EABB4 0C03805E */  jal   func_800E0178
/* 084068 800EABB8 00000000 */   nop   
/* 08406C 800EABBC 0C05272D */  jal   play_sound
/* 084070 800EABC0 2404000D */   addiu $a0, $zero, 0xd
/* 084074 800EABC4 3C108011 */  lui   $s0, 0x8011
/* 084078 800EABC8 2610CFDC */  addiu $s0, $s0, -0x3024
/* 08407C 800EABCC 0C0B102B */  jal   kill_script_by_ID
/* 084080 800EABD0 8E040000 */   lw    $a0, ($s0)
/* 084084 800EABD4 3C028011 */  lui   $v0, 0x8011
/* 084088 800EABD8 8C42CFEC */  lw    $v0, -0x3014($v0)
/* 08408C 800EABDC 8C440020 */  lw    $a0, 0x20($v0)
/* 084090 800EABE0 0803ABCE */  j     .L800EAF38
/* 084094 800EABE4 24050014 */   addiu $a1, $zero, 0x14

.L800EABE8:
/* 084098 800EABE8 3C048011 */  lui   $a0, 0x8011
/* 08409C 800EABEC 8C84CFDC */  lw    $a0, -0x3024($a0)
/* 0840A0 800EABF0 0C0B1059 */  jal   does_script_exist
/* 0840A4 800EABF4 00000000 */   nop   
/* 0840A8 800EABF8 14400154 */  bnez  $v0, .L800EB14C
/* 0840AC 800EABFC 00000000 */   nop   
/* 0840B0 800EAC00 0C03A9AA */  jal   func_800EA6A8
/* 0840B4 800EAC04 00000000 */   nop   
/* 0840B8 800EAC08 3C028011 */  lui   $v0, 0x8011
/* 0840BC 800EAC0C 8C42CFE4 */  lw    $v0, -0x301c($v0)
/* 0840C0 800EAC10 3C018011 */  lui   $at, 0x8011
/* 0840C4 800EAC14 AC30CD30 */  sw    $s0, -0x32d0($at)
/* 0840C8 800EAC18 3C018011 */  lui   $at, 0x8011
/* 0840CC 800EAC1C AC22CFD8 */  sw    $v0, -0x3028($at)
/* 0840D0 800EAC20 0C038069 */  jal   func_800E01A4
/* 0840D4 800EAC24 A2620012 */   sb    $v0, 0x12($s3)
/* 0840D8 800EAC28 0803AC53 */  j     .L800EB14C
/* 0840DC 800EAC2C 00000000 */   nop   

/* 0840E0 800EAC30 3C028011 */  lui   $v0, 0x8011
/* 0840E4 800EAC34 8C42CD34 */  lw    $v0, -0x32cc($v0)
/* 0840E8 800EAC38 14400144 */  bnez  $v0, .L800EB14C
/* 0840EC 800EAC3C 00000000 */   nop   
/* 0840F0 800EAC40 3C048011 */  lui   $a0, 0x8011
/* 0840F4 800EAC44 8C84CFDC */  lw    $a0, -0x3024($a0)
/* 0840F8 800EAC48 0C0B102B */  jal   kill_script_by_ID
/* 0840FC 800EAC4C 00000000 */   nop   
/* 084100 800EAC50 0C03A9AA */  jal   func_800EA6A8
/* 084104 800EAC54 00000000 */   nop   
/* 084108 800EAC58 3C038011 */  lui   $v1, 0x8011
/* 08410C 800EAC5C 8C63CFE4 */  lw    $v1, -0x301c($v1)
/* 084110 800EAC60 24020001 */  addiu $v0, $zero, 1
/* 084114 800EAC64 3C018011 */  lui   $at, 0x8011
/* 084118 800EAC68 AC22CD30 */  sw    $v0, -0x32d0($at)
/* 08411C 800EAC6C 3C018011 */  lui   $at, 0x8011
/* 084120 800EAC70 AC23CFD8 */  sw    $v1, -0x3028($at)
/* 084124 800EAC74 0803AC53 */  j     .L800EB14C
/* 084128 800EAC78 A2630012 */   sb    $v1, 0x12($s3)

/* 08412C 800EAC7C 3C108011 */  lui   $s0, 0x8011
/* 084130 800EAC80 2610CD34 */  addiu $s0, $s0, -0x32cc
/* 084134 800EAC84 8E030000 */  lw    $v1, ($s0)
/* 084138 800EAC88 24110001 */  addiu $s1, $zero, 1
/* 08413C 800EAC8C 1071001D */  beq   $v1, $s1, .L800EAD04
/* 084140 800EAC90 28620002 */   slti  $v0, $v1, 2
/* 084144 800EAC94 50400005 */  beql  $v0, $zero, .L800EACAC
/* 084148 800EAC98 24020002 */   addiu $v0, $zero, 2
/* 08414C 800EAC9C 10600007 */  beqz  $v1, .L800EACBC
/* 084150 800EACA0 00000000 */   nop   
/* 084154 800EACA4 0803AC53 */  j     .L800EB14C
/* 084158 800EACA8 00000000 */   nop   

.L800EACAC:
/* 08415C 800EACAC 1062002B */  beq   $v1, $v0, .L800EAD5C
/* 084160 800EACB0 00000000 */   nop   
/* 084164 800EACB4 0803AC53 */  j     .L800EB14C
/* 084168 800EACB8 00000000 */   nop   

.L800EACBC:
/* 08416C 800EACBC 0C03805E */  jal   func_800E0178
/* 084170 800EACC0 00000000 */   nop   
/* 084174 800EACC4 3C028011 */  lui   $v0, 0x8011
/* 084178 800EACC8 8C42CFE4 */  lw    $v0, -0x301c($v0)
/* 08417C 800EACCC 3C018011 */  lui   $at, 0x8011
/* 084180 800EACD0 AC22CFD8 */  sw    $v0, -0x3028($at)
/* 084184 800EACD4 0C03A974 */  jal   func_800EA5D0
/* 084188 800EACD8 A2620012 */   sb    $v0, 0x12($s3)
/* 08418C 800EACDC 3C028011 */  lui   $v0, 0x8011
/* 084190 800EACE0 8C42CFEC */  lw    $v0, -0x3014($v0)
/* 084194 800EACE4 3C048011 */  lui   $a0, 0x8011
/* 084198 800EACE8 8C84C930 */  lw    $a0, -0x36d0($a0)
/* 08419C 800EACEC 8C420010 */  lw    $v0, 0x10($v0)
/* 0841A0 800EACF0 0040F809 */  jalr  $v0
/* 0841A4 800EACF4 00000000 */  nop   
/* 0841A8 800EACF8 8E020000 */  lw    $v0, ($s0)
/* 0841AC 800EACFC 24420001 */  addiu $v0, $v0, 1
/* 0841B0 800EAD00 AE020000 */  sw    $v0, ($s0)
.L800EAD04:
/* 0841B4 800EAD04 3C028011 */  lui   $v0, 0x8011
/* 0841B8 800EAD08 8C42CFEC */  lw    $v0, -0x3014($v0)
/* 0841BC 800EAD0C 24050014 */  addiu $a1, $zero, 0x14
/* 0841C0 800EAD10 8C440014 */  lw    $a0, 0x14($v0)
/* 0841C4 800EAD14 0C0B0CF8 */  jal   start_script
/* 0841C8 800EAD18 24060020 */   addiu $a2, $zero, 0x20
/* 0841CC 800EAD1C 8C430144 */  lw    $v1, 0x144($v0)
/* 0841D0 800EAD20 3C058011 */  lui   $a1, 0x8011
/* 0841D4 800EAD24 8CA5C930 */  lw    $a1, -0x36d0($a1)
/* 0841D8 800EAD28 3C048011 */  lui   $a0, 0x8011
/* 0841DC 800EAD2C 2484CD34 */  addiu $a0, $a0, -0x32cc
/* 0841E0 800EAD30 3C018011 */  lui   $at, 0x8011
/* 0841E4 800EAD34 AC22CFD4 */  sw    $v0, -0x302c($at)
/* 0841E8 800EAD38 3C018011 */  lui   $at, 0x8011
/* 0841EC 800EAD3C AC23CFDC */  sw    $v1, -0x3024($at)
/* 0841F0 800EAD40 2403000A */  addiu $v1, $zero, 0xa
/* 0841F4 800EAD44 A0430004 */  sb    $v1, 4($v0)
/* 0841F8 800EAD48 8C830000 */  lw    $v1, ($a0)
/* 0841FC 800EAD4C AC45014C */  sw    $a1, 0x14c($v0)
/* 084200 800EAD50 24630001 */  addiu $v1, $v1, 1
/* 084204 800EAD54 0803AC53 */  j     .L800EB14C
/* 084208 800EAD58 AC830000 */   sw    $v1, ($a0)

.L800EAD5C:
/* 08420C 800EAD5C 3C108011 */  lui   $s0, 0x8011
/* 084210 800EAD60 2610CFDC */  addiu $s0, $s0, -0x3024
/* 084214 800EAD64 0C0B1059 */  jal   does_script_exist
/* 084218 800EAD68 8E040000 */   lw    $a0, ($s0)
/* 08421C 800EAD6C 144000F7 */  bnez  $v0, .L800EB14C
/* 084220 800EAD70 24050014 */   addiu $a1, $zero, 0x14
/* 084224 800EAD74 3C028011 */  lui   $v0, 0x8011
/* 084228 800EAD78 8C42CFEC */  lw    $v0, -0x3014($v0)
/* 08422C 800EAD7C 8C440018 */  lw    $a0, 0x18($v0)
/* 084230 800EAD80 0C0B0CF8 */  jal   start_script
/* 084234 800EAD84 24060020 */   addiu $a2, $zero, 0x20
/* 084238 800EAD88 3C038011 */  lui   $v1, 0x8011
/* 08423C 800EAD8C 8C63C930 */  lw    $v1, -0x36d0($v1)
/* 084240 800EAD90 8C440144 */  lw    $a0, 0x144($v0)
/* 084244 800EAD94 3C018011 */  lui   $at, 0x8011
/* 084248 800EAD98 AC22CFD4 */  sw    $v0, -0x302c($at)
/* 08424C 800EAD9C AC43014C */  sw    $v1, 0x14c($v0)
/* 084250 800EADA0 2403000A */  addiu $v1, $zero, 0xa
/* 084254 800EADA4 AE040000 */  sw    $a0, ($s0)
/* 084258 800EADA8 A0430004 */  sb    $v1, 4($v0)
/* 08425C 800EADAC 3C018011 */  lui   $at, 0x8011
/* 084260 800EADB0 0C038069 */  jal   func_800E01A4
/* 084264 800EADB4 AC31CD30 */   sw    $s1, -0x32d0($at)
/* 084268 800EADB8 0803AC53 */  j     .L800EB14C
/* 08426C 800EADBC 00000000 */   nop   

/* 084270 800EADC0 3C118011 */  lui   $s1, 0x8011
/* 084274 800EADC4 2631CD34 */  addiu $s1, $s1, -0x32cc
/* 084278 800EADC8 8E300000 */  lw    $s0, ($s1)
/* 08427C 800EADCC 24020002 */  addiu $v0, $zero, 2
/* 084280 800EADD0 3C018011 */  lui   $at, 0x8011
/* 084284 800EADD4 AC22CFC4 */  sw    $v0, -0x303c($at)
/* 084288 800EADD8 12000005 */  beqz  $s0, .L800EADF0
/* 08428C 800EADDC 24020001 */   addiu $v0, $zero, 1
/* 084290 800EADE0 12020025 */  beq   $s0, $v0, .L800EAE78
/* 084294 800EADE4 24050014 */   addiu $a1, $zero, 0x14
/* 084298 800EADE8 0803AC53 */  j     .L800EB14C
/* 08429C 800EADEC 00000000 */   nop   

.L800EADF0:
/* 0842A0 800EADF0 0C03805E */  jal   func_800E0178
/* 0842A4 800EADF4 00000000 */   nop   
/* 0842A8 800EADF8 3C028011 */  lui   $v0, 0x8011
/* 0842AC 800EADFC 8C42CFE4 */  lw    $v0, -0x301c($v0)
/* 0842B0 800EAE00 3C018011 */  lui   $at, 0x8011
/* 0842B4 800EAE04 AC22CFD8 */  sw    $v0, -0x3028($at)
/* 0842B8 800EAE08 0C03A974 */  jal   func_800EA5D0
/* 0842BC 800EAE0C A2620012 */   sb    $v0, 0x12($s3)
/* 0842C0 800EAE10 3C048011 */  lui   $a0, 0x8011
/* 0842C4 800EAE14 8C84C930 */  lw    $a0, -0x36d0($a0)
/* 0842C8 800EAE18 3C018010 */  lui   $at, 0x8010
/* 0842CC 800EAE1C C422833C */  lwc1  $f2, -0x7cc4($at)
/* 0842D0 800EAE20 3C018010 */  lui   $at, 0x8010
/* 0842D4 800EAE24 C4248340 */  lwc1  $f4, -0x7cc0($at)
/* 0842D8 800EAE28 3C018010 */  lui   $at, 0x8010
/* 0842DC 800EAE2C C4268344 */  lwc1  $f6, -0x7cbc($at)
/* 0842E0 800EAE30 3C013F80 */  lui   $at, 0x3f80
/* 0842E4 800EAE34 44810000 */  mtc1  $at, $f0
/* 0842E8 800EAE38 3C028011 */  lui   $v0, 0x8011
/* 0842EC 800EAE3C 8C42CFEC */  lw    $v0, -0x3014($v0)
/* 0842F0 800EAE40 E4820038 */  swc1  $f2, 0x38($a0)
/* 0842F4 800EAE44 E484003C */  swc1  $f4, 0x3c($a0)
/* 0842F8 800EAE48 E4860040 */  swc1  $f6, 0x40($a0)
/* 0842FC 800EAE4C AC80001C */  sw    $zero, 0x1c($a0)
/* 084300 800EAE50 E4800054 */  swc1  $f0, 0x54($a0)
/* 084304 800EAE54 E4800058 */  swc1  $f0, 0x58($a0)
/* 084308 800EAE58 E480005C */  swc1  $f0, 0x5c($a0)
/* 08430C 800EAE5C 8C420010 */  lw    $v0, 0x10($v0)
/* 084310 800EAE60 0040F809 */  jalr  $v0
/* 084314 800EAE64 00000000 */  nop   
/* 084318 800EAE68 8E220000 */  lw    $v0, ($s1)
/* 08431C 800EAE6C 24420001 */  addiu $v0, $v0, 1
/* 084320 800EAE70 0803AC53 */  j     .L800EB14C
/* 084324 800EAE74 AE220000 */   sw    $v0, ($s1)

.L800EAE78:
/* 084328 800EAE78 3C028011 */  lui   $v0, 0x8011
/* 08432C 800EAE7C 8C42CFEC */  lw    $v0, -0x3014($v0)
/* 084330 800EAE80 8C440018 */  lw    $a0, 0x18($v0)
/* 084334 800EAE84 0C0B0CF8 */  jal   start_script
/* 084338 800EAE88 24060020 */   addiu $a2, $zero, 0x20
/* 08433C 800EAE8C 8C430144 */  lw    $v1, 0x144($v0)
/* 084340 800EAE90 3C058011 */  lui   $a1, 0x8011
/* 084344 800EAE94 24A5C930 */  addiu $a1, $a1, -0x36d0
/* 084348 800EAE98 3C018011 */  lui   $at, 0x8011
/* 08434C 800EAE9C AC22CFD4 */  sw    $v0, -0x302c($at)
/* 084350 800EAEA0 3C018011 */  lui   $at, 0x8011
/* 084354 800EAEA4 AC23CFDC */  sw    $v1, -0x3024($at)
/* 084358 800EAEA8 8CA40000 */  lw    $a0, ($a1)
/* 08435C 800EAEAC 2403000A */  addiu $v1, $zero, 0xa
/* 084360 800EAEB0 A0430004 */  sb    $v1, 4($v0)
/* 084364 800EAEB4 3C038011 */  lui   $v1, 0x8011
/* 084368 800EAEB8 8C63CFD8 */  lw    $v1, -0x3028($v1)
/* 08436C 800EAEBC AC44014C */  sw    $a0, 0x14c($v0)
/* 084370 800EAEC0 000310C0 */  sll   $v0, $v1, 3
/* 084374 800EAEC4 00431021 */  addu  $v0, $v0, $v1
/* 084378 800EAEC8 00021080 */  sll   $v0, $v0, 2
/* 08437C 800EAECC 8CA30000 */  lw    $v1, ($a1)
/* 084380 800EAED0 3C018010 */  lui   $at, 0x8010
/* 084384 800EAED4 00220821 */  addu  $at, $at, $v0
/* 084388 800EAED8 8C228358 */  lw    $v0, -0x7ca8($at)
/* 08438C 800EAEDC 3C018011 */  lui   $at, 0x8011
/* 084390 800EAEE0 AC30CD30 */  sw    $s0, -0x32d0($at)
/* 084394 800EAEE4 0C038069 */  jal   func_800E01A4
/* 084398 800EAEE8 AC620028 */   sw    $v0, 0x28($v1)
/* 08439C 800EAEEC 0803AC53 */  j     .L800EB14C
/* 0843A0 800EAEF0 00000000 */   nop   

/* 0843A4 800EAEF4 3C118011 */  lui   $s1, 0x8011
/* 0843A8 800EAEF8 2631CD34 */  addiu $s1, $s1, -0x32cc
/* 0843AC 800EAEFC 8E300000 */  lw    $s0, ($s1)
/* 0843B0 800EAF00 12000005 */  beqz  $s0, .L800EAF18
/* 0843B4 800EAF04 24020001 */   addiu $v0, $zero, 1
/* 0843B8 800EAF08 1202001A */  beq   $s0, $v0, .L800EAF74
/* 0843BC 800EAF0C 00000000 */   nop   
/* 0843C0 800EAF10 0803AC53 */  j     .L800EB14C
/* 0843C4 800EAF14 00000000 */   nop   

.L800EAF18:
/* 0843C8 800EAF18 3C108011 */  lui   $s0, 0x8011
/* 0843CC 800EAF1C 2610CFDC */  addiu $s0, $s0, -0x3024
/* 0843D0 800EAF20 0C0B102B */  jal   kill_script_by_ID
/* 0843D4 800EAF24 8E040000 */   lw    $a0, ($s0)
/* 0843D8 800EAF28 3C028011 */  lui   $v0, 0x8011
/* 0843DC 800EAF2C 8C42CFEC */  lw    $v0, -0x3014($v0)
/* 0843E0 800EAF30 24050014 */  addiu $a1, $zero, 0x14
/* 0843E4 800EAF34 8C44001C */  lw    $a0, 0x1c($v0)
.L800EAF38:
/* 0843E8 800EAF38 0C0B0CF8 */  jal   start_script
/* 0843EC 800EAF3C 24060020 */   addiu $a2, $zero, 0x20
/* 0843F0 800EAF40 8C430144 */  lw    $v1, 0x144($v0)
/* 0843F4 800EAF44 3C018011 */  lui   $at, 0x8011
/* 0843F8 800EAF48 AC22CFD4 */  sw    $v0, -0x302c($at)
/* 0843FC 800EAF4C AE030000 */  sw    $v1, ($s0)
/* 084400 800EAF50 3C048011 */  lui   $a0, 0x8011
/* 084404 800EAF54 8C84C930 */  lw    $a0, -0x36d0($a0)
/* 084408 800EAF58 2403000A */  addiu $v1, $zero, 0xa
/* 08440C 800EAF5C A0430004 */  sb    $v1, 4($v0)
/* 084410 800EAF60 8E230000 */  lw    $v1, ($s1)
/* 084414 800EAF64 24630001 */  addiu $v1, $v1, 1
/* 084418 800EAF68 AC44014C */  sw    $a0, 0x14c($v0)
/* 08441C 800EAF6C 0803AC53 */  j     .L800EB14C
/* 084420 800EAF70 AE230000 */   sw    $v1, ($s1)

.L800EAF74:
/* 084424 800EAF74 3C118011 */  lui   $s1, 0x8011
/* 084428 800EAF78 2631CFDC */  addiu $s1, $s1, -0x3024
/* 08442C 800EAF7C 0C0B1059 */  jal   does_script_exist
/* 084430 800EAF80 8E240000 */   lw    $a0, ($s1)
/* 084434 800EAF84 14400071 */  bnez  $v0, .L800EB14C
/* 084438 800EAF88 24050014 */   addiu $a1, $zero, 0x14
/* 08443C 800EAF8C 3C028011 */  lui   $v0, 0x8011
/* 084440 800EAF90 8C42CFEC */  lw    $v0, -0x3014($v0)
/* 084444 800EAF94 8C440018 */  lw    $a0, 0x18($v0)
/* 084448 800EAF98 0C0B0CF8 */  jal   start_script
/* 08444C 800EAF9C 24060020 */   addiu $a2, $zero, 0x20
/* 084450 800EAFA0 3C038011 */  lui   $v1, 0x8011
/* 084454 800EAFA4 8C63C930 */  lw    $v1, -0x36d0($v1)
/* 084458 800EAFA8 8C440144 */  lw    $a0, 0x144($v0)
/* 08445C 800EAFAC 3C018011 */  lui   $at, 0x8011
/* 084460 800EAFB0 AC22CFD4 */  sw    $v0, -0x302c($at)
/* 084464 800EAFB4 AC43014C */  sw    $v1, 0x14c($v0)
/* 084468 800EAFB8 2403000A */  addiu $v1, $zero, 0xa
/* 08446C 800EAFBC AE240000 */  sw    $a0, ($s1)
/* 084470 800EAFC0 A0430004 */  sb    $v1, 4($v0)
/* 084474 800EAFC4 3C018011 */  lui   $at, 0x8011
/* 084478 800EAFC8 0803AC53 */  j     .L800EB14C
/* 08447C 800EAFCC AC30CD30 */   sw    $s0, -0x32d0($at)

/* 084480 800EAFD0 3C108011 */  lui   $s0, 0x8011
/* 084484 800EAFD4 2610CD34 */  addiu $s0, $s0, -0x32cc
/* 084488 800EAFD8 8E030000 */  lw    $v1, ($s0)
/* 08448C 800EAFDC 24110001 */  addiu $s1, $zero, 1
/* 084490 800EAFE0 3C018011 */  lui   $at, 0x8011
/* 084494 800EAFE4 AC31CFC4 */  sw    $s1, -0x303c($at)
/* 084498 800EAFE8 10710017 */  beq   $v1, $s1, .L800EB048
/* 08449C 800EAFEC 28620002 */   slti  $v0, $v1, 2
/* 0844A0 800EAFF0 50400005 */  beql  $v0, $zero, .L800EB008
/* 0844A4 800EAFF4 24020002 */   addiu $v0, $zero, 2
/* 0844A8 800EAFF8 10600007 */  beqz  $v1, .L800EB018
/* 0844AC 800EAFFC 00000000 */   nop   
/* 0844B0 800EB000 0803AC53 */  j     .L800EB14C
/* 0844B4 800EB004 00000000 */   nop   

.L800EB008:
/* 0844B8 800EB008 10620015 */  beq   $v1, $v0, .L800EB060
/* 0844BC 800EB00C 00000000 */   nop   
/* 0844C0 800EB010 0803AC53 */  j     .L800EB14C
/* 0844C4 800EB014 00000000 */   nop   

.L800EB018:
/* 0844C8 800EB018 0C03805E */  jal   func_800E0178
/* 0844CC 800EB01C 00000000 */   nop   
/* 0844D0 800EB020 3C028011 */  lui   $v0, 0x8011
/* 0844D4 800EB024 8C42CFEC */  lw    $v0, -0x3014($v0)
/* 0844D8 800EB028 3C048011 */  lui   $a0, 0x8011
/* 0844DC 800EB02C 8C84C930 */  lw    $a0, -0x36d0($a0)
/* 0844E0 800EB030 8C420010 */  lw    $v0, 0x10($v0)
/* 0844E4 800EB034 0040F809 */  jalr  $v0
/* 0844E8 800EB038 00000000 */  nop   
/* 0844EC 800EB03C 8E020000 */  lw    $v0, ($s0)
/* 0844F0 800EB040 24420001 */  addiu $v0, $v0, 1
/* 0844F4 800EB044 AE020000 */  sw    $v0, ($s0)
.L800EB048:
/* 0844F8 800EB048 3C038011 */  lui   $v1, 0x8011
/* 0844FC 800EB04C 2463CD34 */  addiu $v1, $v1, -0x32cc
.L800EB050:
/* 084500 800EB050 8C620000 */  lw    $v0, ($v1)
/* 084504 800EB054 24420001 */  addiu $v0, $v0, 1
/* 084508 800EB058 0803AC53 */  j     .L800EB14C
/* 08450C 800EB05C AC620000 */   sw    $v0, ($v1)

.L800EB060:
/* 084510 800EB060 80A20000 */  lb    $v0, ($a1)
/* 084514 800EB064 10510019 */  beq   $v0, $s1, .L800EB0CC
/* 084518 800EB068 24050014 */   addiu $a1, $zero, 0x14
/* 08451C 800EB06C 3C028011 */  lui   $v0, 0x8011
/* 084520 800EB070 8C42CFEC */  lw    $v0, -0x3014($v0)
/* 084524 800EB074 C4C00028 */  lwc1  $f0, 0x28($a2)
/* 084528 800EB078 C4C2002C */  lwc1  $f2, 0x2c($a2)
/* 08452C 800EB07C C4C40030 */  lwc1  $f4, 0x30($a2)
/* 084530 800EB080 8C440018 */  lw    $a0, 0x18($v0)
/* 084534 800EB084 3C018010 */  lui   $at, 0x8010
/* 084538 800EB088 E420833C */  swc1  $f0, -0x7cc4($at)
/* 08453C 800EB08C 3C018010 */  lui   $at, 0x8010
/* 084540 800EB090 E4228340 */  swc1  $f2, -0x7cc0($at)
/* 084544 800EB094 3C018010 */  lui   $at, 0x8010
/* 084548 800EB098 E4248344 */  swc1  $f4, -0x7cbc($at)
/* 08454C 800EB09C 0C0B0CF8 */  jal   start_script
/* 084550 800EB0A0 24060020 */   addiu $a2, $zero, 0x20
/* 084554 800EB0A4 3C038011 */  lui   $v1, 0x8011
/* 084558 800EB0A8 8C63C930 */  lw    $v1, -0x36d0($v1)
/* 08455C 800EB0AC 8C440144 */  lw    $a0, 0x144($v0)
/* 084560 800EB0B0 3C018011 */  lui   $at, 0x8011
/* 084564 800EB0B4 AC22CFD4 */  sw    $v0, -0x302c($at)
/* 084568 800EB0B8 AC43014C */  sw    $v1, 0x14c($v0)
/* 08456C 800EB0BC 2403000A */  addiu $v1, $zero, 0xa
/* 084570 800EB0C0 3C018011 */  lui   $at, 0x8011
/* 084574 800EB0C4 AC24CFDC */  sw    $a0, -0x3024($at)
/* 084578 800EB0C8 A0430004 */  sb    $v1, 4($v0)
.L800EB0CC:
/* 08457C 800EB0CC 0C038069 */  jal   func_800E01A4
/* 084580 800EB0D0 00000000 */   nop   
/* 084584 800EB0D4 3C018011 */  lui   $at, 0x8011
/* 084588 800EB0D8 0803AC53 */  j     .L800EB14C
/* 08458C 800EB0DC AC31CD30 */   sw    $s1, -0x32d0($at)

/* 084590 800EB0E0 3C108011 */  lui   $s0, 0x8011
/* 084594 800EB0E4 2610CD34 */  addiu $s0, $s0, -0x32cc
/* 084598 800EB0E8 8E020000 */  lw    $v0, ($s0)
/* 08459C 800EB0EC 14400017 */  bnez  $v0, .L800EB14C
/* 0845A0 800EB0F0 00000000 */   nop   
/* 0845A4 800EB0F4 3C118011 */  lui   $s1, 0x8011
/* 0845A8 800EB0F8 2631CFDC */  addiu $s1, $s1, -0x3024
/* 0845AC 800EB0FC 0C0B1059 */  jal   does_script_exist
/* 0845B0 800EB100 8E240000 */   lw    $a0, ($s1)
/* 0845B4 800EB104 10400003 */  beqz  $v0, .L800EB114
/* 0845B8 800EB108 00000000 */   nop   
/* 0845BC 800EB10C 0C0B102B */  jal   kill_script_by_ID
/* 0845C0 800EB110 8E240000 */   lw    $a0, ($s1)
.L800EB114:
/* 0845C4 800EB114 8E020000 */  lw    $v0, ($s0)
/* 0845C8 800EB118 24420001 */  addiu $v0, $v0, 1
/* 0845CC 800EB11C 0803AC53 */  j     .L800EB14C
/* 0845D0 800EB120 AE020000 */   sw    $v0, ($s0)

/* 0845D4 800EB124 3C048011 */  lui   $a0, 0x8011
/* 0845D8 800EB128 2484CFC4 */  addiu $a0, $a0, -0x303c
/* 0845DC 800EB12C 3C018011 */  lui   $at, 0x8011
/* 0845E0 800EB130 AC20CD30 */  sw    $zero, -0x32d0($at)
/* 0845E4 800EB134 3C018011 */  lui   $at, 0x8011
/* 0845E8 800EB138 AC20CFE0 */  sw    $zero, -0x3020($at)
/* 0845EC 800EB13C 8C830000 */  lw    $v1, ($a0)
/* 0845F0 800EB140 24020003 */  addiu $v0, $zero, 3
/* 0845F4 800EB144 54620001 */  bnel  $v1, $v0, .L800EB14C
/* 0845F8 800EB148 AC800000 */   sw    $zero, ($a0)
.L800EB14C:
/* 0845FC 800EB14C 8FBF0020 */  lw    $ra, 0x20($sp)
/* 084600 800EB150 8FB3001C */  lw    $s3, 0x1c($sp)
/* 084604 800EB154 8FB20018 */  lw    $s2, 0x18($sp)
/* 084608 800EB158 8FB10014 */  lw    $s1, 0x14($sp)
/* 08460C 800EB15C 8FB00010 */  lw    $s0, 0x10($sp)
/* 084610 800EB160 03E00008 */  jr    $ra
/* 084614 800EB164 27BD0028 */   addiu $sp, $sp, 0x28

