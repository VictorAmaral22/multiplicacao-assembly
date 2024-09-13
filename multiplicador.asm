.data 
 num1: db #01h
 num2: db #01h
 cont: db #00h
 result: db #00h
.enddata

INICIO:	
 lda num2
 jz ZERO_CASE

 lda num1
 jz ZERO_CASE

 add cont
 sta cont
 jmp MULT_LOOP

 ZERO_CASE:
  sta cont
  jmp FIM

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





