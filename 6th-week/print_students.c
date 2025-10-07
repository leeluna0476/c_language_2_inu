#include <stdio.h>

int	main() {
	char students[2][3][50];
	int i, j, k;
	for (i = 0; i < 2; ++i) {
		printf("학생 %d의 이름: ", i + 1);
		scanf("%49s", students[i][0]);
		printf("학생 %d의 학과: ", i + 1);
		scanf("%49s", students[i][1]);
		printf("학생 %d의 학번: ", i + 1);
		scanf("%49s", students[i][2]);
	}

	for (i = 0; i < 2; ++i) {
		printf("학생 %d\n", i + 1);
		for (j = 0; j < 3; ++j) {
			printf("\t%s\n", students[i][j]);
		}
	}
}
