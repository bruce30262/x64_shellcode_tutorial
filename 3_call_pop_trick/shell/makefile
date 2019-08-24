bin: shell.s
	nasm -f elf64 -o shell.o shell.s && ld -m elf_x86_64 -o shell.bin shell.o

shellcode: shell.s
	nasm -f bin -o code shell.s && xxd -i code

cbin: shell.c
	gcc -z execstack -o shell.c.bin shell.c

.PHONY: clean
clean:
	rm *.o *.bin code
