class Food {
  float quantity;
  float xcor;
  float ycor;
  Food() {
    fill(255, 160, 10);
    rect(xcor, ycor, 10, 10);
  }
  void display() {
    xcor = random(100, width - 100);
    ycor = random(100, height - 100);
  }
  void reset() {
    xcor = random(100, width - 100);
    ycor = random(100, height - 100);
  }
}
