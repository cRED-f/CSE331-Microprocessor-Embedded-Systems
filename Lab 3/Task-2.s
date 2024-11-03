.global _start

.data
arr1: .word 1,2,3,4,5


.text
_start:
	ldr r8 , =arr1
	
	loop:
		ldr r9, [r8]
		
		add r8, r8,#4
		
		b loop
