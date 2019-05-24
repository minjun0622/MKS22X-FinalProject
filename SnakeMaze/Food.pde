class Food {
  float quantity;
  float xcor;
  float ycor;
  Food() {
    xcor = random(100, width - 100);
    ycor = random(100, height - 100);
    fill(255, 160, 10);
    rect(xcor, ycor, 10, 10);
  }
  void reset() {
    xcor = random(100, width - 100);
    ycor = random(100, height - 100);
  }
}
