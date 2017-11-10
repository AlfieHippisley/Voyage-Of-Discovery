// Written by Alfie Hippisley and Rauf Nawaz Tarar Sultana


  void gameUI(){
    int score = 30000;
    float Time = 60;
    uiBoxes(score,Time);
  }
  
  void uiBoxes(int score, float time) {
    
    stroke(230);
    strokeWeight(5);
    fill(50,100,200);
    
    rect(0,-100,200,100,20);
    rect(450,-100,300,100,20);
    rect(1020,-100,200,100,20);
    
    translate(0,0,0.01);
    
    fill(255);
    
    textSize(20);
    text("Score:", 20, -60);
    text("Time:", 1050, -60);
    
    textSize(32);
    text(score, 20,-20);
    text(time, 1040,-20);
    
    translate(0,0,-0.01);
  
  }
  
  void displayStory() {
    
  }
  
  void displayQuestions() {
    
  }
  
  void mainMenu() {
    
    camera(width/2, height/2, (height/2) / tan(PI*30.0 / 180.0), width/2, height/2, 0, 0, 1, 0);
    
    stroke(255);
    strokeWeight(5);
    fill(0,148,255);
    rect(-10,-10,300,1200);
  
    
    noStroke();
    fill(255);
    textSize(30);
    text("Voyage of the\n   Discovery", 45, 60);
    
    menuButtons();
  }
  
  void menuButtons(){
    
    Button b1 = new Button(1,45,150,200,40,"Play");
    Button b2 = new Button(2,45,200,200,40,"Leaderboard");
    Button b3 = new Button(3,45,250,200,40,"Controls");
    Button b4 = new Button(4,45,300,200,40,"About");
    Button b5 = new Button(5,45,350,200,40,"Credits");
    
    b1.drawButton();
    b2.drawButton();
    b3.drawButton();
    b4.drawButton();
    b5.drawButton();   
  }
  
/**

Score system reminder for us

Faster you hit the button the more score you get
Questions should change there posistion in the list
Should show timer

**/