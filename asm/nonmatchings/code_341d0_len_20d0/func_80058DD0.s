.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_80058DD0
/* 0341D0 80058DD0 24050007 */  addiu $a1, $zero, 7
/* 0341D4 80058DD4 2486000E */  addiu $a2, $a0, 0xe
/* 0341D8 80058DD8 84830000 */  lh    $v1, ($a0)
/* 0341DC 80058DDC 24020001 */  addiu $v0, $zero, 1
/* 0341E0 80058DE0 AC82002C */  sw    $v0, 0x2c($a0)
/* 0341E4 80058DE4 00431807 */  srav  $v1, $v1, $v0
/* 0341E8 80058DE8 0060382D */  daddu $a3, $v1, $zero
/* 0341EC 80058DEC 24024000 */  addiu $v0, $zero, 0x4000
/* 0341F0 80058DF0 00431023 */  subu  $v0, $v0, $v1
/* 0341F4 80058DF4 A4820002 */  sh    $v0, 2($a0)
.L80058DF8:
/* 0341F8 80058DF8 A4C00008 */  sh    $zero, 8($a2)
/* 0341FC 80058DFC 24A5FFFF */  addiu $a1, $a1, -1
/* 034200 80058E00 04A1FFFD */  bgez  $a1, .L80058DF8
/* 034204 80058E04 24C6FFFE */   addiu $a2, $a2, -2
/* 034208 80058E08 00071400 */  sll   $v0, $a3, 0x10
/* 03420C 80058E0C 00021403 */  sra   $v0, $v0, 0x10
/* 034210 80058E10 3C013F10 */  lui   $at, 0x3f10
/* 034214 80058E14 44811800 */  mtc1  $at, $f3
/* 034218 80058E18 44801000 */  mtc1  $zero, $f2
/* 03421C 80058E1C 44820000 */  mtc1  $v0, $f0
/* 034220 80058E20 00000000 */  nop   
/* 034224 80058E24 46800021 */  cvt.d.w $f0, $f0
/* 034228 80058E28 46220082 */  mul.d $f2, $f0, $f2
/* 03422C 80058E2C 00000000 */  nop   
/* 034230 80058E30 24050009 */  addiu $a1, $zero, 9
/* 034234 80058E34 3C0140D0 */  lui   $at, 0x40d0
/* 034238 80058E38 44813800 */  mtc1  $at, $f7
/* 03423C 80058E3C 44803000 */  mtc1  $zero, $f6
/* 034240 80058E40 24830012 */  addiu $v1, $a0, 0x12
/* 034244 80058E44 A4870018 */  sh    $a3, 0x18($a0)
/* 034248 80058E48 46201106 */  mov.d $f4, $f2
.L80058E4C:
/* 03424C 80058E4C 46241082 */  mul.d $f2, $f2, $f4
/* 034250 80058E50 00000000 */  nop   
/* 034254 80058E54 46261002 */  mul.d $f0, $f2, $f6
/* 034258 80058E58 00000000 */  nop   
/* 03425C 80058E5C 24A50001 */  addiu $a1, $a1, 1
/* 034260 80058E60 4620020D */  trunc.w.d $f8, $f0
/* 034264 80058E64 44024000 */  mfc1  $v0, $f8
/* 034268 80058E68 00000000 */  nop   
/* 03426C 80058E6C A4620008 */  sh    $v0, 8($v1)
/* 034270 80058E70 28A20010 */  slti  $v0, $a1, 0x10
/* 034274 80058E74 1440FFF5 */  bnez  $v0, .L80058E4C
/* 034278 80058E78 24630002 */   addiu $v1, $v1, 2
/* 03427C 80058E7C 03E00008 */  jr    $ra
/* 034280 80058E80 00000000 */   nop   

