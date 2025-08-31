    .file    "./functional2025/functional/41_unary_op2.s"
    .option nopic
    .attribute arch,     "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .text
    .align 1
    .globl main
    .type  main, @function
main: 
    addi  sp,sp,-32
    sd  ra,24(sp)
    sd  s0,16(sp)
    addi  s0,sp,32
.0: 
    li  t6,56
    sw  t6,-32(s0)
    li  t6,4
    sw  t6,-24(s0)
    lw  t6,-32(s0)
    li  t5,-4
    subw  t4,t6,t5
    lw  t5,-24(s0)
    addw  t6,t4,t5
    sw  t6,-32(s0)
    lw  t6,-32(s0)
    li  t6,0
    andi  t6,t6,1
    li  t5,0
    subw  t4,t5,t6
    li  t5,0
    beq  t4,t5,.15
.14: 
    li  t5,-1
    sw  t5,-32(s0)
    j  .29
.15: 
    lw  t5,-24(s0)
    li  t4,0
    addw  t6,t4,t5
    sw  t6,-32(s0)
    j  .29
.29: 
    lw  t6,-32(s0)
    mv  a0,t6
    call  putint
    mv  t6,a0
    li  a0,0
    ld  ra,24(sp)
    ld  s0,16(sp)
    addi  sp,sp,32
    ret  
    .size	main, .-main
