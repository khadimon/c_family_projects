#include <iostream>
#include <stack>
#include <thread>
#include <mutex>
#include <condition_variable>

using namespace std; 

std::stack<int> myStack;
std::mutex mtx;
std::condition_variable cv;
const int MAX_SIZE = 10;

// Function to check if the stack is not empty
bool isStackNotEmpty() {
    return !myStack.empty();
}

void producer() {
    for (int i = 0; i < MAX_SIZE; ++i) {
        std::unique_lock<std::mutex> lock(mtx);
        myStack.push(i);
        std::cout << "Push: " << i << std::endl;
        cv.notify_all(); // Notify consumer
    }
}

void consumer() {
    for (int i = 0; i < MAX_SIZE; ++i) {
        std::unique_lock<std::mutex> lock(mtx);
        cv.wait(lock, isStackNotEmpty); // Wait until stack is not empty
        std::cout << "Pop: " << myStack.top() << std::endl;
        myStack.pop();
    }
}

int main() {
    std::thread t1(producer);
    std::thread t2(consumer);

    t1.join();
    t2.join();

    return 0;
}