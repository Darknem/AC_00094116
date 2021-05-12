;Suma de numeros de carnet: 00094116

        org     100h

        section .text

        mov     BX, 0
        mov     CL, n

        repetir:    
        mov AL, lista[BX]
        add suma, AL
        add BX, 1    

        loop repetir

        ret
        n db 8
        lista db 0,0,0,9,4,1,1,6
        suma db 0 


        int 20h
