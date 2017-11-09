int cols, rows;  //<>//
int scl = 50;
int w = 5000; // Width of Ocean
int h = 6000; // Height of Ocean
float bobbing = 0;
float windSpeed = 0;
boolean boo = false;
int gameState = 1;

float[][] terrain;

Island[] island;
Objects game;



void setup() {
  
  size(1200, 750, P3D);
  
  cols = w / scl;
  rows = h/ scl;
  
  terrain = new float[cols][rows];
  island = new Island[10];
  game = new Objects();
  
  
  for (int i=0; i<10; i++) {
    island[i] = new Island(i*-4000);
  }
  
}



void draw() {

  bobbing += 0.05;
  windSpeed -= 0.01;
  
  lights();
  directionalLight(200, 150, 100, width/2, height/2, 0);

  if (gameState==0) {
    displayGame();
  }
  else if (gameState==1) {
    mainMenu();
  }
}



void displayGame() {
  
  camera(width/2+(sin(bobbing)*100), height/2-200, 1000, width/2, height/2, 0, 0, 1, 0);

  background(20, 120, 210);

  game.displayWater();
  
  game.displayShip();
  
  game.displayIslands();
  
  game.displayFog();

  game.trackMovement();
  
  gameUI();
    
}