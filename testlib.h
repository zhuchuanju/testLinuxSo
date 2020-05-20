#ifndef H_TEST_LIB_H
#define H_TEST_LIB_H
#include <iostream>

#if 0
class TestLib
{
public:
    TestLib();
};
#endif

#ifdef __cplusplus
extern "C" {
#endif

int testAdd(int a, int b);

#ifdef __cplusplus
}
#endif

#endif // TESTLIB_H
