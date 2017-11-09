
class Question {
  
  int number;
  String question;
  String answerA;
  String answerB;
  String answerC;
  String answerD;
  String rightAnswer;
  
  Question(int n, String q, String a, String b, String c, String d, String r) {
    
  number = n;  
  question = q;
  answerA = a;
  answerB = b;
  answerC = c;
  answerD = d;
  rightAnswer = r;
    
  }
  
  void displayQuestion() {
    
    camera(width/2, height/2, (height/2) / tan(PI/6), width/2, height/2, 0, 0, 1, 0);
    
    background(20,120,210);
    
  }
}