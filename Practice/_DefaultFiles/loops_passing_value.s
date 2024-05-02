.global main

/* data section */
.align 4
.section .rodata
end_loop:   .asciz "End of Loop\n"
what_loop:  .asciz "Loop %u\n"

/* non-constant data */
.align 4
.section .data
var1:       .word 0

/* code section */
.align 4
.text
check_loop:
    push {lr}
    cmp r4, #10
    bge end_of_loop
    add r4, r4, #1
    bl qty_loop

qty_loop:
    push {lr}
    ldr r0, =what_loop
    mov r1, r4
    bl printf
    bl check_loop
    pop {pc}

end_of_loop:
    ldr r0, =end_loop
    bl printf
    pop {pc}

main:
    push {lr}
    ldr r4, =var1
    ldr r4, [r4]// Load the value of var1
    bl check_loop
