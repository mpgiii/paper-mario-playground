.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel fx_127_update
/* 404324 E011A104 27BDFFD0 */  addiu     $sp, $sp, -0x30
/* 404328 E011A108 AFBF002C */  sw        $ra, 0x2c($sp)
/* 40432C E011A10C AFB60028 */  sw        $s6, 0x28($sp)
/* 404330 E011A110 AFB50024 */  sw        $s5, 0x24($sp)
/* 404334 E011A114 AFB40020 */  sw        $s4, 0x20($sp)
/* 404338 E011A118 AFB3001C */  sw        $s3, 0x1c($sp)
/* 40433C E011A11C AFB20018 */  sw        $s2, 0x18($sp)
/* 404340 E011A120 AFB10014 */  sw        $s1, 0x14($sp)
/* 404344 E011A124 AFB00010 */  sw        $s0, 0x10($sp)
/* 404348 E011A128 8C830000 */  lw        $v1, ($a0)
/* 40434C E011A12C 8C91000C */  lw        $s1, 0xc($a0)
/* 404350 E011A130 30620010 */  andi      $v0, $v1, 0x10
/* 404354 E011A134 86360000 */  lh        $s6, ($s1)
/* 404358 E011A138 10400005 */  beqz      $v0, .LE011A150
/* 40435C E011A13C 2402FFEF */   addiu    $v0, $zero, -0x11
/* 404360 E011A140 00621024 */  and       $v0, $v1, $v0
/* 404364 E011A144 AC820000 */  sw        $v0, ($a0)
/* 404368 E011A148 24020010 */  addiu     $v0, $zero, 0x10
/* 40436C E011A14C AE220004 */  sw        $v0, 4($s1)
.LE011A150:
/* 404370 E011A150 8E230004 */  lw        $v1, 4($s1)
/* 404374 E011A154 286203E8 */  slti      $v0, $v1, 0x3e8
/* 404378 E011A158 10400002 */  beqz      $v0, .LE011A164
/* 40437C E011A15C 2462FFFF */   addiu    $v0, $v1, -1
/* 404380 E011A160 AE220004 */  sw        $v0, 4($s1)
.LE011A164:
/* 404384 E011A164 8E220008 */  lw        $v0, 8($s1)
/* 404388 E011A168 8E230004 */  lw        $v1, 4($s1)
/* 40438C E011A16C 24450001 */  addiu     $a1, $v0, 1
/* 404390 E011A170 04610005 */  bgez      $v1, .LE011A188
/* 404394 E011A174 AE250008 */   sw       $a1, 8($s1)
/* 404398 E011A178 0C080128 */  jal       shim_remove_effect
/* 40439C E011A17C 00000000 */   nop
/* 4043A0 E011A180 080468DC */  j         .LE011A370
/* 4043A4 E011A184 00000000 */   nop
.LE011A188:
/* 4043A8 E011A188 3C028888 */  lui       $v0, 0x8888
/* 4043AC E011A18C 34428889 */  ori       $v0, $v0, 0x8889
/* 4043B0 E011A190 00A20018 */  mult      $a1, $v0
/* 4043B4 E011A194 0000982D */  daddu     $s3, $zero, $zero
/* 4043B8 E011A198 24140001 */  addiu     $s4, $zero, 1
/* 4043BC E011A19C 2412000C */  addiu     $s2, $zero, 0xc
/* 4043C0 E011A1A0 000517C3 */  sra       $v0, $a1, 0x1f
/* 4043C4 E011A1A4 00003010 */  mfhi      $a2
/* 4043C8 E011A1A8 00C51821 */  addu      $v1, $a2, $a1
/* 4043CC E011A1AC 00031903 */  sra       $v1, $v1, 4
/* 4043D0 E011A1B0 00621823 */  subu      $v1, $v1, $v0
/* 4043D4 E011A1B4 00031100 */  sll       $v0, $v1, 4
/* 4043D8 E011A1B8 00431023 */  subu      $v0, $v0, $v1
/* 4043DC E011A1BC 02821004 */  sllv      $v0, $v0, $s4
/* 4043E0 E011A1C0 00A2A823 */  subu      $s5, $a1, $v0
.LE011A1C4:
/* 4043E4 E011A1C4 02328021 */  addu      $s0, $s1, $s2
/* 4043E8 E011A1C8 86020004 */  lh        $v0, 4($s0)
/* 4043EC E011A1CC 04420001 */  bltzl     $v0, .LE011A1D4
/* 4043F0 E011A1D0 A6000004 */   sh       $zero, 4($s0)
.LE011A1D4:
/* 4043F4 E011A1D4 16D40006 */  bne       $s6, $s4, .LE011A1F0
/* 4043F8 E011A1D8 00000000 */   nop
/* 4043FC E011A1DC 16A00004 */  bnez      $s5, .LE011A1F0
/* 404400 E011A1E0 00000000 */   nop
/* 404404 E011A1E4 0C080138 */  jal       shim_rand_int
/* 404408 E011A1E8 24040004 */   addiu    $a0, $zero, 4
/* 40440C E011A1EC A6020004 */  sh        $v0, 4($s0)
.LE011A1F0:
/* 404410 E011A1F0 86030006 */  lh        $v1, 6($s0)
/* 404414 E011A1F4 2C620029 */  sltiu     $v0, $v1, 0x29
/* 404418 E011A1F8 10400059 */  beqz      $v0, LE011A360_404580
/* 40441C E011A1FC 00031080 */   sll      $v0, $v1, 2
/* 404420 E011A200 3C01E012 */  lui       $at, %hi(jtbl_E011AC70)
/* 404424 E011A204 00220821 */  addu      $at, $at, $v0
/* 404428 E011A208 8C22AC70 */  lw        $v0, %lo(jtbl_E011AC70)($at)
/* 40442C E011A20C 00400008 */  jr        $v0
/* 404430 E011A210 00000000 */   nop
dlabel LE011A214_404434
/* 404434 E011A214 86030000 */  lh        $v1, ($s0)
/* 404438 E011A218 240200FF */  addiu     $v0, $zero, 0xff
/* 40443C E011A21C 14620011 */  bne       $v1, $v0, .LE011A264
/* 404440 E011A220 00000000 */   nop
/* 404444 E011A224 86040004 */  lh        $a0, 4($s0)
/* 404448 E011A228 86030002 */  lh        $v1, 2($s0)
/* 40444C E011A22C 0083102A */  slt       $v0, $a0, $v1
/* 404450 E011A230 10400003 */  beqz      $v0, .LE011A240
/* 404454 E011A234 0064102A */   slt      $v0, $v1, $a0
/* 404458 E011A238 080468D8 */  j         LE011A360_404580
/* 40445C E011A23C A6140006 */   sh       $s4, 6($s0)
.LE011A240:
/* 404460 E011A240 10400003 */  beqz      $v0, .LE011A250
/* 404464 E011A244 24020002 */   addiu    $v0, $zero, 2
/* 404468 E011A248 080468D8 */  j         LE011A360_404580
/* 40446C E011A24C A6020006 */   sh       $v0, 6($s0)
.LE011A250:
/* 404470 E011A250 54600044 */  bnel      $v1, $zero, .LE011A364
/* 404474 E011A254 26730001 */   addiu    $s3, $s3, 1
/* 404478 E011A258 24020003 */  addiu     $v0, $zero, 3
/* 40447C E011A25C 080468D8 */  j         LE011A360_404580
/* 404480 E011A260 A6020006 */   sh       $v0, 6($s0)
.LE011A264:
/* 404484 E011A264 5460003F */  bnel      $v1, $zero, .LE011A364
/* 404488 E011A268 26730001 */   addiu    $s3, $s3, 1
/* 40448C E011A26C 86020004 */  lh        $v0, 4($s0)
/* 404490 E011A270 1840003B */  blez      $v0, LE011A360_404580
/* 404494 E011A274 24020004 */   addiu    $v0, $zero, 4
/* 404498 E011A278 080468D8 */  j         LE011A360_404580
/* 40449C E011A27C A6020006 */   sh       $v0, 6($s0)
dlabel LE011A280_4044A0
/* 4044A0 E011A280 2402000A */  addiu     $v0, $zero, 0xa
/* 4044A4 E011A284 A6000008 */  sh        $zero, 8($s0)
/* 4044A8 E011A288 A6020006 */  sh        $v0, 6($s0)
dlabel LE011A28C_4044AC
/* 4044AC E011A28C 96020008 */  lhu       $v0, 8($s0)
/* 4044B0 E011A290 24420001 */  addiu     $v0, $v0, 1
/* 4044B4 E011A294 A6020008 */  sh        $v0, 8($s0)
/* 4044B8 E011A298 00021400 */  sll       $v0, $v0, 0x10
/* 4044BC E011A29C 00021403 */  sra       $v0, $v0, 0x10
/* 4044C0 E011A2A0 2842000B */  slti      $v0, $v0, 0xb
/* 4044C4 E011A2A4 5440002F */  bnel      $v0, $zero, .LE011A364
/* 4044C8 E011A2A8 26730001 */   addiu    $s3, $s3, 1
/* 4044CC E011A2AC 96020002 */  lhu       $v0, 2($s0)
/* 4044D0 E011A2B0 A6000008 */  sh        $zero, 8($s0)
/* 4044D4 E011A2B4 A6000006 */  sh        $zero, 6($s0)
/* 4044D8 E011A2B8 2442FFFF */  addiu     $v0, $v0, -1
/* 4044DC E011A2BC 080468D8 */  j         LE011A360_404580
/* 4044E0 E011A2C0 A6020002 */   sh       $v0, 2($s0)
dlabel LE011A2C4_4044E4
/* 4044E4 E011A2C4 24020014 */  addiu     $v0, $zero, 0x14
/* 4044E8 E011A2C8 A6000008 */  sh        $zero, 8($s0)
/* 4044EC E011A2CC A6020006 */  sh        $v0, 6($s0)
dlabel LE011A2D0_4044F0
/* 4044F0 E011A2D0 96020008 */  lhu       $v0, 8($s0)
/* 4044F4 E011A2D4 24420001 */  addiu     $v0, $v0, 1
/* 4044F8 E011A2D8 A6020008 */  sh        $v0, 8($s0)
/* 4044FC E011A2DC 00021400 */  sll       $v0, $v0, 0x10
/* 404500 E011A2E0 00021403 */  sra       $v0, $v0, 0x10
/* 404504 E011A2E4 2842000B */  slti      $v0, $v0, 0xb
/* 404508 E011A2E8 5440001E */  bnel      $v0, $zero, .LE011A364
/* 40450C E011A2EC 26730001 */   addiu    $s3, $s3, 1
/* 404510 E011A2F0 96020004 */  lhu       $v0, 4($s0)
/* 404514 E011A2F4 A6000008 */  sh        $zero, 8($s0)
/* 404518 E011A2F8 A6000006 */  sh        $zero, 6($s0)
/* 40451C E011A2FC 080468D8 */  j         LE011A360_404580
/* 404520 E011A300 A6020002 */   sh       $v0, 2($s0)
dlabel LE011A304_404524
/* 404524 E011A304 96020000 */  lhu       $v0, ($s0)
/* 404528 E011A308 2442FFE0 */  addiu     $v0, $v0, -0x20
/* 40452C E011A30C A6020000 */  sh        $v0, ($s0)
/* 404530 E011A310 00021400 */  sll       $v0, $v0, 0x10
/* 404534 E011A314 04430013 */  bgezl     $v0, .LE011A364
/* 404538 E011A318 26730001 */   addiu    $s3, $s3, 1
/* 40453C E011A31C 080468D7 */  j         .LE011A35C
/* 404540 E011A320 A6000000 */   sh       $zero, ($s0)
dlabel LE011A324_404544
/* 404544 E011A324 96030004 */  lhu       $v1, 4($s0)
/* 404548 E011A328 24020028 */  addiu     $v0, $zero, 0x28
/* 40454C E011A32C A6020006 */  sh        $v0, 6($s0)
/* 404550 E011A330 A6030002 */  sh        $v1, 2($s0)
dlabel LE011A334_404554
/* 404554 E011A334 96020000 */  lhu       $v0, ($s0)
/* 404558 E011A338 24420040 */  addiu     $v0, $v0, 0x40
/* 40455C E011A33C A6020000 */  sh        $v0, ($s0)
/* 404560 E011A340 00021400 */  sll       $v0, $v0, 0x10
/* 404564 E011A344 00021403 */  sra       $v0, $v0, 0x10
/* 404568 E011A348 28420100 */  slti      $v0, $v0, 0x100
/* 40456C E011A34C 54400005 */  bnel      $v0, $zero, .LE011A364
/* 404570 E011A350 26730001 */   addiu    $s3, $s3, 1
/* 404574 E011A354 240200FF */  addiu     $v0, $zero, 0xff
/* 404578 E011A358 A6020000 */  sh        $v0, ($s0)
.LE011A35C:
/* 40457C E011A35C A6000006 */  sh        $zero, 6($s0)
dlabel LE011A360_404580
/* 404580 E011A360 26730001 */  addiu     $s3, $s3, 1
.LE011A364:
/* 404584 E011A364 2A620003 */  slti      $v0, $s3, 3
/* 404588 E011A368 1440FF96 */  bnez      $v0, .LE011A1C4
/* 40458C E011A36C 2652000A */   addiu    $s2, $s2, 0xa
.LE011A370:
/* 404590 E011A370 8FBF002C */  lw        $ra, 0x2c($sp)
/* 404594 E011A374 8FB60028 */  lw        $s6, 0x28($sp)
/* 404598 E011A378 8FB50024 */  lw        $s5, 0x24($sp)
/* 40459C E011A37C 8FB40020 */  lw        $s4, 0x20($sp)
/* 4045A0 E011A380 8FB3001C */  lw        $s3, 0x1c($sp)
/* 4045A4 E011A384 8FB20018 */  lw        $s2, 0x18($sp)
/* 4045A8 E011A388 8FB10014 */  lw        $s1, 0x14($sp)
/* 4045AC E011A38C 8FB00010 */  lw        $s0, 0x10($sp)
/* 4045B0 E011A390 03E00008 */  jr        $ra
/* 4045B4 E011A394 27BD0030 */   addiu    $sp, $sp, 0x30