//Maze class
class maze {
  boolean open;
  boolean [][] walls;
  ArrayList <Float> xcor, ycor;
  float chances = random(100);


  maze() {
    walls = new boolean[50][50];
    for (int i = 0; i < 50; i++) {
      for (int j = 0; j < 50; j++) {
        walls[i][j] = false;
      }
    }
    stroke(21, 24, 64);
    fill(255);
  }

  void display() {
    stroke(255, 160, 10);
    fill(255, 160, 10);
    for (int i=0; i< 50; i++) {
      for (int j=0; j< 50; j++) {
        if (i==0 || i==49 || j==0 || j==49) {
          rect(i*12, j*12, 12, 12);
          walls[i][j] = true;
          if (walls[i][j]) {
            fill(#000000);
          }
        }
      }
    }
  }



  boolean returnStatus() {
    for (int i = 0; i < 50; i++) {
      for (int j = 0; j < 50; j++) {
        if (walls[i][j]) {
          return true;
        }
      }
    }
    return false;
  }
  void denseMaze() {
  }

  void littleMaze() {
  }
}
