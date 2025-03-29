// SPDX-License-Identifier: BSD-3-Clause

#include <stdio.h>

#include "vector_max.h"

int vector_max(int *v, int len)
{
	int max = v[0];
	unsigned int i;
	
	i = 0;
	loop:
	i++;
	if (i >= len)
		goto end;
	if (v[i] < max)
		goto loop;
	max = v[i];
	goto loop;
	end:
	return max;
}
