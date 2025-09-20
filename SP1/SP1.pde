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

//20.09.25
//Fik lavet en bedre banner metode, det lykkedes mig at komme forbi det svære ved at
//bunden starter lavere end spacingen ved at lave to objekter og så kalde dem med
//forskellige start y værdier.



//Global variables.
//Colors.
Color blueColor;
Color yellowColor;


int yellowText=#FCFD55;
//Banners.
Banners topLeftBanners;
Banners topRightBanners;
Banners bottomLeftBanners;
Banners bottomRightBanners;
Banners[][]banners={
  {topLeftBanners, topRightBanners},
  {bottomLeftBanners, bottomRightBanners}
};

String[]groupNames={"GROUP A", "GROUP C", "GROUP B", "GROUP D"};

String[][]countryNames={
  {"RUSSIA", "SAUDI ARABIA", "EGYPT", "URUGUAY"},
  {"PORTUGAL", "SPAIN", "MOROCCO", "IRAN"},
  {"FRANCE", "AUSTRALIA", "PERU", "DENMARK"},
  {"ARGENTINA", "ICELAND", "CROATIA", "NIGERIA"}
};




//Yellow and blue rects.
yellowAndBlueRect blueRectsTopLeft;
yellowAndBlueRect blueRectsTopRight;
yellowAndBlueRect yellowRectsBottomLeft;
yellowAndBlueRect yellowRectsBottomRight;

Flags createFlags;
Banners bannersTop;
Banners bannersBottom;


void setup() {
  //Int color objects.
  blueColor=new Color(98, 209, 240);
  yellowColor=new Color(252, 253, 85);

  //Int flag objects and load them.
  createFlags=new Flags();
  createFlags.loadFlags();

  //Fonts.
  PFont font2;
  font2=loadFont("Calibri-48.vlw");
  textFont(font2);





  //Initializing of objects.
  //Banners.
   bannersTop=new Banners(width*0.02, height*0.072);
   bannersBottom=new Banners(width*0.02, height*0.587);


  //Variables yellow and blue rects.
  float yellowAndBlueRectsWidth=width*0.011;
  float yellowAndBlueRectsHeight=height*0.085;
  //Yellow and blue rects initilazation.
  /*
  blueRectsTopLeft=new yellowAndBlueRect(color (blueText), width*0.48, height*0.072, yellowAndBlueRectsWidth, yellowAndBlueRectsHeight);
   blueRectsTopRight=new yellowAndBlueRect(color(blueText), width*0.977, height*0.072, yellowAndBlueRectsWidth, yellowAndBlueRectsHeight);
   yellowRectsBottomLeft=new yellowAndBlueRect(color(yellowText), width*0.48, height*0.586, yellowAndBlueRectsWidth, yellowAndBlueRectsHeight);
   yellowRectsBottomRight=new yellowAndBlueRect(color(yellowText), width*0.977, height*0.586, yellowAndBlueRectsWidth, yellowAndBlueRectsHeight);
   */
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
}

void draw() {
  bannersTop.display();
  bannersBottom.display();
  createFlags.display();
  insertCountryNames(countryNames);
  insertGroupNames(groupNames);
}

//Method that inserts the country names.
void insertCountryNames(String[][] countryNames) {
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

//Method that inserts the group names.
void insertGroupNames(String[]groupNames) {
  float xpos=0;
  float ypos=0;
  for (int i=0; i<groupNames.length; i++) {
    if (i==0) {
      blueColor.display();
      xpos=width*0.21;
      ypos=height*0.062;
    } else if (i==1) {
      xpos=width*0.7;
      ypos=height*0.062;
    } else if (i==2) {
      yellowColor.display();
      xpos=width*0.21;
      ypos=height*0.55;
    } else if (i==3) {
      xpos=width*0.7;
      ypos=height*0.55;
    }
    for (int j=0; j<groupNames.length; j++) {
      textSize(35);
      text(groupNames[i], xpos, ypos);
    }
  }
}


      
      
  
