org 100h
.model small
.stack 100h 
 
.data
x dw 200
y dw 150              
px dw ?
py dw ?
 
count db 2
                        
                        
.code 
main proc
    
mov ax,@data
mov ds,ax

;if count=x
cmp count,1
je dise1
jmp down1

dise1:
mov ah, 0h
mov al ,13h
int 10h
mov al,15
mov ah,0ch

mov dx,50
lp1: 
mov cx,100
lp2: 

    int 10h
    inc cx
    cmp cx,x
    jle lp2
    inc dx
    cmp dx,y 
    jle lp1
    
    mov px,147
    mov py,97
    mov dx,py
    mov al,4
    p_lp1:
    mov cx,px
    p_lp2:
    int 10h
    inc cx
    
    cmp cx,153
    jle p_lp2 
     inc dx
     cmp dx,103
     jle p_lp1
     
    
    jmp exit 
 
down1:
cmp count,2
je dise2
jmp down2
 
dise2:
mov ah, 0h
mov al ,13h
int 10h
mov al,1
mov ah,0ch

mov dx,50
lp11: 
mov cx,100
lp22: 

    int 10h
    inc cx
    cmp cx,x
    jle lp22
    inc dx
    cmp dx,y 
    jle lp11 
    
    
    mov px,144
    mov py,97
    mov dx,py
    mov al,4
    p_lp11:
    mov cx,px
    p_lp22:
    int 10h
    inc cx
    
    cmp cx,150
    jle p_lp22 
     inc dx
     cmp dx,103
     jle p_lp11
      
    mov px,153
    mov py,97
    mov dx,py
    mov al,4
    p_lp111:
    mov cx,px
    p_lp222:
    int 10h
    inc cx
    
    cmp cx,159
    jle p_lp222 
     inc dx
     cmp dx,103
     jle p_lp111
     
   
    jmp exit 


 down2:
 cmp count,3
je dise3
jmp down3
 
dise3:
mov ah, 0h
mov al ,13h
int 10h
mov al,2
mov ah,0ch

mov dx,50
lp111: 
mov cx,100
lp222: 

    int 10h
    inc cx
    cmp cx,x
    jle lp222
    inc dx
    cmp dx,y 
    jle lp111
   
    jmp exit 
    
   down3:
 cmp count,4
je dise4
jmp down4
 
dise4:
mov ah, 0h
mov al ,13h
int 10h
mov al,6
mov ah,0ch

mov dx,50
lp1111: 
mov cx,100
lp2222: 

    int 10h
    inc cx
    cmp cx,x
    jle lp2222
    inc dx
    cmp dx,y 
    jle lp1111
   
    jmp exit   
    
 down4:
 cmp count,5
je dise5
jmp down5
 
dise5:
mov ah, 0h
mov al ,13h
int 10h
mov al,11
mov ah,0ch

mov dx,50
lp11111: 
mov cx,100
lp22222: 

    int 10h
    inc cx
    cmp cx,x
    jle lp22222
    inc dx
    cmp dx,y 
    jle lp11111
   
    jmp exit   
    
 down5:
 cmp count,6
je dise6
jmp down6
 
dise6:
mov ah, 0h
mov al ,13h
int 10h
mov al,14
mov ah,0ch

mov dx,50
lp111111: 
mov cx,100
lp222222: 

    int 10h
    inc cx
    cmp cx,x
    jle lp222222
    inc dx
    cmp dx,y 
    jle lp111111
   
    jmp exit 
    
    down6:
 

exit: 

endp main
  
end