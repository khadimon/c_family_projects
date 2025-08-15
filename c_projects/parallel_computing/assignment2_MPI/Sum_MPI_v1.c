
#include <stdio.h>
#include <math.h>
#include <stdlib.h> /*Needed for atoi*/
#include <mpi.h>


double SUM(int rank, int size, int n);

int main(int argc, char* argv[]){
    double Pi = 0.0;
    int comm_sz;
    int my_rank;
    int n=atoi(argv[1]);
    double start, finish;
    double New_Pi = 0.0;


    MPI_Init(NULL, NULL);
    MPI_Comm_size(MPI_COMM_WORLD, &comm_sz);
    MPI_Comm_rank(MPI_COMM_WORLD, &my_rank);
    MPI_Barrier(MPI_COMM_WORLD);
    start = MPI_Wtime();
    Pi = SUM(my_rank, comm_sz, n);
    if (my_rank != 0) {
        MPI_Send(&Pi, 1, MPI_DOUBLE, 0, 0, MPI_COMM_WORLD);
    } 
    else {
        New_Pi = Pi;
        int i;
        for (i = 1; i < comm_sz; i++) {
            MPI_Recv(&Pi, 1, MPI_DOUBLE, i, 0, MPI_COMM_WORLD, MPI_STATUS_IGNORE);
            New_Pi += Pi;
        }
        finish = MPI_Wtime(); 
        printf("Sum: %.06f\nElapsed time: %e\n", New_Pi, finish-start);
    }
    
    MPI_Finalize();
}

double SUM(int rank, int size, int n) {
    double sum= 0.0;

    int local_start = rank * (n + 1) / size;
    int local_end = (rank + 1) * (n + 1) / size;

    if (rank == size - 1) {
        local_end = n + 1;
    }
    for (int i = local_start; i < local_end; i++) {
        sum += pow(-1, i) / (2 * i + 1);
    }
    return sum * 4;
}
