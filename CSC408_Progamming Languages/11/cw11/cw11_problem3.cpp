#include <iostream>
#include <thread>
#include <mutex>
#include <condition_variable>
#include <chrono>

using namespace std;

class BankAccount {
private:
    int balance;
    mutex mtx;
    condition_variable cv;

public:
    BankAccount() : balance(0) {}

    void addAmount(int money) {
        lock_guard<mutex> lock(mtx);
        balance += money;
        cout << "Added: " << money << ", New Balance: " << balance << endl;
        cv.notify_one();  // Notify one waiting thread
    }

    void withdrawAmount(int amount) {
        unique_lock<mutex> lock(mtx);
        cv.wait(lock, [this]() { return balance > 0; });  // Wait until balance is positive

        if (balance >= amount) {
            balance -= amount;
            cout << "Withdrew: " << amount << ", New Balance: " << balance << endl;
        } else {
            cout << "Cannot withdraw " << amount << ", Balance: " << balance << endl;
        }
    }

    void printBalance() {
        lock_guard<mutex> lock(mtx);
        cout << "Current Balance: " << balance << endl;
    }
};

int main() {
    BankAccount account;

    thread addThread(&BankAccount::addAmount, &account, 100);   
    thread withdrawThread(&BankAccount::withdrawAmount, &account, 50); 

    addThread.join();
    withdrawThread.join();
    account.printBalance();

    return 0;
}
