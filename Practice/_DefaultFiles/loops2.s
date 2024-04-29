    GNU n.global main

/* data section */
.align 4
.section .rodata
end_loop:   .asciz "This is now the end of Loop\n"
qty_loop:   .asciz "The program looped %d times.\n"

/* non-constant data */
.align 4
.section .data
var1:       .word 0

/* code section */
.align 4
.text
check_loop:
    push {lr}
    cmp r1, #10
    bge end_of_loop
    bl print_loop
    pop {pc}

print_loop:
    push {lr}
    ldr r0, =qty_loop
    ldr r1, [r1]
    bl printf

    add r1, r1, #1
    bl check_loop
    pop {pc}

end_of_loop:
    push {lr}
    ldr r0, =end_loop
    bl printf
    pop {pc}

main:
    push {lr}
    ldr r1, =var1
    bl print_loop
    pop {pc}
