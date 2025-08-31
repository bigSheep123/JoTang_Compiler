    .file    "./functional2025/functional/13_sub2.s"
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
    li  t6,2
    sw  t6,-24(s0)
    lw  t6,-24(s0)
    li  t5,10
    subw  t4,t6,t5
    mv  a0,t4
    ld  ra,24(sp)
    ld  s0,16(sp)
    addi  sp,sp,32
    ret  
    .size	main, .-main
