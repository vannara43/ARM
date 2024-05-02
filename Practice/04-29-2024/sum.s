/* Sum values with labels */

.global main

.align 4
.section .rodata
prompt1:    .asciz "The sum is %d" // Show the result of addition

.align 4
.section .data
value1:     .word 5  //  Value to be added
value2:     .word 10 //  Value to be added
.align 4
.text
main:
    push {lr}
    ldr r0, =prompt1 // Load prompt1 to r0
    ldr r1, =value1 // Load value1 to r1
    ldr r2, =value2 // Load value2 to r2
    ldr r1, [r1] // Load [r1] into r1 to get the value of *value1
    ldr r2, [r2] // Load [r2] into r2 to get the value of *value2
    add r1, r1, r2 // Add r1 and r2 in r1
    bl printf // call printf
    pop {pc}
