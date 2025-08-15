#include <iostream>
#include <cstring>
#include <cstdlib>

// Custom strncpy_s implementation
int my_strncpy_s(char* dest, size_t destsz, const char* src, size_t count) {
    if (dest == nullptr || src == nullptr) return -1; // Error: null pointer
    if (destsz == 0) return -1; // Error: destination size is zero

    size_t i;
    for (i = 0; i < count && i < destsz - 1 && src[i] != '\0'; ++i) {
        dest[i] = src[i];
    }
    dest[i] = '\0'; // Null-terminate the destination
    return 0; // Success
}

// Custom strncat_s implementation
int my_strncat_s(char* dest, size_t destsz, const char* src, size_t count) {
    if (dest == nullptr || src == nullptr) return -1; // Error: null pointer
    if (destsz == 0) return -1; // Error: destination size is zero

    size_t dest_len = strlen(dest);
    if (dest_len >= destsz) return -1; // Error: destination buffer too small

    size_t i;
    for (i = 0; i < count && (dest_len + i) < (destsz - 1) && src[i] != '\0'; ++i) {
        dest[dest_len + i] = src[i];
    }
    dest[dest_len + i] = '\0'; // Null-terminate the destination
    return 0; // Success
}

void secureFunction(const char* input) {
    char buffer[10];
    if (strlen(input) >= sizeof(buffer)) { // Boundary check
        std::cerr << "Input is too large for buffer" << std::endl;
        return;
    }
    if (my_strncpy_s(buffer, sizeof(buffer), input, strlen(input)) != 0) {
        std::cerr << "Error copying input to buffer" << std::endl;
        return;
    }
    std::cout << "Buffer content: " << buffer << std::endl;
}

void secureStringConcat(const char* str1, const char* str2) {
    char buffer[20];
    buffer[0] = '\0'; // Initialize to empty string

    if (my_strncat_s(buffer, sizeof(buffer), str1, strlen(str1)) != 0) {
        std::cerr << "Error concatenating string 1" << std::endl;
        return;
    }
    if (my_strncat_s(buffer, sizeof(buffer), str2, strlen(str2)) != 0) {
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
    if (my_strncpy_s(ptr, 10, "ShortStr", strlen("ShortStr")) != 0) {
        std::cerr << "Error copying to dynamic buffer" << std::endl;
        free(ptr);
        return;
    }
    std::cout << "Dynamic buffer content: " << ptr << std::endl;
    free(ptr);
}

int main() {
    char input[50];
    std::cout << "Enter a string: ";
    std::cin.getline(input, sizeof(input)); // Use getline for safer input

    secureFunction(input);
    secureStringConcat(input, "ExtraText");
    secureDynamicMemory();

    return 0;
}