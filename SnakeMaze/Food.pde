class Food {
  int quantity;
  int xcor;
  int ycor;
  Food(int x,int y) {
    xcor=x;
    ycor=y;
    fill(255,160,10);
    rect(x,y,10,10);
  }
}