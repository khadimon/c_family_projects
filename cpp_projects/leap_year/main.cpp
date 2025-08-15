//
//  main.cpp
//  kkk
//
//  Created by Khadichabonu Valieva on 25/01/23.
//

#include <iostream>
using namespace std;


int main(int argc, const char * argv[]) {
    int year;
    
    cin >> year;
    if (year %100 == 0)
    {
        if (year %400 == 0){
            cout << "leap year\n";
        }
        else
            cout << "not a leap year\n";
    }
    
    else if (year %100 != 100 && year %4 == 0) {
        cout << "leap year\n";
    }
    
    else
        cout << "not a leap year\n";
    return 0;
}
