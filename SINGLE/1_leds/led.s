.global _start /* 全局标号 */

/*
 * 描述： _start 函数，程序从此函数开始执行此函数完成时钟使能、
 * GPIO 初始化、最终控制GPIO 输出低电平来点亮LED 灯。
 */
_start:
/* 使能所有时钟 */
ldr r0, =0X020C4068 /* 寄存器CCGR0 */
ldr r1, =0XFFFFFFFF
str r1, [r0]

ldr r0, =0X020C406C /* 寄存器CCGR1 */
str r1, [r0]

ldr r0, =0X020C4070 /* 寄存器CCGR2 */
str r1, [r0]

ldr r0, =0X020C4074 /* 寄存器CCGR3 */
str r1, [r0]

ldr r0, =0X020C4078 /* 寄存器CCGR4 */
str r1, [r0]

ldr r0, =0X020C407C /* 寄存器CCGR5 */
str r1, [r0]

ldr r0, =0X020C4080 /* 寄存器CCGR6 */
str r1, [r0]

/* 设置GPIO1_IO03 复用为GPIO1_IO03 */
ldr r0, =0X020E0068 /* 将寄存器SW_MUX_GPIO1_IO03_BASE 加载到r0 中 */
ldr r1, =0X5 /* 设置寄存器SW_MUX_GPIO1_IO03_BASE 的MUX_MODE 为5 */
str r1,[r0]

/* 配置GPIO1_IO03 的IO 属性 */
ldr r0, =0X020E02F4 /*寄存器SW_PAD_GPIO1_IO03_BASE */
ldr r1, =0X10B0
str r1,[r0]

/* 设置GPIO1_IO03 为输出 */
ldr r0, =0X0209C004 /*寄存器GPIO1_GDIR */
ldr r1, =0X0000008
str r1,[r0]

/* 打开LED0 */
ldr r0, =0X0209C000 /*寄存器GPIO1_DR */
ldr r1, =0
str r1,[r0]

/*
 * 描述： loop 死循环
 */
loop:
b loop
