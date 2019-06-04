//Maze class
class Maze {
  boolean open;
  boolean [][] walls;
  ArrayList <Float> xcor, ycor, coor;

  Maze() {
    walls = new boolean[30][30];
    xcor = new ArrayList();
    ycor = new ArrayList();
  }

  void display() {

    stroke(21, 24, 64);
    fill(255);
    String[] coordinates = loadStrings("coordinates.txt");
    int[] cors;
    for (int i=0; i < coordinates.length; i++) {
      cors= int(split(coordinates[i], ","));
      walls[cors[0]][cors[1]]=true;
    }
    stroke(#000000);
    fill(#03B8FC);   
    //--------------------------------------
    //Makes the walls of the maze boxed.
    for (int i=0; i< 30; i++) {
      for (int j=0; j< 30; j++) {
        if (i==0 || i==29 || j==0 || j==29) {
          rect(i*20, j*20, 20, 20);
        }
        //---------------------------------
        if (walls[i][j]==true) {
          rect(i*20, j*20, 20, 20);
        }
        //takes care of the other pieces of the maze.
        //---------------------------------
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
