    .file    "./functional2025/functional/53_scope2.s"
    .option nopic
    .attribute arch,     "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .text
    .globl	.G.k
    .bss
    .align	2
    .type  .G.k, @object
    .size  .G.k, 4
.G.k:
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
.1: 
    lui  t6,%hi(.G.k)
    addi  t6,t6,%lo(.G.k)
    li  t5,3389
    sw  t5,0(t6)
    lui  t5,%hi(.G.k)
    addi  t5,t5,%lo(.G.k)
    lw  t6,0(t5)
    li  t5,10000
    bge  t6,t5,.5
.4: 
    lui  t5,%hi(.G.k)
    addi  t5,t5,%lo(.G.k)
    lw  t6,0(t5)
    li  t5,1
    addw  t4,t6,t5
    lui  t5,%hi(.G.k)
    addi  t5,t5,%lo(.G.k)
    sw  t4,0(t5)
    li  t5,112
    sw  t5,-48(s0)
    j  .17wc8
.5: 
    lui  t5,%hi(.G.k)
    addi  t5,t5,%lo(.G.k)
    lw  t4,0(t5)
    mv  a0,t4
    ld  ra,24(sp)
    ld  s0,16(sp)
    addi  sp,sp,32
    ret  
.17wc8: 
    lw  t4,-48(s0)
    li  t5,10
    ble  t4,t5,.19wn8
.18wloop.8.22: 
    lw  t5,-48(s0)
    li  t4,88
    subw  t6,t5,t4
    sw  t6,-48(s0)
    lw  t6,-48(s0)
    li  t4,1000
    bge  t6,t4,.30
.29: 
    li  t4,9
    sw  t4,-40(s0)
    li  t4,11
    sw  t4,-32(s0)
    li  t4,10
    sw  t4,-40(s0)
    lw  t4,-48(s0)
    lw  t6,-40(s0)
    subw  t5,t4,t6
    sw  t5,-48(s0)
    li  t5,11
    sw  t5,-24(s0)
    lw  t5,-48(s0)
    lw  t6,-24(s0)
    addw  t4,t5,t6
    lw  t6,-32(s0)
    addw  t5,t4,t6
    sw  t5,-48(s0)
    j  .30
.19wn8: 
    lw  t4,-48(s0)
    mv  a0,t4
    call  putint
    mv  t4,a0
    j  .5
.30: 
    j  .17wc8
    .size	main, .-main
