// Variables para los botones
int botonX, botonY, botonAncho, botonAlto;
int botonIniciarX, botonIniciarY;
boolean escena1 = false;
int textoIndex = 0;
PImage fondo;
String[] textos = {
  "¿Ah?... ¿Donde estoy? No recuerdo nada...",
  "Se siente muy frío el ambiente, creo que será mejor volver a casa...",
  "Pero... ¿acaso pertenezco a algún lugar? ¿qué o quien soy?",
  "¿Quien soy?...",
  "Bueno, creo que es mejor averiguarlo..."
};

void setup() {
  size(800, 600);
  fondo = loadImage("background-menu.png");
  // Coordenadas y tamaño de los botones
  botonX = width/2 - 50;
  botonY = height / 2 +40;
  botonAncho = 100;
  botonAlto = 40;
  
  botonIniciarX = width / 2 - 50;
  botonIniciarY = height / 2 - 20;
}

void draw() {
  if (escena1) {
    // Escena 1: Pantalla negra con texto
    background(0);
    fill(255);
    textSize(24);
    textAlign(CENTER, CENTER);
    
    if (textoIndex < textos.length) {
      text(textos[textoIndex], width / 2, height / 2);
    } else {
      text("...", width / 2, height / 2);
    }
    
  } else {
    // Pantalla de inicio
    image(fondo, 0, 0, width, height);
    // Botón para salir
    fill(255, 0, 0);
    rect(botonX, botonY, botonAncho, botonAlto);
    fill(255);
    textSize(20);
    textAlign(CENTER, CENTER);
    text("Salir", botonX + botonAncho / 2, botonY + botonAlto / 2);
    
    // Botón para iniciar el juego
    fill(0, 255, 0);
    rect(botonIniciarX, botonIniciarY, botonAncho, botonAlto);
    fill(255);
    text("Iniciar", botonIniciarX + botonAncho / 2, botonIniciarY + botonAlto / 2);
  }
}

void mousePressed() {
  if (!escena1) {
    // Verificar si se presionó el botón de salir
    if (mouseX > botonX && mouseX < botonX + botonAncho && mouseY > botonY && mouseY < botonY + botonAlto) {
      exit();  // Cerrar el programa
    }
    
    // Verificar si se presionó el botón de iniciar
    if (mouseX > botonIniciarX && mouseX < botonIniciarX + botonAncho && mouseY > botonIniciarY && mouseY < botonIniciarY + botonAlto) {
      escena1 = true;  // Cambiar a la primera escena
    }
  } else {
    // En la primera escena, avanzar el texto
    if (textoIndex < textos.length) {
      textoIndex++;
    }
  }
}

void keyPressed() {
  if (escena1 && key == ' ') {
    // Avanzar el texto con la barra espaciadora
    if (textoIndex < textos.length) {
      textoIndex++;
    }
  }
}
