.global _start

.data
a1: .word 5      @ Initialize a1 with value 5
wen2: .word 5    @ Initialize wen2 with value 5
res3: .word 0    @ Initialize res3 with value 0 

.text
_start:
    @ Load values of a1 and wen2 into registers
    ldr r1, =a1
    ldr r1, [r1]    @ Load value at address a1 into r1

    ldr r2, =wen2
    ldr r2, [r2]    @ Load value at address wen2 into r2

    @ Multiply r1 and r2, store the result in r3
    mul r3, r1, r2

    @ Store the result in res3
    ldr r4, =res3
    str r3, [r4]

.end
