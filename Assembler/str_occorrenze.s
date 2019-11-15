.data
str: .asciz "abcar"
ch:  .ascii "a"
.text
.global main

main:	    mov r1,#0
	    bl check
	    mov r1,r0
	    mov r7,#1
    	    svc 0

check:	    ldr r2,=str
	    ldr r3,=ch
	    mov r0,#0
      	    ldrb r3,[r3]
            push {r4,r5}
      	    mov r4,#0
      	    loop:	ldrb r5,[r2,r4]
	          	cmp r5, #0
		        beq out
	          	cmp r5,r3
	          	addeq r0,r0,#1
	          	add r4,r4,#1
          		b loop
	    out:
            pop {r4,r5}
	    mov pc,lr
