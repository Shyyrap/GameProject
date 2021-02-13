#pragma once 
#include<string>
class Texture
{
    public:
        Texture(const std::string& fileName);
        ~Texture();
        bool Load(const std::string& fileName);
        void Unload();
        void SetActive();
        int GetWidth()const {return mWidth;}
        int GetHeight()const {return mHeight;}
    private:
        unsigned int mTextureID;
        int mWidth;
        int mHeight;
};
