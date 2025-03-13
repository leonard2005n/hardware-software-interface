// SPDX-License-Identifier: BSD-3-Clause

#include <stddef.h>
#include <stdlib.h>
#include "pointers.h"

int my_strcmp(const char *s1, const char *s2)
{
	while (*s1 == *s2) {
		if (*s1 == '\0')
			return 0;
		s1++;
		s2++;
	}

	if (*s1 > *s2)
		return 1;
	else
		return -1;
}

void *my_memcpy(void *dest, const void *src, size_t n)
{	
	unsigned char *d = (unsigned char*) dest;
	const unsigned char *s = (const unsigned char*) src;
	unsigned char *aux = malloc(n);
	for (int i = 0; i < n; i++) {
		*(aux + i) = *(s + i);
	}
	for (int i = 0; i < n; i++) {
		*(d + i) = *(aux + i);
	}
	free(aux);
	return dest;
}

char *my_strcpy(char *dest, const char *src)
{
	int i = 0;
	while (*(src + i) != '\0') {
		*(dest + i) = *(src + i);
		i++;
	}
	*(dest + i) = '\0';

	return dest;
}
