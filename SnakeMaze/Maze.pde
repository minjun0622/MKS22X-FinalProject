//Maze class
class Maze {
  boolean open;
  boolean [][] walls;

  Maze() {
    walls = new boolean[50][50];
    stroke(21, 24, 64);
    fill(21, 24, 64);
    for (int i=0; i<50; i++) {
      for (int j=0; j<50; j++) {
        if (i==0 || i==49 || j==0 || j==49) {
          walls[i][j]=true;
          rect(i*12, j*12, 12, 12);
        }
        if (random(100)<30) {
          walls[i][j]=true;
          rect(i*12, j*12, 12, 12);
        }
      }
    }
  }
}