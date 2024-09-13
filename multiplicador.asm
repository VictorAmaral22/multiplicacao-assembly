.data 
 num1: db #00h
 num2: db #04h
 cont: db #00h
 result: db #00h
.enddata

INICIO:	
 lda num2
 jz FIM

 lda num1
 jz FIM

 add cont
 sta cont

 MULT_LOOP:
  lda num2
  add result
  sta result

  lda cont
  add #0ffh
  sta cont

  jz FIM
  jmp MULT_LOOP

FIM:
 hlt

.endcode





