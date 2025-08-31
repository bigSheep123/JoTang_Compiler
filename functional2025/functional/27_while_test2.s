    .file    "./functional2025/functional/27_while_test2.s"
    .option nopic
    .attribute arch,     "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .text
    .align 1
    .globl FourWhile
    .type  FourWhile, @function
FourWhile: 
    addi  sp,sp,-32
    sd  ra,24(sp)
    sd  s0,16(sp)
    addi  s0,sp,32
.0: 
    li  t6,5
    sw  t6,-48(s0)
    li  t6,6
    sw  t6,-40(s0)
    li  t6,7
    sw  t6,-32(s0)
    li  t6,10
    sw  t6,-24(s0)
    j  .13wc10
.13wc10: 
    lw  t6,-48(s0)
    li  t5,20
    bge  t6,t5,.15wn10
.14wloop.10.24: 
    lw  t5,-48(s0)
    li  t6,3
    addw  t4,t5,t6
    sw  t4,-48(s0)
    j  .25wc12
.15wn10: 
    lw  t4,-48(s0)
    lw  t6,-40(s0)
    lw  t5,-24(s0)
    addw  t3,t6,t5
    addw  t5,t4,t3
    lw  t3,-32(s0)
    addw  t4,t5,t3
    mv  a0,t4
    ld  ra,24(sp)
    ld  s0,16(sp)
    addi  sp,sp,32
    ret  
.25wc12: 
    lw  t4,-40(s0)
    li  t3,10
    bge  t4,t3,.27wn12
.26wloop.12.22: 
    lw  t3,-40(s0)
    li  t4,1
    addw  t5,t3,t4
    sw  t5,-40(s0)
    j  .36wc14
.27wn12: 
    lw  t5,-40(s0)
    li  t4,2
    subw  t3,t5,t4
    sw  t3,-40(s0)
    j  .13wc10
.36wc14: 
    lw  t3,-32(s0)
    li  t4,7
    bne  t3,t4,.38wn14
.37wloop.14.20: 
    lw  t4,-32(s0)
    li  t3,1
    subw  t5,t4,t3
    sw  t5,-32(s0)
    j  .46wc16
.38wn14: 
    lw  t5,-32(s0)
    li  t3,1
    addw  t4,t5,t3
    sw  t4,-32(s0)
    j  .25wc12
.46wc16: 
    lw  t4,-24(s0)
    li  t3,20
    bge  t4,t3,.48wn16
.47wloop.16.18: 
    lw  t3,-24(s0)
    li  t4,3
    addw  t5,t3,t4
    sw  t5,-24(s0)
    j  .46wc16
.48wn16: 
    lw  t5,-24(s0)
    li  t4,1
    subw  t3,t5,t4
    sw  t3,-24(s0)
    j  .36wc14
    .size	FourWhile, .-FourWhile
    .align 1
    .globl main
    .type  main, @function
main: 
    addi  sp,sp,-32
    sd  ra,24(sp)
    sd  s0,16(sp)
    addi  s0,sp,32
.78: 
    call  FourWhile
    mv  t6,a0
    mv  a0,t6
    ld  ra,24(sp)
    ld  s0,16(sp)
    addi  sp,sp,32
    ret  
    .size	main, .-main
