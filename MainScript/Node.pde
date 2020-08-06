class Node{
  boolean random;
  float xPos_normal;
  float yPos_normal;
  float zPos_normal;
  float xPos;
  float yPos;
  float zPos;
  
  Node(float x, float y, float z){
    this.random = true;
    this.xPos_normal = x;
    this.yPos_normal = y;
    this.zPos_normal = z;
    
    this.xPos = 0;
    this.yPos = 0;
    this.zPos = 0;
  }
  
  void update(){
    this.random = !this.random;
    if(this.random){
      this.xPos = this.xPos_normal + random(-maxRand, maxRand);
      this.yPos = this.yPos_normal + random(-maxRand, maxRand);
      this.zPos = this.zPos_normal + random(-maxRand, maxRand);
    } else {
      this.xPos = this.xPos_normal;
      this.yPos = this.yPos_normal;
      this.zPos = this.zPos_normal;
    }
  }
  
  void display(){
    translate(this.xPos, this.yPos, this.zPos);
    sphere(sizeNodes);
    translate(-this.xPos, -this.yPos, -this.zPos);
  }
}
