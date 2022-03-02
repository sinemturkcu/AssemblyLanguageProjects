
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
#start=Emulation_Kit.exe#         

MOV DX,2000h	; first DOT MATRIX digit
	MOV BX, 0   

MAINLOOP:
	MOV SI, 0
	MOV CX, 5

NEXT:
	MOV AL,INIT[BX][SI]
	out dx,al
	INC SI
	INC DX

	CMP SI, 5
	LOOPNE NEXT

	ADD BX, 5
	CMP BX, 40
	JL MAINLOOP 
	
MOV DX,2000h	; first DOT MATRIX digit
MOV AL, 0001000B 
out dx,al		 
;*************
           
check_for_key:
    ; === check for player commands:
    mov     ah, 01h
    int     16h
    

check_for_more_keys:
    mov     ah, 00h
    int     16h

    push    ax
    mov     ah, 01h
    int     16h
    jz      no_more_keys
    pop     ax
    jmp     check_for_more_keys

no_more_keys:
    pop     ax

    



    
         
ret 

INIT DB 0000000B, 0000000B, 0000000B, 0000000B, 0000000B,1110111B, 1000001B, 1111001B, 1111011B, 1000001B, 1011111B, 1011111B, 1010001B, 1010101B, 1000101B, 1111101B, 1000101B, 1010001B, 1010101B, 1010101B, 1100011B, 1000001B, 1011101B, 1011101B, 1011101B, 1001001B, 1000101B, 1011101B, 1100001B, 1101111B, 1000001B, 1010101B, 1010101B, 1010101B, 1111101b, 0000000B, 0000000B, 0000000B, 0000000B, 0000000B



