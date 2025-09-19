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

//10.09.25
//Glemte at forklare
//18.09.25

//Glemte hvad jeg glemte at forklare ser det ud til, i dag vil jeg forsøge at oprette
//arrays.

//19.09.25
//Lidt sløjt de sidste par gange, men i dag fik jeg endelig tilføjet et array og efter
//lang tid fik jeg et dobbelt array til at lave mine landenavne.



//Global variables.
//Colors.
int blueText=#62D1F0;
int yellowText=#FCFD55;
//Banners.
ArrayList<Banners>whiteBanners=new ArrayList();
String[][]countryNames={
  {"RUSSIA", "SAUDI ARABIA", "EGYPT", "URUGUAY"},
  {"PORTUGAL", "SPAIN", "MOROCCO", "IRAN"},
  {"FRANCE", "AUSTRALIA", "PERU", "DENMARK"},
  {"ARGENTINA", "ICELAND", "CROATIA", "NIGERIA"}
};

ArrayList<PImage>flags=



Banners topLeftBanners;
Banners topRightBanners;
Banners bottomLeftBanners;
Banners bottomRightBanners;
//Yellow and blue rects.
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
  //Load pictures of flags.
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

  //Fonts.
  PFont font2;
  font2=loadFont("Calibri-48.vlw");
  textFont(font2);

  //Variables.
  float yellowAndBlueRectsWidth=width*0.011;
  float yellowAndBlueRectsHeight=height*0.085;

  //Initializing of objects.
  //Banners.
  topLeftBanners=new Banners(width*0.02, height*0.072);
  topRightBanners=new Banners(width*0.52, height*0.072);
  bottomLeftBanners=new Banners(width*0.02, height*0.586);
  bottomRightBanners=new Banners(width*0.52, height*0.586);

  //Yellow and blue rects.
  blueRectsTopLeft=new yellowAndBlueRect(color (blueText), width*0.48, height*0.072, yellowAndBlueRectsWidth, yellowAndBlueRectsHeight);
  blueRectsTopRight=new yellowAndBlueRect(color(blueText), width*0.977, height*0.072, yellowAndBlueRectsWidth, yellowAndBlueRectsHeight);
  yellowRectsBottomLeft=new yellowAndBlueRect(color(yellowText), width*0.48, height*0.586, yellowAndBlueRectsWidth, yellowAndBlueRectsHeight);
  yellowRectsBottomRight=new yellowAndBlueRect(color(yellowText), width*0.977, height*0.586, yellowAndBlueRectsWidth, yellowAndBlueRectsHeight);

  //Background and size.
  size(1185, 500);
  background(#222222);
  //Left background blue.
  fill(#23324C);
  rect(width/50, height/180, width*0.495, height*0.98);
  //Right background blue.
  fill(#2C3953);
  rect(width*0.5, height/180, width*0.495, height*0.98);
  noStroke();
  //Middle collum white.
  fill(#FDFEFF);
  rect(width*0.5, height/170, width*0.003, height*0.98);

  //Top headline blue.
  fill(blueText);
  textSize(27);
  text("GROUP A", width*0.21, height*0.05);
  text("GROUP C", width*0.7, height*0.05);

  //Bottom headline yellow.
  fill(yellowText);
  text("GROUP B", width*0.21, height*0.55);
  text("GROUP D", width*0.7, height*0.55);

  //Call objects.
  //White banners.
  topLeftBanners.display();
  topRightBanners.display();
  bottomLeftBanners.display();
  bottomRightBanners.display();
  //Blue and yellow rects.
  blueRectsTopLeft.display();
  blueRectsTopRight.display();
  yellowRectsBottomLeft.display();
  yellowRectsBottomRight.display();

  //Insert flags top left.
  float flagLeftX=width/50;
  float flagTopY=height*0.07;
  float flagWidth=width/11.5;
  float flagHeight=height/11.3;
  
  

  image(russia, flagLeftX, flagTopY, flagWidth, flagHeight);
  image(saudiArabia, flagLeftX, flagTopY+height/10, flagWidth, flagHeight);
  image(egypt, flagLeftX, flagTopY+height/4.97, flagWidth, flagHeight);
  image(uruguay, flagLeftX, flagTopY+height/3.32, flagWidth, flagHeight);

  //Insert flags top right.
  float flagRightX=width*0.52;
  image(france, flagRightX, flagTopY, flagWidth, flagHeight);
  image(australia, flagRightX, flagTopY+height/10, flagWidth, flagHeight);
  image(peru, flagRightX, flagTopY+height/4.97, flagWidth, flagHeight);
  image(denmark, flagRightX, flagTopY+height/3.32, flagWidth, flagHeight);

  //Insert flags bottom left.
  float flagBottomY=height*0.585;
  image(portugal, flagLeftX, flagBottomY, flagWidth, flagHeight);
  image(spain, flagLeftX, flagBottomY+height/10, flagWidth, flagHeight);
  image(morocco, flagLeftX, flagBottomY+height/4.97, flagWidth, flagHeight);
  image(iran, flagLeftX, flagBottomY+height/3.32, flagWidth, flagHeight);

  //Insert flags bottom right.
  image(argentina, flagRightX, flagBottomY, flagWidth, flagHeight);
  image(iceland, flagRightX, flagBottomY+height/10, flagWidth, flagHeight);
  image(croatia, flagRightX, flagBottomY+height/4.97, flagWidth, flagHeight);
  image(nigeria, flagRightX, flagBottomY+height/3.32, flagWidth, flagHeight);

  insertGroupNames(countryNames);
}




//Country names.
void insertGroupNames(String[][] countryNames) {
  fill(0);
  textSize(45);
  float xpos=0;
  float ypos=0;
  for (int i=0; i<countryNames.length; i++) {
    if (i==0) {
      xpos=width*0.12;
      ypos=height*0.045;
    } else if (i==1) {
      xpos=width*0.12;
      ypos=height*0.56;
    } else if (i==2) {
      xpos=width*0.622;
      ypos=height*0.045;
    } else if (i==3) {
      xpos=width*0.622;
      ypos=height*0.56;
    }
    for (int j=0; j<countryNames[i].length; j++) {
      ypos+=height*0.1;
      text(countryNames[i][j], xpos, ypos);
    }
  }
}
