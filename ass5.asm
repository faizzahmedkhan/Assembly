; dosseg
; .model small
; .stack 100h
; .data
; arr1 db 'a','c','F','w'
; .code
; Main proc
; mov ax,@data
; mov ds,ax
; mov si,offset arr1
; mov cx,4
; L1:
; mov dx,[si]
; mov ah,2
; int 21h
; inc si
; loop L1
; mov ah,4CH
; int 21h
; main endp
; end main

; dosseg
; .model small
; .stack 100h
; .data
; var1 db 100 dup('$')
; .code
; Main proc
; mov ax,@data
; mov ds,ax
; mov si,offset var1
; L2:
; mov ah,1
; int 21h
; cmp cl,13
; je progm
; mov [si],cl
; inc si
; jmp L2
; progm:
; mov dx,offset var1
; mov ah,9
; int 21h
; mov ah,4CH
; int 21h
; main endp
; end main

dosseg
.model small
.stack 100h
.data
buffer db 100 dup('$')  
.code
main proc
    mov ax, @data      
    mov ds, ax

    mov si, offset buffer

read_loop:
    mov ah, 1           
    int 21h             

    cmp al, 13          
    je display_message  

    ; Check if the character is alphabetical
    cmp al, 'A'         
    jb not_alpha
    cmp al, 'Z'         
    jbe store_char      
    cmp al, 'a'         
    jb not_alpha        
    cmp al, 'z'         
    ja not_alpha        

store_char:
    mov [si], al        
    inc si              
    jmp read_loop       

not_alpha:
    jmp read_loop       

display_message:
    mov dx, offset buffer
    mov ah, 9           
    int 21h             

    mov ah, 4Ch         
    int 21h             

main endp
end main
