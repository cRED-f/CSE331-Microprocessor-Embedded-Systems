.global _start

.data

xor_ans: .word 0

.text
_start:

ldr r2 , =xor_ans

mov r0 , #0x5
mov r1 , #0x10

EOR r3 , r0, r1
str r3 , [r2]

.end
	
	