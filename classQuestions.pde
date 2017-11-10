
class Question {
  
  int number, rightAnswer;
  String question, answerA, answerB, answerC, answerD;
  float startTime;
  boolean done = false;
  
  Question(int n, String q, String a, String b, String c, String d, int r) {
    
  number = n;  
  question = q;
  answerA = a;
  answerB = b;
  answerC = c;
  answerD = d;
  rightAnswer = r;
    
  }
  
  void displayQuestion() {
    
    if (!done) {
      done = true;
      startTime=millis();
    }
    
    translate(0,-100,300);
    
    fill(50,100,200);
    stroke(255);
    textMode(SHAPE);
    textSize(25);
    
    rect(width/8,height/8,3*width/4,height/6);
   
    Button b1 = new Button(6, width/4, 6*height/20,  width/2, height/12, answerA);
    Button b2 = new Button(7, width/4, 8*height/20,  width/2, height/12, answerB);
    Button b3 = new Button(8, width/4, 10*height/20, width/2, height/12, answerC);
    Button b4 = new Button(9, width/4, 12*height/20, width/2, height/12, answerD); 
    
    b1.drawButton();
    b2.drawButton();
    b3.drawButton();
    b4.drawButton();
    
    b1.setQuestion(number);
    b2.setQuestion(number);
    b3.setQuestion(number);
    b4.setQuestion(number);
    
    
    
    fill(255);
    
    translate(0,0,0.1);
    text(question, width/8+10, height/8+100);
    
    translate(0,100,-300.1);
    
  }
  
  void answerQuestion(int userAnswer, float startTime) {
    
    float time = millis()-startTime;
    if (userAnswer==rightAnswer) {
      println(time);
    }
  }
}