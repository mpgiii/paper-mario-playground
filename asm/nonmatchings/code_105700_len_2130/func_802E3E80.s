.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_802E3E80
/* 105700 802E3E80 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 105704 802E3E84 AFBF0010 */  sw    $ra, 0x10($sp)
/* 105708 802E3E88 0C0B8D94 */  jal   func_802E3650
/* 10570C 802E3E8C 00000000 */   nop   
/* 105710 802E3E90 8FBF0010 */  lw    $ra, 0x10($sp)
/* 105714 802E3E94 03E00008 */  jr    $ra
/* 105718 802E3E98 27BD0018 */   addiu $sp, $sp, 0x18

/* 10571C 802E3E9C 3C028011 */  lui   $v0, 0x8011
/* 105720 802E3EA0 8C42EFCC */  lw    $v0, -0x1034($v0)
/* 105724 802E3EA4 9083000B */  lbu   $v1, 0xb($a0)
/* 105728 802E3EA8 30420001 */  andi  $v0, $v0, 1
/* 10572C 802E3EAC 50400007 */  beql  $v0, $zero, .L802E3ECC
/* 105730 802E3EB0 2463FFE0 */   addiu $v1, $v1, -0x20
/* 105734 802E3EB4 24630020 */  addiu $v1, $v1, 0x20
/* 105738 802E3EB8 286200C1 */  slti  $v0, $v1, 0xc1
/* 10573C 802E3EBC 50400005 */  beql  $v0, $zero, .L802E3ED4
/* 105740 802E3EC0 240300C0 */   addiu $v1, $zero, 0xc0
/* 105744 802E3EC4 03E00008 */  jr    $ra
/* 105748 802E3EC8 A083000B */   sb    $v1, 0xb($a0)

.L802E3ECC:
/* 10574C 802E3ECC 58600001 */  blezl $v1, .L802E3ED4
/* 105750 802E3ED0 0000182D */   daddu $v1, $zero, $zero
.L802E3ED4:
/* 105754 802E3ED4 A083000B */  sb    $v1, 0xb($a0)
/* 105758 802E3ED8 03E00008 */  jr    $ra
/* 10575C 802E3EDC 00000000 */   nop   

/* 105760 802E3EE0 9082000B */  lbu   $v0, 0xb($a0)
/* 105764 802E3EE4 2C4200FF */  sltiu $v0, $v0, 0xff
/* 105768 802E3EE8 10400006 */  beqz  $v0, .L802E3F04
/* 10576C 802E3EEC 2483000B */   addiu $v1, $a0, 0xb
/* 105770 802E3EF0 9084000B */  lbu   $a0, 0xb($a0)
/* 105774 802E3EF4 14800002 */  bnez  $a0, .L802E3F00
/* 105778 802E3EF8 24820020 */   addiu $v0, $a0, 0x20
/* 10577C 802E3EFC 2482001F */  addiu $v0, $a0, 0x1f
.L802E3F00:
/* 105780 802E3F00 A0620000 */  sb    $v0, ($v1)
.L802E3F04:
/* 105784 802E3F04 03E00008 */  jr    $ra
/* 105788 802E3F08 00000000 */   nop   

/* 10578C 802E3F0C 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 105790 802E3F10 AFB00020 */  sw    $s0, 0x20($sp)
/* 105794 802E3F14 0080802D */  daddu $s0, $a0, $zero
/* 105798 802E3F18 AFBF002C */  sw    $ra, 0x2c($sp)
/* 10579C 802E3F1C AFB20028 */  sw    $s2, 0x28($sp)
/* 1057A0 802E3F20 AFB10024 */  sw    $s1, 0x24($sp)
/* 1057A4 802E3F24 8E110040 */  lw    $s1, 0x40($s0)
/* 1057A8 802E3F28 86220010 */  lh    $v0, 0x10($s1)
/* 1057AC 802E3F2C 1040003E */  beqz  $v0, .L802E4028
/* 1057B0 802E3F30 3C120010 */   lui   $s2, 0x10
/* 1057B4 802E3F34 8E020000 */  lw    $v0, ($s0)
/* 1057B8 802E3F38 00521024 */  and   $v0, $v0, $s2
/* 1057BC 802E3F3C 1440003A */  bnez  $v0, .L802E4028
/* 1057C0 802E3F40 00000000 */   nop   
/* 1057C4 802E3F44 0C03951B */  jal   func_800E546C
/* 1057C8 802E3F48 00000000 */   nop   
/* 1057CC 802E3F4C 8E020000 */  lw    $v0, ($s0)
/* 1057D0 802E3F50 4600010D */  trunc.w.s $f4, $f0
/* 1057D4 802E3F54 44032000 */  mfc1  $v1, $f4
/* 1057D8 802E3F58 00521025 */  or    $v0, $v0, $s2
/* 1057DC 802E3F5C AE020000 */  sw    $v0, ($s0)
/* 1057E0 802E3F60 86240010 */  lh    $a0, 0x10($s1)
/* 1057E4 802E3F64 24020157 */  addiu $v0, $zero, 0x157
/* 1057E8 802E3F68 54820013 */  bnel  $a0, $v0, .L802E3FB8
/* 1057EC 802E3F6C 24630168 */   addiu $v1, $v1, 0x168
/* 1057F0 802E3F70 C602004C */  lwc1  $f2, 0x4c($s0)
/* 1057F4 802E3F74 24020015 */  addiu $v0, $zero, 0x15
/* 1057F8 802E3F78 AFA20010 */  sw    $v0, 0x10($sp)
/* 1057FC 802E3F7C AFA00014 */  sw    $zero, 0x14($sp)
/* 105800 802E3F80 AFA30018 */  sw    $v1, 0x18($sp)
/* 105804 802E3F84 9622000A */  lhu   $v0, 0xa($s1)
/* 105808 802E3F88 3C01403C */  lui   $at, 0x403c
/* 10580C 802E3F8C 44810800 */  mtc1  $at, $f1
/* 105810 802E3F90 44800000 */  mtc1  $zero, $f0
/* 105814 802E3F94 460010A1 */  cvt.d.s $f2, $f2
/* 105818 802E3F98 46201080 */  add.d $f2, $f2, $f0
/* 10581C 802E3F9C AFA2001C */  sw    $v0, 0x1c($sp)
/* 105820 802E3FA0 8E050048 */  lw    $a1, 0x48($s0)
/* 105824 802E3FA4 8E070050 */  lw    $a3, 0x50($s0)
/* 105828 802E3FA8 462010A0 */  cvt.s.d $f2, $f2
/* 10582C 802E3FAC 44061000 */  mfc1  $a2, $f2
/* 105830 802E3FB0 080B9008 */  j     .L802E4020
/* 105834 802E3FB4 24040157 */   addiu $a0, $zero, 0x157

.L802E3FB8:
/* 105838 802E3FB8 26050048 */  addiu $a1, $s0, 0x48
/* 10583C 802E3FBC 00041140 */  sll   $v0, $a0, 5
/* 105840 802E3FC0 C600004C */  lwc1  $f0, 0x4c($s0)
/* 105844 802E3FC4 3C014034 */  lui   $at, 0x4034
/* 105848 802E3FC8 44811800 */  mtc1  $at, $f3
/* 10584C 802E3FCC 44801000 */  mtc1  $zero, $f2
/* 105850 802E3FD0 3C018008 */  lui   $at, 0x8008
/* 105854 802E3FD4 00220821 */  addu  $at, $at, $v0
/* 105858 802E3FD8 942278F8 */  lhu   $v0, 0x78f8($at)
/* 10585C 802E3FDC 46000021 */  cvt.d.s $f0, $f0
/* 105860 802E3FE0 46220000 */  add.d $f0, $f0, $f2
/* 105864 802E3FE4 26070050 */  addiu $a3, $s0, 0x50
/* 105868 802E3FE8 30420040 */  andi  $v0, $v0, 0x40
/* 10586C 802E3FEC 10400003 */  beqz  $v0, .L802E3FFC
/* 105870 802E3FF0 46200020 */   cvt.s.d $f0, $f0
/* 105874 802E3FF4 080B9000 */  j     .L802E4000
/* 105878 802E3FF8 2402000B */   addiu $v0, $zero, 0xb

.L802E3FFC:
/* 10587C 802E3FFC 2402000A */  addiu $v0, $zero, 0xa
.L802E4000:
/* 105880 802E4000 AFA20010 */  sw    $v0, 0x10($sp)
/* 105884 802E4004 AFA00014 */  sw    $zero, 0x14($sp)
/* 105888 802E4008 AFA30018 */  sw    $v1, 0x18($sp)
/* 10588C 802E400C 9622000A */  lhu   $v0, 0xa($s1)
/* 105890 802E4010 44060000 */  mfc1  $a2, $f0
/* 105894 802E4014 AFA2001C */  sw    $v0, 0x1c($sp)
/* 105898 802E4018 8CA50000 */  lw    $a1, ($a1)
/* 10589C 802E401C 8CE70000 */  lw    $a3, ($a3)
.L802E4020:
/* 1058A0 802E4020 0C04C4FD */  jal   make_item_entity
/* 1058A4 802E4024 00000000 */   nop   
.L802E4028:
/* 1058A8 802E4028 8FBF002C */  lw    $ra, 0x2c($sp)
/* 1058AC 802E402C 8FB20028 */  lw    $s2, 0x28($sp)
/* 1058B0 802E4030 8FB10024 */  lw    $s1, 0x24($sp)
/* 1058B4 802E4034 8FB00020 */  lw    $s0, 0x20($sp)
/* 1058B8 802E4038 03E00008 */  jr    $ra
/* 1058BC 802E403C 27BD0030 */   addiu $sp, $sp, 0x30

/* 1058C0 802E4040 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1058C4 802E4044 AFBF0010 */  sw    $ra, 0x10($sp)
/* 1058C8 802E4048 0C04419E */  jal   func_80110678
/* 1058CC 802E404C 00000000 */   nop   
/* 1058D0 802E4050 8FBF0010 */  lw    $ra, 0x10($sp)
/* 1058D4 802E4054 03E00008 */  jr    $ra
/* 1058D8 802E4058 27BD0018 */   addiu $sp, $sp, 0x18

/* 1058DC 802E405C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 1058E0 802E4060 3C013F80 */  lui   $at, 0x3f80
/* 1058E4 802E4064 44810000 */  mtc1  $at, $f0
/* 1058E8 802E4068 2402003C */  addiu $v0, $zero, 0x3c
/* 1058EC 802E406C AFBF0018 */  sw    $ra, 0x18($sp)
/* 1058F0 802E4070 AFA20014 */  sw    $v0, 0x14($sp)
/* 1058F4 802E4074 E7A00010 */  swc1  $f0, 0x10($sp)
/* 1058F8 802E4078 8C850048 */  lw    $a1, 0x48($a0)
/* 1058FC 802E407C 8C86004C */  lw    $a2, 0x4c($a0)
/* 105900 802E4080 8C870050 */  lw    $a3, 0x50($a0)
/* 105904 802E4084 0C01C88C */  jal   func_80072230
/* 105908 802E4088 0000202D */   daddu $a0, $zero, $zero
/* 10590C 802E408C 8FBF0018 */  lw    $ra, 0x18($sp)
/* 105910 802E4090 3C01802F */  lui   $at, 0x802f
/* 105914 802E4094 AC22B3B0 */  sw    $v0, -0x4c50($at)
/* 105918 802E4098 03E00008 */  jr    $ra
/* 10591C 802E409C 27BD0020 */   addiu $sp, $sp, 0x20

/* 105920 802E40A0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 105924 802E40A4 AFB00010 */  sw    $s0, 0x10($sp)
/* 105928 802E40A8 0080802D */  daddu $s0, $a0, $zero
/* 10592C 802E40AC AFBF0014 */  sw    $ra, 0x14($sp)
/* 105930 802E40B0 0C0441A9 */  jal   func_801106A4
/* 105934 802E40B4 92040004 */   lbu   $a0, 4($s0)
/* 105938 802E40B8 0040182D */  daddu $v1, $v0, $zero
/* 10593C 802E40BC 24020012 */  addiu $v0, $zero, 0x12
/* 105940 802E40C0 10620003 */  beq   $v1, $v0, .L802E40D0
/* 105944 802E40C4 24020014 */   addiu $v0, $zero, 0x14
/* 105948 802E40C8 14620006 */  bne   $v1, $v0, .L802E40E4
/* 10594C 802E40CC 00000000 */   nop   
.L802E40D0:
/* 105950 802E40D0 86040014 */  lh    $a0, 0x14($s0)
/* 105954 802E40D4 3C050000 */  lui   $a1, 0
/* 105958 802E40D8 24A50094 */  addiu $a1, $a1, 0x94
/* 10595C 802E40DC 080B903C */  j     .L802E40F0
/* 105960 802E40E0 00000000 */   nop   

.L802E40E4:
/* 105964 802E40E4 86040014 */  lh    $a0, 0x14($s0)
/* 105968 802E40E8 3C050000 */  lui   $a1, 0
/* 10596C 802E40EC 24A50094 */  addiu $a1, $a1, 0x94
.L802E40F0:
/* 105970 802E40F0 0C048052 */  jal   play_model_animation
/* 105974 802E40F4 00000000 */   nop   
/* 105978 802E40F8 8FBF0014 */  lw    $ra, 0x14($sp)
/* 10597C 802E40FC 8FB00010 */  lw    $s0, 0x10($sp)
/* 105980 802E4100 03E00008 */  jr    $ra
/* 105984 802E4104 27BD0018 */   addiu $sp, $sp, 0x18

/* 105988 802E4108 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 10598C 802E410C AFBF0014 */  sw    $ra, 0x14($sp)
/* 105990 802E4110 AFB00010 */  sw    $s0, 0x10($sp)
/* 105994 802E4114 8C820040 */  lw    $v0, 0x40($a0)
/* 105998 802E4118 84440012 */  lh    $a0, 0x12($v0)
/* 10599C 802E411C 0C04417A */  jal   get_entity_by_index
/* 1059A0 802E4120 2410FFFE */   addiu $s0, $zero, -2
/* 1059A4 802E4124 8C430000 */  lw    $v1, ($v0)
/* 1059A8 802E4128 84440016 */  lh    $a0, 0x16($v0)
/* 1059AC 802E412C 00701824 */  and   $v1, $v1, $s0
/* 1059B0 802E4130 0C044181 */  jal   get_shadow_by_index
/* 1059B4 802E4134 AC430000 */   sw    $v1, ($v0)
/* 1059B8 802E4138 8C430000 */  lw    $v1, ($v0)
/* 1059BC 802E413C 00701824 */  and   $v1, $v1, $s0
/* 1059C0 802E4140 AC430000 */  sw    $v1, ($v0)
/* 1059C4 802E4144 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1059C8 802E4148 8FB00010 */  lw    $s0, 0x10($sp)
/* 1059CC 802E414C 03E00008 */  jr    $ra
/* 1059D0 802E4150 27BD0018 */   addiu $sp, $sp, 0x18

/* 1059D4 802E4154 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 1059D8 802E4158 AFB00018 */  sw    $s0, 0x18($sp)
/* 1059DC 802E415C 0080802D */  daddu $s0, $a0, $zero
/* 1059E0 802E4160 AFBF001C */  sw    $ra, 0x1c($sp)
/* 1059E4 802E4164 8E040040 */  lw    $a0, 0x40($s0)
/* 1059E8 802E4168 9483000A */  lhu   $v1, 0xa($a0)
/* 1059EC 802E416C 3402FFFF */  ori   $v0, $zero, 0xffff
/* 1059F0 802E4170 10620024 */  beq   $v1, $v0, .L802E4204
/* 1059F4 802E4174 00000000 */   nop   
/* 1059F8 802E4178 0C05152F */  jal   get_global_flag
/* 1059FC 802E417C 0060202D */   daddu $a0, $v1, $zero
/* 105A00 802E4180 10400020 */  beqz  $v0, .L802E4204
/* 105A04 802E4184 00000000 */   nop   
/* 105A08 802E4188 0C0441A9 */  jal   func_801106A4
/* 105A0C 802E418C 92040004 */   lbu   $a0, 4($s0)
/* 105A10 802E4190 3C04802F */  lui   $a0, 0x802f
/* 105A14 802E4194 2484A0A0 */  addiu $a0, $a0, -0x5f60
/* 105A18 802E4198 24030014 */  addiu $v1, $zero, 0x14
/* 105A1C 802E419C 10430003 */  beq   $v0, $v1, .L802E41AC
/* 105A20 802E41A0 00000000 */   nop   
/* 105A24 802E41A4 3C04802F */  lui   $a0, 0x802f
/* 105A28 802E41A8 2484A07C */  addiu $a0, $a0, -0x5f84
.L802E41AC:
/* 105A2C 802E41AC C6020048 */  lwc1  $f2, 0x48($s0)
/* 105A30 802E41B0 C604004C */  lwc1  $f4, 0x4c($s0)
/* 105A34 802E41B4 C6060050 */  lwc1  $f6, 0x50($s0)
/* 105A38 802E41B8 C6000064 */  lwc1  $f0, 0x64($s0)
/* 105A3C 802E41BC 3C028000 */  lui   $v0, 0x8000
/* 105A40 802E41C0 AFA20014 */  sw    $v0, 0x14($sp)
/* 105A44 802E41C4 4600020D */  trunc.w.s $f8, $f0
/* 105A48 802E41C8 E7A80010 */  swc1  $f8, 0x10($sp)
/* 105A4C 802E41CC 4600120D */  trunc.w.s $f8, $f2
/* 105A50 802E41D0 44054000 */  mfc1  $a1, $f8
/* 105A54 802E41D4 4600220D */  trunc.w.s $f8, $f4
/* 105A58 802E41D8 44064000 */  mfc1  $a2, $f8
/* 105A5C 802E41DC 4600320D */  trunc.w.s $f8, $f6
/* 105A60 802E41E0 44074000 */  mfc1  $a3, $f8
/* 105A64 802E41E4 0C044631 */  jal   create_entity
/* 105A68 802E41E8 00000000 */   nop   
/* 105A6C 802E41EC 3C05802F */  lui   $a1, 0x802f
/* 105A70 802E41F0 24A5A310 */  addiu $a1, $a1, -0x5cf0
/* 105A74 802E41F4 0C043EF0 */  jal   func_8010FBC0
/* 105A78 802E41F8 0200202D */   daddu $a0, $s0, $zero
/* 105A7C 802E41FC 080B9083 */  j     .L802E420C
/* 105A80 802E4200 00000000 */   nop   

.L802E4204:
/* 105A84 802E4204 0C043F5A */  jal   func_8010FD68
/* 105A88 802E4208 0200202D */   daddu $a0, $s0, $zero
.L802E420C:
/* 105A8C 802E420C 8FBF001C */  lw    $ra, 0x1c($sp)
/* 105A90 802E4210 8FB00018 */  lw    $s0, 0x18($sp)
/* 105A94 802E4214 03E00008 */  jr    $ra
/* 105A98 802E4218 27BD0020 */   addiu $sp, $sp, 0x20

/* 105A9C 802E421C 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 105AA0 802E4220 AFB1001C */  sw    $s1, 0x1c($sp)
/* 105AA4 802E4224 0080882D */  daddu $s1, $a0, $zero
/* 105AA8 802E4228 AFBF0024 */  sw    $ra, 0x24($sp)
/* 105AAC 802E422C AFB20020 */  sw    $s2, 0x20($sp)
/* 105AB0 802E4230 AFB00018 */  sw    $s0, 0x18($sp)
/* 105AB4 802E4234 0C0441A9 */  jal   func_801106A4
/* 105AB8 802E4238 92240004 */   lbu   $a0, 4($s1)
/* 105ABC 802E423C 3C04802F */  lui   $a0, 0x802f
/* 105AC0 802E4240 2484A07C */  addiu $a0, $a0, -0x5f84
/* 105AC4 802E4244 0040182D */  daddu $v1, $v0, $zero
/* 105AC8 802E4248 28620015 */  slti  $v0, $v1, 0x15
/* 105ACC 802E424C 10400005 */  beqz  $v0, .L802E4264
/* 105AD0 802E4250 28620012 */   slti  $v0, $v1, 0x12
/* 105AD4 802E4254 14400003 */  bnez  $v0, .L802E4264
/* 105AD8 802E4258 00000000 */   nop   
/* 105ADC 802E425C 3C04802F */  lui   $a0, 0x802f
/* 105AE0 802E4260 2484A0A0 */  addiu $a0, $a0, -0x5f60
.L802E4264:
/* 105AE4 802E4264 C6220048 */  lwc1  $f2, 0x48($s1)
/* 105AE8 802E4268 C624004C */  lwc1  $f4, 0x4c($s1)
/* 105AEC 802E426C C6260050 */  lwc1  $f6, 0x50($s1)
/* 105AF0 802E4270 C6200064 */  lwc1  $f0, 0x64($s1)
/* 105AF4 802E4274 3C028000 */  lui   $v0, 0x8000
/* 105AF8 802E4278 AFA20014 */  sw    $v0, 0x14($sp)
/* 105AFC 802E427C 4600020D */  trunc.w.s $f8, $f0
/* 105B00 802E4280 E7A80010 */  swc1  $f8, 0x10($sp)
/* 105B04 802E4284 4600120D */  trunc.w.s $f8, $f2
/* 105B08 802E4288 44054000 */  mfc1  $a1, $f8
/* 105B0C 802E428C 4600220D */  trunc.w.s $f8, $f4
/* 105B10 802E4290 44064000 */  mfc1  $a2, $f8
/* 105B14 802E4294 4600320D */  trunc.w.s $f8, $f6
/* 105B18 802E4298 44074000 */  mfc1  $a3, $f8
/* 105B1C 802E429C 0C044631 */  jal   create_entity
/* 105B20 802E42A0 00000000 */   nop   
/* 105B24 802E42A4 0040902D */  daddu $s2, $v0, $zero
/* 105B28 802E42A8 0C04417A */  jal   get_entity_by_index
/* 105B2C 802E42AC 0240202D */   daddu $a0, $s2, $zero
/* 105B30 802E42B0 0040802D */  daddu $s0, $v0, $zero
/* 105B34 802E42B4 8E020000 */  lw    $v0, ($s0)
/* 105B38 802E42B8 34430001 */  ori   $v1, $v0, 1
/* 105B3C 802E42BC AE030000 */  sw    $v1, ($s0)
/* 105B40 802E42C0 8E220000 */  lw    $v0, ($s1)
/* 105B44 802E42C4 3C040004 */  lui   $a0, 4
/* 105B48 802E42C8 00441024 */  and   $v0, $v0, $a0
/* 105B4C 802E42CC 10400002 */  beqz  $v0, .L802E42D8
/* 105B50 802E42D0 00641025 */   or    $v0, $v1, $a0
/* 105B54 802E42D4 AE020000 */  sw    $v0, ($s0)
.L802E42D8:
/* 105B58 802E42D8 8E220000 */  lw    $v0, ($s1)
/* 105B5C 802E42DC 30420004 */  andi  $v0, $v0, 4
/* 105B60 802E42E0 10400004 */  beqz  $v0, .L802E42F4
/* 105B64 802E42E4 00000000 */   nop   
/* 105B68 802E42E8 8E020000 */  lw    $v0, ($s0)
/* 105B6C 802E42EC 34420004 */  ori   $v0, $v0, 4
/* 105B70 802E42F0 AE020000 */  sw    $v0, ($s0)
.L802E42F4:
/* 105B74 802E42F4 0C044181 */  jal   get_shadow_by_index
/* 105B78 802E42F8 86040016 */   lh    $a0, 0x16($s0)
/* 105B7C 802E42FC 0040282D */  daddu $a1, $v0, $zero
/* 105B80 802E4300 3C020040 */  lui   $v0, 0x40
/* 105B84 802E4304 34420001 */  ori   $v0, $v0, 1
/* 105B88 802E4308 8CA30000 */  lw    $v1, ($a1)
/* 105B8C 802E430C 0220202D */  daddu $a0, $s1, $zero
/* 105B90 802E4310 00621825 */  or    $v1, $v1, $v0
/* 105B94 802E4314 0C044AC8 */  jal   func_80112B20
/* 105B98 802E4318 ACA30000 */   sw    $v1, ($a1)
/* 105B9C 802E431C 92240004 */  lbu   $a0, 4($s1)
/* 105BA0 802E4320 0C0441A9 */  jal   func_801106A4
/* 105BA4 802E4324 0040802D */   daddu $s0, $v0, $zero
/* 105BA8 802E4328 0040182D */  daddu $v1, $v0, $zero
/* 105BAC 802E432C 24020012 */  addiu $v0, $zero, 0x12
/* 105BB0 802E4330 10620003 */  beq   $v1, $v0, .L802E4340
/* 105BB4 802E4334 24020014 */   addiu $v0, $zero, 0x14
/* 105BB8 802E4338 14620005 */  bne   $v1, $v0, .L802E4350
/* 105BBC 802E433C 00000000 */   nop   
.L802E4340:
/* 105BC0 802E4340 3C04802F */  lui   $a0, 0x802f
/* 105BC4 802E4344 2484A660 */  addiu $a0, $a0, -0x59a0
/* 105BC8 802E4348 080B90DA */  j     .L802E4368
/* 105BCC 802E434C 00000000 */   nop   

.L802E4350:
/* 105BD0 802E4350 3C04802F */  lui   $a0, 0x802f
/* 105BD4 802E4354 2484A63C */  addiu $a0, $a0, -0x59c4
/* 105BD8 802E4358 12000003 */  beqz  $s0, .L802E4368
/* 105BDC 802E435C 00000000 */   nop   
/* 105BE0 802E4360 3C04802F */  lui   $a0, 0x802f
/* 105BE4 802E4364 2484A618 */  addiu $a0, $a0, -0x59e8
.L802E4368:
/* 105BE8 802E4368 C6220048 */  lwc1  $f2, 0x48($s1)
/* 105BEC 802E436C C624004C */  lwc1  $f4, 0x4c($s1)
/* 105BF0 802E4370 C6260050 */  lwc1  $f6, 0x50($s1)
/* 105BF4 802E4374 C6200064 */  lwc1  $f0, 0x64($s1)
/* 105BF8 802E4378 3C028000 */  lui   $v0, 0x8000
/* 105BFC 802E437C AFA20014 */  sw    $v0, 0x14($sp)
/* 105C00 802E4380 4600020D */  trunc.w.s $f8, $f0
/* 105C04 802E4384 E7A80010 */  swc1  $f8, 0x10($sp)
/* 105C08 802E4388 4600120D */  trunc.w.s $f8, $f2
/* 105C0C 802E438C 44054000 */  mfc1  $a1, $f8
/* 105C10 802E4390 4600220D */  trunc.w.s $f8, $f4
/* 105C14 802E4394 44064000 */  mfc1  $a2, $f8
/* 105C18 802E4398 4600320D */  trunc.w.s $f8, $f6
/* 105C1C 802E439C 44074000 */  mfc1  $a3, $f8
/* 105C20 802E43A0 0C044631 */  jal   create_entity
/* 105C24 802E43A4 00000000 */   nop   
/* 105C28 802E43A8 0C04417A */  jal   get_entity_by_index
/* 105C2C 802E43AC 0040202D */   daddu $a0, $v0, $zero
/* 105C30 802E43B0 9223000B */  lbu   $v1, 0xb($s1)
/* 105C34 802E43B4 0040802D */  daddu $s0, $v0, $zero
/* 105C38 802E43B8 A203000B */  sb    $v1, 0xb($s0)
/* 105C3C 802E43BC 8E220000 */  lw    $v0, ($s1)
/* 105C40 802E43C0 30420001 */  andi  $v0, $v0, 1
/* 105C44 802E43C4 14400005 */  bnez  $v0, .L802E43DC
/* 105C48 802E43C8 24020020 */   addiu $v0, $zero, 0x20
/* 105C4C 802E43CC 9222000B */  lbu   $v0, 0xb($s1)
/* 105C50 802E43D0 2C4200FF */  sltiu $v0, $v0, 0xff
/* 105C54 802E43D4 10400002 */  beqz  $v0, .L802E43E0
/* 105C58 802E43D8 24020020 */   addiu $v0, $zero, 0x20
.L802E43DC:
/* 105C5C 802E43DC A202000B */  sb    $v0, 0xb($s0)
.L802E43E0:
/* 105C60 802E43E0 8E220000 */  lw    $v0, ($s1)
/* 105C64 802E43E4 3C030004 */  lui   $v1, 4
/* 105C68 802E43E8 00431024 */  and   $v0, $v0, $v1
/* 105C6C 802E43EC 10400004 */  beqz  $v0, .L802E4400
/* 105C70 802E43F0 00000000 */   nop   
/* 105C74 802E43F4 8E020000 */  lw    $v0, ($s0)
/* 105C78 802E43F8 00431025 */  or    $v0, $v0, $v1
/* 105C7C 802E43FC AE020000 */  sw    $v0, ($s0)
.L802E4400:
/* 105C80 802E4400 8E020040 */  lw    $v0, 0x40($s0)
/* 105C84 802E4404 A4520012 */  sh    $s2, 0x12($v0)
/* 105C88 802E4408 8E220000 */  lw    $v0, ($s1)
/* 105C8C 802E440C 30420004 */  andi  $v0, $v0, 4
/* 105C90 802E4410 10400004 */  beqz  $v0, .L802E4424
/* 105C94 802E4414 2403FEFF */   addiu $v1, $zero, -0x101
/* 105C98 802E4418 8E020000 */  lw    $v0, ($s0)
/* 105C9C 802E441C 34420004 */  ori   $v0, $v0, 4
/* 105CA0 802E4420 AE020000 */  sw    $v0, ($s0)
.L802E4424:
/* 105CA4 802E4424 8E220000 */  lw    $v0, ($s1)
/* 105CA8 802E4428 86240016 */  lh    $a0, 0x16($s1)
/* 105CAC 802E442C 00431024 */  and   $v0, $v0, $v1
/* 105CB0 802E4430 0C044181 */  jal   get_shadow_by_index
/* 105CB4 802E4434 AE220000 */   sw    $v0, ($s1)
/* 105CB8 802E4438 0040282D */  daddu $a1, $v0, $zero
/* 105CBC 802E443C 3C031000 */  lui   $v1, 0x1000
/* 105CC0 802E4440 8CA20000 */  lw    $v0, ($a1)
/* 105CC4 802E4444 34630001 */  ori   $v1, $v1, 1
/* 105CC8 802E4448 00431025 */  or    $v0, $v0, $v1
/* 105CCC 802E444C ACA20000 */  sw    $v0, ($a1)
/* 105CD0 802E4450 0C044181 */  jal   get_shadow_by_index
/* 105CD4 802E4454 86040016 */   lh    $a0, 0x16($s0)
/* 105CD8 802E4458 0040282D */  daddu $a1, $v0, $zero
/* 105CDC 802E445C 8CA20000 */  lw    $v0, ($a1)
/* 105CE0 802E4460 3C030040 */  lui   $v1, 0x40
/* 105CE4 802E4464 00431025 */  or    $v0, $v0, $v1
/* 105CE8 802E4468 ACA20000 */  sw    $v0, ($a1)
/* 105CEC 802E446C 8FBF0024 */  lw    $ra, 0x24($sp)
/* 105CF0 802E4470 8FB20020 */  lw    $s2, 0x20($sp)
/* 105CF4 802E4474 8FB1001C */  lw    $s1, 0x1c($sp)
/* 105CF8 802E4478 8FB00018 */  lw    $s0, 0x18($sp)
/* 105CFC 802E447C 03E00008 */  jr    $ra
/* 105D00 802E4480 27BD0028 */   addiu $sp, $sp, 0x28

/* 105D04 802E4484 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 105D08 802E4488 0080182D */  daddu $v1, $a0, $zero
/* 105D0C 802E448C 2405FEFF */  addiu $a1, $zero, -0x101
/* 105D10 802E4490 AFBF0010 */  sw    $ra, 0x10($sp)
/* 105D14 802E4494 8C620000 */  lw    $v0, ($v1)
/* 105D18 802E4498 84640016 */  lh    $a0, 0x16($v1)
/* 105D1C 802E449C 34420001 */  ori   $v0, $v0, 1
/* 105D20 802E44A0 00451024 */  and   $v0, $v0, $a1
/* 105D24 802E44A4 0C044181 */  jal   get_shadow_by_index
/* 105D28 802E44A8 AC620000 */   sw    $v0, ($v1)
/* 105D2C 802E44AC 3C041000 */  lui   $a0, 0x1000
/* 105D30 802E44B0 8C430000 */  lw    $v1, ($v0)
/* 105D34 802E44B4 34840001 */  ori   $a0, $a0, 1
/* 105D38 802E44B8 00641825 */  or    $v1, $v1, $a0
/* 105D3C 802E44BC AC430000 */  sw    $v1, ($v0)
/* 105D40 802E44C0 8FBF0010 */  lw    $ra, 0x10($sp)
/* 105D44 802E44C4 03E00008 */  jr    $ra
/* 105D48 802E44C8 27BD0018 */   addiu $sp, $sp, 0x18

/* 105D4C 802E44CC 0080282D */  daddu $a1, $a0, $zero
/* 105D50 802E44D0 8CA20028 */  lw    $v0, 0x28($a1)
/* 105D54 802E44D4 14400003 */  bnez  $v0, .L802E44E4
/* 105D58 802E44D8 24020001 */   addiu $v0, $zero, 1
/* 105D5C 802E44DC 03E00008 */  jr    $ra
/* 105D60 802E44E0 0000102D */   daddu $v0, $zero, $zero

.L802E44E4:
/* 105D64 802E44E4 8CA30000 */  lw    $v1, ($a1)
/* 105D68 802E44E8 3C040100 */  lui   $a0, 0x100
/* 105D6C 802E44EC 00641825 */  or    $v1, $v1, $a0
/* 105D70 802E44F0 03E00008 */  jr    $ra
/* 105D74 802E44F4 ACA30000 */   sw    $v1, ($a1)

/* 105D78 802E44F8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 105D7C 802E44FC AFBF0010 */  sw    $ra, 0x10($sp)
/* 105D80 802E4500 0C03805E */  jal   func_800E0178
/* 105D84 802E4504 00000000 */   nop   
/* 105D88 802E4508 3C028011 */  lui   $v0, 0x8011
/* 105D8C 802E450C 2442EFC8 */  addiu $v0, $v0, -0x1038
/* 105D90 802E4510 8C430000 */  lw    $v1, ($v0)
/* 105D94 802E4514 3C040080 */  lui   $a0, 0x80
/* 105D98 802E4518 AC400054 */  sw    $zero, 0x54($v0)
/* 105D9C 802E451C 00641825 */  or    $v1, $v1, $a0
/* 105DA0 802E4520 24040008 */  addiu $a0, $zero, 8
/* 105DA4 802E4524 0C039769 */  jal   set_action_state
/* 105DA8 802E4528 AC430000 */   sw    $v1, ($v0)
/* 105DAC 802E452C 0C038C1B */  jal   func_800E306C
/* 105DB0 802E4530 00000000 */   nop   
/* 105DB4 802E4534 8FBF0010 */  lw    $ra, 0x10($sp)
/* 105DB8 802E4538 03E00008 */  jr    $ra
/* 105DBC 802E453C 27BD0018 */   addiu $sp, $sp, 0x18

/* 105DC0 802E4540 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 105DC4 802E4544 AFBF0010 */  sw    $ra, 0x10($sp)
/* 105DC8 802E4548 0C038069 */  jal   func_800E01A4
/* 105DCC 802E454C 00000000 */   nop   
/* 105DD0 802E4550 8FBF0010 */  lw    $ra, 0x10($sp)
/* 105DD4 802E4554 03E00008 */  jr    $ra
/* 105DD8 802E4558 27BD0018 */   addiu $sp, $sp, 0x18

/* 105DDC 802E455C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 105DE0 802E4560 AFB00010 */  sw    $s0, 0x10($sp)
/* 105DE4 802E4564 3C10800A */  lui   $s0, 0x800a
/* 105DE8 802E4568 8E10A66C */  lw    $s0, -0x5994($s0)
/* 105DEC 802E456C AFBF0014 */  sw    $ra, 0x14($sp)
/* 105DF0 802E4570 0C04417A */  jal   get_entity_by_index
/* 105DF4 802E4574 00000000 */   nop   
/* 105DF8 802E4578 3C04E300 */  lui   $a0, 0xe300
/* 105DFC 802E457C 34841001 */  ori   $a0, $a0, 0x1001
/* 105E00 802E4580 3C05D700 */  lui   $a1, 0xd700
/* 105E04 802E4584 34A50002 */  ori   $a1, $a1, 2
/* 105E08 802E4588 0200182D */  daddu $v1, $s0, $zero
/* 105E0C 802E458C 26100008 */  addiu $s0, $s0, 8
/* 105E10 802E4590 AC640000 */  sw    $a0, ($v1)
/* 105E14 802E4594 0200202D */  daddu $a0, $s0, $zero
/* 105E18 802E4598 AC600004 */  sw    $zero, 4($v1)
/* 105E1C 802E459C 2403FFFF */  addiu $v1, $zero, -1
/* 105E20 802E45A0 AC850000 */  sw    $a1, ($a0)
/* 105E24 802E45A4 0040282D */  daddu $a1, $v0, $zero
/* 105E28 802E45A8 AC830004 */  sw    $v1, 4($a0)
/* 105E2C 802E45AC 90A2000B */  lbu   $v0, 0xb($a1)
/* 105E30 802E45B0 2C4200FF */  sltiu $v0, $v0, 0xff
/* 105E34 802E45B4 14400011 */  bnez  $v0, .L802E45FC
/* 105E38 802E45B8 26100008 */   addiu $s0, $s0, 8
/* 105E3C 802E45BC 0200282D */  daddu $a1, $s0, $zero
/* 105E40 802E45C0 26100008 */  addiu $s0, $s0, 8
/* 105E44 802E45C4 3C07E200 */  lui   $a3, 0xe200
/* 105E48 802E45C8 34E7001C */  ori   $a3, $a3, 0x1c
/* 105E4C 802E45CC 3C060055 */  lui   $a2, 0x55
/* 105E50 802E45D0 34C62078 */  ori   $a2, $a2, 0x2078
/* 105E54 802E45D4 0200182D */  daddu $v1, $s0, $zero
/* 105E58 802E45D8 26100008 */  addiu $s0, $s0, 8
/* 105E5C 802E45DC 3C04FC12 */  lui   $a0, 0xfc12
/* 105E60 802E45E0 34841824 */  ori   $a0, $a0, 0x1824
/* 105E64 802E45E4 3C02FF33 */  lui   $v0, 0xff33
/* 105E68 802E45E8 3442FFFF */  ori   $v0, $v0, 0xffff
/* 105E6C 802E45EC ACA70000 */  sw    $a3, ($a1)
/* 105E70 802E45F0 ACA60004 */  sw    $a2, 4($a1)
/* 105E74 802E45F4 080B918C */  j     .L802E4630
/* 105E78 802E45F8 AC640000 */   sw    $a0, ($v1)

.L802E45FC:
/* 105E7C 802E45FC 0200202D */  daddu $a0, $s0, $zero
/* 105E80 802E4600 26100008 */  addiu $s0, $s0, 8
/* 105E84 802E4604 3C03FCFF */  lui   $v1, 0xfcff
/* 105E88 802E4608 3463B3FF */  ori   $v1, $v1, 0xb3ff
/* 105E8C 802E460C 3C02FF2C */  lui   $v0, 0xff2c
/* 105E90 802E4610 3442FE7F */  ori   $v0, $v0, 0xfe7f
/* 105E94 802E4614 AC830000 */  sw    $v1, ($a0)
/* 105E98 802E4618 0200182D */  daddu $v1, $s0, $zero
/* 105E9C 802E461C AC820004 */  sw    $v0, 4($a0)
/* 105EA0 802E4620 3C02FA00 */  lui   $v0, 0xfa00
/* 105EA4 802E4624 AC620000 */  sw    $v0, ($v1)
/* 105EA8 802E4628 90A2000B */  lbu   $v0, 0xb($a1)
/* 105EAC 802E462C 26100008 */  addiu $s0, $s0, 8
.L802E4630:
/* 105EB0 802E4630 AC620004 */  sw    $v0, 4($v1)
/* 105EB4 802E4634 8FBF0014 */  lw    $ra, 0x14($sp)
/* 105EB8 802E4638 3C01800A */  lui   $at, 0x800a
/* 105EBC 802E463C AC30A66C */  sw    $s0, -0x5994($at)
/* 105EC0 802E4640 8FB00010 */  lw    $s0, 0x10($sp)
/* 105EC4 802E4644 03E00008 */  jr    $ra
/* 105EC8 802E4648 27BD0018 */   addiu $sp, $sp, 0x18

