//Ana camacho 
//Comision 1

PImage img;

void setup(){
size(800,400);
  img = loadImage("mimagen.png");
  translate(400,0);
}

void draw(){
  
  background(255);
  image(img,0,0);
  translate(400,0);
  
//figuras usadas (fondo)
 strokeWeight(0);
 fill(247,241,57);
 triangle(400,400,185,400,400,125);//triangulo amarillo
 fill(90,16,100);
 triangle(0,400,0,140,240,400);//morado
 fill(252,118,15);
 triangle(192,110,135,0,350,0);//naranja
 fill(29,77,118);
 triangle(190,110,135,0,78,0);
 fill(161,77,178);
 quad(190,100,338,0,500,0,320,225);
 fill(53,89,211);
 triangle(185,96,270,290,323,220);
 fill(252,118,15);
 quad(186,100,50,196,214,370,272,288);
 fill(247,241,57);
 quad(186,100,50,196,-10,0,80,0);
 fill(247,241,57);
 noStroke();
 triangle(0,0,50,200,0,200);
 strokeWeight(3);
 fill(83,173,78);
 stroke(0);
 quad(50,196,-22,240,130,362,186,340);//tringulo y cuadrado chico
 strokeWeight(3);
 fill(206,54,57);
 quad(240,330,400,120,400,244,316,340);
 strokeWeight(0);
 fill(83,173,78);
 triangle(0,230,0,140,50,195);//verde
 
//Figuras usadas (Cara) 
 strokeWeight(3);
 fill(250);
 quad(48,95,123,75,155,102,110,114);
 fill(83,173,78);
 ellipse(120,90,30,23);
 fill(32,64,131);
 ellipse(122,84,12,10);
 
//ojos 
 strokeWeight(3);
 fill(70,20,20);
 triangle(232,100,214,105,224,112);
 triangle(248,114,235,120,242,125);
 triangle(270,118,280,128,266,128);
 triangle(290,112,292,124,310,120);
 triangle(324,96,300,95,318,105);
 triangle(326,88,312,80,328,80);
 strokeWeight(2);
 fill(163,237,153);
 bezier(230,100,290,150,315,90,315,82);
 
 
//lineas
 strokeWeight(3);
 line(340,0,0,228);
 line(250,410,0,145);
 line(80,0,516,400);
 line(135,0,325,400);
 line(400,120,192,400);
 strokeWeight(2);
 fill(206,54,57);
 triangle(135,53,36,62,159,73);
 triangle(263,51,215,84,342,73);
 fill(28,63,155);
 quad(151,246,109,258,137,285,174,258);
 quad(138,284,199,244,253,255,192,294);
 fill(28,63,155);
 noStroke();
 triangle(197,264,148,255,138,282);
 strokeWeight(2);
 stroke(0);
 line(115,264,170,271);
 line(170,271,248,254);
 line(183,212,190,222);
 line(190,222,240,225);
 line(190,206,173,207);
 line(173,207,177,217);
}
