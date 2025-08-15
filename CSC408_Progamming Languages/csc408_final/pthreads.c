#include <stdio.h>
#include <pthread.h>
#include <semaphore.h>

#define TOTAL_TICKETS 400
#define AGENTS 10
int totalTickets = TOTAL_TICKETS;
sem_t semaphore;

void* sellTickets(void* arg) {
    int agent = *((int*)arg);
    while (1) {
        sem_wait(&semaphore);
        if (totalTickets > 0) {
            totalTickets--;  
            printf("Agent %d sold a ticket. Remaining: %d\n", agent, totalTickets);
        } else {
            sem_post(&semaphore); 
            break;
        }
        sem_post(&semaphore);
    }
    return NULL;
}

int main() {
    pthread_t threads[AGENTS]; 
    int agentIds[AGENTS]; 
    sem_init(&semaphore, 0, 1);
    for (int i = 0; i < AGENTS; i++) {
        agentIds[i] = i + 1;  
        pthread_create(&threads[i], NULL, sellTickets, &agentIds[i]);}
    for (int i = 0; i < AGENTS; i++) {
        pthread_join(threads[i], NULL);
    }
    printf("All tickets have been sold!\n");
    sem_destroy(&semaphore);

    return 0;
}
