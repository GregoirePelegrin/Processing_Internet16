class Square{
  ArrayList<ArrayList<Node>> nodes;
  
  Square(){
    this.nodes = new ArrayList<ArrayList<Node>>();
    
    ArrayList<Node> temp;
    for(int i=0; i<nbrNodes; i++){
      temp = new ArrayList<Node>();
      for(int j=0; j<nbrNodes; j++){
        Node node = new Node(i*sizeSquare/(nbrNodes-1), j*sizeSquare/(nbrNodes-1));
        temp.add(node);
      }
      nodes.add(temp);
    }
  }
  
  void update(){
    for(int i=0; i<nodes.size(); i++){
      for(Node node : nodes.get(i)){
        node.update();
      }
    }
  }
  
  void display(){
    for(int i=0; i<nodes.size(); i++){
      for(Node node : nodes.get(i)){
        node.display();
      }
    }
    for(int i=0; i<nodes.size(); i++){
      for(int j=0; j<nodes.get(0).size()-1; j++){
        line(nodes.get(i).get(j).xPos, nodes.get(i).get(j).yPos, nodes.get(i).get(j+1).xPos, nodes.get(i).get(j+1).yPos);
      }
      for(int j=0; j<nodes.get(0).size()-1; j++){
        line(nodes.get(j).get(i).xPos, nodes.get(j).get(i).yPos, nodes.get(j+1).get(i).xPos, nodes.get(j+1).get(i).yPos);
      }
    }
  }
}
