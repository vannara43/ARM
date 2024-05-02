/* ASSIGN A GLOBAL FUNCTION */
// Make main as a global function
.global main

/* READ_ONLY SECTION: Add your strings here */
.align 4 // Add .align 4 here
.section .rodata // Add .section and .rodata here
prompt1:            .asciz "Enter a value: "
fmt:                .asciz "%d"
print_input_value:  .asciz "You entered the number %d\n"

/* NON-CONSTANT DATA SECTION */
.align 4 // Add align 4 here
.section .data // Add .section and .rodata here
my_value:           .int 0

/* CODE SECTION */
.align 4 // Add .align 4 here
.text  // Add .text here for code only
main: // Main label here
    push {lr}// Push to {lr}

    /* USE PRINTF TO PRINT PROMPT1 */
    ldr r0, =prompt1 // Assign prompt1 to r0 with ldr
    bl printf //calls printf

    /* USE SCANF FOR INPUT */
    ldr r0, =fmt // assign fmt to r0 with ldr
    ldr r1, =my_value // assign my_value to r1 with ldr
    bl scanf //calls scanf

    /* PRINT YOUR INPUT VALUE HERE USING PRINTF */
    ldr r0, =print_input_value // Assign print_input_value to r0 with ldr
    ldr r1, =my_value // Assign my_value to r1 with ldr
    ldr r1, [r1]// use ldr r1, [r1] to dereference r1 memory address
    bl printf //calls printf with bl

    mov r0, #0 // Return r0 back to 0 with mov
    mov r1, #0 // Return r1 back to 0 with mov
    pop {pc}// End program with pop {pc}
