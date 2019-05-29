//Final Project Experimentation code.

int direction; 

void setup() {
  size(1000, 1000);
  frameRate(10);
  background(225);
}

void draw() {
  if (direction == 1) {
    rect(200, 200, 50, 50);
  }
  if (direction == 2) {
    rect(100, 100, 100, 100);
  }
  if (direction == 3) {
    rect(300, 100, 300, 100);
  }
  for (int i = 0; i < 50; i++) {
    for (int j = 0; j < 50; j++) {
      if (walls[i][j])
    }
  }
}

//RIGHT = 1
//UP = 2
//LEFT = 3
//DOWN = 0
void keyPressed() {
  if (key == CODED) {
    if (keyCode == RIGHT) {
      direction = 1;
    }
    if (keyCode == UP) {
      direction = 2;
    }
    if (keyCode == LEFT) {
      direction = 3;
    }
    if (keyCode == DOWN) {
      direction = 0;
    }
  }
}
