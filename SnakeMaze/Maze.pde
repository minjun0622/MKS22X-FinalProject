//Final Project 



//Maze class
class Maze {
  boolean open;
  boolean [][] walls;

  Maze() {
    walls = new boolean[50][50];
    stroke(255, 187, 119);
    fill(255, 187, 119);
    for (int i=0; i<50; i++) {
      for (int j=0; j<50; j++) {
        if (i==0 || i==49 || j==0 || j==49) {
          walls[i][j]=true;
          rect(i*12, j*12, 12, 12);
        }
        if (random(100)<30) {
          rect(i*12, j*12, 12, 12);
        }
      }
    }
  }
}
void setup() {
  size(600, 600);
  background(200, 145, 100);
  Maze maze = new Maze();
}

