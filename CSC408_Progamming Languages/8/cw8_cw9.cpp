#include <iostream>
using namespace std;

void printX();

void increaseRegister(int m){ m+=200; printX();}

int main(){

int x;

cin>>x;

printX();

increaseRegister(x);

printX();

return 0;

}