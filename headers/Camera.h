#pragma once
#include"Actor.h"

class Camera: public Actor 
{
    public:
        Camera(class Game* game);
        virtual ~Camera();
        void UpdateActor(float deltaTime)override;
        void ActorInput(const uint8_t* keys)override;
    private:
        class MoveComponent* mMoveComponent;
};
