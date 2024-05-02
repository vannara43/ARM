.global main

/* CONSTANT DATA SECTION: Add your strings here */
.align 4
.section .rodata
hello_msg:  .asciz "Hello World!\n" // Make hello world label and assign a string message

/* CODE SECTION */
.align 4
.text
main:
    push {lr}
    // Load hello_msg to r0: ldr r0, =hello_msg
    // Call printf with bl: bl printf
    mov r0, #0 // Return 0
    pop {pc}
