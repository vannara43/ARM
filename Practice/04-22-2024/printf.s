/* ASSIGN A GLOBAL FUNCTION */
.global main // Make main as a global function

/* READ_ONLY SECTION: Add your strings here */
.align 4                 // Add align 4 here
.section .rodata         // Add .section and .rodata here
hello_msg:  .asciz "Hello World!\n" // Make hello world label and assign a string message

/* CODE SECTION */
.align 4                 // Add align 4 here
.text                    // Add .text here for code only
main:                    // Main label here
    push {lr}            // Push to {lr}
    ldr r0, =hello_msg   // Load hello_msg to r0 with ldr
    bl printf            // Call printf with bl
    mov r0, #0           // Return r0 back to 0 with mov
    pop {pc}             // End program with pop {pc}
