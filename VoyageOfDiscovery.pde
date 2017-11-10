int cols, rows;  //<>//
int scl = 50;
int w = 5000; // Width of Ocean
int h = 6000; // Height of Ocean
float bobbing = 0;
float windSpeed = 0;
int gameState = 1;

float[][] terrain;

Island[] island;
Objects game;
Question[] q;


void setup() {
  
  size(1200, 750, P3D);
  
  cols = w / scl;
  rows = h/ scl;
  
  terrain = new float[cols][rows];
  island = new Island[10];
  game = new Objects();
  
  setQuestions();
  
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
  else if (gameState==2) {
    
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

void setQuestions() {
    
    q = new Question[10];
    q[0] = new Question(1,"How many bridges go across the Firth of Tay?", "1","2","3","4",2);
    q[1] = new Question(2,"Name a comic book Dundee is famous for?","Pokemon","Spiderman","Batman","The Beano",4);
    q[2] = new Question(3,"What are the people of Dundee referred to as?","Dunwegians","Dons","Dundonians","Deens",3);
    q[3] = new Question(4,"What is the famous landmark at the top of Dundee?","The Peak","The Law","Arthur's Seat","Bass Rock",2);
    q[4] = new Question(5,"What was The Law 400 million years ago?","A Volcano","A Mountain","A Waterfall","A Castle",1);
    q[5] = new Question(6,"Inverness is the 5th largest city in Scotland, where does Dundee come?","First","Second","Third","Fourth",4);
    q[6] = new Question(7,"What is the V&A designed to look like?","A Pyramid","A Mountain","A Ship","A Space Ship",3);
    q[7] = new Question(8,"What is it isnpired by?","Scottish Rocks","Boats","The Law","Waves",1);
    q[8] = new Question(9,"Which of these is a Univerversity in Dundee?","Queen Margaret University","Napier University","Robert Gordon University","Abertay University",4);
    q[9] = new Question(10,"What kind of Jam is Dundee famous for?","Strawberry Jam","Raspberry Jam","Marmalade Jam","Apricot Jam",3);
  
  }