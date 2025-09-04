//04.05.25
//-Påbegyndt projektet

int blueText=#62D1F0;
int yellowText=#FCFD55;


void setup() {
  size(1185, 500);
  background(0);
  
  PFont font;
  font=loadFont("Calibri-Bold-48.vlw");
  textFont(font);
}


void draw() {
  noStroke();

  //Blå baggrund venstre.
  fill(#23324C);
  rect(width/50, height/180, width*0.495, height*0.98);

  //Blå baggrund højre.
  fill(#2C3953);
  rect(width*0.5, height/180, width*0.495, height*0.98);

  //Hvid midtersøjle.
  fill(#FDFEFF);
  rect(width*0.5, height/170, width*0.003, height*0.98);

  //Øverste blå overskrift.
  fill(blueText);
  textSize(27);
  text("GROUP A", width*0.21, height*0.05);
  text("GROUP C", width*0.7, height*0.05);
  
  //Nederste gule overskrift.
  fill(yellowText);
  text("GROUP B", width*0.21, height*0.55);
  text("GROUP D", width*0.7, height*0.55);
  
  
}
