#include <stdio.h>

int	mstrlen(char s[]) {
	int	i = 0;
	while (s[i]) {
		++i;
	}
	return i;
}

int main() {
	printf("%d\n", mstrlen("hello"));
}
