class Banners {
  //Variables.
  color c=255;
  float xpos;
  float ypos;
  float bWidth;
  float bHeight;



  //Constructor.
  Banners(float xpos, float ypos) {
    this.xpos=xpos;
    this.ypos=ypos;
    this.bWidth=width*0.468;
    this.bHeight=height*0.085;
  }

  void display() {
    fill(c);
    noStroke();
    int collums=4;
    int rows=4;
    float xSpacing=width*0.5;
    float ySpacing=height*0.1;
    for (int i=0; i<collums; i++) {
      for (int j=0; j<rows; j++) {
        float xTop=xpos+i*xSpacing;
        float yTop=ypos+j*ySpacing;
        rect(xTop, yTop, bWidth, bHeight);
      }
    }
  }
}
