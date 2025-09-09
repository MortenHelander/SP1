//04.09.25
//-Påbegyndt projektet

//05.09.25
//Vil forsøge at indsætte billeder af flag.

//08.09.25
//Vil indsætte de sidste flag og de farvede rektangler i enden af flagene. Løb ind i
//problemer med at programmer ikke svarer, måske er koden for rodet.
//Problemet blev løst, det viste sig at være et enkelt punktum efter peru.png, der
//var problemet.

//09.09.25
//Færdiggør selve billedet i dag, mangler kun teksten. Hvis mere tid, vil jeg begynde
//at lave klasser og objekter og organisere koden.

//Globale variabler.
int blueText=#62D1F0;
int yellowText=#FCFD55;
yellowAndBlueRect blueRectsTopLeft;
yellowAndBlueRect blueRectsTopRight;
yellowAndBlueRect yellowRectsBottomLeft;
yellowAndBlueRect yellowRectsBottomRight;

PImage russia;
PImage saudiArabia;
PImage egypt;
PImage uruguay;
PImage france;
PImage australia;
PImage peru;
PImage denmark;
PImage portugal;
PImage spain;
PImage morocco;
PImage iran;
PImage argentina;
PImage iceland;
PImage croatia;
PImage nigeria;

void setup() {
  //Load billeder af flag.
  russia=loadImage("russia.png");
  saudiArabia=loadImage("saudi arabia.png");
  egypt=loadImage("egypt.png");
  uruguay=loadImage("uruguay.png");
  france=loadImage("france.png");
  australia=loadImage("australia.png");
  peru=loadImage("peru.png");
  denmark=loadImage("denmark.png");
  portugal=loadImage("portugal.png");
  spain=loadImage("spain.png");
  morocco=loadImage("morocco.png");
  iran=loadImage("iran.png");
  argentina=loadImage("argentina.png");
  iceland=loadImage("iceland.png");
  croatia=loadImage("croatia.png");
  nigeria=loadImage("nigeria.png");

  //Font.
  PFont font2;
  font2=loadFont("Calibri-48.vlw");
  textFont(font2);

  //Variabler.
  float yellowAndBlueRectsWidth=width*0.011;
  float yellowAndBlueRectsHeight=height*0.085;

  //Initialisering af objekter.
  blueRectsTopLeft=new yellowAndBlueRect(color (blueText), width*0.48, height*0.072, yellowAndBlueRectsWidth, yellowAndBlueRectsHeight);
  blueRectsTopRight=new yellowAndBlueRect(color(blueText), width*0.977, height*0.072, yellowAndBlueRectsWidth, yellowAndBlueRectsHeight);
  yellowRectsBottomLeft=new yellowAndBlueRect(color(yellowText), width*0.48, height*0.586, yellowAndBlueRectsWidth, yellowAndBlueRectsHeight);
  yellowRectsBottomRight=new yellowAndBlueRect(color(yellowText), width*0.977, height*0.586, yellowAndBlueRectsWidth, yellowAndBlueRectsHeight);



  //Baggrund og størrelse.
  size(1185, 500);
  background(#222222);
}


void draw() {
  noLoop();
  //Erklæringer og initialiseringer.
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

  //Hvide bannere top venstre.
  int currentTopLeftBanners=0;
  int wantedTopLeftBanners=4;
  float bannersTopLeftX=width/50;
  float bannersTopLeftY=height*0.072;
  float bannersWidth=width*0.468;
  float bannersHeight=height*0.085;
  fill(255);

  while (currentTopLeftBanners<wantedTopLeftBanners) {
    rect(bannersTopLeftX, bannersTopLeftY, bannersWidth, bannersHeight);
    bannersTopLeftY+=height*0.1;
    currentTopLeftBanners++;
  }
  //Hvide bannere top højre.
  float currentTopRightBanners=0;
  float wantedTopRightBanners=4;
  float bannersTopRightX=width*0.52;
  float bannersTopRightY=height*0.072;

  while (currentTopRightBanners<wantedTopRightBanners) {
    rect(bannersTopRightX, bannersTopRightY, bannersWidth, bannersHeight);
    bannersTopRightY+=height*0.1;
    currentTopRightBanners++;
  }

  //Hvide bannere ned venstre.
  float currentBottomLeftBanners=0;
  float wantedBottomLeftBanners=4;
  float bannersBottomLefttX=width/50;
  float bannersBottomLeftY=height*0.586;

  while (currentBottomLeftBanners<wantedBottomLeftBanners) {
    rect(bannersBottomLefttX, bannersBottomLeftY, bannersWidth, bannersHeight);
    bannersBottomLeftY+=height*0.1;
    currentBottomLeftBanners++;
  }

  //Hvide bannere ned højre.
  float currentBottomRightBanners=0;
  float wantedBottomRightBanners=4;
  float bannersBottomRightX=width*0.52;
  float bannersBottomRightY=height*0.586;

  while (currentBottomRightBanners<wantedBottomRightBanners) {
    rect(bannersBottomRightX, bannersBottomRightY, bannersWidth, bannersHeight);
    bannersBottomRightY+=height*0.1;
    currentBottomRightBanners++;
  }

  //Indsæt flag øverst venstre.
  float flagLeftX=width/50;
  float flagTopY=height*0.07;
  float flagWidth=width/11.5;
  float flagHeight=height/11.3;

  image(russia, flagLeftX, flagTopY, flagWidth, flagHeight);
  image(saudiArabia, flagLeftX, flagTopY+height/10, flagWidth, flagHeight);
  image(egypt, flagLeftX, flagTopY+height/4.97, flagWidth, flagHeight);
  image(uruguay, flagLeftX, flagTopY+height/3.32, flagWidth, flagHeight);

  //Indsæt flag øverst højre.
  float flagRightX=width*0.52;
  image(france, flagRightX, flagTopY, flagWidth, flagHeight);
  image(australia, flagRightX, flagTopY+height/10, flagWidth, flagHeight);
  image(peru, flagRightX, flagTopY+height/4.97, flagWidth, flagHeight);
  image(denmark, flagRightX, flagTopY+height/3.32, flagWidth, flagHeight);

  //Indsæt flag nederst venstre.
  float flagBottomY=height*0.585;
  image(portugal, flagLeftX, flagBottomY, flagWidth, flagHeight);
  image(spain, flagLeftX, flagBottomY+height/10, flagWidth, flagHeight);
  image(morocco, flagLeftX, flagBottomY+height/4.97, flagWidth, flagHeight);
  image(iran, flagLeftX, flagBottomY+height/3.32, flagWidth, flagHeight);

  //Indsæt flag højre.
  image(argentina, flagRightX, flagBottomY, flagWidth, flagHeight);
  image(iceland, flagRightX, flagBottomY+height/10, flagWidth, flagHeight);
  image(croatia, flagRightX, flagBottomY+height/4.97, flagWidth, flagHeight);
  image(nigeria, flagRightX, flagBottomY+height/3.32, flagWidth, flagHeight);

  //Landenavne.
  fill(0);
  textSize(45);


  text("RUSSIA", width*0.12, height*0.145);
  text("SAUDI ARABIA", width*0.12, height*0.245);
  text("EGYPT", width*0.12, height*0.345);
  text("URUGUAY", width*0.12, height*0.445);

  text("FRANCE", width*0.622, height*0.145);
  text("AUSTRALIA", width*0.622, height*0.245);
  text("PERU", width*0.622, height*0.345);
  text("DENMARK", width*0.622, height*0.445);

  text("PORTUGAL", width*0.12, height*0.657);
  text("SPAIN", width*0.12, height*0.757);
  text("MOROCCO", width*0.12, height*0.857);
  text("IRAN", width*0.12, height*0.957);

  text("ARGENTINA", width*0.622, height*0.657);
  text("ICELAND", width*0.622, height*0.757);
  text("CROATIA", width*0.622, height*0.857);
  text("NIGERIA", width*0.622, height*0.957);

  blueRectsTopLeft.display();
  blueRectsTopRight.display();
  yellowRectsBottomLeft.display();
  yellowRectsBottomRight.display();
}
