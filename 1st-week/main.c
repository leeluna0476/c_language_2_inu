#include <stdio.h>

int	main(void) {
	char	a[4] = {0, };

	printf("Enter a number: ");
	scanf("%d", (int *)&a[0]);

	for (int i = 0; i < 4; ++i) {
		printf("a[%d]: 0x%x, &a[%d]: %p\n", i, a[i], i, &a[i]);
	}

	printf("0x%x\n", *(int *)a);

	return 0;
}
