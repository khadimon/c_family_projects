#include <iostream>
#include <thread>
#include <chrono>

using namespace std;

int counter = 0;

void increment() {
    for (int i = 0; i < 100000; ++i) {
        cout << "Like Thread " << this_thread::get_id() << " is working" << endl;
        int temp = counter;
        this_thread::sleep_for(chrono::microseconds(1));
        counter = temp + 1;
    }
}

int main() {
    thread threadA(increment);
    thread threadB(increment);

    threadA.join();
    threadB.join();

    cout << "Final counter value: " << counter << endl;

    return 0;
}

