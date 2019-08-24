# x64_shellcode_tutorial
A training course

## Building
All the building process can be classifed as the following commands:  

Assemble the `.s` file into the `.bin` file (executable)
```
make bin
```
View the machine code (shellcode)
```
make shellcode
```
Compile the `.c` file and test the machine code ( shellcode )
```
make cbin && ./[filename].c.bin
```

You can clean the `*.bin`, `*.o`, ... by using `make clean`

