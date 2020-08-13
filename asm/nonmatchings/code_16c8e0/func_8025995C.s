.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_8025995C
/* 18823C 8025995C 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 188240 80259960 AFB40028 */  sw    $s4, 0x28($sp)
/* 188244 80259964 00A0A02D */  daddu $s4, $a1, $zero
/* 188248 80259968 AFB30024 */  sw    $s3, 0x24($sp)
/* 18824C 8025996C 00C0982D */  daddu $s3, $a2, $zero
/* 188250 80259970 AFB1001C */  sw    $s1, 0x1c($sp)
/* 188254 80259974 241100FF */  addiu $s1, $zero, 0xff
/* 188258 80259978 AFB00018 */  sw    $s0, 0x18($sp)
/* 18825C 8025997C AFBF002C */  sw    $ra, 0x2c($sp)
/* 188260 80259980 AFB20020 */  sw    $s2, 0x20($sp)
/* 188264 80259984 84830098 */  lh    $v1, 0x98($a0)
/* 188268 80259988 8C9200C0 */  lw    $s2, 0xc0($a0)
/* 18826C 8025998C 0071102A */  slt   $v0, $v1, $s1
/* 188270 80259990 10400003 */  beqz  $v0, .L802599A0
/* 188274 80259994 0000802D */   daddu $s0, $zero, $zero
/* 188278 80259998 3C108000 */  lui   $s0, 0x8000
/* 18827C 8025999C 0060882D */  daddu $s1, $v1, $zero
.L802599A0:
/* 188280 802599A0 8C820000 */  lw    $v0, ($a0)
/* 188284 802599A4 30420100 */  andi  $v0, $v0, 0x100
/* 188288 802599A8 1040000C */  beqz  $v0, .L802599DC
/* 18828C 802599AC 3C038080 */   lui   $v1, 0x8080
/* 188290 802599B0 34638081 */  ori   $v1, $v1, 0x8081
/* 188294 802599B4 00111100 */  sll   $v0, $s1, 4
/* 188298 802599B8 00511023 */  subu  $v0, $v0, $s1
/* 18829C 802599BC 000210C0 */  sll   $v0, $v0, 3
/* 1882A0 802599C0 00430018 */  mult  $v0, $v1
/* 1882A4 802599C4 3C108000 */  lui   $s0, 0x8000
/* 1882A8 802599C8 00004010 */  mfhi  $t0
/* 1882AC 802599CC 01021821 */  addu  $v1, $t0, $v0
/* 1882B0 802599D0 000319C3 */  sra   $v1, $v1, 7
/* 1882B4 802599D4 000217C3 */  sra   $v0, $v0, 0x1f
/* 1882B8 802599D8 00628823 */  subu  $s1, $v1, $v0
.L802599DC:
/* 1882BC 802599DC 92420768 */  lbu   $v0, 0x768($s2)
/* 1882C0 802599E0 5040000A */  beql  $v0, $zero, .L80259A0C
/* 1882C4 802599E4 AFB30010 */   sw    $s3, 0x10($sp)
/* 1882C8 802599E8 0C096525 */  jal   func_80259494
/* 1882CC 802599EC 00000000 */   nop   
/* 1882D0 802599F0 AFB30010 */  sw    $s3, 0x10($sp)
/* 1882D4 802599F4 3C042000 */  lui   $a0, 0x2000
/* 1882D8 802599F8 02042025 */  or    $a0, $s0, $a0
/* 1882DC 802599FC 0280282D */  daddu $a1, $s4, $zero
/* 1882E0 80259A00 0220302D */  daddu $a2, $s1, $zero
/* 1882E4 80259A04 08096688 */  j     .L80259A20
/* 1882E8 80259A08 2647076C */   addiu $a3, $s2, 0x76c

.L80259A0C:
/* 1882EC 80259A0C 3C042000 */  lui   $a0, 0x2000
/* 1882F0 80259A10 02042025 */  or    $a0, $s0, $a0
/* 1882F4 80259A14 0280282D */  daddu $a1, $s4, $zero
/* 1882F8 80259A18 0220302D */  daddu $a2, $s1, $zero
/* 1882FC 80259A1C 264706D4 */  addiu $a3, $s2, 0x6d4
.L80259A20:
/* 188300 80259A20 0C0B7710 */  jal   render_sprite
/* 188304 80259A24 00000000 */   nop   
/* 188308 80259A28 8FBF002C */  lw    $ra, 0x2c($sp)
/* 18830C 80259A2C 8FB40028 */  lw    $s4, 0x28($sp)
/* 188310 80259A30 8FB30024 */  lw    $s3, 0x24($sp)
/* 188314 80259A34 8FB20020 */  lw    $s2, 0x20($sp)
/* 188318 80259A38 8FB1001C */  lw    $s1, 0x1c($sp)
/* 18831C 80259A3C 8FB00018 */  lw    $s0, 0x18($sp)
/* 188320 80259A40 03E00008 */  jr    $ra
/* 188324 80259A44 27BD0030 */   addiu $sp, $sp, 0x30

