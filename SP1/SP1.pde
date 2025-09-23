/*04.09.25
-Påbegyndt projektet

05.09.25
Vil forsøge at indsætte billeder af flag.

08.09.25
Vil indsætte de sidste flag og de farvede rektangler i enden af flagene. Løb ind i
problemer med at programmer ikke svarer, måske er koden for rodet.
Problemet blev løst, det viste sig at være et enkelt punktum efter peru.png, der
var problemet.

09.09.25
Færdiggør selve billedet i dag, mangler kun teksten. Hvis mere tid, vil jeg begynde
at lave klasser og objekter og organisere koden.

10.09.25
Glemte at forklare
18.09.25
Glemte hvad jeg glemte at forklare ser det ud til, i dag vil jeg forsøge at oprette
arrays.

19.09.25
Lidt sløjt de sidste par gange, men i dag fik jeg endelig tilføjet et array og efter
lang tid fik jeg et dobbelt array til at lave mine landenavne.

20.09.25
Fik lavet en bedre banner metode, det lykkedes mig at komme forbi det svære ved at
bunden starter lavere end spacingen ved at lave to objekter og så kalde dem med
forskellige start y værdier.

22-23.09.25
Fik tilføjet de gule og blå rektangler ved hjælp af en pænere metode. Vigtigt at holde
øje med om man tegner noget overhovedet i et for loop og ikke blot ændre placering. 
*/

//Global variables.
//Fonts.
PFont font1;
PFont font2;

//Colors.
Color blueColor;
Color yellowColor;

//Flags.
Flags createFlags;

//Banners.
Banners bannersTop;
Banners bannersBottom;

//Yellow and blue rects.
yellowAndBlueRect topRects;
yellowAndBlueRect bottomRects;

//Array for group names.
String[]groupNames={"GROUP A", "GROUP C", "GROUP B", "GROUP D"};

//Double Array for country names.
String[][]countryNames={
  {"RUSSIA", "SAUDI ARABIA", "EGYPT", "URUGUAY"},
  {"PORTUGAL", "SPAIN", "MOROCCO", "IRAN"},
  {"FRANCE", "AUSTRALIA", "PERU", "DENMARK"},
  {"ARGENTINA", "ICELAND", "CROATIA", "NIGERIA"}
};

void setup() {
  //Initialize objects:
  //Color.
  blueColor=new Color(98, 209, 240);
  yellowColor=new Color(252, 253, 85);

  //Flags.
  createFlags=new Flags();
  createFlags.loadFlags();

  //Banners.
  bannersTop=new Banners(width*0.02, height*0.072);
  bannersBottom=new Banners(width*0.02, height*0.587);

  //Yellow and blue rects.
  topRects = new yellowAndBlueRect(width*0.48, height*0.072);
  bottomRects = new yellowAndBlueRect(width*0.48, height*0.587);

  //Fonts.
  font1=loadFont("Calibri-48.vlw");
  font2=loadFont("Calibri-Bold-30.vlw");

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
  bannersTop.display();            //Draws the top white banners.
  bannersBottom.display();         //Draws the bottom white banners.

  blueColor.display();             //Sets the color blue.
  topRects.display();              //Draws top blue rects.

  yellowColor.display();           //Sets the color yellow.
  bottomRects.display();           //Draws the bottom yellow rects.

  createFlags.display();           //Draws the pictures of flags.

  textFont(font1);                 //Sets font for country names.
  insertCountryNames(countryNames);//Draws the country names.
  textFont(font2);                 //Sets font for group names.
  insertGroupNames(groupNames);    //Draws the GROUP A,B,C,D.
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
      ypos=height*0.575;
    } else if (i==3) {
      xpos=width*0.7;
      ypos=height*0.575;
    }
    for (int j=0; j<groupNames.length; j++) {
      textSize(30);
      text(groupNames[i], xpos, ypos);
    }
  }
}
