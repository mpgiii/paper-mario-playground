.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800598A0
/* 034CA0 800598A0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 034CA4 800598A4 00063400 */  sll   $a2, $a2, 0x10
/* 034CA8 800598A8 00063403 */  sra   $a2, $a2, 0x10
/* 034CAC 800598AC 2CC20008 */  sltiu $v0, $a2, 8
/* 034CB0 800598B0 1040007D */  beqz  $v0, .L80059AA8
/* 034CB4 800598B4 AFBF0010 */   sw    $ra, 0x10($sp)
/* 034CB8 800598B8 00061080 */  sll   $v0, $a2, 2
/* 034CBC 800598BC 3C01800A */  lui   $at, 0x800a
/* 034CC0 800598C0 00220821 */  addu  $at, $at, $v0
/* 034CC4 800598C4 8C228970 */  lw    $v0, -0x7690($at)
/* 034CC8 800598C8 00400008 */  jr    $v0
/* 034CCC 800598CC 00000000 */   nop   
/* 034CD0 800598D0 00051400 */  sll   $v0, $a1, 0x10
/* 034CD4 800598D4 00021403 */  sra   $v0, $v0, 0x10
/* 034CD8 800598D8 00021840 */  sll   $v1, $v0, 1
/* 034CDC 800598DC 00621821 */  addu  $v1, $v1, $v0
/* 034CE0 800598E0 8C82000C */  lw    $v0, 0xc($a0)
/* 034CE4 800598E4 00031900 */  sll   $v1, $v1, 4
/* 034CE8 800598E8 00621821 */  addu  $v1, $v1, $v0
/* 034CEC 800598EC 2402FFF8 */  addiu $v0, $zero, -8
/* 034CF0 800598F0 00E21024 */  and   $v0, $a3, $v0
/* 034CF4 800598F4 080166AA */  j     .L80059AA8
/* 034CF8 800598F8 AC620000 */   sw    $v0, ($v1)

/* 034CFC 800598FC 00051400 */  sll   $v0, $a1, 0x10
/* 034D00 80059900 00021403 */  sra   $v0, $v0, 0x10
/* 034D04 80059904 00021840 */  sll   $v1, $v0, 1
/* 034D08 80059908 00621821 */  addu  $v1, $v1, $v0
/* 034D0C 8005990C 8C82000C */  lw    $v0, 0xc($a0)
/* 034D10 80059910 00031900 */  sll   $v1, $v1, 4
/* 034D14 80059914 00621821 */  addu  $v1, $v1, $v0
/* 034D18 80059918 2402FFF8 */  addiu $v0, $zero, -8
/* 034D1C 8005991C 00E21024 */  and   $v0, $a3, $v0
/* 034D20 80059920 080166AA */  j     .L80059AA8
/* 034D24 80059924 AC620004 */   sw    $v0, 4($v1)

/* 034D28 80059928 00051400 */  sll   $v0, $a1, 0x10
/* 034D2C 8005992C 00021403 */  sra   $v0, $v0, 0x10
/* 034D30 80059930 00021840 */  sll   $v1, $v0, 1
/* 034D34 80059934 00621821 */  addu  $v1, $v1, $v0
/* 034D38 80059938 8C82000C */  lw    $v0, 0xc($a0)
/* 034D3C 8005993C 00031900 */  sll   $v1, $v1, 4
/* 034D40 80059940 00621821 */  addu  $v1, $v1, $v0
/* 034D44 80059944 080166AA */  j     .L80059AA8
/* 034D48 80059948 A4670008 */   sh    $a3, 8($v1)

/* 034D4C 8005994C 00051400 */  sll   $v0, $a1, 0x10
/* 034D50 80059950 00021403 */  sra   $v0, $v0, 0x10
/* 034D54 80059954 00021840 */  sll   $v1, $v0, 1
/* 034D58 80059958 00621821 */  addu  $v1, $v1, $v0
/* 034D5C 8005995C 8C82000C */  lw    $v0, 0xc($a0)
/* 034D60 80059960 00031900 */  sll   $v1, $v1, 4
/* 034D64 80059964 00621821 */  addu  $v1, $v1, $v0
/* 034D68 80059968 080166AA */  j     .L80059AA8
/* 034D6C 8005996C A467000A */   sh    $a3, 0xa($v1)

/* 034D70 80059970 00051400 */  sll   $v0, $a1, 0x10
/* 034D74 80059974 00021403 */  sra   $v0, $v0, 0x10
/* 034D78 80059978 00021840 */  sll   $v1, $v0, 1
/* 034D7C 8005997C 00621821 */  addu  $v1, $v1, $v0
/* 034D80 80059980 8C82000C */  lw    $v0, 0xc($a0)
/* 034D84 80059984 00031900 */  sll   $v1, $v1, 4
/* 034D88 80059988 00621821 */  addu  $v1, $v1, $v0
/* 034D8C 8005998C 080166AA */  j     .L80059AA8
/* 034D90 80059990 A467000C */   sh    $a3, 0xc($v1)

/* 034D94 80059994 00051400 */  sll   $v0, $a1, 0x10
/* 034D98 80059998 00021403 */  sra   $v0, $v0, 0x10
/* 034D9C 8005999C 00021840 */  sll   $v1, $v0, 1
/* 034DA0 800599A0 00621821 */  addu  $v1, $v1, $v0
/* 034DA4 800599A4 00031900 */  sll   $v1, $v1, 4
/* 034DA8 800599A8 44870000 */  mtc1  $a3, $f0
/* 034DAC 800599AC 00000000 */  nop   
/* 034DB0 800599B0 46800020 */  cvt.s.w $f0, $f0
/* 034DB4 800599B4 3C01447A */  lui   $at, 0x447a
/* 034DB8 800599B8 44811000 */  mtc1  $at, $f2
/* 034DBC 800599BC 8C82000C */  lw    $v0, 0xc($a0)
/* 034DC0 800599C0 3C048008 */  lui   $a0, 0x8008
/* 034DC4 800599C4 8C848E50 */  lw    $a0, -0x71b0($a0)
/* 034DC8 800599C8 46020003 */  div.s $f0, $f0, $f2
/* 034DCC 800599CC 46000021 */  cvt.d.s $f0, $f0
/* 034DD0 800599D0 46200000 */  add.d $f0, $f0, $f0
/* 034DD4 800599D4 00621821 */  addu  $v1, $v1, $v0
/* 034DD8 800599D8 C4820008 */  lwc1  $f2, 8($a0)
/* 034DDC 800599DC 468010A1 */  cvt.d.w $f2, $f2
/* 034DE0 800599E0 46220003 */  div.d $f0, $f0, $f2
/* 034DE4 800599E4 46200020 */  cvt.s.d $f0, $f0
/* 034DE8 800599E8 080166AA */  j     .L80059AA8
/* 034DEC 800599EC E4600010 */   swc1  $f0, 0x10($v1)

/* 034DF0 800599F0 00051400 */  sll   $v0, $a1, 0x10
/* 034DF4 800599F4 00021403 */  sra   $v0, $v0, 0x10
/* 034DF8 800599F8 00021840 */  sll   $v1, $v0, 1
/* 034DFC 800599FC 00621821 */  addu  $v1, $v1, $v0
/* 034E00 80059A00 00031900 */  sll   $v1, $v1, 4
/* 034E04 80059A04 44870000 */  mtc1  $a3, $f0
/* 034E08 80059A08 00000000 */  nop   
/* 034E0C 80059A0C 46800020 */  cvt.s.w $f0, $f0
/* 034E10 80059A10 46000021 */  cvt.d.s $f0, $f0
/* 034E14 80059A14 8C82000C */  lw    $v0, 0xc($a0)
/* 034E18 80059A18 3C01800A */  lui   $at, 0x800a
/* 034E1C 80059A1C D4228990 */  ldc1  $f2, -0x7670($at)
/* 034E20 80059A20 00622021 */  addu  $a0, $v1, $v0
/* 034E24 80059A24 8C830004 */  lw    $v1, 4($a0)
/* 034E28 80059A28 8C820000 */  lw    $v0, ($a0)
/* 034E2C 80059A2C 00621823 */  subu  $v1, $v1, $v0
/* 034E30 80059A30 44832000 */  mtc1  $v1, $f4
/* 034E34 80059A34 00000000 */  nop   
/* 034E38 80059A38 46802121 */  cvt.d.w $f4, $f4
/* 034E3C 80059A3C 04610006 */  bgez  $v1, .L80059A58
/* 034E40 80059A40 46220083 */   div.d $f2, $f0, $f2
/* 034E44 80059A44 3C0141F0 */  lui   $at, 0x41f0
/* 034E48 80059A48 44810800 */  mtc1  $at, $f1
/* 034E4C 80059A4C 44800000 */  mtc1  $zero, $f0
/* 034E50 80059A50 00000000 */  nop   
/* 034E54 80059A54 46202100 */  add.d $f4, $f4, $f0
.L80059A58:
/* 034E58 80059A58 46241002 */  mul.d $f0, $f2, $f4
/* 034E5C 80059A5C 00000000 */  nop   
/* 034E60 80059A60 46200020 */  cvt.s.d $f0, $f0
/* 034E64 80059A64 080166AA */  j     .L80059AA8
/* 034E68 80059A68 E480001C */   swc1  $f0, 0x1c($a0)

/* 034E6C 80059A6C 00051400 */  sll   $v0, $a1, 0x10
/* 034E70 80059A70 00021403 */  sra   $v0, $v0, 0x10
/* 034E74 80059A74 00021840 */  sll   $v1, $v0, 1
/* 034E78 80059A78 00621821 */  addu  $v1, $v1, $v0
/* 034E7C 80059A7C 8C82000C */  lw    $v0, 0xc($a0)
/* 034E80 80059A80 00031900 */  sll   $v1, $v1, 4
/* 034E84 80059A84 00621021 */  addu  $v0, $v1, $v0
/* 034E88 80059A88 8C420020 */  lw    $v0, 0x20($v0)
/* 034E8C 80059A8C 10400006 */  beqz  $v0, .L80059AA8
/* 034E90 80059A90 00000000 */   nop   
/* 034E94 80059A94 A4470000 */  sh    $a3, ($v0)
/* 034E98 80059A98 8C82000C */  lw    $v0, 0xc($a0)
/* 034E9C 80059A9C 00621021 */  addu  $v0, $v1, $v0
/* 034EA0 80059AA0 0C016374 */  jal   func_80058DD0
/* 034EA4 80059AA4 8C440020 */   lw    $a0, 0x20($v0)
.L80059AA8:
/* 034EA8 80059AA8 8FBF0010 */  lw    $ra, 0x10($sp)
/* 034EAC 80059AAC 0000102D */  daddu $v0, $zero, $zero
/* 034EB0 80059AB0 03E00008 */  jr    $ra
/* 034EB4 80059AB4 27BD0018 */   addiu $sp, $sp, 0x18

