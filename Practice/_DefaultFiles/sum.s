.global main

.align 4
.section .rodata
prompt1:    .asciz "The sum is %d"

.align 4
.text
main:
    push {lr}
    ldr r0, =prompt1
    mov r1, #100
    mov r2, #200
    add r1, r1, r2
    bl printf
    pop {pc}
