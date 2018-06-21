#include "grid.h"

struct Grid Grid_new()
{
	struct Grid g;
	for (int i = 0; i < GRID_SIZE; ++i)
		for (int j = 0; j < GRID_SIZE; ++j)
			g.elem[i][j] = 0;

	return g;
}
