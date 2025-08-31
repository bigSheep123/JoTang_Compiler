    .file    "./functional2025/functional/38_op_priority4.s"
    .option nopic
    .attribute arch,     "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .text
    .globl	.G.a
    .bss
    .align	2
    .type  .G.a, @object
    .size  .G.a, 4
.G.a:
    .zero  4
    .globl	.G.b
    .bss
    .align	2
    .type  .G.b, @object
    .size  .G.b, 4
.G.b:
    .zero  4
    .globl	.G.c
    .bss
    .align	2
    .type  .G.c, @object
    .size  .G.c, 4
.G.c:
    .zero  4
    .globl	.G.d
    .bss
    .align	2
    .type  .G.d, @object
    .size  .G.d, 4
.G.d:
    .zero  4
    .globl	.G.e
    .bss
    .align	2
    .type  .G.e, @object
    .size  .G.e, 4
.G.e:
    .zero  4
    .text
    .align 1
    .globl main
    .type  main, @function
main: 
    addi  sp,sp,-32
    sd  ra,24(sp)
    sd  s0,16(sp)
    addi  s0,sp,32
.5: 
    call  getint
    mv  t6,a0
    lui  t6,%hi(.G.a)
    addi  t6,t6,%lo(.G.a)
    sw  a0,0(t6)
    call  getint
    mv  t6,a0
    lui  t6,%hi(.G.b)
    addi  t6,t6,%lo(.G.b)
    sw  a0,0(t6)
    call  getint
    mv  t6,a0
    lui  t6,%hi(.G.c)
    addi  t6,t6,%lo(.G.c)
    sw  a0,0(t6)
    call  getint
    mv  t6,a0
    lui  t6,%hi(.G.d)
    addi  t6,t6,%lo(.G.d)
    sw  a0,0(t6)
    call  getint
    mv  t6,a0
    lui  t6,%hi(.G.e)
    addi  t6,t6,%lo(.G.e)
    sw  a0,0(t6)
    li  t6,0
    sw  t6,-24(s0)
    lui  t6,%hi(.G.a)
    addi  t6,t6,%lo(.G.a)
    lw  t5,0(t6)
    lui  t6,%hi(.G.b)
    addi  t6,t6,%lo(.G.b)
    lw  t4,0(t6)
    lui  t6,%hi(.G.c)
    addi  t6,t6,%lo(.G.c)
    lw  t3,0(t6)
    mulw  t6,t4,t3
    subw  t3,t5,t6
    lui  t6,%hi(.G.d)
    addi  t6,t6,%lo(.G.d)
    lw  t5,0(t6)
    lui  t6,%hi(.G.a)
    addi  t6,t6,%lo(.G.a)
    lw  t4,0(t6)
    lui  t6,%hi(.G.c)
    addi  t6,t6,%lo(.G.c)
    lw  t2,0(t6)
    divw  t6,t4,t2
    subw  t2,t5,t6
    bne  t3,t2,.20
.22: 
    lui  t2,%hi(.G.a)
    addi  t2,t2,%lo(.G.a)
    lw  t3,0(t2)
    lui  t2,%hi(.G.b)
    addi  t2,t2,%lo(.G.b)
    lw  t6,0(t2)
    mulw  t2,t3,t6
    lui  t6,%hi(.G.c)
    addi  t6,t6,%lo(.G.c)
    lw  t3,0(t6)
    divw  t6,t2,t3
    lui  t3,%hi(.G.e)
    addi  t3,t3,%lo(.G.e)
    lw  t2,0(t3)
    lui  t3,%hi(.G.d)
    addi  t3,t3,%lo(.G.d)
    lw  t5,0(t3)
    addw  t3,t2,t5
    beq  t6,t3,.20
.35: 
    lui  t3,%hi(.G.a)
    addi  t3,t3,%lo(.G.a)
    lw  t6,0(t3)
    lui  t3,%hi(.G.b)
    addi  t3,t3,%lo(.G.b)
    lw  t5,0(t3)
    addw  t3,t6,t5
    lui  t5,%hi(.G.c)
    addi  t5,t5,%lo(.G.c)
    lw  t6,0(t5)
    addw  t5,t3,t6
    lui  t6,%hi(.G.d)
    addi  t6,t6,%lo(.G.d)
    lw  t3,0(t6)
    lui  t6,%hi(.G.e)
    addi  t6,t6,%lo(.G.e)
    lw  t2,0(t6)
    addw  t6,t3,t2
    beq  t5,t6,.20
.21: 
    lw  t2,-24(s0)
    mv  a0,t2
    ld  ra,24(sp)
    ld  s0,16(sp)
    addi  sp,sp,32
    ret  
.20: 
    li  t2,1
    sw  t2,-24(s0)
    j  .21
    .size	main, .-main
