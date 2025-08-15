#include <iostream>
#include <thread>
#include <chrono>

using namespace std;

void makeSum() {
    long integer = 0;
    for (int i = 1; i <= 1000000; i++) {
        integer += i;
    }
}

void makeMult() {
    long integer = 1;
    for (int i = 1; i <= 1000000; i++) {
        integer *= i; 
    } 
}

int main() {
    auto startTimeForSequential = chrono::high_resolution_clock::now();
    makeSum();
    makeMult();
    auto endTimeForSequential = chrono::high_resolution_clock::now();
    long millisecondsForSequential = chrono::duration_cast<chrono::milliseconds>(endTimeForSequential - startTimeForSequential).count();
    cout << "Time taken for the sequential execution: "<< millisecondsForSequential << " milliseconds"<<endl;
    
    auto startTimeForThreaded = chrono::high_resolution_clock::now();

    thread t1(makeSum);
    thread t2(makeMult);
    
    t1.join(); 
    t2.join();
    auto endTimeForThreaded = chrono::high_resolution_clock::now();
    auto durationT = chrono::duration_cast<chrono::microseconds>(endTimeForThreaded - startTimeForThreaded); 

    cout << "Time taken for multiprocess computation:"<<durationT.count() << " micro seconds" << endl;
    return 0; 
}