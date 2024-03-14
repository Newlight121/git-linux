.global _start/* 全局标号 */

/*
 * 描述： _start 函数，程序从此函数开始执行，此函数主要功能是设置C
 * 运行环境。
 */
_start:
    /* 进入SVC 模式 */
    mrs r0, cpsr
    bic r0, r0, #0x1f/* 将r0 的低5 位清零，也就是cpsr 的M0~M4 */
    orr r0, r0, #0x13/* r0 或上0x13,表示使用SVC 模式 */
    msr cpsr, r0

    ldr sp, =0x80200000/* 设置栈指针 */
    b main/* 跳转到main 函数 */