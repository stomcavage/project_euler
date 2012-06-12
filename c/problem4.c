/*
* Project Euler problem 4:
* 
* A palindromic number reads the same both ways. The largest palindrome made 
* from the product of two 2-digit numbers is 9009 = 91 99.
*
* Find the largest palindrome made from the product of two 3-digit numbers.
*/

#include <stdio.h>

int isPalindrome(int forward) {

 	int reverse = 0;
	int n = forward;

 	while (n > 0) {
      reverse = reverse * 10 + (n % 10);
      n /= 10;
	}

	return forward == reverse ? 1 : 0;
}

int main(void) {

	int answer = 0;
	int a, b, c;

	for (a = 999; a >= 100; a--) {

		for (b = 999; b >= a; b--) {

			c = a * b;

			if (c < answer) {
				break;
			}

			if (isPalindrome(c)) {
				answer = c;
			}
		}
	}

	printf("%d\n", answer);

	return 0;
}
