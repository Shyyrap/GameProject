#include"Texture.h"
#include"SOIL/SOIL.h"
#include<GL/glew.h>
#include"SDL.h"

Texture::Texture(const std::string& fileName):
    mTextureID(0),
    mWidth(0),
    mHeight(0)
{
    Load(fileName);
}
Texture::~Texture()
{

}

bool Texture::Load(const std::string& fileName)
{
    //number of of channels
    int channels = 0;
    unsigned char* image = SOIL_load_image( fileName.c_str(),
            &mWidth,
            &mHeight,
            &channels,
            SOIL_LOAD_AUTO
            );
    if(image == nullptr)
    {
        SDL_Log("SOIL filed to load image %s: %s",
                fileName.c_str(), SOIL_last_result());
        return false;
    }
    //RGB or RGBA
    int format = GL_RGB;
    if(channels == 4)
    {
        format = GL_RGBA;
    }
    glGenTextures(1, &mTextureID);
    glBindTexture(GL_TEXTURE_2D, mTextureID);
    //copy the raw image data into with glTexImage2D
    glTexImage2D(
            GL_TEXTURE_2D,//Texture target
            0,                  //Level of detail
            format,         //color format 
            mWidth,         //widht
            mHeight,        //height
            0,              //border
            format,         //color format of input data
            GL_UNSIGNED_BYTE,   //bit depth of input data

            image               //pointer to image data
            );
    //now we should free image data cause we already coppied 
    SOIL_free_image_data(image);
    //enable bilinear filtering 
    glTexParameteri(GL_TEXTURE_2D,
            GL_TEXTURE_MIN_FILTER, GL_LINEAR);
    glTexParameteri(GL_TEXTURE_2D,
            GL_TEXTURE_MAG_FILTER, GL_LINEAR);
    return true;
}

void Texture::Unload()
{
    glDeleteTextures(1, &mTextureID);
}
void Texture::SetActive()
{
    glBindTexture(GL_TEXTURE_2D, mTextureID);
}

