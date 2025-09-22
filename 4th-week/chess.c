#include <stdio.h>

int	main(void) {
	int	n;
	scanf("%d", &n);

	const char	*pattern = "BW";
	for (int i = 0; i < n; ++i) {
		for (int j = 0; j < n; ++j) {
			printf("%c ", pattern[(i + j) & 1]);
		}
		printf("\n");
	}
	return 0;
}
