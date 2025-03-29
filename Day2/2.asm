;write an assembly language programe to subtract numbers and display the result.

.model small
.stack 100h

.data
n db 5
m db 3 

.code
start:

mov ax,@data
mov ds,ax

mov dl,n ;dl=5
sub dl,m ;dl=5-3=2
add dl,48 ;dl=2+48=50

mov ah,09h;for String
mov ah,02h
int 21h;for integer

mov ax,4c00h
int 21h

end start