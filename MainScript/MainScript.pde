int nbrNodes;
float sizeCube;
Cube cube;

void setup(){
  size(600, 600, P3D);
  frameRate(30);
  
  nbrNodes = 2;
  sizeCube = 30;
  cube = new Cube(nbrNodes);
}

void draw(){
  background(0);
  
  cube.display();
}
