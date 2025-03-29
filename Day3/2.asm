;Get user input and add 2 numbers

.model small
.stack 100h
.data

msg1 db "Enter the number 1: $"
msg2 db "Enter the number 2: $"
msg3 db "Total of number1 and number2 : $"

n1 db 0 ; store user input value
n2 db 0
n3 db 0

.code
start:
mov ax,@data
mov ds,ax

mov dx,offset msg1 ;print the message1   dx-only store string
mov ah,09h
int 21h

mov ah,01h ;01h-read the input1
int 21h

mov dl,al  ;dl-addition,sub
sub dl,48
mov n1,dl
 
mov dl,0ah  ;0ah for next line
mov ah,02h  ;for Enter
int 21h
 
mov dx,offset msg2 ;print the message2
mov ah,09h
int 21h

mov ah,01h ;01h-read the input2
int 21h

mov dl,al
sub dl,48
mov n2,dl

mov dl,0ah  ;0ah for next line
mov ah,02h  ;for Enter
int 21h
 
mov dx,offset msg3 ;print the message3
mov ah,09h
int 21h

mov dl,n1
add dl,n2
add dl,48
 
mov ah,02h
int 21h

mov ax,4c00h
int 21h

end start