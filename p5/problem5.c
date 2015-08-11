/*
* Project Euler Problem 5:
*
* 2520 is the smallest number that can be divided by each of the numbers from 
* 1 to 10 without any remainder.
* 
* What is the smallest positive number that is evenly divisible by all of the 
* numbers from 1 to 20?
*/

#include <stdio.h>

int main(void) {

	const int limit = 20;
	unsigned int i, j;

	// Test only multiples of 20
	for (i = limit; ; i += limit) {
		for (j = limit; j > 0; j--) {
			// If not evenly divisble, stop checking
			if (i % j != 0) break;
		}
		// Since we stop when numbers don't divide evenly, 
		// getting to 0 is success
		if (j == 0) break;
	}

	printf("%d\n", i);

	return 0;	
}
