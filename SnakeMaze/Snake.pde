//snake class
class Snake {
  int leng;
  int size;
  ArrayList <Float> xcor, ycor;
  int direction;

  Snake() {
    rect(0, 0, 12, 12);
    stroke(300);
    leng = 1;
    size = 12;
    //arraylist because it's easier to add the coordinate values to it. 
    xcor = new ArrayList();
    ycor = new ArrayList();
    xcor.add( random(width) );
    ycor.add( random(height) );
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


  void reset() {
    if (isTouching()) {
      leng = 1;
      float xtemp = xcor.get(0);
      float ytemp = ycor.get(0);
      xcor.clear();
      ycor.clear();
      xcor.add(xtemp);
      ycor.add(ytemp);

      //open the "you lost" menu
    }
  }

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
      stroke(200, 180, 200);
      fill(300);
      rect(xcor.get(i), ycor.get(i), size, size);
    }
    
  }
}
