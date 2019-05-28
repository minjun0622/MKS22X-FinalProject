//Maze class
class Maze {
  boolean open;
  boolean [][] walls;
  float xcor, ycor;


  Maze() {
    walls = new boolean[50][50];
    String[] coordinates = loadStrings("coordinates.txt");
    for (int i=0; i<coordinates.length; i++) {
      int[] cors;
      cors=int(split(coordinates[i],","));
      walls[cors[0]][cors[1]]=true;
    }
  }
  void display() {
    stroke(255, 160, 10);
    fill(255, 160, 10);
    for (int i=0; i< 50; i++) {
      for (int j=0; j< 50; j++) {
        if (i==0 || i==49 || j==0 || j==49) {
          walls[i][j] = true;
          rect(i*12, j*12, 12, 12);
        }
        if (walls[i][j]==true) {
          rect(i*12, j*12, 12, 12);
        }
      }
    }
  }
  void returnStatus() {
    for (int i = 0; i < 50; i++) {
      for (int j = 0; j < 50; j++) {
        if (walls[i][j]) {
          open = true;
        }
      }
    }
    open = false;
  }
}