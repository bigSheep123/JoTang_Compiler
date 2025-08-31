    .file    "./functional2025/functional/40_unary_op.s"
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
    li  t6,10
    sw  t6,-24(s0)
    lw  t6,-24(s0)
    li  t6,0
    andi  t6,t6,1
    li  t5,0
    subw  t4,t5,t6
    li  t5,0
    beq  t4,t5,.5
.4: 
    li  t5,-1
    sw  t5,-24(s0)
    j  .20
.5: 
    li  t5,0
    sw  t5,-24(s0)
    j  .20
.20: 
    lw  t5,-24(s0)
    mv  a0,t5
    ld  ra,24(sp)
    ld  s0,16(sp)
    addi  sp,sp,32
    ret  
    .size	main, .-main
