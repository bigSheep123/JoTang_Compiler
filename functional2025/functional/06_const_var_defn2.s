    .file    "./functional2025/functional/06_const_var_defn2.s"
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
.4: 
    li  a0,5
    ld  ra,24(sp)
    ld  s0,16(sp)
    addi  sp,sp,32
    ret  
    .size	main, .-main
