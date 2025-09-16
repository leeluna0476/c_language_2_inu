#include <stdio.h>
// 1. my 1st code
//int	main(void) {
//	char *A = "\xA1\xE1 \xA1\xE1 \xA1\xE1 \xA1\xE1 \xA1\xE1";
//	char *B = "\xA1\xE1          \xA1\xE1";
//
//	for (int i = 0; i < 4; ++i) {
//		if (i == 0 || i == 3) {
//			printf("%s\n", A);
//		}
//		else {
//			printf("%s\n", B);
//		}
//	}
//	return 0;
//}

// 2. prof.'s idea
//unsigned char pattern[4][5] = {{1, 1, 1, 1, 1}, {...}, ...};
//-> code는 바꿀 필요가 없다. 데이터(패턴)만 바꾸면 된다.
//-> general한 code 가능.

// 3. prof.'s idea
int main() {
//	int pattern = 0xfc63f;
//	for (int i = 19; i >= 0; --i) {
//		if ((pattern >> i) & 1) {
//			printf("%c%c ", 0xa1, 0xe1);
//		}
//		else {
//			printf("   ");
//		}
//		if (!(i % 5)) {
//			printf("\n");
//		}
//	}

	char pattern[4] = {0x1f, 0x11, 0x11, 0x1f};
	for (int i = 0; i < 4; ++i) {
		for (int j = 4; j >= 0; --j) {
		    if ((pattern[i] >> j) & 1)
		        printf("%c%c ", 0xa1, 0xe1);
		    else
		        printf("   ");
		}
		printf("\n");
	}
}
