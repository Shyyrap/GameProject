#pragma once
#include<vector>
#include"SDL.h"
#include"Math.h"
#include<memory>
class Actor
{
    public:
        enum class State
        {
            EActive,
            EPaused,
            EDead
        };
        Actor(class Game* game);
        virtual ~Actor();

        void Update(float deltaTime);
        void UpdateComponents(float deltaTime);
        virtual void UpdateActor(float deltaTime);

        State GetState() const {return mState;}
        void SetState(State state){mState = state;}         
        void AddComponent(class Component* component);
        void RemoveComponent(class Component* component);
        virtual void ActorInput(const uint8_t* keyState);
        void ComputeWorldTransform();
        void ProcessInput(const uint8_t* keyState);
        class Game* GetGame();

        const Vector3& GetPosition() const { return mPosition; }
        void SetPosition(const Vector3& pos) { mPosition = pos; mRecomputeWorldTransform = true; }
        Vector3 GetForward() const { return Vector3::Transform(Vector3::UnitX, mRotation); }


        Matrix4 GetWorldTransform(){return mWorldTransform;}
        float GetScale() const { return mScale; }
        void SetScale(float scale) { mScale = scale;  mRecomputeWorldTransform = true; }

        const Quaternion& GetRotation() const { return mRotation; }
        void SetRotation(const Quaternion& rotation) { mRotation = rotation;  mRecomputeWorldTransform = true; }
        const Matrix4& GetWorldTransform() const { return mWorldTransform; }
        
    private:
        //actor state
        State mState;

        //transform
        Matrix4 mWorldTransform;
        Vector3 mPosition;
        Quaternion mRotation;
        float mScale;
        //vector of components of actor
        std::vector<class Component*>mComponents;
        bool mRecomputeWorldTransform;
        class Game* mGame;
};
