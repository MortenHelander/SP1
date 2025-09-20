//Flag klasse hvor alle billederne loades.
class Flags {
  float xpos;
  float ypos;
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

  void loadFlags() {
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
  }
  void display() {

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
  }
}
