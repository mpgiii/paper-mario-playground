.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_80138220
/* 0CE920 80138220 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0CE924 80138224 3C048015 */  lui   $a0, 0x8015
/* 0CE928 80138228 24846908 */  addiu $a0, $a0, 0x6908
/* 0CE92C 8013822C AFBF0010 */  sw    $ra, 0x10($sp)
/* 0CE930 80138230 8C830000 */  lw    $v1, ($a0)
/* 0CE934 80138234 2402FFFF */  addiu $v0, $zero, -1
/* 0CE938 80138238 10620016 */  beq   $v1, $v0, .L80138294
/* 0CE93C 8013823C 00000000 */   nop   
/* 0CE940 80138240 3C018015 */  lui   $at, 0x8015
/* 0CE944 80138244 C422690C */  lwc1  $f2, 0x690c($at)
/* 0CE948 80138248 3C01BF80 */  lui   $at, 0xbf80
/* 0CE94C 8013824C 44810000 */  mtc1  $at, $f0
/* 0CE950 80138250 00000000 */  nop   
/* 0CE954 80138254 46001032 */  c.eq.s $f2, $f0
/* 0CE958 80138258 00000000 */  nop   
/* 0CE95C 8013825C 4501000D */  bc1t  .L80138294
/* 0CE960 80138260 00000000 */   nop   
/* 0CE964 80138264 3C028007 */  lui   $v0, 0x8007
/* 0CE968 80138268 8C42419C */  lw    $v0, 0x419c($v0)
/* 0CE96C 8013826C 80430070 */  lb    $v1, 0x70($v0)
/* 0CE970 80138270 24020002 */  addiu $v0, $zero, 2
/* 0CE974 80138274 10620007 */  beq   $v1, $v0, .L80138294
/* 0CE978 80138278 00000000 */   nop   
/* 0CE97C 8013827C 90840003 */  lbu   $a0, 3($a0)
/* 0CE980 80138280 44051000 */  mfc1  $a1, $f2
/* 0CE984 80138284 3C068016 */  lui   $a2, 0x8016
/* 0CE988 80138288 24C6C7A8 */  addiu $a2, $a2, -0x3858
/* 0CE98C 8013828C 0C04DAA0 */  jal   func_80136A80
/* 0CE990 80138290 00000000 */   nop   
.L80138294:
/* 0CE994 80138294 8FBF0010 */  lw    $ra, 0x10($sp)
/* 0CE998 80138298 03E00008 */  jr    $ra
/* 0CE99C 8013829C 27BD0018 */   addiu $sp, $sp, 0x18

