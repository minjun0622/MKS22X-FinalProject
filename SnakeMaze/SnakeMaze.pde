Snake lizard;
Food hunger;
boolean end; 
Maze maze;
int gameScreen;

void setup() {
  size(600, 600);
  frameRate(20);
  gameScreen = 0;
  lizard = new Snake();
  hunger = new Food();
  //maze = new Maze();
}

void draw() {
  if (gameScreen == 0) {
    displayStartingScreen();
  } else if (gameScreen == 1) {
    background(255); 
    lizard.move();
    lizard.display();
    hunger.display();

    if ( dist(hunger.xcor, hunger.ycor, lizard.xcor.get(0), lizard.ycor.get(0)) < lizard.size ) {
      hunger.reset();
      lizard.grow();
    }
  } else if (lizard.isTouching() ) {
    displayEndScreen();
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
  if (key == TAB) {
    gameScreen = 1;
  }
}

void displayStartingScreen() {
  background(#0A35FF);
  textAlign(CENTER, BOTTOM);
  textSize(30);
  text("Press the TAB key to start the game!", height/2, width/2);
}
void displayEndScreen() {
  background(0);
  textAlign(CENTER);
  fill(255);
  textSize(30);
  text("You died =D", height/2, width/ 2);
}
