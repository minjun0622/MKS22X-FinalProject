//snake class
class Snake {
//ah ah ah ignore
  int length;
  int size;
  ArrayList <Float> xcor, ycor;
  boolean touched;
  int direction;

  Snake() {
    rect(0, 0, 10, 10);
    stroke(167);
    length = 1;
    size = 10;
    //arraylist because it's easier to add the coordinate values to it. 
    xcor = new ArrayList();
    ycor = new ArrayList();
    xcor.add( random(width) );
    ycor.add( random(height) );
  }

  void grow() {
    xcor.add( xcor.get(length-1) + length);
    ycor.add( ycor.get(length-1) + length);
    length++;
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
    xcor.set(0, (xcor.get(0) + width) % width);
    ycor.set(0, (ycor.get(0) + height) % height);
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
    for (int i = 1; i < length; i++) {
      if (dist(xcor.get(0), ycor.get(0), xcor.get(i), ycor.get(i)) < length) {
        return true;
      }
    }
    return false;
  }
  void display() {
  }
}
