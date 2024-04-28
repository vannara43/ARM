@ #include <cstdio>
@ #include <cstdlib>
@ using namespace std;
.global main

.align 4
.section .rodata
prompt_str: .asciz "Enter two integers: "
fmt_specifier: .asciz "%u %u"
prompt_AND: .asciz "%u AND %u is %u\n"
prompt_OR: .asciz "%u OR %u is %u\n"
prompt_EOR: .asciz "%u EOR %u is %u\n"
prompt_NAND: .asciz "%u NAND %u is %u\n"
prompt_NOR: .asciz "%u NOR %u is %u\n"

.align 4
.section .data
value1:     .word 0 //unsigned int value1
value2:     .word 0 //unsigned int value2

.align 4
.text
main: @ int main(int argc, char **argv)
    push {lr}

    //printf("Enter two unsigned integers (separate the integers with a space): ");
    ldr r0, =prompt_str /* load address of prompt string into R0 */
    bl printf           /* call C function printf to display the prompt string */

    //scanf("%u %u", &value1, &value2);
    ldr r0,=fmt_specifier
    ldr r1,=value1       /* load address of value1 into R1 */
    ldr r2,=value2       /* load address of value2 into R2 */
    bl scanf            // call scanf

    //printf("%u AND %u is %u\n", value1, value2, value1 & value2);
    ldr r0,=prompt_AND
    ldr r1,=value1       /* load value1 into R1  and R2 */
    ldr r2,=value2
    ldr r1, [r1]         /* get the actual values  from memory pointed by R1 and R2 */
    ldr r2, [r2]
    AND r3, r1,r2
    bl printf             /* call C function printf to print formatted output */

    //printf("%u OR %u is %u\n", value1, value2, value1 | value2);
    ldr r0,=prompt_OR
    ldr r1,=value1       /* load value1 into R1  and R2 */
    ldr r2,=value2
    ldr r1, [r1]         /* get the actual values  from memory pointed by R1 and R2 */
    ldr r2, [r2]
    ORR r3, r1,r2
    bl printf             /* call C function printf to print formatted output */

    //printf("%u EOR %u is %u\n", value1, value2, value1 ^ value2);
    ldr r0,=prompt_EOR
    ldr r1,=value1       /* load value1 into R1  and R2 */
    ldr r2,=value2
    ldr r1, [r1]         /* get the actual values  from memory pointed by R1 and R2 */
    ldr r2, [r2]
    EOR r3, r1,r2
    bl printf             /* call C function printf to print formatted output */

    //printf("%u NAND %u is %u\n", value1, value2, ~(value1 & value2));
    ldr r0,=prompt_NAND
    ldr r1,=value1       /* load value1 into R1  and R2 */
    ldr r2,=value2
    ldr r1, [r1]         /* get the actual values  from memory pointed by R1 and R2 */
    ldr r2, [r2]
    AND r3, r1,r2
    MVN r3,r3
    bl printf             /* call C function printf to print formatted output */

    //printf("%u NOR %u is %u\n", value1, value2, ~(value1 | value2));
    ldr r0,=prompt_NOR
    ldr r1,=value1       /* load value1 into R1  and R2 */
    ldr r2,=value2
    ldr r1, [r1]         /* get the actual values  from memory pointed by R1 and R2 */
    ldr r2, [r2]        
    ORR r3, r1,r2           /* bitwise complement of (value1|value2) */
    MVN r3,r3
    bl printf             /* call C function printf to print formatted output */