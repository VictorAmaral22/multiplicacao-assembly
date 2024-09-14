.data 
 num1: db #08h
 num2: db #00h
 cont: db #00h
 resultado: db #00h
 maior: db #00h
.enddata

INICIO:	
 lda num1
 jz FIM
 lda num2
 jz FIM
 not
 add #01h
 add num1
 jn NUM1_MENOR
 
 NUM2_MENOR:
  lda num2
  sta cont 
  lda num1
  sta maior
  jmp MULT_LOOP
  
 NUM1_MENOR:
  lda num1
  sta cont
  lda num2
  sta maior   
 
 MULT_LOOP:
  lda maior
  add resultado
  sta resultado
  lda cont
  add #0ffh	
  sta cont
  jz FIM
  jmp MULT_LOOP

FIM:
 hlt

.endcode





