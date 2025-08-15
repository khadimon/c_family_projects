#include <stdio.h>
#include <stdlib.h>

#define MAX 10

typedef struct {
    void* data[MAX]; 
    int front, rear, size;  
} Queue;

void initQueue(Queue* q) {
    q->front = 0;
    q->rear = -1;
    q->size = 0;
}

int enqueue(Queue* q, void* item) {
    if (q->size == MAX) {
        printf("Queue is full!\n");
        return -1;
    }
    q->rear = (q->rear + 1) % MAX; 
    q->data[q->rear] = item;
    q->size++;
    return 0;
}

void* dequeue(Queue* q) {
    if (q->size == 0) {
        printf("Queue is empty!\n");
        return NULL; 
    }
    void* item = q->data[q->front];
    q->front = (q->front + 1) % MAX;
    q->size--;
    return item;
}

void* front(Queue* q) {
    if (q->size == 0) {
        printf("Queue is empty!\n");
        return NULL;
    }
    return q->data[q->front]; 
}

void displayQueue(Queue* q) {
    if (q->size == 0) {
        printf("Queue is empty!\n");
        return;
    }
    int i = q->front;
    printf("Queue elements: ");
    for (int j = 0; j < q->size; j++) {
        printf("%d ", *(int*)q->data[i]);
        i = (i + 1) % MAX;
    }
    printf("\n");
}

int main() {
    Queue q;
    initQueue(&q);
    int a = 10, b = 20, c = 30, d = 40;
    enqueue(&q, &a);
    enqueue(&q, &b);
    enqueue(&q, &c);
    enqueue(&q, &d);
    displayQueue(&q);
    printf("Front element: %d\n", *(int*)front(&q));
    printf("Dequeuing: %d\n", *(int*)dequeue(&q));
    displayQueue(&q);
    printf("Dequeuing: %d\n", *(int*)dequeue(&q));
    printf("Dequeuing: %d\n", *(int*)dequeue(&q));
    displayQueue(&q);
    return 0;
}
