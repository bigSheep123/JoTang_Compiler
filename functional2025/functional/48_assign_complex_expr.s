    .file    "./functional2025/functional/48_assign_complex_expr.s"
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
    li  t6,5
    sw  t6,-56(s0)
    li  t6,5
    sw  t6,-48(s0)
    li  t6,1
    sw  t6,-40(s0)
    li  t6,-2
    sw  t6,-32(s0)
    lw  t6,-32(s0)
    li  t5,1
    mulw  t4,t6,t5
    li  t5,2
    divw  t6,t4,t5
    lw  t5,-56(s0)
    lw  t4,-48(s0)
    subw  t3,t5,t4
    addw  t4,t6,t3
    lw  t3,-40(s0)
    li  t6,3
    addw  t5,t3,t6
    li  t6,0
    subw  t3,t6,t5
    li  t6,2
    remw  t5,t3,t6
    subw  t6,t4,t5
    sw  t6,-24(s0)
    lw  t6,-24(s0)
    mv  a0,t6
    call  putint
    mv  t6,a0
    lw  t6,-32(s0)
    li  t5,2
    remw  t4,t6,t5
    li  t5,67
    addw  t6,t4,t5
    lw  t5,-56(s0)
    lw  t4,-48(s0)
    subw  t3,t5,t4
    li  t4,0
    subw  t5,t4,t3
    addw  t4,t6,t5
    lw  t5,-40(s0)
    li  t6,2
    addw  t3,t5,t6
    li  t6,2
    remw  t5,t3,t6
    li  t6,0
    subw  t3,t6,t5
    subw  t6,t4,t3
    sw  t6,-24(s0)
    lw  t6,-24(s0)
    li  t3,3
    addw  t4,t6,t3
    sw  t4,-24(s0)
    lw  t4,-24(s0)
    mv  a0,t4
    call  putint
    mv  t4,a0
    li  a0,0
    ld  ra,40(sp)
    ld  s0,32(sp)
    addi  sp,sp,48
    ret  
    .size	main, .-main
