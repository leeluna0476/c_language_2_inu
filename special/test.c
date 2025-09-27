#include <stdio.h>

int	pad_upper_bits(int n) {
	int x = (~0x00) + (!n); // 3
	x = x << (0x20 + (~n + 1)); // 7
	return x;
}

void	print_bin(int x) {
	for (int i = 31; i >= 0; --i) {
		printf("%d", (x >> i) & 1);
	}
	printf("\n");
}

int	main(void) {
	for (int i = 0; i <= 32; ++i) {
		print_bin(pad_upper_bits(i));
	}

	return 0;
}
