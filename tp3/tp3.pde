//Valentino Olivero
//Comision 3 tp3
// link: https://www.youtube.com/watch?v=FQmQI7cIOYE
int columnas = 20;
int filas = 50;
boolean changeColors = false;
PImage obra;
color[] randomColors = new color[10]; 

void setup() {
  size(800, 400);
  obra = loadImage("obra.png");
  background(255);
  
  
  for (int i = 0; i < randomColors.length; i++) {
    randomColors[i] = color(0);  
  }
}

void draw() {
  // Dibuja la imagen de la obra en el sketch
  image(obra, 0, 0, 400, 400);
  int w = width / 2 / columnas;
  int h = height / filas;

  noStroke();
  // Dibuja todos los rectángulos del fondo
  for (int i = 2; i <= 3; i++) {
    for (int j = 0; j < 10; j++) {
      if ((i + j) % 2 == 0) {
        fill(changeColors ? randomColors[j] : 0); // Negro se convierte en color aleatorio si changeColors es verdadero
      } else {
        fill(255); 
      }
      if (i == 2) {
        rect(i * 200, j * 20, 200, 20);
      } else {
        rect(i * 200, j * 20 + 200, 200, 20);
      }
    }
  }

  for (int i = 1; i >= 0; i--) {
    for (int j = 0; j < 10; j++) {
      if ((i + j) % 2 == 0) {
        fill(changeColors ? randomColors[j] : 0); // Negro se convierte en color aleatorio si changeColors es verdadero
      } else {
        fill(255);
      }
      if (i == 1) {
        rect(400 + j * 20, 200, 20, 200);
      } else {
        rect(600 + j * 20, 0, 20, 200);
      }
    }
  }
  // Dibuja los círculos en el medio de la obra
  int cantCirculos = 6;
  int tamCirculos = w * 2;

  for (int k = cantCirculos; k > 0; k--) {
    if (k % 2 == 0) {
      fill(changeColors ? dameUnColorAleatorio() : 0); // Negro se convierte en color aleatorio si changeColors es verdadero
    } else {
      fill(255); 
    }
    ellipse(width * 3 / 4, height / 2, k * tamCirculos, k * tamCirculos);
  }
}

color dameUnColorAleatorio() {
  return color(random(255), random(255), random(255));
}

void keyPressed() {
  changeColors = !changeColors;
  for (int i = 0; i < randomColors.length; i++) {
    randomColors[i] = dameUnColorAleatorio();
  }
}
