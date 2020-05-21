#include <iostream>

//#if defined(__cplusplus)
//extern "C" {

////#include "testlib.h"
//#include "addlib.h"

//}
//#else

//#endif

#include "addlib.h"
#include "divlib.h"
#include "mullib.h"
#include "sublib.h"

using namespace std;

int main()
{
//    cout << "Hello World!" << endl;
//    int result = testAdd(1, 2);

    AddLib addLib;
    int result = addLib.myAdd(1, 2);
    cout << "myadd result: " << result << endl;

    DivLib divLib;
    int result2 = divLib.myDiv(1, 2);
    cout << "mydiv result: " << result2 << endl;

    MulLib mulLib;
    int result3 = mulLib.myMul(1, 2);
    cout << "myMul result: " << result3 << endl;

    SubLib subLib;
    int result4 = subLib.mySub(200, 2);
    cout << "mySub result: " << result4 << endl;

    return 0;
}
