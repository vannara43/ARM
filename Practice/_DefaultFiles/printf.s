/* ASSIGN A GLOBAL FUNCTION */
// Make main as a global function

/* READ_ONLY SECTION: Add your strings here */
// Add align 4 here
// Add .section and .rodata here
// Make hello world label and assign a string message
hello_msg:  .asciz "Hello World!\n"

/* CONSTANT DATA SECTION */ // Delete this line
// Add align 4 here               // Delete this line
// Add .section and .rodata here  // Delete this line

/* Main Function */
// Add align 4 here
// Add .text here for code only
// Main label here
    // Push to {lr}
    // Load hello_msg to r0
    // Call printf with bl
    // Return r0 back to 0 with mov
    // End program with pop {pc}
