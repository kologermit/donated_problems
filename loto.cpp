#include <iostream>
using namespace std;
int main() {
	double p = 1;
	for (int i = 90, j = 15; j >= 1; i--, j--) {
		p = p * double(j) / double(i);
		cout << "i=" << i << "; j=" << j << "; p=" << p << "; 1/p=" << 1 / p << "; c=" << 1/p * 14 << endl;
	}
	cout << "res=" << p * 100 << "%" << endl;

}