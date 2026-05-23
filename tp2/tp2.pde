// Camacho Ana
// Comisión N°1

PImage img1, img2, img3, img4, img5;
PFont T;

int pantalla;
int tiempo;

boolean botonIActivado;

float posXBotonI;
float posYBotonI;
int tamXBotonI;
int tamYBotonI;

float tamXRect, tamYRect;
float posXRect, posYRect;

String algo, algo2, algo3,algo4;
int posX, posX2,posX3;
int posY;

void setup() {
  size(640, 480);

  T= loadFont("SegoePrint-48.vlw");
  textSize(40);

  img1 = loadImage("Titulo.png");
  img2 = loadImage("fondo.png");
  img3 = loadImage("Ida.png");
  img4 = loadImage("Montaña.png");
  img5 = loadImage("Regreso.png");

  tamXBotonI= 120;
  tamYBotonI= 50;
  posXBotonI= width - tamXBotonI-10;
  posYBotonI = height - tamYBotonI-10;

  algo = "Protagonizada por: \nMARTIN FREEMAN \nIAN MCKELLEN \nRICHARD ARMITAGE \nKEN STOTT \nWILLIAM KIRCHER \nJAMES NESBITT \nSTEPHEN HUNTER \nMARK HADLOW \nGRAHAM MCTAVISH \nDEAN O'GORMAN";
  posX = 600;
  algo2 = "PETER HAMBLETON \nAIDAN TURNER \nJED BROPHY \nJOHN CALLEN \nADAM BROWN \nORLANDO BLOOM \nEVANGELINE LILLY \nLUKE EVANS \nBENEDICT- CUMBERBATCH";
  posX2 = 900;
  algo4 = "Gracias por ver";
  posX3 = 600;

  algo3 = "El Hobbit(es una trilogía cinematográfica)\nsigue al hobbit Bilbo Bolsón, quien es \nreclutado por el mago Gandalf y 13 enanos liderados por Thorin Escudo de Roble. Su misión es viajar a la Montaña Solitaria para recuperar su antiguo reino de Erebor y su tesoro de las garras del temible dragón Smaug.";
  posY = height + 50;



  pantalla=1;
  tiempo=0;
}

void draw() {

//PANTALLA1
  if (pantalla==1) {

    if (mouseX>posXBotonI && mouseX<posXBotonI+tamXBotonI && mouseY> posYBotonI && mouseY < posYBotonI + tamYBotonI) {
      fill(255, 243, 111);
    } else {
      fill(36, 36, 36);
    }
    if (botonIActivado) {
      tiempo++;
      
      if (tiempo>=50) {
        tiempo=0;
        pantalla=2;
      }
    }
    image(img1, 0, 0, width, height);
    if (botonIActivado==false) {
      rect(posXBotonI, posYBotonI, tamXBotonI, tamYBotonI, 10);
      fill(255);

      textFont(T, 20);
      text("Inicio", posXBotonI + 35, posYBotonI + 32);
    }
  }

//PANTALLA2
  if (pantalla==2) {
    botonIActivado=false;
    tiempo++;

    if (tiempo>=200) { 
      pantalla=3;
      tiempo=0;
    }
    image(img2, 0, 0, width, height);
    textFont(T, 25);
    fill(115, 60, 25);
    text("Basada en", 50, 55, 800, 90);
    text("The Hobbit by .R.R.TOLKIEN", 49, 82, 800, 90);

    text("Dirección", 50, 130, 800, 90);
    text("PETER JACKSON", 49, 160, 800, 90);

    text("Guion por", 50, 220, 800, 90);
    text("PETER JACKSON", 49, 250, 800, 90);
    text("FRAN WALSH", 49, 280, 800, 90);
    text("PHILIPPA BOYENS", 49, 310, 800, 90);
    text("GUILLERMO DEL TORO", 49, 340, 800, 90);
  }
  
//PANTALLA3
  if (pantalla==3) {
    botonIActivado=false;
    tiempo++;
 
    if (tiempo>=300) {
      pantalla=4;
      tiempo=0;
    }
    image(img2, 0, 0, width, height);
    textFont(T,25);
    fill(115,60,25);
    text("Música",50,55,800,90);
    text("HOWARD SHORE",49,82,800,90);

    text("Fotografia",350,55,800,90);
    text("ANDREW LESNIE",350,82,800,90);

    text("Montaje",50,130,800,90);
    text("JABEZ OLSSEN",49,160,800,90);

  }
//PANTALLA4
  if (pantalla==4) {
    botonIActivado=false;
    tiempo++;

    if (tiempo>=500) {
      pantalla=5;
      tiempo=0;
    }
    image(img3, 0, 0, width, height);
    fill(9, 4, 31);
    textFont(T, 22);
    text(algo, posX, 20, 280, 420);
    if (posX>25) {
      posX = posX-4;
    } else {
      posX=25;
    }
    text(algo2, posX2, 20, 280, 400);
    if (posX2 > 320) {
      posX2 = posX2-5;
    } else {
      posX2 = 320;
    }
  }

//PANTALLA5
  if (pantalla==5) {
    botonIActivado=false;
    tiempo++;

    if (tiempo>=700) {
      pantalla=6;
      tiempo=0;
    }
    image(img4, 0, 0, width, height);
    fill(0, 0, 0, 110);
    rect(width / 2 -300, 10, 600, 300, 12);
    fill(225);
    textFont(T, 25);
    text(algo3, width / 2 -300 + 40, posY, 520, 300);
    if (posY > 15) {
      posY = posY-2;
    } else {
      posY = 15;
    }
  }
//PANTALLA6
  if (pantalla==6) {
 image(img5, 0, 0, width, height);
    fill(20, 20, 20);
    rect(posXBotonI, posYBotonI, tamXBotonI, tamYBotonI, 5);
    fill(255);
    text(algo4, posX3,450 , 280, 440);
    if (posX3>25) {
      posX3= posX3-4;
    } else {
      posX3=25;
    }
    fill(255);
    textFont(T,16);
    text("Reiniciar", posXBotonI + 22, posYBotonI + 32);
    if (botonIActivado==true) {
      reiniciar();
  }
}
  }

void mousePressed() {

  if (mouseX>posXBotonI && mouseX<posXBotonI+tamXBotonI && mouseY> posYBotonI && mouseY < posYBotonI + tamYBotonI) {

    botonIActivado=true;
  }
}

void reiniciar() {
  tiempo=0;
  posXRect=0;
  posYRect=0;
  tamXRect=0;
  tamYRect=height;
  botonIActivado=false;
  pantalla=1;
  posX = 600;
  posX2 = 900;
  posX3 = 600;
  posY = height + 50;
}
