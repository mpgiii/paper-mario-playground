.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel osAiSetFrequency
/* 03C960 80061560 44841000 */  mtc1  $a0, $f2
/* 03C964 80061564 00000000 */  nop   
/* 03C968 80061568 468010A1 */  cvt.d.w $f2, $f2
/* 03C96C 8006156C 3C018009 */  lui   $at, 0x8009
/* 03C970 80061570 C42458F8 */  lwc1  $f4, 0x58f8($at)
/* 03C974 80061574 46802120 */  cvt.s.w $f4, $f4
/* 03C978 80061578 04830005 */  bgezl $a0, .L80061590
/* 03C97C 8006157C 46201020 */   cvt.s.d $f0, $f2
/* 03C980 80061580 3C01800A */  lui   $at, 0x800a
/* 03C984 80061584 D4209B40 */  ldc1  $f0, -0x64c0($at)
/* 03C988 80061588 46201080 */  add.d $f2, $f2, $f0
/* 03C98C 8006158C 46201020 */  cvt.s.d $f0, $f2
.L80061590:
/* 03C990 80061590 46002003 */  div.s $f0, $f4, $f0
/* 03C994 80061594 3C013F00 */  lui   $at, 0x3f00
/* 03C998 80061598 44811000 */  mtc1  $at, $f2
/* 03C99C 8006159C 00000000 */  nop   
/* 03C9A0 800615A0 46020080 */  add.s $f2, $f0, $f2
/* 03C9A4 800615A4 3C014F00 */  lui   $at, 0x4f00
/* 03C9A8 800615A8 44810000 */  mtc1  $at, $f0
/* 03C9AC 800615AC 00000000 */  nop   
/* 03C9B0 800615B0 4602003E */  c.le.s $f0, $f2
/* 03C9B4 800615B4 00000000 */  nop   
/* 03C9B8 800615B8 00000000 */  nop   
/* 03C9BC 800615BC 45030006 */  bc1tl .L800615D8
/* 03C9C0 800615C0 46001001 */   sub.s $f0, $f2, $f0
/* 03C9C4 800615C4 4600100D */  trunc.w.s $f0, $f2
/* 03C9C8 800615C8 44050000 */  mfc1  $a1, $f0
/* 03C9CC 800615CC 00000000 */  nop   
/* 03C9D0 800615D0 0801857B */  j     .L800615EC
/* 03C9D4 800615D4 2CA20084 */   sltiu $v0, $a1, 0x84

.L800615D8:
/* 03C9D8 800615D8 4600008D */  trunc.w.s $f2, $f0
/* 03C9DC 800615DC 44051000 */  mfc1  $a1, $f2
/* 03C9E0 800615E0 3C028000 */  lui   $v0, 0x8000
/* 03C9E4 800615E4 00A22825 */  or    $a1, $a1, $v0
/* 03C9E8 800615E8 2CA20084 */  sltiu $v0, $a1, 0x84
.L800615EC:
/* 03C9EC 800615EC 14400020 */  bnez  $v0, .L80061670
/* 03C9F0 800615F0 2402FFFF */   addiu $v0, $zero, -1
/* 03C9F4 800615F4 3C023E0F */  lui   $v0, 0x3e0f
/* 03C9F8 800615F8 344283E1 */  ori   $v0, $v0, 0x83e1
/* 03C9FC 800615FC 00A20019 */  multu $a1, $v0
/* 03CA00 80061600 00003810 */  mfhi  $a3
/* 03CA04 80061604 00073102 */  srl   $a2, $a3, 4
/* 03CA08 80061608 30C200FF */  andi  $v0, $a2, 0xff
/* 03CA0C 8006160C 2C420011 */  sltiu $v0, $v0, 0x11
/* 03CA10 80061610 50400001 */  beql  $v0, $zero, .L80061618
/* 03CA14 80061614 24060010 */   addiu $a2, $zero, 0x10
.L80061618:
/* 03CA18 80061618 3C03A450 */  lui   $v1, 0xa450
/* 03CA1C 8006161C 34630010 */  ori   $v1, $v1, 0x10
/* 03CA20 80061620 3C04A450 */  lui   $a0, 0xa450
/* 03CA24 80061624 34840014 */  ori   $a0, $a0, 0x14
/* 03CA28 80061628 24A2FFFF */  addiu $v0, $a1, -1
/* 03CA2C 8006162C AC620000 */  sw    $v0, ($v1)
/* 03CA30 80061630 3C028009 */  lui   $v0, 0x8009
/* 03CA34 80061634 8C4258F8 */  lw    $v0, 0x58f8($v0)
/* 03CA38 80061638 30C300FF */  andi  $v1, $a2, 0xff
/* 03CA3C 8006163C 2463FFFF */  addiu $v1, $v1, -1
/* 03CA40 80061640 AC830000 */  sw    $v1, ($a0)
/* 03CA44 80061644 0045001A */  div   $zero, $v0, $a1
/* 03CA48 80061648 14A00002 */  bnez  $a1, .L80061654
/* 03CA4C 8006164C 00000000 */   nop   
/* 03CA50 80061650 0007000D */  break 7
.L80061654:
/* 03CA54 80061654 2401FFFF */  addiu $at, $zero, -1
/* 03CA58 80061658 14A10004 */  bne   $a1, $at, .L8006166C
/* 03CA5C 8006165C 3C018000 */   lui   $at, 0x8000
/* 03CA60 80061660 14410002 */  bne   $v0, $at, .L8006166C
/* 03CA64 80061664 00000000 */   nop   
/* 03CA68 80061668 0006000D */  break 6
.L8006166C:
/* 03CA6C 8006166C 00001012 */  mflo  $v0
.L80061670:
/* 03CA70 80061670 03E00008 */  jr    $ra
/* 03CA74 80061674 00000000 */   nop   

/* 03CA78 80061678 00000000 */  nop   
/* 03CA7C 8006167C 00000000 */  nop   


