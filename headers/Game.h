#pragma once
#include "Const.h"
#include<unordered_map>
#include<vector>
#include<string>
#include"Transform.h"
class Game
{
    public: 
        Game();
        bool Initialize();
		void RunLoop(); 
	void Shutdown();
        void AddActor(class Actor* actor);
        void RemoveActor(class Actor* actor);
        const uint8_t* GetGameKeyboardState();
        void ProcessInput();
        void UpdateGame();
        void GenerateOutput(); 
        void UnloadData();
        void LoadGameActors();
        class Shader* GetGameShader(){return mGameShader;}
        class Renderer* GetRenderer(){return mGameRenderer;}
        void LoadData();
        void CreateSpriteVerts();
    private:
        class Renderer* mGameRenderer;
        class Shader* mGameShader;
        //all the actors in the game
        std::vector<class Actor*> mActors;
        //any pending actors
        std::vector<class Actor*> mPendingActors;
        //SDL_objects
        uint32_t mTicksCount;
        bool mIsRunning;
        bool mUpdatingActors;
        class Camera* mCameraActor;
};
