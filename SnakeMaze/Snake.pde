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
    //xcor.add(Math.random());
    //ycor.add(Math.random());
  }

  void grow() {
    /* if (//snake touches the food
     ) {
     length++;
     }*/
  }

  void move() {
    if (direction == 0) {
      xcor.get(0);
      ycor.get(0);
    }
    if (direction == 1) {
      xcor.get(0);
      ycor.get(0);
    }
    if (direction == 2) {
    }
  }
  //RIGHT = 1
  //UP = 2
  //LEFT = 3
  //DOWN = 4
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
