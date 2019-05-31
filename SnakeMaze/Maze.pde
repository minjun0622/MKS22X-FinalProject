//Maze class
class Maze {
  boolean open;
  boolean [][] walls;
  ArrayList <Float> xcor, ycor;

  Maze() {
    walls = new boolean[30][30];
    xcor = new ArrayList();
    ycor = new ArrayList();
    String[] coordinates = loadStrings("coordinates.txt");
    for (int i=0; i<coordinates.length; i++) {
      int[] cors;
      cors=int(split(coordinates[i], ","));
      walls[cors[0]][cors[1]]=true;
    }
    stroke(21, 24, 64);
    fill(255);
  }

  void display() {
    stroke(#000000);
    fill(#03B8FC);
    for (int i=0; i< 30; i++) {
      for (int j=0; j< 30; j++) {
        if (i==0 || i==29 || j==0 || j==29) {
          rect(i*20, j*20, 20, 20);
          xcor.add(i * 20.0);
          ycor.add(j * 20.0);
        }
        if (walls[i][j]==true) {
          rect(i*20, j*20, 20, 20);
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
