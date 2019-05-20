//Final Project 

//snake class
class Snake {

  int length;
  int [] moves;
  boolean touched;
  float xcor, ycor;

  Snake(int len) {
    length = len;
    //make an option for color later.
  }

  void grow() {
    if (//snake touches the food
      ) {
      length++;
    }
  }
  void reset() {
    if (touched) {
      length = 0;
    }
  }

  void isTouching() {
    for (int i =0; i < length; i++) {
      //basically detects if the head of the snake touches any part of the body.
      touched = true;
    }
  }
}


//Maze class
class Maze {
  boolean open;
  boolean [][] walls;

  Maze() {
  walls = new boolean[20][20];
  for (int i=0;i<20;i++){
    for (int j=0;j<20;j++){
      if (j==0 || j==19) {
        boolean[i][j]=true;
        
      }
    }
  }
  }
}
//Food class

//SnakeMaze class

void setup() {
  size(600,600);
  Maze maze = new Maze();
}