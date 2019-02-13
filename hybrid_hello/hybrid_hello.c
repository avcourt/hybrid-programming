#include <stdio.h>
#include "mpi.h"
#include <omp.h>

int main(int argc, char *argv[]) {
  int numprocs;
  int rank;
  int tid = 0;
  int np = 1;

  MPI_Init(&argc, &argv);
  MPI_Comm_size(MPI_COMM_WORLD, &numprocs);
  MPI_Comm_rank(MPI_COMM_WORLD, &rank);

  #pragma omp parallel default(shared) private(tid, np)
  {
    np = omp_get_num_threads();
    tid = omp_get_thread_num();
    printf("Hello from thread %2d out of %d from process %d\n",
           tid, np, rank);
  }

  MPI_Finalize();
}
