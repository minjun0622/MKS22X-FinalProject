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

//Food class

//SnakeMaze class