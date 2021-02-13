#pragma once
#include<cmath>
const float SCREEN_WIDTH = 720;
const float SCREEN_HEIGHT = 480;
const float DISPLAY_R = 0.80f;
const float DISPLAY_G = 0.80f;
const float DISPLAY_B = 0.80f;
const float DISPLAY_A = 1.0f;
const float PI = 3.1415f;
const float fov = 90.0f;
const float fov_in_radians = (180.0f/PI)*fov;
const float far = 100.0f;
const float near = 0.1f;
const float yScale = 1.0f/(tan(fov_in_radians));
const float xScale = yScale*(SCREEN_HEIGHT/SCREEN_WIDTH);
const float FloatViewProjection[] = 
{
    xScale , 0.0f, 0.0f, 0.0f,
    0.0f,  yScale, 0.0f, 0.0f,
    0.0f,  0.0f,   far/(far-near), 1.0f,
    0.0f,  0.0f,   (-near*far)/(far-near), 0.0f
};
const float SimpleViewProjection[] = 
{
    2.0f/SCREEN_WIDTH, 0.0f, 0.0f, 0.0f, 
    0.0f, 2.0f/SCREEN_HEIGHT,0.0f, 0.0f,
    0.0f,           0.0f, 1.0f, 0.0f,
    0.0f,           0.0f, 0.0f, 1.0f
};
const float square[]= 
{
    -50.0f, -50.0f, 0.0f,  0.0f, 0.0f, 0.0f,  0.0f, 1.0f,//bottom left
    -50.0f, 50.0f, 0.0f,   0.0f,0.0f,0.0f,    0.0f, 0.0f, //top left 
    50.0f, 50.0f, 0.0f,    0.0f,0.0f,0.0f,    1.0f, 0.0f,  //top right
    50.0f,-50.0f, 0.0f,    0.0f,0.0f,0.0f,    1.0f, 1.0f   //bottom right
};
const unsigned int square_indices[] = 
{
    0,1,2,
    2,3,0
};

const float TUTORIAL_CUBE[]=
{
    -10.0f, -10.0f, -10.0f,  0.0f, 0.0f,
    10.0f, -10.0f, -10.0f,  1.0f, 0.0f,
    10.0f,  10.0f, -10.0f,  1.0f, 1.0f,
    10.0f,  10.0f, -10.0f,  1.0f, 1.0f,
    -10.0f,  10.0f, -10.0f,  0.0f, 1.0f,
    -10.0f, -10.0f, -10.0f,  0.0f, 0.0f,

    -10.0f, -10.0f,  10.0f,  0.0f, 0.0f,
    10.0f, -10.0f,  10.0f,  1.0f, 0.0f,
    10.0f,  10.0f,  10.0f,  1.0f, 1.0f,
    10.0f,  10.0f,  10.0f,  1.0f, 1.0f,
    -10.0f,  10.0f,  10.0f,  0.0f, 1.0f,
    -10.0f, -10.0f,  10.0f,  0.0f, 0.0f,

    -10.0f,  10.0f,  10.0f,  1.0f, 0.0f,
    -10.0f,  10.0f, -10.0f,  1.0f, 1.0f,
    -10.0f, -10.0f, -10.0f,  0.0f, 1.0f,
    -10.0f, -10.0f, -10.0f,  0.0f, 1.0f,
    -10.0f, -10.0f,  10.0f,  0.0f, 0.0f,
    -10.0f,  10.0f,  10.0f,  1.0f, 0.0f,

    10.0f,  10.0f,  10.0f,  1.0f, 0.0f,
    10.0f,  10.0f, -10.0f,  1.0f, 1.0f,
    10.0f, -10.0f, -10.0f,  0.0f, 1.0f,
    10.0f, -10.0f, -10.0f,  0.0f, 1.0f,
    10.0f, -10.0f,  10.0f,  0.0f, 0.0f,
    10.0f,  10.0f,  10.0f,  1.0f, 0.0f,

    -10.0f, -10.0f, -10.0f,  0.0f, 1.0f,
    10.0f, -10.0f, -10.0f,  1.0f, 1.0f,
    10.0f, -10.0f,  10.0f,  1.0f, 0.0f,
    10.0f, -10.0f,  10.0f,  1.0f, 0.0f,
    -10.0f, -10.0f,  10.0f,  0.0f, 0.0f,
    -10.0f, -10.0f, -10.0f,  0.0f, 1.0f,

    -10.0f,  10.0f, -10.0f,  0.0f, 1.0f,
    10.0f,  10.0f, -10.0f,  1.0f, 1.0f,
    10.0f,  10.0f,  10.0f,  1.0f, 0.0f,
    10.0f,  10.0f,  10.0f,  1.0f, 0.0f,
    -10.0f,  10.0f,  10.0f,  0.0f, 0.0f,
    -10.0f,  10.0f, -10.0f,  0.0f, 1.0f
};
const float TUTORIAL_CUBE_ONE[]=
{
    -0.10f, -0.10f, -0.10f,  0.0f, 0.0f,
    0.10f, -0.10f, -0.10f,  1.0f, 0.0f,
    0.10f,  0.10f, -0.10f,  1.0f, 1.0f,
    0.10f,  0.10f, -0.10f,  1.0f, 1.0f,
    -0.10f,  0.10f, -0.10f,  0.0f, 1.0f,
    -0.10f, -0.10f, -0.10f,  0.0f, 0.0f,

    -0.10f, -0.10f,  0.10f,  0.0f, 0.0f,
    0.10f, -0.10f,  0.10f,  1.0f, 0.0f,
    0.10f,  0.10f,  0.10f,  1.0f, 1.0f,
    0.10f,  0.10f,  0.10f,  1.0f, 1.0f,
    -0.10f,  0.10f,  0.10f,  0.0f, 1.0f,
    -0.10f, -0.10f,  0.10f,  0.0f, 0.0f,

    -0.10f,  0.10f,  0.10f,  1.0f, 0.0f,
    -0.10f,  0.10f, -0.10f,  1.0f, 1.0f,
    -0.10f, -0.10f, -0.10f,  0.0f, 1.0f,
    -0.10f, -0.10f, -0.10f,  0.0f, 1.0f,
    -0.10f, -0.10f,  0.10f,  0.0f, 0.0f,
    -0.10f,  0.10f,  0.10f,  1.0f, 0.0f,

    0.10f,  0.10f,  0.10f,  1.0f, 0.0f,
    0.10f,  0.10f, -0.10f,  1.0f, 1.0f,
    0.10f, -0.10f, -0.10f,  0.0f, 1.0f,
    0.10f, -0.10f, -0.10f,  0.0f, 1.0f,
    0.10f, -0.10f,  0.10f,  0.0f, 0.0f,
    0.10f,  0.10f,  0.10f,  1.0f, 0.0f,

    -0.10f, -0.10f, -0.10f,  0.0f, 1.0f,
    0.10f, -0.10f, -0.10f,  1.0f, 1.0f,
    0.10f, -0.10f,  0.10f,  1.0f, 0.0f,
    0.10f, -0.10f,  0.10f,  1.0f, 0.0f,
    -0.10f, -0.10f,  0.10f,  0.0f, 0.0f,
    -0.10f, -0.10f, -0.10f,  0.0f, 1.0f,

    -0.10f,  0.10f, -0.10f,  0.0f, 1.0f,
    0.10f,  0.10f, -0.10f,  1.0f, 1.0f,
    0.10f,  0.10f,  0.10f,  1.0f, 0.0f,
    0.10f,  0.10f,  0.10f,  1.0f, 0.0f,
    -0.10f,  0.10f,  0.10f,  0.0f, 0.0f,
    -0.10f,  0.10f, -0.10f,  0.0f, 1.0f
};

const unsigned int TUTORIAL_CUBE_INDICES[] = 
{
    0,1,2,
    3,2,0
};

const float ShapeVertices[]= 
{
    //Frontal part
    -50.f, -50.f, 0.0f, 0.0f, 0.0f, 50.f,//left-bottom
    -50.f, 50.f, 0.0f, 0.0f, 0.0f, 50.f,//left-top
    50.f, 50.f, 0.0f, 0.0f, 0.0f, 50.f,//right-top
    50.f, -50.f, 0.0f, 0.0f, 0.0f, 50.f//right-bottom
};
const unsigned int  ShapeIndices[] =
{
    0,1,2,
    2,3,0
};
#define STARS_SPEED 200
#define BG_SPEED 100
#define INIT_WINDOW_POS_X 0
#define INIT_WINDOW_POS_Y 0
#define DEFAULT_BULLET_SPEED 50
#define HUMAN_BULLET_SPEED 100
