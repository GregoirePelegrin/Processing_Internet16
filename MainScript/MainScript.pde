Square square;

int maxRand;
int nbrNodes;
float sizeSquare;
float nodeSize;

int count;
int fRate;

void setup(){
  size(600, 600);
  frameRate(2);
  fill(0, 150);
  stroke(0, 150);
  /*frameRate(30);
  background(255);
  fill(0, 10);
  stroke(0, 10);*/
  
  maxRand = 30;
  nbrNodes = 6;
  sizeSquare = 300;
  nodeSize = 10;
  
  square = new Square();
}

void draw(){
  background(255);
  translate(width/4, height/4);
  
  square.update();
  square.display();
}
