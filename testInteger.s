// Test Integer Source File
// Assemble: Make
// (-g is optional for generating debug info)

.global main // Start point of program.

.align 4 // Memory alignment for efficiency.
.section .rodata // Read-only data section.
// ALL CONSTANT DATA GOES HERE
format_string:  .asciz "Number = %d\n" //Define and assign message.

.align 4
.section .data
//ALL NON-CONSTANT DATA GOES HERE
testinteger:    .word 5 // .word is the 32-bit int in cpp

.align 4 // Memory alignment for efficiency.
.text //Section for executable code.
main:
    push {lr}

    // Assembly program here
    ldr r0, =format_string // r0 = &format_string
    ldr r1, =testinteger // r1 = &testInteger
    ldr r1, [r1]//r1 = *r1 | [r1] gets value at address testinteger
    bl printf //Call printf function.
    mov r0, #0 // Return code for your program (must be 8 bits)
    pop {pc}//Return to caller.
