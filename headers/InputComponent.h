#pragma once
#include"Component.h"
class InputComponent:public Component
{
    public:
        InputComponent(class Actor* owner, int updateOrder);
        void Update(float deltaTime)override;
        void ProcessInput(const uint8_t* keyState)override;
        virtual ~InputComponent();
    protected:
        class Actor* mOwner;
};
