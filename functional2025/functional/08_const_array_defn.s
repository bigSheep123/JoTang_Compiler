    .file    "./functional2025/functional/08_const_array_defn.s"
    .option nopic
    .attribute arch,     "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .text
    .globl	.G.a
    .data
    .align	3
    .type  .G.a, @object
    .size  .G.a, 20
.G.a:
    .zero  4
    .word  1
    .word  2
    .word  3
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
.8: 
    lui  t6,%hi(.G.a)
    addi  t6,t6,%lo(.G.a)
    lw  t5,16(t6)
    mv  a0,t5
    ld  ra,24(sp)
    ld  s0,16(sp)
    addi  sp,sp,32
    ret  
    .size	main, .-main
