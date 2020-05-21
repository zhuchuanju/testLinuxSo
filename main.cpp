#include <iostream>

//#if defined(__cplusplus)
//extern "C" {

////#include "testlib.h"
//#include "addlib.h"

//}
//#else

//#endif

#include "addlib.h"

using namespace std;

int main()
{
//    cout << "Hello World!" << endl;
//    int result = testAdd(1, 2);

    AddLib addLib;
    int result = addLib.myAdd(1, 2);

    cout << "result: " << result << endl;

    return 0;
}
