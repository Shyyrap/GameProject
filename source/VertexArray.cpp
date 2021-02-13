#include"VertexArray.h"
VertexArray::VertexArray(const float* verts, 
        unsigned int numVerts,
        const unsigned int* indices, 
        unsigned int numIndices)
{
    //generating vertex object and store ID
    //in mVertexArray member variable
    glGenVertexArrays(1, &mVertexArrayObj);
    glBindVertexArray(mVertexArrayObj);

    //after create array object
    //we can create vertex buffer
    glGenBuffers(1, &mVertexBuffer);
    //GL_ARRAY_BUFFER means that i intend to use 
    //buffer as a vertex buffer
    glBindBuffer(GL_ARRAY_BUFFER, mVertexBuffer);
    //now copy verts data passed into the vertexArray
    //into this vertex buffer
    glBufferData(
            GL_ARRAY_BUFFER,
            numVerts*sizeof(float)*8,//size of vertexArray amount bytes
            verts, //source to copy from 
            GL_STATIC_DRAW
            );
    glGenBuffers(1,&mIndexBuffer);
    glBindBuffer(
            GL_ELEMENT_ARRAY_BUFFER,
            mIndexBuffer
            );
    glBufferData(
            GL_ELEMENT_ARRAY_BUFFER,
            numIndices*sizeof(unsigned int),
            indices, //source to copy from
            GL_STATIC_DRAW);
    //specify size,type, format of the attribute
    //vertex layout,the current layout 
    //attributes inPosition (x,y,z)

	glEnableVertexAttribArray(0);
    glVertexAttribPointer(
            0, // Attribute index (0 for first one)
            3, // Number of components (3 in this case)
            GL_FLOAT, // Type of the components
            GL_FALSE, // (Only used for integral types)
            sizeof(float)*8,//size of each vertex)
            nullptr// Offset from start of vertex to this attribute
            );
    glEnableVertexAttribArray(1);
    glVertexAttribPointer(
            1, // Attribute index (0 for first one)
            3, // Number of components (3 in this case)
            GL_FLOAT, // Type of the components
            GL_FALSE, // (Only used for integral types)
            sizeof(float)*8,//size of each vertex)
            reinterpret_cast<void*>(sizeof(float)*3)// Offset from start of vertex to this attribute
            );
    glEnableVertexAttribArray(2);
    glVertexAttribPointer(
            2,          //vertex attrib index
            2,          //number of components UV = 2
            GL_FLOAT,   //type of each component
            GL_FALSE,   //not used for GL_FLOAT
            sizeof(float)*8,//numComponents is this case = 7
            //offset of from x,y,z
            reinterpret_cast<void*>(sizeof(float)*6)
            );
    //there are normals attribpointerr
} 
VertexArray::~VertexArray()
{
    glDeleteBuffers(1,&mVertexBuffer);
    glDeleteBuffers(1,&mIndexBuffer);
    glDeleteVertexArrays(1,&mVertexArrayObj);
}
void VertexArray::SetActive()
{
    glBindVertexArray(mVertexArrayObj);
}
