#include"Display.h"
#include<iostream>
#include"Const.h"
Display::Display(const char* name):mIsClosed(false)
{
    if(SDL_Init(SDL_INIT_VIDEO | SDL_INIT_AUDIO )!= 0)
    {
        SDL_Log("Unable to initalize  SDL: %s ", SDL_GetError());
        mIsClosed = true;
    }
    mWindow = SDL_CreateWindow(name,100,100,
            SCREEN_WIDTH,SCREEN_HEIGHT, SDL_WINDOW_OPENGL);
    if(mWindow == nullptr) 
    {
        SDL_Log("Failed to create window: %s", SDL_GetError());
        mIsClosed = true;
    }
    //Use the core OpenGL profile
    SDL_GL_SetAttribute(SDL_GL_CONTEXT_PROFILE_MASK,
            SDL_GL_CONTEXT_PROFILE_CORE);
    //Specify version 3.3
    SDL_GL_SetAttribute(SDL_GL_CONTEXT_MAJOR_VERSION, 3);
    SDL_GL_SetAttribute(SDL_GL_CONTEXT_MINOR_VERSION, 3);
    SDL_GL_SetAttribute(SDL_GL_RED_SIZE,8);
    SDL_GL_SetAttribute(SDL_GL_GREEN_SIZE, 8);
    SDL_GL_SetAttribute(SDL_GL_BLUE_SIZE,8);
    //the alpha size means transparency 255 values
    SDL_GL_SetAttribute(SDL_GL_ALPHA_SIZE, 8);
    //Enable double buffering
    SDL_GL_SetAttribute(SDL_GL_DOUBLEBUFFER,1);
    //Force OpenGL to use hardware acceleration
    SDL_GL_SetAttribute(SDL_GL_ACCELERATED_VISUAL,1);
    //Context is the "World" of OpenGL
    //contains every item that opengl knows about ,
    //such as color, buffering, images, models loaded
    mContext = SDL_GL_CreateContext(mWindow);
    glewExperimental = GL_TRUE;
    if (glewInit() != GLEW_OK)
    {
        SDL_Log("Failed to initialize GLEW.");
        mIsClosed = true;
    }

    // On some platforms, GLEW will emit a benign error code,
    // so clear it
    glGetError();
    mIsClosed = false;
}
bool Display::IsClosed()
{
    return mIsClosed;
}
Display::~Display()
{
    Shutdown();
}

void Display::Shutdown()
{
    SDL_GL_DeleteContext(mContext);
    SDL_DestroyWindow(mWindow);
    SDL_Quit();
}
void Display::SwapWindow()
{
    SDL_GL_SwapWindow(mWindow);
}
void Display::DisplayClear(const float r, const float g,
        const float b,const float a)
{
    //set color to black
    glClearColor(r,g,b,a);
    //clear the color buffer
    glEnable(GL_DEPTH_TEST);
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
}
