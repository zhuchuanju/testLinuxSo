#include <iostream>

#if defined(__cplusplus)
extern "C" {

#include "testlib.h"

}
#else

#endif

using namespace std;

int main()
{
    cout << "Hello World!" << endl;

    int result = testAdd(1, 2);

    cout << "result: " << result << endl;

    return 0;
}
