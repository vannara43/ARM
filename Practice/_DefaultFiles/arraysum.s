.global main

.align 4
.section .rodata
print_result: .asciz "Sum of array is: %d\n"

.align 4
.section .data
array:  .int 4, 3, 2, 1 /* This is the array */
result: .int 0          /* Result of elements summed up */

.align 4
.text
main:
    push {lr}
    ldr r0, =array /* 1. load array to r0 */
    ldr r1, =0     /* 2. Index for array */
    ldr r2, =0     /* 3. Running total(accumulator) */

loop: // loop to sum array elements
    ldr r3, [r0, +r1] // gets value from array[index]
    add r2, r2, r3    // add r3 value to r2

    /* Increment index */
    add r1, r1, #4  // it increase by 4, not 1 because .word
    cmp r1, #16     // Compare with number of elements, which is 16 byte
    bgt end
    b loop

end:
    ldr r4, =result // load r4 with result
    str r2, [r4]    // store r2(accumulator) to r4
    ldr r0, =print_result // load string to r0
    ldr r1, [r4]    // load r4 values to r1
    bl printf       // call printf to show results
    pop {pc}



