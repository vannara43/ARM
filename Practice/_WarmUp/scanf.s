.global main

/* CONSTANT DATA SECTION: Add your strings here */
.align 4
.section .rodata
enter_value_prompt:     .asciz "Enter a value: " // prompt to enter value
fmt_specifier:          .asciz "%d" // This is needed for scanf
display_input_value:    .asciz "You entered the number %d\n" // display the user input

/* NON-CONSTANT DATA SECTION */
.align 4
.section .data
my_value:               .int 0

/* CODE SECTION */
.align 4
.text
main:
    push {lr}

    /* PROMPT TO ENTER VALUE */
    ldr r0, =enter_value_prompt // Assign enter_value_prompt to r0 with ldr
    bl printf // calls printf

    /* USE SCANF FOR INPUT | CODE HERE */
    // assign fmt_specifier to r0 with ldr | ldr r0, =fmt_specifier
    // assign my_value to r1 with ldr | ldr r1, =my_value
    // call scanf: bl scanf

    /* PROMPT TO DISPLAY USER INPUT | CODE HERE */
    // Assign display_input_value to r0 with ldr | ldr r0, =display_input_value
    // Assign my_value to r1 with ldr | ldr r1, =my_value
    // Use ldr r1, [r1] to dereference r1 memory address | ldr r1, [r1]
    // Calls printf with bl | bl printf

    mov r0, #0 // Return r0 back to 0 with mov
    mov r1, #0 // Return r1 back to 0 with mov
    pop {pc}// End program with pop {pc}
