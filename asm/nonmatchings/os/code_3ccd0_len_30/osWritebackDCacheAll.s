.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel osWritebackDCacheAll
/* 03CCD0 800618D0 3C088000 */  lui   $t0, 0x8000
/* 03CCD4 800618D4 240A2000 */  addiu $t2, $zero, 0x2000
/* 03CCD8 800618D8 010A4821 */  addu  $t1, $t0, $t2
/* 03CCDC 800618DC 2529FFF0 */  addiu $t1, $t1, -0x10
.L800618E0:
/* 03CCE0 800618E0 BD010000 */  cache 1, ($t0)
/* 03CCE4 800618E4 0109082B */  sltu  $at, $t0, $t1
/* 03CCE8 800618E8 1420FFFD */  bnez  $at, .L800618E0
/* 03CCEC 800618EC 25080010 */   addiu $t0, $t0, 0x10
/* 03CCF0 800618F0 03E00008 */  jr    $ra
/* 03CCF4 800618F4 00000000 */   nop   

/* 03CCF8 800618F8 00000000 */  nop   
/* 03CCFC 800618FC 00000000 */  nop   


