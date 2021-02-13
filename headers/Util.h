#pragma once 
#include<iostream>
class Util
{
    public:
        static void InfoMatrix(const float* matrix, unsigned int nElements);
        static Util* GetInstance();
    private:
        Util();
};
