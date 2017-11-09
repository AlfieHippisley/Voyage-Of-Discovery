
class Island {
  
  int distance;
  PImage grass;
  
  Island(int dist) {
    distance = dist - 3000;
    grass = loadImage("grass.jpg");
  }
  
  void displayIsland() {

    pushMatrix();
    PShape island = createShape(SPHERE, 600);
    island.setTexture(grass);
    island.setStrokeWeight(0);
    rotateX(PI/3);
    translate(-300,distance,-600);
    shape(island);
    popMatrix();
  }
  
  public void move(int movement) {
    
    distance+=movement;
  }
  
}