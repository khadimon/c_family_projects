//
//  main.cpp
//  football_championship
//
//  Created by Khadichabonu Valieva on 21/01/23.
//

#include <iostream>
using namespace std;


int binarySearch (int arr[], int size, int key){

    int first = 0, last = size - 1, mid;
    cout << "\nMid scores: ";
    while (first <= last) {
        mid = (first + last) / 2;
        cout << arr[mid] << " ";
        
        if (arr[mid] == key) return mid + 1;
        else if (arr[mid] < key) first = mid + 1;
        else last = mid - 1;
    }
    return -1;
}


int main(int argc, const char * argv[]) {
    cout << "Enter the number of team: ";
    int no, score, result;
    cin >> no;
    int teams[no];
    cout << "Enter the score: \n";
    for (int idx=0; idx<no; idx++){
        cin >> teams[idx];
    }
    cout << "Enter the score to be searched: ";
    cin >> score;
    
    result = binarySearch(teams, no, score);
    if (result == -1) cout << "\nScore not found";
    else cout << "\nScore found for the team \n\n";
    return 0;
}
