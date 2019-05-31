//snake class
class Snake {
  int leng;
  int size;
  ArrayList <Float> xcor, ycor;
  int direction;


  Snake() {
    rect(0, 0, 12, 12);
    stroke(#000000);
    leng = 1;
    size = 20;
    //arraylist because it's easier to add the coordinate values to it. 
    xcor = new ArrayList();
    ycor = new ArrayList();
    xcor.add( (int)random(20)* 20.0);
    ycor.add( (int)random(20)* 20.0);
  }

  void grow() {
    xcor.add( xcor.get(leng-1) + size);
    ycor.add( ycor.get(leng-1) + size);
    leng++;
  }

  //RIGHT = 1
  //UP = 2
  //LEFT = 3
  //DOWN = 0

  void move() {
    for (int i = leng - 1; i > 0; i--) {
      xcor.set(i, xcor.get(i - 1));
      ycor.set(i, ycor.get(i - 1));
    }
    if (direction == 0) {
      ycor.set(0, ycor.get(0) + size);
    }
    if (direction == 1) {
      xcor.set(0, xcor.get(0) + size);
    }
    if (direction == 2) {
      ycor.set(0, ycor.get(0) - size);
    }
    if (direction == 3) {
      xcor.set(0, xcor.get(0) - size);
    }

    xcor.set(0, (xcor.get(0) + width) % width);
    ycor.set(0, (ycor.get(0) + height) % height);
  }

  //equivalent to a die method. 
  //actually nope.
  /*
  void reset() {
   leng = 1;
   }
   */


  //boolean method that show whether the snake is touching the other pieces.
  boolean isTouching() {
    for (int i = 1; i < leng; i++) {
      if (dist(xcor.get(0), ycor.get(0), xcor.get(i), ycor.get(i)) < size) {
        return true;
      }
    }
    return false;
  }

  void display() {
    for (int i = 0; i < leng; i++) {
      float r = random(100);
      stroke(11, 217-r, 4);
      fill(11, 217-r, 4);
      rect(xcor.get(i), ycor.get(i), size, size);
      //sets the size of the snake. The position is in the x and y cordinate that was generated by random. 
      //The size of the snake was set by the size that was declared in the constructor.
    }
  }
}
