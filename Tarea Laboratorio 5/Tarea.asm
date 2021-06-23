org 100h

    section .text
    xor AX, AX
    xor SI, SI
    xor BX, BX
    xor CX, CX
    xor DX, DX

    mov SI, 0
    mov DI, 0d

    ;Orden en que serán llamados los modos
    call modotexto
    call movercursor
    call nombre
    call movercursor2
    call nombre2
    call movercursor3
    call apellido
    call movercursor4
    call apellido2
    call esperartecla
    call exit

    modotexto:
        mov AH, 0h
        mov AL, 03h
        int 10h
        ret
    movercursor:
        mov AH, 02h ;establecer posición del cursor
        mov DH, 10 ;fila en la que se mostrará el cursor
        mov DL, 20 ;columna en la que se mostrará el cursor
        mov BH, 0h ;número de página que se mostrará (0 hasta 7. Se tomará la 0)
        int 10h
        ret
    movercursor2:
        mov AH, 02h
        mov DH, 12
        mov DL, 20
        mov BH, 0h
        int 10h
        ret
    movercursor3:
        mov AH, 02h
        mov DH, 14
        mov DL, 20
        mov BH, 0h
        int 10h
        ret
    movercursor4:
        mov AH, 02h
        mov DH, 16
        mov DL, 20
        mov BH, 0h
        int 10h
        ret  
    nombre:
        mov AH, 09h ;escribe cadena en pantalla según la posición del cursor
        mov DX, nombre ;cadena que se imprimirá
        int 21h 
        ret
    nombre2: 
        mov AH, 09h 
        mov DX, nombre 
        int 21h 
        ret
    apellido:
        mov AH, 09h ;escribe cadena en pantalla según la posición del cursor
        mov DX, apellido ;cadena que se imprimirá
        int 21h 
        ret
    apellido2:
        mov AH, 09h
        mov DX, apellido2
        int 21h 
        ret
    esperartecla:
        mov AH, 00h ;espera buffer del teclado para avanzar a la siguiente instrucción
        int 16h
        ret
    exit:
        int 20h

    section.data

    nombre DB "Nelson$"
    nombre2 DB "Mauricio$"
    apellido DB "Villalta$"
    apellido2 DB "Mossa$"

