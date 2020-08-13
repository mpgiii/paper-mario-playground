.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel update_component
/* 10020C 802DD11C 27BDFF88 */  addiu $sp, $sp, -0x78
/* 100210 802DD120 AFB1002C */  sw    $s1, 0x2c($sp)
/* 100214 802DD124 0080882D */  daddu $s1, $a0, $zero
/* 100218 802DD128 AFBF0040 */  sw    $ra, 0x40($sp)
/* 10021C 802DD12C AFB5003C */  sw    $s5, 0x3c($sp)
/* 100220 802DD130 AFB40038 */  sw    $s4, 0x38($sp)
/* 100224 802DD134 AFB30034 */  sw    $s3, 0x34($sp)
/* 100228 802DD138 AFB20030 */  sw    $s2, 0x30($sp)
/* 10022C 802DD13C AFB00028 */  sw    $s0, 0x28($sp)
/* 100230 802DD140 F7BE0070 */  sdc1  $f30, 0x70($sp)
/* 100234 802DD144 F7BC0068 */  sdc1  $f28, 0x68($sp)
/* 100238 802DD148 F7BA0060 */  sdc1  $f26, 0x60($sp)
/* 10023C 802DD14C F7B80058 */  sdc1  $f24, 0x58($sp)
/* 100240 802DD150 F7B60050 */  sdc1  $f22, 0x50($sp)
/* 100244 802DD154 F7B40048 */  sdc1  $f20, 0x48($sp)
/* 100248 802DD158 8E220000 */  lw    $v0, ($s1)
/* 10024C 802DD15C 10400126 */  beqz  $v0, .L802DD5F8
/* 100250 802DD160 00A0982D */   daddu $s3, $a1, $zero
/* 100254 802DD164 0000902D */  daddu $s2, $zero, $zero
/* 100258 802DD168 2414FFFF */  addiu $s4, $zero, -1
/* 10025C 802DD16C 3C013F80 */  lui   $at, 0x3f80
/* 100260 802DD170 4481A000 */  mtc1  $at, $f20
/* 100264 802DD174 8E300008 */  lw    $s0, 8($s1)
/* 100268 802DD178 C620000C */  lwc1  $f0, 0xc($s1)
/* 10026C 802DD17C 3C01802E */  lui   $at, 0x802e
/* 100270 802DD180 C422F4C0 */  lwc1  $f2, -0xb40($at)
/* 100274 802DD184 4600A786 */  mov.s $f30, $f20
/* 100278 802DD188 46020001 */  sub.s $f0, $f0, $f2
/* 10027C 802DD18C 44801000 */  mtc1  $zero, $f2
/* 100280 802DD190 4600A706 */  mov.s $f28, $f20
/* 100284 802DD194 4602003E */  c.le.s $f0, $f2
/* 100288 802DD198 00000000 */  nop   
/* 10028C 802DD19C 450000FC */  bc1f  .L802DD590
/* 100290 802DD1A0 E620000C */   swc1  $f0, 0xc($s1)
/* 100294 802DD1A4 46001606 */  mov.s $f24, $f2
/* 100298 802DD1A8 4600A586 */  mov.s $f22, $f20
/* 10029C 802DD1AC 0280A82D */  daddu $s5, $s4, $zero
/* 1002A0 802DD1B0 3C0142C8 */  lui   $at, 0x42c8
/* 1002A4 802DD1B4 4481D000 */  mtc1  $at, $f26
.L802DD1B8:
/* 1002A8 802DD1B8 96630004 */  lhu   $v1, 4($s3)
/* 1002AC 802DD1BC 00031C00 */  sll   $v1, $v1, 0x10
/* 1002B0 802DD1C0 00031403 */  sra   $v0, $v1, 0x10
/* 1002B4 802DD1C4 00031FC2 */  srl   $v1, $v1, 0x1f
/* 1002B8 802DD1C8 00431021 */  addu  $v0, $v0, $v1
/* 1002BC 802DD1CC 00021043 */  sra   $v0, $v0, 1
/* 1002C0 802DD1D0 8E630000 */  lw    $v1, ($s3)
/* 1002C4 802DD1D4 00021040 */  sll   $v0, $v0, 1
/* 1002C8 802DD1D8 00621021 */  addu  $v0, $v1, $v0
/* 1002CC 802DD1DC 0202102B */  sltu  $v0, $s0, $v0
/* 1002D0 802DD1E0 14400003 */  bnez  $v0, .L802DD1F0
/* 1002D4 802DD1E4 24024000 */   addiu $v0, $zero, 0x4000
/* 1002D8 802DD1E8 080B7564 */  j     .L802DD590
/* 1002DC 802DD1EC 0060802D */   daddu $s0, $v1, $zero

.L802DD1F0:
/* 1002E0 802DD1F0 96040000 */  lhu   $a0, ($s0)
/* 1002E4 802DD1F4 3083F000 */  andi  $v1, $a0, 0xf000
/* 1002E8 802DD1F8 10620089 */  beq   $v1, $v0, .L802DD420
/* 1002EC 802DD1FC 28624001 */   slti  $v0, $v1, 0x4001
/* 1002F0 802DD200 1040000F */  beqz  $v0, .L802DD240
/* 1002F4 802DD204 24021000 */   addiu $v0, $zero, 0x1000
/* 1002F8 802DD208 10620040 */  beq   $v1, $v0, .L802DD30C
/* 1002FC 802DD20C 28621001 */   slti  $v0, $v1, 0x1001
/* 100300 802DD210 50400005 */  beql  $v0, $zero, .L802DD228
/* 100304 802DD214 24022000 */   addiu $v0, $zero, 0x2000
/* 100308 802DD218 10600019 */  beqz  $v1, .L802DD280
/* 10030C 802DD21C 30820FFF */   andi  $v0, $a0, 0xfff
/* 100310 802DD220 080B755D */  j     .L802DD574
/* 100314 802DD224 00000000 */   nop   

.L802DD228:
/* 100318 802DD228 1062002C */  beq   $v1, $v0, .L802DD2DC
/* 10031C 802DD22C 24023000 */   addiu $v0, $zero, 0x3000
/* 100320 802DD230 1062005F */  beq   $v1, $v0, .L802DD3B0
/* 100324 802DD234 3083000F */   andi  $v1, $a0, 0xf
/* 100328 802DD238 080B755D */  j     .L802DD574
/* 10032C 802DD23C 00000000 */   nop   

.L802DD240:
/* 100330 802DD240 24026000 */  addiu $v0, $zero, 0x6000
/* 100334 802DD244 10620039 */  beq   $v1, $v0, .L802DD32C
/* 100338 802DD248 28626001 */   slti  $v0, $v1, 0x6001
/* 10033C 802DD24C 10400005 */  beqz  $v0, .L802DD264
/* 100340 802DD250 24025000 */   addiu $v0, $zero, 0x5000
/* 100344 802DD254 10620089 */  beq   $v1, $v0, .L802DD47C
/* 100348 802DD258 3083000F */   andi  $v1, $a0, 0xf
/* 10034C 802DD25C 080B755D */  j     .L802DD574
/* 100350 802DD260 00000000 */   nop   

.L802DD264:
/* 100354 802DD264 24027000 */  addiu $v0, $zero, 0x7000
/* 100358 802DD268 106200B3 */  beq   $v1, $v0, .L802DD538
/* 10035C 802DD26C 34028000 */   ori   $v0, $zero, 0x8000
/* 100360 802DD270 10620036 */  beq   $v1, $v0, .L802DD34C
/* 100364 802DD274 24020100 */   addiu $v0, $zero, 0x100
/* 100368 802DD278 080B755D */  j     .L802DD574
/* 10036C 802DD27C 00000000 */   nop   

.L802DD280:
/* 100370 802DD280 44820000 */  mtc1  $v0, $f0
/* 100374 802DD284 00000000 */  nop   
/* 100378 802DD288 46800020 */  cvt.s.w $f0, $f0
/* 10037C 802DD28C E620000C */  swc1  $f0, 0xc($s1)
/* 100380 802DD290 46180032 */  c.eq.s $f0, $f24
/* 100384 802DD294 00000000 */  nop   
/* 100388 802DD298 45000006 */  bc1f  .L802DD2B4
/* 10038C 802DD29C 26100002 */   addiu $s0, $s0, 2
/* 100390 802DD2A0 3C01457F */  lui   $at, 0x457f
/* 100394 802DD2A4 3421F000 */  ori   $at, $at, 0xf000
/* 100398 802DD2A8 44810000 */  mtc1  $at, $f0
/* 10039C 802DD2AC 00000000 */  nop   
/* 1003A0 802DD2B0 E620000C */  swc1  $f0, 0xc($s1)
.L802DD2B4:
/* 1003A4 802DD2B4 E6380024 */  swc1  $f24, 0x24($s1)
/* 1003A8 802DD2B8 E6380020 */  swc1  $f24, 0x20($s1)
/* 1003AC 802DD2BC E638001C */  swc1  $f24, 0x1c($s1)
/* 1003B0 802DD2C0 AE20003C */  sw    $zero, 0x3c($s1)
/* 1003B4 802DD2C4 AE200038 */  sw    $zero, 0x38($s1)
/* 1003B8 802DD2C8 AE200034 */  sw    $zero, 0x34($s1)
/* 1003BC 802DD2CC E6360048 */  swc1  $f22, 0x48($s1)
/* 1003C0 802DD2D0 E6360044 */  swc1  $f22, 0x44($s1)
/* 1003C4 802DD2D4 080B755F */  j     .L802DD57C
/* 1003C8 802DD2D8 E6360040 */   swc1  $f22, 0x40($s1)

.L802DD2DC:
/* 1003CC 802DD2DC 96040000 */  lhu   $a0, ($s0)
/* 1003D0 802DD2E0 0C0B7437 */  jal   _spr_sign_extend_12bit
/* 1003D4 802DD2E4 00000000 */   nop   
/* 1003D8 802DD2E8 8E630000 */  lw    $v1, ($s3)
/* 1003DC 802DD2EC 00021040 */  sll   $v0, $v0, 1
/* 1003E0 802DD2F0 00628021 */  addu  $s0, $v1, $v0
/* 1003E4 802DD2F4 161400A1 */  bne   $s0, $s4, .L802DD57C
/* 1003E8 802DD2F8 0200A02D */   daddu $s4, $s0, $zero
/* 1003EC 802DD2FC 0060802D */  daddu $s0, $v1, $zero
/* 1003F0 802DD300 E636000C */  swc1  $f22, 0xc($s1)
/* 1003F4 802DD304 080B755F */  j     .L802DD57C
/* 1003F8 802DD308 0200A02D */   daddu $s4, $s0, $zero

.L802DD30C:
/* 1003FC 802DD30C 30850FFF */  andi  $a1, $a0, 0xfff
/* 100400 802DD310 24020FFF */  addiu $v0, $zero, 0xfff
/* 100404 802DD314 10A20003 */  beq   $a1, $v0, .L802DD324
/* 100408 802DD318 26100002 */   addiu $s0, $s0, 2
/* 10040C 802DD31C 080B74D1 */  j     .L802DD344
/* 100410 802DD320 AE250014 */   sw    $a1, 0x14($s1)

.L802DD324:
/* 100414 802DD324 080B74D1 */  j     .L802DD344
/* 100418 802DD328 AE350014 */   sw    $s5, 0x14($s1)

.L802DD32C:
/* 10041C 802DD32C 30850FFF */  andi  $a1, $a0, 0xfff
/* 100420 802DD330 24020FFF */  addiu $v0, $zero, 0xfff
/* 100424 802DD334 10A20003 */  beq   $a1, $v0, .L802DD344
/* 100428 802DD338 26100002 */   addiu $s0, $s0, 2
/* 10042C 802DD33C 080B755F */  j     .L802DD57C
/* 100430 802DD340 AE250018 */   sw    $a1, 0x18($s1)

.L802DD344:
/* 100434 802DD344 080B755F */  j     .L802DD57C
/* 100438 802DD348 AE350018 */   sw    $s5, 0x18($s1)

.L802DD34C:
/* 10043C 802DD34C 96050000 */  lhu   $a1, ($s0)
/* 100440 802DD350 30A30F00 */  andi  $v1, $a1, 0xf00
/* 100444 802DD354 10620006 */  beq   $v1, $v0, .L802DD370
/* 100448 802DD358 26100002 */   addiu $s0, $s0, 2
/* 10044C 802DD35C 24020200 */  addiu $v0, $zero, 0x200
/* 100450 802DD360 10620009 */  beq   $v1, $v0, .L802DD388
/* 100454 802DD364 3C04FF00 */   lui   $a0, 0xff00
/* 100458 802DD368 080B755F */  j     .L802DD57C
/* 10045C 802DD36C 00000000 */   nop   

.L802DD370:
/* 100460 802DD370 8E220004 */  lw    $v0, 4($s1)
/* 100464 802DD374 3C03FFFF */  lui   $v1, 0xffff
/* 100468 802DD378 00431024 */  and   $v0, $v0, $v1
/* 10046C 802DD37C 00451025 */  or    $v0, $v0, $a1
/* 100470 802DD380 080B755F */  j     .L802DD57C
/* 100474 802DD384 AE220004 */   sw    $v0, 4($s1)

.L802DD388:
/* 100478 802DD388 3484FFFF */  ori   $a0, $a0, 0xffff
/* 10047C 802DD38C 8E230004 */  lw    $v1, 4($s1)
/* 100480 802DD390 30A200FF */  andi  $v0, $a1, 0xff
/* 100484 802DD394 3C01802E */  lui   $at, 0x802e
/* 100488 802DD398 AC22FEAC */  sw    $v0, -0x154($at)
/* 10048C 802DD39C 00021400 */  sll   $v0, $v0, 0x10
/* 100490 802DD3A0 00641824 */  and   $v1, $v1, $a0
/* 100494 802DD3A4 00621825 */  or    $v1, $v1, $v0
/* 100498 802DD3A8 080B755F */  j     .L802DD57C
/* 10049C 802DD3AC AE230004 */   sw    $v1, 4($s1)

.L802DD3B0:
/* 1004A0 802DD3B0 28620002 */  slti  $v0, $v1, 2
/* 1004A4 802DD3B4 10400071 */  beqz  $v0, .L802DD57C
/* 1004A8 802DD3B8 26100002 */   addiu $s0, $s0, 2
/* 1004AC 802DD3BC 0460006F */  bltz  $v1, .L802DD57C
/* 1004B0 802DD3C0 00000000 */   nop   
/* 1004B4 802DD3C4 96040000 */  lhu   $a0, ($s0)
/* 1004B8 802DD3C8 26100002 */  addiu $s0, $s0, 2
/* 1004BC 802DD3CC 0C0B743F */  jal   _spr_sign_extend_16bit
/* 1004C0 802DD3D0 36520001 */   ori   $s2, $s2, 1
/* 1004C4 802DD3D4 96040000 */  lhu   $a0, ($s0)
/* 1004C8 802DD3D8 26100002 */  addiu $s0, $s0, 2
/* 1004CC 802DD3DC 44822000 */  mtc1  $v0, $f4
/* 1004D0 802DD3E0 00000000 */  nop   
/* 1004D4 802DD3E4 46802120 */  cvt.s.w $f4, $f4
/* 1004D8 802DD3E8 0C0B743F */  jal   _spr_sign_extend_16bit
/* 1004DC 802DD3EC E7A40010 */   swc1  $f4, 0x10($sp)
/* 1004E0 802DD3F0 96040000 */  lhu   $a0, ($s0)
/* 1004E4 802DD3F4 26100002 */  addiu $s0, $s0, 2
/* 1004E8 802DD3F8 44822000 */  mtc1  $v0, $f4
/* 1004EC 802DD3FC 00000000 */  nop   
/* 1004F0 802DD400 46802120 */  cvt.s.w $f4, $f4
/* 1004F4 802DD404 0C0B743F */  jal   _spr_sign_extend_16bit
/* 1004F8 802DD408 E7A40014 */   swc1  $f4, 0x14($sp)
/* 1004FC 802DD40C 44822000 */  mtc1  $v0, $f4
/* 100500 802DD410 00000000 */  nop   
/* 100504 802DD414 46802120 */  cvt.s.w $f4, $f4
/* 100508 802DD418 080B755F */  j     .L802DD57C
/* 10050C 802DD41C E7A40018 */   swc1  $f4, 0x18($sp)

.L802DD420:
/* 100510 802DD420 96040000 */  lhu   $a0, ($s0)
/* 100514 802DD424 26100002 */  addiu $s0, $s0, 2
/* 100518 802DD428 0C0B7437 */  jal   _spr_sign_extend_12bit
/* 10051C 802DD42C 36520002 */   ori   $s2, $s2, 2
/* 100520 802DD430 96040000 */  lhu   $a0, ($s0)
/* 100524 802DD434 26100002 */  addiu $s0, $s0, 2
/* 100528 802DD438 44822000 */  mtc1  $v0, $f4
/* 10052C 802DD43C 00000000 */  nop   
/* 100530 802DD440 46802120 */  cvt.s.w $f4, $f4
/* 100534 802DD444 0C0B743F */  jal   _spr_sign_extend_16bit
/* 100538 802DD448 E7A4001C */   swc1  $f4, 0x1c($sp)
/* 10053C 802DD44C 96040000 */  lhu   $a0, ($s0)
/* 100540 802DD450 26100002 */  addiu $s0, $s0, 2
/* 100544 802DD454 44822000 */  mtc1  $v0, $f4
/* 100548 802DD458 00000000 */  nop   
/* 10054C 802DD45C 46802120 */  cvt.s.w $f4, $f4
/* 100550 802DD460 0C0B743F */  jal   _spr_sign_extend_16bit
/* 100554 802DD464 E7A40020 */   swc1  $f4, 0x20($sp)
/* 100558 802DD468 44822000 */  mtc1  $v0, $f4
/* 10055C 802DD46C 00000000 */  nop   
/* 100560 802DD470 46802120 */  cvt.s.w $f4, $f4
/* 100564 802DD474 080B755F */  j     .L802DD57C
/* 100568 802DD478 E7A40024 */   swc1  $f4, 0x24($sp)

.L802DD47C:
/* 10056C 802DD47C 24020001 */  addiu $v0, $zero, 1
/* 100570 802DD480 10620017 */  beq   $v1, $v0, .L802DD4E0
/* 100574 802DD484 26100002 */   addiu $s0, $s0, 2
/* 100578 802DD488 28620002 */  slti  $v0, $v1, 2
/* 10057C 802DD48C 50400005 */  beql  $v0, $zero, .L802DD4A4
/* 100580 802DD490 24020002 */   addiu $v0, $zero, 2
/* 100584 802DD494 10600009 */  beqz  $v1, .L802DD4BC
/* 100588 802DD498 00000000 */   nop   
/* 10058C 802DD49C 080B755F */  j     .L802DD57C
/* 100590 802DD4A0 36520004 */   ori   $s2, $s2, 4

.L802DD4A4:
/* 100594 802DD4A4 10620015 */  beq   $v1, $v0, .L802DD4FC
/* 100598 802DD4A8 24020003 */   addiu $v0, $zero, 3
/* 10059C 802DD4AC 1062001A */  beq   $v1, $v0, .L802DD518
/* 1005A0 802DD4B0 00000000 */   nop   
/* 1005A4 802DD4B4 080B755F */  j     .L802DD57C
/* 1005A8 802DD4B8 36520004 */   ori   $s2, $s2, 4

.L802DD4BC:
/* 1005AC 802DD4BC 96020000 */  lhu   $v0, ($s0)
/* 1005B0 802DD4C0 26100002 */  addiu $s0, $s0, 2
/* 1005B4 802DD4C4 44820000 */  mtc1  $v0, $f0
/* 1005B8 802DD4C8 00000000 */  nop   
/* 1005BC 802DD4CC 46800020 */  cvt.s.w $f0, $f0
/* 1005C0 802DD4D0 461A0503 */  div.s $f20, $f0, $f26
/* 1005C4 802DD4D4 4600A786 */  mov.s $f30, $f20
/* 1005C8 802DD4D8 080B754C */  j     .L802DD530
/* 1005CC 802DD4DC 4600A706 */   mov.s $f28, $f20

.L802DD4E0:
/* 1005D0 802DD4E0 96020000 */  lhu   $v0, ($s0)
/* 1005D4 802DD4E4 26100002 */  addiu $s0, $s0, 2
/* 1005D8 802DD4E8 44820000 */  mtc1  $v0, $f0
/* 1005DC 802DD4EC 00000000 */  nop   
/* 1005E0 802DD4F0 46800020 */  cvt.s.w $f0, $f0
/* 1005E4 802DD4F4 080B754C */  j     .L802DD530
/* 1005E8 802DD4F8 461A0703 */   div.s $f28, $f0, $f26

.L802DD4FC:
/* 1005EC 802DD4FC 96020000 */  lhu   $v0, ($s0)
/* 1005F0 802DD500 26100002 */  addiu $s0, $s0, 2
/* 1005F4 802DD504 44820000 */  mtc1  $v0, $f0
/* 1005F8 802DD508 00000000 */  nop   
/* 1005FC 802DD50C 46800020 */  cvt.s.w $f0, $f0
/* 100600 802DD510 080B754C */  j     .L802DD530
/* 100604 802DD514 461A0783 */   div.s $f30, $f0, $f26

.L802DD518:
/* 100608 802DD518 96020000 */  lhu   $v0, ($s0)
/* 10060C 802DD51C 26100002 */  addiu $s0, $s0, 2
/* 100610 802DD520 44820000 */  mtc1  $v0, $f0
/* 100614 802DD524 00000000 */  nop   
/* 100618 802DD528 46800020 */  cvt.s.w $f0, $f0
/* 10061C 802DD52C 461A0503 */  div.s $f20, $f0, $f26
.L802DD530:
/* 100620 802DD530 080B755F */  j     .L802DD57C
/* 100624 802DD534 36520004 */   ori   $s2, $s2, 4

.L802DD538:
/* 100628 802DD538 8E220010 */  lw    $v0, 0x10($s1)
/* 10062C 802DD53C 10400005 */  beqz  $v0, .L802DD554
/* 100630 802DD540 2442FFFF */   addiu $v0, $v0, -1
/* 100634 802DD544 14400005 */  bnez  $v0, .L802DD55C
/* 100638 802DD548 AE220010 */   sw    $v0, 0x10($s1)
/* 10063C 802DD54C 080B755F */  j     .L802DD57C
/* 100640 802DD550 26100004 */   addiu $s0, $s0, 4

.L802DD554:
/* 100644 802DD554 96020002 */  lhu   $v0, 2($s0)
/* 100648 802DD558 AE220010 */  sw    $v0, 0x10($s1)
.L802DD55C:
/* 10064C 802DD55C 0C0B7437 */  jal   _spr_sign_extend_12bit
/* 100650 802DD560 96040000 */   lhu   $a0, ($s0)
/* 100654 802DD564 8E630000 */  lw    $v1, ($s3)
/* 100658 802DD568 00021040 */  sll   $v0, $v0, 1
/* 10065C 802DD56C 080B755F */  j     .L802DD57C
/* 100660 802DD570 00628021 */   addu  $s0, $v1, $v0

.L802DD574:
/* 100664 802DD574 8E700000 */  lw    $s0, ($s3)
/* 100668 802DD578 E636000C */  swc1  $f22, 0xc($s1)
.L802DD57C:
/* 10066C 802DD57C C620000C */  lwc1  $f0, 0xc($s1)
/* 100670 802DD580 4618003E */  c.le.s $f0, $f24
/* 100674 802DD584 00000000 */  nop   
/* 100678 802DD588 4501FF0B */  bc1t  .L802DD1B8
/* 10067C 802DD58C 00000000 */   nop   
.L802DD590:
/* 100680 802DD590 32420001 */  andi  $v0, $s2, 1
/* 100684 802DD594 10400007 */  beqz  $v0, .L802DD5B4
/* 100688 802DD598 AE300008 */   sw    $s0, 8($s1)
/* 10068C 802DD59C C7A40010 */  lwc1  $f4, 0x10($sp)
/* 100690 802DD5A0 E624001C */  swc1  $f4, 0x1c($s1)
/* 100694 802DD5A4 C7A40014 */  lwc1  $f4, 0x14($sp)
/* 100698 802DD5A8 E6240020 */  swc1  $f4, 0x20($s1)
/* 10069C 802DD5AC C7A40018 */  lwc1  $f4, 0x18($sp)
/* 1006A0 802DD5B0 E6240024 */  swc1  $f4, 0x24($s1)
.L802DD5B4:
/* 1006A4 802DD5B4 32420002 */  andi  $v0, $s2, 2
/* 1006A8 802DD5B8 1040000A */  beqz  $v0, .L802DD5E4
/* 1006AC 802DD5BC 32420004 */   andi  $v0, $s2, 4
/* 1006B0 802DD5C0 C7A4001C */  lwc1  $f4, 0x1c($sp)
/* 1006B4 802DD5C4 4600210D */  trunc.w.s $f4, $f4
/* 1006B8 802DD5C8 E6240034 */  swc1  $f4, 0x34($s1)
/* 1006BC 802DD5CC C7A40020 */  lwc1  $f4, 0x20($sp)
/* 1006C0 802DD5D0 4600210D */  trunc.w.s $f4, $f4
/* 1006C4 802DD5D4 E6240038 */  swc1  $f4, 0x38($s1)
/* 1006C8 802DD5D8 C7A40024 */  lwc1  $f4, 0x24($sp)
/* 1006CC 802DD5DC 4600210D */  trunc.w.s $f4, $f4
/* 1006D0 802DD5E0 E624003C */  swc1  $f4, 0x3c($s1)
.L802DD5E4:
/* 1006D4 802DD5E4 10400004 */  beqz  $v0, .L802DD5F8
/* 1006D8 802DD5E8 00000000 */   nop   
/* 1006DC 802DD5EC E63C0040 */  swc1  $f28, 0x40($s1)
/* 1006E0 802DD5F0 E63E0044 */  swc1  $f30, 0x44($s1)
/* 1006E4 802DD5F4 E6340048 */  swc1  $f20, 0x48($s1)
.L802DD5F8:
/* 1006E8 802DD5F8 8FBF0040 */  lw    $ra, 0x40($sp)
/* 1006EC 802DD5FC 8FB5003C */  lw    $s5, 0x3c($sp)
/* 1006F0 802DD600 8FB40038 */  lw    $s4, 0x38($sp)
/* 1006F4 802DD604 8FB30034 */  lw    $s3, 0x34($sp)
/* 1006F8 802DD608 8FB20030 */  lw    $s2, 0x30($sp)
/* 1006FC 802DD60C 8FB1002C */  lw    $s1, 0x2c($sp)
/* 100700 802DD610 8FB00028 */  lw    $s0, 0x28($sp)
/* 100704 802DD614 D7BE0070 */  ldc1  $f30, 0x70($sp)
/* 100708 802DD618 D7BC0068 */  ldc1  $f28, 0x68($sp)
/* 10070C 802DD61C D7BA0060 */  ldc1  $f26, 0x60($sp)
/* 100710 802DD620 D7B80058 */  ldc1  $f24, 0x58($sp)
/* 100714 802DD624 D7B60050 */  ldc1  $f22, 0x50($sp)
/* 100718 802DD628 D7B40048 */  ldc1  $f20, 0x48($sp)
/* 10071C 802DD62C 03E00008 */  jr    $ra
/* 100720 802DD630 27BD0078 */   addiu $sp, $sp, 0x78

