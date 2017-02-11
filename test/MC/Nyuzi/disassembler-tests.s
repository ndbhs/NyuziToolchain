# This file auto-generated by ./make_tests.py. Do not edit.
# RUN: llvm-mc -arch=nyuzi -disassemble %s | FileCheck %s
0x22 0x80 0x01 0xc0 # CHECK: or s1, s2, s3
0xa6 0x80 0x03 0xc4 # CHECK: or v5, v6, s7
0x2a 0xb1 0x05 0xc8 # CHECK: or_mask v9, s12, v10, s11
0xae 0x81 0x07 0xd0 # CHECK: or v13, v14, v15
0x32 0xd2 0x09 0xd4 # CHECK: or_mask v17, s20, v18, v19
0xb6 0x4e 0x01 0x00 # CHECK: or s21, s22, 83
0x19 0xe3 0x7f 0x10 # CHECK: or v24, v25, -8
0x60 0x07 0x2d 0x20 # CHECK: or_mask v27, s1, v0, 90
0x43 0x8c 0x7e 0x40 # CHECK: or v2, s3, -93
0xa6 0x1c 0x52 0x50 # CHECK: or_mask v5, s7, s6, -92
0x09 0x01 0x15 0xc0 # CHECK: and s8, s9, s10
0x8d 0x01 0x17 0xc4 # CHECK: and v12, v13, s14
0x11 0x4e 0x19 0xc8 # CHECK: and_mask v16, s19, v17, s18
0x95 0x02 0x1b 0xd0 # CHECK: and v20, v21, v22
0x19 0x6f 0x1d 0xd4 # CHECK: and_mask v24, s27, v25, v26
0x01 0x34 0x80 0x00 # CHECK: and s0, s1, 13
0x64 0x2c 0xff 0x10 # CHECK: and v3, v4, -53
0xc7 0xa0 0xcb 0x20 # CHECK: and_mask v6, s8, v7, -105
0x2a 0xfd 0xff 0x40 # CHECK: and v9, s10, -1
0x8d 0xb9 0xb6 0x50 # CHECK: and_mask v12, s14, s13, 109
0xf0 0x81 0x38 0xc0 # CHECK: xor s15, s16, s17
0x74 0x82 0x3a 0xc4 # CHECK: xor v19, v20, s21
0xf8 0xea 0x3c 0xc8 # CHECK: xor_mask v23, s26, v24, s25
0x60 0x83 0x30 0xd0 # CHECK: xor v27, v0, v1
0x64 0x98 0x32 0xd4 # CHECK: xor_mask v3, s6, v4, v5
0xe8 0xd8 0x80 0x01 # CHECK: xor s7, s8, 54
0x4b 0xd5 0xff 0x11 # CHECK: xor v10, v11, -11
0xae 0xbd 0xfa 0x21 # CHECK: xor_mask v13, s15, v14, -11
0x11 0xb6 0xfe 0x41 # CHECK: xor v16, s17, -83
0x74 0xd6 0xef 0x51 # CHECK: xor_mask v19, s21, s20, -33
0xd7 0x02 0x5c 0xc0 # CHECK: add_i s22, s23, s24
0x5b 0x03 0x50 0xc4 # CHECK: add_i v26, v27, s0
0x43 0x14 0x52 0xc8 # CHECK: add_i_mask v2, s5, v3, s4
0xc7 0x00 0x54 0xd0 # CHECK: add_i v6, v7, v8
0x4b 0x35 0x56 0xd4 # CHECK: add_i_mask v10, s13, v11, v12
0xcf 0x29 0x80 0x02 # CHECK: add_i s14, s15, 10
0x32 0x46 0xff 0x12 # CHECK: add_i v17, v18, -47
0x95 0x5a 0x87 0x22 # CHECK: add_i_mask v20, s22, v21, 14
0xf8 0x66 0x81 0x42 # CHECK: add_i v23, s24, 89
0x5b 0x83 0xe5 0x52 # CHECK: add_i_mask v26, s0, s27, -53
0x22 0x80 0x61 0xc0 # CHECK: sub_i s1, s2, s3
0xa6 0x80 0x63 0xc4 # CHECK: sub_i v5, v6, s7
0x2a 0xb1 0x65 0xc8 # CHECK: sub_i_mask v9, s12, v10, s11
0xae 0x81 0x67 0xd0 # CHECK: sub_i v13, v14, v15
0x32 0xd2 0x69 0xd4 # CHECK: sub_i_mask v17, s20, v18, v19
0xb6 0xd2 0x01 0x03 # CHECK: sub_i s21, s22, 116
0x19 0x47 0x7e 0x13 # CHECK: sub_i v24, v25, -111
0x60 0x07 0x4f 0x23 # CHECK: sub_i_mask v27, s1, v0, -98
0x43 0x3c 0x7e 0x43 # CHECK: sub_i v2, s3, -113
0xa6 0x1c 0x7a 0x53 # CHECK: sub_i_mask v5, s7, s6, -12
0x09 0x01 0x75 0xc0 # CHECK: mull_i s8, s9, s10
0x8d 0x01 0x77 0xc4 # CHECK: mull_i v12, v13, s14
0x11 0x4e 0x79 0xc8 # CHECK: mull_i_mask v16, s19, v17, s18
0x95 0x02 0x7b 0xd0 # CHECK: mull_i v20, v21, v22
0x19 0x6f 0x7d 0xd4 # CHECK: mull_i_mask v24, s27, v25, v26
0x01 0x60 0xfe 0x03 # CHECK: mull_i s0, s1, -104
0x64 0x10 0x81 0x13 # CHECK: mull_i v3, v4, 68
0xc7 0xa0 0xce 0x23 # CHECK: mull_i_mask v6, s8, v7, -99
0x2a 0xb5 0x81 0x43 # CHECK: mull_i v9, s10, 109
0x8d 0x39 0x9a 0x53 # CHECK: mull_i_mask v12, s14, s13, 52
0xf0 0x81 0x88 0xc0 # CHECK: mulh_u s15, s16, s17
0x74 0x82 0x8a 0xc4 # CHECK: mulh_u v19, v20, s21
0xf8 0xea 0x8c 0xc8 # CHECK: mulh_u_mask v23, s26, v24, s25
0x60 0x83 0x80 0xd0 # CHECK: mulh_u v27, v0, v1
0x64 0x98 0x82 0xd4 # CHECK: mulh_u_mask v3, s6, v4, v5
0xe8 0x7c 0x7e 0x04 # CHECK: mulh_u s7, s8, -97
0x4b 0x91 0x7f 0x14 # CHECK: mulh_u v10, v11, -28
0xae 0xbd 0x68 0x24 # CHECK: mulh_u_mask v13, s15, v14, -47
0x11 0x82 0x7e 0x44 # CHECK: mulh_u v16, s17, -96
0x74 0xd6 0x13 0x54 # CHECK: mulh_u_mask v19, s21, s20, 39
0xd7 0x02 0x9c 0xc0 # CHECK: ashr s22, s23, s24
0x5b 0x03 0x90 0xc4 # CHECK: ashr v26, v27, s0
0x43 0x14 0x92 0xc8 # CHECK: ashr_mask v2, s5, v3, s4
0xc7 0x00 0x94 0xd0 # CHECK: ashr v6, v7, v8
0x4b 0x35 0x96 0xd4 # CHECK: ashr_mask v10, s13, v11, v12
0xcf 0x0d 0x80 0x04 # CHECK: ashr s14, s15, 3
0x32 0x3e 0xff 0x14 # CHECK: ashr v17, v18, -49
0x95 0xda 0xbf 0x24 # CHECK: ashr_mask v20, s22, v21, 127
0xf8 0x96 0x80 0x44 # CHECK: ashr v23, s24, 37
0x5b 0x03 0xc2 0x54 # CHECK: ashr_mask v26, s0, s27, -124
0x22 0x80 0xa1 0xc0 # CHECK: shr s1, s2, s3
0xa6 0x80 0xa3 0xc4 # CHECK: shr v5, v6, s7
0x2a 0xb1 0xa5 0xc8 # CHECK: shr_mask v9, s12, v10, s11
0xae 0x81 0xa7 0xd0 # CHECK: shr v13, v14, v15
0x32 0xd2 0xa9 0xd4 # CHECK: shr_mask v17, s20, v18, v19
0xb6 0xc2 0x01 0x05 # CHECK: shr s21, s22, 112
0x19 0xc3 0x7f 0x15 # CHECK: shr v24, v25, -16
0x60 0x87 0x35 0x25 # CHECK: shr_mask v27, s1, v0, 107
0x43 0xb4 0x7f 0x45 # CHECK: shr v2, s3, -19
0xa6 0x1c 0x5c 0x55 # CHECK: shr_mask v5, s7, s6, -72
0x09 0x01 0xb5 0xc0 # CHECK: shl s8, s9, s10
0x8d 0x01 0xb7 0xc4 # CHECK: shl v12, v13, s14
0x11 0x4e 0xb9 0xc8 # CHECK: shl_mask v16, s19, v17, s18
0x95 0x02 0xbb 0xd0 # CHECK: shl v20, v21, v22
0x19 0x6f 0xbd 0xd4 # CHECK: shl_mask v24, s27, v25, v26
0x01 0x54 0x81 0x05 # CHECK: shl s0, s1, 85
0x64 0xf4 0xff 0x15 # CHECK: shl v3, v4, -3
0xc7 0xa0 0xda 0x25 # CHECK: shl_mask v6, s8, v7, -75
0x2a 0x65 0x81 0x45 # CHECK: shl v9, s10, 89
0x8d 0x39 0xf7 0x55 # CHECK: shl_mask v12, s14, s13, -18
0xf0 0x81 0x08 0xc2 # CHECK: add_f s15, s16, s17
0x74 0x82 0x0a 0xc6 # CHECK: add_f v19, v20, s21
0xf8 0xea 0x0c 0xca # CHECK: add_f_mask v23, s26, v24, s25
0x60 0x83 0x00 0xd2 # CHECK: add_f v27, v0, v1
0x64 0x98 0x02 0xd6 # CHECK: add_f_mask v3, s6, v4, v5
0xe8 0x80 0x14 0xc2 # CHECK: sub_f s7, s8, s9
0x6c 0x81 0x16 0xc6 # CHECK: sub_f v11, v12, s13
0xf0 0xc9 0x18 0xca # CHECK: sub_f_mask v15, s18, v16, s17
0x74 0x82 0x1a 0xd2 # CHECK: sub_f v19, v20, v21
0xf8 0xea 0x1c 0xd6 # CHECK: sub_f_mask v23, s26, v24, v25
0x60 0x83 0x20 0xc2 # CHECK: mul_f s27, s0, s1
0x64 0x80 0x22 0xc6 # CHECK: mul_f v3, v4, s5
0xe8 0xa8 0x24 0xca # CHECK: mul_f_mask v7, s10, v8, s9
0x6c 0x81 0x26 0xd2 # CHECK: mul_f v11, v12, v13
0xf0 0xc9 0x28 0xd6 # CHECK: mul_f_mask v15, s18, v16, v17
0x74 0x82 0xfa 0xc1 # CHECK: mulh_i s19, s20, s21
0xf8 0x82 0xfc 0xc5 # CHECK: mulh_i v23, v24, s25
0x60 0x8b 0xf0 0xc9 # CHECK: mulh_i_mask v27, s2, v0, s1
0x64 0x80 0xf2 0xd1 # CHECK: mulh_i v3, v4, v5
0xe8 0xa8 0xf4 0xd5 # CHECK: mulh_i_mask v7, s10, v8, v9
0x6c 0xe1 0x80 0x0f # CHECK: mulh_i s11, s12, 56
0xcf 0xcd 0x81 0x1f # CHECK: mulh_i v14, v15, 115
0x32 0x4e 0xfe 0x2f # CHECK: mulh_i_mask v17, s19, v18, -4
0x95 0xfa 0x80 0x4f # CHECK: mulh_i v20, s21, 62
0xf8 0xe6 0xbb 0x5f # CHECK: mulh_i_mask v23, s25, s24, 119
0x20 0x00 0xc1 0xc0 # CHECK: clz s1, s2
0x20 0x00 0xc1 0xc4 # CHECK: clz v1, s2
0x20 0x0c 0xc1 0xc8 # CHECK: clz_mask v1, s3, s2
0x20 0x00 0xc1 0xd0 # CHECK: clz v1, v2
0x20 0x0c 0xc1 0xd4 # CHECK: clz_mask v1, s3, v2
0x80 0x80 0xe2 0xc0 # CHECK: ctz s4, s5
0x80 0x80 0xe2 0xc4 # CHECK: ctz v4, s5
0x80 0x98 0xe2 0xc8 # CHECK: ctz_mask v4, s6, s5
0x80 0x80 0xe2 0xd0 # CHECK: ctz v4, v5
0x80 0x98 0xe2 0xd4 # CHECK: ctz_mask v4, s6, v5
0xe0 0x00 0xf4 0xc0 # CHECK: move s7, s8
0xe0 0x00 0xf4 0xc4 # CHECK: move v7, s8
0xe0 0x24 0xf4 0xc8 # CHECK: move_mask v7, s9, s8
0xe0 0x00 0xf4 0xd0 # CHECK: move v7, v8
0xe0 0x24 0xf4 0xd4 # CHECK: move_mask v7, s9, v8
0x40 0x81 0xc5 0xc1 # CHECK: reciprocal s10, s11
0x40 0x81 0xc5 0xc5 # CHECK: reciprocal v10, s11
0x40 0xb1 0xc5 0xc9 # CHECK: reciprocal_mask v10, s12, s11
0x40 0x81 0xc5 0xd1 # CHECK: reciprocal v10, v11
0x40 0xb1 0xc5 0xd5 # CHECK: reciprocal_mask v10, s12, v11
0x21 0x20 0x81 0x07 # CHECK: move s1, 72
0x21 0x20 0x81 0x47 # CHECK: move v1, 72
0x21 0x0c 0xa4 0x57 # CHECK: move_mask v1, s3, 72
0x22 0x80 0xd1 0xd0 # CHECK: shuffle v1, v2, v3
0x22 0x90 0xd1 0xd4 # CHECK: shuffle_mask v1, s4, v2, v3
0x85 0x00 0xa3 0xc5 # CHECK: getlane s4, v5, s6
0x85 0x1c 0x00 0x1d # CHECK: getlane s4, v5, 7
0x00 0x81 0xd4 0xc1 # CHECK: sext_8 s8, s9
0x00 0x81 0xe4 0xc1 # CHECK: sext_16 s8, s9
0x00 0x81 0xa4 0xc2 # CHECK: itof s8, s9
0x00 0x81 0xb4 0xc1 # CHECK: ftoi s8, s9
0x00 0x81 0xa4 0xd2 # CHECK: itof v8, v9
0x00 0x81 0xb4 0xd1 # CHECK: ftoi v8, v9
0x00 0x81 0xa4 0xc6 # CHECK: itof v8, s9
0x00 0x81 0xb4 0xc5 # CHECK: ftoi v8, s9
0x00 0x00 0x00 0x00 # CHECK: nop
0x22 0x80 0x01 0xc1 # CHECK: cmpeq_i s1, s2, s3
0x22 0x80 0x01 0xc5 # CHECK: cmpeq_i s1, v2, s3
0x22 0x80 0x01 0xd1 # CHECK: cmpeq_i s1, v2, v3
0x22 0x78 0x00 0x08 # CHECK: cmpeq_i s1, s2, 30
0x22 0x78 0x00 0x18 # CHECK: cmpeq_i s1, v2, 30
0x85 0x00 0x13 0xc1 # CHECK: cmpne_i s4, s5, s6
0x85 0x00 0x13 0xc5 # CHECK: cmpne_i s4, v5, s6
0x85 0x00 0x13 0xd1 # CHECK: cmpne_i s4, v5, v6
0x85 0xe8 0x80 0x08 # CHECK: cmpne_i s4, s5, 58
0x85 0xe8 0x80 0x18 # CHECK: cmpne_i s4, v5, 58
0xe8 0x80 0x24 0xc1 # CHECK: cmpgt_i s7, s8, s9
0xe8 0x80 0x24 0xc5 # CHECK: cmpgt_i s7, v8, s9
0xe8 0x80 0x24 0xd1 # CHECK: cmpgt_i s7, v8, v9
0xe8 0x20 0x00 0x09 # CHECK: cmpgt_i s7, s8, 8
0xe8 0x20 0x00 0x19 # CHECK: cmpgt_i s7, v8, 8
0x4b 0x01 0x36 0xc1 # CHECK: cmpge_i s10, s11, s12
0x4b 0x01 0x36 0xc5 # CHECK: cmpge_i s10, v11, s12
0x4b 0x01 0x36 0xd1 # CHECK: cmpge_i s10, v11, v12
0x4b 0xa9 0x83 0x09 # CHECK: cmpge_i s10, s11, 234
0x4b 0xa9 0x83 0x19 # CHECK: cmpge_i s10, v11, 234
0xae 0x81 0x47 0xc1 # CHECK: cmplt_i s13, s14, s15
0xae 0x81 0x47 0xc5 # CHECK: cmplt_i s13, v14, s15
0xae 0x81 0x47 0xd1 # CHECK: cmplt_i s13, v14, v15
0xae 0x55 0x02 0x0a # CHECK: cmplt_i s13, s14, 149
0xae 0x55 0x02 0x1a # CHECK: cmplt_i s13, v14, 149
0x11 0x02 0x59 0xc1 # CHECK: cmple_i s16, s17, s18
0x11 0x02 0x59 0xc5 # CHECK: cmple_i s16, v17, s18
0x11 0x02 0x59 0xd1 # CHECK: cmple_i s16, v17, v18
0x11 0xea 0x80 0x0a # CHECK: cmple_i s16, s17, 58
0x11 0xea 0x80 0x1a # CHECK: cmple_i s16, v17, 58
0x74 0x82 0x6a 0xc1 # CHECK: cmpgt_u s19, s20, s21
0x74 0x82 0x6a 0xc5 # CHECK: cmpgt_u s19, v20, s21
0x74 0x82 0x6a 0xd1 # CHECK: cmpgt_u s19, v20, v21
0x74 0x72 0x01 0x0b # CHECK: cmpgt_u s19, s20, 92
0x74 0x72 0x01 0x1b # CHECK: cmpgt_u s19, v20, 92
0xd7 0x02 0x7c 0xc1 # CHECK: cmpge_u s22, s23, s24
0xd7 0x02 0x7c 0xc5 # CHECK: cmpge_u s22, v23, s24
0xd7 0x02 0x7c 0xd1 # CHECK: cmpge_u s22, v23, v24
0xd7 0xfe 0x83 0x0b # CHECK: cmpge_u s22, s23, 255
0xd7 0xfe 0x83 0x1b # CHECK: cmpge_u s22, v23, 255
0x3a 0x83 0x8d 0xc1 # CHECK: cmplt_u s25, s26, s27
0x3a 0x83 0x8d 0xc5 # CHECK: cmplt_u s25, v26, s27
0x3a 0x83 0x8d 0xd1 # CHECK: cmplt_u s25, v26, v27
0x3a 0x2f 0x00 0x0c # CHECK: cmplt_u s25, s26, 11
0x3a 0x2f 0x00 0x1c # CHECK: cmplt_u s25, v26, 11
0x01 0x00 0x91 0xc1 # CHECK: cmple_u s0, s1, s2
0x01 0x00 0x91 0xc5 # CHECK: cmple_u s0, v1, s2
0x01 0x00 0x91 0xd1 # CHECK: cmple_u s0, v1, v2
0x01 0xb4 0x82 0x0c # CHECK: cmple_u s0, s1, 173
0x01 0xb4 0x82 0x1c # CHECK: cmple_u s0, v1, 173
0x64 0x80 0xc2 0xc2 # CHECK: cmpgt_f s3, s4, s5
0x64 0x80 0xc2 0xc6 # CHECK: cmpgt_f s3, v4, s5
0x64 0x80 0xc2 0xd2 # CHECK: cmpgt_f s3, v4, v5
0xc7 0x00 0xd4 0xc2 # CHECK: cmpge_f s6, s7, s8
0xc7 0x00 0xd4 0xc6 # CHECK: cmpge_f s6, v7, s8
0xc7 0x00 0xd4 0xd2 # CHECK: cmpge_f s6, v7, v8
0x2a 0x81 0xe5 0xc2 # CHECK: cmplt_f s9, s10, s11
0x2a 0x81 0xe5 0xc6 # CHECK: cmplt_f s9, v10, s11
0x2a 0x81 0xe5 0xd2 # CHECK: cmplt_f s9, v10, v11
0x8d 0x01 0xf7 0xc2 # CHECK: cmple_f s12, s13, s14
0x8d 0x01 0xf7 0xc6 # CHECK: cmple_f s12, v13, s14
0x8d 0x01 0xf7 0xd2 # CHECK: cmple_f s12, v13, v14
0x22 0x00 0x00 0xa0 # CHECK: load_u8 s1, (s2)
0x22 0x0c 0x00 0xa0 # CHECK: load_u8 s1, 3(s2)
0x85 0x00 0x00 0xa2 # CHECK: load_s8 s4, (s5)
0x85 0x18 0x00 0xa2 # CHECK: load_s8 s4, 6(s5)
0xe8 0x00 0x00 0xa4 # CHECK: load_u16 s7, (s8)
0xe8 0x24 0x00 0xa4 # CHECK: load_u16 s7, 9(s8)
0x4b 0x01 0x00 0xa6 # CHECK: load_s16 s10, (s11)
0x4b 0x31 0x00 0xa6 # CHECK: load_s16 s10, 12(s11)
0xae 0x01 0x00 0xa8 # CHECK: load_32 s13, (s14)
0xae 0x3d 0x00 0xa8 # CHECK: load_32 s13, 15(s14)
0x11 0x02 0x00 0xaa # CHECK: load_sync s16, (s17)
0x11 0x4a 0x00 0xaa # CHECK: load_sync s16, 18(s17)
0x74 0x02 0x00 0x82 # CHECK: store_8 s19, (s20)
0x74 0x56 0x00 0x82 # CHECK: store_8 s19, 21(s20)
0xd7 0x02 0x00 0x86 # CHECK: store_16 s22, (s23)
0xd7 0x62 0x00 0x86 # CHECK: store_16 s22, 24(s23)
0x3a 0x03 0x00 0x88 # CHECK: store_32 s25, (s26)
0x3a 0x6f 0x00 0x88 # CHECK: store_32 s25, 27(s26)
0x01 0x00 0x00 0x8a # CHECK: store_sync s0, (s1)
0x01 0x08 0x00 0x8a # CHECK: store_sync s0, 2(s1)
0x22 0xa0 0x00 0xae # CHECK: load_v v1, 40(s2)
0x22 0x0c 0x14 0xb0 # CHECK: load_v_mask v1, s3, 40(s2)
0x22 0x00 0x00 0xae # CHECK: load_v v1, (s2)
0x22 0x0c 0x00 0xb0 # CHECK: load_v_mask v1, s3, (s2)
0x22 0xa0 0x00 0x8e # CHECK: store_v v1, 40(s2)
0x22 0x0c 0x14 0x90 # CHECK: store_v_mask v1, s3, 40(s2)
0x22 0x00 0x00 0x8e # CHECK: store_v v1, (s2)
0x22 0x0c 0x00 0x90 # CHECK: store_v_mask v1, s3, (s2)
0x85 0x50 0x00 0xba # CHECK: load_gath v4, 20(v5)
0x85 0x18 0x0a 0xbc # CHECK: load_gath_mask v4, s6, 20(v5)
0x85 0x00 0x00 0xba # CHECK: load_gath v4, (v5)
0x85 0x18 0x00 0xbc # CHECK: load_gath_mask v4, s6, (v5)
0x85 0x50 0x00 0x9a # CHECK: store_scat v4, 20(v5)
0x85 0x18 0x0a 0x9c # CHECK: store_scat_mask v4, s6, 20(v5)
0x85 0x00 0x00 0x9a # CHECK: store_scat v4, (v5)
0x85 0x18 0x00 0x9c # CHECK: store_scat_mask v4, s6, (v5)
0xe9 0x00 0x00 0xac # CHECK: getcr s7, 9
0x6d 0x01 0x00 0x8c # CHECK: setcr s11, 13
0x07 0x00 0x00 0xe4 # CHECK: dflush s7
0x00 0x00 0x00 0xe8 # CHECK: membar
0x09 0x00 0x00 0xe2 # CHECK: dinvalidate s9
0x0b 0x00 0x00 0xe6 # CHECK: iinvalidate s11
0x0c 0x00 0x00 0xea # CHECK: tlbinval s12
0x00 0x00 0x00 0xec # CHECK: tlbinvalall
0x41 0x00 0x00 0xe0 # CHECK: dtlbinsert s1, s2
0x83 0x00 0x00 0xee # CHECK: itlbinsert s3, s4
0x00 0x00 0xe0 0xc3 # CHECK: breakpoint
0x00 0x00 0xf0 0xc3 # CHECK: syscall
