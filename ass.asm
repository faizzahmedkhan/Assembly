.model small
.stack 100h
.data
.code
Main proc

Mov dl,'F'
Mov ah,2
INT 21h
Mov dl,'a'
Mov ah,2
INT 21h
Mov dl,'i'
Mov ah,2
INT 21h
Mov dl,'z'
Mov ah,2
INT 21h
Mov dl,' '
Mov ah,2
INT 21h
Mov dl,'A'
Mov ah,2
INT 21h
Mov dl,'h'
Mov ah,2
INT 21h
Mov dl,'m'
Mov ah,2
INT 21h
Mov dl,'e'
Mov ah,2
INT 21h
Mov dl,'d'
Mov ah,2
INT 21h
Mov dl,' '
Mov ah,2
INT 21h
Mov dl,'K'
Mov ah,2
INT 21h
Mov dl,'h'
Mov ah,2
INT 21h
Mov dl,'a'
Mov ah,2
INT 21h
Mov dl,'n'
Mov ah,2
INT 21h
Mov ah,4CH
INT 21h
Main endp
End Main