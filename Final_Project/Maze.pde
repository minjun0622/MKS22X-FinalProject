//Final Project 

//Maze class
class Maze {
  boolean open;
  boolean [][] walls;

  Maze() {
    walls = new boolean[20][20];
    for (int i=0; i<20; i++) {
      for (int j=0; j<20; j++) {
        if (i==0 || i==19) {
          walls[i][j]=true;
          rect(i*30, i*30, 30, 30);
        }
      }
    }
  }
}


void setup() {
  size(600, 600);
  Maze maze = new Maze();
}
