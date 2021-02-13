#include"Camera.h"
#include"MoveComponent.h"
#include"SDL2/SDL_scancode.h"
#include"Game.h"
#include"Renderer.h"

Camera::Camera(Game* game):
    Actor(game)
{
    mMoveComponent = new MoveComponent(this);
}
Camera::~Camera()
{

}
void Camera::UpdateActor(float deltaTime)
{
    Actor::UpdateActor(deltaTime);

    Vector3 cameraPos = GetPosition();
    Vector3 target = GetPosition() + GetForward() * 100.0f;
    Vector3 up = Vector3::UnitZ;
    Matrix4 view = Matrix4::CreateLookAt(cameraPos,
            target, up);
    GetGame()->GetRenderer()->SetViewMatrix(view);
}
void Camera::ActorInput(const uint8_t* keys)
{
    float forwardSpeed = 0.0f;
    float angularSpeed = 0.0f;
    if(keys[SDL_SCANCODE_W])
    {
        forwardSpeed += 200.0f;
    }
    if(keys[SDL_SCANCODE_S])
    {
        forwardSpeed -= 200.0f;
    }
    if(keys[SDL_SCANCODE_A])
    {
        angularSpeed -= Math::TwoPi;
    }
    if(keys[SDL_SCANCODE_D])
    {
        angularSpeed += Math::TwoPi;
    }
    mMoveComponent->SetForwardSpeed(forwardSpeed);
    mMoveComponent->SetAngularSpeed(angularSpeed);
}

