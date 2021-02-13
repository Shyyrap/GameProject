#include"Actor.h"
#include"Game.h"
Transform::Transform(Actor* owner, const char* name):
    Component(owner)
{
    mTransformMatrix = Matrix4();
    mTransformName = name;
    mOwner = owner;
}
void Transform::Update(float deltaTime)
{
}
void Transform::SetPos(const Vector3& translationVector)
{
    mTransformMatrix *= Matrix4::CreateTranslation(translationVector);
}
void Transform::CreateScale(float scale)
{
    mTransformMatrix *= Matrix4::CreateScale(scale);
}

