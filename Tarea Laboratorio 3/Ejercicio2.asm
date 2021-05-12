;Factorial de un número

        org     100h

        section .text

        mov     CX, 5
        mov     AX, 1

condic:  mul     CX
        loop    condic


        int     20h
