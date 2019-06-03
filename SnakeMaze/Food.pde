class Food {
  float quantity;
  float xcor;
  float ycor;
  Food() {
    xcor = (int)random(1, 29) * 20.0;
    ycor = (int)random(1, 29) * 20.0;
  }

  void display() {
    stroke(0);
    fill(#FFFFFF);
    rect(xcor, ycor, 20, 20);
  }

  void reset() {
    xcor = (int)random(1, 29) * 20.0;
    ycor = (int)random(1, 29) * 20.0;
  }
}
