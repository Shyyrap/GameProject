#include "MeshComponent.h"
#include "Shader.h"
#include "EasyMesh.h"
#include "VertexArray.h"
#include "Actor.h"
#include "Texture.h"
#include "Renderer.h"
#include "Game.h"

MeshComponent::MeshComponent(Actor* owner):
    Component(owner),
    mMesh(nullptr),
    mTextureIndex(0)
{
    mOwner->GetGame()->GetRenderer()->AddMeshComp(this);
}
MeshComponent::~MeshComponent()
{
    mOwner->GetGame()->GetRenderer()->RemoveMeshComp(this);
}


void MeshComponent::Draw(Shader* shader)
{
    if(mMesh)
    {
        //set the world transform
        shader->SetMatrixUniform("uWorldTransform",
                mOwner->GetWorldTransform());
        //set the specular power
        shader->SetFloatUniform("uSpecPower",mMesh->GetSpecPower());
        //set the active texture
        Texture* t = mMesh->GetTexture(mTextureIndex);
        if(t)
        {
            t->SetActive();
        }
        //set the mesh's vertex array as active
        VertexArray* va = mMesh->GetVertexArray();
        va->SetActive();
        //draw
        glDrawElements(GL_TRIANGLES,
                va->GetNumIndices(),
                GL_UNSIGNED_INT,
                nullptr);
    }
}
void MeshComponent::SetMesh(EasyMesh* mesh)
{
    mMesh = mesh;
}
