#include <iostream>
#include <cstring>
#include <cstdlib>

void secureFunction(const char* input) {
    char buffer[10];
    if (strlen(input) >= sizeof(buffer)) { // Boundary check
        std::cerr << "Input is too large for buffer" << std::endl;
        return;
    }
    strncpy_s(buffer, sizeof(buffer), input, _TRUNCATE); // Correctly using strncpy_s
    std::cout << "Buffer content: " << buffer << std::endl;
}

void secureStringConcat(const char* str1, const char* str2) {
    char buffer[20];
    buffer[0] = '\0'; // Initialize to empty string

    // Correct use of strncat_s
    if (strncat_s(buffer, sizeof(buffer), str1, sizeof(buffer) - 1) != 0) {
        std::cerr << "Error concatenating string 1" << std::endl;
        return;
    }
    if (strncat_s(buffer, sizeof(buffer), str2, sizeof(buffer) - strlen(buffer) - 1) != 0) {
        std::cerr << "Error concatenating string 2" << std::endl;
        return;
    }

    std::cout << "Concatenated string: " << buffer << std::endl;
}

void secureDynamicMemory() {
    char* ptr = (char*)malloc(10);
    if (ptr == nullptr) { // Memory allocation check
        std::cerr << "Memory allocation failed" << std::endl;
        return;
    }
    strncpy_s(ptr, 10, "ShortStr", _TRUNCATE); // Corrected strncpy_s usage
    std::cout << "Dynamic buffer content: " << ptr << std::endl;
    free(ptr);
}

// Simulated stack canary check function
void simulateStackCanary() {
    unsigned int canary = 0xDEADBEEF; // Canary value
    unsigned int localVar = 0;
    if (canary != 0xDEADBEEF) {
        std::cerr << "Stack overflow detected!" << std::endl;
        exit(1);
    }
}

int main() {
    char input[50];
    std::cout << "Enter a string: ";
    std::cin >> input;

    simulateStackCanary();
    secureFunction(input);
    secureStringConcat(input, "ExtraText");
    secureDynamicMemory();

    return 0;
}
