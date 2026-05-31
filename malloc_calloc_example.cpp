#include <iostream>
#include <cstdlib>

using namespace std;

struct User {
    int id;
    string name;
};

int main() {
    User* user = (User*) malloc(sizeof(User));

    user->id = 1;
    user->name = "Ali";

    cout << user->id << endl;
    cout << user->name << endl;

    delete user;

    return 0;
}