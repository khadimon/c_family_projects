//
// Example MPI program (sum_mpi.cpp)
//
// Author: Brian G. Olson (olsonbg@gmail.com)
// Date: Sun 01 Oct 2017 05:40:12 PM CDT
//
// Last modified: Sun 01 Oct 2017 11:03:29 PM CDT
//
// Compile:
//   mpicxx -O2 -o sum_mpi sum_mpi.cpp
//
// Interactive session with 1 node, 10 processes, for 10 minutes:
//   srun -p node -n 10 -N 1 --pty --mem 10000 -t 10:00 bash
//
// Run:
//   mpirun -c 4 ./sum_mpi
//
// Finish:
//   exit
//
#include <stdlib.h>
#include <stdio.h>
#include <iostream>
#include <mpi.h>

// Global variables
int mpirank;
int mpisize;
int N = (1024*1024);
int M = 10000;


void vector_add(double *a, double *b, double *c, int rank, int stride) {

	for(int i = rank; i < N; i += stride) {
		for(int k=0;k<M;k++)
			c[i] = a[i]*a[i] + b[i]*b[i] + 0.1*k;
	}
}

int main(int argc, char *argv[]) {
	int is_initialized = 0;
	int root = 0;
	double *a, *b, *c, *rank_c;
	int size = N * sizeof( double );

	a = (double *)malloc( size );
	b = (double *)malloc( size );
	c = (double *)malloc( size );
	rank_c = (double *)malloc( size );

	for( int i = 0; i < N; i++ )
	{
		a[i] = b[i] = i;
		c[i] = rank_c[i] = 0;
	}

	MPI_Init(&argc, &argv);

	MPI_Initialized(&is_initialized);
	if( !is_initialized ) {
		std::cout << "MPI not Initialized" <<std::endl;
		MPI_Abort(MPI_COMM_WORLD, 1);
		exit(EXIT_FAILURE);
	}

	MPI_Comm_size(MPI_COMM_WORLD, &mpisize);
	MPI_Comm_rank(MPI_COMM_WORLD, &mpirank);

	if (mpisize == 0) {
		std::cout << "No processes found!\n";
		MPI_Abort(MPI_COMM_WORLD, 1);
		exit(EXIT_FAILURE);
	}

	double time1;
	time1 = MPI_Wtime();

	// std::cout << "Rank/size: " << mpirank << "/" << mpisize << ".\n";

	vector_add(a, b, rank_c, mpirank, mpisize);

	MPI_Barrier(MPI_COMM_WORLD);
	MPI_Reduce(rank_c, c, N, MPI_DOUBLE, MPI_SUM, root, MPI_COMM_WORLD);

	if(mpirank == root) {
		std::cout << "MPI Threads: " << mpisize << "\n";
		std::cout << "Time: " << MPI_Wtime() - time1 << "\n";

		printf( "c[%d] = %.0f\n",0,c[0] );
		printf( "c[%d] = %.0f\n",N-1, c[N-1] );
	}

	MPI_Finalize();

	free(a);
	free(b);
	free(c);
	free(rank_c);

	exit(EXIT_SUCCESS);
}

