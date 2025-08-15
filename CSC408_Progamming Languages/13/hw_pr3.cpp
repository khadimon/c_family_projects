#include <iostream>
#include <thread>
#include <mutex>
#include <chrono>

using std::cout;
using std::endl;
using std::thread;
using std::ref;

class BankAccount {
private:
    double balance;
    std::mutex mtx;

public:
    BankAccount(double initial_balance) : balance(initial_balance) {}

    void deposit(double amount) {
        std::lock_guard<std::mutex> lock(mtx);
        balance += amount;
        cout << "Deposited: $" << amount << ", New Balance: $" << balance << endl;
    }

    bool withdraw(double amount) {
        std::lock_guard<std::mutex> lock(mtx);
        if (balance >= amount) {
            balance -= amount;
            cout << "Withdrew: $" << amount << ", New Balance: $" << balance << endl;
            return true;
        } else {
            cout << "Failed to withdraw: $" << amount << ", Insufficient funds. Current Balance: $" << balance << endl;
            return false;
        }
    }

    double get_balance() {
        std::lock_guard<std::mutex> lock(mtx);
        return balance;
    }
};

void deposit_transactions(BankAccount &account) {
    double deposits[] = {10, 20, 30, 40, 50};
    for (int i = 0; i < 5; ++i) { 
        account.deposit(deposits[i]);
        std::this_thread::sleep_for(std::chrono::milliseconds(100)); 
    }
}

void withdrawal_transactions(BankAccount &account) {
    double withdrawals[] = {20, 30, 40, 50, 60};
    for (int i = 0; i < 5; ++i) { 
        account.withdraw(withdrawals[i]);
        std::this_thread::sleep_for(std::chrono::milliseconds(100));
    }
}

int main() {
    BankAccount account(100.0); 

    thread deposit_thread(deposit_transactions, ref(account));
    thread withdrawal_thread(withdrawal_transactions, ref(account));

    deposit_thread.join();
    withdrawal_thread.join();

    double final_balance = account.get_balance();
    double interest = final_balance * 0.02; 
    final_balance += interest;

    cout << "Final account balance at the end of the day: $ " << final_balance << endl;

    return 0;
}
