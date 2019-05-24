Snake lizard;
Food hunger;

void setup() {
  size(600, 600);
  frameRate(20);
  lizard = new Snake();
  hunger = new Food();
  
}

void draw() {
  background(255);
  lizard.move();
  lizard.display();
  hunger.display();
  if (lizard.reset() ){
    lizard.displayEndScreen();
  }
  
  if( dist(hunger.xcor, hunger.ycor, lizard.xcor.get(0), lizard.ycor.get(0)) < lizard.size ){
    hunger.reset();
    lizard.grow();
  }
  
}
void keyPressed() {
  if (key == CODED) {
    if (keyCode == RIGHT) {
      lizard.direction = 1;
    }
    if (keyCode == UP) {
      lizard.direction = 2;
    }
    if (keyCode == LEFT) {
      lizard.direction = 3;
    }
    if (keyCode == DOWN) {
      lizard.direction = 0;
    }
  }
}
