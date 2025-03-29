;Get user input
.model small
.stack 100h
.data
msg db "Enter the number : $"
n1 db 0 ; store user input value

.code
start:
mov ax,@data
mov ds,ax

mov dx,offset msg ;print the message
mov ah,09h
int 21h

mov ah,01h ;01h-read the input
int 21h
mov n1,al

mov dl,0ah  ;0ah for next line
mov ah,02h  ;for Enter
int 21h

mov dl,n1  ;print the value
mov ah,02h
int 21h

mov ax,4c00h
int 21h

end start