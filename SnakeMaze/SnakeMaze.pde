Snake lizard;
Food hunger;

void setup() {
  size(600, 600);
  frameRate(20);
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
      lizard.direction = 4;
    }
  }
}
