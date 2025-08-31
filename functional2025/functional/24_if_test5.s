    .file    "./functional2025/functional/24_if_test5.s"
    .option nopic
    .attribute arch,     "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .text
    .align 1
    .globl if_if_Else
    .type  if_if_Else, @function
if_if_Else: 
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
    li  t4,25
    sw  t4,-32(s0)
    j  .13
.8: 
    lw  t6,-32(s0)
    li  t5,15
    addw  t4,t6,t5
    sw  t4,-32(s0)
    j  .20
.13: 
    j  .20
.20: 
    lw  t4,-32(s0)
    mv  a0,t4
    ld  ra,24(sp)
    ld  s0,16(sp)
    addi  sp,sp,32
    ret  
    .size	if_if_Else, .-if_if_Else
    .align 1
    .globl main
    .type  main, @function
main: 
    addi  sp,sp,-32
    sd  ra,24(sp)
    sd  s0,16(sp)
    addi  s0,sp,32
.29: 
    call  if_if_Else
    mv  t6,a0
    mv  a0,t6
    ld  ra,24(sp)
    ld  s0,16(sp)
    addi  sp,sp,32
    ret  
    .size	main, .-main
