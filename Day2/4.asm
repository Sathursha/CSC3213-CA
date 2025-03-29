;write an assembly language programe to devision numbers and display the result.

.model small
.stack 100h

.data
n db 6
m db 3
r db ? 

.code
start:

mov ax,@data
mov ds,ax

mov ah,00  ;ah is stroring reminder value
mov al,n   ;al=6
div m
mov r,ah

mov dl,al  ;dl=2
add dl,48  ;al=2+48=50
mov ah,09h ;for String
mov ah,02h
int 21h
 
mov dl,10  ;for next line
mov ah,08h


mov ah,09h;for String
mov ah,02h
int 21h;for integer

mov ax,4c00h
int 21h

end start