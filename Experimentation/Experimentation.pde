//Final Project Experimentation code.

int direction; 

void setup() {
  size(1000, 1000);
  frameRate(15);
  background(225);
}

void draw() {
  if (direction == 1) {
    rect(200, 200, 200, 200);
  }
  if (direction == 2) {
    rect(100, 100, 100, 100);
  }
  if (direction == 3) {
    rect(300, 100, 300, 100);
  }
  direction = 0;
}
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
}
