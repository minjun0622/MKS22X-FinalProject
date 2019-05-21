//snake class
class Snake {

  int length;
  int snakeSize;
  int [] xcor, ycor;
  boolean touched;

  Snake() {
    length = 1;
    snakeSize = 10;
    

    //make an option for color later.
  }

  void grow() {
    /* if (//snake touches the food
     ) {
     length++;
     }*/
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
