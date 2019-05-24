Snake lizard;
Food hunger;

void setup() {
  size(600, 600);
  lizard = new Snake();
  hunger = new Food();
}
void draw() {
  background(200, 145, 100);
  lizard.move();
  lizard.display();
}
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
