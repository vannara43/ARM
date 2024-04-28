.global main

/* Section */
.align 4
.section .rodata
hello_msg:  .asciz "Hello World\n"

/* section */
.align 4
.section .data

/*main function */
.align 4
.text
main:
    push {lr}
    mov r4, #1
while_r4_le_5:
    cmp r4, #5
    bgt end_while_r4_le_5
    ldr r0, =hello_msg
    bl printf
    add r4, r4, #1
    b while_r4_le_5

end_while_r4_le_5:
    mov r0, #0
    pop {pc}
