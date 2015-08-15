#include <stdio.h>
#include <stdlib.h>

#define NUM_SIZE 1000
#define SEQ_SIZE 13

int* readNumber() {
  FILE *input;
  int *num;
  int i;

  input = fopen("num.txt", "r");

  if (input == NULL) {
    printf("Error reading file\n");
    exit(EXIT_FAILURE);
  }

  num = malloc(sizeof(int) * NUM_SIZE);

  if (num == NULL) {
    printf("Error allocating space for number\n");
    exit(EXIT_FAILURE);
  }

  for (i = 0; i < NUM_SIZE; i++) {
    if (fscanf(input, "%1d", &num[i]) != 1) {
      printf("Error reading from file\n");
      exit(EXIT_FAILURE);
    }
  }

  fclose(input);

  return num;
}

long int maxSequence(int *num) {
  int i, j;
  long int product, max;

  max = 0;

  for (i = 0; i <= NUM_SIZE - SEQ_SIZE; i++) {
    product = 1;

    for (j = 0; j < SEQ_SIZE; j++) {
      product = product * num[i + j];
    }

    if (product > max) {
      max = product;
    }
  }

  return max;
}

int main() {
  int *num;

  num = readNumber();

  printf("%ld\n", maxSequence(num));

  free(num);

  return 0;
}
