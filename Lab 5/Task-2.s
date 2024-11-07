.global _start
.text
_start:
mov r0 , #5@a
mov r1 , #5@b
mov r2 , #9@c
mul r0 , r0 , r0
mul r1 , r1 , r1
mul r2 , r2 , r2
add r3 , r0, r1
cmp r3 , r2 @aS + bS = cS
beq valid
add r4 , r0, r2
cmp r4 , r1 @aS + cS = bS
beq valid
add r5 , r1, r2
cmp r5 , r0 @bS + cS = aS
beq valid
mov r9 , #0
b End
valid:
mov r9 ,#1
End:
.end