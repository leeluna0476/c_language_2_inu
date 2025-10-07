#include <stdio.h>

int	main() {
	char	s[100];
	scanf("%[a-z]", s);
	char	map['z' - 'a' + 1] = { 0, };
	int	i = 0;
	while (s[i]) {
		++map[s[i] - 'a'];
		++i;
	}

	for (i = 0; i < sizeof(map); ++i) {
		printf("%c: %d\n", i + 'a', map[i]);
	}
}
