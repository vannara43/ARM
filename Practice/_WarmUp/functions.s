.global main

.align 4
.section .rodata
function_prompt1:   .asciz "Hello, this is function 1\n" // Display prompt in function 1
function_prompt2:   .asciz "Hello, this is function 2\n" // Display prompt in function 2
function_prompt3:   .asciz "Hello, this is function 3\n" // Display prompt in function 3

.align 4
.text
function1:
    push {lr}
    // load 'function_prompt1' to r0
    // call printf
    pop {pc}

function2:
    push {lr}
    // load 'function_prompt2' to r0
    // call printf
    pop {pc}

function3:
    push {lr}
    // load 'function_prompt3' to r0
    // call printf
    pop {pc}

main:
    push {lr}
    // Call Function 1
    // Call Function 2
    // Call Function 3
    mov r0, #0
    pop {pc}
