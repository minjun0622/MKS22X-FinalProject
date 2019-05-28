class Food {
  float quantity;
  float xcor;
  float ycor;
  Food() {
    xcor = 600/random(1, 49);
    ycor = 600/random(1, 49);
  }
  void display() {
    stroke(0);
    fill(255, 160, 10);
    rect(xcor, ycor, 12, 12);
  }
  void reset() {
    xcor = random(100, width - 200);
    ycor = random(100, height - 200);
  }
}