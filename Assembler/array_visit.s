.data
x: .word 1,2,3,4 @ indirizzo di cui va calcolato il prefix
n: .word 4 @ lunghezza del vettore
.text
.global main
main:
  ldr r0,=x                  @7 caricamento array in r0
	ldr r1,=n                  @8-9 caricamento n in r1
	ldr r1,[r1]
	mov r2,#0                  @iteratore
	lsl r1,#2                  @moltiplico n*4 perche le parole sono di 4byte
	printx: 	cmp r2,r1
		bge outpr
		ldr r3,[r0,r2]           @ogni iterazione controllo con info-register se il valore in r4 corrisponde
		mov r4,r3                @alla posizione dell'array x
		add r2,r2,#4
		b printx
	outpr:
	mov r7,#1                  @uscita dal programma
	svc 0
