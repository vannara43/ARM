.global main

.align 4
.section .rodata
prompt1:    .asciz "Enter a value: "
fmt:        .asciz "%d"
prompt_str: .asciz "You entered the number %d\n"

.align 4
.section .data
my_value:   .int 0

.align 4
.text
main:
    push {lr}

    // Prompt to enter value
    ldr r0, =prompt1            //r0 = prompt1
    bl printf                   //calls printf

    //Enter your value
    ldr r0, =fmt                //r0 = fmt
    ldr r1, =my_value           //r1 = my_value
    bl scanf                    //calls scanf

    //Prints your value
    ldr r0, =prompt_str         //r0 = prompt_str
    ldr r1, =my_value           //r1 = my_value
    ldr r1, [r1]                //r1 = r1 value
    bl printf                   //calls printf

    //End of code
    pop {pc}
