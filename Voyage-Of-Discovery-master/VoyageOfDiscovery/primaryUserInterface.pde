// Written by Alfie Hippisley and Rauf Nawaz Tarar Sultana


  void gameUI(){
    int score = 30000;
    float Time = 60;
    uiBoxes(score,Time);
  }
  /**
  
  Score system reminder for us
  
  Faster you hit the button the more score you get
  Questions should change there posistion in the list
  Should show timer
  
  **/
  
  void uiBoxes(int score, float time) {
    
    // Design for boxes
    stroke(230);
    strokeWeight(5);
    fill(50,100,200);
    
    // Score counter
    rect(-20,620,200,100,20);
    
    
    // Objective
    rect(450,620,300,100,20);
    text(time, 520,690);
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
    
    text(time, 1050,690);
    text("Time:", 1050, 655);
  
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
    PFont font = createFont("arial",15);
    cp5=new ControlP5(this);
    cp5.addButton("Play")
    .setPosition(45,150)       
    .setSize(200,40)
    .setColorBackground( color(100,190,255 ) )
    .setFont(font)
    .getCaptionLabel().align(ControlP5.CENTER, ControlP5.CENTER);
  
    cp5=new ControlP5(this);
    cp5.addButton("Leaderboard")
    .setPosition(45,200)       
    .setSize(200,40)
    .setColorBackground( color(100,190,255 ) )
    .setFont(font)
    .getCaptionLabel().align(ControlP5.CENTER, ControlP5.CENTER);
    
    cp5=new ControlP5(this);
    cp5.addButton("Controls")
    .setPosition(45,250)       
    .setSize(200,40)
    .setColorBackground( color(100,190,255 ) )
    .setFont(font)
    .getCaptionLabel().align(ControlP5.CENTER, ControlP5.CENTER);
    
    cp5=new ControlP5(this);
    cp5.addButton("About")
    .setPosition(45,300)       
    .setSize(200,40)
    .setColorBackground( color(100,190,255 ) )
    .setFont(font)
    .getCaptionLabel().align(ControlP5.CENTER, ControlP5.CENTER);
    
    
    cp5=new ControlP5(this);
    cp5.addButton("Credits")
    .setPosition(45,350)       
    .setSize(200,40)
    .setColorBackground( color(100,190,255 ) )
    .setFont(font)
    .getCaptionLabel().align(ControlP5.CENTER, ControlP5.CENTER);
    
  }
  
  
  public void Play() { 
    
    gameState = 0;
       
  }


/**

Score system reminder for us

Faster you hit the button the more score you get
Questions should change there posistion in the list
Should show timer

**/