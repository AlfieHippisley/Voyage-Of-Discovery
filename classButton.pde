
class Button {
  
  int bN, bX, bY, bW, bH, bQ;
  String bT;
  
  Button(int b,int x, int y, int w, int h, String t) {
  bN = b;
  bX = x;
  bY = y;
  bW = w;
  bH = h;
  bT = t;
    
  }
  
  void drawButton() {
    
    fill(50,100,255);
    if ((mouseX>bX&&mouseX<bX+bW)&&(mouseY>bY&&mouseY<bY+bH)) {
      fill(100,190,255);
      if (mousePressed) {
        fill(150,220,255);
        if (bN<6) {
          buttonAction(bN);
        }
        else {
          q[bQ].answerQuestion(bN-5, q[bQ].startTime);
        }
      }
    }
    rect(bX,bY,bW,bH,5);
    
    translate(0,0,0.1);
    fill(255);
    text(bT,bX+5, bY+bH-8);
    translate(0,0,-0.1);
  }
  
  void setQuestion(int q) {
    bQ = q;
  }
  
  void buttonAction(int button) {
    
    if (button==1) {
      gameState = 0;
    }
    else if (button==2) {
      // Leaderboard
    }
    else if (button==3) {
      // Controls
    }
    else if (button==4) {
      // About
    }
    else if (button==5) {
      // Credits
    }
  }
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
}