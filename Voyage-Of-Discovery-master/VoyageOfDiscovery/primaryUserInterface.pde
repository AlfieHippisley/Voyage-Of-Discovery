// Written by Alfie Hippisley and Rauf Nawaz Tarar Sultana
import controlP5.*;
ControlP5 cp5;



void setup(){
 // Setup Canvas
 size(1200,700);
 background(125);
  MenuButtons();
 
  
}

void draw(){
  mainMenu();
 
  
}

void gameUI(){
  int score = 30000;
  float Time = 60;
  uiBoxes(score,Time);
  
/**

Score system reminder for us

Faster you hit the button the more score you get
Questions should change there posistion in the list
Should show timer

**/
}

void uiBoxes(int score, float Time){
  // Design for boxes
  stroke(230);
  strokeWeight(5);
  fill(50,100,200);
  
  // Score counter
  rect(-20,620,200,100,20);
  
  
  // Objective
  rect(450,620,300,100,20);
  text(Time, 520,690);
  textSize(20);
  text("Time:", 20, 655);
  
  // Username/Time
  rect(1020,620,200,100,20);
  
  // Display score
  textSize(32);
  fill(255);
  text(score, 20,690);
  textSize(20);
  text("Score:", 20, 655);
  
  text(Time, 1050,690);
  text("Time:", 1050, 655);

}

void displayStory(){
  
}

void displayQuestions(){
  
}

void mainMenu(){
//PImage shipWheel;
  
  stroke(255);
  strokeWeight(5);
  fill(0,148,255);
  rect(-10,-10,300,1200);
/**shipWheel = loadImage("shipWheel.jpg"); 
  image(shipWheel,45,650);
  **/
  
  noStroke();
  fill(255);
  textSize(30);
  text("Voyage of the\n   Discovery", 45, 60);
  //rect(45,150,200,40,20);
  rect(45,200,200,40,20);
  rect(45,250,200,40,20);
  rect(45,300,200,40,20);
  rect(45,350,200,40,20);
  textSize(15);
  fill(0,148,255);
  //text("Play", 70, 175);
  text("Leaderboard", 70, 225);
  text("Controls", 70, 275);
  text("About", 70,325);
  text("Credits", 70,375);



 


  
}

public void Play() { 
  
  println("pressed " + millis());
  println("");
     
}

void MenuButtons(){
  PFont font = createFont("arial",15);
  cp5=new ControlP5(this);
  cp5.addButton("      Play")
  .setPosition(45,150)       
  .setSize(200,40)
  .setColorBackground( color(100,190,255 ) )
  .setFont(font)
  .getCaptionLabel().align(ControlP5.LEFT, ControlP5.CENTER);

  cp5=new ControlP5(this);
  cp5.addButton("      Leaderboard")
  .setPosition(45,200)       
  .setSize(200,40)
  .setColorBackground( color(100,190,255 ) )
  .setFont(font)
  .getCaptionLabel().align(ControlP5.LEFT, ControlP5.CENTER);
  
  cp5=new ControlP5(this);
  cp5.addButton("      Controls")
  .setPosition(45,250)       
  .setSize(200,40)
  .setColorBackground( color(100,190,255 ) )
  .setFont(font)
  .getCaptionLabel().align(ControlP5.LEFT, ControlP5.CENTER);
  
  cp5=new ControlP5(this);
  cp5.addButton("      About")
  .setPosition(45,300)       
  .setSize(200,40)
  .setColorBackground( color(100,190,255 ) )
  .setFont(font)
  .getCaptionLabel().align(ControlP5.LEFT, ControlP5.CENTER);
  
  
  cp5=new ControlP5(this);
  cp5.addButton("      Credits")
  .setPosition(45,350)       
  .setSize(200,40)
  .setColorBackground( color(100,190,255 ) )
  .setFont(font)
  .getCaptionLabel().align(ControlP5.LEFT, ControlP5.CENTER);
  
}


/**

Score system reminder for us

Faster you hit the button the more score you get
Questions should change there posistion in the list
Should show timer

**/