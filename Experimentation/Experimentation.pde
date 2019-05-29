//Final Project Experimentation code.
maze walls;

int direction; 

void setup() {
  size(1000, 1000);
  frameRate(10);
  background(225);
  walls = new maze();
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
  walls.display();
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
