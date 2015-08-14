#include <stdio.h>
#include <stdbool.h>

bool isPrime(int n) {
  int i;

  if (n % 2 == 0 || n % 3 == 0) {
    return false;
  }
  else {
    i = 5;
    while (i * i <= n) {
      if (n % i == 0 || n % (i + 2) == 0) {
        return false;
      }
      i += 6;
    }
  }

  return true;
}

int main(void) {
  // Skip 2 and 3 when searching for primes
  int numPrimesFound = 2;
  int candidate = 3;

  while (numPrimesFound < 10001) {
    candidate += 2;
    if (isPrime(candidate)) {
      numPrimesFound++;
    }
  }

  printf("%d\n", candidate);

  return 0;
}
