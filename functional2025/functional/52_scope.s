    .file    "./functional2025/functional/52_scope.s"
    .option nopic
    .attribute arch,     "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .text
    .globl	.G.a
    .data
    .align	2
    .type  .G.a, @object
    .size  .G.a, 4
.G.a:
    .word  7
    .text
    .align 1
    .globl func
    .type  func, @function
func: 
    addi  sp,sp,-32
    sd  ra,24(sp)
    sd  s0,16(sp)
    addi  s0,sp,32
.2: 
    lui  t6,%hi(.G.a)
    addi  t6,t6,%lo(.G.a)
    lw  t5,0(t6)
    sw  t5,-32(s0)
    li  t5,1
    sw  t5,-24(s0)
    lw  t5,-24(s0)
    lw  t6,-32(s0)
    bne  t5,t6,.10
.9: 
    lw  t6,-24(s0)
    li  t5,1
    addw  t4,t6,t5
    sw  t4,-24(s0)
    li  a0,1
    ld  ra,24(sp)
    ld  s0,16(sp)
    addi  sp,sp,32
    ret  
.10: 
    li  a0,0
    ld  ra,24(sp)
    ld  s0,16(sp)
    addi  sp,sp,32
    ret  
    .size	func, .-func
    .align 1
    .globl main
    .type  main, @function
main: 
    addi  sp,sp,-32
    sd  ra,24(sp)
    sd  s0,16(sp)
    addi  s0,sp,32
.21: 
    li  t6,0
    sw  t6,-32(s0)
    li  t6,0
    sw  t6,-24(s0)
    j  .26wc17
.26wc17: 
    lw  t6,-24(s0)
    li  t5,100
    bge  t6,t5,.28wn17
.27wloop.17.21: 
    call  func
    mv  t5,a0
    li  t6,1
    bne  t5,t6,.35
.34: 
    lw  t5,-32(s0)
    li  t6,1
    addw  t4,t5,t6
    sw  t4,-32(s0)
    j  .35
.28wn17: 
    lw  t6,-32(s0)
    li  t5,100
    bge  t6,t5,.48
.47: 
    li  a0,1
    call  putint
    mv  t5,a0
    j  .54
.35: 
    lw  t4,-24(s0)
    li  t6,1
    addw  t5,t4,t6
    sw  t5,-24(s0)
    j  .26wc17
.48: 
    li  a0,0
    call  putint
    mv  t5,a0
    j  .54
.54: 
    li  a0,0
    ld  ra,24(sp)
    ld  s0,16(sp)
    addi  sp,sp,32
    ret  
    .size	main, .-main
