.data
x: .word 1,2,3,4
y: .word 1,2,3,4
n: .word 4

.text
.global main

main:	 ldr r2,=n
	     mov r1,#0
	     ldr r2,[r2]
       ldr r3,=x
       ldr r4,=y
       bl prodottov   @chiamata a funzione
       mov r1,r0
       mov r7,#1
       svc 0

prodottov: lsl r2,#2
	         mov r5,#0   @index
	         mov r6,#0
	         mov r0,#0
	         iter:	cmp r5,r2
	 	              bge out
	 	              ldr r10,[r3,r5]
	 	              ldr r11,[r4,r5]
	 	              mul r6,r10,r11
	 	              add r0,r6
	 	              add r5,r5,#4
	 	              b iter
	         out: mov pc,lr	@ritorno al punto di chiamata
