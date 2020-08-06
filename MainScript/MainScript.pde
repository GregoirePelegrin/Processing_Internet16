import peasy.*;

int maxRand;
int nbrNodes;
float sizeCube;
float sizeNodes;

PeasyCam cam;
Cube cube;
int count;

void setup(){
  size(600, 600, P3D);
  frameRate(30);
  //background(255);
  
  maxRand = 20;
  nbrNodes = 6;
  sizeCube = 300;
  sizeNodes = 2;
  
  cam = new PeasyCam(this, 500);
  cam.rotateX(PI/5);
  cube = new Cube();
  //cube.update();
  count = 0;
}

void draw(){
  background(255);
  translate(-sizeCube/2, -sizeCube/2, -sizeCube/2);
  
  if(count%5 == 0) cube.update();
  cube.display();
  
  cam.rotateY(0.01);
  count++;
}
