# bootloader
feito em ARM

---

- `org 0x7C00` é tipo o endereço padrão de onde a BIOS carrega
- A utilização de 16 bits para a criação é meio que para rodar mais suave e "minimizar" o tamanho do codigo (compatibilidade), já que a BIOS mais antigas e Processadores x86 já utilizam 16 bits nativamente.
- Não houve a utilização de syscall no codigo, ARM trabalha direto com o hardware não com um Sistema Operacional em si, já que os syscall são funções do OS

---

https://en.wikipedia.org/wiki/INT_10H </br>
https://en.wikipedia.org/wiki/BIOS_interrupt_call </br>
https://www.qemu.org/docs/master/system/target-i386.html
