//Final Project Experimentation code.

void setup() {
  size(1000, 1000);
  frameRate(30);
}

void draw() {
  background(225);
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      rect(500, 500, 100, 100);
    }
    if (keyCode == DOWN) {
      rect(500, 500, 1000, 1000);
    }
  }
}
