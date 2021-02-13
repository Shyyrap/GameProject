#pragma once
#include"Component.h"
#include"SDL.h"
#include"Shader.h"
#include"Texture.h"

class SpriteComponent : public Component
{
    public:
        SpriteComponent(class Actor* owner, 
                int drawOrder = 100);
        ~SpriteComponent();
        virtual void Draw(Shader* SpriteShader);
        virtual void DrawTriangles(Shader* shader, 
                unsigned int numInd, 
                const unsigned int* soucre_indices);
        virtual void SetTexture(Texture* texture);
        int GetDrawOrder() const {return mDrawOrder;}
        int GetTextHeight() const {return mTextHeight;}
		void SetHeight(int height) { mTextHeight = height; }
		void SetWidth(int width) { mTextWidth = width; }
        int GetTextWidth() const {return mTextWidth;}
        void DrawLines(Shader* shader, unsigned int numIndices,
                const unsigned int* indices_ptr);
        void DrawArrays(Shader* shader, unsigned int numVertices);
    protected:
        Texture* mTexture;
        int mDrawOrder;
        int mTextWidth;
        int mTextHeight;
};
