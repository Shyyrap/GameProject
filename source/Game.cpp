#include <algorithm>
#include <random> 
#include <iostream>
#include "Math.h"

#include "Game.h"
#include "Actor.h"
#include "SpriteComponent.h"
#include "Shader.h"
#include "VertexArray.h"
#include "Transform.h"
#include "Camera.h"
#include "MeshComponent.h"
#include "Renderer.h"
#include "Camera.h"
#include "PlaneActor.h"


Game::Game():
    mGameRenderer(nullptr),
    mGameShader(nullptr),
    mIsRunning(true), 
    mUpdatingActors(false) 
{

}
const uint8_t* Game::GetGameKeyboardState()
{
    const uint8_t* state =  SDL_GetKeyboardState(NULL);
    return state;
}
bool Game::Initialize()
{
    if(SDL_Init( (SDL_INIT_VIDEO) | (SDL_INIT_AUDIO != 0) ))
    {
        SDL_Log("Unable to init SDL: %s", SDL_GetError());
        return false;
    }
    mGameRenderer = new Renderer(this);
    if(!mGameRenderer->Initialize(1024.0f, 768.0f))
    {
        SDL_Log("Failed to initialize renderer");
        delete mGameRenderer;
        mGameRenderer = nullptr;
        return false;
    }
    LoadData();
    mTicksCount = SDL_GetTicks();
    return true;
}
void Game::RunLoop()
{
    while(mIsRunning == true)
    {
        ProcessInput();
        UpdateGame();
        GenerateOutput();
    }
}
void Game::ProcessInput()
{
    SDL_Event event;
    while(SDL_PollEvent(&event))
    {

        switch(event.type)
        {
            case SDL_QUIT:
                mIsRunning = false;
                break;
        }
    }
    const  uint8_t* state = SDL_GetKeyboardState(NULL);
    if(state[SDL_SCANCODE_ESCAPE]){mIsRunning = false;}
    for(auto actor: mActors)
    {
        actor->ProcessInput(state);
    }
}
void Game::UpdateGame()
{
    //wait untill 16ms has elapsed since last frame
    while (!SDL_TICKS_PASSED(SDL_GetTicks(), mTicksCount + 16));
    //write how many time passed from ticks counts
    float deltaTime = (SDL_GetTicks() - mTicksCount)/1000.0f;
    //if min doesn't required us
    if(deltaTime > 0.05f)
    {
        deltaTime = 0.05f;
    }
    mTicksCount = SDL_GetTicks();

    //update all actors
    //lock actors from other actions
    mUpdatingActors = true;
    for(auto actor : mActors)
    {
        actor->Update(deltaTime);
    }
    //something like mutex lock, now unlock
    mUpdatingActors = false;
    //move any pending actors to mActors
    for(auto pending : mPendingActors)
    {
        pending->ComputeWorldTransform();
        mActors.emplace_back(pending);
    }
    mPendingActors.clear();
    //add any dead actors to a temp vector
    std::vector<Actor*> deadActors;
    for(auto actor : mActors)
    {
        if(actor->GetState() == Actor::State::EDead)
        {
            deadActors.emplace_back(actor);
        }
    }
    //delete dead actors
    for(auto actor : deadActors)
    {
        delete actor;
    }
}
void Game::GenerateOutput()
{
    mGameRenderer->Draw();
}
void Game::LoadData()
{
    //some fake actor from him we will inherit other 
    //set base states of actor
    Actor *a = new Actor(this);
    a->SetPosition(Vector3(200.0f, 75.0f, 0.0f));
    a->SetScale(100.0f);
    //here some complicated sh*t
    //create unit quaternion
    Quaternion q(Vector3::UnitY, -Math::PiOver2);
    //and calculate added quartenion
    q = Quaternion::Concatenate(q,
            Quaternion(Vector3::UnitZ, 
                (Math::Pi)+(Math::Pi/4.0f)));
    a->SetRotation(q);

    //add mesh from file 
    //all vertices, indices there
    MeshComponent* mc = new MeshComponent(a);
    mc->SetMesh(mGameRenderer->GetMesh("../Assets/Cube.gpmesh"));

    Actor* b = new Actor(this);
    b->SetPosition(Vector3(300.0f, -150.0f, 0.0f));
    b->SetScale(50.0f);
    mc = new MeshComponent(b);
    mc->SetMesh(mGameRenderer->GetMesh("../Assets/Sphere.gpmesh"));

    //set floor 
    const float start = -1250.0f;
    const float size = 250.0f;
    for(int i = 0; i < 10; i++)
    {
        for(int j = 0; j < 10; j++)
        {
            a = new PlaneActor(this);
            a->SetPosition(Vector3(start+i*size,start+j*size, -100.0f));
        }
    }
    //left/right walls 
    q = Quaternion(Vector3::UnitX, Math::PiOver2);
    for(int i = 0; i < 10; i++)
    {
        a = new PlaneActor(this);
        a->SetPosition(Vector3(start+i*size, start-size, 0.0f));
        a->SetRotation(q);
    }
    q = Quaternion::Concatenate(q, Quaternion(Vector3::UnitZ, Math::PiOver2));

    //forward/back walls
    for(int i = 0; i < 10; i++)
    {
        a = new PlaneActor(this);
        a->SetPosition(Vector3(start - size, start + i * size, 0.0f));
        a->SetRotation(q);

        a = new PlaneActor(this);
        a->SetPosition(Vector3(-start + size, start + i * size, 0.0f));
        a->SetRotation(q);
    }
    //setup lights
    mGameRenderer->SetAmbientLight(Vector3(0.2f,
                0.2f, 0.2f));
    DirectionalLight& dir = mGameRenderer->GetDirectionalLight();
    dir.mDirection = Vector3(0.0f,-0.707f, -0.707f);
    dir.mDiffuseColor = Vector3(0.78f, 0.88f, 1.0f);
    dir.mSpecColor = Vector3(0.8f, 0.8f, 0.8f);
    //camera actor
    mCameraActor = new Camera(this);
}
void Game::UnloadData()
{
    //delete actors
    //because ~Actor calls RemoveActor, have to use ad different style loop
    while(!mActors.empty())
    {
        delete mActors.back();
    }
    if(mGameRenderer)
    {
        mGameRenderer->UnloadData();
    }
}

void Game::Shutdown()
{
    UnloadData();
    if(mGameRenderer)
    {
        mGameRenderer->Shutdown();
    }
    SDL_Quit();
}
void Game::AddActor(Actor* actor)
{
    //if we're updating actors, need to add to pending
    if (mUpdatingActors)
    {
        mPendingActors.emplace_back(actor);
    }
    else
    {
        mActors.emplace_back(actor);
    }
}
void Game::RemoveActor(Actor* actor)
{
    auto iter = std::find(mPendingActors.begin(),
            mPendingActors.end(), actor);
    if(iter != mPendingActors.end())
    {
        std::iter_swap(iter, mPendingActors.end() -1);
        mPendingActors.pop_back();
    }
    //is it in actors
    iter = std::find(mActors.begin(), mActors.end(), actor);
    if(iter != mActors.end())
    {
        //swap end of vector and pop off 
        std::iter_swap(iter, mActors.end() - 1);
        mActors.pop_back();
    }
}
