    .file    "./functional2025/functional/72_hanoi.s"
    .option nopic
    .attribute arch,     "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .text
    .align 1
    .globl move
    .type  move, @function
move: 
    addi  sp,sp,-32
    sd  ra,24(sp)
    sd  s0,16(sp)
    addi  s0,sp,32
.0: 
    sw  a0,-32(s0)
    sw  a1,-24(s0)
    lw  t6,-32(s0)
    mv  a0,t6
    call  putint
    mv  t6,a0
    li  a0,32
    call  putch
    mv  t6,a0
    lw  t6,-24(s0)
    mv  a0,t6
    call  putint
    mv  t6,a0
    li  a0,44
    call  putch
    mv  t6,a0
    li  a0,32
    call  putch
    mv  t6,a0
    ld  ra,24(sp)
    ld  s0,16(sp)
    addi  sp,sp,32
    ret  
    .size	move, .-move
    .align 1
    .globl hanoi
    .type  hanoi, @function
hanoi: 
    addi  sp,sp,-32
    sd  ra,24(sp)
    sd  s0,16(sp)
    addi  s0,sp,32
.19: 
    sw  a0,-48(s0)
    sw  a1,-40(s0)
    sw  a2,-32(s0)
    sw  a3,-24(s0)
    lw  t6,-48(s0)
    li  t5,1
    bne  t6,t5,.33
.32: 
    lw  t5,-40(s0)
    lw  t6,-24(s0)
    mv  a0,t5
    mv  a1,t6
    call  move
    mv  t6,a0
    j  .41
.33: 
    lw  t6,-48(s0)
    li  t5,1
    subw  t4,t6,t5
    lw  t5,-40(s0)
    lw  t6,-24(s0)
    lw  t3,-32(s0)
    mv  a0,t4
    mv  a1,t5
    mv  a2,t6
    mv  a3,t3
    call  hanoi
    mv  t3,a0
    lw  t3,-40(s0)
    lw  t6,-24(s0)
    mv  a0,t3
    mv  a1,t6
    call  move
    mv  t6,a0
    lw  t6,-48(s0)
    li  t3,1
    subw  t5,t6,t3
    lw  t3,-32(s0)
    lw  t6,-40(s0)
    lw  t4,-24(s0)
    mv  a0,t5
    mv  a1,t3
    mv  a2,t6
    mv  a3,t4
    call  hanoi
    mv  t4,a0
    j  .41
.41: 
    ld  ra,24(sp)
    ld  s0,16(sp)
    addi  sp,sp,32
    ret  
    .size	hanoi, .-hanoi
    .align 1
    .globl main
    .type  main, @function
main: 
    addi  sp,sp,-32
    sd  ra,24(sp)
    sd  s0,16(sp)
    addi  s0,sp,32
.60: 
    call  getint
    mv  t6,a0
    sw  t6,-24(s0)
    j  .65wc21
.65wc21: 
    lw  t6,-24(s0)
    li  t5,0
    ble  t6,t5,.67wn21
.66wloop.21.25: 
    call  getint
    mv  t5,a0
    li  a1,1
    li  a2,2
    li  a3,3
    call  hanoi
    mv  t5,a0
    li  a0,10
    call  putch
    mv  t5,a0
    lw  t5,-24(s0)
    li  t6,1
    subw  t4,t5,t6
    sw  t4,-24(s0)
    j  .65wc21
.67wn21: 
    li  a0,0
    ld  ra,24(sp)
    ld  s0,16(sp)
    addi  sp,sp,32
    ret  
    .size	main, .-main
