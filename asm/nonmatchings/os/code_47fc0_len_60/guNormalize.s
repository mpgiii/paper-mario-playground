.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel guNormalize
/* 047FC0 8006CBC0 C4840000 */  lwc1  $f4, ($a0)
/* 047FC4 8006CBC4 C4A60000 */  lwc1  $f6, ($a1)
/* 047FC8 8006CBC8 C4C80000 */  lwc1  $f8, ($a2)
/* 047FCC 8006CBCC 46042282 */  mul.s $f10, $f4, $f4
/* 047FD0 8006CBD0 3C083F80 */  lui   $t0, 0x3f80
/* 047FD4 8006CBD4 46063402 */  mul.s $f16, $f6, $f6
/* 047FD8 8006CBD8 46105480 */  add.s $f18, $f10, $f16
/* 047FDC 8006CBDC 46084402 */  mul.s $f16, $f8, $f8
/* 047FE0 8006CBE0 46128280 */  add.s $f10, $f16, $f18
/* 047FE4 8006CBE4 44889000 */  mtc1  $t0, $f18
/* 047FE8 8006CBE8 46005404 */  sqrt.s $f16, $f10
/* 047FEC 8006CBEC 46109283 */  div.s $f10, $f18, $f16
/* 047FF0 8006CBF0 460A2402 */  mul.s $f16, $f4, $f10
/* 047FF4 8006CBF4 00000000 */  nop   
/* 047FF8 8006CBF8 460A3482 */  mul.s $f18, $f6, $f10
/* 047FFC 8006CBFC 00000000 */  nop   
/* 048000 8006CC00 460A4102 */  mul.s $f4, $f8, $f10
/* 048004 8006CC04 E4900000 */  swc1  $f16, ($a0)
/* 048008 8006CC08 E4B20000 */  swc1  $f18, ($a1)
/* 04800C 8006CC0C 03E00008 */  jr    $ra
/* 048010 8006CC10 E4C40000 */   swc1  $f4, ($a2)

/* 048014 8006CC14 00000000 */  nop   
/* 048018 8006CC18 00000000 */  nop   
/* 04801C 8006CC1C 00000000 */  nop   


