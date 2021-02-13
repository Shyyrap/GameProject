#pragma once
#include"SDL.h"
#include<GL/glew.h>
#include"SDL_opengl.h"

#include "Math.h" 
#include <string>
#include <vector>
#include <unordered_map>
struct DirectionalLight
{

    //direction of light
    Vector3 mDirection;
    //diffuse color
    Vector3 mDiffuseColor;
    //specular color
    Vector3 mSpecColor;
};

class Renderer
{
    public:
        Renderer(class Game* game);
        ~Renderer();
        //initialize and shutdown renderer
        bool Initialize(float screenSize, float screenHeight);
        void Shutdown();
        //unload all textures/meshes
        void UnloadData();
        //draw the frame
        void Draw();
        void AddSprite(class SpriteComponent* sprite);
        void RemoveSprite(class SpriteComponent* sprite);
        class Texture* GetTexture(const std::string& fileName);
        class EasyMesh* GetMesh(const std::string& fileName);
        void SetLightUniforms(class Shader* shader);
        void SetAmbientLight(const Vector3& ambient) 
        {
            mAmbientLight = ambient;
        }
        DirectionalLight& GetDirectionalLight() 
        { 
            return mDirLight; 
        }
        void AddMeshComp(class MeshComponent* mesh);
        void RemoveMeshComp(class MeshComponent* mesh);
        void SetViewMatrix(const Matrix4& matrix){mView = matrix;}
    private:
        bool LoadShaders();
        void CreateSpriteVerts();
        //Game
        class Game* mGame;
        //sprite vertex array
        class VertexArray* mSpriteVerts;
        //sprite shader
        class Shader* mSpriteShader;
        //mesh shader
        class Shader* mMeshShader;
        //all mesh components draw
        std::vector< class MeshComponent*> mMeshComps;
        //all the sprite components drawn
        std::vector<class SpriteComponent*> mSprites;
        //maps of meshes and textures
        std::unordered_map<std::string,class EasyMesh*> mMeshes;
        std::unordered_map<std::string,class Texture*> mTextures;
        //ViewProjection matrix for shaders
        Matrix4 mProjection;
        Matrix4 mView;
        //widtw and height screen
        float mScreenWidth;
        float mScreenHeight;
        //Lighting data
        Vector3 mAmbientLight;
        DirectionalLight mDirLight;
        //window
        SDL_Window* mWindow;
        //OpenGL context
        SDL_GLContext mContext;
};
