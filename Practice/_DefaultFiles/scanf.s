/* ASSIGN A GLOBAL FUNCTION */
// Make main as a global function

/* READ_ONLY SECTION: Add your strings here */
// Add align 4 here
// Add .section and .rodata here
prompt1:            .asciz "Enter a value: \n"
fmt:                .asciz "%d"
print_input_value:  .asciz "You entered the number %d\n"

/* CONSTANT DATA SECTION */
// Add align 4 here
// Add .section and .rodata here
my_value:           .int 0

/* Main Function */
// Add align 4 here
// Add .text here for code only
// Main label here
    // Push to {lr}

    /* USE PRINTF TO PRINT PROMPT1 */
    // Assign prompt1 to r0 with ldr
    //calls printf

    /* USE SCANF FOR INPUT */
    // assign fmt to r0 with ldr
    // assign my_value to r1 with ldr
    //calls scanf

    /* PRINT YOUR INPUT VALUE HERE USING PRINTF */
    // Assign print_input_value to r0 with ldr
    // Assign my_value to r1 with ldr
    // use ldr r1, [r1] to dereference r1 memory address
    //calls printf with bl

    // Return r0 back to 0 with mov
    // End program with pop {pc}
