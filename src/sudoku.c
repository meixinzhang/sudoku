#include "sudoku.h"

const int DIM = 9;

static const int EMPTY = 0;
static const char BLANK = '-';
static const int MIN = 1;
static const int MAX = 9;

static const int SUCCESS = 0;
static const int ERROR = -1;
static const int ERASE_EMPTY_CELL = -2;
static const int ERASE_FILLED_CELL = -3;
static const int ERROR_NEXT_CELL = -4;

static const int SQUARE_DIM = 3;

struct sudoku {
  int puzzle[81];
  int sol[81];
};

int fill_cell(struct sudoku *s, int row, int col, int num) {
  if ((s->sol)[row * DIM + col] == EMPTY) {
    for (int i = 0; i < DIM; ++i) {
      int r_cell = (s->sol)[row * DIM + i];
      int c_cell = (s->sol)[i * DIM + col];
      if (r_cell != EMPTY) {
        if (r_cell == num) {
          return ERROR;
        }
      } if (c_cell != EMPTY) {
        if (c_cell == num) {
          return ERROR;
        }
      }
    }
    int sq_top = row / SQUARE_DIM * SQUARE_DIM;
    int sq_left = col / SQUARE_DIM * SQUARE_DIM;
    for (int i = 0; i < SQUARE_DIM; ++i) {
      for (int j = 0; j < SQUARE_DIM; ++j) {
        int sq_cell = (s->sol)[(sq_top + i) * DIM + sq_left + j];
        if (sq_cell != EMPTY) {
          if (sq_cell == num) {
            return ERROR;
          }
        }
      }
    }
    (s->sol)[row * DIM + col] = num;
    return SUCCESS;
  }
  return ERROR; 
}

void choices_cell(const struct sudoku *s, int row, int col, 
                  int choices[], int *num_choices) {
  if ((s->sol)[row * DIM + col] == EMPTY) {
    // a[10] because we want the index to be 0 - 9
    bool a[10] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
    int count = MAX;
    for (int i = 0; i < 9; ++i) {
      int r_cell = (s->sol)[row * DIM + i];
      int c_cell = (s->sol)[i * DIM + col];
      if (r_cell != EMPTY) {
        if (a[r_cell] == 0) {
          a[r_cell] = 1;
          count --;
        }
      } if (c_cell != EMPTY) {
        if (a[c_cell] == 0) {
          a[c_cell] = 1;
          count --;
        }
      }
    }
    int sq_top = row / SQUARE_DIM * SQUARE_DIM;
    int sq_left = col / SQUARE_DIM * SQUARE_DIM;
    for (int i = 0; i < SQUARE_DIM; ++i) {
      for (int j = 0; j < SQUARE_DIM; ++j) {
        int sq_cell = (s->sol)[(sq_top + i) * DIM + sq_left + j];
        if (sq_cell != EMPTY) {
          if (a[sq_cell] == 0) {
            a[sq_cell] = 1;
            count --;
          }
        }
      }
    }
    *num_choices = count; 
    for (int i = 1, temp = 0; i <= DIM; ++i) {
      if (a[i] == 0) {
        choices[temp] = i;
        temp ++;
      }
    }
  } else {
    *num_choices = 0; 
  }
}

// solved_puzzle (s) returns true if s has a valid solution to the
// puzzle, and returns false otherwise. 

bool solved_puzzle(const struct sudoku *s) {
  for (int i = 0; i < DIM; ++i) {
    for (int j = 0; j < DIM; ++j) {
      int r_cell = (s->sol)[i * DIM + j]; 
      int c_cell = (s->sol)[j * DIM + i];
      if ((r_cell == EMPTY) || (c_cell == EMPTY)) {
        return EMPTY;
      } else {
        bool r[10] = {0};
        bool c[10] = {0};
        if (r[r_cell] == 1 || c[c_cell] == 1) {
          return 0;
        } else {
          r[r_cell] = 1;
          c[c_cell] = 1;
        }
      }
    }
  }
  for (int i = 0; i < DIM; i += SQUARE_DIM) {
    for (int j = 0; j < DIM; j += SQUARE_DIM) {
      bool sq[10] = {0};
      for (int k = i; k < (i + SQUARE_DIM); ++k) {
        for (int l = j; l < (j + SQUARE_DIM); ++l) {
          int sq_cell = (s->sol)[k * DIM + l];
          if (sq[sq_cell] == 1) {
            return 0;
          } else {
            sq[sq_cell] = 1;
          }
        }
      }
    }
  }
  return 1;
}

int erase_cell(struct sudoku *s, int row, int col);

// solve (s) solves the Sudoku puzzle by search and backtracking. It 
// mutates the puzzle until its solution is complete and valid. 

bool solve (struct sudoku *s) {
  int row = 0;
  int col = 0;
  bool stop= 1;
  if (solved_puzzle (s) == 0) {
    for (int i = 0; i < DIM && stop; ++i) {
      for (int j = 0; j < DIM; ++j) {
        int cell = (s->sol)[i * DIM + j]; 
        if (cell == EMPTY) {
          row = i;
          col = j;
          stop = 0;
          break;
        }
      }
    }
    int sol[9]= {0};
    int n_sol = 0;
    choices_cell (s, row, col, sol, &n_sol);
    if (n_sol == 0) {
      erase_cell (s, row, col);
      return 0;
    } else {
      for (int i = 0; i < n_sol; ++i) {
        fill_cell (s, row, col, sol[i]);
        if(solve(s))
        {
          return true;
        }
        erase_cell(s,row,col);
      }
      return false;
    }
  }
  return 1;
}


struct sudoku *read_sudoku(void) {
  struct sudoku *s = malloc(sizeof(struct sudoku));
  char c = 0;
  for (int row = 0; row < DIM; ++row) {
    for (int col = 0; col < DIM; ++col) {
      scanf(" %c", &c);
      if (c == BLANK) {
        s->puzzle[row * DIM + col] = 0;
      } else {
        s->puzzle[row * DIM + col] = c - '0';
      }
    }
  }

  // copy puzzle to solution
  reset_sol(s);

  return s;
}

void sudoku_destroy(struct sudoku *s) {
  assert(s);
  free(s);
}

void print_sol(const struct sudoku *s) {
  assert(s);

  printf("\n");
  for (int row = 0; row < DIM; ++row) {
    for (int col = 0; col < DIM; ++col) {
      int num = s->sol[row * DIM + col];
      if (num == EMPTY) {
        printf("%c", BLANK);
      } else {
        printf("%d", num);
      }  
    }
    printf("\n");
  }
  printf("\n");
}

void reset_sol(struct sudoku *s) {
  assert(s);

  for (int row = 0; row < DIM; ++row) {
    for (int col = 0; col < DIM; ++col) {
      s->sol[row * DIM + col] = s->puzzle[row * DIM + col];
    }
  }  
}

// cell_empty(board, row, col) returns true if cell (row,col) is empty on board.
static bool cell_empty(const int board[], int row, int col) {
  assert(board);
  assert(0 <= row && row <= DIM - 1);
  assert(0 <= col && col <= DIM - 1);

  return board[row * DIM + col] == EMPTY;
}

int erase_cell(struct sudoku *s, int row, int col) {
  assert(s);
  assert(0 <= row && row <= DIM - 1);
  assert(0 <= col && col <= DIM - 1);

  if (cell_empty(s->sol, row, col)) {
    return ERASE_EMPTY_CELL;
  }
  if (!cell_empty(s->puzzle, row, col)) {
    return ERASE_FILLED_CELL;
  }
  s->sol[row * DIM + col] = EMPTY;
  return SUCCESS;
}


int next_cell(const struct sudoku *s, int *row, int *col) {
  assert(s);
  assert(row);
  assert(col);

  int choices[9]; //DIM size
  int num_choices = 0;
  for (int i = 0; i < DIM; ++i) {
    for (int j = 0; j < DIM; ++j) {
      if (!cell_empty(s->sol, i, j)) continue;
      choices_cell(s, i, j, choices, &num_choices);
      if (num_choices == 1) {
        *row = i;
        *col = j;
        return SUCCESS;
      }
    }
  }
  return ERROR_NEXT_CELL;
}
