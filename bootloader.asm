org 0x7C00
BITS 16

start:
    cli
    call set_video_mode
    call clear_screen

    mov si, msg
    call print_string
    ret

clear_screen:
    mov ah, 0x06
    mov al, 0
    mov bh, 0x07
    mov cx, 0x0000
    mov dx, 0x184F
    int 0x10
    ret

set_video_mode:
    mov ah, 0x00
    mov al, 0x0003 ; 80x25
    int 0x10

print_string:
    mov ah, 0x0E

.next_char:
    lodsb
    cmp al, 0
    je .done
    int 0x10
    jmp .next_char

.done:
    ret

msg db '>>> Carregando a ISO...', 0

times 510-($-$$) db 0 ;
dw 0xAA55