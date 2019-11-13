.data
x: .word 1,2,3,4     @ indirizzo di cui va calcolato il prefix
n: .word 4           @ lunghezza del vettore
p: .word 0,0,0,0     @ vettore prefisso init
.text
.global main
main: 	ldr r0,=x
	ldr r1,=n
	ldr r1,[r1]
	ldr r3,=p
	mov r2,#0		@iteratore
	lsl r1,#2               @length
	mov r4,#0               @accumulatore
	loop:	cmp r2,r1
		bge out1
		ldr r5,[r0,r2]
		add r4,r4,r5
		str r4,[r3,r2]
		add r2,r2,#4
		b loop
	out1:
	mov r2,#0
	check:	cmp r2,r1       @loop di controllo del vettore prefix
		bge out2	@uso r4 come appoggio per controllare i singoli valori di p
		ldr r4,[r3,r2]
		add r2,r2,#4
		b check
	out2:
	mov r7,#1
	svc 0
