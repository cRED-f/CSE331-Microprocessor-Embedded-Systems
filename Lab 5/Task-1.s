.global _start
.data

 numb: .word 1,3,5,4,2,3
 min_num: .word 0

.text
_start:
	ldr r1 , =numb
	ldr r9 , [r1]
	mov r5 , r9
	
	
	mov r2 , #6
	mov r4 , #0

	
	
	loop:
	ldr r3 , [r1]
	add r4 , r4 ,r3
	
	add r1 , r1 , #4
	sub r2 , r2, #1
	
	CMP r3 , r5
	blt minArr
	
	CMP r2 , #0
	bne loop
	
	b done
	
	minArr:
	mov r5 , r3
	cmp r2, #0
	bne loop
	
done:
    ldr r8, =min_num
    str r5, [r8]

    // Convert r5 to 7-segment code
    mov r6, #0x3F  // default to '0' display
    cmp r5, #1
    beq disp1
    cmp r5, #2
    beq disp2
    cmp r5, #3
    beq disp3
    cmp r5, #4
    beq disp4
    cmp r5, #5
    beq disp5
    cmp r5, #6
    beq disp6
    cmp r5, #7
    beq disp7
    cmp r5, #8
    beq disp8
    cmp r5, #9
    beq disp9
    b display

disp1: mov r6, #0x06; b display
disp2: mov r6, #0x5B; b display
disp3: mov r6, #0x4F; b display
disp4: mov r6, #0x66; b display
disp5: mov r6, #0x6D; b display
disp6: mov r6, #0x7D; b display
disp7: mov r6, #0x07; b display
disp8: mov r6, #0x7F; b display
disp9: mov r6, #0x6F; b display

display:
    ldr r7, =0xff200020
    str r6, [r7]  
	.end