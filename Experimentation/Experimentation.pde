//Final Project Experimentation code.

int direction; 

void setup() {
  size(1000, 1000);
  frameRate(10);
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
  background(225);
  
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      direction = 1;
    }
    if (keyCode == DOWN) {
      direction = 2;
    }
  }
  if (key == TAB) {
    direction = 3;
  }
}
