#include <stdio.h>

#define WIDTH 8
#define HEIGHT 8

void print_letter(char data[8], const char charset[2]) {
	for (int i = 0; i < HEIGHT; ++i) {
		for (int j = WIDTH - 1; j >= 0; --j) {
			if ((data[i] >> j) & 1)
				printf("%c", charset[0]);
			else
				printf("%c", charset[1]);
		}
		printf("\n");
	}
}

int main() {
//	int zero[2] = {0x3c428181, 0x8181423c}; // 8*8 character
	char zero[HEIGHT] = { 0x3c, 0x42, 0x81, 0x81, 0x81, 0x81, 0x42, 0x3c };
	print_letter(zero, "* ");
}
