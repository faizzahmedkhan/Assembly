dosseg
.model small
.stack 100h
.data
msg1 db 'The Pin you entered is incorrect$'
msg2 db 'The Pin you entered is correct$'
.code
Main proc
mov ax,@data
mov ds,ax
mov dl,'3'
mov ah,1
int 21h
cmp dl,al
cmp al,dl
je L1
mov dx,offset msg1
mov ah,9
int 21h
mov ah,4CH
int 21h
L1:
mov dx,offset msg2
mov ah,9
int 21h
mov ah,4CH
int 21h
main endp
end main