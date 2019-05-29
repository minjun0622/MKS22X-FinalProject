//Maze class
class Maze {
  boolean open;
  boolean [][] walls;
  ArrayList <Float> xcor, ycor;
  float chances = random(100);


  Maze() {
    walls = new boolean[30][30];
    String[] coordinates = loadStrings("coordinates.txt");
    for (int i=0; i<coordinates.length; i++) {
      int[] cors;
      cors=int(split(coordinates[i], ","));
      walls[cors[0]][cors[1]]=true;
    }
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
    for (int i=0; i< 30; i++) {
      for (int j=0; j< 30; j++) {
        if (i==0 || i==29 || j==0 || j==29) {
          rect(i*20, j*20, 20, 20);
        }
        if (walls[i][j]==true) {
          walls[i][j]=true;
          rect(i*20, j*20, 20, 20);
          if (chances < 30) {
            walls[i][j]=true;

            rect(i*12, j*12, 12, 12);
          }
        }
      }
    }
  }


  boolean returnStatus() {
    for (int i = 0; i < 30; i++) {
      for (int j = 0; j < 30; j++) {
        if (walls[i][j]) {
          return true;
        }
      }
    }
    return false;
  }
}