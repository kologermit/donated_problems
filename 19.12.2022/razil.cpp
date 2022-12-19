#include <iostream>
#include <cstdlib>
#include <ctime>
using namespace std;
int r() {
	if (rand() % 2) {
		return -(rand() % 100);
	}
	else {
		return (rand() % 100);
	}
}
int main() {
	srand(time(0));
	int n;
	cout << "n="; cin >> n;
	int a[30], b[40], c[n];
	cout << "a=";
	for (int i = 0; i < 30; i++) {
		// cin >> a[i];
		a[i] = r();
		cout << a[i] << ' ';
	}
	cout << endl << "b=";
	for (int i = 0; i < 40; i++) {
		// cin >> b[i];
		b[i] = r();
		cout << b[i] << ' ';
	}
	cout << endl << "c=";
	for (int i = 0; i < n; i++) {
		// cin >> c[i];
		c[i] = r();
		cout << c[i] << ' ';
	}
	cout << endl;
	int r_a = 31, r_b = 31, r_c = n + 1;
	for (int i = 0; i < 30; i++) {
		if (a[i] < 0) {
			r_a = i;
			break;
		}
	}
	for (int i = 0; i < 40; i++) {
		if (b[i] < 0) {
			r_b = i;
			break;
		}
	}
	for (int i = 0; i < n; i++) {
		if (c[i] < 0) {
			r_c = i;
			break;
		}
	}
	cout << "r_a=" << r_a << endl;
	cout << "r_b=" << r_b << endl;
	cout << "r_c=" << r_c << endl;
	if (r_c < r_a and r_b) {
		cout << "True";
	}
	else {
		cout << "False";
	}
}