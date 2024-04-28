.global main

.align 4
.section .rodata
prompt1:    .asciz "Hello, this is function 1\n"
prompt2:    .asciz "Hello, this is function 2\n"
prompt3:    .asciz "Hello, this is function 3\n"

.align 4
.text
function1:
    push {lr}
    ldr r0, =prompt1
    bl printf
    pop {pc}

function2:
    push {lr}
    ldr r0, =prompt2
    bl printf
    pop {pc}

function3:
    push {lr}
    ldr r0, =prompt3
    bl printf
    pop {pc}

main:
    push {lr}
    bl function1
    bl function2
    bl function3
    mov r0, #0
    pop {pc}
