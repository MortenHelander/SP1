class yellowAndBlueRect {
  //Variables.
  color c;
  float x;
  float y;
  float rWidth;
  float rHeight;
  int currentYellowAndBlueRects=0;
  int wantedYellowAndBlueRects=4;

  //Constructor.
  yellowAndBlueRect(color tempC, float tempX, float tempY, float tempWidth, float tempHeight) {
    c=tempC;
    x=tempX;
    y=tempY;
    rWidth=tempWidth;
    rHeight=tempHeight;
  }
  void display() {
    fill(c);
    noStroke();
    while (currentYellowAndBlueRects<wantedYellowAndBlueRects) {
      rect(x, y, rWidth, rHeight);
      y+=height*0.1;
      currentYellowAndBlueRects++;
    }
  }
}
