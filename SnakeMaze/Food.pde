class Food {
  float quantity;
  float xcor;
  float ycor;
  Food() {
    xcor = 13.0 * 20;
    ycor = 13.0 * 20;
  }

  void display() {
    stroke(0);
    fill(#FFFFFF);
    rect(xcor, ycor, 20, 20);
  }

  void reset(ArrayList<Float> x, ArrayList<Float> y) {
    for (int i = 0; i < x.size(); i++) {
      for (int j = 0; j < y.size(); j++) {
        float first = (int)random(1, 29) * 20.0;
        float second = (int)random(1, 29) * 20.0;
        if (first == x.get(i) && second == y.get(j)) {
          xcor = (int)random(1, 29) * 20.0;
          ycor = (int)random(1, 29) * 20.0;
        } else {
          xcor = first;
          ycor = second;
        }
      }
    }
  }
}
