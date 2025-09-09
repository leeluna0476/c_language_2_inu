#include <stdio.h>

int	main() {
	unsigned char	a = 0xf0;
	unsigned char	b = 0x0f;

	printf("a: 0x%x\n", a); // expected: 0xf0 (1)
	printf("~a: 0x%x\n", ~a); // expected: 0xffffffffffffff0f why: 1 byte (char) a promoted to 8 byte (2)
							  // wrong: 0xffffff0f why:
	printf("a=~a: 0x%x\n", a=~a); // expected: 0x0f why: (2) assigned to 1 byte (char) a and leave only last 1 byte

	return 0;
}
