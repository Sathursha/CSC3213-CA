;write an assembly language programe to multiplicate numbers and display the result.

.model small
.stack 100h

.data
n db 2
m db 3 

.code
start:

mov ax,@data
mov ds,ax

mov al,n ;al=2
mul m;a1=2*3=6
add dl,48 ;dl=6+48=54

mov ah,09h;for String
mov ah,02h
int 21h;for integer

mov ax,4c00h
int 21h

end start