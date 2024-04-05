
// Hello world source code
// Assemble: Make
// (-g is optional for generating debug info)

.global main

.align 4
.section .rodata
// All constant data goes here
hello_msg:  .asciz "Hello World from assembly!\n"

.align 4
.text
main:
    push {lr}

    // Assembly program here
    ldr r0, =hello_msg          // r0 = &hello_msg
    bl printf                   // call printf

    mov r0, #0 //return code for your program(must be 8 bits)
    pop {pc}
