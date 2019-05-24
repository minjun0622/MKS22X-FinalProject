//Final Project Experimentation code.

int direction; 

void setup() {
  size(1000, 1000);
  frameRate(10);
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
      direction = 0;
    }
  }
}
