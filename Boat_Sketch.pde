int cols, rows;  //<>//
int scl = 50;
int w = 5000; // Width of Ocean
int h = 6000; // Height of Ocean
float bobbing = 0;
float windSpeed = 0;
boolean boo = false;

Island[] island;
float[][] terrain;

void setup() {
  size(1200, 750, P3D);
  cols = w / scl;
  rows = h/ scl;
  terrain = new float[cols][rows];
  island = new Island[10];
  for (int i=0; i<10; i++) {
    island[i] = new Island(i*-4000);
  }
}


void draw() {

  Objects game = new Objects();
  bobbing += 0.05;
  windSpeed -= 0.01;

  lights();
  directionalLight(200, 150, 100, width/2, height/2, 0);


  background(20, 120, 210);

  game.displayWater();
  game.displayShip();
  for (int i=0; i<10; i++) {
    island[i].displayIsland();
  }
  game.displayFog();


  camera(width/2+100, height/2-200, 1000, width/2, height/2, 0, 0, 1, 0);

  if (keyPressed) {
    if (keyCode==UP) {
      windSpeed -= 0.05;
      for (int i=0; i<10; i++) {
        island[i].move(12);
      }
    } else if (keyCode==DOWN) {
      windSpeed += 0.03; 
      for (int i=0; i<10; i++) {
        island[i].move(-18);
      }
    }
  }
  
  
  for (int i=0;i<10;i++) {
    if (island[i].distance<0&&island[i].distance>-500&&boo) {
      // 
    }
  }

  //println(frameRate);
}