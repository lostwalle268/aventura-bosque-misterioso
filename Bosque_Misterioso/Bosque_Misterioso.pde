// Variables globales del juego
Arbol arbol;
Nodo nodoActual;
int imagenIndex = 0;
boolean enMenu = true;  // Bandera para saber si estamos en el menú
PImage fondoMenu;
int botonX, botonY, botonAncho, botonAlto, botonSalirX, botonSalirY;

void setup() {
  fullScreen();
  
  // Cargar la imagen de fondo para el menú
  fondoMenu = loadImage("background-menu.png");
  
  // Crear el árbol binario
  arbol = new Arbol();
  
  // Cargar imágenes de los nodos
  ArrayList<PImage> imagenesNodo1 = new ArrayList<PImage>();
  imagenesNodo1.add(loadImage("Instrucciones del juego.png"));
  imagenesNodo1.add(loadImage("Diálogo entre el mono y el hipopótamo 1.png"));
  imagenesNodo1.add(loadImage("Diálogo entre el mono y el hipopótamo 2.png"));
  imagenesNodo1.add(loadImage("Diálogo entre el mono y el hipopótamo 3.png"));
  imagenesNodo1.add(loadImage("Diálogo entre el mono y el hipopótamo 4.png"));
  
  imagenesNodo1.add(loadImage("Diálogo voz del bosque e hipopótamo 1.png"));
  imagenesNodo1.add(loadImage("Diálogo voz del bosque e hipopótamo 2.png"));
  imagenesNodo1.add(loadImage("Diálogo voz del bosque e hipopótamo 3.png"));
  imagenesNodo1.add(loadImage("Diálogo voz del bosque e hipopótamo 4.png"));
  imagenesNodo1.add(loadImage("Diálogo voz del bosque e hipopótamo 5.png"));
  imagenesNodo1.add(loadImage("Diálogo voz del bosque e hipopótamo 6.png"));
  imagenesNodo1.add(loadImage("Diálogo voz del bosque e hipopótamo 7.png"));
  imagenesNodo1.add(loadImage("Diálogo voz del bosque e hipopótamo 8.png"));
  imagenesNodo1.add(loadImage("Diálogo voz del bosque e hipopótamo 9.png"));
  
  imagenesNodo1.add(loadImage("Dialogo tortuga e hipopótamo 1.png"));
  imagenesNodo1.add(loadImage("Dialogo tortuga e hipopótamo 2.png"));
  imagenesNodo1.add(loadImage("Texto negro en el enigma 1 - 1.png"));
  imagenesNodo1.add(loadImage("Texto negro en el enigma 1 - 2.png"));
  imagenesNodo1.add(loadImage("Texto negro en el enigma 1 - 3.png"));
  imagenesNodo1.add(loadImage("Dialogo tortuga e hipopótamo 3.png"));
  imagenesNodo1.add(loadImage("Dialogo tortuga e hipopótamo 4.png"));
  imagenesNodo1.add(loadImage("Texto negro en el enigma 1 - 4.png"));
  imagenesNodo1.add(loadImage("Texto negro en el enigma 1 - 5.png"));
  imagenesNodo1.add(loadImage("Dialogo tortuga e hipopótamo 5.png"));
  
  ArrayList<PImage> imagenesNodo2 = new ArrayList<PImage>();
  imagenesNodo2.add(loadImage(".png"));
  imagenesNodo2.add(loadImage("cinematica4.png"));
  
  // Agregar nodos al árbol
  arbol.agregar(200, imagenesNodo1);  // Nodo raíz
  arbol.agregar(150, imagenesNodo2);
  
  // Establecer nodo actual como el nodo raíz
  nodoActual = arbol.raiz;
  
  // Configurar los botones del menú
  botonAncho = 200;
  botonAlto = 50;
  botonX = width / 2 - botonAncho / 2;
  botonY = height / 2 - botonAlto / 2;
  
  botonSalirX= width/2 - botonAncho/2;
  botonSalirY= width/2 - botonAlto/2-350;
}

void draw() {
  if (enMenu) {
    // Dibujar el menú de inicio
    image(fondoMenu, 0, 0, width, height);
    
    // Dibujar el botón "Iniciar"
    fill(0, 255, 0);
    rect(botonX, botonY, botonAncho, botonAlto);
    fill(255);
    textAlign(CENTER, CENTER);
    textSize(32);
    text("Iniciar", botonX + botonAncho / 2, botonY + botonAlto / 2);
    
    fill(255, 0, 0);
    rect(botonSalirX, botonSalirY, botonAncho, botonAlto);
    fill(255);
    textAlign(CENTER, CENTER);
    textSize(32);
    text("Salir", botonSalirX + botonAncho / 2, botonSalirY + botonAlto / 2);
    
  } else {
    // Mostrar la imagen actual del nodo en el juego
    background(0);
    if (imagenIndex < nodoActual.imagenes.size()) {
      image(nodoActual.imagenes.get(imagenIndex), 0, 0, width, height);
    } else {
      // Al terminar de mostrar las imágenes, mostrar opciones de botones
      for (int i = 0; i < nodoActual.opciones.length; i++) {
        if (nodoActual.opciones[i] != null) {
          nodoActual.opciones[i].mostrar();
        }
      }
    }
  }
}

void mousePressed() {
  if (enMenu) {
    // Verificar si se presionó el botón "Iniciar"
    if (mouseX > botonX && mouseX < botonX + botonAncho && mouseY > botonY && mouseY < botonY + botonAlto) {
      enMenu = false;  // Salir del menú e iniciar el juego
    }
    if (mouseX > botonSalirX && mouseX < botonSalirX + botonAncho && mouseY > botonSalirY && mouseY < botonSalirY + botonAlto) {
      exit();  // Salir del menú e iniciar el juego
    }
  } else {
    if (imagenIndex < nodoActual.imagenes.size()) {
      imagenIndex++;  // Avanzar a la siguiente imagen en el nodo
    } else {
      // Verificar si se presionó un botón de opciones
      if (nodoActual.opciones[0] != null && nodoActual.opciones[0].esPresionado(mouseX, mouseY)) {
        arbol.moverIzquierda();  // Mover a la izquierda
        imagenIndex = 0;  // Reiniciar las imágenes al cambiar de nodo
      } else if (nodoActual.opciones[1] != null && nodoActual.opciones[1].esPresionado(mouseX, mouseY)) {
        arbol.moverDerecha();  // Mover a la derecha
        imagenIndex = 0;
      }
    }
  }
}
