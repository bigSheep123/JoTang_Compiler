    .file    "./functional2025/functional/43_logi_assign.s"
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
    .text
    .align 1
    .globl main
    .type  main, @function
main: 
    addi  sp,sp,-32
    sd  ra,24(sp)
    sd  s0,16(sp)
    addi  s0,sp,32
.2: 
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
    lui  t6,%hi(.G.a)
    addi  t6,t6,%lo(.G.a)
    lw  t5,0(t6)
    lui  t6,%hi(.G.b)
    addi  t6,t6,%lo(.G.b)
    lw  t4,0(t6)
    bne  t5,t4,.10
.14: 
    lui  t4,%hi(.G.a)
    addi  t4,t4,%lo(.G.a)
    lw  t5,0(t4)
    li  t4,3
    beq  t5,t4,.10
.9: 
    li  t4,1
    sw  t4,-24(s0)
    j  .22
.10: 
    li  t4,0
    sw  t4,-24(s0)
    j  .22
.22: 
    lw  t4,-24(s0)
    mv  a0,t4
    ld  ra,24(sp)
    ld  s0,16(sp)
    addi  sp,sp,32
    ret  
    .size	main, .-main
