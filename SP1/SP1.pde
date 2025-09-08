//04.09.25
//-Påbegyndt projektet

//05.09.25
//Vil forsøge at indsætte billeder af flag.

//08.09.25
//Vil indsætte de sidste flag og de farvede rektangler i enden af flagene. Løb ind i
////problemer med at programmer ikke svarer, måske er koden for rodet.

//Globale 
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
  peru=loadImage("peru.png.");
  denmark=loadImage("denmark.png");
  portugal=loadImage("portugal.png");
  spain=loadImage("spain.png");
  morocco=loadImage("morocco.png");
  iran=loadImage("iran.png");
  argentina=loadImage("argentina.png");
  iceland=loadImage("iceland.png");
  croatia=loadImage("croatia.png");
  nigeria=loadImage("nigeria.png");
  
  
  
  size(1185, 500);
  background(#222222);

  PFont font;
  font=loadFont("Calibri-Bold-48.vlw");
  textFont(font);
}


void draw() {
  //Erklæringer og initialiseringer.
  int blueText=#62D1F0;
  int yellowText=#FCFD55;
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

  while(currentTopLeftBanners<wantedTopLeftBanners){
  rect(bannersTopLeftX, bannersTopLeftY, bannersWidth, bannersHeight);
  bannersTopLeftY+=height*0.1;
  currentTopLeftBanners++;
  
  //Hvide bannere top højre.
  float currentTopRightBanners=0;
  float wantedTopRightBanners=4;
  float bannersTopRightX=width*0.52;
  float bannersTopRightY=height*0.072;
  
  while(currentTopRightBanners<wantedTopRightBanners){
  rect(bannersTopRightX, bannersTopRightY, bannersWidth, bannersHeight);
  bannersTopRightY+=height*0.1;
  currentTopRightBanners++;
  
  //Hvide bannere ned venstre.
  float currentBottomLeftBanners=0;
  float wantedBottomLeftBanners=4;
  float bannersBottomLefttX=width/50;
  float bannersBottomLeftY=height*0.586;
  
  while(currentBottomLeftBanners<wantedBottomLeftBanners){
  rect(bannersBottomLefttX, bannersBottomLeftY, bannersWidth, bannersHeight);
  bannersBottomLeftY+=height*0.1;
  currentBottomLeftBanners++;
  
  //Hvide bannere ned højre.
  float currentBottomRightBanners=0;
  float wantedBottomRightBanners=4;
  float bannersBottomRightX=width*0.52;
  float bannersBottomRightY=height*0.586;
  
  while(currentBottomRightBanners<wantedBottomRightBanners){
  rect(bannersBottomRightX, bannersBottomRightY, bannersWidth, bannersHeight);
  bannersBottomRightY+=height*0.1;
  currentBottomRightBanners++;
  
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
  //float flagLeftX
  
  float flagRightX=width*0.52;
  image(france, flagRightX, flagTopY, flagWidth, flagHeight);
  image(australia, flagRightX, flagTopY+height/10, flagWidth, flagHeight);
  image(peru, flagRightX, flagTopY+height/4.97, flagWidth, flagHeight);
  image(denmark, flagRightX, flagTopY+height/3.32, flagWidth, flagHeight);
  
 
  
  
  }  
  }
  }
  }
    
  }
  
