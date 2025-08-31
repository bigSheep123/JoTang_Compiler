    .file    "./functional2025/functional/21_if_test2.s"
    .option nopic
    .attribute arch,     "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .text
    .align 1
    .globl ifElseIf
    .type  ifElseIf, @function
ifElseIf: 
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
    li  t5,6
    beq  t6,t5,.7
.9: 
    lw  t6,-24(s0)
    li  t5,11
    beq  t6,t5,.7
.8: 
    lw  t5,-24(s0)
    li  t6,10
    bne  t5,t6,.21
.24: 
    lw  t6,-32(s0)
    li  t5,1
    bne  t6,t5,.21
.20: 
    li  t5,25
    sw  t5,-32(s0)
    j  .32
.7: 
    lw  t5,-32(s0)
    mv  a0,t5
    ld  ra,24(sp)
    ld  s0,16(sp)
    addi  sp,sp,32
    ret  
.21: 
    lw  t5,-24(s0)
    li  t6,10
    bne  t5,t6,.35
.38: 
    lw  t5,-32(s0)
    li  t6,-5
    bne  t5,t6,.35
.34: 
    lw  t5,-32(s0)
    li  t6,15
    addw  t4,t5,t6
    sw  t4,-32(s0)
    j  .49
.32: 
    j  .56
.35: 
    lw  t4,-32(s0)
    li  t6,0
    subw  t5,t6,t4
    sw  t5,-32(s0)
    j  .49
.49: 
    j  .32
.56: 
    lw  t6,-32(s0)
    mv  a0,t6
    ld  ra,24(sp)
    ld  s0,16(sp)
    addi  sp,sp,32
    ret  
    .size	ifElseIf, .-ifElseIf
    .align 1
    .globl main
    .type  main, @function
main: 
    addi  sp,sp,-32
    sd  ra,24(sp)
    sd  s0,16(sp)
    addi  s0,sp,32
.60: 
    call  ifElseIf
    mv  t6,a0
    call  putint
    mv  t6,a0
    li  a0,0
    ld  ra,24(sp)
    ld  s0,16(sp)
    addi  sp,sp,32
    ret  
    .size	main, .-main
