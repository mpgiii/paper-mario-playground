.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel _load_model_textures
/* 0AC244 80115B44 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0AC248 80115B48 AFB20018 */  sw    $s2, 0x18($sp)
/* 0AC24C 80115B4C 0080902D */  daddu $s2, $a0, $zero
/* 0AC250 80115B50 AFB3001C */  sw    $s3, 0x1c($sp)
/* 0AC254 80115B54 00A0982D */  daddu $s3, $a1, $zero
/* 0AC258 80115B58 AFB40020 */  sw    $s4, 0x20($sp)
/* 0AC25C 80115B5C AFBF0024 */  sw    $ra, 0x24($sp)
/* 0AC260 80115B60 AFB10014 */  sw    $s1, 0x14($sp)
/* 0AC264 80115B64 AFB00010 */  sw    $s0, 0x10($sp)
/* 0AC268 80115B68 8E430000 */  lw    $v1, ($s2)
/* 0AC26C 80115B6C 24020002 */  addiu $v0, $zero, 2
/* 0AC270 80115B70 10620017 */  beq   $v1, $v0, .L80115BD0
/* 0AC274 80115B74 00C0A02D */   daddu $s4, $a2, $zero
/* 0AC278 80115B78 8E420010 */  lw    $v0, 0x10($s2)
/* 0AC27C 80115B7C 1040001C */  beqz  $v0, .L80115BF0
/* 0AC280 80115B80 00000000 */   nop   
/* 0AC284 80115B84 8C51000C */  lw    $s1, 0xc($v0)
/* 0AC288 80115B88 12200019 */  beqz  $s1, .L80115BF0
/* 0AC28C 80115B8C 00000000 */   nop   
/* 0AC290 80115B90 1A200017 */  blez  $s1, .L80115BF0
/* 0AC294 80115B94 0000802D */   daddu $s0, $zero, $zero
/* 0AC298 80115B98 0260282D */  daddu $a1, $s3, $zero
.L80115B9C:
/* 0AC29C 80115B9C 8E420010 */  lw    $v0, 0x10($s2)
/* 0AC2A0 80115BA0 0280302D */  daddu $a2, $s4, $zero
/* 0AC2A4 80115BA4 8C430010 */  lw    $v1, 0x10($v0)
/* 0AC2A8 80115BA8 00101080 */  sll   $v0, $s0, 2
/* 0AC2AC 80115BAC 00431021 */  addu  $v0, $v0, $v1
/* 0AC2B0 80115BB0 8C440000 */  lw    $a0, ($v0)
/* 0AC2B4 80115BB4 0C0456D1 */  jal   _load_model_textures
/* 0AC2B8 80115BB8 26100001 */   addiu $s0, $s0, 1
/* 0AC2BC 80115BBC 0211102A */  slt   $v0, $s0, $s1
/* 0AC2C0 80115BC0 1440FFF6 */  bnez  $v0, .L80115B9C
/* 0AC2C4 80115BC4 0260282D */   daddu $a1, $s3, $zero
/* 0AC2C8 80115BC8 080456FC */  j     .L80115BF0
/* 0AC2CC 80115BCC 00000000 */   nop   

.L80115BD0:
/* 0AC2D0 80115BD0 0240202D */  daddu $a0, $s2, $zero
/* 0AC2D4 80115BD4 0C0456C3 */  jal   get_model_property
/* 0AC2D8 80115BD8 2405005E */   addiu $a1, $zero, 0x5e
/* 0AC2DC 80115BDC 10400004 */  beqz  $v0, .L80115BF0
/* 0AC2E0 80115BE0 0040202D */   daddu $a0, $v0, $zero
/* 0AC2E4 80115BE4 0260282D */  daddu $a1, $s3, $zero
/* 0AC2E8 80115BE8 0C04535B */  jal   load_tile_header
/* 0AC2EC 80115BEC 0280302D */   daddu $a2, $s4, $zero
.L80115BF0:
/* 0AC2F0 80115BF0 3C038015 */  lui   $v1, 0x8015
/* 0AC2F4 80115BF4 24633224 */  addiu $v1, $v1, 0x3224
/* 0AC2F8 80115BF8 8C620000 */  lw    $v0, ($v1)
/* 0AC2FC 80115BFC 24420001 */  addiu $v0, $v0, 1
/* 0AC300 80115C00 AC620000 */  sw    $v0, ($v1)
/* 0AC304 80115C04 8FBF0024 */  lw    $ra, 0x24($sp)
/* 0AC308 80115C08 8FB40020 */  lw    $s4, 0x20($sp)
/* 0AC30C 80115C0C 8FB3001C */  lw    $s3, 0x1c($sp)
/* 0AC310 80115C10 8FB20018 */  lw    $s2, 0x18($sp)
/* 0AC314 80115C14 8FB10014 */  lw    $s1, 0x14($sp)
/* 0AC318 80115C18 8FB00010 */  lw    $s0, 0x10($sp)
/* 0AC31C 80115C1C 03E00008 */  jr    $ra
/* 0AC320 80115C20 27BD0028 */   addiu $sp, $sp, 0x28

