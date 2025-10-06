#include <stdio.h>

int	main() {
	int a[2][3][4] = { [0][1][2] = 3, [1][1][1] = 7 };
	int	i, j, k;
	for (i = 0; i < 2; ++i) {
		for (j = 0; j < 3; ++j) {
			for (k = 0; k < 4; ++k) {
				printf("%d ", a[i][j][k]);
			}
			printf("\n");
		}
		printf("\n");
	}
}
