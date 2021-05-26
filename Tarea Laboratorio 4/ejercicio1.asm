org 100h

        section .text
        
        mov BP,arr
        call separar

        int 20h
        
        section .data
arr db 17,34,41,44,53,68,71,84,99,102,0xA

separar:
    xor SI,SI

while:
    mov AL,[BP+SI]
    mov dl, al
    
    cmp AL,0xA
    je end

    mov bl,01h
    and AL,bl
    
    cmp AL,01h  
    jnz separar
    
    mov [0320H+SI],dl
    
    inc SI
    jmp while

separar:
    mov [0300H+SI],dl

    inc SI
    jmp while

end:
ret