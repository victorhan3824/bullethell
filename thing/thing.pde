/*
  ::::::..      ::::::  ::    ::  ::::::
 ::: :::::::     ::      ::    ::  ::
 :::       ::    ::::::  ::    ::  ::::::
 ::: :::::::         ::  ::.  .::      ::
 :::.....::      ::::::    ::::    ::::::
 :::.....::
 :::     ::                                 
 */

//color pallette =======================================================
color white      = #FFFFFF; 
color red        = #FF0000;
color pink       = #FF6ABC;
color lightBlue  = #00FCEE;
color brown      = #9F642C;
color blue       = #324BE3;
color gray       = #818183;
color lightGreen = #00FF00;
color medGreen   = #006C27;
color yellow     = #F6FF05;
color orange     = #FF7E05;
color darkBrown  = #341F18; 
color black      = #000000;      
color lightGray  = #939393;

//Framework variables ==================================================
final int INTRO = 0;
final int GAME  = 1; 
final int OVER  = 2;
final int PAUSE = 3;
int mode; 

//class initialization
ArrayList<GameObject> objects;
Starship player1;

//keyboard variable
boolean up, down, left, right, space;
boolean stat;

//misc variables
PFont AVA;
PImage spaceship, myLaser, enemy1;
int statCounter;

//Variables ============================================================


//setup, draw, mouse ===================================================
void setup() {
  fullScreen();  
  mode = INTRO; 
  textAlign(CORNER, CENTER);
  rectMode(CENTER);

  //text, fonts, images
  AVA = createFont("AVA.ttf", 169);
      //player ship
  spaceship = loadImage("spaceship.png");
  myLaser = loadImage("myLaser.png");
      //Non-player entities  
  enemy1 = loadImage("enemy1.png");

  /*this code can now be found ROUNDRESET tab, under function void reset() {}
  //class initalization input
  objects = new ArrayList<GameObject>();
  player1 = new Starship();
  objects.add(player1);
  
  //misc
  statCounter = 1;
  */
  reset();
}

void draw() {
  if (mode == INTRO)        intro();
  else if (mode == GAME)     game();
  else if (mode == PAUSE)    rest();
  else if (mode == OVER) gameover();
}

void mouseClicked() {
  if (mode == INTRO)        introClick();
  else if (mode == GAME)     gameClick();
  else if (mode == PAUSE)    restClick();
  else if (mode == OVER) gameoverClick();
}
