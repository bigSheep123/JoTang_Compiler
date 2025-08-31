    .file    "./functional2025/functional/09_func_defn.s"
    .option nopic
    .attribute arch,     "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .text
    .globl	.G.a
    .bss
    .align	2
    .type  .G.a, @object
    .size  .G.a, 4
.G.a:
    .zero  4
    .text
    .align 1
    .globl func
    .type  func, @function
func: 
    addi  sp,sp,-32
    sd  ra,24(sp)
    sd  s0,16(sp)
    addi  s0,sp,32
.1: 
    sw  a0,-24(s0)
    lw  t6,-24(s0)
    li  t5,1
    subw  t4,t6,t5
    sw  t4,-24(s0)
    lw  t4,-24(s0)
    mv  a0,t4
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
.11: 
    lui  t6,%hi(.G.a)
    addi  t6,t6,%lo(.G.a)
    li  t5,10
    sw  t5,0(t6)
    lui  t5,%hi(.G.a)
    addi  t5,t5,%lo(.G.a)
    lw  t6,0(t5)
    mv  a0,t6
    call  func
    mv  t6,a0
    sw  t6,-24(s0)
    lw  t6,-24(s0)
    mv  a0,t6
    ld  ra,24(sp)
    ld  s0,16(sp)
    addi  sp,sp,32
    ret  
    .size	main, .-main
