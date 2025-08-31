    .file    "./functional2025/functional/01_var_defn2.s"
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
    .word  3
    .globl	.G.b
    .data
    .align	2
    .type  .G.b, @object
    .size  .G.b, 4
.G.b:
    .word  5
    .text
    .align 1
    .globl main
    .type  main, @function
main: 
    addi  sp,sp,-32
    sd  ra,24(sp)
    sd  s0,16(sp)
    addi  s0,sp,32
.4: 
    li  t6,5
    sw  t6,-24(s0)
    lw  t6,-24(s0)
    lui  t5,%hi(.G.b)
    addi  t5,t5,%lo(.G.b)
    lw  t4,0(t5)
    addw  t5,t6,t4
    mv  a0,t5
    ld  ra,24(sp)
    ld  s0,16(sp)
    addi  sp,sp,32
    ret  
    .size	main, .-main
