#pragma once

#include<string>
#include<vector>

class EasyMesh
{
    public:
        EasyMesh();
        ~EasyMesh();
        //load/unload mesh
        bool Load(const std::string& fileName, class Renderer* renderer);
        void Unload();

        //get vertexarray associated with this mesh
        class VertexArray* GetVertexArray(){return mVertexArray;}
        //get a texture from specified index
        class Texture* GetTexture(size_t index);
        //get name of shader
        const std::string& GetShaderName()const{return mShaderName;}
        float GetRadius()const{return mRadius;}
        float GetSpecPower()const{return mSpecPower;}
    private:
        std::vector<class Texture*>mTextures;
        class VertexArray* mVertexArray;
        std::string mShaderName;
        float mRadius;
	    float mSpecPower;
};
