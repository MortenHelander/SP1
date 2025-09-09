class banners {
  //Variables.
  color c=255;
  float x;
  float y;
  float bWidth=width*0.468;
  float bHeight=height*0.085;
  int currentBanners=0;
  int wantedBanners=4;

  //Constructor.
  banners(float tempX, float tempY) {
    x=tempX;
    y=tempY;
      }
  void display(){
    fill(c);
    noStroke();
    while (currentBanners<wantedBanners) {
      rect(x, y, bWidth, bHeight);
      y+=height*0.1;
      currentBanners++;
    }
  }
}
