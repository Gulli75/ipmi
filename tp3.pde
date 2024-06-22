//Valentino Olivero
//Comision 3 tp3
// link: https://youtu.be/y1c-KyaL4sI
int columnas = 20;
int filas = 50;
boolean invertColors = false;
PImage obra;

void setup() {
  size(800, 400);
  obra = loadImage("obra.png");
  background(255);
}

void draw() {
  // Dibuja la imagen de la obra en el sketch
  image(obra, 0, 0, 400, 400);
  int w = width / 2 / columnas;
  int h = height / filas;

  noStroke();
  // Dibuja todos los rectangulos del fondo
  for (int i = 2; i <= 3; i++) {
    for (int j = 0; j < 10; j++) {
      if ((i+j)%2 == 0) {
        fill (255);
      } else {
        fill(0);
      }
      if ((i + j) % 2 == 0) {
        fill(invertColors ? 0 : 255);
      } else {
        fill(invertColors ? 255 : 0);
      }
      if (i == 2) {
        rect(i*200, j*20, 200, 20);
      } else {
        rect(i*200, j*20+200, 200, 20);
      }
    }
  }

 for (int i = 1; i >= 0; i--) {
    for (int j = 0; j < 10; j++) {
      if ((i+j)%2 == 0) {
        fill (255);
      } else {
        fill(0);
      }
      if ((i + j) % 2 == 0) {
        fill(invertColors ? 0 : 255);
      } else {
        fill(invertColors ? 255 : 0);
      }
      if (i == 1) {
        rect(400+j*20, 200, 20, 200);
      } else {
        rect(600+j*20, 0, 20, 200);
      }
    }
  }
  // Dibuja los circulos de el medio de la obra
  int cantCirculos = 6;
  int tamCirculos = w * 2;

  for (int k = cantCirculos; k > 0; k--) {
    if (k % 2 == 0) {
      fill(invertColors ? 255 : 0);
    } else {
      fill(invertColors ? 0 : 255);
    }
    ellipse(width * 3 / 4, height / 2, k * tamCirculos, k * tamCirculos);
  }
}

void mousePressed() {
  // Declara que con cada click del mouse, se inviertan los colores
  invertColors = !invertColors;
  redraw();
}
