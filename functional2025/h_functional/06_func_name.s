    .file    "./functional2025/h_functional/06_func_name.s"
    .option nopic
    .attribute arch,     "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .text
    .align 1
    .globl f
    .type  f, @function
f: 
    addi  sp,sp,-32
    sd  ra,24(sp)
    sd  s0,16(sp)
    addi  s0,sp,32
.0: 
    li  a0,10
    ld  ra,24(sp)
    ld  s0,16(sp)
    addi  sp,sp,32
    ret  
    .size	f, .-f
    .align 1
    .globl main
    .type  main, @function
main: 
    addi  sp,sp,-32
    sd  ra,24(sp)
    sd  s0,16(sp)
    addi  s0,sp,32
.3: 
    li  t6,20
    sw  t6,-24(s0)
    lw  t6,-24(s0)
    mv  a0,t6
    ld  ra,24(sp)
    ld  s0,16(sp)
    addi  sp,sp,32
    ret  
    .size	main, .-main
