#pragma once
#include"Component.h"
#include"Shader.h"
#include"Math.h"
#include"Actor.h"
class Transform : public Component
{
public:
	Transform(Actor* owner, const char* name);
	void Update(float deltaTime)override;
    void SetPos(const Vector3& translateVector);
    const Matrix4& GetTransformMatrix(){return mTransformMatrix;}
    void CreateScale(float scale);
private:
    const char* mTransformName;
    Matrix4 mTransformMatrix;
    Actor* mOwner;
};
