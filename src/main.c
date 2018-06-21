#include <assert.h>
#include <limits.h>
#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include "sudoku.h"
#include "array.h"

int main(void) {
  printf("Welcome to sudoku solver!\n");
  struct sudoku *s = read_sudoku();
  print_sol(s);
  if (solve(s)) {
    print_sol(s);
  } else {
    printf("Could not solve the puzzle using search and backtracking :(\n");
  }
  sudoku_destroy(s);
}

