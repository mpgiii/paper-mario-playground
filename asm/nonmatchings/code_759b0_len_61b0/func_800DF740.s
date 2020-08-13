.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800DF740
/* 078BF0 800DF740 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 078BF4 800DF744 AFBF0018 */  sw    $ra, 0x18($sp)
/* 078BF8 800DF748 AFB10014 */  sw    $s1, 0x14($sp)
/* 078BFC 800DF74C 0C0382CE */  jal   func_800E0B38
/* 078C00 800DF750 AFB00010 */   sw    $s0, 0x10($sp)
/* 078C04 800DF754 3C108011 */  lui   $s0, 0x8011
/* 078C08 800DF758 2610EFC8 */  addiu $s0, $s0, -0x1038
/* 078C0C 800DF75C 860200C0 */  lh    $v0, 0xc0($s0)
/* 078C10 800DF760 3C118016 */  lui   $s1, 0x8016
/* 078C14 800DF764 2631A550 */  addiu $s1, $s1, -0x5ab0
/* 078C18 800DF768 28420065 */  slti  $v0, $v0, 0x65
/* 078C1C 800DF76C 10400009 */  beqz  $v0, .L800DF794
/* 078C20 800DF770 00000000 */   nop   
/* 078C24 800DF774 C602002C */  lwc1  $f2, 0x2c($s0)
/* 078C28 800DF778 3C01C4FA */  lui   $at, 0xc4fa
/* 078C2C 800DF77C 44810000 */  mtc1  $at, $f0
/* 078C30 800DF780 00000000 */  nop   
/* 078C34 800DF784 4600103C */  c.lt.s $f2, $f0
/* 078C38 800DF788 00000000 */  nop   
/* 078C3C 800DF78C 45000039 */  bc1f  .L800DF874
/* 078C40 800DF790 2402FFFF */   addiu $v0, $zero, -1
.L800DF794:
/* 078C44 800DF794 8E040004 */  lw    $a0, 4($s0)
/* 078C48 800DF798 3C021000 */  lui   $v0, 0x1000
/* 078C4C 800DF79C 00821024 */  and   $v0, $a0, $v0
/* 078C50 800DF7A0 14400034 */  bnez  $v0, .L800DF874
/* 078C54 800DF7A4 2402FFFF */   addiu $v0, $zero, -1
/* 078C58 800DF7A8 86020016 */  lh    $v0, 0x16($s0)
/* 078C5C 800DF7AC 8603001A */  lh    $v1, 0x1a($s0)
/* 078C60 800DF7B0 44820000 */  mtc1  $v0, $f0
/* 078C64 800DF7B4 00000000 */  nop   
/* 078C68 800DF7B8 46800020 */  cvt.s.w $f0, $f0
/* 078C6C 800DF7BC 86020018 */  lh    $v0, 0x18($s0)
/* 078C70 800DF7C0 A60000C0 */  sh    $zero, 0xc0($s0)
/* 078C74 800DF7C4 E6000028 */  swc1  $f0, 0x28($s0)
/* 078C78 800DF7C8 44820000 */  mtc1  $v0, $f0
/* 078C7C 800DF7CC 00000000 */  nop   
/* 078C80 800DF7D0 46800020 */  cvt.s.w $f0, $f0
/* 078C84 800DF7D4 E600002C */  swc1  $f0, 0x2c($s0)
/* 078C88 800DF7D8 44830000 */  mtc1  $v1, $f0
/* 078C8C 800DF7DC 00000000 */  nop   
/* 078C90 800DF7E0 46800020 */  cvt.s.w $f0, $f0
/* 078C94 800DF7E4 3C020040 */  lui   $v0, 0x40
/* 078C98 800DF7E8 00821024 */  and   $v0, $a0, $v0
/* 078C9C 800DF7EC 1040001E */  beqz  $v0, .L800DF868
/* 078CA0 800DF7F0 E6000030 */   swc1  $f0, 0x30($s0)
/* 078CA4 800DF7F4 3C022000 */  lui   $v0, 0x2000
/* 078CA8 800DF7F8 34420004 */  ori   $v0, $v0, 4
/* 078CAC 800DF7FC 00821025 */  or    $v0, $a0, $v0
/* 078CB0 800DF800 2404FFFC */  addiu $a0, $zero, -4
/* 078CB4 800DF804 0C00EABB */  jal   get_npc_unsafe
/* 078CB8 800DF808 AE020004 */   sw    $v0, 4($s0)
/* 078CBC 800DF80C 86030016 */  lh    $v1, 0x16($s0)
/* 078CC0 800DF810 44830000 */  mtc1  $v1, $f0
/* 078CC4 800DF814 00000000 */  nop   
/* 078CC8 800DF818 46800020 */  cvt.s.w $f0, $f0
/* 078CCC 800DF81C E4400038 */  swc1  $f0, 0x38($v0)
/* 078CD0 800DF820 86030018 */  lh    $v1, 0x18($s0)
/* 078CD4 800DF824 860400B0 */  lh    $a0, 0xb0($s0)
/* 078CD8 800DF828 00641821 */  addu  $v1, $v1, $a0
/* 078CDC 800DF82C 44830000 */  mtc1  $v1, $f0
/* 078CE0 800DF830 00000000 */  nop   
/* 078CE4 800DF834 46800020 */  cvt.s.w $f0, $f0
/* 078CE8 800DF838 E440003C */  swc1  $f0, 0x3c($v0)
/* 078CEC 800DF83C 8603001A */  lh    $v1, 0x1a($s0)
/* 078CF0 800DF840 44830000 */  mtc1  $v1, $f0
/* 078CF4 800DF844 00000000 */  nop   
/* 078CF8 800DF848 46800020 */  cvt.s.w $f0, $f0
/* 078CFC 800DF84C E4400040 */  swc1  $f0, 0x40($v0)
/* 078D00 800DF850 86030018 */  lh    $v1, 0x18($s0)
/* 078D04 800DF854 44830000 */  mtc1  $v1, $f0
/* 078D08 800DF858 00000000 */  nop   
/* 078D0C 800DF85C 46800020 */  cvt.s.w $f0, $f0
/* 078D10 800DF860 08037E1C */  j     .L800DF870
/* 078D14 800DF864 E4400064 */   swc1  $f0, 0x64($v0)

.L800DF868:
/* 078D18 800DF868 2402000A */  addiu $v0, $zero, 0xa
/* 078D1C 800DF86C A60200C0 */  sh    $v0, 0xc0($s0)
.L800DF870:
/* 078D20 800DF870 2402FFFF */  addiu $v0, $zero, -1
.L800DF874:
/* 078D24 800DF874 A6220012 */  sh    $v0, 0x12($s1)
/* 078D28 800DF878 A6220014 */  sh    $v0, 0x14($s1)
/* 078D2C 800DF87C A622000A */  sh    $v0, 0xa($s1)
/* 078D30 800DF880 24020001 */  addiu $v0, $zero, 1
/* 078D34 800DF884 0C0387E4 */  jal   func_800E1F90
/* 078D38 800DF888 A6220006 */   sh    $v0, 6($s1)
/* 078D3C 800DF88C 8E020000 */  lw    $v0, ($s0)
/* 078D40 800DF890 2403FBFF */  addiu $v1, $zero, -0x401
/* 078D44 800DF894 00431024 */  and   $v0, $v0, $v1
/* 078D48 800DF898 0C037FF3 */  jal   func_800DFFCC
/* 078D4C 800DF89C AE020000 */   sw    $v0, ($s0)
/* 078D50 800DF8A0 8E020000 */  lw    $v0, ($s0)
/* 078D54 800DF8A4 30421000 */  andi  $v0, $v0, 0x1000
/* 078D58 800DF8A8 1040000B */  beqz  $v0, .L800DF8D8
/* 078D5C 800DF8AC 24020017 */   addiu $v0, $zero, 0x17
/* 078D60 800DF8B0 0C03968B */  jal   func_800E5A2C
/* 078D64 800DF8B4 00000000 */   nop   
/* 078D68 800DF8B8 0C038082 */  jal   func_800E0208
/* 078D6C 800DF8BC 00000000 */   nop   
/* 078D70 800DF8C0 1440000E */  bnez  $v0, .L800DF8FC
/* 078D74 800DF8C4 00000000 */   nop   
/* 078D78 800DF8C8 0C038D8F */  jal   func_800E363C
/* 078D7C 800DF8CC 00000000 */   nop   
/* 078D80 800DF8D0 08037E3F */  j     .L800DF8FC
/* 078D84 800DF8D4 00000000 */   nop   

.L800DF8D8:
/* 078D88 800DF8D8 820300B4 */  lb    $v1, 0xb4($s0)
/* 078D8C 800DF8DC 10620005 */  beq   $v1, $v0, .L800DF8F4
/* 078D90 800DF8E0 00000000 */   nop   
/* 078D94 800DF8E4 0C037EAB */  jal   func_800DFAAC
/* 078D98 800DF8E8 00000000 */   nop   
/* 078D9C 800DF8EC 08037E3F */  j     .L800DF8FC
/* 078DA0 800DF8F0 00000000 */   nop   

.L800DF8F4:
/* 078DA4 800DF8F4 0C037EFA */  jal   func_800DFBE8
/* 078DA8 800DF8F8 00000000 */   nop   
.L800DF8FC:
/* 078DAC 800DF8FC 8E020000 */  lw    $v0, ($s0)
/* 078DB0 800DF900 30424000 */  andi  $v0, $v0, 0x4000
/* 078DB4 800DF904 1040000B */  beqz  $v0, .L800DF934
/* 078DB8 800DF908 00000000 */   nop   
/* 078DBC 800DF90C 96020012 */  lhu   $v0, 0x12($s0)
/* 078DC0 800DF910 2442FFFF */  addiu $v0, $v0, -1
/* 078DC4 800DF914 A6020012 */  sh    $v0, 0x12($s0)
/* 078DC8 800DF918 00021400 */  sll   $v0, $v0, 0x10
/* 078DCC 800DF91C 1C400005 */  bgtz  $v0, .L800DF934
/* 078DD0 800DF920 2403BFFF */   addiu $v1, $zero, -0x4001
/* 078DD4 800DF924 8E020000 */  lw    $v0, ($s0)
/* 078DD8 800DF928 A6000012 */  sh    $zero, 0x12($s0)
/* 078DDC 800DF92C 00431024 */  and   $v0, $v0, $v1
/* 078DE0 800DF930 AE020000 */  sw    $v0, ($s0)
.L800DF934:
/* 078DE4 800DF934 8E020004 */  lw    $v0, 4($s0)
/* 078DE8 800DF938 30421000 */  andi  $v0, $v0, 0x1000
/* 078DEC 800DF93C 14400003 */  bnez  $v0, .L800DF94C
/* 078DF0 800DF940 00000000 */   nop   
/* 078DF4 800DF944 0C03BF42 */  jal   func_800EFD08
/* 078DF8 800DF948 00000000 */   nop   
.L800DF94C:
/* 078DFC 800DF94C 0C0382E4 */  jal   func_800E0B90
/* 078E00 800DF950 00000000 */   nop   
/* 078E04 800DF954 3C028007 */  lui   $v0, 0x8007
/* 078E08 800DF958 8C42419C */  lw    $v0, 0x419c($v0)
/* 078E0C 800DF95C C6000028 */  lwc1  $f0, 0x28($s0)
/* 078E10 800DF960 E4400098 */  swc1  $f0, 0x98($v0)
/* 078E14 800DF964 C600002C */  lwc1  $f0, 0x2c($s0)
/* 078E18 800DF968 E440009C */  swc1  $f0, 0x9c($v0)
/* 078E1C 800DF96C C6000030 */  lwc1  $f0, 0x30($s0)
/* 078E20 800DF970 E44000A0 */  swc1  $f0, 0xa0($v0)
/* 078E24 800DF974 C6000084 */  lwc1  $f0, 0x84($s0)
/* 078E28 800DF978 0C039B39 */  jal   func_800E6CE4
/* 078E2C 800DF97C E44000A4 */   swc1  $f0, 0xa4($v0)
/* 078E30 800DF980 8E020004 */  lw    $v0, 4($s0)
/* 078E34 800DF984 30421000 */  andi  $v0, $v0, 0x1000
/* 078E38 800DF988 14400003 */  bnez  $v0, .L800DF998
/* 078E3C 800DF98C 00000000 */   nop   
/* 078E40 800DF990 0C039CA3 */  jal   check_input_status_menu
/* 078E44 800DF994 00000000 */   nop   
.L800DF998:
/* 078E48 800DF998 0C0386F1 */  jal   update_below_player
/* 078E4C 800DF99C 00000000 */   nop   
/* 078E50 800DF9A0 0C038206 */  jal   func_800E0818
/* 078E54 800DF9A4 00000000 */   nop   
/* 078E58 800DF9A8 0C038160 */  jal   func_800E0580
/* 078E5C 800DF9AC 00000000 */   nop   
/* 078E60 800DF9B0 0C0380E6 */  jal   func_800E0398
/* 078E64 800DF9B4 00000000 */   nop   
/* 078E68 800DF9B8 0C0380A5 */  jal   func_800E0294
/* 078E6C 800DF9BC 00000000 */   nop   
/* 078E70 800DF9C0 8E020000 */  lw    $v0, ($s0)
/* 078E74 800DF9C4 2403FFEF */  addiu $v1, $zero, -0x11
/* 078E78 800DF9C8 AE00001C */  sw    $zero, 0x1c($s0)
/* 078E7C 800DF9CC AE000020 */  sw    $zero, 0x20($s0)
/* 078E80 800DF9D0 AE000024 */  sw    $zero, 0x24($s0)
/* 078E84 800DF9D4 00431024 */  and   $v0, $v0, $v1
/* 078E88 800DF9D8 AE020000 */  sw    $v0, ($s0)
/* 078E8C 800DF9DC 8E020004 */  lw    $v0, 4($s0)
/* 078E90 800DF9E0 2403FFF7 */  addiu $v1, $zero, -9
/* 078E94 800DF9E4 00431024 */  and   $v0, $v0, $v1
/* 078E98 800DF9E8 AE020004 */  sw    $v0, 4($s0)
/* 078E9C 800DF9EC 8FBF0018 */  lw    $ra, 0x18($sp)
/* 078EA0 800DF9F0 8FB10014 */  lw    $s1, 0x14($sp)
/* 078EA4 800DF9F4 8FB00010 */  lw    $s0, 0x10($sp)
/* 078EA8 800DF9F8 03E00008 */  jr    $ra
/* 078EAC 800DF9FC 27BD0020 */   addiu $sp, $sp, 0x20

