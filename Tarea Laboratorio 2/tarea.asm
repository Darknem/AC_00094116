        org     100h

        section .text

        mov     AL, "N"
        mov     BL, "M"
        mov     CL, "V"
        mov     DL, "M"

        mov     [200h], AL
        mov     [201h], BL
        mov     [202h], CL
        mov     [203h], DL

        ;Direccionamiento directo
        mov     AX, [200h]

        ;Direccionamiento indirecto por registro
        mov     BX, 201h
        mov     CX, [BX]

        ;Direccionamiento indirecto base + índice
        mov     DX, [BX+SI]

        ;Direccionamiento relativo por registro
        mov     DI, [SI+203h]



        int     20h