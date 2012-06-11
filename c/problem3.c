/*
* Project Euler Problem 3:
*  
* The factors of 13195 are 5, 7, 13 and 29.
*
* What is the largest prime factor of the number 600851475143 ?
*/

#include <stdio.h>

int main (void) {

	long long int n = 600851475143LL;
	long long int factor = 2;
	long long int maxPrime = 1;

	// First handle the case where n is divisible by 2
	while (n % factor == 0) {
		maxPrime = factor;
		n /= factor;
	}

	// Now check divisiblity by odds from 3 on up
	factor = 3;
	while (n > 1) {
		while (n % factor == 0) {
			maxPrime = factor;
			n /= factor;
		}
		factor += 1;
	}	

	printf("%lld\n", maxPrime);

    return 0;
}
