class Cube {
  boolean random;
  int nbr;
  float[][][] xList;
  float[][][] yList;
  float[][][] zList;
  float[][][] xList_random;
  float[][][] yList_random;
  float[][][] zList_random;

  Cube(int n) {
    this.random = false;
    this.nbr = n;
    this.xList = new float[this.nbr][this.nbr][this.nbr];
    this.yList = new float[this.nbr][this.nbr][this.nbr];
    this.zList = new float[this.nbr][this.nbr][this.nbr];
    this.xList_random = new float[this.nbr][this.nbr][this.nbr];
    this.yList_random = new float[this.nbr][this.nbr][this.nbr];
    this.zList_random = new float[this.nbr][this.nbr][this.nbr];

    for (int i=0; i<this.nbr; i++) {
      for (int j=0; j<this.nbr; j++) {
        for (int k=0; k<this.nbr; k++) {
          this.xList[i][j][k] = i/(this.nbr-1)*sizeCube;
          this.yList[i][j][k] = j/(this.nbr-1)*sizeCube;
          this.zList[i][j][k] = k/(this.nbr-1)*sizeCube;
        }
      }
    }
  }

  void update() {
    this.random = !this.random;
    if (this.random) {
      for (int i=0; i<this.nbr; i++) {
        for (int j=0; j<this.nbr; j++) {
          for (int k=0; k<this.nbr; k++) {
            xList_random[i][j][k] = random(-5, 5);
            yList_random[i][j][k] = random(-5, 5);
            zList_random[i][j][k] = random(-5, 5);
          }
        }
      }
    } else {
      for (int i=0; i<this.nbr; i++) {
        for (int j=0; j<this.nbr; j++) {
          for (int k=0; k<this.nbr; k++) {
            xList_random[i][j][k] = 0;
            yList_random[i][j][k] = 0;
            zList_random[i][j][k] = 0;
          }
        }
      }
    }
  }

  void display() {
    // Mark the nodes
    for (int i=0; i<this.nbr; i++) {
      for (int j=0; j<this.nbr; j++) {
        for (int k=0; k<this.nbr; k++) {
          translate(xList[i][j][k]+xList_random[i][j][k], yList[i][j][k]+yList_random[i][j][k], zList[i][j][k]+zList_random[i][j][k]);
          sphere(10);
          translate(-(xList[i][j][k]+xList_random[i][j][k]), -(yList[i][j][k]+yList_random[i][j][k]), -(zList[i][j][k]+zList_random[i][j][k]));
        }
      }
    }
    // Draw the lines
  }
}
