.global main

.align 4
.section .rodata
prompt1:    .asciz "The sum is %d"

.align 4
.section .data
value1:     .word 5
value2:     .word 10

.align 4
.text
main:
    push {lr}
    ldr r0, =prompt1
    ldr r1, =value1
    ldr r1, [r1]
    ldr r2, =value2
    ldr r2, [r2]
    add r1, r1, r2
    bl printf
    pop {pc}
