    .file    "./functional2025/functional/22_if_test3.s"
    .option nopic
    .attribute arch,     "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .text
    .align 1
    .globl ififElse
    .type  ififElse, @function
ififElse: 
    addi  sp,sp,-32
    sd  ra,24(sp)
    sd  s0,16(sp)
    addi  s0,sp,32
.0: 
    li  t6,5
    sw  t6,-32(s0)
    li  t6,10
    sw  t6,-24(s0)
    lw  t6,-32(s0)
    li  t5,5
    bne  t6,t5,.8
.7: 
    lw  t5,-24(s0)
    li  t6,10
    bne  t5,t6,.13
.12: 
    li  t6,25
    sw  t6,-32(s0)
    j  .19
.8: 
    lw  t6,-32(s0)
    mv  a0,t6
    ld  ra,24(sp)
    ld  s0,16(sp)
    addi  sp,sp,32
    ret  
.13: 
    lw  t6,-32(s0)
    li  t5,15
    addw  t4,t6,t5
    sw  t4,-32(s0)
    j  .19
.19: 
    j  .8
    .size	ififElse, .-ififElse
    .align 1
    .globl main
    .type  main, @function
main: 
    addi  sp,sp,-32
    sd  ra,24(sp)
    sd  s0,16(sp)
    addi  s0,sp,32
.29: 
    call  ififElse
    mv  t6,a0
    mv  a0,t6
    ld  ra,24(sp)
    ld  s0,16(sp)
    addi  sp,sp,32
    ret  
    .size	main, .-main
