// SPDX-License-Identifier: BSD-3-Clause

#include <stdio.h>
#include <string.h>
#include <stdlib.h>

#include "find_max.h"

void *find_max(void *arr, int n, size_t element_size,
				int (*compare)(const void *, const void *))
{
	void *max_elem = arr;

	for (int i = 1; i < n; i++)
		if (!compare(max_elem, arr + i + sizeof(*arr)))
			max_elem  = arr + i + sizeof(*arr);

	return max_elem;
}

int compare(const void *a, const void *b)
{
	int x = *(int *)a;
	int y = *(int *)b;

	if (x > y)
		return 1;
	else 
		return 0;
}
