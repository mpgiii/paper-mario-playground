.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_8025B1A8
/* 189A88 8025B1A8 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 189A8C 8025B1AC AFB20018 */  sw    $s2, 0x18($sp)
/* 189A90 8025B1B0 0080902D */  daddu $s2, $a0, $zero
/* 189A94 8025B1B4 AFB10014 */  sw    $s1, 0x14($sp)
/* 189A98 8025B1B8 00A0882D */  daddu $s1, $a1, $zero
/* 189A9C 8025B1BC AFB3001C */  sw    $s3, 0x1c($sp)
/* 189AA0 8025B1C0 00C0982D */  daddu $s3, $a2, $zero
/* 189AA4 8025B1C4 AFBF0028 */  sw    $ra, 0x28($sp)
/* 189AA8 8025B1C8 AFB50024 */  sw    $s5, 0x24($sp)
/* 189AAC 8025B1CC AFB40020 */  sw    $s4, 0x20($sp)
/* 189AB0 8025B1D0 AFB00010 */  sw    $s0, 0x10($sp)
/* 189AB4 8025B1D4 8E3000C0 */  lw    $s0, 0xc0($s1)
/* 189AB8 8025B1D8 820206C1 */  lb    $v0, 0x6c1($s0)
/* 189ABC 8025B1DC 8FB50040 */  lw    $s5, 0x40($sp)
/* 189AC0 8025B1E0 1040004B */  beqz  $v0, .L8025B310
/* 189AC4 8025B1E4 00E0A02D */   daddu $s4, $a3, $zero
/* 189AC8 8025B1E8 16400016 */  bnez  $s2, .L8025B244
/* 189ACC 8025B1EC 00000000 */   nop   
/* 189AD0 8025B1F0 0C0B7830 */  jal   func_802DE0C0
/* 189AD4 8025B1F4 96240088 */   lhu   $a0, 0x88($s1)
/* 189AD8 8025B1F8 AE0206D0 */  sw    $v0, 0x6d0($s0)
/* 189ADC 8025B1FC 0040202D */  daddu $a0, $v0, $zero
/* 189AE0 8025B200 A20006CD */  sb    $zero, 0x6cd($s0)
/* 189AE4 8025B204 8C830000 */  lw    $v1, ($a0)
/* 189AE8 8025B208 2402FFFF */  addiu $v0, $zero, -1
/* 189AEC 8025B20C 1062000B */  beq   $v1, $v0, .L8025B23C
/* 189AF0 8025B210 0080182D */   daddu $v1, $a0, $zero
/* 189AF4 8025B214 0040202D */  daddu $a0, $v0, $zero
.L8025B218:
/* 189AF8 8025B218 920206CD */  lbu   $v0, 0x6cd($s0)
/* 189AFC 8025B21C 24420001 */  addiu $v0, $v0, 1
/* 189B00 8025B220 A20206CD */  sb    $v0, 0x6cd($s0)
/* 189B04 8025B224 00021600 */  sll   $v0, $v0, 0x18
/* 189B08 8025B228 00021583 */  sra   $v0, $v0, 0x16
/* 189B0C 8025B22C 00431021 */  addu  $v0, $v0, $v1
/* 189B10 8025B230 8C420000 */  lw    $v0, ($v0)
/* 189B14 8025B234 1444FFF8 */  bne   $v0, $a0, .L8025B218
/* 189B18 8025B238 00000000 */   nop   
.L8025B23C:
/* 189B1C 8025B23C 08096CA7 */  j     .L8025B29C
/* 189B20 8025B240 24020006 */   addiu $v0, $zero, 6

.L8025B244:
/* 189B24 8025B244 96240088 */  lhu   $a0, 0x88($s1)
/* 189B28 8025B248 0C0B7A90 */  jal   func_802DEA40
/* 189B2C 8025B24C 00000000 */   nop   
/* 189B30 8025B250 AE0206D0 */  sw    $v0, 0x6d0($s0)
/* 189B34 8025B254 0040202D */  daddu $a0, $v0, $zero
/* 189B38 8025B258 A20006CD */  sb    $zero, 0x6cd($s0)
/* 189B3C 8025B25C 8C830000 */  lw    $v1, ($a0)
/* 189B40 8025B260 2402FFFF */  addiu $v0, $zero, -1
/* 189B44 8025B264 1062000B */  beq   $v1, $v0, .L8025B294
/* 189B48 8025B268 0080182D */   daddu $v1, $a0, $zero
/* 189B4C 8025B26C 0040202D */  daddu $a0, $v0, $zero
.L8025B270:
/* 189B50 8025B270 920206CD */  lbu   $v0, 0x6cd($s0)
/* 189B54 8025B274 24420001 */  addiu $v0, $v0, 1
/* 189B58 8025B278 A20206CD */  sb    $v0, 0x6cd($s0)
/* 189B5C 8025B27C 00021600 */  sll   $v0, $v0, 0x18
/* 189B60 8025B280 00021583 */  sra   $v0, $v0, 0x16
/* 189B64 8025B284 00431021 */  addu  $v0, $v0, $v1
/* 189B68 8025B288 8C420000 */  lw    $v0, ($v0)
/* 189B6C 8025B28C 1444FFF8 */  bne   $v0, $a0, .L8025B270
/* 189B70 8025B290 00000000 */   nop   
.L8025B294:
/* 189B74 8025B294 0C0B7A9B */  jal   func_802DEA6C
/* 189B78 8025B298 96240088 */   lhu   $a0, 0x88($s1)
.L8025B29C:
/* 189B7C 8025B29C A20206CC */  sb    $v0, 0x6cc($s0)
/* 189B80 8025B2A0 820206CD */  lb    $v0, 0x6cd($s0)
/* 189B84 8025B2A4 18400015 */  blez  $v0, .L8025B2FC
/* 189B88 8025B2A8 0000302D */   daddu $a2, $zero, $zero
.L8025B2AC:
/* 189B8C 8025B2AC 8E0206D0 */  lw    $v0, 0x6d0($s0)
/* 189B90 8025B2B0 00061880 */  sll   $v1, $a2, 2
/* 189B94 8025B2B4 00621821 */  addu  $v1, $v1, $v0
/* 189B98 8025B2B8 00061140 */  sll   $v0, $a2, 5
/* 189B9C 8025B2BC 8C630000 */  lw    $v1, ($v1)
/* 189BA0 8025B2C0 10600009 */  beqz  $v1, .L8025B2E8
/* 189BA4 8025B2C4 02022821 */   addu  $a1, $s0, $v0
/* 189BA8 8025B2C8 0000202D */  daddu $a0, $zero, $zero
.L8025B2CC:
/* 189BAC 8025B2CC 94620000 */  lhu   $v0, ($v1)
/* 189BB0 8025B2D0 24630002 */  addiu $v1, $v1, 2
/* 189BB4 8025B2D4 24840001 */  addiu $a0, $a0, 1
/* 189BB8 8025B2D8 A4A20000 */  sh    $v0, ($a1)
/* 189BBC 8025B2DC 28820010 */  slti  $v0, $a0, 0x10
/* 189BC0 8025B2E0 1440FFFA */  bnez  $v0, .L8025B2CC
/* 189BC4 8025B2E4 24A50002 */   addiu $a1, $a1, 2
.L8025B2E8:
/* 189BC8 8025B2E8 820206CD */  lb    $v0, 0x6cd($s0)
/* 189BCC 8025B2EC 24C60001 */  addiu $a2, $a2, 1
/* 189BD0 8025B2F0 00C2102A */  slt   $v0, $a2, $v0
/* 189BD4 8025B2F4 1440FFED */  bnez  $v0, .L8025B2AC
/* 189BD8 8025B2F8 00000000 */   nop   
.L8025B2FC:
/* 189BDC 8025B2FC 2402FFFE */  addiu $v0, $zero, -2
/* 189BE0 8025B300 A20206C2 */  sb    $v0, 0x6c2($s0)
/* 189BE4 8025B304 A60006CA */  sh    $zero, 0x6ca($s0)
/* 189BE8 8025B308 A20006C1 */  sb    $zero, 0x6c1($s0)
/* 189BEC 8025B30C A60006C8 */  sh    $zero, 0x6c8($s0)
.L8025B310:
/* 189BF0 8025B310 16A0001E */  bnez  $s5, .L8025B38C
/* 189BF4 8025B314 00000000 */   nop   
/* 189BF8 8025B318 860206C8 */  lh    $v0, 0x6c8($s0)
/* 189BFC 8025B31C 14400013 */  bnez  $v0, .L8025B36C
/* 189C00 8025B320 00000000 */   nop   
/* 189C04 8025B324 920206C2 */  lbu   $v0, 0x6c2($s0)
/* 189C08 8025B328 3C048028 */  lui   $a0, 0x8028
/* 189C0C 8025B32C 24844120 */  addiu $a0, $a0, 0x4120
/* 189C10 8025B330 24420002 */  addiu $v0, $v0, 2
/* 189C14 8025B334 A20206C2 */  sb    $v0, 0x6c2($s0)
/* 189C18 8025B338 00021600 */  sll   $v0, $v0, 0x18
/* 189C1C 8025B33C 00021603 */  sra   $v0, $v0, 0x18
/* 189C20 8025B340 3C038028 */  lui   $v1, 0x8028
/* 189C24 8025B344 00621821 */  addu  $v1, $v1, $v0
/* 189C28 8025B348 90634120 */  lbu   $v1, 0x4120($v1)
/* 189C2C 8025B34C 240200FF */  addiu $v0, $zero, 0xff
/* 189C30 8025B350 50620001 */  beql  $v1, $v0, .L8025B358
/* 189C34 8025B354 A20006C2 */   sb    $zero, 0x6c2($s0)
.L8025B358:
/* 189C38 8025B358 820206C2 */  lb    $v0, 0x6c2($s0)
/* 189C3C 8025B35C 00441021 */  addu  $v0, $v0, $a0
/* 189C40 8025B360 90420001 */  lbu   $v0, 1($v0)
/* 189C44 8025B364 00021042 */  srl   $v0, $v0, 1
/* 189C48 8025B368 A60206C8 */  sh    $v0, 0x6c8($s0)
.L8025B36C:
/* 189C4C 8025B36C 820306C2 */  lb    $v1, 0x6c2($s0)
/* 189C50 8025B370 960206C8 */  lhu   $v0, 0x6c8($s0)
/* 189C54 8025B374 3C018028 */  lui   $at, 0x8028
/* 189C58 8025B378 00230821 */  addu  $at, $at, $v1
/* 189C5C 8025B37C 90234120 */  lbu   $v1, 0x4120($at)
/* 189C60 8025B380 2442FFFF */  addiu $v0, $v0, -1
/* 189C64 8025B384 08096CE7 */  j     .L8025B39C
/* 189C68 8025B388 A60206C8 */   sh    $v0, 0x6c8($s0)

.L8025B38C:
/* 189C6C 8025B38C 820206C2 */  lb    $v0, 0x6c2($s0)
/* 189C70 8025B390 3C038028 */  lui   $v1, 0x8028
/* 189C74 8025B394 00621821 */  addu  $v1, $v1, $v0
/* 189C78 8025B398 90634120 */  lbu   $v1, 0x4120($v1)
.L8025B39C:
/* 189C7C 8025B39C 24020001 */  addiu $v0, $zero, 1
/* 189C80 8025B3A0 10620024 */  beq   $v1, $v0, .L8025B434
/* 189C84 8025B3A4 28620002 */   slti  $v0, $v1, 2
/* 189C88 8025B3A8 10400005 */  beqz  $v0, .L8025B3C0
/* 189C8C 8025B3AC 24020002 */   addiu $v0, $zero, 2
/* 189C90 8025B3B0 10600007 */  beqz  $v1, .L8025B3D0
/* 189C94 8025B3B4 00000000 */   nop   
/* 189C98 8025B3B8 08096D4C */  j     .L8025B530
/* 189C9C 8025B3BC 00000000 */   nop   

.L8025B3C0:
/* 189CA0 8025B3C0 1062003C */  beq   $v1, $v0, .L8025B4B4
/* 189CA4 8025B3C4 00000000 */   nop   
/* 189CA8 8025B3C8 08096D4C */  j     .L8025B530
/* 189CAC 8025B3CC 00000000 */   nop   

.L8025B3D0:
/* 189CB0 8025B3D0 820206CC */  lb    $v0, 0x6cc($s0)
/* 189CB4 8025B3D4 18400056 */  blez  $v0, .L8025B530
/* 189CB8 8025B3D8 0000302D */   daddu $a2, $zero, $zero
.L8025B3DC:
/* 189CBC 8025B3DC 8E0206D0 */  lw    $v0, 0x6d0($s0)
/* 189CC0 8025B3E0 00061880 */  sll   $v1, $a2, 2
/* 189CC4 8025B3E4 00621821 */  addu  $v1, $v1, $v0
/* 189CC8 8025B3E8 00061140 */  sll   $v0, $a2, 5
/* 189CCC 8025B3EC 8C630000 */  lw    $v1, ($v1)
/* 189CD0 8025B3F0 10600009 */  beqz  $v1, .L8025B418
/* 189CD4 8025B3F4 02022821 */   addu  $a1, $s0, $v0
/* 189CD8 8025B3F8 0000202D */  daddu $a0, $zero, $zero
.L8025B3FC:
/* 189CDC 8025B3FC 94620000 */  lhu   $v0, ($v1)
/* 189CE0 8025B400 24630002 */  addiu $v1, $v1, 2
/* 189CE4 8025B404 24840001 */  addiu $a0, $a0, 1
/* 189CE8 8025B408 A4A20000 */  sh    $v0, ($a1)
/* 189CEC 8025B40C 28820010 */  slti  $v0, $a0, 0x10
/* 189CF0 8025B410 1440FFFA */  bnez  $v0, .L8025B3FC
/* 189CF4 8025B414 24A50002 */   addiu $a1, $a1, 2
.L8025B418:
/* 189CF8 8025B418 820206CC */  lb    $v0, 0x6cc($s0)
/* 189CFC 8025B41C 24C60001 */  addiu $a2, $a2, 1
/* 189D00 8025B420 00C2102A */  slt   $v0, $a2, $v0
/* 189D04 8025B424 10400042 */  beqz  $v0, .L8025B530
/* 189D08 8025B428 00000000 */   nop   
/* 189D0C 8025B42C 08096CF7 */  j     .L8025B3DC
/* 189D10 8025B430 00000000 */   nop   

.L8025B434:
/* 189D14 8025B434 820206CC */  lb    $v0, 0x6cc($s0)
/* 189D18 8025B438 920306CC */  lbu   $v1, 0x6cc($s0)
/* 189D1C 8025B43C 1840003C */  blez  $v0, .L8025B530
/* 189D20 8025B440 0000302D */   daddu $a2, $zero, $zero
/* 189D24 8025B444 00031E00 */  sll   $v1, $v1, 0x18
.L8025B448:
/* 189D28 8025B448 00031E03 */  sra   $v1, $v1, 0x18
/* 189D2C 8025B44C 00031080 */  sll   $v0, $v1, 2
/* 189D30 8025B450 00431021 */  addu  $v0, $v0, $v1
/* 189D34 8025B454 00461021 */  addu  $v0, $v0, $a2
/* 189D38 8025B458 8E0306D0 */  lw    $v1, 0x6d0($s0)
/* 189D3C 8025B45C 00021080 */  sll   $v0, $v0, 2
/* 189D40 8025B460 00431021 */  addu  $v0, $v0, $v1
/* 189D44 8025B464 8C430000 */  lw    $v1, ($v0)
/* 189D48 8025B468 00061140 */  sll   $v0, $a2, 5
/* 189D4C 8025B46C 10600009 */  beqz  $v1, .L8025B494
/* 189D50 8025B470 02022821 */   addu  $a1, $s0, $v0
/* 189D54 8025B474 0000202D */  daddu $a0, $zero, $zero
.L8025B478:
/* 189D58 8025B478 94620000 */  lhu   $v0, ($v1)
/* 189D5C 8025B47C 24630002 */  addiu $v1, $v1, 2
/* 189D60 8025B480 24840001 */  addiu $a0, $a0, 1
/* 189D64 8025B484 A4A20000 */  sh    $v0, ($a1)
/* 189D68 8025B488 28820010 */  slti  $v0, $a0, 0x10
/* 189D6C 8025B48C 1440FFFA */  bnez  $v0, .L8025B478
/* 189D70 8025B490 24A50002 */   addiu $a1, $a1, 2
.L8025B494:
/* 189D74 8025B494 24C60001 */  addiu $a2, $a2, 1
/* 189D78 8025B498 820206CC */  lb    $v0, 0x6cc($s0)
/* 189D7C 8025B49C 920306CC */  lbu   $v1, 0x6cc($s0)
/* 189D80 8025B4A0 00C2102A */  slt   $v0, $a2, $v0
/* 189D84 8025B4A4 5440FFE8 */  bnezl $v0, .L8025B448
/* 189D88 8025B4A8 00031E00 */   sll   $v1, $v1, 0x18
/* 189D8C 8025B4AC 08096D4C */  j     .L8025B530
/* 189D90 8025B4B0 00000000 */   nop   

.L8025B4B4:
/* 189D94 8025B4B4 820206CC */  lb    $v0, 0x6cc($s0)
/* 189D98 8025B4B8 920306CC */  lbu   $v1, 0x6cc($s0)
/* 189D9C 8025B4BC 1840001C */  blez  $v0, .L8025B530
/* 189DA0 8025B4C0 0000302D */   daddu $a2, $zero, $zero
/* 189DA4 8025B4C4 00031E00 */  sll   $v1, $v1, 0x18
.L8025B4C8:
/* 189DA8 8025B4C8 00031E03 */  sra   $v1, $v1, 0x18
/* 189DAC 8025B4CC 00031040 */  sll   $v0, $v1, 1
/* 189DB0 8025B4D0 00431021 */  addu  $v0, $v0, $v1
/* 189DB4 8025B4D4 00021040 */  sll   $v0, $v0, 1
/* 189DB8 8025B4D8 00461021 */  addu  $v0, $v0, $a2
/* 189DBC 8025B4DC 8E0306D0 */  lw    $v1, 0x6d0($s0)
/* 189DC0 8025B4E0 00021080 */  sll   $v0, $v0, 2
/* 189DC4 8025B4E4 00431021 */  addu  $v0, $v0, $v1
/* 189DC8 8025B4E8 8C430000 */  lw    $v1, ($v0)
/* 189DCC 8025B4EC 00061140 */  sll   $v0, $a2, 5
/* 189DD0 8025B4F0 10600009 */  beqz  $v1, .L8025B518
/* 189DD4 8025B4F4 02022821 */   addu  $a1, $s0, $v0
/* 189DD8 8025B4F8 0000202D */  daddu $a0, $zero, $zero
.L8025B4FC:
/* 189DDC 8025B4FC 94620000 */  lhu   $v0, ($v1)
/* 189DE0 8025B500 24630002 */  addiu $v1, $v1, 2
/* 189DE4 8025B504 24840001 */  addiu $a0, $a0, 1
/* 189DE8 8025B508 A4A20000 */  sh    $v0, ($a1)
/* 189DEC 8025B50C 28820010 */  slti  $v0, $a0, 0x10
/* 189DF0 8025B510 1440FFFA */  bnez  $v0, .L8025B4FC
/* 189DF4 8025B514 24A50002 */   addiu $a1, $a1, 2
.L8025B518:
/* 189DF8 8025B518 24C60001 */  addiu $a2, $a2, 1
/* 189DFC 8025B51C 820206CC */  lb    $v0, 0x6cc($s0)
/* 189E00 8025B520 920306CC */  lbu   $v1, 0x6cc($s0)
/* 189E04 8025B524 00C2102A */  slt   $v0, $a2, $v0
/* 189E08 8025B528 5440FFE7 */  bnezl $v0, .L8025B4C8
/* 189E0C 8025B52C 00031E00 */   sll   $v1, $v1, 0x18
.L8025B530:
.L8025B530:
/* 189E10 8025B530 820206CD */  lb    $v0, 0x6cd($s0)
/* 189E14 8025B534 1840000A */  blez  $v0, .L8025B560
/* 189E18 8025B538 0000302D */   daddu $a2, $zero, $zero
/* 189E1C 8025B53C 0200202D */  daddu $a0, $s0, $zero
/* 189E20 8025B540 0200182D */  daddu $v1, $s0, $zero
.L8025B544:
/* 189E24 8025B544 AC6406D4 */  sw    $a0, 0x6d4($v1)
/* 189E28 8025B548 24840020 */  addiu $a0, $a0, 0x20
/* 189E2C 8025B54C 820206CD */  lb    $v0, 0x6cd($s0)
/* 189E30 8025B550 24C60001 */  addiu $a2, $a2, 1
/* 189E34 8025B554 00C2102A */  slt   $v0, $a2, $v0
/* 189E38 8025B558 1440FFFA */  bnez  $v0, .L8025B544
/* 189E3C 8025B55C 24630004 */   addiu $v1, $v1, 4
.L8025B560:
/* 189E40 8025B560 16400006 */  bnez  $s2, .L8025B57C
/* 189E44 8025B564 0220202D */   daddu $a0, $s1, $zero
/* 189E48 8025B568 0260282D */  daddu $a1, $s3, $zero
/* 189E4C 8025B56C 0C096657 */  jal   func_8025995C
/* 189E50 8025B570 0280302D */   daddu $a2, $s4, $zero
/* 189E54 8025B574 08096D62 */  j     .L8025B588
/* 189E58 8025B578 00000000 */   nop   

.L8025B57C:
/* 189E5C 8025B57C 0260282D */  daddu $a1, $s3, $zero
/* 189E60 8025B580 0C0965B0 */  jal   func_802596C0
/* 189E64 8025B584 0280302D */   daddu $a2, $s4, $zero
.L8025B588:
/* 189E68 8025B588 16A00004 */  bnez  $s5, .L8025B59C
/* 189E6C 8025B58C 00000000 */   nop   
/* 189E70 8025B590 960206CA */  lhu   $v0, 0x6ca($s0)
/* 189E74 8025B594 2442FFFF */  addiu $v0, $v0, -1
/* 189E78 8025B598 A60206CA */  sh    $v0, 0x6ca($s0)
.L8025B59C:
/* 189E7C 8025B59C 8FBF0028 */  lw    $ra, 0x28($sp)
/* 189E80 8025B5A0 8FB50024 */  lw    $s5, 0x24($sp)
/* 189E84 8025B5A4 8FB40020 */  lw    $s4, 0x20($sp)
/* 189E88 8025B5A8 8FB3001C */  lw    $s3, 0x1c($sp)
/* 189E8C 8025B5AC 8FB20018 */  lw    $s2, 0x18($sp)
/* 189E90 8025B5B0 8FB10014 */  lw    $s1, 0x14($sp)
/* 189E94 8025B5B4 8FB00010 */  lw    $s0, 0x10($sp)
/* 189E98 8025B5B8 03E00008 */  jr    $ra
/* 189E9C 8025B5BC 27BD0030 */   addiu $sp, $sp, 0x30

