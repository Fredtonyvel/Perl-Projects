#include <iostream>
#include <string>

using namespace std;

int main (){

int i = 1;
string name;
cout<< "What is your name? "<<endl;
cin >> name;

while(i <=5 ){

	cout<< "My name is" << name<<endl;
	cout<<i++<< ":" ;
	cout<< "What is your name? "<<endl; 
	cin >> name;
}


}