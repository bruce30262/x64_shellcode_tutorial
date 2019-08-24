bin: orw.s
	nasm -f elf64 -o orw.o orw.s && ld -m elf_x86_64 -o orw.bin orw.o

shellcode: orw.s
	nasm -f bin -o code orw.s && xxd -i code

cbin: orw.c
	gcc -z execstack -o orw.c.bin orw.c

.PHONY: clean
clean:
	rm *.bin *.o code
