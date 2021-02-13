#include"SpriteComponent.h"
#include"Actor.h" 
#include"Game.h"
#include"Renderer.h"

SpriteComponent::SpriteComponent(Actor* owner, int drawOrder)
	:Component(owner),
	mTexture(nullptr),
    mDrawOrder(drawOrder),
	mTextWidth(0),
	mTextHeight(0)
{
	mOwner->GetGame()->GetRenderer()->AddSprite(this);
} 
void SpriteComponent::Draw(Shader* SpriteShader)
{
    if (mTexture)
	{
		// Scale the quad by the width/height of texture
		Matrix4 scaleMat = Matrix4::CreateScale(
			static_cast<float>(mTextWidth),
			static_cast<float>(mTextHeight),
			1.0f);
		Matrix4 world = scaleMat * mOwner->GetWorldTransform();
		// Since all sprites use the same shader/vertices,
		// the game first sets them active before any sprite draws
		
		// Set world transform
		SpriteShader->SetMatrixUniform("uWorldTransform", world);
		// Set current texture
		mTexture->SetActive();
		// Draw quad
		glDrawElements(GL_TRIANGLES, 6, GL_UNSIGNED_INT, nullptr);
	}
}
void SpriteComponent::SetTexture(Texture* texture)
{
    mTexture = texture;
	// Set width/height
	mTextWidth = texture->GetWidth();
	mTextHeight = texture->GetHeight();
}
SpriteComponent::~SpriteComponent()
{
	mOwner->GetGame()->GetRenderer()->RemoveSprite(this);
}
void SpriteComponent::DrawTriangles(Shader* shader, 
        unsigned int numIndices,
        const unsigned int* source_indices)
{
    shader->SetActive();
    mTexture->SetActive();
    glDrawElements(
            GL_TRIANGLES,   //polygone
            numIndices,     //number of indices index buffer
            GL_UNSIGNED_INT,//type of each index
            source_indices
            //source_indices  //pointer to source of indices 
            );
}
void SpriteComponent::DrawLines(Shader*
        shader, unsigned int numIndices,
        const unsigned int* indices_ptr)
{
    shader->SetActive();
    mTexture->SetActive();
    glDrawElements(
            GL_LINE_STRIP,    //polygone
            numIndices,      //number of indices index buffer
            GL_UNSIGNED_INT, //type of each index
            nullptr
            //indices_ptr
            );
}
void SpriteComponent::DrawArrays(Shader* shader, 
        unsigned int numVertices)
{
    shader->SetActive();
    glDrawArrays(
            GL_TRIANGLES, 
            0,              //first index
            numVertices     //last index
            );    
}
