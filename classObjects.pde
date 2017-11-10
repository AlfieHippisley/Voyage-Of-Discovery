
class Objects {

  public void displayShip() {
  
    pushMatrix();
    
    strokeWeight(1);
    translate(width/2,(sin(bobbing)*20)+400);
    rotateX(PI/3);
    rotateY(sin(windSpeed)/20);
    rotateZ(HALF_PI);
    fill(130, 80, 20);
    stroke(65, 40, 10);
    scale(0.8);
    beginShape();
    rotateX(radians(-90));
    pushMatrix();
    box(200, 160, 160);
    translate(0, 0, -80);
    triangle(100, -80, 100, 80, 320, -80);
    triangle(-100, -80, -100, 80, -320, -80);
    translate(0, 0, 160);
    triangle(100, -80, 100, 80, 320, -80);
    triangle(-100, -80, -100, 80, -320, -80);
    translate(0, -80, -80);
    rotateX(HALF_PI);
    rect(-320, -80, 220, 160);
    rect(100, -80, 220, 160);
    popMatrix();
    translate(0, -200, 0);
    box(20, 300, 20);
    fill(240);
    triangle(-10, -150, -10, 100, -250, 100);
    triangle(10, -150, 10, 100, 250, 100);
    
    popMatrix();
  }

  public void displayWater() {

    pushMatrix();
    
    strokeWeight(1);
    translate(width/2, height/2+50);
    rotateX(PI/3);
    translate(-w/2, -h/2);
    noStroke();
    stroke(40,100,180);
    float yoff = windSpeed;
    for (int y = 0; y < rows; y++) {
      float xoff = 0;
      for (int x = 0; x < cols; x++) {
        terrain[x][y] = map(noise(xoff, yoff), 0, 1, -50, 50);
        xoff += 0.2;
      }
      yoff += 0.2;
    }
    fill(20, 120, 210);
    for (int y = 0; y < rows-1; y++) {
      beginShape(TRIANGLE_STRIP);
      for (int x = 0; x < cols; x++) {
        vertex(x*scl, y*scl, terrain[x][y]);
        vertex(x*scl, (y+1)*scl, terrain[x][y+1]);
      }
      endShape();
    }
    popMatrix();
  }

  public void displayIslands() {
    
    for (int i=0; i<10; i++) {
      island[i].displayIsland();
    }
  
  }

  public void displayFog() {
    
    pushMatrix();
    
    rotateX(PI/3);
    translate(600,0,0);
    noStroke();
    fill(255,100);
    for (int i = 10; i>0; i--){
      sphere(2000+(100*i));
    }
    rotateX(-PI/3);
    popMatrix();
  }
  
  public void trackMovement() {
    
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
      
      for (int i=0;i<10;i++) {
        if (island[i].distance<0&&island[i].distance>-500) {
          q[i].displayQuestion();
        }
      }
    }
  }
}