    .file    "./functional2025/h_functional/02_ret_in_block.s"
    .option nopic
    .attribute arch,     "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .text
    .align 1
    .globl main
    .type  main, @function
main: 
    addi  sp,sp,-48
    sd  ra,40(sp)
    sd  s0,32(sp)
    addi  s0,sp,48
.0: 
    li  t6,893
    sw  t6,-56(s0)
    li  t6,716
    sw  t6,-48(s0)
    li  t6,837
    sw  t6,-40(s0)
    lw  t6,-40(s0)
    li  t5,128
    addw  t4,t6,t5
    sw  t4,-40(s0)
    lw  t4,-48(s0)
    lw  t5,-40(s0)
    addw  t6,t4,t5
    sw  t6,-48(s0)
    li  t6,241
    sw  t6,-32(s0)
    lw  t6,-40(s0)
    lw  t5,-32(s0)
    addw  t4,t6,t5
    li  t5,412
    subw  t6,t4,t5
    sw  t6,-40(s0)
    li  t6,771
    sw  t6,-24(s0)
    lw  t6,-32(s0)
    lw  t5,-24(s0)
    addw  t4,t6,t5
    li  t5,18
    subw  t6,t4,t5
    sw  t6,-32(s0)
    lw  t6,-32(s0)
    li  t5,66
    addw  t4,t6,t5
    sw  t4,-24(s0)
    lw  t4,-32(s0)
    lw  t5,-40(s0)
    addw  t6,t4,t5
    li  t5,33
    subw  t4,t6,t5
    sw  t4,-32(s0)
    lw  t4,-32(s0)
    li  t5,55
    subw  t6,t4,t5
    sw  t6,-40(s0)
    lw  t6,-40(s0)
    lw  t5,-32(s0)
    addw  t4,t6,t5
    li  t5,21
    remw  t6,t4,t5
    mv  a0,t6
    ld  ra,40(sp)
    ld  s0,32(sp)
    addi  sp,sp,48
    ret  
    .size	main, .-main
