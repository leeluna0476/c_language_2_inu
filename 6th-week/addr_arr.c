#include <stdio.h>
#include <stdint.h>

int main() {
	int	i[3][4] = { 100, 200, 300, 400, 500, };
	intptr_t pi = (intptr_t)i;

	printf("i = %ld\n", (intptr_t)i - pi);
	printf("i + 1 = %ld\n\n", (intptr_t)(i + 1) - pi);

	printf("&i = %ld\n", (intptr_t)&i - pi);
	printf("&i + 1 = %ld\n\n", (intptr_t)(&i + 1) - pi);

	printf("i[0] = %ld\n", (intptr_t)i[0] - pi);
	printf("i[1] = %ld\n", (intptr_t)i[1] - pi);
	printf("i[2] = %ld\n\n", (intptr_t)i[2] - pi);

	printf("i[0] + 1 = %ld\n", (intptr_t)(i[0] + 1) - pi);
	printf("i[1] + 1 = %ld\n", (intptr_t)(i[1] + 1) - pi);
	printf("i[2] + 1 = %ld\n\n", (intptr_t)(i[2] + 1) - pi);

	printf("&i[0] = %ld\n", (intptr_t)&i[0] - pi);
	printf("&i[1] = %ld\n", (intptr_t)&i[1] - pi);
	printf("&i[2] = %ld\n\n", (intptr_t)&i[2] - pi);

	printf("&i[0] + 1 = %ld\n", (intptr_t)(&i[0] + 1) - pi);
	printf("&i[1] + 1 = %ld\n", (intptr_t)(&i[1] + 1) - pi);
	printf("&i[2] + 1 = %ld\n\n", (intptr_t)(&i[2] + 1) - pi);

	printf("&i[0][0] = %ld\n", (intptr_t)(&i[0][0]) - pi);
	printf("&i[1][0] = %ld\n", (intptr_t)(&i[1][0]) - pi);

	printf("&i[0][0] + 1 = %ld\n", (intptr_t)(&i[0][0] + 1) - pi);
	printf("&i[1][0] + 1 = %ld\n", (intptr_t)(&i[1][0] + 1) - pi);

	printf("i[0][0] = %d\n", i[0][0]);
}
