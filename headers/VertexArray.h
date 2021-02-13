#pragma once
#include<GL/glew.h>
class VertexArray 
{
    public:
        VertexArray(const float* verts, unsigned int numVerts, 
                const unsigned int* indices, 
                unsigned int numIndices
                );
        ~VertexArray();
        //Activate this vertex array
        void SetActive();
        unsigned int GetNumIndices() const{return mNumIndices;}
        unsigned int GetNumVerts()const{return mNumVerts;}
        bool IsInitedVertex();
        unsigned int GetVertexArrayObj(){return mVertexArrayObj;}
    private:
        //how many vertices in the vertex buffer
        unsigned int mNumVerts;
        //how many indices in the index buffer
        unsigned int mNumIndices;
        //OpenGL ID of the vertex buffer
        unsigned int mVertexBuffer;
        //OpenGL ID of the index buffer
        unsigned int mIndexBuffer;
        //OpenGL ID of the vertex array object
        unsigned int mVertexArrayObj;
        //num of components x,y,z, normals = vec3(x,y,z)

};
