.data
x: .word 1,2,3,4,5,6,7,8
y: .word 8,7,6,5,4,3,2,1
.text
.global main
main:
	mov r0,#8      @dimensione array
	ldr r1,=x
	ldr r2,=y
	bl copia
	mov r7,#1
	svc 0

copia:	mov r3,#0
	lsl r0,#2
	loop:
		cmp r3,r0
		bge out
		ldr r4,[r1,r3]
		str r4,[r2,r3]
		ldr r5,[r2,r3]  @riga inserita successivamente per controllare se le posizioni di y sono corrette
		add r3,r3,#4
		b loop
	out: mov pc,lr
