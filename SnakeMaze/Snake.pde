//snake class
class Snake {

  int length;
  int size;
  ArrayList <Float> xcor, ycor;
  boolean touched;
  int direction;

  Snake() {
    length = 1;
    size = 10;
    //arraylist because it's easier to add the coordinate values to it. 
    xcor = new ArrayList();
    ycor = new ArrayList();
    xcor.add( random(width) );
    ycor.add( random(height) );
  }

  void grow() {
    /* if (//snake touches the food
     ) {
     length++;
     }*/
  }

  void move() {
    
    if (direction == 0) {
      ycor.set(0, ycor.get(0) + length);
    }
    if (direction == 1) {
      xcor.set(0, xcor.get(0) + length);
    }
    if (direction == 2) {
      ycor.set(0, ycor.get(0) - length);
    }
    if (direction == 3) {
      xcor.set(0, xcor.get(0) - length);
    }
  }
  //RIGHT = 1
  //UP = 2
  //LEFT = 3
  //DOWN = 0
  void keyPressed() {
    if (key == CODED) {
      if (key == RIGHT) {
        direction = 1;
      }
      if (key == UP) {
        direction = 2;
      }
      if (key == LEFT) {
        direction = 3;
      }
      if (key == DOWN) {
        direction = 4;
      }
    }
  }


  void reset() {
    if (isTouching()) {
      length = 1;
      //open the "you lost" menu
    }
  }

  boolean isTouching() {
    for (int i = 0; i < length; i++) {
     //
      touched = true;
    }
    return touched;
  }
}
