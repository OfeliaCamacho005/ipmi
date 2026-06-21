// Camacho Ana
// Comisión 1
//este es mi trabajo incompleto, me esta costando ponerle color y alguna interaccion a la obra
PImage img;
void setup() {
  size(800, 400);
  img = loadImage("18.png");
}

void draw() {
  background(242, 190, 125);
  image(img, 0, 0, 400, 400);
  miObra();
  
}
void miObra () {
  miGrilla(10, 10, 18, 400, 0);
  miGrilla2(10, 10, 18, 400, 198);
  miGrilla(10, 10, 18, 600, 198);
  miGrilla2(10, 10, 18, 600, 0);
  
}


void miGrilla(int columnas, int filas, int tam, int posX, int posY) {
  pushMatrix();
  translate(posX, posY);

  for (int i=0; i<=columnas; i++) {
    for (int j=0; j<=filas; j++) {
      noStroke();
      miCuadrado(tam * i, tam * j, tam-4, tam-4);
    }
  }
  popMatrix();
}
void miGrilla2(int columnas, int filas, int tam, int posX, int posY) {
  pushMatrix();
  translate(posX, posY);

  for (int i=0; i<=columnas; i++) {
    for (int j=0; j<=filas; j++) {
      noStroke();
      miCuadrado2(tam * i, tam * j, tam-4, tam-5);
    }
  }
  popMatrix();
}

void miCuadrado(int x, int y, int alto, int ancho) {
  fill(255);
  quad(x-ancho/4, y, x + ancho, y+ancho/4, x +alto+ancho/4, y + alto/4+alto, x, y +alto);
}
void miCuadrado2(int x, int y, int alto, int ancho) {
  fill(255);
  quad(x + ancho + ancho/4, y, x, y + ancho/4, x - ancho/4, y + alto/4 + alto, x + alto, y+alto);
}
