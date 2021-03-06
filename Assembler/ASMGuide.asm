;ESEMPI	INSTRUZIONI ASSEMBLER

		MOV		R1, #2       ;ASSEGNO VALORI AI REGISTRI
		MOV		R2,#3
		MOV		R3,#5

		ADD		R0,R2,R3     ;R0= R2+R4 = 8
		SUB		R0,R3,R2     ;R0= R3-R2 = 2
                RSB		R0,R1,R3     ;R0= R3-R1 = 3 SOTTRAZIONE ORDINE INVERSO


    ;SALTO INCONDIZIONATO (BRANCH)

                MOV	        R1, #2
		MOV		R2,#3

	        B JUMP                       ;SALTO ALL'ETICHETTA JUMP (line 19)

	        MOV		R3,#5        ;QUINDI QUESTO COMANDO VIENE SALTATO

	 JUMP   ADD		R0,R2,R3     ;R0= R2+R3 = 3


    ;SALTO CONDIZIONATO

          ;CASO 1

      		MOV		R1, #2
      		MOV		R2,#3
      		CMP		R1,R2
      		BNE		JUMP             ;SALTO ALL'ETICHETTA JUMP SE R1 != R2 (NE = NOT EQUAL)

      		MOV		R3,#5            ;QUINDI QUESTO COMANDO VIENE SALTATO

         JUMP   ADD		R0,R2,R3         ;R0= R2+R3 = 3 (PERCHE LA CONDIZIONE EQ E' VERA)

         ;CASO 2

                MOV		R1, #2
      		MOV		R2,#3
      		CMP		R1,R2
      		BEQ		JUMP          ;SALTO ALL'ETICHETTA JUMP SE R1=R2 (EQ = EQUAL)

      		MOV		R3,#5         ;QUINDI QUESTO COMANDO NON VIENE SALTATO

         JUMP	ADD		R0,R2,R3      ;R0= R2+R3 = 8 (PERCHE LA CONDIZIONE EQ E' FALSA)


  ;COSTRUTTO	IF/ELSE - SFRUTTA IL SALTO CONDIZIONATO

      		MOV		R0,#5
      		MOV		R1,#6

      		CMP		R0,R1        ;CONFRONTO R0 E R1

      		BNE		ELSE	     ;SE NON SONO UGUALI ESEGUO L'ETICHETTA ELSE
      		SUB		R2,R1,R0     ;SE SONO UGUALI ESEGUO SUB E SALTO AL TERMINE,ALTRIMENTI ESEGUIREBBE ANCHE ADD
      		B		ENDIF
       ELSE	ADD		R2,R0,R1
                ENDIF


  ;CICLO FOR

                MOV		R0,#0
      		MOV		R1,#0

          FOR	CMP		R0,#10       ;CONDIZIONE COMPARO RO A 10
      		BGE		STOP         ;SE RO <= 10 ESCO DAL CICLO
      		ADD		R1,R1,#5
      		ADD		R0,R0,#1     ;INCREMENTO L'ITERATORE
      		B		FOR          ;SALTO CHE MI RIPORTA AL CICLO
          STOP                               ; ALLA FINE AVRO' RO=10 E R1=50


  ;CICLO WHILE

                MOV		R0,#2
      		MOV		R1,#0

      WHILE	CMP		R0,#20       ;CONDIZIONE COMPARO R0 A 20
      		BGT		STOP         ;APPENA RO > 20 MI FERMO
      		ADD		R0,R0,#2     ;OGNI GIRO AGGIUNGO 2 A R0
      		ADD		R1,R1,#1     ;CONTO QUANTI CICLI FACCIO CON UN REGISTRO D'APPOGGIO
      		B		WHILE        ;SALTO DI NUOVO AL COCLO
      STOP                                   ;TERMINO APPENA SI VERIFICA LA TERMINAZIONE RO>20


  ;SWITCH/CASE

                MOV		R0,#1
        	MOV		R1,#0
		
        	;CASE 1
        	CMP		R0, #0
        	MOV		R1,#0
        	ADD		R1,R1,#3
        	BEQ		STOP
		
        	;CASE 2
        	CMP		R0,#1       ;NELL'ESEMPIO MI TROVO AL CASO 2, QUINDI R1=5
        	MOV		R1,#0
        	ADD		R1,R1,#5
        	BEQ		STOP
		
        	;CASE 3
        	CMP		R0,#2
        	MOV		R1,#0
        	ADD		R1,R1,#7
        	BEQ		STOP
		
        	;DEFAULT
        	MOV		R1,#8       ;SE NON RIENTRO NEGLI ALTRI CASI ESEGUO QUESTO
          STOP
