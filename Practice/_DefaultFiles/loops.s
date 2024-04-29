.global main

/* data section */
.align 4
.section .rodata
end_loop:   .asciz "End of Loop\n"

/* non-constant data */
.align 4
.section .data
var1:       .word 0

/* code section */
.align 4
.text
check_loop:
    cmp r4, #10
    bge end_of_loop
    add r4, r4, #1
    bl check_loop

main:
    push {lr}
    ldr r4, =var1
    bl check_loop

end_of_loop:
    ldr r0, =end_loop
    bl printf
    pop {pc}
