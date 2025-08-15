#include <iostream>
#include <thread>
#include <mutex>
#include <condition_variable>
#include <atomic>

const int array_size = 10;
char charArray[array_size];
std::atomic<int> count(0); // To keep track of the number of characters 
int head = 0; // Index for the producer to write
int tail = 0; // Index for the consumer to read
std::mutex mtx;
std::condition_variable cv;

void functionOne() {
    for (int i = 0; i < 100; ++i) {
        std::unique_lock<std::mutex> lock(mtx);

        while (count.load() >= array_size) {
            cv.wait(lock); 
        }

      
        charArray[head] = 'A' + (i % 26);
        std::cout << "Produced: " << charArray[head] << " at pos. " << head << "\n";


        head = (head + 1) % array_size;
        count.fetch_add(1); 

        cv.notify_all(); 
    }
}

void functionTwo() {
    for (int i = 0; i < 100; ++i) {
        std::unique_lock<std::mutex> lock(mtx);

        while (count.load() <= 0) {
            cv.wait(lock); 
        }

        char consumed = charArray[tail];
        std::cout << "Consumed: " << consumed << " from pos. " << tail << "\n";

        tail = (tail + 1) % array_size;
        count.fetch_sub(1); 
        cv.notify_all(); 
    }
}

int main() {
    std::thread producer(functionOne);
    std::thread consumer(functionTwo);

    producer.join();
    consumer.join();

    return 0;
}
