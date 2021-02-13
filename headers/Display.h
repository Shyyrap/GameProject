#pragma once
#include"SDL.h"
#include<GL/glew.h>
#include"SDL_opengl.h"

class Display
{
    public:
        Display();
        Display(const char* name);
        virtual ~Display();
        bool IsClosed();
        void Shutdown();
        void SwapWindow();
        void DisplayClear(float r,float g, float b, float a); 
    private:
        SDL_Window* mWindow;
        SDL_GLContext mContext;
        bool mIsClosed;
};
