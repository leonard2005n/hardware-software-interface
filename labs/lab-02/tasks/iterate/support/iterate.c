// SPDX-License-Identifier: BSD-3-Clause

#include <stdio.h>

#include "iterate.h"
#include "array.h"

void print_chars(void)
{
	/**
	 * TODO: Implement function
	 */
	unsigned char *char_ptr = (unsigned char *)v;
	for (int i = 0; i < sizeof(v) / sizeof(*char_ptr); i++) {
		printf("%p -> 0x%x\n", char_ptr + i, *(char_ptr + i));
	}

	printf("-------------------------------\n");
}

void print_shorts(void)
{
	/**
	 * TODO: Implement function
	 */
	unsigned short *char_ptr = (unsigned short *)v;
	for (int i = 0; i < sizeof(v) / sizeof(*char_ptr); i++) {
		printf("%p -> 0x%x\n", char_ptr + i, *(char_ptr + i));
	}

	printf("-------------------------------\n");
}

void print_ints(void)
{
	/**
	 * TODO: Implement function
	 */
	int *char_ptr = v;
	for (int i = 0; i < sizeof(v) / sizeof(*char_ptr); i++) {
		printf("%p -> 0x%x\n", char_ptr + i, *(char_ptr + i));
	}

	printf("-------------------------------\n");
}
