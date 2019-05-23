
void setup() {
  size(600, 600);
  background(200, 145, 100);
  Maze maze = new Maze();
  Snake lizard = new Snake();
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
