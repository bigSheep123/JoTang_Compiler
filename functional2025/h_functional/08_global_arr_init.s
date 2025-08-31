    .file    "./functional2025/h_functional/08_global_arr_init.s"
    .option nopic
    .attribute arch,     "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .text
    .globl	.G.a0
    .bss
    .align	3
    .type  .G.a0, @object
    .size  .G.a0, 12
.G.a0:
    .zero  12
    .globl	.G.b0
    .data
    .align	3
    .type  .G.b0, @object
    .size  .G.b0, 16
.G.b0:
    .zero  4
    .word  1
    .zero  8
    .globl	.G.c0
    .data
    .align	3
    .type  .G.c0, @object
    .size  .G.c0, 28
.G.c0:
    .word  2
    .word  8
    .word  6
    .word  3
    .word  9
    .word  1
    .word  5
    .globl	.G.d0
    .bss
    .align	3
    .type  .G.d0, @object
    .size  .G.d0, 44
.G.d0:
    .zero  44
    .globl	.G.e0
    .data
    .align	3
    .type  .G.e0, @object
    .size  .G.e0, 8
.G.e0:
    .word  22
    .word  33
    .globl	.G.f0
    .bss
    .align	3
    .type  .G.f0, @object
    .size  .G.f0, 24
.G.f0:
    .zero  24
    .globl	.G.g0
    .data
    .align	3
    .type  .G.g0, @object
    .size  .G.g0, 36
.G.g0:
    .word  85
    .zero  4
    .word  1
    .word  29
    .zero  20
    .globl	.G.a
    .bss
    .align	3
    .type  .G.a, @object
    .size  .G.a, 60
.G.a:
    .zero  60
    .globl	.G.b
    .bss
    .align	3
    .type  .G.b, @object
    .size  .G.b, 60
.G.b:
    .zero  60
    .globl	.G.c
    .data
    .align	3
    .type  .G.c, @object
    .size  .G.c, 60
.G.c:
    .word  1
    .word  2
    .word  3
    .word  4
    .word  5
    .word  6
    .word  7
    .word  8
    .word  9
    .word  10
    .word  11
    .word  12
    .word  13
    .word  14
    .word  15
    .globl	.G.d
    .data
    .align	3
    .type  .G.d, @object
    .size  .G.d, 60
.G.d:
    .word  1
    .word  2
    .word  3
    .word  4
    .word  5
    .word  6
    .word  7
    .word  8
    .word  9
    .word  10
    .word  11
    .word  12
    .word  13
    .word  14
    .word  15
    .globl	.G.e
    .data
    .align	3
    .type  .G.e, @object
    .size  .G.e, 60
.G.e:
    .word  1
    .word  2
    .word  3
    .word  4
    .word  5
    .word  6
    .word  7
    .word  8
    .word  9
    .word  10
    .word  11
    .word  12
    .word  13
    .word  14
    .word  15
    .globl	.G.f
    .bss
    .align	3
    .type  .G.f, @object
    .size  .G.f, 20
.G.f:
    .zero  20
    .globl	.G.g
    .data
    .align	3
    .type  .G.g, @object
    .size  .G.g, 60
.G.g:
    .word  1
    .word  2
    .word  3
    .word  4
    .zero  8
    .word  7
    .zero  8
    .word  10
    .word  11
    .word  12
    .zero  12
    .globl	.G.h
    .bss
    .align	3
    .type  .G.h, @object
    .size  .G.h, 12
.G.h:
    .zero  12
    .globl	.G.i
    .data
    .align	3
    .type  .G.i, @object
    .size  .G.i, 96
.G.i:
    .word  1
    .word  2
    .word  3
    .word  4
    .word  5
    .zero  76
    .text
    .align 1
    .globl main
    .type  main, @function
main: 
    addi  sp,sp,-32
    sd  ra,24(sp)
    sd  s0,16(sp)
    addi  s0,sp,32
.70: 
    li  a0,5
    ld  ra,24(sp)
    ld  s0,16(sp)
    addi  sp,sp,32
    ret  
    .size	main, .-main
