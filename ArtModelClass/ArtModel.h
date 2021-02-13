#pragma once
#include"Mesh.h"
#include<SOIL/SOIL.h>
class ArtModel 
{
    public:
        ArtModel(const char* path);
        void Draw( Shader shader);
        void Draw(Shader* shader);
    private:
        std::vector<Mesh> meshes;
        std::string directory;
        std::vector<Texture> textures_loaded;
        void loadModel(std::string path);
        void processNode(aiNode* node, const aiScene *scene);
        Mesh processMesh(aiMesh* mesh, const aiScene *scene);
        std::vector<Texture> loadMaterialTextures(aiMaterial* mat, aiTextureType type, 
                std::string typeName);
};
