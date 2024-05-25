//Valentino Olivero 
//tp2 Comision 3
//Legajo 121280/6
PFont fuente;
 PImage img1, img2, img3; // Las imágenes para cada diapositiva
int paginaActual = 1; // Controla la página actual
float tiempoInicioPagina; // Tiempo en el que se muestra la página actual
boolean animando = false; // Controla si la animación está activa
float inicioAnimacion; // Tiempo en el que inicia la animación

void setup() {
  size(640, 480);
  img1 = loadImage("fotouno.jpg"); // Carga la primera imagen
  img2 = loadImage("fotodos.jpg"); // Carga la segunda imagen
  img3 = loadImage("fototres.jpg"); // Carga la tercer imagen
  tiempoInicioPagina = millis();
  fuente =createFont("Broadway", 20);
}

void draw() {
  background(0, 0, 160); // colorear fondo  
  switch(paginaActual) {
    case 1:
      primeraPagina();
      break;
    case 2:
      segundaPagina();
      break;
    case 3:
      terceraPagina();
      break;
  }
}

void primeraPagina() {
  // Animación del texto de bienvenida
  float y = min(height/2 - 70, map(millis() - tiempoInicioPagina, 0, 3000, -50, height/2 - 70));
  textFont(fuente);
  fill(255);
  textSize(28);
  textAlign(CENTER, CENTER);
  text("GALERIA DE ARTE DE VICTOR VAN GOGH!", width/2, y);
  
  // Botón 'Comenzar'
  fill(0, 128, 255);
  rectMode(CENTER);
  ellipse(width/2, height * 0.75, 200, 50);
  fill(255);
  text("COMENZAR", width/2, height * 0.75);
  
image(img1,12,250,120,120);
}


void segundaPagina() {
  if (!animando) {
    inicioAnimacion = millis();
    animando = true;
  } else {
    float x = map(millis() - inicioAnimacion, 0, 2500, width, -max(img1.width, img2.width));
    if (x > 0) {
      image(img2, x, height/4);
     }
    else {
     image(img2, 0, height/4);
    }
    if (millis() - inicioAnimacion > 5000) {
      animando = false;
      tiempoInicioPagina = millis();
      paginaActual = 3;
      
     
    }
  }
  // Título de la segunda diapositiva
  fill(255);
  textSize(24);
  text("La Noche Estrellada", width/2, 50);
}

void terceraPagina() {
   // Animación del título 'Este es el final del recorrido...'
  float xTitulo = min(width/2, map(millis() - tiempoInicioPagina, 0, 6000, -width, width/2));
  fill(255);
  textSize(32);
  text("Este es el final del recorrido...", xTitulo, height/2);
  
  // Animación del subtítulo 'Esperamos que vuelvas!'
  float xSubtitulo = xTitulo;
  textSize(24);
  text("Esperamos que vuelvas!", xSubtitulo, height/2 + 30);
  
  // Botón 'Restart'
  fill(0, 128, 255);
  rectMode(CENTER);
  rect(width/2, height * 0.85, 200, 50);
  fill(255);
  text("Restart", width/2, height * 0.85);
  image(img3,50,300,120,120);
}


 void mousePressed() {
  // Interacción con el botón en la primera diapositiva
  if (paginaActual == 1 && mouseX > width/2 - 100 && mouseX < width/2 + 100 &&
      mouseY > height * 0.75 - 25 && mouseY < height * 0.75 + 25) {
    paginaActual = 2; // Cambia a la segunda diapositiva
    tiempoInicioPagina = millis(); // Reinicia el contador de tiempo para la animación
    animando = false; // Asegura que la animación se reinicie
  }
  
  // Interacción con el botón en la tercera diapositiva
  else if (paginaActual == 3 && mouseX > width/2 - 100 && mouseX < width/2 + 100 &&
           mouseY > height * 0.85 - 25 && mouseY < height * 0.85 + 25) {
    paginaActual = 1; // Vuelve a la primera diapositiva
    tiempoInicioPagina = millis(); // Reinicia el contador frames para la animación
    animando = false; // Asegura que la animación se reinicie
  }
}
