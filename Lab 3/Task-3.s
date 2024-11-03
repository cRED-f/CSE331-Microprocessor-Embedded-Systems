.global _start


.text
_start:
	mov r0 , #0x5
	mov r1 , #0x10
	
	CMP r0,r1
	BLT bran2
	
	bran1:
	mov r3 , #1
	
	bran2:
	mov r4 , #2
	b done
	
	bran3:
	mov r5 , #3
	
	
	b done

done:
.end


	
	