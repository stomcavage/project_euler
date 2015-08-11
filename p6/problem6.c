/*
* Project Euler problem 6
*
* The sum of the squares of the first ten natural numbers is,
* 
* 	1^2 + 2^2 + ... + 10^2 = 385
*  
* The square of the sum of the first ten natural numbers is,
* 
* 	(1 + 2 + ... + 10)^2 = 55^2 = 3025
* 
* Hence the difference between the sum of the squares of the first ten natural 
* numbers and the square of the sum is 3025 - 385 = 2640.
* 
* Find the difference between the sum of the squares of the first one hundred 
* natural numbers and the square of the sum.
*/

#include <stdio.h>

#define LIMIT 100

int main(void) {

	long int sum, square;

	sum = (LIMIT * (LIMIT + 1)) / 2;
	square = (LIMIT * (LIMIT + 1) * ((2 * LIMIT) + 1)) / 6;

	printf("%ld\n", (sum * sum) - square);

	return 0;
}
