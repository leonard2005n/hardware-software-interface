// SPDX-License-Identifier: BSD-3-Clause

#include <stdio.h>

#include "binary_search.h"

int binary_search(int *v, int len, int dest)
{
	int start = 0;
	int end = len - 1;
	int middle;

	wow:
	if (start > end)
		goto end;
	middle = (start + end) / 2;
	if (v[middle] == dest)
		goto ok;
	if (dest < v[middle])
		goto statement;
	start = middle + 1;
	goto wow;
	statement:
	end = middle - 1;
	goto wow;
	ok:
	return middle;
	end:
	return -1;
}
