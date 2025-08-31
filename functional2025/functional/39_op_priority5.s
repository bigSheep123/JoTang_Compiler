    .file    "./functional2025/functional/39_op_priority5.s"
    .option nopic
    .attribute arch,     "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .text
    .globl	.G.a
    .data
    .align	2
    .type  .G.a, @object
    .size  .G.a, 4
.G.a:
    .word  1
    .globl	.G.b
    .data
    .align	2
    .type  .G.b, @object
    .size  .G.b, 4
.G.b:
    .word  0
    .globl	.G.c
    .data
    .align	2
    .type  .G.c, @object
    .size  .G.c, 4
.G.c:
    .word  1
    .globl	.G.d
    .data
    .align	2
    .type  .G.d, @object
    .size  .G.d, 4
.G.d:
    .word  2
    .globl	.G.e
    .data
    .align	2
    .type  .G.e, @object
    .size  .G.e, 4
.G.e:
    .word  4
    .text
    .align 1
    .globl main
    .type  main, @function
main: 
    addi  sp,sp,-32
    sd  ra,24(sp)
    sd  s0,16(sp)
    addi  s0,sp,32
.9: 
    li  t6,0
    sw  t6,-24(s0)
    lui  t6,%hi(.G.a)
    addi  t6,t6,%lo(.G.a)
    lw  t5,0(t6)
    lui  t6,%hi(.G.b)
    addi  t6,t6,%lo(.G.b)
    lw  t4,0(t6)
    mulw  t6,t5,t4
    lui  t4,%hi(.G.c)
    addi  t4,t4,%lo(.G.c)
    lw  t5,0(t4)
    divw  t4,t6,t5
    lui  t5,%hi(.G.e)
    addi  t5,t5,%lo(.G.e)
    lw  t6,0(t5)
    lui  t5,%hi(.G.d)
    addi  t5,t5,%lo(.G.d)
    lw  t3,0(t5)
    addw  t5,t6,t3
    bne  t4,t5,.14
.24: 
    lui  t2,%hi(.G.a)
    addi  t2,t2,%lo(.G.a)
    lw  t6,0(t2)
    lui  t2,%hi(.G.a)
    addi  t2,t2,%lo(.G.a)
    lw  t5,0(t2)
    lui  t2,%hi(.G.b)
    addi  t2,t2,%lo(.G.b)
    lw  t4,0(t2)
    addw  t2,t5,t4
    mulw  t4,t6,t2
    lui  t2,%hi(.G.c)
    addi  t2,t2,%lo(.G.c)
    lw  t6,0(t2)
    addw  t2,t4,t6
    lui  t6,%hi(.G.d)
    addi  t6,t6,%lo(.G.d)
    lw  t4,0(t6)
    lui  t6,%hi(.G.e)
    addi  t6,t6,%lo(.G.e)
    lw  t5,0(t6)
    addw  t6,t4,t5
    ble  t2,t6,.12
.14: 
    lui  t5,%hi(.G.a)
    addi  t5,t5,%lo(.G.a)
    lw  t4,0(t5)
    lui  t5,%hi(.G.b)
    addi  t5,t5,%lo(.G.b)
    lw  t3,0(t5)
    lui  t5,%hi(.G.c)
    addi  t5,t5,%lo(.G.c)
    lw  t6,0(t5)
    mulw  t5,t3,t6
    subw  t6,t4,t5
    lui  t5,%hi(.G.d)
    addi  t5,t5,%lo(.G.d)
    lw  t4,0(t5)
    lui  t5,%hi(.G.a)
    addi  t5,t5,%lo(.G.a)
    lw  t3,0(t5)
    lui  t5,%hi(.G.c)
    addi  t5,t5,%lo(.G.c)
    lw  t2,0(t5)
    divw  t5,t3,t2
    subw  t2,t4,t5
    beq  t6,t2,.12
.13: 
    lw  t5,-24(s0)
    mv  a0,t5
    call  putint
    mv  t5,a0
    lw  t5,-24(s0)
    mv  a0,t5
    ld  ra,24(sp)
    ld  s0,16(sp)
    addi  sp,sp,32
    ret  
.12: 
    li  t5,1
    sw  t5,-24(s0)
    j  .13
    .size	main, .-main
