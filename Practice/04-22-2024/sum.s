/* Sum values with labels */
.global main

/* CONSTANT DATA SECTION: Add your strings here */
.align 4
.section .rodata
prompt1:    .asciz "The sum is %d" // Show the result of addition

/* NON-CONSTANT DATA SECTION*/
.align 4
.section .data
value1:     .word 5  //  Value to be added
value2:     .word 10 //  Value to be added

/* CODE SECTION */
.align 4
.text
main:
    push {lr}
    // Load prompt1 to r0
    // Load value1 to r1
    // Load value2 to r2
    // Load [r1] into r1 to get the value of *value1
    // Load [r2] into r2 to get the value of *value2
    // Add r1 and r2 in r1
    // call printf
    pop {pc}
