#pragma once
#include"Component.h"
#include<vector>

class MeshComponent:public Component
{
    public:
        MeshComponent(class Actor* owner);
        ~MeshComponent();
        //draw this  mesh component with provided shader
        virtual void Draw(class Shader* shader);
        //set the mesh/texture index used by mesh components dd
        virtual void SetMesh(class EasyMesh* mesh);
        void SetTextureIndex(size_t index);
    protected:
        class EasyMesh* mMesh;
        size_t mTextureIndex;
};
