#include <stdio.h>

int	main(void) {
//	char map[7] = "ABCDEFG"; // ABCDEF 필요 없음.
//	바보 아녀? ㅋㅋ
	int N;
	scanf("%d", &N);
	if (N >= 1 && N <= 7)
		printf("%c\n", 'A' + N - 1); // 생각해보면 당연한 것을 kia
//		printf("%c\n", map[N - 1]);
	return 0;
}
