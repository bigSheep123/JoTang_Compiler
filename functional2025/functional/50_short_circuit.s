    .file    "./functional2025/functional/50_short_circuit.s"
    .option nopic
    .attribute arch,     "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .text
    .globl	.G.g
    .data
    .align	2
    .type  .G.g, @object
    .size  .G.g, 4
.G.g:
    .word  0
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
    sw  a0,-24(s0)
    lui  t6,%hi(.G.g)
    addi  t6,t6,%lo(.G.g)
    lw  t5,0(t6)
    lw  t6,-24(s0)
    addw  t4,t5,t6
    lui  t6,%hi(.G.g)
    addi  t6,t6,%lo(.G.g)
    sw  t4,0(t6)
    lui  t6,%hi(.G.g)
    addi  t6,t6,%lo(.G.g)
    lw  t4,0(t6)
    mv  a0,t4
    call  putint
    mv  t4,a0
    lui  t4,%hi(.G.g)
    addi  t4,t4,%lo(.G.g)
    lw  t6,0(t4)
    mv  a0,t6
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
.15: 
    call  getint
    mv  t6,a0
    sw  t6,-24(s0)
    lw  t6,-24(s0)
    li  t5,10
    ble  t6,t5,.21
.25: 
    lw  t5,-24(s0)
    mv  a0,t5
    call  func
    mv  t5,a0
    li  t6,0
    beq  t5,t6,.21
.20: 
    li  t5,1
    sw  t5,-24(s0)
    j  .33
.21: 
    li  t5,0
    sw  t5,-24(s0)
    j  .33
.33: 
    call  getint
    mv  t6,a0
    sw  t6,-24(s0)
    lw  t6,-24(s0)
    li  t5,11
    ble  t6,t5,.40
.44: 
    lw  t5,-24(s0)
    mv  a0,t5
    call  func
    mv  t5,a0
    li  t6,0
    beq  t5,t6,.40
.39: 
    li  t5,1
    sw  t5,-24(s0)
    j  .51
.40: 
    li  t5,0
    sw  t5,-24(s0)
    j  .51
.51: 
    call  getint
    mv  t6,a0
    sw  t6,-24(s0)
    lw  t6,-24(s0)
    li  t5,99
    ble  t6,t5,.57
.59: 
    lw  t5,-24(s0)
    mv  a0,t5
    call  func
    mv  t5,a0
    li  t6,0
    bne  t5,t6,.57
.58: 
    li  t5,0
    sw  t5,-24(s0)
    j  .69
.57: 
    li  t5,1
    sw  t5,-24(s0)
    j  .69
.69: 
    call  getint
    mv  t6,a0
    sw  t6,-24(s0)
    lw  t6,-24(s0)
    li  t5,100
    ble  t6,t5,.75
.77: 
    lw  t5,-24(s0)
    mv  a0,t5
    call  func
    mv  t5,a0
    li  t6,0
    bne  t5,t6,.75
.76: 
    li  t5,0
    sw  t5,-24(s0)
    j  .87
.75: 
    li  t5,1
    sw  t5,-24(s0)
    j  .87
.87: 
    li  a0,99
    call  func
    mv  t6,a0
    li  t5,0
    bne  t6,t5,.92
.95: 
    li  a0,100
    call  func
    mv  t5,a0
    li  t6,0
    beq  t5,t6,.92
.91: 
    li  t5,1
    sw  t5,-24(s0)
    j  .101
.92: 
    li  t5,0
    sw  t5,-24(s0)
    j  .101
.101: 
    li  a0,0
    ld  ra,24(sp)
    ld  s0,16(sp)
    addi  sp,sp,32
    ret  
    .size	main, .-main
