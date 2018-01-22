org 100h
.model small
.stack 100h 
 
.data
x dw 105
y dw 55             
px dw ?
py dw ?
tot db 0 
count db ?
ap1 db ?
ap2 db ? 
                     
                        
.code 
main proc
    
mov ax,@data
mov ds,ax
start:
  cmp tot,6
  jnl eend
  
RANDGEN:         ; generate a rand no using the system time
RANDSTART:
   MOV AH, 00h  ; interrupts to get system time        
   INT 1AH      ; CX:DX now hold number of clock ticks since midnight      

   mov  ax, dx
   xor  dx, dx
   mov  cx, 7    
   div  cx       ; here dx contains the remainder of the division - from 0 to 9

   ;add  dl, '0'  ; to ascii from '0' to '9'
   mov count,dl
   sub count,30h

   mov count,dl
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
   
   ;small square 31
 mov px,144
    mov py,97
    mov dx,py
    mov al,4
    
    p_lp311:
    mov cx,px
    p_lp322:
    int 10h
    inc cx
    cmp cx,150
    jle p_lp322 
     inc dx
     cmp dx,103
     jle p_lp311 
     
     
      ;small square 32
      
    mov px,153
    mov py,97
    mov dx,py
    mov al,4
    p_lp3111:
    mov cx,px
    p_lp3222:
    int 10h
    inc cx
    
    cmp cx,159
    jle p_lp3222 
     inc dx
     cmp dx,103
     jle p_lp3111
        ;small square 33
           
    mov px,148
    mov py,87
    mov dx,py
    mov al,4
    p_lp31111:
    mov cx,px
    p_lp32222:
    int 10h
    inc cx
    
    cmp cx,154
    jle p_lp32222 
     inc dx
     cmp dx,93
     jle p_lp31111     
   
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
    
         ;small square 41
    mov px,144
    mov py,97
    mov dx,py
    mov al,4
    
    p_lp41:
    mov cx,px
    p_lp411:
    int 10h
    inc cx
    cmp cx,150
    jle p_lp411 
     inc dx
     cmp dx,103
     jle p_lp41 
     
     
      ;small square 42
      
    mov px,153
    mov py,97
    mov dx,py
    mov al,4
    p_lp42:
    mov cx,px
    p_lp422:
    int 10h
    inc cx
    
    cmp cx,159
    jle p_lp422 
     inc dx
     cmp dx,103
     jle p_lp42
     
     
        ;small square 43
           
    mov px,153
    mov py,87
    mov dx,py
    mov al,4
    p_lp43:
    mov cx,px
    p_lp433:
    int 10h
    inc cx
    
    cmp cx,159
    jle p_lp433 
     inc dx
     cmp dx,93
     jle p_lp43
     
        ;small square 44
           
    mov px,144
    mov py,87
    mov dx,py
    mov al,4
    p_lp44:
    mov cx,px
    p_lp444:
    int 10h
    inc cx
    
    cmp cx,150
    jle p_lp444 
     inc dx
     cmp dx,93
     jle p_lp44     
   
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
   
    ;small square 51
    mov px,144
    mov py,97
    mov dx,py
    mov al,4
    
    p_lp51:
    mov cx,px
    p_lp511:
    int 10h
    inc cx
    cmp cx,150
    jle p_lp511 
     inc dx
     cmp dx,103
     jle p_lp51 
     
     
      ;small square 52
      
    mov px,153
    mov py,97
    mov dx,py
    mov al,4
    p_lp52:
    mov cx,px
    p_lp522:
    int 10h
    inc cx
    
    cmp cx,159
    jle p_lp522 
     inc dx
     cmp dx,103
     jle p_lp52
     
          ;small square 53
           
    mov px,148
    mov py,87
    mov dx,py
    mov al,4
    p_lp53:
    mov cx,px
    p_lp533:
    int 10h
    inc cx
    
    cmp cx,154
    jle p_lp533
     inc dx
     cmp dx,93
     jle p_lp53 
        ;small square 54
           
    mov px,153
    mov py,77
    mov dx,py
    mov al,4
    p_lp54:
    mov cx,px
    p_lp544:
    int 10h
    inc cx
    
    cmp cx,159
    jle p_lp544 
     inc dx
     cmp dx,83
     jle p_lp54
     
        ;small square 55
           
    mov px,144
    mov py,77
    mov dx,py
    mov al,4
    p_lp55:
    mov cx,px
    p_lp555:
    int 10h
    inc cx
    
    cmp cx,150
    jle p_lp555 
     inc dx
     cmp dx,83
     jle p_lp55     
   
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
   
    
    
         ;small square 61
    mov px,144
    mov py,97
    mov dx,py
    mov al,4
    
    p_lp61:
    mov cx,px
    p_lp611:
    int 10h
    inc cx
    cmp cx,150
    jle p_lp611 
     inc dx
     cmp dx,103
     jle p_lp61 
     
     
      ;small square 62
      
    mov px,153
    mov py,97
    mov dx,py
    mov al,4
    p_lp62:
    mov cx,px
    p_lp622:
    int 10h
    inc cx
    
    cmp cx,159
    jle p_lp622 
     inc dx
     cmp dx,103
     jle p_lp62
     
     
        ;small square 63
           
    mov px,153
    mov py,87
    mov dx,py
    mov al,4
    p_lp63:
    mov cx,px
    p_lp633:
    int 10h
    inc cx
    
    cmp cx,159
    jle p_lp633 
     inc dx
     cmp dx,93
     jle p_lp63
     
        ;small square 64
           
    mov px,144
    mov py,87
    mov dx,py
    mov al,4
    p_lp64:
    mov cx,px
    p_lp644:
    int 10h
    inc cx
    
    cmp cx,150
    jle p_lp644 
     inc dx
     cmp dx,93
     jle p_lp64 
     
      ;small square 65
           
    mov px,153
    mov py,77
    mov dx,py
    mov al,4
    p_lp65:
    mov cx,px
    p_lp655:
    int 10h
    inc cx
    
    cmp cx,159
    jle p_lp655 
     inc dx
     cmp dx,83
     jle p_lp65
     
        ;small square 66
           
    mov px,144
    mov py,77
    mov dx,py
    mov al,4
    p_lp66:
    mov cx,px
    p_lp666:
    int 10h
    inc cx
    
    cmp cx,150
    jle p_lp666 
     inc dx
     cmp dx,83
     jle p_lp66     
   
        
   
     
    
    down6:
 
    inc tot
    jmp start
    
    
    eend: 
exit: 

endp main
  
end