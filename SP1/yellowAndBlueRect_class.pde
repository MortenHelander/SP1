class yellowAndBlueRect {
  //Variables.
  float x;
  float y;
  float rWidth=width*0.011;
  float rHeight=height*0.085;
  float xSpacing=width*0.498;
  float ySpacing=height*0.1;
  int collums=2;
  int rows=4;


  //Constructor.
  yellowAndBlueRect(float x, float y) {
    this.x=x;
    this.y=y;
  }
  void display() {
    noStroke();
    for (int i=0; i<collums; i++) {
      for (int j=0; j<rows; j++) {
        float tempx=x+i*xSpacing;
        float tempy=y+j*ySpacing;
        rect(tempx, tempy, rWidth, rHeight);
      }
    }
  }
}
