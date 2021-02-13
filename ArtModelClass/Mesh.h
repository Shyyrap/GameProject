#pragma once
#include<glm/glm.hpp>
#include<string>
#include"Shader.h"
#include<vector>
#include<iostream>
#include<assimp/Importer.hpp>
#include<assimp/scene.h>
#include<assimp/postprocess.h>

struct Vertex
{
    glm::vec3 Position;
    glm::vec3 Normal;
    glm::vec2 TextCoords;
};
struct Texture
{
    unsigned int id;
    std::string type;
    aiString path;
    //we store the path of the texture to cmpatee with other textures
};
class Mesh
{
    public:
        std::vector<Vertex>       vertices;
        std::vector<unsigned int> indices;
        std::vector<Texture>      textures;
        Mesh(std::vector<Vertex> vertices, 
                std::vector<unsigned int> indices, 
                std::vector<Texture> textures );
        void Draw(Shader& shader);
        void Draw(Shader* shader);
    private:
        //  render data
        unsigned int VAO, VBO, EBO;
        void setupMesh();
};
