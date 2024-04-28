// Hello world with simple comment
// Assemble: Make
// (-g is optional for generating debug info)

.global main // Start point of program.

.align 4 // Memory alignment for efficiency.
.section .rodata // Read-only data section.

// ALL CONSTANT DATA GOES HERE
hello_msg:  .asciz "Hello World from assembly!\n" //Define and assign message.

.align 4 // Memory alignment for efficiency.
.text  //Section for executable code.
main: //Beginning of main function.
    push {lr}//Save return address.
    // Assembly program here
    ldr r0, =hello_msg // Load message address into register.
    bl printf //Call printf function.
    mov r0, #0 // Return code for your program (must be 8 bits)
    pop {pc}//Return to caller.
