// SPDX-License-Identifier: BSD-3-Clause

#include <string.h>
#include <stdio.h>
#include "graded_test.h"

extern void print_reverse_string(const char *src, int len, char *dest);

static int test_reverse_simple(void)
{
	char src[] = "abc";
	char dest[10] = {0};

	print_reverse_string(src, strlen(src), dest);

	return strcmp(dest, "cba") == 0;
}

static int test_reverse_special(void)
{
	char src[] = "abc!@#";
	char dest[10] = {0};

	print_reverse_string(src, strlen(src), dest);

	return strcmp(dest, "#@!cba") == 0;
}

static int test_reverse_long(void)
{
	char src[] = "reverseme!";
	char dest[32] = {0};

	print_reverse_string(src, strlen(src), dest);

	return strcmp(dest, "!emesrever") == 0;
}

static struct graded_test all_tests[] = {
	{ test_reverse_simple, "test_reverse_simple", 33 },
	{ test_reverse_special, "test_reverse_special", 33 },
	{ test_reverse_long, "test_reverse_long", 34 },
};

int main(void)
{
	run_tests(all_tests, sizeof(all_tests) / sizeof(all_tests[0]));
	return 0;
}
