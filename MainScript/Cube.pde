class Cube{
  ArrayList<ArrayList<ArrayList<Node>>> nodes;
  
  Cube(){
    this.nodes = new ArrayList<ArrayList<ArrayList<Node>>>();
    
    ArrayList<ArrayList<Node>> tempLayer;
    ArrayList<Node> tempCol;
    for(int i=0; i<nbrNodes; i++){
      tempLayer = new ArrayList<ArrayList<Node>>();
      for(int j=0; j<nbrNodes; j++){
        tempCol = new ArrayList<Node>();
        for(int k=0; k<nbrNodes; k++){
          Node node = new Node(i*sizeCube/(nbrNodes-1), j*sizeCube/(nbrNodes-1), k*sizeCube/(nbrNodes-1));
          tempCol.add(node);
        }
        tempLayer.add(tempCol);
      }
      nodes.add(tempLayer);
    }
  }
  
  void update(){
    for(int i=0; i<nbrNodes; i++){
      for(int j=0; j<nbrNodes; j++){
        for(Node node : nodes.get(i).get(j)){
          node.update();
        }
      }
    }
  }
  
  void display(){
    fill(0);
    noStroke();
    /*fill(0, 20);
    noStroke();*/
    
    for(int i=0; i<nbrNodes; i++){
      for(int j=0; j<nbrNodes; j++){
        for(Node node : nodes.get(i).get(j)){
          node.display();
        }
      }
    }
    
    noFill();
    stroke(0, 150);
    /*noFill();
    stroke(0, 5);*/
    
    for(int i=0; i<nbrNodes; i++){
      for(int j=0; j<nbrNodes; j++){
        beginShape();
        for(int k=0; k<nbrNodes; k++){
          vertex(nodes.get(i).get(j).get(k).xPos, nodes.get(i).get(j).get(k).yPos, nodes.get(i).get(j).get(k).zPos);
        }
        endShape();
        beginShape();
        for(int k=0; k<nbrNodes; k++){
          vertex(nodes.get(i).get(k).get(j).xPos, nodes.get(i).get(k).get(j).yPos, nodes.get(i).get(k).get(j).zPos);
        }
        endShape();
        beginShape();
        for(int k=0; k<nbrNodes; k++){
          vertex(nodes.get(k).get(i).get(j).xPos, nodes.get(k).get(i).get(j).yPos, nodes.get(k).get(i).get(j).zPos);
        }
        endShape();
      }
    }
  }
}
