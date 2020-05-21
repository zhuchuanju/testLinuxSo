#ifndef H_ADD_LIB_H
#define H_ADD_LIB_H

#ifdef __cplusplus
extern "C" {
#endif

class AddLib
{
public:
    AddLib();
    ~AddLib();

public:
    int myAdd(int a, int b);
};

#ifdef __cplusplus
}
#endif

#endif // ADDLIB_H
