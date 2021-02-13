#include"Shader.h"
#include<iostream>
#include"SDL.h"
#include<fstream>
#include<sstream>

Shader::Shader(const std::string& vertName, const std::string& fragName)
    : mShaderProgram(0)
    , mVertexShader(0)
    , mFragShader(0)
{
    if(Load(vertName, fragName))
    {
        std::cout<<"Shader load success"<<std::endl;
    }
    else
    {
        std::cout<<"Shader load with causes"<<std::endl;
    }
}

Shader::~Shader()
{
}
bool Shader::CompileShader(const std::string& fileName,
        GLenum shaderType, GLuint& outShader)
{
    std::ifstream shaderFile(fileName);
    if(shaderFile.is_open())
    {
        //read all the text into string
        std::stringstream sstream;
        sstream<<shaderFile.rdbuf();
        std::string contents = sstream.str();
        const char* contentsChar = contents.c_str();

        //Create a shader of the specified type
        outShader = glCreateShader(shaderType);

        //set the source characters and tyr to compile

        glShaderSource(outShader, 1, &(contentsChar),
                nullptr);
        glCompileShader(outShader);
        if(!IsCompiled(outShader))
        {
            SDL_Log("Failed to compile shader %s", fileName.c_str());
            return false;
        }
    }
    else
    {
        SDL_Log("Shader file not found: %s", fileName.c_str());
        return false;
    }
    return true;
}
bool Shader::IsCompiled(GLuint shader)
{
    GLint status;
    //query the compile status 
    glGetShaderiv(shader, GL_COMPILE_STATUS, &status);
    if(status != GL_TRUE)
    {
        char buffer[512];
        memset(buffer, 0, 512);
        glGetShaderInfoLog(shader, 511, nullptr, buffer);
        SDL_Log("GLSL Compile failed: %s",buffer);
        return false;
    }
    return true;
}
bool Shader::IsValidProgram()
{
    GLint status;
    glGetProgramiv(mShaderProgram, GL_LINK_STATUS, &status);
    if(status != GL_TRUE)
    {
        char buffer[512];
        memset(buffer,0,512);
        glGetProgramInfoLog(mShaderProgram, 511,nullptr, buffer);
        SDL_Log("GLSL Validation program failed: %s", buffer);
        return false;
    }
    return true;
}
bool Shader::Load(const std::string& vertName,
        const std::string& fragName)
{
    //compile vertex and fragment shaders
    if(!CompileShader(vertName,GL_VERTEX_SHADER,
                mVertexShader) || 
            !CompileShader(fragName,  GL_FRAGMENT_SHADER, mFragShader)
      )
    {
        return false;
    }
    //now create a shader program
    //that links together vertex/frag shaders
    mShaderProgram = glCreateProgram();
    glAttachShader(mShaderProgram, mVertexShader);
    glAttachShader(mShaderProgram, mFragShader);
    glLinkProgram(mShaderProgram);
    //verify that program linked succesfully
    if(!IsValidProgram())
    {
        return false;
    }
    return true;
}
void Shader::SetActive()
{
    glUseProgram(mShaderProgram);
}
void Shader::Unload()
{
    glDeleteProgram(mShaderProgram);
    glDeleteShader(mVertexShader);
    glDeleteShader(mFragShader);
}
void Shader::SetMatrixUniform(const char* name, const Matrix4& matrix)
{
    GLuint mLoc = glGetUniformLocation(mShaderProgram, name);
            //send the matrix data to uniform(GLSL)
    glUniformMatrix4fv
    (
         mLoc,                  //Uniform ID
         1,                    //number of matrixes
         GL_TRUE,              //using raw vectors
         matrix.GetAsFloatPtr()
    );
}
void Shader::SetVectorUniform(const char* name,const Vector3& vector )
{
    GLuint loc = glGetUniformLocation(mShaderProgram, name);
	glUniform3fv(loc, 1,vector.GetAsFloatPtr());
}
void Shader::SetFloatUniform(const char* name, 
        float value)
{
    GLuint mLoc = glGetUniformLocation(mShaderProgram, name);
            //send the matrix data to uniform(GLSL)
    glUniform1f
    (
         mLoc,                  //Uniform ID
         value
    );
}
