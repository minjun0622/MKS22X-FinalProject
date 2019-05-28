Snake lizard;
Food hunger;
boolean end; 
Maze maze;
int gameScreen;
//increment counter for "cheating or ending the game."
int cheat;
float moves = 0;

void setup() {
  size(600, 600);
  frameRate(20);
  gameScreen = 0;
  maze = new Maze();
  lizard = new Snake();
  hunger = new Food();
}

void draw() {
  //starting menu
  if (gameScreen == 0) {
    displayStartingScreen();
    //game screeen
  } else if (lizard.isTouching() || endGame() || moves == 50.0) {
    displayEndScreen();
  } else if (lizard.leng >= 15 || cheat >= 5.0) {
    displayWinScreen();
  } else if (gameScreen == 1) {
    background(255); 
    lizard.move();
    lizard.display();
    hunger.display();
    maze.display();
    playGame();
    maze.returnStatus();
  }
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == RIGHT) {
      lizard.direction = 1;
      //moves = moves + 0.1;
    }
    if (keyCode == UP) {
      lizard.direction = 2;
      //moves = moves + 0.1;
    }
    if (keyCode == LEFT) {
      lizard.direction = 3;
      //moves = moves + 0.1;
    }
    if (keyCode == DOWN) {
      lizard.direction = 0;
      //moves = moves + 0.1;
    }
  }
  if (key == TAB) {
    gameScreen = 1;
    //end game 
    cheat++;
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
  text("You died =(", height/2, width/ 2);
  text("If you want to win, get a length of 15!", height/2, width - 50);
}
void playGame() {
  if ( dist(hunger.xcor, hunger.ycor, lizard.xcor.get(0), lizard.ycor.get(0)) < lizard.size ) {
    hunger.reset();
    lizard.grow();
  }
}

boolean endGame() {
  if ( dist(maze.xcor, maze.ycor, lizard.xcor.get(0), lizard.ycor.get(0)) < lizard.size) {
    return true;
  }
  return false;
}

void displayWinScreen() {
  textAlign(CENTER);
  fill(30);
  textSize(45);
  text("You won!", height/2, width/2);
}
