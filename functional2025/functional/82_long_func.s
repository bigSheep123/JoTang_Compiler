    .file    "./functional2025/functional/82_long_func.s"
    .option nopic
    .attribute arch,     "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .text
    .globl	.G.SHIFT_TABLE
    .data
    .align	3
    .type  .G.SHIFT_TABLE, @object
    .size  .G.SHIFT_TABLE, 64
.G.SHIFT_TABLE:
    .word  1
    .word  2
    .word  4
    .word  8
    .word  16
    .word  32
    .word  64
    .word  128
    .word  256
    .word  512
    .word  1024
    .word  2048
    .word  4096
    .word  8192
    .word  16384
    .word  32768
    .text
    .align 1
    .globl long_func
    .type  long_func, @function
long_func: 
    addi  sp,sp,-384
    sd  ra,376(sp)
    sd  s0,368(sp)
    addi  s0,sp,384
.18: 
    li  t6,2
    sw  t6,-688(s0)
    li  t6,0
    sw  t6,-680(s0)
    li  t6,1
    sw  t6,-672(s0)
    j  .31wc8
.31wc8: 
    lw  t6,-680(s0)
    li  t5,0
    ble  t6,t5,.33wn8
.32wloop.8.342: 
    li  t5,0
    sw  t5,-728(s0)
    li  t5,0
    sw  t5,-720(s0)
    lw  t5,-680(s0)
    sw  t5,-712(s0)
    li  t5,1
    sw  t5,-704(s0)
    j  .43wc13
.33wn8: 
    lw  t5,-672(s0)
    sw  t5,-728(s0)
    lw  t5,-728(s0)
    mv  a0,t5
    call  putint
    mv  t5,a0
    li  a0,10
    call  putch
    mv  t5,a0
    li  t5,2
    sw  t5,-520(s0)
    li  t5,1
    sw  t5,-512(s0)
    li  t5,1
    sw  t5,-504(s0)
    j  .1138wc349
.43wc13: 
    lw  t5,-720(s0)
    li  t6,16
    bge  t5,t6,.45wn13
.44wloop.13.20: 
    lw  t6,-712(s0)
    li  t5,2
    remw  t4,t6,t5
    li  t5,0
    beq  t4,t5,.51
.55: 
    lw  t4,-704(s0)
    li  t5,2
    remw  t3,t4,t5
    li  t5,0
    beq  t3,t5,.51
.50: 
    lw  t4,-728(s0)
    lw  t5,-720(s0)
    lui  t5,%hi(.G.SHIFT_TABLE)
    addi  t5,t5,%lo(.G.SHIFT_TABLE)
    lw  t6,-720(s0)
    slli  t6,t6,2
    add  t3,t5,t6
    lw  t6,0(t3)
    li  t3,1
    mulw  t5,t3,t6
    addw  t3,t4,t5
    sw  t3,-728(s0)
    j  .51
.45wn13: 
    lw  t5,-728(s0)
    li  t4,0
    beq  t5,t4,.80
.79: 
    lw  t5,-672(s0)
    sw  t5,-664(s0)
    lw  t5,-688(s0)
    sw  t5,-656(s0)
    li  t5,0
    sw  t5,-648(s0)
    j  .92wc24
.51: 
    lw  t3,-712(s0)
    li  t5,2
    divw  t4,t3,t5
    sw  t4,-712(s0)
    lw  t4,-704(s0)
    li  t5,2
    divw  t3,t4,t5
    sw  t3,-704(s0)
    lw  t3,-720(s0)
    li  t5,1
    addw  t4,t3,t5
    sw  t4,-720(s0)
    j  .43wc13
.80: 
    lw  t5,-688(s0)
    sw  t5,-592(s0)
    lw  t5,-688(s0)
    sw  t5,-584(s0)
    li  t5,0
    sw  t5,-576(s0)
    j  .584wc175
.92wc24: 
    lw  t5,-656(s0)
    li  t3,0
    beq  t5,t3,.94wn24
.93wloop.24.168: 
    li  t3,0
    sw  t3,-728(s0)
    li  t3,0
    sw  t3,-720(s0)
    lw  t3,-656(s0)
    sw  t3,-712(s0)
    li  t3,1
    sw  t3,-704(s0)
    j  .104wc29
.94wn24: 
    lw  t3,-648(s0)
    sw  t3,-728(s0)
    lw  t3,-728(s0)
    sw  t3,-672(s0)
    j  .80
.104wc29: 
    lw  t3,-720(s0)
    li  t5,16
    bge  t3,t5,.106wn29
.105wloop.29.36: 
    lw  t5,-712(s0)
    li  t3,2
    remw  t4,t5,t3
    li  t3,0
    beq  t4,t3,.112
.116: 
    lw  t4,-704(s0)
    li  t3,2
    remw  t6,t4,t3
    li  t3,0
    beq  t6,t3,.112
.111: 
    lw  t4,-728(s0)
    lw  t3,-720(s0)
    lui  t3,%hi(.G.SHIFT_TABLE)
    addi  t3,t3,%lo(.G.SHIFT_TABLE)
    lw  t5,-720(s0)
    slli  t5,t5,2
    add  t6,t3,t5
    lw  t5,0(t6)
    li  t6,1
    mulw  t3,t6,t5
    addw  t6,t4,t3
    sw  t6,-728(s0)
    j  .112
.106wn29: 
    lw  t3,-728(s0)
    li  t4,0
    beq  t3,t4,.141
.140: 
    lw  t3,-648(s0)
    sw  t3,-640(s0)
    lw  t3,-664(s0)
    sw  t3,-632(s0)
    j  .152wc40
.112: 
    lw  t6,-712(s0)
    li  t3,2
    divw  t4,t6,t3
    sw  t4,-712(s0)
    lw  t4,-704(s0)
    li  t3,2
    divw  t6,t4,t3
    sw  t6,-704(s0)
    lw  t6,-720(s0)
    li  t3,1
    addw  t4,t6,t3
    sw  t4,-720(s0)
    j  .104wc29
.141: 
    lw  t3,-664(s0)
    sw  t3,-616(s0)
    lw  t3,-664(s0)
    sw  t3,-608(s0)
    j  .335wc96
.152wc40: 
    lw  t3,-632(s0)
    li  t6,0
    beq  t3,t6,.154wn40
.153wloop.40.89: 
    li  t6,0
    sw  t6,-728(s0)
    li  t6,0
    sw  t6,-720(s0)
    lw  t6,-640(s0)
    sw  t6,-712(s0)
    lw  t6,-632(s0)
    sw  t6,-704(s0)
    j  .165wc45
.154wn40: 
    lw  t6,-640(s0)
    sw  t6,-728(s0)
    lw  t6,-728(s0)
    sw  t6,-648(s0)
    j  .141
.165wc45: 
    lw  t6,-720(s0)
    li  t3,16
    bge  t6,t3,.167wn45
.166wloop.45.56: 
    lw  t3,-712(s0)
    li  t6,2
    remw  t4,t3,t6
    li  t6,0
    beq  t4,t6,.173
.172: 
    lw  t6,-704(s0)
    li  t4,2
    remw  t3,t6,t4
    li  t4,0
    bne  t3,t4,.179
.178: 
    lw  t3,-728(s0)
    lw  t6,-720(s0)
    lui  t6,%hi(.G.SHIFT_TABLE)
    addi  t6,t6,%lo(.G.SHIFT_TABLE)
    lw  t4,-720(s0)
    slli  t4,t4,2
    add  t5,t6,t4
    lw  t4,0(t5)
    li  t5,1
    mulw  t6,t5,t4
    addw  t5,t3,t6
    sw  t5,-728(s0)
    j  .179
.167wn45: 
    lw  t6,-728(s0)
    sw  t6,-624(s0)
    li  t6,0
    sw  t6,-728(s0)
    li  t6,0
    sw  t6,-720(s0)
    lw  t6,-640(s0)
    sw  t6,-712(s0)
    lw  t6,-632(s0)
    sw  t6,-704(s0)
    j  .227wc62
.173: 
    lw  t4,-704(s0)
    li  t3,2
    remw  t6,t4,t3
    li  t3,0
    beq  t6,t3,.195
.194: 
    lw  t3,-728(s0)
    lw  t6,-720(s0)
    lui  t6,%hi(.G.SHIFT_TABLE)
    addi  t6,t6,%lo(.G.SHIFT_TABLE)
    lw  t5,-720(s0)
    slli  t5,t5,2
    add  t4,t6,t5
    lw  t5,0(t4)
    li  t4,1
    mulw  t6,t4,t5
    addw  t4,t3,t6
    sw  t4,-728(s0)
    j  .195
.179: 
    j  .192
.192: 
    lw  t5,-712(s0)
    li  t6,2
    divw  t3,t5,t6
    sw  t3,-712(s0)
    lw  t3,-704(s0)
    li  t6,2
    divw  t5,t3,t6
    sw  t5,-704(s0)
    lw  t5,-720(s0)
    li  t6,1
    addw  t3,t5,t6
    sw  t3,-720(s0)
    j  .165wc45
.195: 
    j  .192
.227wc62: 
    lw  t4,-720(s0)
    li  t6,16
    bge  t4,t6,.229wn62
.228wloop.62.69: 
    lw  t6,-712(s0)
    li  t4,2
    remw  t3,t6,t4
    li  t4,0
    beq  t3,t4,.235
.239: 
    lw  t4,-704(s0)
    li  t3,2
    remw  t5,t4,t3
    li  t3,0
    beq  t5,t3,.235
.234: 
    lw  t4,-728(s0)
    lw  t3,-720(s0)
    lui  t3,%hi(.G.SHIFT_TABLE)
    addi  t3,t3,%lo(.G.SHIFT_TABLE)
    lw  t6,-720(s0)
    slli  t6,t6,2
    add  t5,t3,t6
    lw  t6,0(t5)
    li  t5,1
    mulw  t3,t5,t6
    addw  t5,t4,t3
    sw  t5,-728(s0)
    j  .235
.229wn62: 
    lw  t4,-728(s0)
    sw  t4,-632(s0)
    j  .266
.235: 
    lw  t5,-712(s0)
    li  t3,2
    divw  t4,t5,t3
    sw  t4,-712(s0)
    lw  t4,-704(s0)
    li  t3,2
    divw  t5,t4,t3
    sw  t5,-704(s0)
    lw  t5,-720(s0)
    li  t3,1
    addw  t4,t5,t3
    sw  t4,-720(s0)
    j  .227wc62
.266: 
    li  t3,0
    sw  t3,-728(s0)
    li  t3,0
    sw  t3,-720(s0)
    lw  t3,-632(s0)
    lui  t5,%hi(.G.SHIFT_TABLE)
    addi  t5,t5,%lo(.G.SHIFT_TABLE)
    lw  t4,4(t5)
    mulw  t5,t3,t4
    sw  t5,-712(s0)
    li  t5,65535
    sw  t5,-704(s0)
    j  .280wc78
.280wc78: 
    lw  t5,-720(s0)
    li  t4,16
    bge  t5,t4,.282wn78
.281wloop.78.85: 
    lw  t4,-712(s0)
    li  t5,2
    remw  t3,t4,t5
    li  t5,0
    beq  t3,t5,.288
.292: 
    lw  t5,-704(s0)
    li  t3,2
    remw  t6,t5,t3
    li  t3,0
    beq  t6,t3,.288
.287: 
    lw  t5,-728(s0)
    lw  t3,-720(s0)
    lui  t3,%hi(.G.SHIFT_TABLE)
    addi  t3,t3,%lo(.G.SHIFT_TABLE)
    lw  t4,-720(s0)
    slli  t4,t4,2
    add  t6,t3,t4
    lw  t4,0(t6)
    li  t6,1
    mulw  t3,t6,t4
    addw  t6,t5,t3
    sw  t6,-728(s0)
    j  .288
.282wn78: 
    j  .316
.288: 
    lw  t6,-712(s0)
    li  t3,2
    divw  t5,t6,t3
    sw  t5,-712(s0)
    lw  t5,-704(s0)
    li  t3,2
    divw  t6,t5,t3
    sw  t6,-704(s0)
    lw  t6,-720(s0)
    li  t3,1
    addw  t5,t6,t3
    sw  t5,-720(s0)
    j  .280wc78
.316: 
    lw  t3,-728(s0)
    sw  t3,-632(s0)
    lw  t3,-624(s0)
    sw  t3,-640(s0)
    j  .152wc40
.335wc96: 
    lw  t3,-608(s0)
    li  t6,0
    beq  t3,t6,.337wn96
.336wloop.96.145: 
    li  t6,0
    sw  t6,-728(s0)
    li  t6,0
    sw  t6,-720(s0)
    lw  t6,-616(s0)
    sw  t6,-712(s0)
    lw  t6,-608(s0)
    sw  t6,-704(s0)
    j  .348wc101
.337wn96: 
    lw  t6,-616(s0)
    sw  t6,-728(s0)
    lw  t6,-728(s0)
    sw  t6,-664(s0)
    lw  t6,-656(s0)
    sw  t6,-712(s0)
    li  t6,1
    sw  t6,-704(s0)
    lw  t6,-704(s0)
    li  t3,15
    blt  t6,t3,.510
.509: 
    lw  t6,-712(s0)
    li  t3,0
    bge  t6,t3,.515
.514: 
    li  t6,65535
    sw  t6,-728(s0)
    j  .520
.348wc101: 
    lw  t3,-720(s0)
    li  t6,16
    bge  t3,t6,.350wn101
.349wloop.101.112: 
    lw  t6,-712(s0)
    li  t3,2
    remw  t5,t6,t3
    li  t3,0
    beq  t5,t3,.356
.355: 
    lw  t3,-704(s0)
    li  t5,2
    remw  t6,t3,t5
    li  t5,0
    bne  t6,t5,.362
.361: 
    lw  t6,-728(s0)
    lw  t3,-720(s0)
    lui  t3,%hi(.G.SHIFT_TABLE)
    addi  t3,t3,%lo(.G.SHIFT_TABLE)
    lw  t5,-720(s0)
    slli  t5,t5,2
    add  t4,t3,t5
    lw  t5,0(t4)
    li  t4,1
    mulw  t3,t4,t5
    addw  t4,t6,t3
    sw  t4,-728(s0)
    j  .362
.350wn101: 
    lw  t3,-728(s0)
    sw  t3,-600(s0)
    li  t3,0
    sw  t3,-728(s0)
    li  t3,0
    sw  t3,-720(s0)
    lw  t3,-616(s0)
    sw  t3,-712(s0)
    lw  t3,-608(s0)
    sw  t3,-704(s0)
    j  .410wc118
.356: 
    lw  t5,-704(s0)
    li  t6,2
    remw  t3,t5,t6
    li  t6,0
    beq  t3,t6,.378
.377: 
    lw  t6,-728(s0)
    lw  t3,-720(s0)
    lui  t3,%hi(.G.SHIFT_TABLE)
    addi  t3,t3,%lo(.G.SHIFT_TABLE)
    lw  t4,-720(s0)
    slli  t4,t4,2
    add  t5,t3,t4
    lw  t4,0(t5)
    li  t5,1
    mulw  t3,t5,t4
    addw  t5,t6,t3
    sw  t5,-728(s0)
    j  .378
.362: 
    j  .375
.375: 
    lw  t4,-712(s0)
    li  t3,2
    divw  t6,t4,t3
    sw  t6,-712(s0)
    lw  t6,-704(s0)
    li  t3,2
    divw  t4,t6,t3
    sw  t4,-704(s0)
    lw  t4,-720(s0)
    li  t3,1
    addw  t6,t4,t3
    sw  t6,-720(s0)
    j  .348wc101
.378: 
    j  .375
.410wc118: 
    lw  t5,-720(s0)
    li  t3,16
    bge  t5,t3,.412wn118
.411wloop.118.125: 
    lw  t3,-712(s0)
    li  t5,2
    remw  t6,t3,t5
    li  t5,0
    beq  t6,t5,.418
.422: 
    lw  t5,-704(s0)
    li  t6,2
    remw  t4,t5,t6
    li  t6,0
    beq  t4,t6,.418
.417: 
    lw  t5,-728(s0)
    lw  t6,-720(s0)
    lui  t6,%hi(.G.SHIFT_TABLE)
    addi  t6,t6,%lo(.G.SHIFT_TABLE)
    lw  t3,-720(s0)
    slli  t3,t3,2
    add  t4,t6,t3
    lw  t3,0(t4)
    li  t4,1
    mulw  t6,t4,t3
    addw  t4,t5,t6
    sw  t4,-728(s0)
    j  .418
.412wn118: 
    lw  t5,-728(s0)
    sw  t5,-608(s0)
    j  .449
.418: 
    lw  t4,-712(s0)
    li  t6,2
    divw  t5,t4,t6
    sw  t5,-712(s0)
    lw  t5,-704(s0)
    li  t6,2
    divw  t4,t5,t6
    sw  t4,-704(s0)
    lw  t4,-720(s0)
    li  t6,1
    addw  t5,t4,t6
    sw  t5,-720(s0)
    j  .410wc118
.449: 
    li  t6,0
    sw  t6,-728(s0)
    li  t6,0
    sw  t6,-720(s0)
    lw  t6,-608(s0)
    lui  t4,%hi(.G.SHIFT_TABLE)
    addi  t4,t4,%lo(.G.SHIFT_TABLE)
    lw  t5,4(t4)
    mulw  t4,t6,t5
    sw  t4,-712(s0)
    li  t4,65535
    sw  t4,-704(s0)
    j  .459wc134
.459wc134: 
    lw  t4,-720(s0)
    li  t5,16
    bge  t4,t5,.461wn134
.460wloop.134.141: 
    lw  t5,-712(s0)
    li  t4,2
    remw  t6,t5,t4
    li  t4,0
    beq  t6,t4,.467
.471: 
    lw  t4,-704(s0)
    li  t6,2
    remw  t3,t4,t6
    li  t6,0
    beq  t3,t6,.467
.466: 
    lw  t4,-728(s0)
    lw  t6,-720(s0)
    lui  t6,%hi(.G.SHIFT_TABLE)
    addi  t6,t6,%lo(.G.SHIFT_TABLE)
    lw  t5,-720(s0)
    slli  t5,t5,2
    add  t3,t6,t5
    lw  t5,0(t3)
    li  t3,1
    mulw  t6,t3,t5
    addw  t3,t4,t6
    sw  t3,-728(s0)
    j  .467
.461wn134: 
    j  .495
.467: 
    lw  t3,-712(s0)
    li  t6,2
    divw  t4,t3,t6
    sw  t4,-712(s0)
    lw  t4,-704(s0)
    li  t6,2
    divw  t3,t4,t6
    sw  t3,-704(s0)
    lw  t3,-720(s0)
    li  t6,1
    addw  t4,t3,t6
    sw  t4,-720(s0)
    j  .459wc134
.495: 
    lw  t6,-728(s0)
    sw  t6,-608(s0)
    lw  t6,-600(s0)
    sw  t6,-616(s0)
    j  .335wc96
.510: 
    lw  t3,-704(s0)
    li  t6,0
    ble  t3,t6,.527
.526: 
    lw  t6,-712(s0)
    li  t3,32767
    ble  t6,t3,.532
.531: 
    lw  t3,-712(s0)
    lw  t6,-704(s0)
    lui  t6,%hi(.G.SHIFT_TABLE)
    addi  t6,t6,%lo(.G.SHIFT_TABLE)
    lw  t4,-704(s0)
    slli  t4,t4,2
    add  t5,t6,t4
    lw  t4,0(t5)
    divw  t5,t3,t4
    sw  t5,-712(s0)
    lw  t5,-712(s0)
    li  t4,65536
    addw  t3,t5,t4
    lw  t4,-704(s0)
    li  t5,15
    subw  t6,t5,t4
    li  t5,1
    addw  t4,t6,t5
    lui  t4,%hi(.G.SHIFT_TABLE)
    addi  t4,t4,%lo(.G.SHIFT_TABLE)
    lw  t5,0(t4)
    subw  t4,t3,t5
    sw  t4,-728(s0)
    j  .553
.515: 
    li  t6,0
    sw  t6,-728(s0)
    j  .520
.520: 
    j  .524
.524: 
    lw  t6,-728(s0)
    sw  t6,-656(s0)
    j  .92wc24
.527: 
    lw  t3,-712(s0)
    sw  t3,-728(s0)
    j  .562
.532: 
    lw  t4,-712(s0)
    lw  t5,-704(s0)
    lui  t5,%hi(.G.SHIFT_TABLE)
    addi  t5,t5,%lo(.G.SHIFT_TABLE)
    lw  t3,-704(s0)
    slli  t3,t3,2
    add  t6,t5,t3
    lw  t3,0(t6)
    divw  t6,t4,t3
    sw  t6,-728(s0)
    j  .553
.553: 
    j  .562
.562: 
    j  .524
.584wc175: 
    lw  t6,-584(s0)
    li  t3,0
    beq  t6,t3,.586wn175
.585wloop.175.319: 
    li  t3,0
    sw  t3,-728(s0)
    li  t3,0
    sw  t3,-720(s0)
    lw  t3,-584(s0)
    sw  t3,-712(s0)
    li  t3,1
    sw  t3,-704(s0)
    j  .596wc180
.586wn175: 
    lw  t3,-576(s0)
    sw  t3,-728(s0)
    lw  t3,-728(s0)
    sw  t3,-688(s0)
    lw  t3,-680(s0)
    sw  t3,-712(s0)
    li  t3,1
    sw  t3,-704(s0)
    lw  t3,-704(s0)
    li  t6,15
    blt  t3,t6,.1065
.1064: 
    lw  t5,-712(s0)
    li  t6,0
    bge  t5,t6,.1070
.1069: 
    li  t5,65535
    sw  t5,-728(s0)
    j  .1075
.596wc180: 
    lw  t6,-720(s0)
    li  t3,16
    bge  t6,t3,.598wn180
.597wloop.180.187: 
    lw  t3,-712(s0)
    li  t6,2
    remw  t4,t3,t6
    li  t6,0
    beq  t4,t6,.604
.608: 
    lw  t4,-704(s0)
    li  t6,2
    remw  t5,t4,t6
    li  t6,0
    beq  t5,t6,.604
.603: 
    lw  t4,-728(s0)
    lw  t6,-720(s0)
    lui  t6,%hi(.G.SHIFT_TABLE)
    addi  t6,t6,%lo(.G.SHIFT_TABLE)
    lw  t3,-720(s0)
    slli  t3,t3,2
    add  t5,t6,t3
    lw  t3,0(t5)
    li  t5,1
    mulw  t6,t5,t3
    addw  t5,t4,t6
    sw  t5,-728(s0)
    j  .604
.598wn180: 
    lw  t6,-728(s0)
    li  t4,0
    beq  t6,t4,.633
.632: 
    lw  t6,-576(s0)
    sw  t6,-568(s0)
    lw  t6,-592(s0)
    sw  t6,-560(s0)
    j  .644wc191
.604: 
    lw  t5,-712(s0)
    li  t6,2
    divw  t4,t5,t6
    sw  t4,-712(s0)
    lw  t4,-704(s0)
    li  t6,2
    divw  t5,t4,t6
    sw  t5,-704(s0)
    lw  t5,-720(s0)
    li  t6,1
    addw  t4,t5,t6
    sw  t4,-720(s0)
    j  .596wc180
.633: 
    lw  t6,-592(s0)
    sw  t6,-544(s0)
    lw  t6,-592(s0)
    sw  t6,-536(s0)
    j  .823wc247
.644wc191: 
    lw  t6,-560(s0)
    li  t5,0
    beq  t6,t5,.646wn191
.645wloop.191.240: 
    li  t5,0
    sw  t5,-728(s0)
    li  t5,0
    sw  t5,-720(s0)
    lw  t5,-568(s0)
    sw  t5,-712(s0)
    lw  t5,-560(s0)
    sw  t5,-704(s0)
    j  .657wc196
.646wn191: 
    lw  t5,-568(s0)
    sw  t5,-728(s0)
    lw  t5,-728(s0)
    sw  t5,-576(s0)
    j  .633
.657wc196: 
    lw  t5,-720(s0)
    li  t6,16
    bge  t5,t6,.659wn196
.658wloop.196.207: 
    lw  t6,-712(s0)
    li  t5,2
    remw  t4,t6,t5
    li  t5,0
    beq  t4,t5,.665
.664: 
    lw  t5,-704(s0)
    li  t4,2
    remw  t6,t5,t4
    li  t4,0
    bne  t6,t4,.671
.670: 
    lw  t6,-728(s0)
    lw  t5,-720(s0)
    lui  t5,%hi(.G.SHIFT_TABLE)
    addi  t5,t5,%lo(.G.SHIFT_TABLE)
    lw  t4,-720(s0)
    slli  t4,t4,2
    add  t3,t5,t4
    lw  t4,0(t3)
    li  t3,1
    mulw  t5,t3,t4
    addw  t3,t6,t5
    sw  t3,-728(s0)
    j  .671
.659wn196: 
    lw  t5,-728(s0)
    sw  t5,-552(s0)
    li  t5,0
    sw  t5,-728(s0)
    li  t5,0
    sw  t5,-720(s0)
    lw  t5,-568(s0)
    sw  t5,-712(s0)
    lw  t5,-560(s0)
    sw  t5,-704(s0)
    j  .719wc213
.665: 
    lw  t4,-704(s0)
    li  t6,2
    remw  t5,t4,t6
    li  t6,0
    beq  t5,t6,.687
.686: 
    lw  t6,-728(s0)
    lw  t5,-720(s0)
    lui  t5,%hi(.G.SHIFT_TABLE)
    addi  t5,t5,%lo(.G.SHIFT_TABLE)
    lw  t3,-720(s0)
    slli  t3,t3,2
    add  t4,t5,t3
    lw  t3,0(t4)
    li  t4,1
    mulw  t5,t4,t3
    addw  t4,t6,t5
    sw  t4,-728(s0)
    j  .687
.671: 
    j  .684
.684: 
    lw  t3,-712(s0)
    li  t5,2
    divw  t6,t3,t5
    sw  t6,-712(s0)
    lw  t6,-704(s0)
    li  t5,2
    divw  t3,t6,t5
    sw  t3,-704(s0)
    lw  t3,-720(s0)
    li  t5,1
    addw  t6,t3,t5
    sw  t6,-720(s0)
    j  .657wc196
.687: 
    j  .684
.719wc213: 
    lw  t4,-720(s0)
    li  t5,16
    bge  t4,t5,.721wn213
.720wloop.213.220: 
    lw  t5,-712(s0)
    li  t4,2
    remw  t6,t5,t4
    li  t4,0
    beq  t6,t4,.727
.731: 
    lw  t4,-704(s0)
    li  t6,2
    remw  t3,t4,t6
    li  t6,0
    beq  t3,t6,.727
.726: 
    lw  t4,-728(s0)
    lw  t6,-720(s0)
    lui  t6,%hi(.G.SHIFT_TABLE)
    addi  t6,t6,%lo(.G.SHIFT_TABLE)
    lw  t5,-720(s0)
    slli  t5,t5,2
    add  t3,t6,t5
    lw  t5,0(t3)
    li  t3,1
    mulw  t6,t3,t5
    addw  t3,t4,t6
    sw  t3,-728(s0)
    j  .727
.721wn213: 
    lw  t4,-728(s0)
    sw  t4,-560(s0)
    j  .758
.727: 
    lw  t3,-712(s0)
    li  t6,2
    divw  t4,t3,t6
    sw  t4,-712(s0)
    lw  t4,-704(s0)
    li  t6,2
    divw  t3,t4,t6
    sw  t3,-704(s0)
    lw  t3,-720(s0)
    li  t6,1
    addw  t4,t3,t6
    sw  t4,-720(s0)
    j  .719wc213
.758: 
    li  t6,0
    sw  t6,-728(s0)
    li  t6,0
    sw  t6,-720(s0)
    lw  t6,-560(s0)
    lui  t3,%hi(.G.SHIFT_TABLE)
    addi  t3,t3,%lo(.G.SHIFT_TABLE)
    lw  t4,4(t3)
    mulw  t3,t6,t4
    sw  t3,-712(s0)
    li  t3,65535
    sw  t3,-704(s0)
    j  .768wc229
.768wc229: 
    lw  t3,-720(s0)
    li  t4,16
    bge  t3,t4,.770wn229
.769wloop.229.236: 
    lw  t4,-712(s0)
    li  t3,2
    remw  t6,t4,t3
    li  t3,0
    beq  t6,t3,.776
.780: 
    lw  t3,-704(s0)
    li  t6,2
    remw  t5,t3,t6
    li  t6,0
    beq  t5,t6,.776
.775: 
    lw  t3,-728(s0)
    lw  t6,-720(s0)
    lui  t6,%hi(.G.SHIFT_TABLE)
    addi  t6,t6,%lo(.G.SHIFT_TABLE)
    lw  t4,-720(s0)
    slli  t4,t4,2
    add  t5,t6,t4
    lw  t4,0(t5)
    li  t5,1
    mulw  t6,t5,t4
    addw  t5,t3,t6
    sw  t5,-728(s0)
    j  .776
.770wn229: 
    j  .804
.776: 
    lw  t5,-712(s0)
    li  t6,2
    divw  t3,t5,t6
    sw  t3,-712(s0)
    lw  t3,-704(s0)
    li  t6,2
    divw  t5,t3,t6
    sw  t5,-704(s0)
    lw  t5,-720(s0)
    li  t6,1
    addw  t3,t5,t6
    sw  t3,-720(s0)
    j  .768wc229
.804: 
    lw  t6,-728(s0)
    sw  t6,-560(s0)
    lw  t6,-552(s0)
    sw  t6,-568(s0)
    j  .644wc191
.823wc247: 
    lw  t6,-536(s0)
    li  t5,0
    beq  t6,t5,.825wn247
.824wloop.247.296: 
    li  t5,0
    sw  t5,-728(s0)
    li  t5,0
    sw  t5,-720(s0)
    lw  t5,-544(s0)
    sw  t5,-712(s0)
    lw  t5,-536(s0)
    sw  t5,-704(s0)
    j  .836wc252
.825wn247: 
    lw  t5,-544(s0)
    sw  t5,-728(s0)
    lw  t5,-728(s0)
    sw  t5,-592(s0)
    lw  t5,-584(s0)
    sw  t5,-712(s0)
    li  t5,1
    sw  t5,-704(s0)
    lw  t5,-704(s0)
    li  t6,15
    blt  t5,t6,.998
.997: 
    lw  t5,-712(s0)
    li  t6,0
    bge  t5,t6,.1003
.1002: 
    li  t5,65535
    sw  t5,-728(s0)
    j  .1008
.836wc252: 
    lw  t6,-720(s0)
    li  t5,16
    bge  t6,t5,.838wn252
.837wloop.252.263: 
    lw  t5,-712(s0)
    li  t6,2
    remw  t3,t5,t6
    li  t6,0
    beq  t3,t6,.844
.843: 
    lw  t6,-704(s0)
    li  t3,2
    remw  t5,t6,t3
    li  t3,0
    bne  t5,t3,.850
.849: 
    lw  t5,-728(s0)
    lw  t6,-720(s0)
    lui  t6,%hi(.G.SHIFT_TABLE)
    addi  t6,t6,%lo(.G.SHIFT_TABLE)
    lw  t3,-720(s0)
    slli  t3,t3,2
    add  t4,t6,t3
    lw  t3,0(t4)
    li  t4,1
    mulw  t6,t4,t3
    addw  t4,t5,t6
    sw  t4,-728(s0)
    j  .850
.838wn252: 
    lw  t6,-728(s0)
    sw  t6,-528(s0)
    li  t6,0
    sw  t6,-728(s0)
    li  t6,0
    sw  t6,-720(s0)
    lw  t6,-544(s0)
    sw  t6,-712(s0)
    lw  t6,-536(s0)
    sw  t6,-704(s0)
    j  .898wc269
.844: 
    lw  t3,-704(s0)
    li  t5,2
    remw  t6,t3,t5
    li  t5,0
    beq  t6,t5,.866
.865: 
    lw  t5,-728(s0)
    lw  t6,-720(s0)
    lui  t6,%hi(.G.SHIFT_TABLE)
    addi  t6,t6,%lo(.G.SHIFT_TABLE)
    lw  t4,-720(s0)
    slli  t4,t4,2
    add  t3,t6,t4
    lw  t4,0(t3)
    li  t3,1
    mulw  t6,t3,t4
    addw  t3,t5,t6
    sw  t3,-728(s0)
    j  .866
.850: 
    j  .863
.863: 
    lw  t4,-712(s0)
    li  t6,2
    divw  t5,t4,t6
    sw  t5,-712(s0)
    lw  t5,-704(s0)
    li  t6,2
    divw  t4,t5,t6
    sw  t4,-704(s0)
    lw  t4,-720(s0)
    li  t6,1
    addw  t5,t4,t6
    sw  t5,-720(s0)
    j  .836wc252
.866: 
    j  .863
.898wc269: 
    lw  t3,-720(s0)
    li  t6,16
    bge  t3,t6,.900wn269
.899wloop.269.276: 
    lw  t6,-712(s0)
    li  t3,2
    remw  t5,t6,t3
    li  t3,0
    beq  t5,t3,.906
.910: 
    lw  t3,-704(s0)
    li  t5,2
    remw  t4,t3,t5
    li  t5,0
    beq  t4,t5,.906
.905: 
    lw  t3,-728(s0)
    lw  t5,-720(s0)
    lui  t5,%hi(.G.SHIFT_TABLE)
    addi  t5,t5,%lo(.G.SHIFT_TABLE)
    lw  t6,-720(s0)
    slli  t6,t6,2
    add  t4,t5,t6
    lw  t6,0(t4)
    li  t4,1
    mulw  t5,t4,t6
    addw  t4,t3,t5
    sw  t4,-728(s0)
    j  .906
.900wn269: 
    lw  t3,-728(s0)
    sw  t3,-536(s0)
    j  .937
.906: 
    lw  t4,-712(s0)
    li  t5,2
    divw  t3,t4,t5
    sw  t3,-712(s0)
    lw  t3,-704(s0)
    li  t5,2
    divw  t4,t3,t5
    sw  t4,-704(s0)
    lw  t4,-720(s0)
    li  t5,1
    addw  t3,t4,t5
    sw  t3,-720(s0)
    j  .898wc269
.937: 
    li  t5,0
    sw  t5,-728(s0)
    li  t5,0
    sw  t5,-720(s0)
    lw  t5,-536(s0)
    lui  t4,%hi(.G.SHIFT_TABLE)
    addi  t4,t4,%lo(.G.SHIFT_TABLE)
    lw  t3,4(t4)
    mulw  t4,t5,t3
    sw  t4,-712(s0)
    li  t4,65535
    sw  t4,-704(s0)
    j  .947wc285
.947wc285: 
    lw  t4,-720(s0)
    li  t3,16
    bge  t4,t3,.949wn285
.948wloop.285.292: 
    lw  t3,-712(s0)
    li  t4,2
    remw  t5,t3,t4
    li  t4,0
    beq  t5,t4,.955
.959: 
    lw  t4,-704(s0)
    li  t5,2
    remw  t6,t4,t5
    li  t5,0
    beq  t6,t5,.955
.954: 
    lw  t4,-728(s0)
    lw  t5,-720(s0)
    lui  t5,%hi(.G.SHIFT_TABLE)
    addi  t5,t5,%lo(.G.SHIFT_TABLE)
    lw  t3,-720(s0)
    slli  t3,t3,2
    add  t6,t5,t3
    lw  t3,0(t6)
    li  t6,1
    mulw  t5,t6,t3
    addw  t6,t4,t5
    sw  t6,-728(s0)
    j  .955
.949wn285: 
    j  .983
.955: 
    lw  t6,-712(s0)
    li  t5,2
    divw  t4,t6,t5
    sw  t4,-712(s0)
    lw  t4,-704(s0)
    li  t5,2
    divw  t6,t4,t5
    sw  t6,-704(s0)
    lw  t6,-720(s0)
    li  t5,1
    addw  t4,t6,t5
    sw  t4,-720(s0)
    j  .947wc285
.983: 
    lw  t5,-728(s0)
    sw  t5,-536(s0)
    lw  t5,-528(s0)
    sw  t5,-544(s0)
    j  .823wc247
.998: 
    lw  t6,-704(s0)
    li  t5,0
    ble  t6,t5,.1015
.1014: 
    lw  t5,-712(s0)
    li  t6,32767
    ble  t5,t6,.1020
.1019: 
    lw  t6,-712(s0)
    lw  t5,-704(s0)
    lui  t5,%hi(.G.SHIFT_TABLE)
    addi  t5,t5,%lo(.G.SHIFT_TABLE)
    lw  t4,-704(s0)
    slli  t4,t4,2
    add  t3,t5,t4
    lw  t4,0(t3)
    divw  t3,t6,t4
    sw  t3,-712(s0)
    lw  t3,-712(s0)
    li  t4,65536
    addw  t6,t3,t4
    lw  t4,-704(s0)
    li  t3,15
    subw  t5,t3,t4
    li  t3,1
    addw  t4,t5,t3
    lui  t4,%hi(.G.SHIFT_TABLE)
    addi  t4,t4,%lo(.G.SHIFT_TABLE)
    lw  t3,0(t4)
    subw  t4,t6,t3
    sw  t4,-728(s0)
    j  .1039
.1003: 
    li  t5,0
    sw  t5,-728(s0)
    j  .1008
.1008: 
    j  .1012
.1012: 
    lw  t5,-728(s0)
    sw  t5,-584(s0)
    j  .584wc175
.1015: 
    lw  t6,-712(s0)
    sw  t6,-728(s0)
    j  .1048
.1020: 
    lw  t4,-712(s0)
    lw  t3,-704(s0)
    lui  t3,%hi(.G.SHIFT_TABLE)
    addi  t3,t3,%lo(.G.SHIFT_TABLE)
    lw  t6,-704(s0)
    slli  t6,t6,2
    add  t5,t3,t6
    lw  t6,0(t5)
    divw  t5,t4,t6
    sw  t5,-728(s0)
    j  .1039
.1039: 
    j  .1048
.1048: 
    j  .1012
.1065: 
    lw  t6,-704(s0)
    li  t5,0
    ble  t6,t5,.1082
.1081: 
    lw  t5,-712(s0)
    li  t6,32767
    ble  t5,t6,.1087
.1086: 
    lw  t6,-712(s0)
    lw  t5,-704(s0)
    lui  t5,%hi(.G.SHIFT_TABLE)
    addi  t5,t5,%lo(.G.SHIFT_TABLE)
    lw  t4,-704(s0)
    slli  t4,t4,2
    add  t3,t5,t4
    lw  t4,0(t3)
    divw  t3,t6,t4
    sw  t3,-712(s0)
    lw  t3,-712(s0)
    li  t4,65536
    addw  t6,t3,t4
    lw  t4,-704(s0)
    li  t3,15
    subw  t5,t3,t4
    li  t3,1
    addw  t4,t5,t3
    lui  t4,%hi(.G.SHIFT_TABLE)
    addi  t4,t4,%lo(.G.SHIFT_TABLE)
    lw  t3,0(t4)
    subw  t4,t6,t3
    sw  t4,-728(s0)
    j  .1106
.1070: 
    li  t5,0
    sw  t5,-728(s0)
    j  .1075
.1075: 
    j  .1079
.1079: 
    lw  t5,-728(s0)
    sw  t5,-680(s0)
    j  .31wc8
.1082: 
    lw  t6,-712(s0)
    sw  t6,-728(s0)
    j  .1115
.1087: 
    lw  t4,-712(s0)
    lw  t3,-704(s0)
    lui  t3,%hi(.G.SHIFT_TABLE)
    addi  t3,t3,%lo(.G.SHIFT_TABLE)
    lw  t6,-704(s0)
    slli  t6,t6,2
    add  t5,t3,t6
    lw  t6,0(t5)
    divw  t5,t4,t6
    sw  t5,-728(s0)
    j  .1106
.1106: 
    j  .1115
.1115: 
    j  .1079
.1138wc349: 
    lw  t5,-512(s0)
    li  t6,0
    ble  t5,t6,.1140wn349
.1139wloop.349.683: 
    li  t6,0
    sw  t6,-728(s0)
    li  t6,0
    sw  t6,-720(s0)
    lw  t6,-512(s0)
    sw  t6,-712(s0)
    li  t6,1
    sw  t6,-704(s0)
    j  .1150wc354
.1140wn349: 
    lw  t6,-504(s0)
    sw  t6,-728(s0)
    lw  t6,-728(s0)
    mv  a0,t6
    call  putint
    mv  t6,a0
    li  a0,10
    call  putch
    mv  t6,a0
    li  t6,2
    sw  t6,-696(s0)
    j  .2231wc689
.1150wc354: 
    lw  t6,-720(s0)
    li  t5,16
    bge  t6,t5,.1152wn354
.1151wloop.354.361: 
    lw  t5,-712(s0)
    li  t6,2
    remw  t4,t5,t6
    li  t6,0
    beq  t4,t6,.1158
.1162: 
    lw  t4,-704(s0)
    li  t6,2
    remw  t3,t4,t6
    li  t6,0
    beq  t3,t6,.1158
.1157: 
    lw  t4,-728(s0)
    lw  t6,-720(s0)
    lui  t6,%hi(.G.SHIFT_TABLE)
    addi  t6,t6,%lo(.G.SHIFT_TABLE)
    lw  t5,-720(s0)
    slli  t5,t5,2
    add  t3,t6,t5
    lw  t5,0(t3)
    li  t3,1
    mulw  t6,t3,t5
    addw  t3,t4,t6
    sw  t3,-728(s0)
    j  .1158
.1152wn354: 
    lw  t6,-728(s0)
    li  t4,0
    beq  t6,t4,.1187
.1186: 
    lw  t6,-504(s0)
    sw  t6,-496(s0)
    lw  t6,-520(s0)
    sw  t6,-488(s0)
    li  t6,0
    sw  t6,-480(s0)
    j  .1199wc365
.1158: 
    lw  t3,-712(s0)
    li  t6,2
    divw  t4,t3,t6
    sw  t4,-712(s0)
    lw  t4,-704(s0)
    li  t6,2
    divw  t3,t4,t6
    sw  t3,-704(s0)
    lw  t3,-720(s0)
    li  t6,1
    addw  t4,t3,t6
    sw  t4,-720(s0)
    j  .1150wc354
.1187: 
    lw  t6,-520(s0)
    sw  t6,-424(s0)
    lw  t6,-520(s0)
    sw  t6,-416(s0)
    li  t6,0
    sw  t6,-408(s0)
    j  .1685wc516
.1199wc365: 
    lw  t6,-488(s0)
    li  t3,0
    beq  t6,t3,.1201wn365
.1200wloop.365.509: 
    li  t3,0
    sw  t3,-728(s0)
    li  t3,0
    sw  t3,-720(s0)
    lw  t3,-488(s0)
    sw  t3,-712(s0)
    li  t3,1
    sw  t3,-704(s0)
    j  .1211wc370
.1201wn365: 
    lw  t3,-480(s0)
    sw  t3,-728(s0)
    lw  t3,-728(s0)
    sw  t3,-504(s0)
    j  .1187
.1211wc370: 
    lw  t3,-720(s0)
    li  t6,16
    bge  t3,t6,.1213wn370
.1212wloop.370.377: 
    lw  t6,-712(s0)
    li  t3,2
    remw  t4,t6,t3
    li  t3,0
    beq  t4,t3,.1219
.1223: 
    lw  t4,-704(s0)
    li  t3,2
    remw  t5,t4,t3
    li  t3,0
    beq  t5,t3,.1219
.1218: 
    lw  t4,-728(s0)
    lw  t3,-720(s0)
    lui  t3,%hi(.G.SHIFT_TABLE)
    addi  t3,t3,%lo(.G.SHIFT_TABLE)
    lw  t6,-720(s0)
    slli  t6,t6,2
    add  t5,t3,t6
    lw  t6,0(t5)
    li  t5,1
    mulw  t3,t5,t6
    addw  t5,t4,t3
    sw  t5,-728(s0)
    j  .1219
.1213wn370: 
    lw  t3,-728(s0)
    li  t4,0
    beq  t3,t4,.1248
.1247: 
    lw  t3,-480(s0)
    sw  t3,-472(s0)
    lw  t3,-496(s0)
    sw  t3,-464(s0)
    j  .1259wc381
.1219: 
    lw  t5,-712(s0)
    li  t3,2
    divw  t4,t5,t3
    sw  t4,-712(s0)
    lw  t4,-704(s0)
    li  t3,2
    divw  t5,t4,t3
    sw  t5,-704(s0)
    lw  t5,-720(s0)
    li  t3,1
    addw  t4,t5,t3
    sw  t4,-720(s0)
    j  .1211wc370
.1248: 
    lw  t3,-496(s0)
    sw  t3,-448(s0)
    lw  t3,-496(s0)
    sw  t3,-440(s0)
    j  .1438wc437
.1259wc381: 
    lw  t3,-464(s0)
    li  t5,0
    beq  t3,t5,.1261wn381
.1260wloop.381.430: 
    li  t5,0
    sw  t5,-728(s0)
    li  t5,0
    sw  t5,-720(s0)
    lw  t5,-472(s0)
    sw  t5,-712(s0)
    lw  t5,-464(s0)
    sw  t5,-704(s0)
    j  .1272wc386
.1261wn381: 
    lw  t5,-472(s0)
    sw  t5,-728(s0)
    lw  t5,-728(s0)
    sw  t5,-480(s0)
    j  .1248
.1272wc386: 
    lw  t5,-720(s0)
    li  t3,16
    bge  t5,t3,.1274wn386
.1273wloop.386.397: 
    lw  t3,-712(s0)
    li  t5,2
    remw  t4,t3,t5
    li  t5,0
    beq  t4,t5,.1280
.1279: 
    lw  t5,-704(s0)
    li  t4,2
    remw  t3,t5,t4
    li  t4,0
    bne  t3,t4,.1286
.1285: 
    lw  t3,-728(s0)
    lw  t5,-720(s0)
    lui  t5,%hi(.G.SHIFT_TABLE)
    addi  t5,t5,%lo(.G.SHIFT_TABLE)
    lw  t4,-720(s0)
    slli  t4,t4,2
    add  t6,t5,t4
    lw  t4,0(t6)
    li  t6,1
    mulw  t5,t6,t4
    addw  t6,t3,t5
    sw  t6,-728(s0)
    j  .1286
.1274wn386: 
    lw  t5,-728(s0)
    sw  t5,-456(s0)
    li  t5,0
    sw  t5,-728(s0)
    li  t5,0
    sw  t5,-720(s0)
    lw  t5,-472(s0)
    sw  t5,-712(s0)
    lw  t5,-464(s0)
    sw  t5,-704(s0)
    j  .1334wc403
.1280: 
    lw  t4,-704(s0)
    li  t3,2
    remw  t5,t4,t3
    li  t3,0
    beq  t5,t3,.1302
.1301: 
    lw  t3,-728(s0)
    lw  t5,-720(s0)
    lui  t5,%hi(.G.SHIFT_TABLE)
    addi  t5,t5,%lo(.G.SHIFT_TABLE)
    lw  t6,-720(s0)
    slli  t6,t6,2
    add  t4,t5,t6
    lw  t6,0(t4)
    li  t4,1
    mulw  t5,t4,t6
    addw  t4,t3,t5
    sw  t4,-728(s0)
    j  .1302
.1286: 
    j  .1299
.1299: 
    lw  t6,-712(s0)
    li  t5,2
    divw  t3,t6,t5
    sw  t3,-712(s0)
    lw  t3,-704(s0)
    li  t5,2
    divw  t6,t3,t5
    sw  t6,-704(s0)
    lw  t6,-720(s0)
    li  t5,1
    addw  t3,t6,t5
    sw  t3,-720(s0)
    j  .1272wc386
.1302: 
    j  .1299
.1334wc403: 
    lw  t4,-720(s0)
    li  t5,16
    bge  t4,t5,.1336wn403
.1335wloop.403.410: 
    lw  t5,-712(s0)
    li  t4,2
    remw  t3,t5,t4
    li  t4,0
    beq  t3,t4,.1342
.1346: 
    lw  t4,-704(s0)
    li  t3,2
    remw  t6,t4,t3
    li  t3,0
    beq  t6,t3,.1342
.1341: 
    lw  t4,-728(s0)
    lw  t3,-720(s0)
    lui  t3,%hi(.G.SHIFT_TABLE)
    addi  t3,t3,%lo(.G.SHIFT_TABLE)
    lw  t5,-720(s0)
    slli  t5,t5,2
    add  t6,t3,t5
    lw  t5,0(t6)
    li  t6,1
    mulw  t3,t6,t5
    addw  t6,t4,t3
    sw  t6,-728(s0)
    j  .1342
.1336wn403: 
    lw  t4,-728(s0)
    sw  t4,-464(s0)
    j  .1373
.1342: 
    lw  t6,-712(s0)
    li  t3,2
    divw  t4,t6,t3
    sw  t4,-712(s0)
    lw  t4,-704(s0)
    li  t3,2
    divw  t6,t4,t3
    sw  t6,-704(s0)
    lw  t6,-720(s0)
    li  t3,1
    addw  t4,t6,t3
    sw  t4,-720(s0)
    j  .1334wc403
.1373: 
    li  t3,0
    sw  t3,-728(s0)
    li  t3,0
    sw  t3,-720(s0)
    lw  t3,-464(s0)
    lui  t6,%hi(.G.SHIFT_TABLE)
    addi  t6,t6,%lo(.G.SHIFT_TABLE)
    lw  t4,4(t6)
    mulw  t6,t3,t4
    sw  t6,-712(s0)
    li  t6,65535
    sw  t6,-704(s0)
    j  .1383wc419
.1383wc419: 
    lw  t6,-720(s0)
    li  t4,16
    bge  t6,t4,.1385wn419
.1384wloop.419.426: 
    lw  t4,-712(s0)
    li  t6,2
    remw  t3,t4,t6
    li  t6,0
    beq  t3,t6,.1391
.1395: 
    lw  t6,-704(s0)
    li  t3,2
    remw  t5,t6,t3
    li  t3,0
    beq  t5,t3,.1391
.1390: 
    lw  t6,-728(s0)
    lw  t3,-720(s0)
    lui  t3,%hi(.G.SHIFT_TABLE)
    addi  t3,t3,%lo(.G.SHIFT_TABLE)
    lw  t4,-720(s0)
    slli  t4,t4,2
    add  t5,t3,t4
    lw  t4,0(t5)
    li  t5,1
    mulw  t3,t5,t4
    addw  t5,t6,t3
    sw  t5,-728(s0)
    j  .1391
.1385wn419: 
    j  .1419
.1391: 
    lw  t5,-712(s0)
    li  t3,2
    divw  t6,t5,t3
    sw  t6,-712(s0)
    lw  t6,-704(s0)
    li  t3,2
    divw  t5,t6,t3
    sw  t5,-704(s0)
    lw  t5,-720(s0)
    li  t3,1
    addw  t6,t5,t3
    sw  t6,-720(s0)
    j  .1383wc419
.1419: 
    lw  t3,-728(s0)
    sw  t3,-464(s0)
    lw  t3,-456(s0)
    sw  t3,-472(s0)
    j  .1259wc381
.1438wc437: 
    lw  t3,-440(s0)
    li  t5,0
    beq  t3,t5,.1440wn437
.1439wloop.437.486: 
    li  t5,0
    sw  t5,-728(s0)
    li  t5,0
    sw  t5,-720(s0)
    lw  t5,-448(s0)
    sw  t5,-712(s0)
    lw  t5,-440(s0)
    sw  t5,-704(s0)
    j  .1451wc442
.1440wn437: 
    lw  t5,-448(s0)
    sw  t5,-728(s0)
    lw  t5,-728(s0)
    sw  t5,-496(s0)
    lw  t5,-488(s0)
    sw  t5,-712(s0)
    li  t5,1
    sw  t5,-704(s0)
    lw  t5,-704(s0)
    li  t3,15
    blt  t5,t3,.1613
.1612: 
    lw  t5,-712(s0)
    li  t3,0
    bge  t5,t3,.1618
.1617: 
    li  t5,65535
    sw  t5,-728(s0)
    j  .1623
.1451wc442: 
    lw  t3,-720(s0)
    li  t5,16
    bge  t3,t5,.1453wn442
.1452wloop.442.453: 
    lw  t5,-712(s0)
    li  t3,2
    remw  t6,t5,t3
    li  t3,0
    beq  t6,t3,.1459
.1458: 
    lw  t3,-704(s0)
    li  t6,2
    remw  t5,t3,t6
    li  t6,0
    bne  t5,t6,.1465
.1464: 
    lw  t5,-728(s0)
    lw  t3,-720(s0)
    lui  t3,%hi(.G.SHIFT_TABLE)
    addi  t3,t3,%lo(.G.SHIFT_TABLE)
    lw  t6,-720(s0)
    slli  t6,t6,2
    add  t4,t3,t6
    lw  t6,0(t4)
    li  t4,1
    mulw  t3,t4,t6
    addw  t4,t5,t3
    sw  t4,-728(s0)
    j  .1465
.1453wn442: 
    lw  t3,-728(s0)
    sw  t3,-432(s0)
    li  t3,0
    sw  t3,-728(s0)
    li  t3,0
    sw  t3,-720(s0)
    lw  t3,-448(s0)
    sw  t3,-712(s0)
    lw  t3,-440(s0)
    sw  t3,-704(s0)
    j  .1513wc459
.1459: 
    lw  t6,-704(s0)
    li  t5,2
    remw  t3,t6,t5
    li  t5,0
    beq  t3,t5,.1481
.1480: 
    lw  t5,-728(s0)
    lw  t3,-720(s0)
    lui  t3,%hi(.G.SHIFT_TABLE)
    addi  t3,t3,%lo(.G.SHIFT_TABLE)
    lw  t4,-720(s0)
    slli  t4,t4,2
    add  t6,t3,t4
    lw  t4,0(t6)
    li  t6,1
    mulw  t3,t6,t4
    addw  t6,t5,t3
    sw  t6,-728(s0)
    j  .1481
.1465: 
    j  .1478
.1478: 
    lw  t4,-712(s0)
    li  t3,2
    divw  t5,t4,t3
    sw  t5,-712(s0)
    lw  t5,-704(s0)
    li  t3,2
    divw  t4,t5,t3
    sw  t4,-704(s0)
    lw  t4,-720(s0)
    li  t3,1
    addw  t5,t4,t3
    sw  t5,-720(s0)
    j  .1451wc442
.1481: 
    j  .1478
.1513wc459: 
    lw  t6,-720(s0)
    li  t3,16
    bge  t6,t3,.1515wn459
.1514wloop.459.466: 
    lw  t3,-712(s0)
    li  t6,2
    remw  t5,t3,t6
    li  t6,0
    beq  t5,t6,.1521
.1525: 
    lw  t6,-704(s0)
    li  t5,2
    remw  t4,t6,t5
    li  t5,0
    beq  t4,t5,.1521
.1520: 
    lw  t6,-728(s0)
    lw  t5,-720(s0)
    lui  t5,%hi(.G.SHIFT_TABLE)
    addi  t5,t5,%lo(.G.SHIFT_TABLE)
    lw  t3,-720(s0)
    slli  t3,t3,2
    add  t4,t5,t3
    lw  t3,0(t4)
    li  t4,1
    mulw  t5,t4,t3
    addw  t4,t6,t5
    sw  t4,-728(s0)
    j  .1521
.1515wn459: 
    lw  t6,-728(s0)
    sw  t6,-440(s0)
    j  .1552
.1521: 
    lw  t4,-712(s0)
    li  t5,2
    divw  t6,t4,t5
    sw  t6,-712(s0)
    lw  t6,-704(s0)
    li  t5,2
    divw  t4,t6,t5
    sw  t4,-704(s0)
    lw  t4,-720(s0)
    li  t5,1
    addw  t6,t4,t5
    sw  t6,-720(s0)
    j  .1513wc459
.1552: 
    li  t5,0
    sw  t5,-728(s0)
    li  t5,0
    sw  t5,-720(s0)
    lw  t5,-440(s0)
    lui  t4,%hi(.G.SHIFT_TABLE)
    addi  t4,t4,%lo(.G.SHIFT_TABLE)
    lw  t6,4(t4)
    mulw  t4,t5,t6
    sw  t4,-712(s0)
    li  t4,65535
    sw  t4,-704(s0)
    j  .1562wc475
.1562wc475: 
    lw  t4,-720(s0)
    li  t6,16
    bge  t4,t6,.1564wn475
.1563wloop.475.482: 
    lw  t6,-712(s0)
    li  t4,2
    remw  t5,t6,t4
    li  t4,0
    beq  t5,t4,.1570
.1574: 
    lw  t4,-704(s0)
    li  t5,2
    remw  t3,t4,t5
    li  t5,0
    beq  t3,t5,.1570
.1569: 
    lw  t4,-728(s0)
    lw  t5,-720(s0)
    lui  t5,%hi(.G.SHIFT_TABLE)
    addi  t5,t5,%lo(.G.SHIFT_TABLE)
    lw  t6,-720(s0)
    slli  t6,t6,2
    add  t3,t5,t6
    lw  t6,0(t3)
    li  t3,1
    mulw  t5,t3,t6
    addw  t3,t4,t5
    sw  t3,-728(s0)
    j  .1570
.1564wn475: 
    j  .1598
.1570: 
    lw  t3,-712(s0)
    li  t5,2
    divw  t4,t3,t5
    sw  t4,-712(s0)
    lw  t4,-704(s0)
    li  t5,2
    divw  t3,t4,t5
    sw  t3,-704(s0)
    lw  t3,-720(s0)
    li  t5,1
    addw  t4,t3,t5
    sw  t4,-720(s0)
    j  .1562wc475
.1598: 
    lw  t5,-728(s0)
    sw  t5,-440(s0)
    lw  t5,-432(s0)
    sw  t5,-448(s0)
    j  .1438wc437
.1613: 
    lw  t3,-704(s0)
    li  t5,0
    ble  t3,t5,.1630
.1629: 
    lw  t5,-712(s0)
    li  t3,32767
    ble  t5,t3,.1635
.1634: 
    lw  t3,-712(s0)
    lw  t5,-704(s0)
    lui  t5,%hi(.G.SHIFT_TABLE)
    addi  t5,t5,%lo(.G.SHIFT_TABLE)
    lw  t4,-704(s0)
    slli  t4,t4,2
    add  t6,t5,t4
    lw  t4,0(t6)
    divw  t6,t3,t4
    sw  t6,-712(s0)
    lw  t6,-712(s0)
    li  t4,65536
    addw  t3,t6,t4
    lw  t4,-704(s0)
    li  t6,15
    subw  t5,t6,t4
    li  t6,1
    addw  t4,t5,t6
    lui  t4,%hi(.G.SHIFT_TABLE)
    addi  t4,t4,%lo(.G.SHIFT_TABLE)
    lw  t6,0(t4)
    subw  t4,t3,t6
    sw  t4,-728(s0)
    j  .1654
.1618: 
    li  t5,0
    sw  t5,-728(s0)
    j  .1623
.1623: 
    j  .1627
.1627: 
    lw  t5,-728(s0)
    sw  t5,-488(s0)
    j  .1199wc365
.1630: 
    lw  t3,-712(s0)
    sw  t3,-728(s0)
    j  .1663
.1635: 
    lw  t4,-712(s0)
    lw  t6,-704(s0)
    lui  t6,%hi(.G.SHIFT_TABLE)
    addi  t6,t6,%lo(.G.SHIFT_TABLE)
    lw  t3,-704(s0)
    slli  t3,t3,2
    add  t5,t6,t3
    lw  t3,0(t5)
    divw  t5,t4,t3
    sw  t5,-728(s0)
    j  .1654
.1654: 
    j  .1663
.1663: 
    j  .1627
.1685wc516: 
    lw  t5,-416(s0)
    li  t3,0
    beq  t5,t3,.1687wn516
.1686wloop.516.660: 
    li  t3,0
    sw  t3,-728(s0)
    li  t3,0
    sw  t3,-720(s0)
    lw  t3,-416(s0)
    sw  t3,-712(s0)
    li  t3,1
    sw  t3,-704(s0)
    j  .1697wc521
.1687wn516: 
    lw  t3,-408(s0)
    sw  t3,-728(s0)
    lw  t3,-728(s0)
    sw  t3,-520(s0)
    lw  t3,-512(s0)
    sw  t3,-712(s0)
    li  t3,1
    sw  t3,-704(s0)
    lw  t3,-704(s0)
    li  t5,15
    blt  t3,t5,.2166
.2165: 
    lw  t6,-712(s0)
    li  t5,0
    bge  t6,t5,.2171
.2170: 
    li  t6,65535
    sw  t6,-728(s0)
    j  .2176
.1697wc521: 
    lw  t5,-720(s0)
    li  t3,16
    bge  t5,t3,.1699wn521
.1698wloop.521.528: 
    lw  t3,-712(s0)
    li  t5,2
    remw  t4,t3,t5
    li  t5,0
    beq  t4,t5,.1705
.1709: 
    lw  t4,-704(s0)
    li  t5,2
    remw  t6,t4,t5
    li  t5,0
    beq  t6,t5,.1705
.1704: 
    lw  t4,-728(s0)
    lw  t5,-720(s0)
    lui  t5,%hi(.G.SHIFT_TABLE)
    addi  t5,t5,%lo(.G.SHIFT_TABLE)
    lw  t3,-720(s0)
    slli  t3,t3,2
    add  t6,t5,t3
    lw  t3,0(t6)
    li  t6,1
    mulw  t5,t6,t3
    addw  t6,t4,t5
    sw  t6,-728(s0)
    j  .1705
.1699wn521: 
    lw  t5,-728(s0)
    li  t4,0
    beq  t5,t4,.1734
.1733: 
    lw  t5,-408(s0)
    sw  t5,-400(s0)
    lw  t5,-424(s0)
    sw  t5,-392(s0)
    j  .1745wc532
.1705: 
    lw  t6,-712(s0)
    li  t5,2
    divw  t4,t6,t5
    sw  t4,-712(s0)
    lw  t4,-704(s0)
    li  t5,2
    divw  t6,t4,t5
    sw  t6,-704(s0)
    lw  t6,-720(s0)
    li  t5,1
    addw  t4,t6,t5
    sw  t4,-720(s0)
    j  .1697wc521
.1734: 
    lw  t5,-424(s0)
    sw  t5,-376(s0)
    lw  t5,-424(s0)
    sw  t5,-368(s0)
    j  .1924wc588
.1745wc532: 
    lw  t5,-392(s0)
    li  t6,0
    beq  t5,t6,.1747wn532
.1746wloop.532.581: 
    li  t6,0
    sw  t6,-728(s0)
    li  t6,0
    sw  t6,-720(s0)
    lw  t6,-400(s0)
    sw  t6,-712(s0)
    lw  t6,-392(s0)
    sw  t6,-704(s0)
    j  .1758wc537
.1747wn532: 
    lw  t6,-400(s0)
    sw  t6,-728(s0)
    lw  t6,-728(s0)
    sw  t6,-408(s0)
    j  .1734
.1758wc537: 
    lw  t6,-720(s0)
    li  t5,16
    bge  t6,t5,.1760wn537
.1759wloop.537.548: 
    lw  t5,-712(s0)
    li  t6,2
    remw  t4,t5,t6
    li  t6,0
    beq  t4,t6,.1766
.1765: 
    lw  t6,-704(s0)
    li  t4,2
    remw  t5,t6,t4
    li  t4,0
    bne  t5,t4,.1772
.1771: 
    lw  t5,-728(s0)
    lw  t6,-720(s0)
    lui  t6,%hi(.G.SHIFT_TABLE)
    addi  t6,t6,%lo(.G.SHIFT_TABLE)
    lw  t4,-720(s0)
    slli  t4,t4,2
    add  t3,t6,t4
    lw  t4,0(t3)
    li  t3,1
    mulw  t6,t3,t4
    addw  t3,t5,t6
    sw  t3,-728(s0)
    j  .1772
.1760wn537: 
    lw  t6,-728(s0)
    sw  t6,-384(s0)
    li  t6,0
    sw  t6,-728(s0)
    li  t6,0
    sw  t6,-720(s0)
    lw  t6,-400(s0)
    sw  t6,-712(s0)
    lw  t6,-392(s0)
    sw  t6,-704(s0)
    j  .1820wc554
.1766: 
    lw  t4,-704(s0)
    li  t5,2
    remw  t6,t4,t5
    li  t5,0
    beq  t6,t5,.1788
.1787: 
    lw  t5,-728(s0)
    lw  t6,-720(s0)
    lui  t6,%hi(.G.SHIFT_TABLE)
    addi  t6,t6,%lo(.G.SHIFT_TABLE)
    lw  t3,-720(s0)
    slli  t3,t3,2
    add  t4,t6,t3
    lw  t3,0(t4)
    li  t4,1
    mulw  t6,t4,t3
    addw  t4,t5,t6
    sw  t4,-728(s0)
    j  .1788
.1772: 
    j  .1785
.1785: 
    lw  t3,-712(s0)
    li  t6,2
    divw  t5,t3,t6
    sw  t5,-712(s0)
    lw  t5,-704(s0)
    li  t6,2
    divw  t3,t5,t6
    sw  t3,-704(s0)
    lw  t3,-720(s0)
    li  t6,1
    addw  t5,t3,t6
    sw  t5,-720(s0)
    j  .1758wc537
.1788: 
    j  .1785
.1820wc554: 
    lw  t4,-720(s0)
    li  t6,16
    bge  t4,t6,.1822wn554
.1821wloop.554.561: 
    lw  t6,-712(s0)
    li  t4,2
    remw  t5,t6,t4
    li  t4,0
    beq  t5,t4,.1828
.1832: 
    lw  t4,-704(s0)
    li  t5,2
    remw  t3,t4,t5
    li  t5,0
    beq  t3,t5,.1828
.1827: 
    lw  t4,-728(s0)
    lw  t5,-720(s0)
    lui  t5,%hi(.G.SHIFT_TABLE)
    addi  t5,t5,%lo(.G.SHIFT_TABLE)
    lw  t6,-720(s0)
    slli  t6,t6,2
    add  t3,t5,t6
    lw  t6,0(t3)
    li  t3,1
    mulw  t5,t3,t6
    addw  t3,t4,t5
    sw  t3,-728(s0)
    j  .1828
.1822wn554: 
    lw  t4,-728(s0)
    sw  t4,-392(s0)
    j  .1859
.1828: 
    lw  t3,-712(s0)
    li  t5,2
    divw  t4,t3,t5
    sw  t4,-712(s0)
    lw  t4,-704(s0)
    li  t5,2
    divw  t3,t4,t5
    sw  t3,-704(s0)
    lw  t3,-720(s0)
    li  t5,1
    addw  t4,t3,t5
    sw  t4,-720(s0)
    j  .1820wc554
.1859: 
    li  t5,0
    sw  t5,-728(s0)
    li  t5,0
    sw  t5,-720(s0)
    lw  t5,-392(s0)
    lui  t3,%hi(.G.SHIFT_TABLE)
    addi  t3,t3,%lo(.G.SHIFT_TABLE)
    lw  t4,4(t3)
    mulw  t3,t5,t4
    sw  t3,-712(s0)
    li  t3,65535
    sw  t3,-704(s0)
    j  .1869wc570
.1869wc570: 
    lw  t3,-720(s0)
    li  t4,16
    bge  t3,t4,.1871wn570
.1870wloop.570.577: 
    lw  t4,-712(s0)
    li  t3,2
    remw  t5,t4,t3
    li  t3,0
    beq  t5,t3,.1877
.1881: 
    lw  t3,-704(s0)
    li  t5,2
    remw  t6,t3,t5
    li  t5,0
    beq  t6,t5,.1877
.1876: 
    lw  t3,-728(s0)
    lw  t5,-720(s0)
    lui  t5,%hi(.G.SHIFT_TABLE)
    addi  t5,t5,%lo(.G.SHIFT_TABLE)
    lw  t4,-720(s0)
    slli  t4,t4,2
    add  t6,t5,t4
    lw  t4,0(t6)
    li  t6,1
    mulw  t5,t6,t4
    addw  t6,t3,t5
    sw  t6,-728(s0)
    j  .1877
.1871wn570: 
    j  .1905
.1877: 
    lw  t6,-712(s0)
    li  t5,2
    divw  t3,t6,t5
    sw  t3,-712(s0)
    lw  t3,-704(s0)
    li  t5,2
    divw  t6,t3,t5
    sw  t6,-704(s0)
    lw  t6,-720(s0)
    li  t5,1
    addw  t3,t6,t5
    sw  t3,-720(s0)
    j  .1869wc570
.1905: 
    lw  t5,-728(s0)
    sw  t5,-392(s0)
    lw  t5,-384(s0)
    sw  t5,-400(s0)
    j  .1745wc532
.1924wc588: 
    lw  t5,-368(s0)
    li  t6,0
    beq  t5,t6,.1926wn588
.1925wloop.588.637: 
    li  t6,0
    sw  t6,-728(s0)
    li  t6,0
    sw  t6,-720(s0)
    lw  t6,-376(s0)
    sw  t6,-712(s0)
    lw  t6,-368(s0)
    sw  t6,-704(s0)
    j  .1937wc593
.1926wn588: 
    lw  t6,-376(s0)
    sw  t6,-728(s0)
    lw  t6,-728(s0)
    sw  t6,-424(s0)
    lw  t6,-416(s0)
    sw  t6,-712(s0)
    li  t6,1
    sw  t6,-704(s0)
    lw  t6,-704(s0)
    li  t5,15
    blt  t6,t5,.2099
.2098: 
    lw  t6,-712(s0)
    li  t5,0
    bge  t6,t5,.2104
.2103: 
    li  t6,65535
    sw  t6,-728(s0)
    j  .2109
.1937wc593: 
    lw  t5,-720(s0)
    li  t6,16
    bge  t5,t6,.1939wn593
.1938wloop.593.604: 
    lw  t6,-712(s0)
    li  t5,2
    remw  t3,t6,t5
    li  t5,0
    beq  t3,t5,.1945
.1944: 
    lw  t5,-704(s0)
    li  t3,2
    remw  t6,t5,t3
    li  t3,0
    bne  t6,t3,.1951
.1950: 
    lw  t6,-728(s0)
    lw  t5,-720(s0)
    lui  t5,%hi(.G.SHIFT_TABLE)
    addi  t5,t5,%lo(.G.SHIFT_TABLE)
    lw  t3,-720(s0)
    slli  t3,t3,2
    add  t4,t5,t3
    lw  t3,0(t4)
    li  t4,1
    mulw  t5,t4,t3
    addw  t4,t6,t5
    sw  t4,-728(s0)
    j  .1951
.1939wn593: 
    lw  t5,-728(s0)
    sw  t5,-360(s0)
    li  t5,0
    sw  t5,-728(s0)
    li  t5,0
    sw  t5,-720(s0)
    lw  t5,-376(s0)
    sw  t5,-712(s0)
    lw  t5,-368(s0)
    sw  t5,-704(s0)
    j  .1999wc610
.1945: 
    lw  t3,-704(s0)
    li  t6,2
    remw  t5,t3,t6
    li  t6,0
    beq  t5,t6,.1967
.1966: 
    lw  t6,-728(s0)
    lw  t5,-720(s0)
    lui  t5,%hi(.G.SHIFT_TABLE)
    addi  t5,t5,%lo(.G.SHIFT_TABLE)
    lw  t4,-720(s0)
    slli  t4,t4,2
    add  t3,t5,t4
    lw  t4,0(t3)
    li  t3,1
    mulw  t5,t3,t4
    addw  t3,t6,t5
    sw  t3,-728(s0)
    j  .1967
.1951: 
    j  .1964
.1964: 
    lw  t4,-712(s0)
    li  t5,2
    divw  t6,t4,t5
    sw  t6,-712(s0)
    lw  t6,-704(s0)
    li  t5,2
    divw  t4,t6,t5
    sw  t4,-704(s0)
    lw  t4,-720(s0)
    li  t5,1
    addw  t6,t4,t5
    sw  t6,-720(s0)
    j  .1937wc593
.1967: 
    j  .1964
.1999wc610: 
    lw  t3,-720(s0)
    li  t5,16
    bge  t3,t5,.2001wn610
.2000wloop.610.617: 
    lw  t5,-712(s0)
    li  t3,2
    remw  t6,t5,t3
    li  t3,0
    beq  t6,t3,.2007
.2011: 
    lw  t3,-704(s0)
    li  t6,2
    remw  t4,t3,t6
    li  t6,0
    beq  t4,t6,.2007
.2006: 
    lw  t3,-728(s0)
    lw  t6,-720(s0)
    lui  t6,%hi(.G.SHIFT_TABLE)
    addi  t6,t6,%lo(.G.SHIFT_TABLE)
    lw  t5,-720(s0)
    slli  t5,t5,2
    add  t4,t6,t5
    lw  t5,0(t4)
    li  t4,1
    mulw  t6,t4,t5
    addw  t4,t3,t6
    sw  t4,-728(s0)
    j  .2007
.2001wn610: 
    lw  t3,-728(s0)
    sw  t3,-368(s0)
    j  .2038
.2007: 
    lw  t4,-712(s0)
    li  t6,2
    divw  t3,t4,t6
    sw  t3,-712(s0)
    lw  t3,-704(s0)
    li  t6,2
    divw  t4,t3,t6
    sw  t4,-704(s0)
    lw  t4,-720(s0)
    li  t6,1
    addw  t3,t4,t6
    sw  t3,-720(s0)
    j  .1999wc610
.2038: 
    li  t6,0
    sw  t6,-728(s0)
    li  t6,0
    sw  t6,-720(s0)
    lw  t6,-368(s0)
    lui  t4,%hi(.G.SHIFT_TABLE)
    addi  t4,t4,%lo(.G.SHIFT_TABLE)
    lw  t3,4(t4)
    mulw  t4,t6,t3
    sw  t4,-712(s0)
    li  t4,65535
    sw  t4,-704(s0)
    j  .2048wc626
.2048wc626: 
    lw  t4,-720(s0)
    li  t3,16
    bge  t4,t3,.2050wn626
.2049wloop.626.633: 
    lw  t3,-712(s0)
    li  t4,2
    remw  t6,t3,t4
    li  t4,0
    beq  t6,t4,.2056
.2060: 
    lw  t4,-704(s0)
    li  t6,2
    remw  t5,t4,t6
    li  t6,0
    beq  t5,t6,.2056
.2055: 
    lw  t4,-728(s0)
    lw  t6,-720(s0)
    lui  t6,%hi(.G.SHIFT_TABLE)
    addi  t6,t6,%lo(.G.SHIFT_TABLE)
    lw  t3,-720(s0)
    slli  t3,t3,2
    add  t5,t6,t3
    lw  t3,0(t5)
    li  t5,1
    mulw  t6,t5,t3
    addw  t5,t4,t6
    sw  t5,-728(s0)
    j  .2056
.2050wn626: 
    j  .2084
.2056: 
    lw  t5,-712(s0)
    li  t6,2
    divw  t4,t5,t6
    sw  t4,-712(s0)
    lw  t4,-704(s0)
    li  t6,2
    divw  t5,t4,t6
    sw  t5,-704(s0)
    lw  t5,-720(s0)
    li  t6,1
    addw  t4,t5,t6
    sw  t4,-720(s0)
    j  .2048wc626
.2084: 
    lw  t6,-728(s0)
    sw  t6,-368(s0)
    lw  t6,-360(s0)
    sw  t6,-376(s0)
    j  .1924wc588
.2099: 
    lw  t5,-704(s0)
    li  t6,0
    ble  t5,t6,.2116
.2115: 
    lw  t6,-712(s0)
    li  t5,32767
    ble  t6,t5,.2121
.2120: 
    lw  t5,-712(s0)
    lw  t6,-704(s0)
    lui  t6,%hi(.G.SHIFT_TABLE)
    addi  t6,t6,%lo(.G.SHIFT_TABLE)
    lw  t4,-704(s0)
    slli  t4,t4,2
    add  t3,t6,t4
    lw  t4,0(t3)
    divw  t3,t5,t4
    sw  t3,-712(s0)
    lw  t3,-712(s0)
    li  t4,65536
    addw  t5,t3,t4
    lw  t4,-704(s0)
    li  t3,15
    subw  t6,t3,t4
    li  t3,1
    addw  t4,t6,t3
    lui  t4,%hi(.G.SHIFT_TABLE)
    addi  t4,t4,%lo(.G.SHIFT_TABLE)
    lw  t3,0(t4)
    subw  t4,t5,t3
    sw  t4,-728(s0)
    j  .2140
.2104: 
    li  t6,0
    sw  t6,-728(s0)
    j  .2109
.2109: 
    j  .2113
.2113: 
    lw  t6,-728(s0)
    sw  t6,-416(s0)
    j  .1685wc516
.2116: 
    lw  t5,-712(s0)
    sw  t5,-728(s0)
    j  .2149
.2121: 
    lw  t4,-712(s0)
    lw  t3,-704(s0)
    lui  t3,%hi(.G.SHIFT_TABLE)
    addi  t3,t3,%lo(.G.SHIFT_TABLE)
    lw  t5,-704(s0)
    slli  t5,t5,2
    add  t6,t3,t5
    lw  t5,0(t6)
    divw  t6,t4,t5
    sw  t6,-728(s0)
    j  .2140
.2140: 
    j  .2149
.2149: 
    j  .2113
.2166: 
    lw  t5,-704(s0)
    li  t6,0
    ble  t5,t6,.2183
.2182: 
    lw  t6,-712(s0)
    li  t5,32767
    ble  t6,t5,.2188
.2187: 
    lw  t5,-712(s0)
    lw  t6,-704(s0)
    lui  t6,%hi(.G.SHIFT_TABLE)
    addi  t6,t6,%lo(.G.SHIFT_TABLE)
    lw  t4,-704(s0)
    slli  t4,t4,2
    add  t3,t6,t4
    lw  t4,0(t3)
    divw  t3,t5,t4
    sw  t3,-712(s0)
    lw  t3,-712(s0)
    li  t4,65536
    addw  t5,t3,t4
    lw  t4,-704(s0)
    li  t3,15
    subw  t6,t3,t4
    li  t3,1
    addw  t4,t6,t3
    lui  t4,%hi(.G.SHIFT_TABLE)
    addi  t4,t4,%lo(.G.SHIFT_TABLE)
    lw  t3,0(t4)
    subw  t4,t5,t3
    sw  t4,-728(s0)
    j  .2207
.2171: 
    li  t6,0
    sw  t6,-728(s0)
    j  .2176
.2176: 
    j  .2180
.2180: 
    lw  t6,-728(s0)
    sw  t6,-512(s0)
    j  .1138wc349
.2183: 
    lw  t5,-712(s0)
    sw  t5,-728(s0)
    j  .2216
.2188: 
    lw  t4,-712(s0)
    lw  t3,-704(s0)
    lui  t3,%hi(.G.SHIFT_TABLE)
    addi  t3,t3,%lo(.G.SHIFT_TABLE)
    lw  t5,-704(s0)
    slli  t5,t5,2
    add  t6,t3,t5
    lw  t5,0(t6)
    divw  t6,t4,t5
    sw  t6,-728(s0)
    j  .2207
.2207: 
    j  .2216
.2216: 
    j  .2180
.2231wc689: 
    lw  t6,-696(s0)
    li  t5,16
    bge  t6,t5,.2233wn689
.2232wloop.689.1032: 
    li  t5,2
    sw  t5,-352(s0)
    lw  t5,-696(s0)
    sw  t5,-344(s0)
    li  t5,1
    sw  t5,-336(s0)
    j  .2245wc692
.2233wn689: 
    li  t5,0
    sw  t5,-696(s0)
    j  .3342wc1034
.2245wc692: 
    lw  t5,-344(s0)
    li  t6,0
    ble  t5,t6,.2247wn692
.2246wloop.692.1026: 
    li  t6,0
    sw  t6,-728(s0)
    li  t6,0
    sw  t6,-720(s0)
    lw  t6,-344(s0)
    sw  t6,-712(s0)
    li  t6,1
    sw  t6,-704(s0)
    j  .2257wc697
.2247wn692: 
    lw  t6,-336(s0)
    sw  t6,-728(s0)
    lw  t6,-728(s0)
    mv  a0,t6
    call  putint
    mv  t6,a0
    li  a0,10
    call  putch
    mv  t6,a0
    lw  t6,-696(s0)
    li  t5,1
    addw  t4,t6,t5
    sw  t4,-696(s0)
    j  .2231wc689
.2257wc697: 
    lw  t4,-720(s0)
    li  t5,16
    bge  t4,t5,.2259wn697
.2258wloop.697.704: 
    lw  t5,-712(s0)
    li  t4,2
    remw  t6,t5,t4
    li  t4,0
    beq  t6,t4,.2265
.2269: 
    lw  t6,-704(s0)
    li  t4,2
    remw  t3,t6,t4
    li  t4,0
    beq  t3,t4,.2265
.2264: 
    lw  t6,-728(s0)
    lw  t4,-720(s0)
    lui  t4,%hi(.G.SHIFT_TABLE)
    addi  t4,t4,%lo(.G.SHIFT_TABLE)
    lw  t5,-720(s0)
    slli  t5,t5,2
    add  t3,t4,t5
    lw  t5,0(t3)
    li  t3,1
    mulw  t4,t3,t5
    addw  t3,t6,t4
    sw  t3,-728(s0)
    j  .2265
.2259wn697: 
    lw  t4,-728(s0)
    li  t6,0
    beq  t4,t6,.2294
.2293: 
    lw  t4,-336(s0)
    sw  t4,-328(s0)
    lw  t4,-352(s0)
    sw  t4,-320(s0)
    li  t4,0
    sw  t4,-312(s0)
    j  .2306wc708
.2265: 
    lw  t3,-712(s0)
    li  t4,2
    divw  t6,t3,t4
    sw  t6,-712(s0)
    lw  t6,-704(s0)
    li  t4,2
    divw  t3,t6,t4
    sw  t3,-704(s0)
    lw  t3,-720(s0)
    li  t4,1
    addw  t6,t3,t4
    sw  t6,-720(s0)
    j  .2257wc697
.2294: 
    lw  t4,-352(s0)
    sw  t4,-256(s0)
    lw  t4,-352(s0)
    sw  t4,-248(s0)
    li  t4,0
    sw  t4,-240(s0)
    j  .2792wc859
.2306wc708: 
    lw  t4,-320(s0)
    li  t3,0
    beq  t4,t3,.2308wn708
.2307wloop.708.852: 
    li  t3,0
    sw  t3,-728(s0)
    li  t3,0
    sw  t3,-720(s0)
    lw  t3,-320(s0)
    sw  t3,-712(s0)
    li  t3,1
    sw  t3,-704(s0)
    j  .2318wc713
.2308wn708: 
    lw  t3,-312(s0)
    sw  t3,-728(s0)
    lw  t3,-728(s0)
    sw  t3,-336(s0)
    j  .2294
.2318wc713: 
    lw  t3,-720(s0)
    li  t4,16
    bge  t3,t4,.2320wn713
.2319wloop.713.720: 
    lw  t4,-712(s0)
    li  t3,2
    remw  t6,t4,t3
    li  t3,0
    beq  t6,t3,.2326
.2330: 
    lw  t6,-704(s0)
    li  t3,2
    remw  t5,t6,t3
    li  t3,0
    beq  t5,t3,.2326
.2325: 
    lw  t6,-728(s0)
    lw  t3,-720(s0)
    lui  t3,%hi(.G.SHIFT_TABLE)
    addi  t3,t3,%lo(.G.SHIFT_TABLE)
    lw  t4,-720(s0)
    slli  t4,t4,2
    add  t5,t3,t4
    lw  t4,0(t5)
    li  t5,1
    mulw  t3,t5,t4
    addw  t5,t6,t3
    sw  t5,-728(s0)
    j  .2326
.2320wn713: 
    lw  t3,-728(s0)
    li  t6,0
    beq  t3,t6,.2355
.2354: 
    lw  t3,-312(s0)
    sw  t3,-304(s0)
    lw  t3,-328(s0)
    sw  t3,-296(s0)
    j  .2366wc724
.2326: 
    lw  t5,-712(s0)
    li  t3,2
    divw  t6,t5,t3
    sw  t6,-712(s0)
    lw  t6,-704(s0)
    li  t3,2
    divw  t5,t6,t3
    sw  t5,-704(s0)
    lw  t5,-720(s0)
    li  t3,1
    addw  t6,t5,t3
    sw  t6,-720(s0)
    j  .2318wc713
.2355: 
    lw  t3,-328(s0)
    sw  t3,-280(s0)
    lw  t3,-328(s0)
    sw  t3,-272(s0)
    j  .2545wc780
.2366wc724: 
    lw  t3,-296(s0)
    li  t5,0
    beq  t3,t5,.2368wn724
.2367wloop.724.773: 
    li  t5,0
    sw  t5,-728(s0)
    li  t5,0
    sw  t5,-720(s0)
    lw  t5,-304(s0)
    sw  t5,-712(s0)
    lw  t5,-296(s0)
    sw  t5,-704(s0)
    j  .2379wc729
.2368wn724: 
    lw  t5,-304(s0)
    sw  t5,-728(s0)
    lw  t5,-728(s0)
    sw  t5,-312(s0)
    j  .2355
.2379wc729: 
    lw  t5,-720(s0)
    li  t3,16
    bge  t5,t3,.2381wn729
.2380wloop.729.740: 
    lw  t3,-712(s0)
    li  t5,2
    remw  t6,t3,t5
    li  t5,0
    beq  t6,t5,.2387
.2386: 
    lw  t5,-704(s0)
    li  t6,2
    remw  t3,t5,t6
    li  t6,0
    bne  t3,t6,.2393
.2392: 
    lw  t3,-728(s0)
    lw  t5,-720(s0)
    lui  t5,%hi(.G.SHIFT_TABLE)
    addi  t5,t5,%lo(.G.SHIFT_TABLE)
    lw  t6,-720(s0)
    slli  t6,t6,2
    add  t4,t5,t6
    lw  t6,0(t4)
    li  t4,1
    mulw  t5,t4,t6
    addw  t4,t3,t5
    sw  t4,-728(s0)
    j  .2393
.2381wn729: 
    lw  t5,-728(s0)
    sw  t5,-288(s0)
    li  t5,0
    sw  t5,-728(s0)
    li  t5,0
    sw  t5,-720(s0)
    lw  t5,-304(s0)
    sw  t5,-712(s0)
    lw  t5,-296(s0)
    sw  t5,-704(s0)
    j  .2441wc746
.2387: 
    lw  t6,-704(s0)
    li  t3,2
    remw  t5,t6,t3
    li  t3,0
    beq  t5,t3,.2409
.2408: 
    lw  t3,-728(s0)
    lw  t5,-720(s0)
    lui  t5,%hi(.G.SHIFT_TABLE)
    addi  t5,t5,%lo(.G.SHIFT_TABLE)
    lw  t4,-720(s0)
    slli  t4,t4,2
    add  t6,t5,t4
    lw  t4,0(t6)
    li  t6,1
    mulw  t5,t6,t4
    addw  t6,t3,t5
    sw  t6,-728(s0)
    j  .2409
.2393: 
    j  .2406
.2406: 
    lw  t4,-712(s0)
    li  t5,2
    divw  t3,t4,t5
    sw  t3,-712(s0)
    lw  t3,-704(s0)
    li  t5,2
    divw  t4,t3,t5
    sw  t4,-704(s0)
    lw  t4,-720(s0)
    li  t5,1
    addw  t3,t4,t5
    sw  t3,-720(s0)
    j  .2379wc729
.2409: 
    j  .2406
.2441wc746: 
    lw  t6,-720(s0)
    li  t5,16
    bge  t6,t5,.2443wn746
.2442wloop.746.753: 
    lw  t5,-712(s0)
    li  t6,2
    remw  t3,t5,t6
    li  t6,0
    beq  t3,t6,.2449
.2453: 
    lw  t6,-704(s0)
    li  t3,2
    remw  t4,t6,t3
    li  t3,0
    beq  t4,t3,.2449
.2448: 
    lw  t6,-728(s0)
    lw  t3,-720(s0)
    lui  t3,%hi(.G.SHIFT_TABLE)
    addi  t3,t3,%lo(.G.SHIFT_TABLE)
    lw  t5,-720(s0)
    slli  t5,t5,2
    add  t4,t3,t5
    lw  t5,0(t4)
    li  t4,1
    mulw  t3,t4,t5
    addw  t4,t6,t3
    sw  t4,-728(s0)
    j  .2449
.2443wn746: 
    lw  t6,-728(s0)
    sw  t6,-296(s0)
    j  .2480
.2449: 
    lw  t4,-712(s0)
    li  t3,2
    divw  t6,t4,t3
    sw  t6,-712(s0)
    lw  t6,-704(s0)
    li  t3,2
    divw  t4,t6,t3
    sw  t4,-704(s0)
    lw  t4,-720(s0)
    li  t3,1
    addw  t6,t4,t3
    sw  t6,-720(s0)
    j  .2441wc746
.2480: 
    li  t3,0
    sw  t3,-728(s0)
    li  t3,0
    sw  t3,-720(s0)
    lw  t3,-296(s0)
    lui  t4,%hi(.G.SHIFT_TABLE)
    addi  t4,t4,%lo(.G.SHIFT_TABLE)
    lw  t6,4(t4)
    mulw  t4,t3,t6
    sw  t4,-712(s0)
    li  t4,65535
    sw  t4,-704(s0)
    j  .2490wc762
.2490wc762: 
    lw  t4,-720(s0)
    li  t6,16
    bge  t4,t6,.2492wn762
.2491wloop.762.769: 
    lw  t6,-712(s0)
    li  t4,2
    remw  t3,t6,t4
    li  t4,0
    beq  t3,t4,.2498
.2502: 
    lw  t4,-704(s0)
    li  t3,2
    remw  t5,t4,t3
    li  t3,0
    beq  t5,t3,.2498
.2497: 
    lw  t4,-728(s0)
    lw  t3,-720(s0)
    lui  t3,%hi(.G.SHIFT_TABLE)
    addi  t3,t3,%lo(.G.SHIFT_TABLE)
    lw  t6,-720(s0)
    slli  t6,t6,2
    add  t5,t3,t6
    lw  t6,0(t5)
    li  t5,1
    mulw  t3,t5,t6
    addw  t5,t4,t3
    sw  t5,-728(s0)
    j  .2498
.2492wn762: 
    j  .2526
.2498: 
    lw  t5,-712(s0)
    li  t3,2
    divw  t4,t5,t3
    sw  t4,-712(s0)
    lw  t4,-704(s0)
    li  t3,2
    divw  t5,t4,t3
    sw  t5,-704(s0)
    lw  t5,-720(s0)
    li  t3,1
    addw  t4,t5,t3
    sw  t4,-720(s0)
    j  .2490wc762
.2526: 
    lw  t3,-728(s0)
    sw  t3,-296(s0)
    lw  t3,-288(s0)
    sw  t3,-304(s0)
    j  .2366wc724
.2545wc780: 
    lw  t3,-272(s0)
    li  t5,0
    beq  t3,t5,.2547wn780
.2546wloop.780.829: 
    li  t5,0
    sw  t5,-728(s0)
    li  t5,0
    sw  t5,-720(s0)
    lw  t5,-280(s0)
    sw  t5,-712(s0)
    lw  t5,-272(s0)
    sw  t5,-704(s0)
    j  .2558wc785
.2547wn780: 
    lw  t5,-280(s0)
    sw  t5,-728(s0)
    lw  t5,-728(s0)
    sw  t5,-328(s0)
    lw  t5,-320(s0)
    sw  t5,-712(s0)
    li  t5,1
    sw  t5,-704(s0)
    lw  t5,-704(s0)
    li  t3,15
    blt  t5,t3,.2720
.2719: 
    lw  t5,-712(s0)
    li  t3,0
    bge  t5,t3,.2725
.2724: 
    li  t5,65535
    sw  t5,-728(s0)
    j  .2730
.2558wc785: 
    lw  t3,-720(s0)
    li  t5,16
    bge  t3,t5,.2560wn785
.2559wloop.785.796: 
    lw  t5,-712(s0)
    li  t3,2
    remw  t4,t5,t3
    li  t3,0
    beq  t4,t3,.2566
.2565: 
    lw  t3,-704(s0)
    li  t4,2
    remw  t5,t3,t4
    li  t4,0
    bne  t5,t4,.2572
.2571: 
    lw  t5,-728(s0)
    lw  t3,-720(s0)
    lui  t3,%hi(.G.SHIFT_TABLE)
    addi  t3,t3,%lo(.G.SHIFT_TABLE)
    lw  t4,-720(s0)
    slli  t4,t4,2
    add  t6,t3,t4
    lw  t4,0(t6)
    li  t6,1
    mulw  t3,t6,t4
    addw  t6,t5,t3
    sw  t6,-728(s0)
    j  .2572
.2560wn785: 
    lw  t3,-728(s0)
    sw  t3,-264(s0)
    li  t3,0
    sw  t3,-728(s0)
    li  t3,0
    sw  t3,-720(s0)
    lw  t3,-280(s0)
    sw  t3,-712(s0)
    lw  t3,-272(s0)
    sw  t3,-704(s0)
    j  .2620wc802
.2566: 
    lw  t4,-704(s0)
    li  t5,2
    remw  t3,t4,t5
    li  t5,0
    beq  t3,t5,.2588
.2587: 
    lw  t5,-728(s0)
    lw  t3,-720(s0)
    lui  t3,%hi(.G.SHIFT_TABLE)
    addi  t3,t3,%lo(.G.SHIFT_TABLE)
    lw  t6,-720(s0)
    slli  t6,t6,2
    add  t4,t3,t6
    lw  t6,0(t4)
    li  t4,1
    mulw  t3,t4,t6
    addw  t4,t5,t3
    sw  t4,-728(s0)
    j  .2588
.2572: 
    j  .2585
.2585: 
    lw  t6,-712(s0)
    li  t3,2
    divw  t5,t6,t3
    sw  t5,-712(s0)
    lw  t5,-704(s0)
    li  t3,2
    divw  t6,t5,t3
    sw  t6,-704(s0)
    lw  t6,-720(s0)
    li  t3,1
    addw  t5,t6,t3
    sw  t5,-720(s0)
    j  .2558wc785
.2588: 
    j  .2585
.2620wc802: 
    lw  t4,-720(s0)
    li  t3,16
    bge  t4,t3,.2622wn802
.2621wloop.802.809: 
    lw  t3,-712(s0)
    li  t4,2
    remw  t5,t3,t4
    li  t4,0
    beq  t5,t4,.2628
.2632: 
    lw  t4,-704(s0)
    li  t5,2
    remw  t6,t4,t5
    li  t5,0
    beq  t6,t5,.2628
.2627: 
    lw  t4,-728(s0)
    lw  t5,-720(s0)
    lui  t5,%hi(.G.SHIFT_TABLE)
    addi  t5,t5,%lo(.G.SHIFT_TABLE)
    lw  t3,-720(s0)
    slli  t3,t3,2
    add  t6,t5,t3
    lw  t3,0(t6)
    li  t6,1
    mulw  t5,t6,t3
    addw  t6,t4,t5
    sw  t6,-728(s0)
    j  .2628
.2622wn802: 
    lw  t4,-728(s0)
    sw  t4,-272(s0)
    j  .2659
.2628: 
    lw  t6,-712(s0)
    li  t5,2
    divw  t4,t6,t5
    sw  t4,-712(s0)
    lw  t4,-704(s0)
    li  t5,2
    divw  t6,t4,t5
    sw  t6,-704(s0)
    lw  t6,-720(s0)
    li  t5,1
    addw  t4,t6,t5
    sw  t4,-720(s0)
    j  .2620wc802
.2659: 
    li  t5,0
    sw  t5,-728(s0)
    li  t5,0
    sw  t5,-720(s0)
    lw  t5,-272(s0)
    lui  t6,%hi(.G.SHIFT_TABLE)
    addi  t6,t6,%lo(.G.SHIFT_TABLE)
    lw  t4,4(t6)
    mulw  t6,t5,t4
    sw  t6,-712(s0)
    li  t6,65535
    sw  t6,-704(s0)
    j  .2669wc818
.2669wc818: 
    lw  t6,-720(s0)
    li  t4,16
    bge  t6,t4,.2671wn818
.2670wloop.818.825: 
    lw  t4,-712(s0)
    li  t6,2
    remw  t5,t4,t6
    li  t6,0
    beq  t5,t6,.2677
.2681: 
    lw  t6,-704(s0)
    li  t5,2
    remw  t3,t6,t5
    li  t5,0
    beq  t3,t5,.2677
.2676: 
    lw  t6,-728(s0)
    lw  t5,-720(s0)
    lui  t5,%hi(.G.SHIFT_TABLE)
    addi  t5,t5,%lo(.G.SHIFT_TABLE)
    lw  t4,-720(s0)
    slli  t4,t4,2
    add  t3,t5,t4
    lw  t4,0(t3)
    li  t3,1
    mulw  t5,t3,t4
    addw  t3,t6,t5
    sw  t3,-728(s0)
    j  .2677
.2671wn818: 
    j  .2705
.2677: 
    lw  t3,-712(s0)
    li  t5,2
    divw  t6,t3,t5
    sw  t6,-712(s0)
    lw  t6,-704(s0)
    li  t5,2
    divw  t3,t6,t5
    sw  t3,-704(s0)
    lw  t3,-720(s0)
    li  t5,1
    addw  t6,t3,t5
    sw  t6,-720(s0)
    j  .2669wc818
.2705: 
    lw  t5,-728(s0)
    sw  t5,-272(s0)
    lw  t5,-264(s0)
    sw  t5,-280(s0)
    j  .2545wc780
.2720: 
    lw  t3,-704(s0)
    li  t5,0
    ble  t3,t5,.2737
.2736: 
    lw  t5,-712(s0)
    li  t3,32767
    ble  t5,t3,.2742
.2741: 
    lw  t3,-712(s0)
    lw  t5,-704(s0)
    lui  t5,%hi(.G.SHIFT_TABLE)
    addi  t5,t5,%lo(.G.SHIFT_TABLE)
    lw  t6,-704(s0)
    slli  t6,t6,2
    add  t4,t5,t6
    lw  t6,0(t4)
    divw  t4,t3,t6
    sw  t4,-712(s0)
    lw  t4,-712(s0)
    li  t6,65536
    addw  t3,t4,t6
    lw  t6,-704(s0)
    li  t4,15
    subw  t5,t4,t6
    li  t4,1
    addw  t6,t5,t4
    lui  t6,%hi(.G.SHIFT_TABLE)
    addi  t6,t6,%lo(.G.SHIFT_TABLE)
    lw  t4,0(t6)
    subw  t6,t3,t4
    sw  t6,-728(s0)
    j  .2761
.2725: 
    li  t5,0
    sw  t5,-728(s0)
    j  .2730
.2730: 
    j  .2734
.2734: 
    lw  t5,-728(s0)
    sw  t5,-320(s0)
    j  .2306wc708
.2737: 
    lw  t3,-712(s0)
    sw  t3,-728(s0)
    j  .2770
.2742: 
    lw  t6,-712(s0)
    lw  t4,-704(s0)
    lui  t4,%hi(.G.SHIFT_TABLE)
    addi  t4,t4,%lo(.G.SHIFT_TABLE)
    lw  t3,-704(s0)
    slli  t3,t3,2
    add  t5,t4,t3
    lw  t3,0(t5)
    divw  t5,t6,t3
    sw  t5,-728(s0)
    j  .2761
.2761: 
    j  .2770
.2770: 
    j  .2734
.2792wc859: 
    lw  t5,-248(s0)
    li  t3,0
    beq  t5,t3,.2794wn859
.2793wloop.859.1003: 
    li  t3,0
    sw  t3,-728(s0)
    li  t3,0
    sw  t3,-720(s0)
    lw  t3,-248(s0)
    sw  t3,-712(s0)
    li  t3,1
    sw  t3,-704(s0)
    j  .2804wc864
.2794wn859: 
    lw  t3,-240(s0)
    sw  t3,-728(s0)
    lw  t3,-728(s0)
    sw  t3,-352(s0)
    lw  t3,-344(s0)
    sw  t3,-712(s0)
    li  t3,1
    sw  t3,-704(s0)
    lw  t3,-704(s0)
    li  t5,15
    blt  t3,t5,.3273
.3272: 
    lw  t4,-712(s0)
    li  t5,0
    bge  t4,t5,.3278
.3277: 
    li  t4,65535
    sw  t4,-728(s0)
    j  .3283
.2804wc864: 
    lw  t5,-720(s0)
    li  t3,16
    bge  t5,t3,.2806wn864
.2805wloop.864.871: 
    lw  t3,-712(s0)
    li  t5,2
    remw  t6,t3,t5
    li  t5,0
    beq  t6,t5,.2812
.2816: 
    lw  t6,-704(s0)
    li  t5,2
    remw  t4,t6,t5
    li  t5,0
    beq  t4,t5,.2812
.2811: 
    lw  t6,-728(s0)
    lw  t5,-720(s0)
    lui  t5,%hi(.G.SHIFT_TABLE)
    addi  t5,t5,%lo(.G.SHIFT_TABLE)
    lw  t3,-720(s0)
    slli  t3,t3,2
    add  t4,t5,t3
    lw  t3,0(t4)
    li  t4,1
    mulw  t5,t4,t3
    addw  t4,t6,t5
    sw  t4,-728(s0)
    j  .2812
.2806wn864: 
    lw  t5,-728(s0)
    li  t6,0
    beq  t5,t6,.2841
.2840: 
    lw  t5,-240(s0)
    sw  t5,-232(s0)
    lw  t5,-256(s0)
    sw  t5,-224(s0)
    j  .2852wc875
.2812: 
    lw  t4,-712(s0)
    li  t5,2
    divw  t6,t4,t5
    sw  t6,-712(s0)
    lw  t6,-704(s0)
    li  t5,2
    divw  t4,t6,t5
    sw  t4,-704(s0)
    lw  t4,-720(s0)
    li  t5,1
    addw  t6,t4,t5
    sw  t6,-720(s0)
    j  .2804wc864
.2841: 
    lw  t5,-256(s0)
    sw  t5,-208(s0)
    lw  t5,-256(s0)
    sw  t5,-200(s0)
    j  .3031wc931
.2852wc875: 
    lw  t5,-224(s0)
    li  t4,0
    beq  t5,t4,.2854wn875
.2853wloop.875.924: 
    li  t4,0
    sw  t4,-728(s0)
    li  t4,0
    sw  t4,-720(s0)
    lw  t4,-232(s0)
    sw  t4,-712(s0)
    lw  t4,-224(s0)
    sw  t4,-704(s0)
    j  .2865wc880
.2854wn875: 
    lw  t4,-232(s0)
    sw  t4,-728(s0)
    lw  t4,-728(s0)
    sw  t4,-240(s0)
    j  .2841
.2865wc880: 
    lw  t4,-720(s0)
    li  t5,16
    bge  t4,t5,.2867wn880
.2866wloop.880.891: 
    lw  t5,-712(s0)
    li  t4,2
    remw  t6,t5,t4
    li  t4,0
    beq  t6,t4,.2873
.2872: 
    lw  t4,-704(s0)
    li  t6,2
    remw  t5,t4,t6
    li  t6,0
    bne  t5,t6,.2879
.2878: 
    lw  t5,-728(s0)
    lw  t4,-720(s0)
    lui  t4,%hi(.G.SHIFT_TABLE)
    addi  t4,t4,%lo(.G.SHIFT_TABLE)
    lw  t6,-720(s0)
    slli  t6,t6,2
    add  t3,t4,t6
    lw  t6,0(t3)
    li  t3,1
    mulw  t4,t3,t6
    addw  t3,t5,t4
    sw  t3,-728(s0)
    j  .2879
.2867wn880: 
    lw  t4,-728(s0)
    sw  t4,-216(s0)
    li  t4,0
    sw  t4,-728(s0)
    li  t4,0
    sw  t4,-720(s0)
    lw  t4,-232(s0)
    sw  t4,-712(s0)
    lw  t4,-224(s0)
    sw  t4,-704(s0)
    j  .2927wc897
.2873: 
    lw  t6,-704(s0)
    li  t5,2
    remw  t4,t6,t5
    li  t5,0
    beq  t4,t5,.2895
.2894: 
    lw  t5,-728(s0)
    lw  t4,-720(s0)
    lui  t4,%hi(.G.SHIFT_TABLE)
    addi  t4,t4,%lo(.G.SHIFT_TABLE)
    lw  t3,-720(s0)
    slli  t3,t3,2
    add  t6,t4,t3
    lw  t3,0(t6)
    li  t6,1
    mulw  t4,t6,t3
    addw  t6,t5,t4
    sw  t6,-728(s0)
    j  .2895
.2879: 
    j  .2892
.2892: 
    lw  t3,-712(s0)
    li  t4,2
    divw  t5,t3,t4
    sw  t5,-712(s0)
    lw  t5,-704(s0)
    li  t4,2
    divw  t3,t5,t4
    sw  t3,-704(s0)
    lw  t3,-720(s0)
    li  t4,1
    addw  t5,t3,t4
    sw  t5,-720(s0)
    j  .2865wc880
.2895: 
    j  .2892
.2927wc897: 
    lw  t6,-720(s0)
    li  t4,16
    bge  t6,t4,.2929wn897
.2928wloop.897.904: 
    lw  t4,-712(s0)
    li  t6,2
    remw  t5,t4,t6
    li  t6,0
    beq  t5,t6,.2935
.2939: 
    lw  t6,-704(s0)
    li  t5,2
    remw  t3,t6,t5
    li  t5,0
    beq  t3,t5,.2935
.2934: 
    lw  t6,-728(s0)
    lw  t5,-720(s0)
    lui  t5,%hi(.G.SHIFT_TABLE)
    addi  t5,t5,%lo(.G.SHIFT_TABLE)
    lw  t4,-720(s0)
    slli  t4,t4,2
    add  t3,t5,t4
    lw  t4,0(t3)
    li  t3,1
    mulw  t5,t3,t4
    addw  t3,t6,t5
    sw  t3,-728(s0)
    j  .2935
.2929wn897: 
    lw  t6,-728(s0)
    sw  t6,-224(s0)
    j  .2966
.2935: 
    lw  t3,-712(s0)
    li  t5,2
    divw  t6,t3,t5
    sw  t6,-712(s0)
    lw  t6,-704(s0)
    li  t5,2
    divw  t3,t6,t5
    sw  t3,-704(s0)
    lw  t3,-720(s0)
    li  t5,1
    addw  t6,t3,t5
    sw  t6,-720(s0)
    j  .2927wc897
.2966: 
    li  t5,0
    sw  t5,-728(s0)
    li  t5,0
    sw  t5,-720(s0)
    lw  t5,-224(s0)
    lui  t3,%hi(.G.SHIFT_TABLE)
    addi  t3,t3,%lo(.G.SHIFT_TABLE)
    lw  t6,4(t3)
    mulw  t3,t5,t6
    sw  t3,-712(s0)
    li  t3,65535
    sw  t3,-704(s0)
    j  .2976wc913
.2976wc913: 
    lw  t3,-720(s0)
    li  t6,16
    bge  t3,t6,.2978wn913
.2977wloop.913.920: 
    lw  t6,-712(s0)
    li  t3,2
    remw  t5,t6,t3
    li  t3,0
    beq  t5,t3,.2984
.2988: 
    lw  t3,-704(s0)
    li  t5,2
    remw  t4,t3,t5
    li  t5,0
    beq  t4,t5,.2984
.2983: 
    lw  t3,-728(s0)
    lw  t5,-720(s0)
    lui  t5,%hi(.G.SHIFT_TABLE)
    addi  t5,t5,%lo(.G.SHIFT_TABLE)
    lw  t6,-720(s0)
    slli  t6,t6,2
    add  t4,t5,t6
    lw  t6,0(t4)
    li  t4,1
    mulw  t5,t4,t6
    addw  t4,t3,t5
    sw  t4,-728(s0)
    j  .2984
.2978wn913: 
    j  .3012
.2984: 
    lw  t4,-712(s0)
    li  t5,2
    divw  t3,t4,t5
    sw  t3,-712(s0)
    lw  t3,-704(s0)
    li  t5,2
    divw  t4,t3,t5
    sw  t4,-704(s0)
    lw  t4,-720(s0)
    li  t5,1
    addw  t3,t4,t5
    sw  t3,-720(s0)
    j  .2976wc913
.3012: 
    lw  t5,-728(s0)
    sw  t5,-224(s0)
    lw  t5,-216(s0)
    sw  t5,-232(s0)
    j  .2852wc875
.3031wc931: 
    lw  t5,-200(s0)
    li  t4,0
    beq  t5,t4,.3033wn931
.3032wloop.931.980: 
    li  t4,0
    sw  t4,-728(s0)
    li  t4,0
    sw  t4,-720(s0)
    lw  t4,-208(s0)
    sw  t4,-712(s0)
    lw  t4,-200(s0)
    sw  t4,-704(s0)
    j  .3044wc936
.3033wn931: 
    lw  t4,-208(s0)
    sw  t4,-728(s0)
    lw  t4,-728(s0)
    sw  t4,-256(s0)
    lw  t4,-248(s0)
    sw  t4,-712(s0)
    li  t4,1
    sw  t4,-704(s0)
    lw  t4,-704(s0)
    li  t5,15
    blt  t4,t5,.3206
.3205: 
    lw  t4,-712(s0)
    li  t5,0
    bge  t4,t5,.3211
.3210: 
    li  t4,65535
    sw  t4,-728(s0)
    j  .3216
.3044wc936: 
    lw  t5,-720(s0)
    li  t4,16
    bge  t5,t4,.3046wn936
.3045wloop.936.947: 
    lw  t4,-712(s0)
    li  t5,2
    remw  t3,t4,t5
    li  t5,0
    beq  t3,t5,.3052
.3051: 
    lw  t5,-704(s0)
    li  t3,2
    remw  t4,t5,t3
    li  t3,0
    bne  t4,t3,.3058
.3057: 
    lw  t4,-728(s0)
    lw  t5,-720(s0)
    lui  t5,%hi(.G.SHIFT_TABLE)
    addi  t5,t5,%lo(.G.SHIFT_TABLE)
    lw  t3,-720(s0)
    slli  t3,t3,2
    add  t6,t5,t3
    lw  t3,0(t6)
    li  t6,1
    mulw  t5,t6,t3
    addw  t6,t4,t5
    sw  t6,-728(s0)
    j  .3058
.3046wn936: 
    lw  t5,-728(s0)
    sw  t5,-192(s0)
    li  t5,0
    sw  t5,-728(s0)
    li  t5,0
    sw  t5,-720(s0)
    lw  t5,-208(s0)
    sw  t5,-712(s0)
    lw  t5,-200(s0)
    sw  t5,-704(s0)
    j  .3106wc953
.3052: 
    lw  t3,-704(s0)
    li  t4,2
    remw  t5,t3,t4
    li  t4,0
    beq  t5,t4,.3074
.3073: 
    lw  t4,-728(s0)
    lw  t5,-720(s0)
    lui  t5,%hi(.G.SHIFT_TABLE)
    addi  t5,t5,%lo(.G.SHIFT_TABLE)
    lw  t6,-720(s0)
    slli  t6,t6,2
    add  t3,t5,t6
    lw  t6,0(t3)
    li  t3,1
    mulw  t5,t3,t6
    addw  t3,t4,t5
    sw  t3,-728(s0)
    j  .3074
.3058: 
    j  .3071
.3071: 
    lw  t6,-712(s0)
    li  t5,2
    divw  t4,t6,t5
    sw  t4,-712(s0)
    lw  t4,-704(s0)
    li  t5,2
    divw  t6,t4,t5
    sw  t6,-704(s0)
    lw  t6,-720(s0)
    li  t5,1
    addw  t4,t6,t5
    sw  t4,-720(s0)
    j  .3044wc936
.3074: 
    j  .3071
.3106wc953: 
    lw  t3,-720(s0)
    li  t5,16
    bge  t3,t5,.3108wn953
.3107wloop.953.960: 
    lw  t5,-712(s0)
    li  t3,2
    remw  t4,t5,t3
    li  t3,0
    beq  t4,t3,.3114
.3118: 
    lw  t3,-704(s0)
    li  t4,2
    remw  t6,t3,t4
    li  t4,0
    beq  t6,t4,.3114
.3113: 
    lw  t3,-728(s0)
    lw  t4,-720(s0)
    lui  t4,%hi(.G.SHIFT_TABLE)
    addi  t4,t4,%lo(.G.SHIFT_TABLE)
    lw  t5,-720(s0)
    slli  t5,t5,2
    add  t6,t4,t5
    lw  t5,0(t6)
    li  t6,1
    mulw  t4,t6,t5
    addw  t6,t3,t4
    sw  t6,-728(s0)
    j  .3114
.3108wn953: 
    lw  t3,-728(s0)
    sw  t3,-200(s0)
    j  .3145
.3114: 
    lw  t6,-712(s0)
    li  t4,2
    divw  t3,t6,t4
    sw  t3,-712(s0)
    lw  t3,-704(s0)
    li  t4,2
    divw  t6,t3,t4
    sw  t6,-704(s0)
    lw  t6,-720(s0)
    li  t4,1
    addw  t3,t6,t4
    sw  t3,-720(s0)
    j  .3106wc953
.3145: 
    li  t4,0
    sw  t4,-728(s0)
    li  t4,0
    sw  t4,-720(s0)
    lw  t4,-200(s0)
    lui  t6,%hi(.G.SHIFT_TABLE)
    addi  t6,t6,%lo(.G.SHIFT_TABLE)
    lw  t3,4(t6)
    mulw  t6,t4,t3
    sw  t6,-712(s0)
    li  t6,65535
    sw  t6,-704(s0)
    j  .3155wc969
.3155wc969: 
    lw  t6,-720(s0)
    li  t3,16
    bge  t6,t3,.3157wn969
.3156wloop.969.976: 
    lw  t3,-712(s0)
    li  t6,2
    remw  t4,t3,t6
    li  t6,0
    beq  t4,t6,.3163
.3167: 
    lw  t6,-704(s0)
    li  t4,2
    remw  t5,t6,t4
    li  t4,0
    beq  t5,t4,.3163
.3162: 
    lw  t6,-728(s0)
    lw  t4,-720(s0)
    lui  t4,%hi(.G.SHIFT_TABLE)
    addi  t4,t4,%lo(.G.SHIFT_TABLE)
    lw  t3,-720(s0)
    slli  t3,t3,2
    add  t5,t4,t3
    lw  t3,0(t5)
    li  t5,1
    mulw  t4,t5,t3
    addw  t5,t6,t4
    sw  t5,-728(s0)
    j  .3163
.3157wn969: 
    j  .3191
.3163: 
    lw  t5,-712(s0)
    li  t4,2
    divw  t6,t5,t4
    sw  t6,-712(s0)
    lw  t6,-704(s0)
    li  t4,2
    divw  t5,t6,t4
    sw  t5,-704(s0)
    lw  t5,-720(s0)
    li  t4,1
    addw  t6,t5,t4
    sw  t6,-720(s0)
    j  .3155wc969
.3191: 
    lw  t4,-728(s0)
    sw  t4,-200(s0)
    lw  t4,-192(s0)
    sw  t4,-208(s0)
    j  .3031wc931
.3206: 
    lw  t5,-704(s0)
    li  t4,0
    ble  t5,t4,.3223
.3222: 
    lw  t4,-712(s0)
    li  t5,32767
    ble  t4,t5,.3228
.3227: 
    lw  t5,-712(s0)
    lw  t4,-704(s0)
    lui  t4,%hi(.G.SHIFT_TABLE)
    addi  t4,t4,%lo(.G.SHIFT_TABLE)
    lw  t6,-704(s0)
    slli  t6,t6,2
    add  t3,t4,t6
    lw  t6,0(t3)
    divw  t3,t5,t6
    sw  t3,-712(s0)
    lw  t3,-712(s0)
    li  t6,65536
    addw  t5,t3,t6
    lw  t6,-704(s0)
    li  t3,15
    subw  t4,t3,t6
    li  t3,1
    addw  t6,t4,t3
    lui  t6,%hi(.G.SHIFT_TABLE)
    addi  t6,t6,%lo(.G.SHIFT_TABLE)
    lw  t3,0(t6)
    subw  t6,t5,t3
    sw  t6,-728(s0)
    j  .3247
.3211: 
    li  t4,0
    sw  t4,-728(s0)
    j  .3216
.3216: 
    j  .3220
.3220: 
    lw  t4,-728(s0)
    sw  t4,-248(s0)
    j  .2792wc859
.3223: 
    lw  t5,-712(s0)
    sw  t5,-728(s0)
    j  .3256
.3228: 
    lw  t6,-712(s0)
    lw  t3,-704(s0)
    lui  t3,%hi(.G.SHIFT_TABLE)
    addi  t3,t3,%lo(.G.SHIFT_TABLE)
    lw  t5,-704(s0)
    slli  t5,t5,2
    add  t4,t3,t5
    lw  t5,0(t4)
    divw  t4,t6,t5
    sw  t4,-728(s0)
    j  .3247
.3247: 
    j  .3256
.3256: 
    j  .3220
.3273: 
    lw  t5,-704(s0)
    li  t4,0
    ble  t5,t4,.3290
.3289: 
    lw  t4,-712(s0)
    li  t5,32767
    ble  t4,t5,.3295
.3294: 
    lw  t5,-712(s0)
    lw  t4,-704(s0)
    lui  t4,%hi(.G.SHIFT_TABLE)
    addi  t4,t4,%lo(.G.SHIFT_TABLE)
    lw  t6,-704(s0)
    slli  t6,t6,2
    add  t3,t4,t6
    lw  t6,0(t3)
    divw  t3,t5,t6
    sw  t3,-712(s0)
    lw  t3,-712(s0)
    li  t6,65536
    addw  t5,t3,t6
    lw  t6,-704(s0)
    li  t3,15
    subw  t4,t3,t6
    li  t3,1
    addw  t6,t4,t3
    lui  t6,%hi(.G.SHIFT_TABLE)
    addi  t6,t6,%lo(.G.SHIFT_TABLE)
    lw  t3,0(t6)
    subw  t6,t5,t3
    sw  t6,-728(s0)
    j  .3314
.3278: 
    li  t4,0
    sw  t4,-728(s0)
    j  .3283
.3283: 
    j  .3287
.3287: 
    lw  t4,-728(s0)
    sw  t4,-344(s0)
    j  .2245wc692
.3290: 
    lw  t5,-712(s0)
    sw  t5,-728(s0)
    j  .3323
.3295: 
    lw  t6,-712(s0)
    lw  t3,-704(s0)
    lui  t3,%hi(.G.SHIFT_TABLE)
    addi  t3,t3,%lo(.G.SHIFT_TABLE)
    lw  t5,-704(s0)
    slli  t5,t5,2
    add  t4,t3,t5
    lw  t5,0(t4)
    divw  t4,t6,t5
    sw  t4,-728(s0)
    j  .3314
.3314: 
    j  .3323
.3323: 
    j  .3287
.3342wc1034: 
    lw  t4,-696(s0)
    li  t5,16
    bge  t4,t5,.3344wn1034
.3343wloop.1034.1376: 
    li  t5,2
    sw  t5,-184(s0)
    lw  t5,-696(s0)
    sw  t5,-176(s0)
    li  t5,1
    sw  t5,-168(s0)
    j  .3356wc1037
.3344wn1034: 
    li  a0,0
    ld  ra,376(sp)
    ld  s0,368(sp)
    addi  sp,sp,384
    ret  
.3356wc1037: 
    lw  t5,-176(s0)
    li  t4,0
    ble  t5,t4,.3358wn1037
.3357wloop.1037.1371: 
    li  t4,0
    sw  t4,-728(s0)
    li  t4,0
    sw  t4,-720(s0)
    lw  t4,-176(s0)
    sw  t4,-712(s0)
    li  t4,1
    sw  t4,-704(s0)
    j  .3368wc1042
.3358wn1037: 
    lw  t4,-168(s0)
    sw  t4,-728(s0)
    lw  t4,-696(s0)
    lui  t4,%hi(.G.SHIFT_TABLE)
    addi  t4,t4,%lo(.G.SHIFT_TABLE)
    lw  t5,-696(s0)
    slli  t5,t5,2
    add  t6,t4,t5
    lw  t5,0(t6)
    lw  t6,-728(s0)
    beq  t5,t6,.4446
.4445: 
    li  a0,1
    ld  ra,376(sp)
    ld  s0,368(sp)
    addi  sp,sp,384
    ret  
.3368wc1042: 
    lw  t6,-720(s0)
    li  t5,16
    bge  t6,t5,.3370wn1042
.3369wloop.1042.1049: 
    lw  t5,-712(s0)
    li  t6,2
    remw  t4,t5,t6
    li  t6,0
    beq  t4,t6,.3376
.3380: 
    lw  t4,-704(s0)
    li  t6,2
    remw  t3,t4,t6
    li  t6,0
    beq  t3,t6,.3376
.3375: 
    lw  t4,-728(s0)
    lw  t6,-720(s0)
    lui  t6,%hi(.G.SHIFT_TABLE)
    addi  t6,t6,%lo(.G.SHIFT_TABLE)
    lw  t5,-720(s0)
    slli  t5,t5,2
    add  t3,t6,t5
    lw  t5,0(t3)
    li  t3,1
    mulw  t6,t3,t5
    addw  t3,t4,t6
    sw  t3,-728(s0)
    j  .3376
.3370wn1042: 
    lw  t6,-728(s0)
    li  t4,0
    beq  t6,t4,.3405
.3404: 
    lw  t6,-168(s0)
    sw  t6,-160(s0)
    lw  t6,-184(s0)
    sw  t6,-152(s0)
    li  t6,0
    sw  t6,-144(s0)
    j  .3417wc1053
.3376: 
    lw  t3,-712(s0)
    li  t6,2
    divw  t4,t3,t6
    sw  t4,-712(s0)
    lw  t4,-704(s0)
    li  t6,2
    divw  t3,t4,t6
    sw  t3,-704(s0)
    lw  t3,-720(s0)
    li  t6,1
    addw  t4,t3,t6
    sw  t4,-720(s0)
    j  .3368wc1042
.3405: 
    lw  t6,-184(s0)
    sw  t6,-88(s0)
    lw  t6,-184(s0)
    sw  t6,-80(s0)
    li  t6,0
    sw  t6,-72(s0)
    j  .3903wc1204
.3417wc1053: 
    lw  t6,-152(s0)
    li  t3,0
    beq  t6,t3,.3419wn1053
.3418wloop.1053.1197: 
    li  t3,0
    sw  t3,-728(s0)
    li  t3,0
    sw  t3,-720(s0)
    lw  t3,-152(s0)
    sw  t3,-712(s0)
    li  t3,1
    sw  t3,-704(s0)
    j  .3429wc1058
.3419wn1053: 
    lw  t3,-144(s0)
    sw  t3,-728(s0)
    lw  t3,-728(s0)
    sw  t3,-168(s0)
    j  .3405
.3429wc1058: 
    lw  t3,-720(s0)
    li  t6,16
    bge  t3,t6,.3431wn1058
.3430wloop.1058.1065: 
    lw  t6,-712(s0)
    li  t3,2
    remw  t4,t6,t3
    li  t3,0
    beq  t4,t3,.3437
.3441: 
    lw  t4,-704(s0)
    li  t3,2
    remw  t5,t4,t3
    li  t3,0
    beq  t5,t3,.3437
.3436: 
    lw  t4,-728(s0)
    lw  t3,-720(s0)
    lui  t3,%hi(.G.SHIFT_TABLE)
    addi  t3,t3,%lo(.G.SHIFT_TABLE)
    lw  t6,-720(s0)
    slli  t6,t6,2
    add  t5,t3,t6
    lw  t6,0(t5)
    li  t5,1
    mulw  t3,t5,t6
    addw  t5,t4,t3
    sw  t5,-728(s0)
    j  .3437
.3431wn1058: 
    lw  t3,-728(s0)
    li  t4,0
    beq  t3,t4,.3466
.3465: 
    lw  t3,-144(s0)
    sw  t3,-136(s0)
    lw  t3,-160(s0)
    sw  t3,-128(s0)
    j  .3477wc1069
.3437: 
    lw  t5,-712(s0)
    li  t3,2
    divw  t4,t5,t3
    sw  t4,-712(s0)
    lw  t4,-704(s0)
    li  t3,2
    divw  t5,t4,t3
    sw  t5,-704(s0)
    lw  t5,-720(s0)
    li  t3,1
    addw  t4,t5,t3
    sw  t4,-720(s0)
    j  .3429wc1058
.3466: 
    lw  t3,-160(s0)
    sw  t3,-112(s0)
    lw  t3,-160(s0)
    sw  t3,-104(s0)
    j  .3656wc1125
.3477wc1069: 
    lw  t3,-128(s0)
    li  t5,0
    beq  t3,t5,.3479wn1069
.3478wloop.1069.1118: 
    li  t5,0
    sw  t5,-728(s0)
    li  t5,0
    sw  t5,-720(s0)
    lw  t5,-136(s0)
    sw  t5,-712(s0)
    lw  t5,-128(s0)
    sw  t5,-704(s0)
    j  .3490wc1074
.3479wn1069: 
    lw  t5,-136(s0)
    sw  t5,-728(s0)
    lw  t5,-728(s0)
    sw  t5,-144(s0)
    j  .3466
.3490wc1074: 
    lw  t5,-720(s0)
    li  t3,16
    bge  t5,t3,.3492wn1074
.3491wloop.1074.1085: 
    lw  t3,-712(s0)
    li  t5,2
    remw  t4,t3,t5
    li  t5,0
    beq  t4,t5,.3498
.3497: 
    lw  t5,-704(s0)
    li  t4,2
    remw  t3,t5,t4
    li  t4,0
    bne  t3,t4,.3504
.3503: 
    lw  t3,-728(s0)
    lw  t5,-720(s0)
    lui  t5,%hi(.G.SHIFT_TABLE)
    addi  t5,t5,%lo(.G.SHIFT_TABLE)
    lw  t4,-720(s0)
    slli  t4,t4,2
    add  t6,t5,t4
    lw  t4,0(t6)
    li  t6,1
    mulw  t5,t6,t4
    addw  t6,t3,t5
    sw  t6,-728(s0)
    j  .3504
.3492wn1074: 
    lw  t5,-728(s0)
    sw  t5,-120(s0)
    li  t5,0
    sw  t5,-728(s0)
    li  t5,0
    sw  t5,-720(s0)
    lw  t5,-136(s0)
    sw  t5,-712(s0)
    lw  t5,-128(s0)
    sw  t5,-704(s0)
    j  .3552wc1091
.3498: 
    lw  t4,-704(s0)
    li  t3,2
    remw  t5,t4,t3
    li  t3,0
    beq  t5,t3,.3520
.3519: 
    lw  t3,-728(s0)
    lw  t5,-720(s0)
    lui  t5,%hi(.G.SHIFT_TABLE)
    addi  t5,t5,%lo(.G.SHIFT_TABLE)
    lw  t6,-720(s0)
    slli  t6,t6,2
    add  t4,t5,t6
    lw  t6,0(t4)
    li  t4,1
    mulw  t5,t4,t6
    addw  t4,t3,t5
    sw  t4,-728(s0)
    j  .3520
.3504: 
    j  .3517
.3517: 
    lw  t6,-712(s0)
    li  t5,2
    divw  t3,t6,t5
    sw  t3,-712(s0)
    lw  t3,-704(s0)
    li  t5,2
    divw  t6,t3,t5
    sw  t6,-704(s0)
    lw  t6,-720(s0)
    li  t5,1
    addw  t3,t6,t5
    sw  t3,-720(s0)
    j  .3490wc1074
.3520: 
    j  .3517
.3552wc1091: 
    lw  t4,-720(s0)
    li  t5,16
    bge  t4,t5,.3554wn1091
.3553wloop.1091.1098: 
    lw  t5,-712(s0)
    li  t4,2
    remw  t3,t5,t4
    li  t4,0
    beq  t3,t4,.3560
.3564: 
    lw  t4,-704(s0)
    li  t3,2
    remw  t6,t4,t3
    li  t3,0
    beq  t6,t3,.3560
.3559: 
    lw  t4,-728(s0)
    lw  t3,-720(s0)
    lui  t3,%hi(.G.SHIFT_TABLE)
    addi  t3,t3,%lo(.G.SHIFT_TABLE)
    lw  t5,-720(s0)
    slli  t5,t5,2
    add  t6,t3,t5
    lw  t5,0(t6)
    li  t6,1
    mulw  t3,t6,t5
    addw  t6,t4,t3
    sw  t6,-728(s0)
    j  .3560
.3554wn1091: 
    lw  t4,-728(s0)
    sw  t4,-128(s0)
    j  .3591
.3560: 
    lw  t6,-712(s0)
    li  t3,2
    divw  t4,t6,t3
    sw  t4,-712(s0)
    lw  t4,-704(s0)
    li  t3,2
    divw  t6,t4,t3
    sw  t6,-704(s0)
    lw  t6,-720(s0)
    li  t3,1
    addw  t4,t6,t3
    sw  t4,-720(s0)
    j  .3552wc1091
.3591: 
    li  t3,0
    sw  t3,-728(s0)
    li  t3,0
    sw  t3,-720(s0)
    lw  t3,-128(s0)
    lui  t6,%hi(.G.SHIFT_TABLE)
    addi  t6,t6,%lo(.G.SHIFT_TABLE)
    lw  t4,4(t6)
    mulw  t6,t3,t4
    sw  t6,-712(s0)
    li  t6,65535
    sw  t6,-704(s0)
    j  .3601wc1107
.3601wc1107: 
    lw  t6,-720(s0)
    li  t4,16
    bge  t6,t4,.3603wn1107
.3602wloop.1107.1114: 
    lw  t4,-712(s0)
    li  t6,2
    remw  t3,t4,t6
    li  t6,0
    beq  t3,t6,.3609
.3613: 
    lw  t6,-704(s0)
    li  t3,2
    remw  t5,t6,t3
    li  t3,0
    beq  t5,t3,.3609
.3608: 
    lw  t6,-728(s0)
    lw  t3,-720(s0)
    lui  t3,%hi(.G.SHIFT_TABLE)
    addi  t3,t3,%lo(.G.SHIFT_TABLE)
    lw  t4,-720(s0)
    slli  t4,t4,2
    add  t5,t3,t4
    lw  t4,0(t5)
    li  t5,1
    mulw  t3,t5,t4
    addw  t5,t6,t3
    sw  t5,-728(s0)
    j  .3609
.3603wn1107: 
    j  .3637
.3609: 
    lw  t5,-712(s0)
    li  t3,2
    divw  t6,t5,t3
    sw  t6,-712(s0)
    lw  t6,-704(s0)
    li  t3,2
    divw  t5,t6,t3
    sw  t5,-704(s0)
    lw  t5,-720(s0)
    li  t3,1
    addw  t6,t5,t3
    sw  t6,-720(s0)
    j  .3601wc1107
.3637: 
    lw  t3,-728(s0)
    sw  t3,-128(s0)
    lw  t3,-120(s0)
    sw  t3,-136(s0)
    j  .3477wc1069
.3656wc1125: 
    lw  t3,-104(s0)
    li  t5,0
    beq  t3,t5,.3658wn1125
.3657wloop.1125.1174: 
    li  t5,0
    sw  t5,-728(s0)
    li  t5,0
    sw  t5,-720(s0)
    lw  t5,-112(s0)
    sw  t5,-712(s0)
    lw  t5,-104(s0)
    sw  t5,-704(s0)
    j  .3669wc1130
.3658wn1125: 
    lw  t5,-112(s0)
    sw  t5,-728(s0)
    lw  t5,-728(s0)
    sw  t5,-160(s0)
    lw  t5,-152(s0)
    sw  t5,-712(s0)
    li  t5,1
    sw  t5,-704(s0)
    lw  t5,-704(s0)
    li  t3,15
    blt  t5,t3,.3831
.3830: 
    lw  t5,-712(s0)
    li  t3,0
    bge  t5,t3,.3836
.3835: 
    li  t5,65535
    sw  t5,-728(s0)
    j  .3841
.3669wc1130: 
    lw  t3,-720(s0)
    li  t5,16
    bge  t3,t5,.3671wn1130
.3670wloop.1130.1141: 
    lw  t5,-712(s0)
    li  t3,2
    remw  t6,t5,t3
    li  t3,0
    beq  t6,t3,.3677
.3676: 
    lw  t3,-704(s0)
    li  t6,2
    remw  t5,t3,t6
    li  t6,0
    bne  t5,t6,.3683
.3682: 
    lw  t5,-728(s0)
    lw  t3,-720(s0)
    lui  t3,%hi(.G.SHIFT_TABLE)
    addi  t3,t3,%lo(.G.SHIFT_TABLE)
    lw  t6,-720(s0)
    slli  t6,t6,2
    add  t4,t3,t6
    lw  t6,0(t4)
    li  t4,1
    mulw  t3,t4,t6
    addw  t4,t5,t3
    sw  t4,-728(s0)
    j  .3683
.3671wn1130: 
    lw  t3,-728(s0)
    sw  t3,-96(s0)
    li  t3,0
    sw  t3,-728(s0)
    li  t3,0
    sw  t3,-720(s0)
    lw  t3,-112(s0)
    sw  t3,-712(s0)
    lw  t3,-104(s0)
    sw  t3,-704(s0)
    j  .3731wc1147
.3677: 
    lw  t6,-704(s0)
    li  t5,2
    remw  t3,t6,t5
    li  t5,0
    beq  t3,t5,.3699
.3698: 
    lw  t5,-728(s0)
    lw  t3,-720(s0)
    lui  t3,%hi(.G.SHIFT_TABLE)
    addi  t3,t3,%lo(.G.SHIFT_TABLE)
    lw  t4,-720(s0)
    slli  t4,t4,2
    add  t6,t3,t4
    lw  t4,0(t6)
    li  t6,1
    mulw  t3,t6,t4
    addw  t6,t5,t3
    sw  t6,-728(s0)
    j  .3699
.3683: 
    j  .3696
.3696: 
    lw  t4,-712(s0)
    li  t3,2
    divw  t5,t4,t3
    sw  t5,-712(s0)
    lw  t5,-704(s0)
    li  t3,2
    divw  t4,t5,t3
    sw  t4,-704(s0)
    lw  t4,-720(s0)
    li  t3,1
    addw  t5,t4,t3
    sw  t5,-720(s0)
    j  .3669wc1130
.3699: 
    j  .3696
.3731wc1147: 
    lw  t6,-720(s0)
    li  t3,16
    bge  t6,t3,.3733wn1147
.3732wloop.1147.1154: 
    lw  t3,-712(s0)
    li  t6,2
    remw  t5,t3,t6
    li  t6,0
    beq  t5,t6,.3739
.3743: 
    lw  t6,-704(s0)
    li  t5,2
    remw  t4,t6,t5
    li  t5,0
    beq  t4,t5,.3739
.3738: 
    lw  t6,-728(s0)
    lw  t5,-720(s0)
    lui  t5,%hi(.G.SHIFT_TABLE)
    addi  t5,t5,%lo(.G.SHIFT_TABLE)
    lw  t3,-720(s0)
    slli  t3,t3,2
    add  t4,t5,t3
    lw  t3,0(t4)
    li  t4,1
    mulw  t5,t4,t3
    addw  t4,t6,t5
    sw  t4,-728(s0)
    j  .3739
.3733wn1147: 
    lw  t6,-728(s0)
    sw  t6,-104(s0)
    j  .3770
.3739: 
    lw  t4,-712(s0)
    li  t5,2
    divw  t6,t4,t5
    sw  t6,-712(s0)
    lw  t6,-704(s0)
    li  t5,2
    divw  t4,t6,t5
    sw  t4,-704(s0)
    lw  t4,-720(s0)
    li  t5,1
    addw  t6,t4,t5
    sw  t6,-720(s0)
    j  .3731wc1147
.3770: 
    li  t5,0
    sw  t5,-728(s0)
    li  t5,0
    sw  t5,-720(s0)
    lw  t5,-104(s0)
    lui  t4,%hi(.G.SHIFT_TABLE)
    addi  t4,t4,%lo(.G.SHIFT_TABLE)
    lw  t6,4(t4)
    mulw  t4,t5,t6
    sw  t4,-712(s0)
    li  t4,65535
    sw  t4,-704(s0)
    j  .3780wc1163
.3780wc1163: 
    lw  t4,-720(s0)
    li  t6,16
    bge  t4,t6,.3782wn1163
.3781wloop.1163.1170: 
    lw  t6,-712(s0)
    li  t4,2
    remw  t5,t6,t4
    li  t4,0
    beq  t5,t4,.3788
.3792: 
    lw  t4,-704(s0)
    li  t5,2
    remw  t3,t4,t5
    li  t5,0
    beq  t3,t5,.3788
.3787: 
    lw  t4,-728(s0)
    lw  t5,-720(s0)
    lui  t5,%hi(.G.SHIFT_TABLE)
    addi  t5,t5,%lo(.G.SHIFT_TABLE)
    lw  t6,-720(s0)
    slli  t6,t6,2
    add  t3,t5,t6
    lw  t6,0(t3)
    li  t3,1
    mulw  t5,t3,t6
    addw  t3,t4,t5
    sw  t3,-728(s0)
    j  .3788
.3782wn1163: 
    j  .3816
.3788: 
    lw  t3,-712(s0)
    li  t5,2
    divw  t4,t3,t5
    sw  t4,-712(s0)
    lw  t4,-704(s0)
    li  t5,2
    divw  t3,t4,t5
    sw  t3,-704(s0)
    lw  t3,-720(s0)
    li  t5,1
    addw  t4,t3,t5
    sw  t4,-720(s0)
    j  .3780wc1163
.3816: 
    lw  t5,-728(s0)
    sw  t5,-104(s0)
    lw  t5,-96(s0)
    sw  t5,-112(s0)
    j  .3656wc1125
.3831: 
    lw  t3,-704(s0)
    li  t5,0
    ble  t3,t5,.3848
.3847: 
    lw  t5,-712(s0)
    li  t3,32767
    ble  t5,t3,.3853
.3852: 
    lw  t3,-712(s0)
    lw  t5,-704(s0)
    lui  t5,%hi(.G.SHIFT_TABLE)
    addi  t5,t5,%lo(.G.SHIFT_TABLE)
    lw  t4,-704(s0)
    slli  t4,t4,2
    add  t6,t5,t4
    lw  t4,0(t6)
    divw  t6,t3,t4
    sw  t6,-712(s0)
    lw  t6,-712(s0)
    li  t4,65536
    addw  t3,t6,t4
    lw  t4,-704(s0)
    li  t6,15
    subw  t5,t6,t4
    li  t6,1
    addw  t4,t5,t6
    lui  t4,%hi(.G.SHIFT_TABLE)
    addi  t4,t4,%lo(.G.SHIFT_TABLE)
    lw  t6,0(t4)
    subw  t4,t3,t6
    sw  t4,-728(s0)
    j  .3872
.3836: 
    li  t5,0
    sw  t5,-728(s0)
    j  .3841
.3841: 
    j  .3845
.3845: 
    lw  t5,-728(s0)
    sw  t5,-152(s0)
    j  .3417wc1053
.3848: 
    lw  t3,-712(s0)
    sw  t3,-728(s0)
    j  .3881
.3853: 
    lw  t4,-712(s0)
    lw  t6,-704(s0)
    lui  t6,%hi(.G.SHIFT_TABLE)
    addi  t6,t6,%lo(.G.SHIFT_TABLE)
    lw  t3,-704(s0)
    slli  t3,t3,2
    add  t5,t6,t3
    lw  t3,0(t5)
    divw  t5,t4,t3
    sw  t5,-728(s0)
    j  .3872
.3872: 
    j  .3881
.3881: 
    j  .3845
.3903wc1204: 
    lw  t5,-80(s0)
    li  t3,0
    beq  t5,t3,.3905wn1204
.3904wloop.1204.1348: 
    li  t3,0
    sw  t3,-728(s0)
    li  t3,0
    sw  t3,-720(s0)
    lw  t3,-80(s0)
    sw  t3,-712(s0)
    li  t3,1
    sw  t3,-704(s0)
    j  .3915wc1209
.3905wn1204: 
    lw  t3,-72(s0)
    sw  t3,-728(s0)
    lw  t3,-728(s0)
    sw  t3,-184(s0)
    lw  t3,-176(s0)
    sw  t3,-712(s0)
    li  t3,1
    sw  t3,-704(s0)
    lw  t3,-704(s0)
    li  t5,15
    blt  t3,t5,.4384
.4383: 
    lw  t6,-712(s0)
    li  t5,0
    bge  t6,t5,.4389
.4388: 
    li  t6,65535
    sw  t6,-728(s0)
    j  .4394
.3915wc1209: 
    lw  t5,-720(s0)
    li  t3,16
    bge  t5,t3,.3917wn1209
.3916wloop.1209.1216: 
    lw  t3,-712(s0)
    li  t5,2
    remw  t4,t3,t5
    li  t5,0
    beq  t4,t5,.3923
.3927: 
    lw  t4,-704(s0)
    li  t5,2
    remw  t6,t4,t5
    li  t5,0
    beq  t6,t5,.3923
.3922: 
    lw  t4,-728(s0)
    lw  t5,-720(s0)
    lui  t5,%hi(.G.SHIFT_TABLE)
    addi  t5,t5,%lo(.G.SHIFT_TABLE)
    lw  t3,-720(s0)
    slli  t3,t3,2
    add  t6,t5,t3
    lw  t3,0(t6)
    li  t6,1
    mulw  t5,t6,t3
    addw  t6,t4,t5
    sw  t6,-728(s0)
    j  .3923
.3917wn1209: 
    lw  t5,-728(s0)
    li  t4,0
    beq  t5,t4,.3952
.3951: 
    lw  t5,-72(s0)
    sw  t5,-64(s0)
    lw  t5,-88(s0)
    sw  t5,-56(s0)
    j  .3963wc1220
.3923: 
    lw  t6,-712(s0)
    li  t5,2
    divw  t4,t6,t5
    sw  t4,-712(s0)
    lw  t4,-704(s0)
    li  t5,2
    divw  t6,t4,t5
    sw  t6,-704(s0)
    lw  t6,-720(s0)
    li  t5,1
    addw  t4,t6,t5
    sw  t4,-720(s0)
    j  .3915wc1209
.3952: 
    lw  t5,-88(s0)
    sw  t5,-40(s0)
    lw  t5,-88(s0)
    sw  t5,-32(s0)
    j  .4142wc1276
.3963wc1220: 
    lw  t5,-56(s0)
    li  t6,0
    beq  t5,t6,.3965wn1220
.3964wloop.1220.1269: 
    li  t6,0
    sw  t6,-728(s0)
    li  t6,0
    sw  t6,-720(s0)
    lw  t6,-64(s0)
    sw  t6,-712(s0)
    lw  t6,-56(s0)
    sw  t6,-704(s0)
    j  .3976wc1225
.3965wn1220: 
    lw  t6,-64(s0)
    sw  t6,-728(s0)
    lw  t6,-728(s0)
    sw  t6,-72(s0)
    j  .3952
.3976wc1225: 
    lw  t6,-720(s0)
    li  t5,16
    bge  t6,t5,.3978wn1225
.3977wloop.1225.1236: 
    lw  t5,-712(s0)
    li  t6,2
    remw  t4,t5,t6
    li  t6,0
    beq  t4,t6,.3984
.3983: 
    lw  t6,-704(s0)
    li  t4,2
    remw  t5,t6,t4
    li  t4,0
    bne  t5,t4,.3990
.3989: 
    lw  t5,-728(s0)
    lw  t6,-720(s0)
    lui  t6,%hi(.G.SHIFT_TABLE)
    addi  t6,t6,%lo(.G.SHIFT_TABLE)
    lw  t4,-720(s0)
    slli  t4,t4,2
    add  t3,t6,t4
    lw  t4,0(t3)
    li  t3,1
    mulw  t6,t3,t4
    addw  t3,t5,t6
    sw  t3,-728(s0)
    j  .3990
.3978wn1225: 
    lw  t6,-728(s0)
    sw  t6,-48(s0)
    li  t6,0
    sw  t6,-728(s0)
    li  t6,0
    sw  t6,-720(s0)
    lw  t6,-64(s0)
    sw  t6,-712(s0)
    lw  t6,-56(s0)
    sw  t6,-704(s0)
    j  .4038wc1242
.3984: 
    lw  t4,-704(s0)
    li  t5,2
    remw  t6,t4,t5
    li  t5,0
    beq  t6,t5,.4006
.4005: 
    lw  t5,-728(s0)
    lw  t6,-720(s0)
    lui  t6,%hi(.G.SHIFT_TABLE)
    addi  t6,t6,%lo(.G.SHIFT_TABLE)
    lw  t3,-720(s0)
    slli  t3,t3,2
    add  t4,t6,t3
    lw  t3,0(t4)
    li  t4,1
    mulw  t6,t4,t3
    addw  t4,t5,t6
    sw  t4,-728(s0)
    j  .4006
.3990: 
    j  .4003
.4003: 
    lw  t3,-712(s0)
    li  t6,2
    divw  t5,t3,t6
    sw  t5,-712(s0)
    lw  t5,-704(s0)
    li  t6,2
    divw  t3,t5,t6
    sw  t3,-704(s0)
    lw  t3,-720(s0)
    li  t6,1
    addw  t5,t3,t6
    sw  t5,-720(s0)
    j  .3976wc1225
.4006: 
    j  .4003
.4038wc1242: 
    lw  t4,-720(s0)
    li  t6,16
    bge  t4,t6,.4040wn1242
.4039wloop.1242.1249: 
    lw  t6,-712(s0)
    li  t4,2
    remw  t5,t6,t4
    li  t4,0
    beq  t5,t4,.4046
.4050: 
    lw  t4,-704(s0)
    li  t5,2
    remw  t3,t4,t5
    li  t5,0
    beq  t3,t5,.4046
.4045: 
    lw  t4,-728(s0)
    lw  t5,-720(s0)
    lui  t5,%hi(.G.SHIFT_TABLE)
    addi  t5,t5,%lo(.G.SHIFT_TABLE)
    lw  t6,-720(s0)
    slli  t6,t6,2
    add  t3,t5,t6
    lw  t6,0(t3)
    li  t3,1
    mulw  t5,t3,t6
    addw  t3,t4,t5
    sw  t3,-728(s0)
    j  .4046
.4040wn1242: 
    lw  t4,-728(s0)
    sw  t4,-56(s0)
    j  .4077
.4046: 
    lw  t3,-712(s0)
    li  t5,2
    divw  t4,t3,t5
    sw  t4,-712(s0)
    lw  t4,-704(s0)
    li  t5,2
    divw  t3,t4,t5
    sw  t3,-704(s0)
    lw  t3,-720(s0)
    li  t5,1
    addw  t4,t3,t5
    sw  t4,-720(s0)
    j  .4038wc1242
.4077: 
    li  t5,0
    sw  t5,-728(s0)
    li  t5,0
    sw  t5,-720(s0)
    lw  t5,-56(s0)
    lui  t3,%hi(.G.SHIFT_TABLE)
    addi  t3,t3,%lo(.G.SHIFT_TABLE)
    lw  t4,4(t3)
    mulw  t3,t5,t4
    sw  t3,-712(s0)
    li  t3,65535
    sw  t3,-704(s0)
    j  .4087wc1258
.4087wc1258: 
    lw  t3,-720(s0)
    li  t4,16
    bge  t3,t4,.4089wn1258
.4088wloop.1258.1265: 
    lw  t4,-712(s0)
    li  t3,2
    remw  t5,t4,t3
    li  t3,0
    beq  t5,t3,.4095
.4099: 
    lw  t3,-704(s0)
    li  t5,2
    remw  t6,t3,t5
    li  t5,0
    beq  t6,t5,.4095
.4094: 
    lw  t3,-728(s0)
    lw  t5,-720(s0)
    lui  t5,%hi(.G.SHIFT_TABLE)
    addi  t5,t5,%lo(.G.SHIFT_TABLE)
    lw  t4,-720(s0)
    slli  t4,t4,2
    add  t6,t5,t4
    lw  t4,0(t6)
    li  t6,1
    mulw  t5,t6,t4
    addw  t6,t3,t5
    sw  t6,-728(s0)
    j  .4095
.4089wn1258: 
    j  .4123
.4095: 
    lw  t6,-712(s0)
    li  t5,2
    divw  t3,t6,t5
    sw  t3,-712(s0)
    lw  t3,-704(s0)
    li  t5,2
    divw  t6,t3,t5
    sw  t6,-704(s0)
    lw  t6,-720(s0)
    li  t5,1
    addw  t3,t6,t5
    sw  t3,-720(s0)
    j  .4087wc1258
.4123: 
    lw  t5,-728(s0)
    sw  t5,-56(s0)
    lw  t5,-48(s0)
    sw  t5,-64(s0)
    j  .3963wc1220
.4142wc1276: 
    lw  t5,-32(s0)
    li  t6,0
    beq  t5,t6,.4144wn1276
.4143wloop.1276.1325: 
    li  t6,0
    sw  t6,-728(s0)
    li  t6,0
    sw  t6,-720(s0)
    lw  t6,-40(s0)
    sw  t6,-712(s0)
    lw  t6,-32(s0)
    sw  t6,-704(s0)
    j  .4155wc1281
.4144wn1276: 
    lw  t6,-40(s0)
    sw  t6,-728(s0)
    lw  t6,-728(s0)
    sw  t6,-88(s0)
    lw  t6,-80(s0)
    sw  t6,-712(s0)
    li  t6,1
    sw  t6,-704(s0)
    lw  t6,-704(s0)
    li  t5,15
    blt  t6,t5,.4317
.4316: 
    lw  t6,-712(s0)
    li  t5,0
    bge  t6,t5,.4322
.4321: 
    li  t6,65535
    sw  t6,-728(s0)
    j  .4327
.4155wc1281: 
    lw  t5,-720(s0)
    li  t6,16
    bge  t5,t6,.4157wn1281
.4156wloop.1281.1292: 
    lw  t6,-712(s0)
    li  t5,2
    remw  t3,t6,t5
    li  t5,0
    beq  t3,t5,.4163
.4162: 
    lw  t5,-704(s0)
    li  t3,2
    remw  t6,t5,t3
    li  t3,0
    bne  t6,t3,.4169
.4168: 
    lw  t6,-728(s0)
    lw  t5,-720(s0)
    lui  t5,%hi(.G.SHIFT_TABLE)
    addi  t5,t5,%lo(.G.SHIFT_TABLE)
    lw  t3,-720(s0)
    slli  t3,t3,2
    add  t4,t5,t3
    lw  t3,0(t4)
    li  t4,1
    mulw  t5,t4,t3
    addw  t4,t6,t5
    sw  t4,-728(s0)
    j  .4169
.4157wn1281: 
    lw  t5,-728(s0)
    sw  t5,-24(s0)
    li  t5,0
    sw  t5,-728(s0)
    li  t5,0
    sw  t5,-720(s0)
    lw  t5,-40(s0)
    sw  t5,-712(s0)
    lw  t5,-32(s0)
    sw  t5,-704(s0)
    j  .4217wc1298
.4163: 
    lw  t3,-704(s0)
    li  t6,2
    remw  t5,t3,t6
    li  t6,0
    beq  t5,t6,.4185
.4184: 
    lw  t6,-728(s0)
    lw  t5,-720(s0)
    lui  t5,%hi(.G.SHIFT_TABLE)
    addi  t5,t5,%lo(.G.SHIFT_TABLE)
    lw  t4,-720(s0)
    slli  t4,t4,2
    add  t3,t5,t4
    lw  t4,0(t3)
    li  t3,1
    mulw  t5,t3,t4
    addw  t3,t6,t5
    sw  t3,-728(s0)
    j  .4185
.4169: 
    j  .4182
.4182: 
    lw  t4,-712(s0)
    li  t5,2
    divw  t6,t4,t5
    sw  t6,-712(s0)
    lw  t6,-704(s0)
    li  t5,2
    divw  t4,t6,t5
    sw  t4,-704(s0)
    lw  t4,-720(s0)
    li  t5,1
    addw  t6,t4,t5
    sw  t6,-720(s0)
    j  .4155wc1281
.4185: 
    j  .4182
.4217wc1298: 
    lw  t3,-720(s0)
    li  t5,16
    bge  t3,t5,.4219wn1298
.4218wloop.1298.1305: 
    lw  t5,-712(s0)
    li  t3,2
    remw  t6,t5,t3
    li  t3,0
    beq  t6,t3,.4225
.4229: 
    lw  t3,-704(s0)
    li  t6,2
    remw  t4,t3,t6
    li  t6,0
    beq  t4,t6,.4225
.4224: 
    lw  t3,-728(s0)
    lw  t6,-720(s0)
    lui  t6,%hi(.G.SHIFT_TABLE)
    addi  t6,t6,%lo(.G.SHIFT_TABLE)
    lw  t5,-720(s0)
    slli  t5,t5,2
    add  t4,t6,t5
    lw  t5,0(t4)
    li  t4,1
    mulw  t6,t4,t5
    addw  t4,t3,t6
    sw  t4,-728(s0)
    j  .4225
.4219wn1298: 
    lw  t3,-728(s0)
    sw  t3,-32(s0)
    j  .4256
.4225: 
    lw  t4,-712(s0)
    li  t6,2
    divw  t3,t4,t6
    sw  t3,-712(s0)
    lw  t3,-704(s0)
    li  t6,2
    divw  t4,t3,t6
    sw  t4,-704(s0)
    lw  t4,-720(s0)
    li  t6,1
    addw  t3,t4,t6
    sw  t3,-720(s0)
    j  .4217wc1298
.4256: 
    li  t6,0
    sw  t6,-728(s0)
    li  t6,0
    sw  t6,-720(s0)
    lw  t6,-32(s0)
    lui  t4,%hi(.G.SHIFT_TABLE)
    addi  t4,t4,%lo(.G.SHIFT_TABLE)
    lw  t3,4(t4)
    mulw  t4,t6,t3
    sw  t4,-712(s0)
    li  t4,65535
    sw  t4,-704(s0)
    j  .4266wc1314
.4266wc1314: 
    lw  t4,-720(s0)
    li  t3,16
    bge  t4,t3,.4268wn1314
.4267wloop.1314.1321: 
    lw  t3,-712(s0)
    li  t4,2
    remw  t6,t3,t4
    li  t4,0
    beq  t6,t4,.4274
.4278: 
    lw  t4,-704(s0)
    li  t6,2
    remw  t5,t4,t6
    li  t6,0
    beq  t5,t6,.4274
.4273: 
    lw  t4,-728(s0)
    lw  t6,-720(s0)
    lui  t6,%hi(.G.SHIFT_TABLE)
    addi  t6,t6,%lo(.G.SHIFT_TABLE)
    lw  t3,-720(s0)
    slli  t3,t3,2
    add  t5,t6,t3
    lw  t3,0(t5)
    li  t5,1
    mulw  t6,t5,t3
    addw  t5,t4,t6
    sw  t5,-728(s0)
    j  .4274
.4268wn1314: 
    j  .4302
.4274: 
    lw  t5,-712(s0)
    li  t6,2
    divw  t4,t5,t6
    sw  t4,-712(s0)
    lw  t4,-704(s0)
    li  t6,2
    divw  t5,t4,t6
    sw  t5,-704(s0)
    lw  t5,-720(s0)
    li  t6,1
    addw  t4,t5,t6
    sw  t4,-720(s0)
    j  .4266wc1314
.4302: 
    lw  t6,-728(s0)
    sw  t6,-32(s0)
    lw  t6,-24(s0)
    sw  t6,-40(s0)
    j  .4142wc1276
.4317: 
    lw  t5,-704(s0)
    li  t6,0
    ble  t5,t6,.4334
.4333: 
    lw  t6,-712(s0)
    li  t5,32767
    ble  t6,t5,.4339
.4338: 
    lw  t5,-712(s0)
    lw  t6,-704(s0)
    lui  t6,%hi(.G.SHIFT_TABLE)
    addi  t6,t6,%lo(.G.SHIFT_TABLE)
    lw  t4,-704(s0)
    slli  t4,t4,2
    add  t3,t6,t4
    lw  t4,0(t3)
    divw  t3,t5,t4
    sw  t3,-712(s0)
    lw  t3,-712(s0)
    li  t4,65536
    addw  t5,t3,t4
    lw  t4,-704(s0)
    li  t3,15
    subw  t6,t3,t4
    li  t3,1
    addw  t4,t6,t3
    lui  t4,%hi(.G.SHIFT_TABLE)
    addi  t4,t4,%lo(.G.SHIFT_TABLE)
    lw  t3,0(t4)
    subw  t4,t5,t3
    sw  t4,-728(s0)
    j  .4358
.4322: 
    li  t6,0
    sw  t6,-728(s0)
    j  .4327
.4327: 
    j  .4331
.4331: 
    lw  t6,-728(s0)
    sw  t6,-80(s0)
    j  .3903wc1204
.4334: 
    lw  t5,-712(s0)
    sw  t5,-728(s0)
    j  .4367
.4339: 
    lw  t4,-712(s0)
    lw  t3,-704(s0)
    lui  t3,%hi(.G.SHIFT_TABLE)
    addi  t3,t3,%lo(.G.SHIFT_TABLE)
    lw  t5,-704(s0)
    slli  t5,t5,2
    add  t6,t3,t5
    lw  t5,0(t6)
    divw  t6,t4,t5
    sw  t6,-728(s0)
    j  .4358
.4358: 
    j  .4367
.4367: 
    j  .4331
.4384: 
    lw  t5,-704(s0)
    li  t6,0
    ble  t5,t6,.4401
.4400: 
    lw  t6,-712(s0)
    li  t5,32767
    ble  t6,t5,.4406
.4405: 
    lw  t5,-712(s0)
    lw  t6,-704(s0)
    lui  t6,%hi(.G.SHIFT_TABLE)
    addi  t6,t6,%lo(.G.SHIFT_TABLE)
    lw  t4,-704(s0)
    slli  t4,t4,2
    add  t3,t6,t4
    lw  t4,0(t3)
    divw  t3,t5,t4
    sw  t3,-712(s0)
    lw  t3,-712(s0)
    li  t4,65536
    addw  t5,t3,t4
    lw  t4,-704(s0)
    li  t3,15
    subw  t6,t3,t4
    li  t3,1
    addw  t4,t6,t3
    lui  t4,%hi(.G.SHIFT_TABLE)
    addi  t4,t4,%lo(.G.SHIFT_TABLE)
    lw  t3,0(t4)
    subw  t4,t5,t3
    sw  t4,-728(s0)
    j  .4425
.4389: 
    li  t6,0
    sw  t6,-728(s0)
    j  .4394
.4394: 
    j  .4398
.4398: 
    lw  t6,-728(s0)
    sw  t6,-176(s0)
    j  .3356wc1037
.4401: 
    lw  t5,-712(s0)
    sw  t5,-728(s0)
    j  .4434
.4406: 
    lw  t4,-712(s0)
    lw  t3,-704(s0)
    lui  t3,%hi(.G.SHIFT_TABLE)
    addi  t3,t3,%lo(.G.SHIFT_TABLE)
    lw  t5,-704(s0)
    slli  t5,t5,2
    add  t6,t3,t5
    lw  t5,0(t6)
    divw  t6,t4,t5
    sw  t6,-728(s0)
    j  .4425
.4425: 
    j  .4434
.4434: 
    j  .4398
.4446: 
    lw  t6,-696(s0)
    li  t5,1
    addw  t4,t6,t5
    sw  t4,-696(s0)
    j  .3342wc1034
    .size	long_func, .-long_func
    .align 1
    .globl main
    .type  main, @function
main: 
    addi  sp,sp,-32
    sd  ra,24(sp)
    sd  s0,16(sp)
    addi  s0,sp,32
.4459: 
    call  long_func
    mv  t6,a0
    mv  a0,t6
    ld  ra,24(sp)
    ld  s0,16(sp)
    addi  sp,sp,32
    ret  
    .size	main, .-main
