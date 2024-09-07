dosseg
.model small
.stack 100h
.data
var1 db 'hello$'
var2 db 'gals$'
.code
Main proc
;Addition
mov dl,1
mov bl,2
add dl,bl
add dl,48
mov ah,2
INT 21h

;Subtraction
mov dl,3
sub dl,1
add dl,48
mov ah,2
INT 21h
Mov ah,4CH
INT 21h

; Take input to add two numbers
mov ah,1
INT 21h
mov dx,ax
mov ah,1
INT 21h
add dx,ax
sub dx,48
mov ah,2
INT 21h
Mov ah,4CH
INT 21h

;Variable to enter a key
mov ax,@data
mov ds,ax
mov dx,offset var1
mov ah,9 
INT 21h
mov dx,10
mov ah,2
INT 21h
mov dx,13
mov ah,2
INT 21h
mov dx,offset var2
mov ah,9
INT 21h
Mov ah,4CH
INT 21h
Main endp
End Main