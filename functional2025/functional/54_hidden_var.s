    .file    "./functional2025/functional/54_hidden_var.s"
    .option nopic
    .attribute arch,     "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .text
    .globl	.G.b
    .data
    .align	2
    .type  .G.b, @object
    .size  .G.b, 4
.G.b:
    .word  5
    .globl	.G.c
    .data
    .align	3
    .type  .G.c, @object
    .size  .G.c, 16
.G.c:
    .word  6
    .word  7
    .word  8
    .word  9
    .globl	.C..57
    .data
    .align	3
    .type  .C..57, @object
    .size  .C..57, 64
.C..57:
    .zero  4
    .word  9
    .zero  24
    .word  8
    .word  3
    .zero  24
    .globl	.C..79
    .data
    .align	3
    .type  .C..79, @object
    .size  .C..79, 140
.C..79:
    .zero  40
    .word  2
    .word  1
    .word  8
    .zero  88
    .text
    .align 1
    .globl main
    .type  main, @function
main: 
    addi  sp,sp,-240
    sd  ra,232(sp)
    sd  s0,224(sp)
    addi  s0,sp,240
.9: 
    li  t6,1
    sw  t6,-64(s0)
    li  t6,2
    sw  t6,-56(s0)
    li  t6,3
    sw  t6,-56(s0)
    lw  t6,-56(s0)
    mv  a0,t6
    call  putint
    mv  t6,a0
    lw  t6,-56(s0)
    mv  a0,t6
    call  putint
    mv  t6,a0
    lw  t6,-64(s0)
    mv  a0,t6
    call  putint
    mv  t6,a0
    li  a0,10
    call  putch
    mv  t6,a0
    j  .28wc20
.28wc20: 
    lw  t6,-64(s0)
    li  t5,5
    bge  t6,t5,.30wn20
.29wloop.20.25: 
    li  t5,0
    sw  t5,-48(s0)
    lw  t5,-48(s0)
    li  t6,1
    addw  t4,t5,t6
    sw  t4,-48(s0)
    lw  t4,-48(s0)
    li  t6,0
    beq  t4,t6,.42
.41: 
    j  .30wn20
.30wn20: 
    lw  t6,-64(s0)
    mv  a0,t6
    call  putint
    mv  t6,a0
    li  a0,10
    call  putch
    mv  t6,a0
    lui  t6,%hi(.G.c)
    addi  t6,t6,%lo(.G.c)
    li  t4,1
    sw  t4,8(t6)
    lui  t4,%hi(.C..57)
    addi  t4,t4,%lo(.C..57)
    addi  t6,s0,-80
    mv  a0,t6
    mv  a1,t4
    li  a2,64
    call  memcpy@plt
    li  t4,2
    sw  t4,-32(s0)
    lui  t4,%hi(.G.c)
    addi  t4,t4,%lo(.G.c)
    lw  t6,8(t4)
    li  t4,0
    beq  t6,t4,.66
.65: 
    lui  t4,%hi(.C..79)
    addi  t4,t4,%lo(.C..79)
    addi  t6,s0,-220
    mv  a0,t6
    mv  a1,t4
    li  a2,140
    call  memcpy@plt
    lw  t4,-32(s0)
    lui  t4,%hi(.C..79)
    addi  t4,t4,%lo(.C..79)
    lw  t6,-32(s0)
    slli  t6,t6,2
    add  t5,t4,t6
    lw  t6,0(t5)
    mv  a0,t6
    call  putint
    mv  t6,a0
    lw  t6,-32(s0)
    lui  t6,%hi(.C..79)
    addi  t6,t6,%lo(.C..79)
    lw  t5,-32(s0)
    slli  t5,t5,2
    add  t4,t6,t5
    lw  t5,0(t4)
    mv  a0,t5
    call  putint
    mv  t5,a0
    lw  t5,-32(s0)
    lui  t5,%hi(.C..79)
    addi  t5,t5,%lo(.C..79)
    lw  t4,-32(s0)
    slli  t4,t4,2
    add  t6,t5,t4
    lw  t4,0(t6)
    mv  a0,t4
    call  putint
    mv  t4,a0
    j  .66
.42: 
    j  .28wc20
.66: 
    li  a0,10
    call  putch
    mv  t4,a0
    lui  t4,%hi(.G.b)
    addi  t4,t4,%lo(.G.b)
    lw  t6,0(t4)
    mv  a0,t6
    call  putint
    mv  t6,a0
    li  a0,10
    call  putch
    mv  t6,a0
    lui  t6,%hi(.G.c)
    addi  t6,t6,%lo(.G.c)
    lw  t4,0(t6)
    mv  a0,t4
    call  putint
    mv  t4,a0
    lui  t4,%hi(.G.c)
    addi  t4,t4,%lo(.G.c)
    lw  t6,4(t4)
    mv  a0,t6
    call  putint
    mv  t6,a0
    lui  t6,%hi(.G.c)
    addi  t6,t6,%lo(.G.c)
    lw  t4,8(t6)
    mv  a0,t4
    call  putint
    mv  t4,a0
    lui  t4,%hi(.G.c)
    addi  t4,t4,%lo(.G.c)
    lw  t6,12(t4)
    mv  a0,t6
    call  putint
    mv  t6,a0
    li  a0,10
    call  putch
    mv  t6,a0
    li  a0,0
    ld  ra,232(sp)
    ld  s0,224(sp)
    addi  sp,sp,240
    ret  
    .size	main, .-main
