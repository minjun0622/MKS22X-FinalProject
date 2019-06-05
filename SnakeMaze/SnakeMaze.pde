Snake lizard;  //<>//
Food hunger;
Maze maze;
int gameScreen;
//increment counter for "cheating or ending the game."
float cheat;
int moves;

void setup() {
  size(600, 600);
  frameRate(6);
  gameScreen = 0;
  moves = 0;
  maze = new Maze();
  lizard = new Snake();
  hunger = new Food();
}

void draw() {
  //starting menu
  if (gameScreen == 0) {
    displayStartingScreen();
  }
  //----------------------------
  else if (lizard.isTouching() || moves == 500 || mazeCollide()) {
    displayEndScreen();
  } 
  //----------------------------
  else if (lizard.leng == 15 || cheat >= 5.0) {
    displayWin();
  } 
  //----------------------------
  else if (gameScreen == 1) {
    background(#D0FF03);
    fill(#FF0000);
    scoreBoard();
    lizard.move();
    lizard.display();
    hunger.display();
    maze.display(1);
    playGame();
  } else if (gameScreen == 2) {
    background(#D0FF03);
    fill(#FF0000);
    scoreBoard();
    lizard.move();
    lizard.display();
    hunger.display();
    maze.display(2);
    playGame();
  }
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == RIGHT) {
      lizard.direction = 1;
      moves +=  1;
    }
    if (keyCode == UP) {
      lizard.direction = 2;
      moves += 1;
    }
    if (keyCode == LEFT) {
      lizard.direction = 3;
      moves += 1;
    }
    if (keyCode == DOWN) {
      lizard.direction = 0;
      moves += 1;
    }
  }
  if (key == '1') {
    gameScreen = 1;
    //end game
  }
  if (key == '2') {
    gameScreen = 2;
  }
  if (key == TAB) {
    cheat++;
  }
  if (key == 'r') {
    setup();
    gameScreen = 0;
    cheat -= 5.0 ;
  }
}

//This the method that needs fixing!
void playGame() {
  if ( dist(hunger.xcor, hunger.ycor, lizard.xcor.get(0), lizard.ycor.get(0)) < lizard.size ) {
    hunger.reset(maze.xcor, maze.ycor);
    lizard.grow();
  }
}

//DISPLAY METHODS--------------------------------------------------------------------------------
void displayStartingScreen() {
  background(#0A35FF); 
  textAlign(CENTER, BOTTOM); 
  textSize(30); 
  text("1/2, 1 = No maze, 2 = Maze", height/2, width/2); 
  textAlign(CENTER); 
  textSize(30); 
  text("Have fun!", height/2, width/4); 
  textSize(25); 
  text("Needs to be longer than 15 to win", height/2, (width / 2) + 100); 
  text("Game by Minjun Seo and Mihad Khondker", height/2, width- 50);
}

void displayEndScreen() {
  background(0); 
  textAlign(CENTER); 
  fill(255); 
  textSize(20); 
  text("You died =(", height/2, width/ 2); 
  text("Get a length of 15 or don't touch the maze to win!", height/2, width - 50);
  text("Press r to restart!", height /2, width - 200);
}

void displayWin() {
  textAlign(CENTER); 
  fill(30); 
  textSize(45); 
  text("You won!", height/2, width/2);
}

void scoreBoard() {
  text(lizard.leng, height/2, width/2); 
  text("Moves left:" + (500 - moves), height/2, width / 4 - 30);
}
boolean mazeCollide() {
  boolean walls[][] = maze.walls; 
  for (int i=0; i<walls.length; i++) {
    for (int j=0; j<walls[i].length; j++) {
      float snakeX=lizard.xcor.get(0);
      float snakeY=lizard.ycor.get(0);
      if (walls[i][j]==true && i*20<=snakeX && snakeX<=i*20+20 && j*20<=snakeY && snakeY<=j*20+20) {
        return true;
      }
    }
  }
  return false;
}
//------------------------------------------------------------------------------------------------
