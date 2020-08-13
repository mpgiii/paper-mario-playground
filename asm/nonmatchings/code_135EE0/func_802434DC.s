.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_802434DC
/* 13681C 802434DC 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 136820 802434E0 AFB10014 */  sw    $s1, 0x14($sp)
/* 136824 802434E4 00A0882D */  daddu $s1, $a1, $zero
/* 136828 802434E8 AFB20018 */  sw    $s2, 0x18($sp)
/* 13682C 802434EC 00C0902D */  daddu $s2, $a2, $zero
/* 136830 802434F0 AFBF001C */  sw    $ra, 0x1c($sp)
/* 136834 802434F4 0C090B9B */  jal   func_80242E6C
/* 136838 802434F8 AFB00010 */   sw    $s0, 0x10($sp)
/* 13683C 802434FC 3C058025 */  lui   $a1, 0x8025
/* 136840 80243500 8CA5EFA4 */  lw    $a1, -0x105c($a1)
/* 136844 80243504 18A00012 */  blez  $a1, .L80243550
/* 136848 80243508 28A20100 */   slti  $v0, $a1, 0x100
/* 13684C 8024350C 50400001 */  beql  $v0, $zero, .L80243514
/* 136850 80243510 240500FF */   addiu $a1, $zero, 0xff
.L80243514:
/* 136854 80243514 3C108027 */  lui   $s0, 0x8027
/* 136858 80243518 261000E8 */  addiu $s0, $s0, 0xe8
/* 13685C 8024351C 0C0513AC */  jal   func_80144EB0
/* 136860 80243520 8E040000 */   lw    $a0, ($s0)
/* 136864 80243524 8E040000 */  lw    $a0, ($s0)
/* 136868 80243528 3C058025 */  lui   $a1, 0x8025
/* 13686C 8024352C 8CA5EF9C */  lw    $a1, -0x1064($a1)
/* 136870 80243530 3C068025 */  lui   $a2, 0x8025
/* 136874 80243534 8CC6EFA0 */  lw    $a2, -0x1060($a2)
/* 136878 80243538 02252821 */  addu  $a1, $s1, $a1
/* 13687C 8024353C 0C051261 */  jal   set_icon_render_pos
/* 136880 80243540 02463021 */   addu  $a2, $s2, $a2
/* 136884 80243544 8E040000 */  lw    $a0, ($s0)
/* 136888 80243548 0C0511F8 */  jal   func_801447E0
/* 13688C 8024354C 00000000 */   nop   
.L80243550:
/* 136890 80243550 8FBF001C */  lw    $ra, 0x1c($sp)
/* 136894 80243554 8FB20018 */  lw    $s2, 0x18($sp)
/* 136898 80243558 8FB10014 */  lw    $s1, 0x14($sp)
/* 13689C 8024355C 8FB00010 */  lw    $s0, 0x10($sp)
/* 1368A0 80243560 03E00008 */  jr    $ra
/* 1368A4 80243564 27BD0020 */   addiu $sp, $sp, 0x20

/* 1368A8 80243568 03E00008 */  jr    $ra
/* 1368AC 8024356C 00000000 */   nop   

/* 1368B0 80243570 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 1368B4 80243574 AFB20020 */  sw    $s2, 0x20($sp)
/* 1368B8 80243578 3C128027 */  lui   $s2, 0x8027
/* 1368BC 8024357C 8E520108 */  lw    $s2, 0x108($s2)
/* 1368C0 80243580 AFB60030 */  sw    $s6, 0x30($sp)
/* 1368C4 80243584 8FB60048 */  lw    $s6, 0x48($sp)
/* 1368C8 80243588 AFB30024 */  sw    $s3, 0x24($sp)
/* 1368CC 8024358C 00A0982D */  daddu $s3, $a1, $zero
/* 1368D0 80243590 AFB40028 */  sw    $s4, 0x28($sp)
/* 1368D4 80243594 00C0A02D */  daddu $s4, $a2, $zero
/* 1368D8 80243598 AFB5002C */  sw    $s5, 0x2c($sp)
/* 1368DC 8024359C 00E0A82D */  daddu $s5, $a3, $zero
/* 1368E0 802435A0 AFBF0034 */  sw    $ra, 0x34($sp)
/* 1368E4 802435A4 AFB1001C */  sw    $s1, 0x1c($sp)
/* 1368E8 802435A8 12400088 */  beqz  $s2, .L802437CC
/* 1368EC 802435AC AFB00018 */   sw    $s0, 0x18($sp)
/* 1368F0 802435B0 3C118027 */  lui   $s1, 0x8027
/* 1368F4 802435B4 26310110 */  addiu $s1, $s1, 0x110
/* 1368F8 802435B8 8E220000 */  lw    $v0, ($s1)
/* 1368FC 802435BC 1040000B */  beqz  $v0, .L802435EC
/* 136900 802435C0 02752821 */   addu  $a1, $s3, $s5
/* 136904 802435C4 24A5FFFC */  addiu $a1, $a1, -4
/* 136908 802435C8 3C108027 */  lui   $s0, 0x8027
/* 13690C 802435CC 261000E8 */  addiu $s0, $s0, 0xe8
/* 136910 802435D0 8E040004 */  lw    $a0, 4($s0)
/* 136914 802435D4 0C051261 */  jal   set_icon_render_pos
/* 136918 802435D8 26860004 */   addiu $a2, $s4, 4
/* 13691C 802435DC 8E040004 */  lw    $a0, 4($s0)
/* 136920 802435E0 0C0511F8 */  jal   func_801447E0
/* 136924 802435E4 00000000 */   nop   
/* 136928 802435E8 8E220000 */  lw    $v0, ($s1)
.L802435EC:
/* 13692C 802435EC 3C038027 */  lui   $v1, 0x8027
/* 136930 802435F0 8C63010C */  lw    $v1, 0x10c($v1)
/* 136934 802435F4 0043102A */  slt   $v0, $v0, $v1
/* 136938 802435F8 1040000B */  beqz  $v0, .L80243628
/* 13693C 802435FC 02752821 */   addu  $a1, $s3, $s5
/* 136940 80243600 24A5FFFC */  addiu $a1, $a1, -4
/* 136944 80243604 3C108027 */  lui   $s0, 0x8027
/* 136948 80243608 261000E8 */  addiu $s0, $s0, 0xe8
/* 13694C 8024360C 02963021 */  addu  $a2, $s4, $s6
/* 136950 80243610 8E040008 */  lw    $a0, 8($s0)
/* 136954 80243614 0C051261 */  jal   set_icon_render_pos
/* 136958 80243618 24C6FFFC */   addiu $a2, $a2, -4
/* 13695C 8024361C 8E040008 */  lw    $a0, 8($s0)
/* 136960 80243620 0C0511F8 */  jal   func_801447E0
/* 136964 80243624 00000000 */   nop   
.L80243628:
/* 136968 80243628 0240202D */  daddu $a0, $s2, $zero
/* 13696C 8024362C 3C11800A */  lui   $s1, 0x800a
/* 136970 80243630 2631A66C */  addiu $s1, $s1, -0x5994
/* 136974 80243634 2665000A */  addiu $a1, $s3, 0xa
/* 136978 80243638 3C02E700 */  lui   $v0, 0xe700
/* 13697C 8024363C 3C10ED00 */  lui   $s0, 0xed00
/* 136980 80243640 8E280000 */  lw    $t0, ($s1)
/* 136984 80243644 3C068027 */  lui   $a2, 0x8027
/* 136988 80243648 8CC60114 */  lw    $a2, 0x114($a2)
/* 13698C 8024364C 3C014080 */  lui   $at, 0x4080
/* 136990 80243650 44812000 */  mtc1  $at, $f4
/* 136994 80243654 0100182D */  daddu $v1, $t0, $zero
/* 136998 80243658 25080008 */  addiu $t0, $t0, 8
/* 13699C 8024365C 02863023 */  subu  $a2, $s4, $a2
/* 1369A0 80243660 AE280000 */  sw    $t0, ($s1)
/* 1369A4 80243664 AC620000 */  sw    $v0, ($v1)
/* 1369A8 80243668 26620001 */  addiu $v0, $s3, 1
/* 1369AC 8024366C 44821000 */  mtc1  $v0, $f2
/* 1369B0 80243670 00000000 */  nop   
/* 1369B4 80243674 468010A0 */  cvt.s.w $f2, $f2
/* 1369B8 80243678 AC600004 */  sw    $zero, 4($v1)
/* 1369BC 8024367C 25030008 */  addiu $v1, $t0, 8
/* 1369C0 80243680 46041082 */  mul.s $f2, $f2, $f4
/* 1369C4 80243684 00000000 */  nop   
/* 1369C8 80243688 26820001 */  addiu $v0, $s4, 1
/* 1369CC 8024368C 44820000 */  mtc1  $v0, $f0
/* 1369D0 80243690 00000000 */  nop   
/* 1369D4 80243694 46800020 */  cvt.s.w $f0, $f0
/* 1369D8 80243698 02751021 */  addu  $v0, $s3, $s5
/* 1369DC 8024369C 2442FFFF */  addiu $v0, $v0, -1
/* 1369E0 802436A0 46040002 */  mul.s $f0, $f0, $f4
/* 1369E4 802436A4 00000000 */  nop   
/* 1369E8 802436A8 AE230000 */  sw    $v1, ($s1)
/* 1369EC 802436AC 4600118D */  trunc.w.s $f6, $f2
/* 1369F0 802436B0 44033000 */  mfc1  $v1, $f6
/* 1369F4 802436B4 00000000 */  nop   
/* 1369F8 802436B8 30630FFF */  andi  $v1, $v1, 0xfff
/* 1369FC 802436BC 00031B00 */  sll   $v1, $v1, 0xc
/* 136A00 802436C0 4600018D */  trunc.w.s $f6, $f0
/* 136A04 802436C4 44073000 */  mfc1  $a3, $f6
/* 136A08 802436C8 00000000 */  nop   
/* 136A0C 802436CC 30E70FFF */  andi  $a3, $a3, 0xfff
/* 136A10 802436D0 00F03825 */  or    $a3, $a3, $s0
/* 136A14 802436D4 44821000 */  mtc1  $v0, $f2
/* 136A18 802436D8 00000000 */  nop   
/* 136A1C 802436DC 468010A0 */  cvt.s.w $f2, $f2
/* 136A20 802436E0 00671825 */  or    $v1, $v1, $a3
/* 136A24 802436E4 46041082 */  mul.s $f2, $f2, $f4
/* 136A28 802436E8 00000000 */  nop   
/* 136A2C 802436EC 02961021 */  addu  $v0, $s4, $s6
/* 136A30 802436F0 2442FFFF */  addiu $v0, $v0, -1
/* 136A34 802436F4 44820000 */  mtc1  $v0, $f0
/* 136A38 802436F8 00000000 */  nop   
/* 136A3C 802436FC 46800020 */  cvt.s.w $f0, $f0
/* 136A40 80243700 240700FF */  addiu $a3, $zero, 0xff
/* 136A44 80243704 46040002 */  mul.s $f0, $f0, $f4
/* 136A48 80243708 00000000 */  nop   
/* 136A4C 8024370C AD030000 */  sw    $v1, ($t0)
/* 136A50 80243710 4600118D */  trunc.w.s $f6, $f2
/* 136A54 80243714 44023000 */  mfc1  $v0, $f6
/* 136A58 80243718 00000000 */  nop   
/* 136A5C 8024371C 30420FFF */  andi  $v0, $v0, 0xfff
/* 136A60 80243720 00021300 */  sll   $v0, $v0, 0xc
/* 136A64 80243724 4600018D */  trunc.w.s $f6, $f0
/* 136A68 80243728 44033000 */  mfc1  $v1, $f6
/* 136A6C 8024372C 00000000 */  nop   
/* 136A70 80243730 30630FFF */  andi  $v1, $v1, 0xfff
/* 136A74 80243734 00431025 */  or    $v0, $v0, $v1
/* 136A78 80243738 AD020004 */  sw    $v0, 4($t0)
/* 136A7C 8024373C 2402000A */  addiu $v0, $zero, 0xa
/* 136A80 80243740 AFA20010 */  sw    $v0, 0x10($sp)
/* 136A84 80243744 0C04993B */  jal   draw_string
/* 136A88 80243748 AFA00014 */   sw    $zero, 0x14($sp)
/* 136A8C 8024374C 3C128027 */  lui   $s2, 0x8027
/* 136A90 80243750 26520118 */  addiu $s2, $s2, 0x118
/* 136A94 80243754 8E420000 */  lw    $v0, ($s2)
/* 136A98 80243758 1040001C */  beqz  $v0, .L802437CC
/* 136A9C 8024375C 3C040050 */   lui   $a0, 0x50
/* 136AA0 80243760 348403C0 */  ori   $a0, $a0, 0x3c0
/* 136AA4 80243764 2665FFFC */  addiu $a1, $s3, -4
/* 136AA8 80243768 8E230000 */  lw    $v1, ($s1)
/* 136AAC 8024376C 26860010 */  addiu $a2, $s4, 0x10
/* 136AB0 80243770 0060102D */  daddu $v0, $v1, $zero
/* 136AB4 80243774 AC500000 */  sw    $s0, ($v0)
/* 136AB8 80243778 3C108027 */  lui   $s0, 0x8027
/* 136ABC 8024377C 261000E8 */  addiu $s0, $s0, 0xe8
/* 136AC0 80243780 AC440004 */  sw    $a0, 4($v0)
/* 136AC4 80243784 8E04000C */  lw    $a0, 0xc($s0)
/* 136AC8 80243788 24630008 */  addiu $v1, $v1, 8
/* 136ACC 8024378C 0C051261 */  jal   set_icon_render_pos
/* 136AD0 80243790 AE230000 */   sw    $v1, ($s1)
/* 136AD4 80243794 8E04000C */  lw    $a0, 0xc($s0)
/* 136AD8 80243798 0C0511FF */  jal   set_menu_icon_script
/* 136ADC 8024379C 8E450000 */   lw    $a1, ($s2)
/* 136AE0 802437A0 8E04000C */  lw    $a0, 0xc($s0)
/* 136AE4 802437A4 0C051280 */  jal   set_icon_flags
/* 136AE8 802437A8 3C052000 */   lui   $a1, 0x2000
/* 136AEC 802437AC 8E04000C */  lw    $a0, 0xc($s0)
/* 136AF0 802437B0 0C05128B */  jal   clear_icon_flags
/* 136AF4 802437B4 34058000 */   ori   $a1, $zero, 0x8000
/* 136AF8 802437B8 8E04000C */  lw    $a0, 0xc($s0)
/* 136AFC 802437BC 0C051308 */  jal   func_80144C20
/* 136B00 802437C0 3C053F80 */   lui   $a1, 0x3f80
/* 136B04 802437C4 0C0511F8 */  jal   func_801447E0
/* 136B08 802437C8 8E04000C */   lw    $a0, 0xc($s0)
.L802437CC:
/* 136B0C 802437CC 8FBF0034 */  lw    $ra, 0x34($sp)
/* 136B10 802437D0 8FB60030 */  lw    $s6, 0x30($sp)
/* 136B14 802437D4 8FB5002C */  lw    $s5, 0x2c($sp)
/* 136B18 802437D8 8FB40028 */  lw    $s4, 0x28($sp)
/* 136B1C 802437DC 8FB30024 */  lw    $s3, 0x24($sp)
/* 136B20 802437E0 8FB20020 */  lw    $s2, 0x20($sp)
/* 136B24 802437E4 8FB1001C */  lw    $s1, 0x1c($sp)
/* 136B28 802437E8 8FB00018 */  lw    $s0, 0x18($sp)
/* 136B2C 802437EC 03E00008 */  jr    $ra
/* 136B30 802437F0 27BD0038 */   addiu $sp, $sp, 0x38

/* 136B34 802437F4 27BDFEE0 */  addiu $sp, $sp, -0x120
/* 136B38 802437F8 0000202D */  daddu $a0, $zero, $zero
/* 136B3C 802437FC AFA50124 */  sw    $a1, 0x124($sp)
/* 136B40 80243800 3C05F840 */  lui   $a1, 0xf840
/* 136B44 80243804 34A55BDE */  ori   $a1, $a1, 0x5bde
/* 136B48 80243808 AFBF00FC */  sw    $ra, 0xfc($sp)
/* 136B4C 8024380C AFBE00F8 */  sw    $fp, 0xf8($sp)
/* 136B50 80243810 AFB700F4 */  sw    $s7, 0xf4($sp)
/* 136B54 80243814 AFB600F0 */  sw    $s6, 0xf0($sp)
/* 136B58 80243818 AFB500EC */  sw    $s5, 0xec($sp)
/* 136B5C 8024381C AFB400E8 */  sw    $s4, 0xe8($sp)
/* 136B60 80243820 AFB300E4 */  sw    $s3, 0xe4($sp)
/* 136B64 80243824 AFB200E0 */  sw    $s2, 0xe0($sp)
/* 136B68 80243828 AFB100DC */  sw    $s1, 0xdc($sp)
/* 136B6C 8024382C AFB000D8 */  sw    $s0, 0xd8($sp)
/* 136B70 80243830 F7BA0118 */  sdc1  $f26, 0x118($sp)
/* 136B74 80243834 F7B80110 */  sdc1  $f24, 0x110($sp)
/* 136B78 80243838 F7B60108 */  sdc1  $f22, 0x108($sp)
/* 136B7C 8024383C F7B40100 */  sdc1  $f20, 0x100($sp)
/* 136B80 80243840 AFA60128 */  sw    $a2, 0x128($sp)
/* 136B84 80243844 0C0B1EAF */  jal   get_variable
/* 136B88 80243848 AFA7012C */   sw    $a3, 0x12c($sp)
/* 136B8C 8024384C 104001F4 */  beqz  $v0, .L80244020
/* 136B90 80243850 3C08E300 */   lui   $t0, 0xe300
/* 136B94 80243854 35080A01 */  ori   $t0, $t0, 0xa01
/* 136B98 80243858 3C0BE200 */  lui   $t3, 0xe200
/* 136B9C 8024385C 356B001C */  ori   $t3, $t3, 0x1c
/* 136BA0 80243860 3C090050 */  lui   $t1, 0x50
/* 136BA4 80243864 35294340 */  ori   $t1, $t1, 0x4340
/* 136BA8 80243868 3C0CFCFF */  lui   $t4, 0xfcff
/* 136BAC 8024386C 358CFFFF */  ori   $t4, $t4, 0xffff
/* 136BB0 80243870 3C0AFFFD */  lui   $t2, 0xfffd
/* 136BB4 80243874 354AF6FB */  ori   $t2, $t2, 0xf6fb
/* 136BB8 80243878 3C0D3737 */  lui   $t5, 0x3737
/* 136BBC 8024387C 35AD37FF */  ori   $t5, $t5, 0x37ff
/* 136BC0 80243880 3C140001 */  lui   $s4, 1
/* 136BC4 80243884 36941630 */  ori   $s4, $s4, 0x1630
/* 136BC8 80243888 0000B82D */  daddu $s7, $zero, $zero
/* 136BCC 8024388C 27B50068 */  addiu $s5, $sp, 0x68
/* 136BD0 80243890 3C028007 */  lui   $v0, 0x8007
/* 136BD4 80243894 244241F0 */  addiu $v0, $v0, 0x41f0
/* 136BD8 80243898 0040F02D */  daddu $fp, $v0, $zero
/* 136BDC 8024389C 3C02800A */  lui   $v0, 0x800a
/* 136BE0 802438A0 2442A66C */  addiu $v0, $v0, -0x5994
/* 136BE4 802438A4 0040B02D */  daddu $s6, $v0, $zero
/* 136BE8 802438A8 3C12FA00 */  lui   $s2, 0xfa00
/* 136BEC 802438AC 8FAE0124 */  lw    $t6, 0x124($sp)
/* 136BF0 802438B0 8FAF0128 */  lw    $t7, 0x128($sp)
/* 136BF4 802438B4 3C013F4C */  lui   $at, 0x3f4c
/* 136BF8 802438B8 3421CCCD */  ori   $at, $at, 0xcccd
/* 136BFC 802438BC 4481D000 */  mtc1  $at, $f26
/* 136C00 802438C0 3C014334 */  lui   $at, 0x4334
/* 136C04 802438C4 4481C000 */  mtc1  $at, $f24
/* 136C08 802438C8 000E9880 */  sll   $s3, $t6, 2
/* 136C0C 802438CC 000F2880 */  sll   $a1, $t7, 2
/* 136C10 802438D0 8FAF012C */  lw    $t7, 0x12c($sp)
/* 136C14 802438D4 0260202D */  daddu $a0, $s3, $zero
/* 136C18 802438D8 01CF8821 */  addu  $s1, $t6, $t7
/* 136C1C 802438DC 00118880 */  sll   $s1, $s1, 2
/* 136C20 802438E0 0220302D */  daddu $a2, $s1, $zero
/* 136C24 802438E4 3C0F0001 */  lui   $t7, 1
/* 136C28 802438E8 8FAE0128 */  lw    $t6, 0x128($sp)
/* 136C2C 802438EC 35EF1630 */  ori   $t7, $t7, 0x1630
/* 136C30 802438F0 AFAF00D0 */  sw    $t7, 0xd0($sp)
/* 136C34 802438F4 8EC20000 */  lw    $v0, ($s6)
/* 136C38 802438F8 25D0000C */  addiu $s0, $t6, 0xc
/* 136C3C 802438FC 00108080 */  sll   $s0, $s0, 2
/* 136C40 80243900 0200382D */  daddu $a3, $s0, $zero
/* 136C44 80243904 0040182D */  daddu $v1, $v0, $zero
/* 136C48 80243908 24420008 */  addiu $v0, $v0, 8
/* 136C4C 8024390C AEC20000 */  sw    $v0, ($s6)
/* 136C50 80243910 AC680000 */  sw    $t0, ($v1)
/* 136C54 80243914 AC600004 */  sw    $zero, 4($v1)
/* 136C58 80243918 24430008 */  addiu $v1, $v0, 8
/* 136C5C 8024391C AEC30000 */  sw    $v1, ($s6)
/* 136C60 80243920 24430010 */  addiu $v1, $v0, 0x10
/* 136C64 80243924 AC4B0000 */  sw    $t3, ($v0)
/* 136C68 80243928 AC490004 */  sw    $t1, 4($v0)
/* 136C6C 8024392C AEC30000 */  sw    $v1, ($s6)
/* 136C70 80243930 24430018 */  addiu $v1, $v0, 0x18
/* 136C74 80243934 AC4C0008 */  sw    $t4, 8($v0)
/* 136C78 80243938 AC4A000C */  sw    $t2, 0xc($v0)
/* 136C7C 8024393C AEC30000 */  sw    $v1, ($s6)
/* 136C80 80243940 AC520010 */  sw    $s2, 0x10($v0)
/* 136C84 80243944 AC4D0014 */  sw    $t5, 0x14($v0)
/* 136C88 80243948 AFA00010 */  sw    $zero, 0x10($sp)
/* 136C8C 8024394C AFA00014 */  sw    $zero, 0x14($sp)
/* 136C90 80243950 AFA00018 */  sw    $zero, 0x18($sp)
/* 136C94 80243954 AFA0001C */  sw    $zero, 0x1c($sp)
/* 136C98 80243958 0C091216 */  jal   func_80244858
/* 136C9C 8024395C AFA00020 */   sw    $zero, 0x20($sp)
/* 136CA0 80243960 3C08B9B9 */  lui   $t0, 0xb9b9
/* 136CA4 80243964 3508B9FF */  ori   $t0, $t0, 0xb9ff
/* 136CA8 80243968 0260202D */  daddu $a0, $s3, $zero
/* 136CAC 8024396C 0200282D */  daddu $a1, $s0, $zero
/* 136CB0 80243970 0220302D */  daddu $a2, $s1, $zero
/* 136CB4 80243974 3C10E700 */  lui   $s0, 0xe700
/* 136CB8 80243978 8FAE0128 */  lw    $t6, 0x128($sp)
/* 136CBC 8024397C 8FAF0130 */  lw    $t7, 0x130($sp)
/* 136CC0 80243980 44800000 */  mtc1  $zero, $f0
/* 136CC4 80243984 8EC20000 */  lw    $v0, ($s6)
/* 136CC8 80243988 01CF3821 */  addu  $a3, $t6, $t7
/* 136CCC 8024398C 00073880 */  sll   $a3, $a3, 2
/* 136CD0 80243990 46000506 */  mov.s $f20, $f0
/* 136CD4 80243994 0040182D */  daddu $v1, $v0, $zero
/* 136CD8 80243998 3C013F80 */  lui   $at, 0x3f80
/* 136CDC 8024399C 44810000 */  mtc1  $at, $f0
/* 136CE0 802439A0 24420008 */  addiu $v0, $v0, 8
/* 136CE4 802439A4 AEC20000 */  sw    $v0, ($s6)
/* 136CE8 802439A8 AC700000 */  sw    $s0, ($v1)
/* 136CEC 802439AC AC600004 */  sw    $zero, 4($v1)
/* 136CF0 802439B0 24430008 */  addiu $v1, $v0, 8
/* 136CF4 802439B4 AEC30000 */  sw    $v1, ($s6)
/* 136CF8 802439B8 AC520000 */  sw    $s2, ($v0)
/* 136CFC 802439BC AC480004 */  sw    $t0, 4($v0)
/* 136D00 802439C0 AFA00010 */  sw    $zero, 0x10($sp)
/* 136D04 802439C4 AFA00014 */  sw    $zero, 0x14($sp)
/* 136D08 802439C8 AFA00018 */  sw    $zero, 0x18($sp)
/* 136D0C 802439CC AFA0001C */  sw    $zero, 0x1c($sp)
/* 136D10 802439D0 AFA00020 */  sw    $zero, 0x20($sp)
/* 136D14 802439D4 0C091216 */  jal   func_80244858
/* 136D18 802439D8 46000586 */   mov.s $f22, $f0
/* 136D1C 802439DC 3C08DC08 */  lui   $t0, 0xdc08
/* 136D20 802439E0 35080008 */  ori   $t0, $t0, 8
/* 136D24 802439E4 27A40028 */  addiu $a0, $sp, 0x28
/* 136D28 802439E8 8EC30000 */  lw    $v1, ($s6)
/* 136D2C 802439EC 4405A000 */  mfc1  $a1, $f20
/* 136D30 802439F0 3C0643A0 */  lui   $a2, 0x43a0
/* 136D34 802439F4 3C074370 */  lui   $a3, 0x4370
/* 136D38 802439F8 3C01C2C8 */  lui   $at, 0xc2c8
/* 136D3C 802439FC 44810000 */  mtc1  $at, $f0
/* 136D40 80243A00 3C0142C8 */  lui   $at, 0x42c8
/* 136D44 80243A04 44811000 */  mtc1  $at, $f2
/* 136D48 80243A08 0060102D */  daddu $v0, $v1, $zero
/* 136D4C 80243A0C 24630008 */  addiu $v1, $v1, 8
/* 136D50 80243A10 AEC30000 */  sw    $v1, ($s6)
/* 136D54 80243A14 AC500000 */  sw    $s0, ($v0)
/* 136D58 80243A18 AC400004 */  sw    $zero, 4($v0)
/* 136D5C 80243A1C 24620008 */  addiu $v0, $v1, 8
/* 136D60 80243A20 AEC20000 */  sw    $v0, ($s6)
/* 136D64 80243A24 3C028025 */  lui   $v0, 0x8025
/* 136D68 80243A28 2442F100 */  addiu $v0, $v0, -0xf00
/* 136D6C 80243A2C AC680000 */  sw    $t0, ($v1)
/* 136D70 80243A30 AC620004 */  sw    $v0, 4($v1)
/* 136D74 80243A34 E7B40010 */  swc1  $f20, 0x10($sp)
/* 136D78 80243A38 E7A00014 */  swc1  $f0, 0x14($sp)
/* 136D7C 80243A3C E7A20018 */  swc1  $f2, 0x18($sp)
/* 136D80 80243A40 0C018E44 */  jal   guOrthoF
/* 136D84 80243A44 E7B6001C */   swc1  $f22, 0x1c($sp)
/* 136D88 80243A48 27A40028 */  addiu $a0, $sp, 0x28
/* 136D8C 80243A4C 97C50000 */  lhu   $a1, ($fp)
/* 136D90 80243A50 3C02800A */  lui   $v0, 0x800a
/* 136D94 80243A54 8C42A674 */  lw    $v0, -0x598c($v0)
/* 136D98 80243A58 00052980 */  sll   $a1, $a1, 6
/* 136D9C 80243A5C 00B42821 */  addu  $a1, $a1, $s4
/* 136DA0 80243A60 0C019D40 */  jal   guMtxF2L
/* 136DA4 80243A64 00452821 */   addu  $a1, $v0, $a1
/* 136DA8 80243A68 3C04DA38 */  lui   $a0, 0xda38
/* 136DAC 80243A6C 34840007 */  ori   $a0, $a0, 7
/* 136DB0 80243A70 8EC30000 */  lw    $v1, ($s6)
/* 136DB4 80243A74 97C20000 */  lhu   $v0, ($fp)
/* 136DB8 80243A78 0060282D */  daddu $a1, $v1, $zero
/* 136DBC 80243A7C 24630008 */  addiu $v1, $v1, 8
/* 136DC0 80243A80 AEC30000 */  sw    $v1, ($s6)
/* 136DC4 80243A84 24430001 */  addiu $v1, $v0, 1
/* 136DC8 80243A88 3042FFFF */  andi  $v0, $v0, 0xffff
/* 136DCC 80243A8C 00021180 */  sll   $v0, $v0, 6
/* 136DD0 80243A90 ACA40000 */  sw    $a0, ($a1)
/* 136DD4 80243A94 A7C30000 */  sh    $v1, ($fp)
/* 136DD8 80243A98 3C03800A */  lui   $v1, 0x800a
/* 136DDC 80243A9C 8C63A674 */  lw    $v1, -0x598c($v1)
/* 136DE0 80243AA0 00541021 */  addu  $v0, $v0, $s4
/* 136DE4 80243AA4 00621821 */  addu  $v1, $v1, $v0
/* 136DE8 80243AA8 ACA30004 */  sw    $v1, 4($a1)
.L80243AAC:
/* 136DEC 80243AAC 12E00005 */  beqz  $s7, .L80243AC4
/* 136DF0 80243AB0 24020001 */   addiu $v0, $zero, 1
/* 136DF4 80243AB4 12E2000B */  beq   $s7, $v0, .L80243AE4
/* 136DF8 80243AB8 27A40028 */   addiu $a0, $sp, 0x28
/* 136DFC 80243ABC 08090EC0 */  j     func_80243B00
/* 136E00 80243AC0 00000000 */   nop   

.L80243AC4:
/* 136E04 80243AC4 27A40028 */  addiu $a0, $sp, 0x28
/* 136E08 80243AC8 3C054220 */  lui   $a1, 0x4220
/* 136E0C 80243ACC 3C06435F */  lui   $a2, 0x435f
/* 136E10 80243AD0 0C019E40 */  jal   guTranslateF
/* 136E14 80243AD4 0000382D */   daddu $a3, $zero, $zero
/* 136E18 80243AD8 3C05BF4C */  lui   $a1, 0xbf4c
/* 136E1C 80243ADC 08090EC5 */  j     func_80243B14
/* 136E20 80243AE0 34A5CCCD */   ori   $a1, $a1, 0xcccd

.L80243AE4:
/* 136E24 80243AE4 3C054270 */  lui   $a1, 0x4270
/* 136E28 80243AE8 3C06435F */  lui   $a2, 0x435f
/* 136E2C 80243AEC 0C019E40 */  jal   guTranslateF
/* 136E30 80243AF0 0000382D */   daddu $a3, $zero, $zero
/* 136E34 80243AF4 3C05BF4C */  lui   $a1, 0xbf4c
/* 136E38 80243AF8 08090EC5 */  j     func_80243B14
/* 136E3C 80243AFC 34A5CCCD */   ori   $a1, $a1, 0xcccd

