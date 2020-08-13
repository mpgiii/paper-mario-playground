.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel VanishActor
/* 19EEF4 80270614 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 19EEF8 80270618 AFB20020 */  sw    $s2, 0x20($sp)
/* 19EEFC 8027061C 0080902D */  daddu $s2, $a0, $zero
/* 19EF00 80270620 AFBF0024 */  sw    $ra, 0x24($sp)
/* 19EF04 80270624 AFB1001C */  sw    $s1, 0x1c($sp)
/* 19EF08 80270628 AFB00018 */  sw    $s0, 0x18($sp)
/* 19EF0C 8027062C 8E51000C */  lw    $s1, 0xc($s2)
/* 19EF10 80270630 54A00001 */  bnezl $a1, .L80270638
/* 19EF14 80270634 AE400070 */   sw    $zero, 0x70($s2)
.L80270638:
/* 19EF18 80270638 8E420070 */  lw    $v0, 0x70($s2)
/* 19EF1C 8027063C 1440002D */  bnez  $v0, .L802706F4
/* 19EF20 80270640 00000000 */   nop   
/* 19EF24 80270644 8E250000 */  lw    $a1, ($s1)
/* 19EF28 80270648 26310004 */  addiu $s1, $s1, 4
/* 19EF2C 8027064C 0C0B1EAF */  jal   get_variable
/* 19EF30 80270650 0240202D */   daddu $a0, $s2, $zero
/* 19EF34 80270654 0040802D */  daddu $s0, $v0, $zero
/* 19EF38 80270658 2402FF81 */  addiu $v0, $zero, -0x7f
/* 19EF3C 8027065C 16020002 */  bne   $s0, $v0, .L80270668
/* 19EF40 80270660 00000000 */   nop   
/* 19EF44 80270664 8E500148 */  lw    $s0, 0x148($s2)
.L80270668:
/* 19EF48 80270668 8E250000 */  lw    $a1, ($s1)
/* 19EF4C 8027066C 0C0B1EAF */  jal   get_variable
/* 19EF50 80270670 0240202D */   daddu $a0, $s2, $zero
/* 19EF54 80270674 0040882D */  daddu $s1, $v0, $zero
/* 19EF58 80270678 0C09A75B */  jal   get_actor
/* 19EF5C 8027067C 0200202D */   daddu $a0, $s0, $zero
/* 19EF60 80270680 0040802D */  daddu $s0, $v0, $zero
/* 19EF64 80270684 24040008 */  addiu $a0, $zero, 8
/* 19EF68 80270688 AE500074 */  sw    $s0, 0x74($s2)
/* 19EF6C 8027068C 0C093903 */  jal   func_8024E40C
/* 19EF70 80270690 AE510078 */   sw    $s1, 0x78($s2)
/* 19EF74 80270694 0C093978 */  jal   set_cam_zoffset
/* 19EF78 80270698 2404000C */   addiu $a0, $zero, 0xc
/* 19EF7C 8027069C 86040192 */  lh    $a0, 0x192($s0)
/* 19EF80 802706A0 0C09390F */  jal   cam_target_actor
/* 19EF84 802706A4 00000000 */   nop   
/* 19EF88 802706A8 0C093965 */  jal   set_cam_zoom
/* 19EF8C 802706AC 240400FA */   addiu $a0, $zero, 0xfa
/* 19EF90 802706B0 0C093936 */  jal   move_cam_over
/* 19EF94 802706B4 2404000A */   addiu $a0, $zero, 0xa
/* 19EF98 802706B8 0C093983 */  jal   func_8024E60C
/* 19EF9C 802706BC 00000000 */   nop   
/* 19EFA0 802706C0 8E020000 */  lw    $v0, ($s0)
/* 19EFA4 802706C4 30420800 */  andi  $v0, $v0, 0x800
/* 19EFA8 802706C8 10400004 */  beqz  $v0, .L802706DC
/* 19EFAC 802706CC 24020001 */   addiu $v0, $zero, 1
/* 19EFB0 802706D0 0C093978 */  jal   set_cam_zoffset
/* 19EFB4 802706D4 0000202D */   daddu $a0, $zero, $zero
/* 19EFB8 802706D8 24020001 */  addiu $v0, $zero, 1
.L802706DC:
/* 19EFBC 802706DC 3C01802A */  lui   $at, 0x802a
/* 19EFC0 802706E0 A022FBD4 */  sb    $v0, -0x42c($at)
/* 19EFC4 802706E4 24020005 */  addiu $v0, $zero, 5
/* 19EFC8 802706E8 AE42007C */  sw    $v0, 0x7c($s2)
/* 19EFCC 802706EC 24020001 */  addiu $v0, $zero, 1
/* 19EFD0 802706F0 AE420070 */  sw    $v0, 0x70($s2)
.L802706F4:
/* 19EFD4 802706F4 0C09A75B */  jal   get_actor
/* 19EFD8 802706F8 8E440148 */   lw    $a0, 0x148($s2)
/* 19EFDC 802706FC 8E500074 */  lw    $s0, 0x74($s2)
/* 19EFE0 80270700 8E510078 */  lw    $s1, 0x78($s2)
/* 19EFE4 80270704 86020150 */  lh    $v0, 0x150($s0)
/* 19EFE8 80270708 8E030000 */  lw    $v1, ($s0)
/* 19EFEC 8027070C C6000144 */  lwc1  $f0, 0x144($s0)
/* 19EFF0 80270710 44821000 */  mtc1  $v0, $f2
/* 19EFF4 80270714 00000000 */  nop   
/* 19EFF8 80270718 468010A0 */  cvt.s.w $f2, $f2
/* 19EFFC 8027071C 30620800 */  andi  $v0, $v1, 0x800
/* 19F000 80270720 1040000E */  beqz  $v0, .L8027075C
/* 19F004 80270724 46020180 */   add.s $f6, $f0, $f2
/* 19F008 80270728 86020152 */  lh    $v0, 0x152($s0)
/* 19F00C 8027072C C6020148 */  lwc1  $f2, 0x148($s0)
/* 19F010 80270730 44820000 */  mtc1  $v0, $f0
/* 19F014 80270734 00000000 */  nop   
/* 19F018 80270738 46800020 */  cvt.s.w $f0, $f0
/* 19F01C 8027073C 92020191 */  lbu   $v0, 0x191($s0)
/* 19F020 80270740 46001080 */  add.s $f2, $f2, $f0
/* 19F024 80270744 00021042 */  srl   $v0, $v0, 1
/* 19F028 80270748 44820000 */  mtc1  $v0, $f0
/* 19F02C 8027074C 00000000 */  nop   
/* 19F030 80270750 46800020 */  cvt.s.w $f0, $f0
/* 19F034 80270754 0809C1F2 */  j     .L802707C8
/* 19F038 80270758 46001101 */   sub.s $f4, $f2, $f0

.L8027075C:
/* 19F03C 8027075C 30628000 */  andi  $v0, $v1, 0x8000
/* 19F040 80270760 1440000E */  bnez  $v0, .L8027079C
/* 19F044 80270764 00000000 */   nop   
/* 19F048 80270768 86020152 */  lh    $v0, 0x152($s0)
/* 19F04C 8027076C C6020148 */  lwc1  $f2, 0x148($s0)
/* 19F050 80270770 44820000 */  mtc1  $v0, $f0
/* 19F054 80270774 00000000 */  nop   
/* 19F058 80270778 46800020 */  cvt.s.w $f0, $f0
/* 19F05C 8027077C 92020191 */  lbu   $v0, 0x191($s0)
/* 19F060 80270780 46001080 */  add.s $f2, $f2, $f0
/* 19F064 80270784 00021042 */  srl   $v0, $v0, 1
/* 19F068 80270788 44820000 */  mtc1  $v0, $f0
/* 19F06C 8027078C 00000000 */  nop   
/* 19F070 80270790 46800020 */  cvt.s.w $f0, $f0
/* 19F074 80270794 0809C1F2 */  j     .L802707C8
/* 19F078 80270798 46020100 */   add.s $f4, $f0, $f2

.L8027079C:
/* 19F07C 8027079C 86020152 */  lh    $v0, 0x152($s0)
/* 19F080 802707A0 C6000148 */  lwc1  $f0, 0x148($s0)
/* 19F084 802707A4 44821000 */  mtc1  $v0, $f2
/* 19F088 802707A8 00000000 */  nop   
/* 19F08C 802707AC 468010A0 */  cvt.s.w $f2, $f2
/* 19F090 802707B0 92020191 */  lbu   $v0, 0x191($s0)
/* 19F094 802707B4 46020000 */  add.s $f0, $f0, $f2
/* 19F098 802707B8 44821000 */  mtc1  $v0, $f2
/* 19F09C 802707BC 00000000 */  nop   
/* 19F0A0 802707C0 468010A0 */  cvt.s.w $f2, $f2
/* 19F0A4 802707C4 46020100 */  add.s $f4, $f0, $f2
.L802707C8:
/* 19F0A8 802707C8 86020154 */  lh    $v0, 0x154($s0)
/* 19F0AC 802707CC C600014C */  lwc1  $f0, 0x14c($s0)
/* 19F0B0 802707D0 44821000 */  mtc1  $v0, $f2
/* 19F0B4 802707D4 00000000 */  nop   
/* 19F0B8 802707D8 468010A0 */  cvt.s.w $f2, $f2
/* 19F0BC 802707DC 46020000 */  add.s $f0, $f0, $f2
/* 19F0C0 802707E0 8E420070 */  lw    $v0, 0x70($s2)
/* 19F0C4 802707E4 3C014120 */  lui   $at, 0x4120
/* 19F0C8 802707E8 44811000 */  mtc1  $at, $f2
/* 19F0CC 802707EC 2443FFFF */  addiu $v1, $v0, -1
/* 19F0D0 802707F0 2C620005 */  sltiu $v0, $v1, 5
/* 19F0D4 802707F4 10400052 */  beqz  $v0, .L80270940
/* 19F0D8 802707F8 46020080 */   add.s $f2, $f0, $f2
/* 19F0DC 802707FC 00031080 */  sll   $v0, $v1, 2
/* 19F0E0 80270800 3C01802A */  lui   $at, 0x802a
/* 19F0E4 80270804 00220821 */  addu  $at, $at, $v0
/* 19F0E8 80270808 8C22D838 */  lw    $v0, -0x27c8($at)
/* 19F0EC 8027080C 00400008 */  jr    $v0
/* 19F0F0 80270810 00000000 */   nop   
/* 19F0F4 80270814 8E42007C */  lw    $v0, 0x7c($s2)
/* 19F0F8 80270818 1440003C */  bnez  $v0, .L8027090C
/* 19F0FC 8027081C 2442FFFF */   addiu $v0, $v0, -1
/* 19F100 80270820 24040003 */  addiu $a0, $zero, 3
/* 19F104 80270824 44053000 */  mfc1  $a1, $f6
/* 19F108 80270828 44062000 */  mfc1  $a2, $f4
/* 19F10C 8027082C 3C013F80 */  lui   $at, 0x3f80
/* 19F110 80270830 44810000 */  mtc1  $at, $f0
/* 19F114 80270834 44071000 */  mfc1  $a3, $f2
/* 19F118 80270838 2410001E */  addiu $s0, $zero, 0x1e
/* 19F11C 8027083C AFB00014 */  sw    $s0, 0x14($sp)
/* 19F120 80270840 0C01C2EC */  jal   func_80070BB0
/* 19F124 80270844 E7A00010 */   swc1  $f0, 0x10($sp)
/* 19F128 80270848 0C0938F6 */  jal   func_8024E3D8
/* 19F12C 8027084C 24040013 */   addiu $a0, $zero, 0x13
/* 19F130 80270850 24020002 */  addiu $v0, $zero, 2
/* 19F134 80270854 AE50007C */  sw    $s0, 0x7c($s2)
/* 19F138 80270858 0809C250 */  j     .L80270940
/* 19F13C 8027085C AE420070 */   sw    $v0, 0x70($s2)

/* 19F140 80270860 8E42007C */  lw    $v0, 0x7c($s2)
/* 19F144 80270864 14400029 */  bnez  $v0, .L8027090C
/* 19F148 80270868 2442FFFF */   addiu $v0, $v0, -1
/* 19F14C 8027086C 0200202D */  daddu $a0, $s0, $zero
/* 19F150 80270870 0C09DC58 */  jal   dispatch_event_actor
/* 19F154 80270874 2405003F */   addiu $a1, $zero, 0x3f
/* 19F158 80270878 0C093903 */  jal   func_8024E40C
/* 19F15C 8027087C 24040002 */   addiu $a0, $zero, 2
/* 19F160 80270880 0C093936 */  jal   move_cam_over
/* 19F164 80270884 2404000F */   addiu $a0, $zero, 0xf
/* 19F168 80270888 0200202D */  daddu $a0, $s0, $zero
/* 19F16C 8027088C 2405000E */  addiu $a1, $zero, 0xe
/* 19F170 80270890 0C0997D0 */  jal   inflict_status
/* 19F174 80270894 0220302D */   daddu $a2, $s1, $zero
/* 19F178 80270898 2402000F */  addiu $v0, $zero, 0xf
/* 19F17C 8027089C AE42007C */  sw    $v0, 0x7c($s2)
/* 19F180 802708A0 24020003 */  addiu $v0, $zero, 3
/* 19F184 802708A4 0809C250 */  j     .L80270940
/* 19F188 802708A8 AE420070 */   sw    $v0, 0x70($s2)

/* 19F18C 802708AC 8E42007C */  lw    $v0, 0x7c($s2)
/* 19F190 802708B0 14400016 */  bnez  $v0, .L8027090C
/* 19F194 802708B4 2442FFFF */   addiu $v0, $v0, -1
/* 19F198 802708B8 24040021 */  addiu $a0, $zero, 0x21
/* 19F19C 802708BC 2405003C */  addiu $a1, $zero, 0x3c
/* 19F1A0 802708C0 0C093E81 */  jal   show_variable_battle_message
/* 19F1A4 802708C4 0220302D */   daddu $a2, $s1, $zero
/* 19F1A8 802708C8 24020004 */  addiu $v0, $zero, 4
/* 19F1AC 802708CC 0809C250 */  j     .L80270940
/* 19F1B0 802708D0 AE420070 */   sw    $v0, 0x70($s2)

/* 19F1B4 802708D4 0C093EAD */  jal   is_popup_displayed
/* 19F1B8 802708D8 00000000 */   nop   
/* 19F1BC 802708DC 14400019 */  bnez  $v0, .L80270944
/* 19F1C0 802708E0 0000102D */   daddu $v0, $zero, $zero
/* 19F1C4 802708E4 0C093903 */  jal   func_8024E40C
/* 19F1C8 802708E8 24040002 */   addiu $a0, $zero, 2
/* 19F1CC 802708EC 2402000A */  addiu $v0, $zero, 0xa
/* 19F1D0 802708F0 AE42007C */  sw    $v0, 0x7c($s2)
/* 19F1D4 802708F4 24020005 */  addiu $v0, $zero, 5
/* 19F1D8 802708F8 0809C250 */  j     .L80270940
/* 19F1DC 802708FC AE420070 */   sw    $v0, 0x70($s2)

/* 19F1E0 80270900 8E42007C */  lw    $v0, 0x7c($s2)
/* 19F1E4 80270904 10400003 */  beqz  $v0, .L80270914
/* 19F1E8 80270908 2442FFFF */   addiu $v0, $v0, -1
.L8027090C:
/* 19F1EC 8027090C 0809C250 */  j     .L80270940
/* 19F1F0 80270910 AE42007C */   sw    $v0, 0x7c($s2)

.L80270914:
/* 19F1F4 80270914 8E0201D8 */  lw    $v0, 0x1d8($s0)
/* 19F1F8 80270918 10400005 */  beqz  $v0, .L80270930
/* 19F1FC 8027091C 00000000 */   nop   
/* 19F200 80270920 0C0B1059 */  jal   does_script_exist
/* 19F204 80270924 8E0401E8 */   lw    $a0, 0x1e8($s0)
/* 19F208 80270928 14400006 */  bnez  $v0, .L80270944
/* 19F20C 8027092C 0000102D */   daddu $v0, $zero, $zero
.L80270930:
/* 19F210 80270930 3C01802A */  lui   $at, 0x802a
/* 19F214 80270934 A020FBD4 */  sb    $zero, -0x42c($at)
/* 19F218 80270938 0809C251 */  j     .L80270944
/* 19F21C 8027093C 24020002 */   addiu $v0, $zero, 2

.L80270940:
.L80270940:
/* 19F220 80270940 0000102D */  daddu $v0, $zero, $zero
.L80270944:
.L80270944:
/* 19F224 80270944 8FBF0024 */  lw    $ra, 0x24($sp)
/* 19F228 80270948 8FB20020 */  lw    $s2, 0x20($sp)
/* 19F22C 8027094C 8FB1001C */  lw    $s1, 0x1c($sp)
/* 19F230 80270950 8FB00018 */  lw    $s0, 0x18($sp)
/* 19F234 80270954 03E00008 */  jr    $ra
/* 19F238 80270958 27BD0028 */   addiu $sp, $sp, 0x28

