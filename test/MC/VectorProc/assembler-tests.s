# This file auto-generated by make_tests.py. Do not edit.
# RUN: llvm-mc -arch=vectorproc -show-encoding %s | FileCheck %s
or s21, s20, s15 # CHECK: 0xb4,0x82,0x07,0xc0
or v9, v8, s4 # CHECK: 0x28,0x01,0x02,0xc4
or_mask v8, s2, v21, s13 # CHECK: 0x15,0x89,0x06,0xc8
or v25, v26, v0 # CHECK: 0x3a,0x03,0x00,0xd0
or_mask v16, s2, v22, v10 # CHECK: 0x16,0x0a,0x05,0xd4
or s17, s22, 112 # CHECK: 0x36,0xc2,0x01,0x00
or v21, v17, -72 # CHECK: 0xb1,0xe2,0x7e,0x10
or_mask v17, s24, v5, 73 # CHECK: 0x25,0xe2,0x24,0x20
or v13, s23, 9 # CHECK: 0xb7,0x25,0x00,0x40
or_mask v25, s16, s14, -3 # CHECK: 0x2e,0xc3,0x7e,0x50
and s27, s16, s24 # CHECK: 0x70,0x03,0x1c,0xc0
and v6, v27, s7 # CHECK: 0xdb,0x80,0x13,0xc4
and_mask v22, s3, v16, s20 # CHECK: 0xd0,0x0e,0x1a,0xc8
and v25, v12, v13 # CHECK: 0x2c,0x83,0x16,0xd0
and_mask v1, s20, v19, v12 # CHECK: 0x33,0x50,0x16,0xd4
and s3, s6, 9 # CHECK: 0x66,0x24,0x80,0x00
and v7, v20, 22 # CHECK: 0xf4,0x58,0x80,0x10
and_mask v9, s20, v24, 99 # CHECK: 0x38,0xd1,0xb1,0x20
and v25, s21, -47 # CHECK: 0x35,0x47,0xff,0x40
and_mask v26, s2, s19, 43 # CHECK: 0x53,0x8b,0x95,0x50
xor s12, s10, s3 # CHECK: 0x8a,0x81,0x31,0xc0
xor v3, v19, s16 # CHECK: 0x73,0x00,0x38,0xc4
xor_mask v4, s1, v14, s10 # CHECK: 0x8e,0x04,0x35,0xc8
xor v12, v23, v22 # CHECK: 0x97,0x01,0x3b,0xd0
xor_mask v10, s2, v16, v12 # CHECK: 0x50,0x09,0x36,0xd4
xor s15, s3, 42 # CHECK: 0xe3,0xa9,0x80,0x01
xor v19, v16, -86 # CHECK: 0x70,0xaa,0xfe,0x11
xor_mask v2, s3, v23, -52 # CHECK: 0x57,0x0c,0xe6,0x21
xor v20, s27, 5 # CHECK: 0x9b,0x16,0x80,0x41
xor_mask v22, s25, s5, -19 # CHECK: 0xc5,0xe6,0xf6,0x51
add_i s23, s5, s4 # CHECK: 0xe5,0x02,0x52,0xc0
add_i v17, v17, s23 # CHECK: 0x31,0x82,0x5b,0xc4
add_i_mask v2, s12, v21, s8 # CHECK: 0x55,0x30,0x54,0xc8
add_i v26, v9, v18 # CHECK: 0x49,0x03,0x59,0xd0
add_i_mask v7, s1, v11, v21 # CHECK: 0xeb,0x84,0x5a,0xd4
add_i s4, s20, -116 # CHECK: 0x94,0x30,0xfe,0x02
add_i v24, v17, 67 # CHECK: 0x11,0x0f,0x81,0x12
add_i_mask v17, s1, v26, 12 # CHECK: 0x3a,0x06,0x86,0x22
add_i v8, s22, -95 # CHECK: 0x16,0x85,0xfe,0x42
add_i_mask v26, s2, s15, 19 # CHECK: 0x4f,0x8b,0x89,0x52
sub_i s12, s9, s16 # CHECK: 0x89,0x01,0x68,0xc0
sub_i v18, v7, s25 # CHECK: 0x47,0x82,0x6c,0xc4
sub_i_mask v18, s18, v16, s7 # CHECK: 0x50,0xca,0x63,0xc8
sub_i v26, v19, v20 # CHECK: 0x53,0x03,0x6a,0xd0
sub_i_mask v16, s7, v11, v7 # CHECK: 0x0b,0x9e,0x63,0xd4
sub_i s11, s9, -85 # CHECK: 0x69,0xad,0x7e,0x03
sub_i v22, v10, -22 # CHECK: 0xca,0xaa,0x7f,0x13
sub_i_mask v18, s2, v4, -106 # CHECK: 0x44,0x0a,0x4b,0x23
sub_i v18, s2, 94 # CHECK: 0x42,0x7a,0x01,0x43
sub_i_mask v13, s14, s16, 127 # CHECK: 0xb0,0xb9,0x3f,0x53
mul_i s27, s2, s6 # CHECK: 0x62,0x03,0x73,0xc0
mul_i v27, v4, s0 # CHECK: 0x64,0x03,0x70,0xc4
mul_i_mask v20, s1, v25, s21 # CHECK: 0x99,0x86,0x7a,0xc8
mul_i v17, v15, v1 # CHECK: 0x2f,0x82,0x70,0xd0
mul_i_mask v3, s2, v9, v11 # CHECK: 0x69,0x88,0x75,0xd4
mul_i s25, s11, -40 # CHECK: 0x2b,0x63,0xff,0x03
mul_i v0, v25, -6 # CHECK: 0x19,0xe8,0xff,0x13
mul_i_mask v7, s25, v10, 15 # CHECK: 0xea,0xe4,0x87,0x23
mul_i v9, s9, 7 # CHECK: 0x29,0x1d,0x80,0x43
mul_i_mask v1, s26, s18, 69 # CHECK: 0x32,0xe8,0xa2,0x53
ashr s17, s13, s15 # CHECK: 0x2d,0x82,0x97,0xc0
ashr v23, v13, s27 # CHECK: 0xed,0x82,0x9d,0xc4
ashr_mask v17, s22, v2, s27 # CHECK: 0x22,0xda,0x9d,0xc8
ashr v25, v10, v6 # CHECK: 0x2a,0x03,0x93,0xd0
ashr_mask v15, s3, v15, v9 # CHECK: 0xef,0x8d,0x94,0xd4
ashr s8, s26, 33 # CHECK: 0x1a,0x85,0x80,0x04
ashr v22, v10, 91 # CHECK: 0xca,0x6e,0x81,0x14
ashr_mask v13, s6, v15, 34 # CHECK: 0xaf,0x19,0x91,0x24
ashr v18, s27, 12 # CHECK: 0x5b,0x32,0x80,0x44
ashr_mask v23, s13, s4, -67 # CHECK: 0xe4,0xb6,0xde,0x54
shr s27, s24, s10 # CHECK: 0x78,0x03,0xa5,0xc0
shr v15, v7, s20 # CHECK: 0xe7,0x01,0xaa,0xc4
shr_mask v9, s11, v8, s16 # CHECK: 0x28,0x2d,0xa8,0xc8
shr v27, v5, v6 # CHECK: 0x65,0x03,0xa3,0xd0
shr_mask v11, s23, v16, v9 # CHECK: 0x70,0xdd,0xa4,0xd4
shr s12, s19, -28 # CHECK: 0x93,0x91,0x7f,0x05
shr v0, v7, -66 # CHECK: 0x07,0xf8,0x7e,0x15
shr_mask v25, s26, v3, -45 # CHECK: 0x23,0xeb,0x69,0x25
shr v23, s9, 66 # CHECK: 0xe9,0x0a,0x01,0x45
shr_mask v10, s18, s8, -58 # CHECK: 0x48,0x49,0x63,0x55
shl s12, s1, s15 # CHECK: 0x81,0x81,0xb7,0xc0
shl v19, v3, s8 # CHECK: 0x63,0x02,0xb4,0xc4
shl_mask v19, s20, v17, s5 # CHECK: 0x71,0xd2,0xb2,0xc8
shl v26, v21, v8 # CHECK: 0x55,0x03,0xb4,0xd0
shl_mask v2, s8, v15, v10 # CHECK: 0x4f,0x20,0xb5,0xd4
shl s5, s25, 99 # CHECK: 0xb9,0x8c,0x81,0x05
shl v9, v21, 69 # CHECK: 0x35,0x15,0x81,0x15
shl_mask v3, s8, v6, 58 # CHECK: 0x66,0x20,0x9d,0x25
shl v19, s1, -90 # CHECK: 0x61,0x9a,0xfe,0x45
shl_mask v6, s17, s23, 64 # CHECK: 0xd7,0x44,0xa0,0x55
add_f s17, s2, s24 # CHECK: 0x22,0x02,0x0c,0xc2
add_f v13, v7, s27 # CHECK: 0xa7,0x81,0x0d,0xc6
add_f_mask v3, s11, v13, s12 # CHECK: 0x6d,0x2c,0x06,0xca
add_f v1, v27, v12 # CHECK: 0x3b,0x00,0x06,0xd2
add_f_mask v14, s13, v4, v9 # CHECK: 0xc4,0xb5,0x04,0xd6
sub_f s9, s12, s0 # CHECK: 0x2c,0x01,0x10,0xc2
sub_f v13, v6, s5 # CHECK: 0xa6,0x81,0x12,0xc6
sub_f_mask v14, s16, v8, s26 # CHECK: 0xc8,0x41,0x1d,0xca
sub_f v12, v23, v25 # CHECK: 0x97,0x81,0x1c,0xd2
sub_f_mask v20, s10, v21, v13 # CHECK: 0x95,0xaa,0x16,0xd6
mul_f s19, s21, s0 # CHECK: 0x75,0x02,0x20,0xc2
mul_f v0, v5, s0 # CHECK: 0x05,0x00,0x20,0xc6
mul_f_mask v0, s27, v1, s19 # CHECK: 0x01,0xec,0x29,0xca
mul_f v22, v8, v17 # CHECK: 0xc8,0x82,0x28,0xd2
mul_f_mask v19, s23, v15, v21 # CHECK: 0x6f,0xde,0x2a,0xd6
flub s17, s1, s2 # CHECK: 0x21,0x02,0x91,0xc9
flub v16, v18, s5 # CHECK: 0x12,0x82,0x92,0xcd
flub_mask v2, s22, v1, s8 # CHECK: 0x41,0x58,0x94,0xc9
flub v10, v12, v18 # CHECK: 0x4c,0x01,0x99,0xd9
flub_mask v22, s20, v13, v9 # CHECK: 0xcd,0xd2,0x94,0xdd
flub s11, s14, 113 # CHECK: 0x6e,0xc5,0x81,0x4c
flub v27, v0, -9 # CHECK: 0x60,0xdf,0xff,0x5c
flub_mask v23, s11, v21, -27 # CHECK: 0xf5,0xae,0xf2,0x6c
flub v17, s23, 10 # CHECK: 0x37,0x2a,0x80,0x4c
flub_mask v8, s6, s10, -68 # CHECK: 0x0a,0x19,0xde,0x5c
clz s7, s1 # CHECK: 0xe0,0x80,0xc0,0xc0
clz v7, s1 # CHECK: 0xe0,0x80,0xc0,0xc4
clz_mask v7, s22, s1 # CHECK: 0xe0,0xd8,0xc0,0xc8
clz v7, v1 # CHECK: 0xe0,0x80,0xc0,0xd0
clz_mask v7, s22, v1 # CHECK: 0xe0,0xd8,0xc0,0xd4
ctz s2, s16 # CHECK: 0x40,0x00,0xe8,0xc0
ctz v2, s16 # CHECK: 0x40,0x00,0xe8,0xc4
ctz_mask v2, s13, s16 # CHECK: 0x40,0x34,0xe8,0xc8
ctz v2, v16 # CHECK: 0x40,0x00,0xe8,0xd0
ctz_mask v2, s13, v16 # CHECK: 0x40,0x34,0xe8,0xd4
move s13, s17 # CHECK: 0xa0,0x81,0xf8,0xc0
move v13, s17 # CHECK: 0xa0,0x81,0xf8,0xc4
move_mask v13, s8, s17 # CHECK: 0xa0,0xa1,0xf8,0xc8
move v13, v17 # CHECK: 0xa0,0x81,0xf8,0xd0
move_mask v13, s8, v17 # CHECK: 0xa0,0xa1,0xf8,0xd4
reciprocal s24, s7 # CHECK: 0x00,0x83,0xc3,0xc1
reciprocal v24, s7 # CHECK: 0x00,0x83,0xc3,0xc5
reciprocal_mask v24, s24, s7 # CHECK: 0x00,0xe3,0xc3,0xc9
reciprocal v24, v7 # CHECK: 0x00,0x83,0xc3,0xd1
reciprocal_mask v24, s24, v7 # CHECK: 0x00,0xe3,0xc3,0xd5
move s1, 72 # CHECK: 0x21,0x20,0x81,0x07
move v1, 72 # CHECK: 0x21,0x20,0x81,0x47
move_mask v1, s3, 72 # CHECK: 0x21,0x0c,0xa4,0x57
shuffle v1, v2, v3 # CHECK: 0x22,0x80,0xd1,0xd0
shuffle_mask v1, s4, v2, v3 # CHECK: 0x22,0x90,0xd1,0xd4
getlane s4, v5, s6 # CHECK: 0x85,0x00,0xa3,0xc5
getlane s4, v5, 7 # CHECK: 0x85,0x1c,0x00,0x1d
sext_8 s8, s9 # CHECK: 0x00,0x81,0xd4,0xc1
sext_16 s8, s9 # CHECK: 0x00,0x81,0xe4,0xc1
itof s8, s9 # CHECK: 0x00,0x81,0xa4,0xc2
ftoi s8, s9 # CHECK: 0x00,0x81,0xb4,0xc1
itof v8, v9 # CHECK: 0x00,0x81,0xa4,0xd2
ftoi v8, v9 # CHECK: 0x00,0x81,0xb4,0xd1
itof v8, s9 # CHECK: 0x00,0x81,0xa4,0xc6
ftoi v8, s9 # CHECK: 0x00,0x81,0xb4,0xc5
nop # CHECK: 0x00,0x00,0x00,0x00
seteq_i s25, s25, s26 # CHECK: 0x39,0x03,0x0d,0xc1
seteq_i s25, v25, s26 # CHECK: 0x39,0x03,0x0d,0xc5
seteq_i s25, v25, v26 # CHECK: 0x39,0x03,0x0d,0xd1
seteq_i s25, s25, 196 # CHECK: 0x39,0x13,0x03,0x08
seteq_i s25, v25, 196 # CHECK: 0x39,0x13,0x03,0x18
setne_i s0, s24, s18 # CHECK: 0x18,0x00,0x19,0xc1
setne_i s0, v24, s18 # CHECK: 0x18,0x00,0x19,0xc5
setne_i s0, v24, v18 # CHECK: 0x18,0x00,0x19,0xd1
setne_i s0, s24, 177 # CHECK: 0x18,0xc4,0x82,0x08
setne_i s0, v24, 177 # CHECK: 0x18,0xc4,0x82,0x18
setgt_i s17, s2, s7 # CHECK: 0x22,0x82,0x23,0xc1
setgt_i s17, v2, s7 # CHECK: 0x22,0x82,0x23,0xc5
setgt_i s17, v2, v7 # CHECK: 0x22,0x82,0x23,0xd1
setgt_i s17, s2, 55 # CHECK: 0x22,0xde,0x00,0x09
setgt_i s17, v2, 55 # CHECK: 0x22,0xde,0x00,0x19
setge_i s18, s16, s21 # CHECK: 0x50,0x82,0x3a,0xc1
setge_i s18, v16, s21 # CHECK: 0x50,0x82,0x3a,0xc5
setge_i s18, v16, v21 # CHECK: 0x50,0x82,0x3a,0xd1
setge_i s18, s16, 45 # CHECK: 0x50,0xb6,0x80,0x09
setge_i s18, v16, 45 # CHECK: 0x50,0xb6,0x80,0x19
setlt_i s16, s17, s2 # CHECK: 0x11,0x02,0x41,0xc1
setlt_i s16, v17, s2 # CHECK: 0x11,0x02,0x41,0xc5
setlt_i s16, v17, v2 # CHECK: 0x11,0x02,0x41,0xd1
setlt_i s16, s17, 109 # CHECK: 0x11,0xb6,0x01,0x0a
setlt_i s16, v17, 109 # CHECK: 0x11,0xb6,0x01,0x1a
setle_i s18, s21, s4 # CHECK: 0x55,0x02,0x52,0xc1
setle_i s18, v21, s4 # CHECK: 0x55,0x02,0x52,0xc5
setle_i s18, v21, v4 # CHECK: 0x55,0x02,0x52,0xd1
setle_i s18, s21, 52 # CHECK: 0x55,0xd2,0x80,0x0a
setle_i s18, v21, 52 # CHECK: 0x55,0xd2,0x80,0x1a
setgt_u s0, s6, s16 # CHECK: 0x06,0x00,0x68,0xc1
setgt_u s0, v6, s16 # CHECK: 0x06,0x00,0x68,0xc5
setgt_u s0, v6, v16 # CHECK: 0x06,0x00,0x68,0xd1
setgt_u s0, s6, 124 # CHECK: 0x06,0xf0,0x01,0x0b
setgt_u s0, v6, 124 # CHECK: 0x06,0xf0,0x01,0x1b
setge_u s2, s19, s24 # CHECK: 0x53,0x00,0x7c,0xc1
setge_u s2, v19, s24 # CHECK: 0x53,0x00,0x7c,0xc5
setge_u s2, v19, v24 # CHECK: 0x53,0x00,0x7c,0xd1
setge_u s2, s19, 239 # CHECK: 0x53,0xbc,0x83,0x0b
setge_u s2, v19, 239 # CHECK: 0x53,0xbc,0x83,0x1b
setlt_u s23, s19, s3 # CHECK: 0xf3,0x82,0x81,0xc1
setlt_u s23, v19, s3 # CHECK: 0xf3,0x82,0x81,0xc5
setlt_u s23, v19, v3 # CHECK: 0xf3,0x82,0x81,0xd1
setlt_u s23, s19, 16 # CHECK: 0xf3,0x42,0x00,0x0c
setlt_u s23, v19, 16 # CHECK: 0xf3,0x42,0x00,0x1c
setle_u s24, s25, s12 # CHECK: 0x19,0x03,0x96,0xc1
setle_u s24, v25, s12 # CHECK: 0x19,0x03,0x96,0xc5
setle_u s24, v25, v12 # CHECK: 0x19,0x03,0x96,0xd1
setle_u s24, s25, 126 # CHECK: 0x19,0xfb,0x81,0x0c
setle_u s24, v25, 126 # CHECK: 0x19,0xfb,0x81,0x1c
setgt_f s10, s17, s2 # CHECK: 0x51,0x01,0xc1,0xc2
setgt_f s10, v17, s2 # CHECK: 0x51,0x01,0xc1,0xc6
setgt_f s10, v17, v2 # CHECK: 0x51,0x01,0xc1,0xd2
setge_f s25, s13, s27 # CHECK: 0x2d,0x83,0xdd,0xc2
setge_f s25, v13, s27 # CHECK: 0x2d,0x83,0xdd,0xc6
setge_f s25, v13, v27 # CHECK: 0x2d,0x83,0xdd,0xd2
setlt_f s0, s12, s2 # CHECK: 0x0c,0x00,0xe1,0xc2
setlt_f s0, v12, s2 # CHECK: 0x0c,0x00,0xe1,0xc6
setlt_f s0, v12, v2 # CHECK: 0x0c,0x00,0xe1,0xd2
setle_f s11, s26, s17 # CHECK: 0x7a,0x81,0xf8,0xc2
setle_f s11, v26, s17 # CHECK: 0x7a,0x81,0xf8,0xc6
setle_f s11, v26, v17 # CHECK: 0x7a,0x81,0xf8,0xd2
load_u8 s2, (s17) # CHECK: 0x51,0x00,0x00,0xa0
load_u8 s2, 175(s17) # CHECK: 0x51,0xbc,0x02,0xa0
load_s8 s13, (s10) # CHECK: 0xaa,0x01,0x00,0xa2
load_s8 s13, 63(s10) # CHECK: 0xaa,0xfd,0x00,0xa2
load_u16 s11, (s21) # CHECK: 0x75,0x01,0x00,0xa4
load_u16 s11, 237(s21) # CHECK: 0x75,0xb5,0x03,0xa4
load_s16 s11, (s23) # CHECK: 0x77,0x01,0x00,0xa6
load_s16 s11, 146(s23) # CHECK: 0x77,0x49,0x02,0xa6
load_32 s8, (s6) # CHECK: 0x06,0x01,0x00,0xa8
load_32 s8, 9(s6) # CHECK: 0x06,0x25,0x00,0xa8
load_sync s25, (s17) # CHECK: 0x31,0x03,0x00,0xaa
load_sync s25, 135(s17) # CHECK: 0x31,0x1f,0x02,0xaa
store_8 s0, (s27) # CHECK: 0x1b,0x00,0x00,0x82
store_8 s0, 154(s27) # CHECK: 0x1b,0x68,0x02,0x82
store_16 s2, (s1) # CHECK: 0x41,0x00,0x00,0x86
store_16 s2, 32(s1) # CHECK: 0x41,0x80,0x00,0x86
store_32 s18, (s14) # CHECK: 0x4e,0x02,0x00,0x88
store_32 s18, 220(s14) # CHECK: 0x4e,0x72,0x03,0x88
store_sync s24, (s9) # CHECK: 0x09,0x03,0x00,0x8a
store_sync s24, 92(s9) # CHECK: 0x09,0x73,0x01,0x8a
load_v v11, 124(s18) # CHECK: 0x72,0xf1,0x01,0xae
load_v_mask v11, s26, 124(s18) # CHECK: 0x72,0x69,0x3e,0xb0
load_v v11, (s18) # CHECK: 0x72,0x01,0x00,0xae
load_v_mask v11, s26, (s18) # CHECK: 0x72,0x69,0x00,0xb0
store_v v11, 124(s18) # CHECK: 0x72,0xf1,0x01,0x8e
store_v_mask v11, s26, 124(s18) # CHECK: 0x72,0x69,0x3e,0x90
store_v v11, (s18) # CHECK: 0x72,0x01,0x00,0x8e
store_v_mask v11, s26, (s18) # CHECK: 0x72,0x69,0x00,0x90
load_gath v19, 112(v8) # CHECK: 0x68,0xc2,0x01,0xba
load_gath_mask v19, s22, 112(v8) # CHECK: 0x68,0x5a,0x38,0xbc
load_gath v19, (v8) # CHECK: 0x68,0x02,0x00,0xba
load_gath_mask v19, s22, (v8) # CHECK: 0x68,0x5a,0x00,0xbc
store_scat v19, 112(v8) # CHECK: 0x68,0xc2,0x01,0x9a
store_scat_mask v19, s22, 112(v8) # CHECK: 0x68,0x5a,0x38,0x9c
store_scat v19, (v8) # CHECK: 0x68,0x02,0x00,0x9a
store_scat_mask v19, s22, (v8) # CHECK: 0x68,0x5a,0x00,0x9c
getcr s7, 9 # CHECK: 0xe9,0x00,0x00,0xac
setcr s11, 13 # CHECK: 0x6d,0x01,0x00,0x8c
dflush s7 # CHECK: 0x07,0x00,0x00,0xe4
membar # CHECK: 0x00,0x00,0x00,0xe8
dinvalidate s9 # CHECK: 0x09,0x00,0x00,0xe2
iinvalidate s11 # CHECK: 0x0b,0x00,0x00,0xe6
