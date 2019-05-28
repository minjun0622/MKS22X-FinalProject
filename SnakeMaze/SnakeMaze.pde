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
  //starting menu
  if (gameScreen == 0) {
    displayStartingScreen();
    //game screeen
  } else if (lizard.isTouching() ) {
    displayEndScreen();
  } else if (gameScreen == 1) {
    background(255); 
    lizard.move();
    lizard.display();
    hunger.display();
    playGame();
    //death screen
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
  textAlign(CENTER);
  textSize(30);
  text("Have fun!", height/2, width/4);
  textSize(25);
  text("Game by Minjun Seo and Mihad Khondker", height/2, width- 50);
}

void displayEndScreen() {
  background(0);
  textAlign(CENTER);
  fill(255);
  textSize(30);
  text("You died =D", height/2, width/ 2);
}
void playGame() {
  if ( dist(hunger.xcor, hunger.ycor, lizard.xcor.get(0), lizard.ycor.get(0)) < lizard.size ) {
    hunger.reset();
    lizard.grow();
  }
}
