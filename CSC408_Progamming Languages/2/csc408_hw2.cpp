/*
-------- HOMEWORK 2 --------
Khadichabonu Valieva (w10118633)
Dr. Sengupta
CSC408
10 September 2024
*/

#include <iostream>
using namespace std;


void problem1();
void problem2();
void problem4();

int displayMenu(){
    int choice;
    cout << "\n================= MENU =================\n";
    cout << "1. Problem 1\n";
    cout << "2. Problem 2\n";
    cout << "4. Problem 4\n";
    cout << "7. Exit\n";
    cout << "========================================\n";
    
    cout << "Enter your choice: ";
    cin >> choice;
    return choice;
}

int main(){
    int choice;

    while(true){
        choice=displayMenu();

        switch(choice){
            case 1:
                problem1();
                break;
            case 2:
                problem2();
                break;
            case 4:
                problem4();
                break;
            case 7:
                cout << "Exiting..." << endl;
                return 0;
            default:
                cout << "\033[31mInvalid input. Please try again.\033[0m" << endl;
        }
    }
    return 0;
}

/* 1. Write a program which will print consecutively letters A-Z (both upper and lower case) as you input 
each of the numbers 1-26? */

void problem1(){
    int num;
    while (true){
        cout << "Enter a number (1-26) or 0 to exit: ";
        cin >> num;

        if (num==0) {
            break;
        }
        
        if (num>=1 && num<=26){
            char uppercase = 'A' + (num-1);
            char lowercase = 'a' + (num-1);

            cout << "Uppercase: " << uppercase << "\nLowercase: " << lowercase << endl;
        }
        else {
            cout << "\033[31mPlease enter a number between 1 and 26\033[0m" << endl;
        }
    }
}

/* 2. In a 3x3 array using a loop print characters (not integers) of 1-9. Now write function to ask user to 
input (‘X’ or ‘O’) in each of the selected position 1-9 in the array. If the user selects X in one of the 
positions then it would be O in the next selection and print the 3x3 array in each of the total 9 insertions. 
No repetition in any position is allowed. */
void problem2() {
    char grid[3][3];
    char player = 'X';  // Start with player 'X'

    // Initialize the grid with characters '1' to '9'
    char ch = '1';
    for (int i = 0; i < 3; ++i) {
        for (int j = 0; j < 3; ++j) {
            grid[i][j] = ch++;
        }
    }

    // Print initial grid
    cout << "\nCurrent Grid: \n";
    for (int i = 0; i < 3; ++i) {
        for (int j = 0; j < 3; ++j) {
            cout << grid[i][j] << " ";
        }
        cout << endl;
    }

    // Loop for 9 turns (alternating between X and O)
    for (int turn = 0; turn < 9; ++turn) {
        // Let the current player make a move
        int pos;
        while (true) {
            cout << "\nPlayer " << player << ", choose a position (1-9): ";
            cin >> pos;

            // Map the position (1-9) to a grid index
            int row = (pos - 1) / 3;
            int col = (pos - 1) % 3;

            // Check if the position is valid and unoccupied
            if (pos >= 1 && pos <= 9 && grid[row][col] >= '1' && grid[row][col] <= '9') {
                grid[row][col] = player;  // Place X or O
                break;
            } else {
                cout << "\033[31mInvalid position. Try again.\033[0m";
            }
        }

        // Print the updated grid after each move
        cout << "\nCurrent Grid: \n";
        for (int i = 0; i < 3; ++i) {
            for (int j = 0; j < 3; ++j) {
                cout << grid[i][j] << " ";
            }
            cout << endl;
        }

        player = (player == 'X') ? 'O' : 'X';  // Alternate between X and O
    }

    cout << "\033[32mAll positions filled!\033[0m" << endl;

}

/* 4. Write the code for a game called “ASCII Strength” of a four-letter word selected by Player 1 followed by a 
four-letter word selected by Player 2. The result would be the sum of the ASCII value of each of the letters of 
the selected words and whoever has higher sum (called ASCII strength) wins.  */
void problem4() {
    cout << "---- Welcome to game 'ASCII STRENGTH!'-----" << endl;
    string word1, word2;
    cout << "Player 1, enter a 4-letter word: ";
    cin >> word1;

    while (word1.length()!=4){
        cout << "\033[31mInvalid input. Please try again!\033[0m" << endl;
        cout << "Player 1, enter a 4-letter word: ";
        cin >> word1;
    }

    cout << "Player 2, enter a 4-letter word: ";
    cin >> word2;

    while (word2.length()!=4){
        cout << "\033[31mInvalid input. Please try again!\033[0m" << endl;
        cout << "Player 2, enter a 4-letter word: ";
        cin >> word2;
    }

    int sum1, sum2 = 0;
    for (int i=0; i<word1.length(); ++i){
        sum1 += int(word1[i]);
    }
    int strength1 = sum1;
    cout << "ASCII strength of Player 1's word (" << word1 << "): " << strength1 << endl;
    
    for (int i=0; i<word2.length(); ++i){
        sum2 += int(word2[i]);
    }
    int strength2 = sum2;
    cout << "ASCII strength of Player 2's word (" << word2 << "): " << strength2 << endl;

    if (strength1 > strength2) {
        cout << "\33[32mPlayer 1 wins!\33[0m" << endl;
    } 
    else if (strength1 < strength2) {
        cout << "\33[32mPlayer 2 wins!\33[0m" << endl;
    }
    else {
        cout << "\33[32mIt's a tie!\33[0m" << endl;
    }
}

