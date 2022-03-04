

ORG 100h

  
Two: 
MOV AL,input 
MOV Ah,0 
MOV BL,2  
DIV BL
CMP AH,0 
JNE Three
LEA SI,MESSAGE2 
CALL Print


     
Three: 
MOV AL,input
MOV Ah,0 
MOV BL,3 
DIV BL 
CMP AH,0 
JNE Five
LEA SI,MESSAGE3 
CALL Print
 


Five: 
MOV AL,input 
MOV Ah,0
MOV BL,5 
DIV BL  
CMP AH,0  
JNE Ten
LEA SI,MESSAGE5 
CALL Print
  


Ten: 
MOV AL,input
MOV Ah,0 
MOV BL,10
DIV BL
CMP AH,0 
JNE Exit
LEA SI,MESSAGE10 
CALL Print

Exit:
MOV AH,4CH 
INT 21H        
         
  
Print PROC 
  MOV CX,32
  MOV AH, 0Eh
GO:LODSB
  INT 10h
  LOOP GO
  RET  
Print ENDP



 
         
RET

input DB 15
MESSAGE2 DB 'The number can be divided by 2',13,10
MESSAGE3 DB 'The number can be divided by 3',13,10
MESSAGE5 DB 'The number can be divided by 5',13,10
MESSAGE10 DB 'The number can be divided by 10',13,10