#include <stdio.h>
#include <unistd.h>

int	main(void) {
	char	a[4] = {0, };

	scanf("%d", (int *)&a[0]);

	printf("0x%x, 0x%x, 0x%x, 0x%x\n", a[0], a[1], a[2], a[3]);

	printf("%d\n", *(int *)a);

	char	x = a[3] >> 4;
	printf("0x%x\n", x);

 // 아니 intel arm 둘 다 리틀 엔디언이잖아

	return 0;
}
