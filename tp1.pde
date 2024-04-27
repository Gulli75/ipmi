//Olivero Valentino
//tp1 Comisión 3
//variable guardar imagen
PImage amogus;
void setup(){
  //tamaño y de la ventana y color del fondo
size(800,400);
background(255,226,0);
//carga y define la ruta de la imagen
amogus = loadImage("amogus.jpg");
}
void draw(){
  //dibuja la imagen en la mitad izquierda de la ventana
  image(amogus,0,0,400,400);
  //comienzo del contorno del personaje
  fill(0);
beginShape();
vertex(494,399);
vertex(494,246);
vertex(457,229);
vertex(451,158);
vertex(453,139);
vertex(501,116);
vertex(523,72);
vertex(578,39);
vertex(642,36);
vertex(695,68);
vertex(724,155);
vertex(767,176);
vertex(770,399);
vertex(528,399);
endShape();
//trazado del personaje
fill(232,26,26);
beginShape();
vertex(520,399);
vertex(520,227);
vertex(478,210);
vertex(474,152);
vertex(511,129);
vertex(542,80);
vertex(582,61);
vertex(641,57);
vertex(679,85);
vertex(696,155);
vertex(696,399);
vertex(520,399);
endShape();
//trazado de la mochila
beginShape();
vertex(723,399);
vertex(723,179);
vertex(749,190);
vertex(749,399);
vertex(723,399);
endShape();
//trazado del visor
fill(0);
beginShape();
vertex(520,247);
vertex(628,246);
vertex(658,211);
vertex(667,173);
vertex(655,136);
vertex(630,109);
vertex(505,115);
vertex(514,126);
vertex(467,151);
vertex(468,206);
vertex(520,247);
endShape();
//comienzo del sombreado de la mochila
fill(155,39,89);
noStroke();
beginShape();
vertex(723,211);
vertex(749,221);
vertex(749,399);
vertex(723,399);
vertex(723,211);
endShape();
//trazado de la sombra del cuerpo
fill(155,39,89);
noStroke();
beginShape();
vertex(520,297);
vertex(541,321);
vertex(599,317);
vertex(661,299);
vertex(683,158);
vertex(680,85);
vertex(696,154);
vertex(696,399);
vertex(520,399);
vertex(520,297);
endShape();
//coloreado del visor
fill(160,221,237);
beginShape();
vertex(474,151);
vertex(500,139);
vertex(617,139);
vertex(633,155);
vertex(640,170);
vertex(632,201);
vertex(615,225);
vertex(499,225);
vertex(470,210);
vertex(478,213);
endShape();
//sombreado del visor
fill(83,155,191);
beginShape();
vertex(475,185);
vertex(495,192);
vertex(611,192);
vertex(623,175);
vertex(617,138);
vertex(633,152);
vertex(639,167);
vertex(636,202);
vertex(613,228);
vertex(497,228);
vertex(474,212);
vertex(475,185);
endShape();
//trazado del relfejo del visor
fill(255);
noStroke();
beginShape();
vertex(481,156);
vertex(501,147);
vertex(536,147);
vertex(536,158);
vertex(494,163);
vertex(481,156);
endShape();

}
void mousePressed(){
  println(" X  Y");
  println(mouseX+","+mouseY);
}
