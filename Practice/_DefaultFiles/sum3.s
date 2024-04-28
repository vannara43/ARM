/* Sum values with functions */
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
sum_function:
    push {lr}
    ldr r0, =prompt1
    add r1, r1, r2
    bl printf
    pop {pc}

main:
    push {lr}
    mov r1, #100
    mov r2, #200
    b sum_function
    pop {pc}
