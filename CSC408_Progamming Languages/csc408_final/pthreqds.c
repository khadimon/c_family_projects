#include <stdio.h>
#include <stdlib.h>
#include <pthread.h>
#include <semaphore.h>
#include <unistd.h>

#define BUFFER_SIZE 10
#define NUM_CHARACTERS 20
char arr[BUFFER_SIZE];
int in = 0, out = 0; 
sem_t empty, full;     
pthread_mutex_t mutex; 

void* producer(void* arg) {
    for (int i = 0; i < NUM_CHARACTERS; i++) {
        char c = 'A' + (rand() % 26);  
        sem_wait(&empty);  
        pthread_mutex_lock(&mutex);  
        arr[in] = c;  
        printf("Producer produced: %c\n", c);
        in = (in + 1) % BUFFER_SIZE; 
        pthread_mutex_unlock(&mutex);  
        sem_post(&full); 
        usleep(100000);  
    }
    return NULL;
}

void* consumer(void* arg) {
    while (1) {
        sem_wait(&full); 
        pthread_mutex_lock(&mutex);  

        char c = arr[out];  
        printf("Consumer consumed: %c\n", c);
        out = (out + 1) % BUFFER_SIZE; 
        pthread_mutex_unlock(&mutex);  
        sem_post(&empty);  
        usleep(200000); 
    }
    return NULL;
}

int main() {
    pthread_t prod, cons1, cons2;
    sem_init(&empty, 0, BUFFER_SIZE);
    sem_init(&full, 0, 0);          
    pthread_mutex_init(&mutex, NULL); 
    pthread_create(&prod, NULL, producer, NULL);
    pthread_create(&cons1, NULL, consumer, NULL);
    pthread_create(&cons2, NULL, consumer, NULL);
    pthread_join(prod, NULL);
    pthread_join(cons1, NULL);
    pthread_join(cons2, NULL);
    sem_destroy(&empty);
    sem_destroy(&full);
    pthread_mutex_destroy(&mutex);
    return 0;
}
