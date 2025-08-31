    .file    "./functional2025/h_functional/34_multi_loop.s"
    .option nopic
    .attribute arch,     "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .text
    .align 1
    .globl main
    .type  main, @function
main: 
    addi  sp,sp,-80
    sd  ra,72(sp)
    sd  s0,64(sp)
    addi  s0,sp,80
.0: 
    li  t6,0
    sw  t6,-144(s0)
    li  t6,0
    sw  t6,-136(s0)
    j  .6wc4
.6wc4: 
    lw  t6,-136(s0)
    li  t5,1
    bge  t6,t5,.8wn4
.7wloop.4.63: 
    li  t5,0
    sw  t5,-128(s0)
    j  .16wc6
.8wn4: 
    lw  t5,-144(s0)
    mv  a0,t5
    ld  ra,72(sp)
    ld  s0,64(sp)
    addi  sp,sp,80
    ret  
.16wc6: 
    lw  t5,-128(s0)
    li  t6,1
    bge  t5,t6,.18wn6
.17wloop.6.61: 
    li  t6,0
    sw  t6,-120(s0)
    j  .25wc8
.18wn6: 
    lw  t6,-136(s0)
    li  t5,1
    addw  t4,t6,t5
    sw  t4,-136(s0)
    j  .6wc4
.25wc8: 
    lw  t4,-120(s0)
    li  t5,2
    bge  t4,t5,.27wn8
.26wloop.8.59: 
    li  t5,0
    sw  t5,-112(s0)
    j  .35wc10
.27wn8: 
    lw  t5,-128(s0)
    li  t4,1
    addw  t6,t5,t4
    sw  t6,-128(s0)
    j  .16wc6
.35wc10: 
    lw  t6,-112(s0)
    li  t4,3
    bge  t6,t4,.37wn10
.36wloop.10.57: 
    li  t4,0
    sw  t4,-104(s0)
    j  .45wc12
.37wn10: 
    lw  t4,-120(s0)
    li  t6,1
    addw  t5,t4,t6
    sw  t5,-120(s0)
    j  .25wc8
.45wc12: 
    lw  t5,-104(s0)
    li  t6,5
    bge  t5,t6,.47wn12
.46wloop.12.55: 
    li  t6,0
    sw  t6,-96(s0)
    j  .55wc14
.47wn12: 
    lw  t6,-112(s0)
    li  t5,1
    addw  t4,t6,t5
    sw  t4,-112(s0)
    j  .35wc10
.55wc14: 
    lw  t4,-96(s0)
    li  t5,4
    bge  t4,t5,.57wn14
.56wloop.14.53: 
    li  t5,0
    sw  t5,-88(s0)
    j  .65wc16
.57wn14: 
    lw  t5,-104(s0)
    li  t4,1
    addw  t6,t5,t4
    sw  t6,-104(s0)
    j  .45wc12
.65wc16: 
    lw  t6,-88(s0)
    li  t4,6
    bge  t6,t4,.67wn16
.66wloop.16.51: 
    li  t4,0
    sw  t4,-80(s0)
    j  .75wc18
.67wn16: 
    lw  t4,-96(s0)
    li  t6,1
    addw  t5,t4,t6
    sw  t5,-96(s0)
    j  .55wc14
.75wc18: 
    lw  t5,-80(s0)
    li  t6,5
    bge  t5,t6,.77wn18
.76wloop.18.49: 
    li  t6,0
    sw  t6,-72(s0)
    j  .84wc20
.77wn18: 
    lw  t6,-88(s0)
    li  t5,1
    addw  t4,t6,t5
    sw  t4,-88(s0)
    j  .65wc16
.84wc20: 
    lw  t4,-72(s0)
    li  t5,5
    bge  t4,t5,.86wn20
.85wloop.20.47: 
    li  t5,0
    sw  t5,-64(s0)
    j  .93wc22
.86wn20: 
    lw  t5,-80(s0)
    li  t4,1
    addw  t6,t5,t4
    sw  t6,-80(s0)
    j  .75wc18
.93wc22: 
    lw  t6,-64(s0)
    li  t4,3
    bge  t6,t4,.95wn22
.94wloop.22.45: 
    li  t4,0
    sw  t4,-56(s0)
    j  .102wc24
.95wn22: 
    lw  t4,-72(s0)
    li  t6,1
    addw  t5,t4,t6
    sw  t5,-72(s0)
    j  .84wc20
.102wc24: 
    lw  t5,-56(s0)
    li  t6,2
    bge  t5,t6,.104wn24
.103wloop.24.43: 
    li  t6,0
    sw  t6,-48(s0)
    j  .111wc26
.104wn24: 
    lw  t6,-64(s0)
    li  t5,1
    addw  t4,t6,t5
    sw  t4,-64(s0)
    j  .93wc22
.111wc26: 
    lw  t4,-48(s0)
    li  t5,5
    bge  t4,t5,.113wn26
.112wloop.26.41: 
    li  t5,0
    sw  t5,-40(s0)
    j  .120wc28
.113wn26: 
    lw  t5,-56(s0)
    li  t4,2
    addw  t6,t5,t4
    sw  t6,-56(s0)
    j  .102wc24
.120wc28: 
    lw  t6,-40(s0)
    li  t4,5
    bge  t6,t4,.122wn28
.121wloop.28.39: 
    li  t4,0
    sw  t4,-32(s0)
    j  .129wc30
.122wn28: 
    lw  t4,-48(s0)
    li  t6,2
    addw  t5,t4,t6
    sw  t5,-48(s0)
    j  .111wc26
.129wc30: 
    lw  t5,-32(s0)
    li  t6,3
    bge  t5,t6,.131wn30
.130wloop.30.37: 
    li  t6,0
    sw  t6,-24(s0)
    j  .138wc32
.131wn30: 
    lw  t6,-40(s0)
    li  t5,2
    addw  t4,t6,t5
    sw  t4,-40(s0)
    j  .120wc28
.138wc32: 
    lw  t4,-24(s0)
    li  t5,6
    bge  t4,t5,.140wn32
.139wloop.32.35: 
    lw  t5,-144(s0)
    li  t4,3
    addw  t6,t5,t4
    li  t4,999
    remw  t5,t6,t4
    sw  t5,-144(s0)
    lw  t5,-24(s0)
    li  t4,3
    addw  t6,t5,t4
    sw  t6,-24(s0)
    j  .138wc32
.140wn32: 
    lw  t6,-32(s0)
    li  t4,1
    addw  t5,t6,t4
    sw  t5,-32(s0)
    j  .129wc30
    .size	main, .-main
