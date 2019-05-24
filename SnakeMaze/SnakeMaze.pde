Snake lizard;
Food hunger;

void setup() {
  size(600, 600);
  lizard = new Snake();
  hunger = new Food();
  rectMode(CENTER);
}

void draw() {
  background(200, 145, 100);

  lizard.move();
  lizard.display();
  hunger.display();
  //lizard.reset()
}
void keyPressed() {
  if (key == CODED) {
    if (key == RIGHT) {
      lizard.direction = 1;
    }
    if (key == UP) {
      lizard.direction = 2;
    }
    if (key == LEFT) {
      lizard.direction = 3;
    }
    if (key == DOWN) {
      lizard.direction = 4;
    }
  }
}
