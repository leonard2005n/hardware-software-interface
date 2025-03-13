// SPDX-License-Identifier: BSD-3-Clause

#include <stdio.h>
#include <string.h>
#include <stdlib.h>

#include "delete_first.h"

char *delete_first(char *string, char *pattern)
{
	/**
	 * TODO: Implement this function
	 */

	char *s = strdup(string);
	char *p = strstr(s, pattern);

	if (p) {
		char *aux = strdup(p + strlen(pattern));
		strcpy(p, aux);
	}

	return s;
}
