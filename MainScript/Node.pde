class Node{
  boolean random;
  float xPos_normal;
  float yPos_normal;
  float xPos;
  float yPos;
  
  Node(float x, float y){
    this.random = true;
    this.xPos_normal = x;
    this.yPos_normal = y;
    
    this.xPos = 0;
    this.yPos = 0;
  }
  
  void update(){
    this.random = !this.random;
    if(this.random){
      this.xPos = this.xPos_normal + random(-maxRand, maxRand);
      this.yPos = this.yPos_normal + random(-maxRand, maxRand);
    } else {
      this.xPos = this.xPos_normal;
      this.yPos = this.yPos_normal;
    }
  }
  
  void display(){
    ellipse(this.xPos, this.yPos, nodeSize, nodeSize);
  }
}
