    .file    "./functional2025/functional/67_reverse_output.s"
    .option nopic
    .attribute arch,     "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .text
    .align 1
    .globl reverse
    .type  reverse, @function
reverse: 
    addi  sp,sp,-32
    sd  ra,24(sp)
    sd  s0,16(sp)
    addi  s0,sp,32
.0: 
    sw  a0,-32(s0)
    lw  t6,-32(s0)
    li  t5,1
    bgt  t6,t5,.6
.5: 
    call  getint
    mv  t5,a0
    sw  t5,-24(s0)
    lw  t5,-24(s0)
    mv  a0,t5
    call  putint
    mv  t5,a0
    j  .17
.6: 
    call  getint
    mv  t5,a0
    sw  t5,-24(s0)
    lw  t5,-32(s0)
    li  t6,1
    subw  t4,t5,t6
    mv  a0,t4
    call  reverse
    mv  t4,a0
    lw  t4,-24(s0)
    mv  a0,t4
    call  putint
    mv  t4,a0
    j  .17
.17: 
    ld  ra,24(sp)
    ld  s0,16(sp)
    addi  sp,sp,32
    ret  
    .size	reverse, .-reverse
    .align 1
    .globl main
    .type  main, @function
main: 
    addi  sp,sp,-32
    sd  ra,24(sp)
    sd  s0,16(sp)
    addi  s0,sp,32
.28: 
    li  t6,200
    sw  t6,-24(s0)
    lw  t6,-24(s0)
    mv  a0,t6
    call  reverse
    mv  t6,a0
    li  a0,0
    ld  ra,24(sp)
    ld  s0,16(sp)
    addi  sp,sp,32
    ret  
    .size	main, .-main
