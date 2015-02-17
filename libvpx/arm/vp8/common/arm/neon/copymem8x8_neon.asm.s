; This file was created from a .asm file
;  using the ads2armasm_ms.pl script.
;
;  Copyright (c) 2010 The WebM project authors. All Rights Reserved.
;
;  Use of this source code is governed by a BSD-style license
;  that can be found in the LICENSE file in the root of the source
;  tree. An additional intellectual property rights grant can be found
;  in the file PATENTS.  All contributing project authors may
;  be found in the AUTHORS file in the root of the source tree.
;


    EXPORT  |vp8_copy_mem8x8_neon|
    ; ARM
    ; 
    ; 

    AREA    Block, CODE, READONLY ; name this block of code
;void copy_mem8x8_neon( unsigned char *src, int src_stride, unsigned char *dst, int dst_stride)
;-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
|vp8_copy_mem8x8_neon| PROC

    vld1.u8     {d0}, [r0], r1
    vld1.u8     {d1}, [r0], r1
    vst1.u8     {d0}, [r2], r3
    vld1.u8     {d2}, [r0], r1
    vst1.u8     {d1}, [r2], r3
    vld1.u8     {d3}, [r0], r1
    vst1.u8     {d2}, [r2], r3
    vld1.u8     {d4}, [r0], r1
    vst1.u8     {d3}, [r2], r3
    vld1.u8     {d5}, [r0], r1
    vst1.u8     {d4}, [r2], r3
    vld1.u8     {d6}, [r0], r1
    vst1.u8     {d5}, [r2], r3
    vld1.u8     {d7}, [r0], r1
    vst1.u8     {d6}, [r2], r3
    vst1.u8     {d7}, [r2], r3

    bx     lr

    ENDP  ; |vp8_copy_mem8x8_neon|

    END
