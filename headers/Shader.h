#pragma once
#include <GL/glew.h>
#include <string>
#include "Math.h"
class Shader 
{
    public:
        Shader(const std::string& vertName, const std::string& fragName);
        ~Shader();
        //load shaders(vert,frag)
        bool Load(const std::string& vertName, const std::string& fragName);
        void SetActive();
        void Unload();
        void SetMatrixUniform(const char* name, 
                const Matrix4& matrix);
        void SetVectorUniform(const char* name, const
                Vector3& vector);
        void SetFloatUniform(const char* name, float value);
    private:
        //functions are private because they are 
        //helpers for public function bool Load()
        //only uses there
        bool CompileShader(const std::string& fileName,
                GLenum shaderType, GLuint& outShader);
        bool IsCompiled(GLuint shader);
        bool IsValidProgram();
        GLuint mShaderProgram;
        GLuint mVertexShader;
        GLuint mFragShader;
};
