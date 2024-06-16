//
//  main.cpp
//  key_hunt
//
//  Created by Khadichabonu Valieva on 17/01/23.
//

#include <iostream>
using namespace std;

class Node
{
    public:
    int data;
    Node *left, *right;
};

class BST
{
    public:
    Node *root;
    BST() {
        root = NULL;
    }
    Node * insert(Node*, int);
    int search(int);
};
         
Node* BST :: insert(Node* root, int value){
        // Node creation
    Node *newNode = new Node;
    newNode -> data = value;
    newNode -> left = NULL;
    newNode -> right = NULL;
    if (root==NULL) {
        root = newNode;
    }
    // Insert data
    else if (value >= root->data){
        root -> right = insert(root->right, value);
    }
    else{
        root -> left = insert (root->left, value);
    }
    return root;
}
  
int BST :: search(int searchKey) {
    Node *temp = root; //important
    while (temp != NULL)
    {
        if (temp -> data == searchKey)
            return searchKey;
        else if (temp -> data > searchKey)
            temp = temp -> left;
        else
            temp = temp -> right;
    }
    return -1;
    }


int main(int argc, const char * argv[]) {
    
    BST tree;
    string ch="yes";
    int num, searchKey;
    cout << "Enter the key nubmer:\n";
    cin >> num;
    
    tree.root = tree.insert(tree.root, num); //insert(NULL, 1);
    do {
        cout << "Do you want to create another junction?\n";
        cin >> ch;
        if (ch.compare("yes")==0){
            cout << "Enter the key number:\n";
            cin >> num;
            tree.root = tree.insert(tree.root, num); //insert(1000x, 2); insert(2000x, 3);
        }
        else{
            break;
        }
    } while(true);
    
    cout << "\nEnter the key to be searched: ";
    cin >> searchKey;
    int flag = tree.search(searchKey);
    if (flag==searchKey)
        cout << "\n" << searchKey<<" found\n\n";
    else
        cout << "\n" << searchKey << " not found\n\n";
    
    
    
    return 0;
}
