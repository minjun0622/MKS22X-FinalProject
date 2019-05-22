//Final Project 

//snake class
class Snake {

  int length;
  int size;
  ArrayList xcor, ycor;
  boolean touched;
  int direction;

  Snake() {
    length = 1;
    size = 10;
    //arraylist because it's easier to add the coordinate values to it. 
    xcor.add(Math.random(-1, 1));
    ycor.add(Math.random(-1, 1))
    direction = Math.random(4);
  }

  void grow() {
    /* if (//snake touches the food
     ) {
     length++;
     }*/
  //make an option for color later.
}

void move() {
  if (direction == 0) {
    xcor.get(0);
    ycor.get(0);
  }
  if (direction == 1) {
    xcor.get(0);
    ycor.get(0);
  }
  if (direction == 2) {
  }
}
//RIGHT = 1
//UP = 2
//LEFT = 3
//DOWN = 4
void keyPressed() {
  if (key == CODED) {
    if(key == RIGHT) {
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


void grow() {
  /* if (//snake touches the food
   ) {
   length++;
   }*/
}
void reset() {
  if (touched) {
    length = 1;
    //open the "you lost" menu
  }
}

void isTouching() {
  for (int i =0; i < length; i++) {
    //basically detects if the head of the snake touches any part of the body.
    touched = true;
  }
}
}


//Maze class
class Maze {
  boolean open;
  boolean [][] walls;

  Maze() {
    walls = new boolean[50][50];
    stroke(255, 187, 119);
    fill(255, 187, 119);
    for (int i=0; i<50; i++) {
      for (int j=0; j<50; j++) {
        if (i==0 || i==49 || j==0 || j==49) {
          walls[i][j]=true;
          rect(i*12, j*12, 12, 12);
        }
        if (random(100)<30) {
          rect(i*12, j*12, 12, 12);
        }
      }
    }
  }
}
//Food class

//SnakeMaze class

void setup() {
  size(600, 600);
  background(200, 145, 100);
  Maze maze = new Maze();
}