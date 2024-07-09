clear

if [[ $1 == '' || $2 == '' ]]
then
	echo "Coloque os dois parometros!"
	echo "EX: $0 asm1.s asm.bin"
	echo "asm1.s => Arquivo que tem o Codigo ASM"
	echo "asm.bin  => Nome do Arquivo que será Compilado (vai criar)"
	exit
fi

nasm -f bin $1 -o $2
#qemu-system-i386 -fda $2
qemu-system-x86_64 -drive format=raw,file=$2