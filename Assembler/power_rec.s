.text
.global main

main:	    mov r0,#4               @base
	    mov r1,#3               @esponente
	    bl power
	    mov r7,#1
	    svc 0

power:
	    cmp r1,#0   @caso base
	    bgt else
	    mov r0,#1
	    mov pc,lr
	    else:	push {r0,lr}
		        sub r1,r1,#1
		        bl power
		        pop {r2,lr}      @ripristino r0 su r2
		        mul r0,r2,r0
		        mov pc,lr
