// Khadichabonu Valieva 
// Dr. Sengupta
// Homework 4
// 14 October 2024

#include <iostream>
#include <cstdlib>
#include <cmath>
#include <algorithm>
#include <vector>
#include <cstring>
#include <stack>
#include <queue>

using namespace std;

struct Point {
    int x, y;
    Point() : x(0), y(0) {} 
    Point(int xCoord, int yCoord) : x(xCoord), y(yCoord) {}
};

struct Node {
    int data;
    Node* left;
    Node* right;

    Node(int value) : data(value), left(nullptr), right(nullptr) {}
};

double distanceFromOrigin(Point p) {
    return sqrt(p.x * p.x + p.y * p.y);
}

bool linearSearch(Point points[], int size, Point A) {
    for (int i = 0; i < size; i++) {
        if (points[i].x == A.x && points[i].y == A.y) {
            return true;
        }
    }
    return false;
}

void bubbleSort(Point points[], int size) {
    for (int i = 0; i < size - 1; i++) {
        for (int j = 0; j < size - i - 1; j++) {
            if (distanceFromOrigin(points[j]) < distanceFromOrigin(points[j + 1])) {
                swap(points[j], points[j + 1]);
            }
        }
    }
}

int binarySearchIterative(const char* names[], int size, const char* favoriteName) {
    int left = 0, right = size - 1;
    while (left <= right) {
        int mid = left + (right - left) / 2;
        if (strcmp(names[mid], favoriteName) == 0) {
            return mid;
        }
        if (strcmp(names[mid], favoriteName) < 0) {
            left = mid + 1;
        } else {
            right = mid - 1;
        }
    }
    return -1; 
}

int binarySearchRecursive(const char* names[], int left, int right, const char* favoriteName) {
    if (left > right) return -1;
    int mid = left + (right - left) / 2;
    if (strcmp(names[mid], favoriteName) == 0) {
        return mid;
    }
    if (strcmp(names[mid], favoriteName) < 0) {
        return binarySearchRecursive(names, mid + 1, right, favoriteName);
    } else {
        return binarySearchRecursive(names, left, mid - 1, favoriteName);
    }
}

void postOrderIterative(Node* root) {
    if (root == nullptr) return;

    stack<Node*> stack;
    Node* lastVisited = nullptr;

    while (!stack.empty() || root != nullptr) {
        if (root != nullptr) {
            stack.push(root);
            root = root->left; 
        } else {
            Node* peekNode = stack.top();
            if (peekNode->right != nullptr && lastVisited != peekNode->right) {
                root = peekNode->right;
            } else {
                cout << peekNode->data << " "; 
                lastVisited = peekNode; 
                stack.pop(); 
            }
        }
    }
}

void levelOrder(Node* root) {
    if (root == nullptr) return;

    queue<Node*> queue;
    queue.push(root);

    while (!queue.empty()) {
        Node* current = queue.front();
        queue.pop();
        cout << current->data << " "; 

        if (current->left != nullptr) {
            queue.push(current->left);
        }
        if (current->right != nullptr) {
            queue.push(current->right);
        }
    }
}

void problem1() {
    Point points[20];
    for (int i = 0; i < 20; i++) {
        points[i] = Point(rand() % 10 + 1, rand() % 10 + 1); 
    }
    Point A(rand() % 10 + 1, rand() % 10 + 1); 
    
    bool found = linearSearch(points, 20, A);
    cout << "\033[32mPoint A (" << A.x << ", " << A.y << ") found: " << (found ? "Yes" : "No") << endl;
    
    bubbleSort(points, 20);
    cout << "Sorted points based on distance from origin:" << endl;
    for (const auto& point : points) {
        cout << "(" << point.x << ", " << point.y << ")" << endl;
    }
    cout << "\033[0m";
}

void problem2() {
    const char* names[] = { "DEF", "BBB", "EE", "AA", "CAB", "AAA", "DDDD", "BBB", "FFFF", "CCCC" };
    const char* favoriteName = "AA";
    
    sort(names, names + 10);
    
    int indexIterative = binarySearchIterative(names, 10, favoriteName);
    cout << "\033[32mIterative search found " << favoriteName << " at index: " << indexIterative << "\033[0m" << endl;
    
    int indexRecursive = binarySearchRecursive(names, 0, 9, favoriteName);
    cout << "\033[32mRecursive search found " << favoriteName << " at index: " << indexRecursive << "\033[0m" << endl;
}

void problem3() {
    // Creating a sample binary tree:
    Node* root = new Node(1);
    root->left = new Node(2);
    root->right = new Node(3);
    root->left->left = new Node(4);
    root->left->right = new Node(5);
    root->right->left = new Node(6);
    root->right->right = new Node(7);

    cout << "\033[32mPost-order Traversal (Iterative): ";
    postOrderIterative(root);
    cout << "\033[0m" << endl;

    cout << "\033[32mLevel-order Traversal: ";
    levelOrder(root);
    cout << "\033[0m" << endl;
}

int main() {
    int choice;
    do {
        cout << "\nMenu:\n";
        cout << "1. Run Problem 1\n";
        cout << "2. Run Problem 2\n";
        cout << "3. Run Problem 3\n";
        cout << "0. Exit\n";
        cout << "Enter your choice: ";
        cin >> choice;

        switch (choice) {
            case 1:
                problem1();
                break;
            case 2:
                problem2();
                break;
            case 3:
                problem3();
                break;
            case 0:
                cout << "\033[32mExiting program.\033[0m" << endl;
                break;
            default:
                cout << "\033[31mInvalid choice. Please try again.\033[0m" << endl;
        }
        cout << endl; 
    } while (choice != 0);

    return 0;
}
