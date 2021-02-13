#include"Actor.h"
#include"Component.h"
#include<algorithm>
#include"Game.h"

Actor::Actor(Game* game):
	mState(State::EActive),
    mRecomputeWorldTransform(true),
	mGame(game)
{
    mGame->AddActor(this);
}

Actor::~Actor()
{
    mGame->RemoveActor(this);	
    while(!mComponents.empty())
    {
        delete mComponents.back();
    }
}
void Actor::ComputeWorldTransform()
{
    if(mRecomputeWorldTransform)
    {
        mRecomputeWorldTransform = false;
        //scale , then rotate , then translate
        mWorldTransform = Matrix4::CreateScale(mScale);
        mWorldTransform *= Matrix4::CreateFromQuaternion(mRotation);
        mWorldTransform *= Matrix4::CreateTranslation(mPosition );
               
        //Inform components world transform updated
        for(auto comp : mComponents)
        {
            comp->OnUpdateWorldTransform();
        }
    }
}
void Actor::Update(float deltaTime)
{
    if(mState == State::EActive)
    {
        ComputeWorldTransform();

        UpdateComponents(deltaTime);
        UpdateActor(deltaTime);

        ComputeWorldTransform();
    }
}
void Actor::UpdateComponents(float deltaTime) 
{
    for(auto comp: mComponents)
    {
        comp->Update(deltaTime);
    }
}
void Actor::ProcessInput(const uint8_t* keyState)
{
    if(mState == State::EActive)
    {
        for(auto comp: mComponents)
        {
            comp->ProcessInput(keyState);
        }
        ActorInput(keyState);
    }
}
void Actor::UpdateActor(float deltaTime)
{

}
void Actor::AddComponent(Component* component)
{
    //find the insertion point in the sorted vector
    //the first element with order higher than me
    int myOrder = component->GetUpdateOrder();
    auto iter = mComponents.begin();
    for(;
            iter != mComponents.end();
            ++iter)
    {
        if(myOrder <(*iter)->GetUpdateOrder())
        {
            break;
        }
    }
    //insert element before position of iterator
    mComponents.insert(iter, component);
}
void Actor::RemoveComponent(Component* component)
{
    auto iter = std::find(mComponents.begin(),
            mComponents.end(), component);
    if(iter != mComponents.end())
    {
        mComponents.erase(iter);
    }
}
void Actor::ActorInput(const uint8_t* keyState)
{
}
Game* Actor::GetGame()
{
    return mGame;
}
