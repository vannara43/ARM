
// Hello world source code
// Assemble: Make
// (-g is optional for generating debug info)

// This directive declares the main function as a global symbol.
// Declares that main is the starting point of the program and can be accessed from outside the file.
.global main

.align 4 // Aligns the following data/code on a 4-byte boundary for efficient memory access.
.section .rodata // New section called .rodata, read only data
// ALL CONSTANT DATA GOES HERE

// Label    string   string contain message
hello_msg:  .asciz "Hello World from assembly!\n"
//Defines a message "Hello World from assembly!\n" and assigns it to the label hello_msg

.align 4 // Aligns the following data/code on a 4-byte boundary
.text  // This directive switches to the text section containing executable code.
main: // Beginning of the main function.
    push {lr}// Pushes the link register (lr) onto the stack. This is necessary because we're going to call a function (printf) and we need to know where to return to afterward.

    // Assembly program here
    ldr r0, =hello_msg          // Loads the address of the hello_msg string into register r0
    bl printf                   // Calls the printf function to print the message stored in hello_msg.

    mov r0, #0 //return code for your program(must be 8 bits)
    // This instruction moves the value 0 into register r0. This is commonly used to indicate successful program termination on Unix-like systems, where a return value of 0 from main typically signifies successful execution.

    pop {pc}// Pops the return address from the stack and puts it into the program counter, effectively ending the program.
