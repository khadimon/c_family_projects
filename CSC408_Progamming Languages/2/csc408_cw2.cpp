// Khadichabonu Valieva
// w10118633
// CSC 408 - Classwork 2 - problem 2

#include <iostream>
using namespace std;

int main() {
    short s = 0x1012;
    char *byte_ptr = (char*)&s;

    if (byte_ptr[0] == 0x12 && byte_ptr[1] == 0x10) {
        cout << "Little Endian" << endl;
    } else if (byte_ptr[0] == 0x10 && byte_ptr[1] == 0x12) {
        cout << "Big Endian" << endl;
    } else {
        cout << "Unknown Endian" << endl;
    }

    return 0;
}
