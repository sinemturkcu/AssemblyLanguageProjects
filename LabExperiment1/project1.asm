; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

MOV AX,0001 
MOV BX,2000H  
MOV CX,05

write:
  MOV [BX],AL
  ADD AL,1
  ADD BX,1
  LOOP write

ret
