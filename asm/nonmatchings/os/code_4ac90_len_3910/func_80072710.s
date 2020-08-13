.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_80072710
/* 04DB10 80072710 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 04DB14 80072714 AFA40010 */  sw    $a0, 0x10($sp)
/* 04DB18 80072718 AFA50014 */  sw    $a1, 0x14($sp)
/* 04DB1C 8007271C AFA60018 */  sw    $a2, 0x18($sp)
/* 04DB20 80072720 AFA7001C */  sw    $a3, 0x1c($sp)
/* 04DB24 80072724 E7AC0020 */  swc1  $f12, 0x20($sp)
/* 04DB28 80072728 E7AE0024 */  swc1  $f14, 0x24($sp)
/* 04DB2C 8007272C E7B00028 */  swc1  $f16, 0x28($sp)
/* 04DB30 80072730 AFBF002C */  sw    $ra, 0x2c($sp)
/* 04DB34 80072734 0C016959 */  jal   play_effect
/* 04DB38 80072738 2404007C */   addiu $a0, $zero, 0x7c
/* 04DB3C 8007273C 8FA40010 */  lw    $a0, 0x10($sp)
/* 04DB40 80072740 8FA50014 */  lw    $a1, 0x14($sp)
/* 04DB44 80072744 8FA60018 */  lw    $a2, 0x18($sp)
/* 04DB48 80072748 8FA7001C */  lw    $a3, 0x1c($sp)
/* 04DB4C 8007274C C7AC0020 */  lwc1  $f12, 0x20($sp)
/* 04DB50 80072750 C7AE0024 */  lwc1  $f14, 0x24($sp)
/* 04DB54 80072754 C7B00028 */  lwc1  $f16, 0x28($sp)
/* 04DB58 80072758 8FBF002C */  lw    $ra, 0x2c($sp)
/* 04DB5C 8007275C 27BD0030 */  addiu $sp, $sp, 0x30
/* 04DB60 80072760 3C018008 */  lui   $at, 0x8008
/* 04DB64 80072764 8C21FDB0 */  lw    $at, -0x250($at)
/* 04DB68 80072768 00200008 */  jr    $at
/* 04DB6C 8007276C 00000000 */   nop   
