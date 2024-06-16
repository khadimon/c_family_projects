/*
gcc Omp.c -o om -lm -fopenmp && ./om
*/

#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <string.h> /* For strlen */
#include <omp.h>
#include "timer.h"

char IMG[] = "IMG/Vel.ppm"; //Choose what image you want to process, it has to be ppm
char ROOT[] = "IMG/"; //used to save new image
int width, height, max_color, size; //global variables

double sobel_h[] = {-1, 0, 1, -2, 0, 2, -1, 0, 1}; //sobel horizontal matrix
double sobel_v[] = {1, 2, 1, 0, 0, 0, -1, -2, -1}; //sobel vertical matrix

int Threshold = 155; //parameter that controls how lenient the program is when finding edges

char* concat(const char *s1, const char *s2) //Used to combine strings, used to save new images
{
    char *result = malloc(strlen(s1) + strlen(s2) + 1); // +1 for the null-terminator
    strcpy(result, s1);
    strcat(result, s2);
    return result;
}

unsigned char* READ(){ //reads ppm image data and turns into into modifiable data
    FILE*fp = fopen(IMG, "r"); //opens the img in c
    char header[3];

    //reads headers that ppm images contains and puts them into their appropriate variables
    fscanf(fp, "%s", header);
    fscanf(fp, "%d %d %d", &width, &height, &max_color);

    //prints headers and amount of pixels
    //printf("Width: %d\nHeight: %d\nMax Color: %d\nPixels: %d\n", width, height, max_color, width*height);

    size = width * height * 3; //had to use 3 to consider rgb values
    unsigned char *data = (unsigned char *) malloc(size * sizeof(unsigned char));

    fread(data, sizeof(unsigned char), size, fp); // reads img data and puts it into the data variable 
    return data;
}

void WRITE(unsigned char* data, char name[]){ //used to save data onto a new image
    char* NMG = concat(ROOT, name); //combines the dir and the name chosen to save image
    FILE *fp = fopen(NMG, "wb"); // opens new image data

    //headers needed for ppm images
    fprintf(fp, "P6\n");
    fprintf(fp, "%d %d\n", width, height);
    fprintf(fp, "%d\n", max_color);

    //write chosen data into the image
    fwrite(data, 3 * height, width, fp);

    //closes the file
    fclose(fp);
}

double MASK(unsigned char* data, int i, double sobel[]){ //used in conjunction with filters such as the sobel filter
    int j;
    double sum = 0; // used to store the sum of the kernel
    double mask[] = {0, 0, 0, 0, 0, 0, 0, 0, 0}; //used to store the information of the kernel
    int pixel = 3; //as rgb are stored seperately, we need to move in increments of 3
    int w = width * 3;// width also has to be multiplied by three due to the seperation of rgb

    //attempt at fitting the data into the 3x3 kernel
    mask[0] = data[i - pixel - w] * sobel[0];
    mask[1] = data[i - w] * sobel[1];
    mask[2] = data[i + pixel - w] * sobel[2];
    mask[3] = data[i -pixel] * sobel[3];
    mask[4] = data[i] * sobel[4];
    mask[5] = data[i + pixel] * sobel[5];
    mask[6] = data[i - pixel + w] * sobel[6];
    mask[7] = data[i + w] * sobel[7];
    mask[8] = data[i + pixel + w] * sobel[8];
    
    //if values of out of range, set them to zero
    for(j = 0; j < 9; j++) if(mask[j] == 0 || mask[j] > size) mask[j] = 0;

    //adds the kernel values together 
    for(j = 0; j < 9; j++) sum = sum + mask[j];
    
    return sum;
}

unsigned char* Sobel(int rank, int commSize, unsigned char* data){ //sobel filter math
    int rgb;//used to cycle between rgb values

    int local_start = rank * (size) / commSize;
    int start = local_start;

    int local_end = (rank+1) * (size+1) / commSize;

    int pixel = 3; //as rgb are stored seperately, we need to move in increments of 3
    double sum_h, sum_v, mag; //stores the sums of the kernels and the magnitude

    unsigned char *newData = (unsigned char *) malloc(size * sizeof(unsigned char)/commSize); //save data space for new image

    for(local_start; local_start < local_end; local_start+=pixel){
        sum_h = MASK(data, local_start, sobel_h);
        sum_v = MASK(data, local_start, sobel_v);

        //use pythagorean thereom, because this is a triangle for some reason  
        mag = pow(sum_h, 2) + pow(sum_v, 2);
        mag = sqrt(mag);
        
        if(mag > Threshold) for(rgb=0; rgb < pixel;rgb++) newData[local_start-start-1-rgb] = 255; //if edge, set rgb to 255 which is white
        
        else for(rgb=0; rgb < pixel;rgb++) newData[local_start-start-1-rgb] = 0; //else leave it black
    }
    return newData;
}

int main(int argc, char* argv[]){
    int Thread_Num; 
    char name[] = "Bleh2.ppm"; //Choose name for new image
    unsigned char* data = READ(); //reads img
    double start, finish;
    int split, i,j;

    Thread_Num = atoi(argv[1]);

    unsigned char *newData = (unsigned char *) malloc(size * sizeof(unsigned char) /Thread_Num);

    /*Timer start*/
    GET_TIME(start);

    split = size/Thread_Num; 
    #pragma omp parallel private(newData) num_threads(Thread_Num)
    {
        newData = Sobel(omp_get_thread_num(), Thread_Num, data);
        
        #pragma omp barrier
        #pragma omp for
        for (i = 0; i < Thread_Num; i++) {
            #pragma omp critical     
            {
            for(j = 0; j < size/Thread_Num; j++){
                data[i*split+j] = newData[j];
            }
            }
        }
    }
    WRITE(data, name);
    GET_TIME(finish);
    printf("Time taken: %f seconds\n", (finish-start));
    return 0;
}