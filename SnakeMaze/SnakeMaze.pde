Snake lizard;
Food hunger;
boolean end; 
//Maze maze;

void setup() {
  size(600, 600);
  frameRate(20);
  lizard = new Snake();
  hunger = new Food();
<<<<<<< HEAD
  //maze = new Maze();
}

void draw() {
  if (lizard.isTouching() ) {
=======
  Maze maze = new Maze();
  
}

void draw() {
  background(52, 62, 166);
  lizard.move();
  lizard.display();
  hunger.display();
  if (lizard.reset() ){
>>>>>>> fd2372f6024064f56deaca094543b6acd5546ad8
    lizard.displayEndScreen();
  } else {
    background(255); 
    lizard.move();
    lizard.display();
    hunger.display();

    if ( dist(hunger.xcor, hunger.ycor, lizard.xcor.get(0), lizard.ycor.get(0)) < lizard.size ) {
      hunger.reset();
      lizard.grow();
    }
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