#include"Util.h"
void Util::InfoMatrix(const float* matrix, unsigned int nElements)
{
    for(unsigned int i = 0; i<nElements; i++)
    {
        std::cout<<matrix[i]<<" ";
        if(i%3 == 0 )
        {
            std::cout<<std::endl;
        }
        else
        {
        }
    }
}

