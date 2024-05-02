.global main

.align 4
.section .rodata
print_result: .asciz "Sum of array is: %d\n"

.align 4
.section .data
array:  .int 4, 3, 2, 1
result: .int 0
.align 4
.text
main:
    push {lr}
    ldr r0, =array
    ldr r1, =0 /* Index */
    ldr r2, =0 /* Running total */

    // Now we need looping
loop:
    /* Bracket means memory location were trying to access. */
    ldr r3, [r0, +r1] // r0 is location, with an offset by register 1. All this loads into register 3
    add r2, r2, r3 // summing up all elements in array

    /* Increment index */
    add r1, r1, #4 // it increase by 4, not 1 because .word
                   // is 4 bytes. so were adding 4 to the register
    cmp r1, #16    // Compare with number of elements, which is 16 bytes
    bgt end
    b loop

end:
    ldr r4, =result //  Load address of result variable into register 4
    str r2, [r4] //  Store result into *(address stored in r4)
    ldr r0, =print_result
    ldr r1, [r4]
    bl printf
    pop {pc}