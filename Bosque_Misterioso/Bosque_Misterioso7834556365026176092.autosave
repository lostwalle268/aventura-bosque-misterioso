// Variables globales del juego
Arbol arbol;
Nodo nodoActual;
int imagenIndex = 0;
boolean enMenu = true;  // Bandera para saber si estamos en el menú
PImage fondoMenu;
int botonX, botonY, botonAncho, botonAlto, botonSalirX, botonSalirY, botonVolverX, botonVolverY;
boolean inGame= false;
void setup() {
  fullScreen();

  // Cargar la imagen de fondo para el menú
  fondoMenu = loadImage("background-menu.png");

  // Crear el árbol binario
  arbol = new Arbol();

  // Cargar imágenes de los nodos
  ArrayList<PImage> imagenesNodo0 = new ArrayList<PImage>();
  imagenesNodo0.add(loadImage("Instrucciones del juego.png"));
  imagenesNodo0.add(loadImage("Diálogo entre el mono y el hipopótamo 1.png"));
  imagenesNodo0.add(loadImage("Diálogo entre el mono y el hipopótamo 2.png"));
  imagenesNodo0.add(loadImage("Diálogo entre el mono y el hipopótamo 3.png"));
  imagenesNodo0.add(loadImage("Diálogo entre el mono y el hipopótamo 4.png"));

  imagenesNodo0.add(loadImage("Diálogo voz del bosque e hipopótamo 1.png"));
  imagenesNodo0.add(loadImage("Diálogo voz del bosque e hipopótamo 2.png"));
  imagenesNodo0.add(loadImage("Diálogo voz del bosque e hipopótamo 3.png"));
  imagenesNodo0.add(loadImage("Diálogo voz del bosque e hipopótamo 4.png"));
  imagenesNodo0.add(loadImage("Diálogo voz del bosque e hipopótamo 5.png"));
  imagenesNodo0.add(loadImage("Diálogo voz del bosque e hipopótamo 6.png"));
  imagenesNodo0.add(loadImage("Diálogo voz del bosque e hipopótamo 7.png"));
  imagenesNodo0.add(loadImage("Diálogo voz del bosque e hipopótamo 8.png"));
  imagenesNodo0.add(loadImage("Diálogo voz del bosque e hipopótamo 9.png"));
  
  imagenesNodo0.add(loadImage("Texto negro antes de enigma 1 - 1.png"));
  imagenesNodo0.add(loadImage("Texto negro antes de enigma 1 - 2.png"));
  imagenesNodo0.add(loadImage("Texto negro antes de enigma 1 - 3.png"));
  imagenesNodo0.add(loadImage("Texto negro antes de enigma 1 - 4.png"));
  
  imagenesNodo0.add(loadImage("Dialogo tortuga e hipopótamo 1.png"));
  imagenesNodo0.add(loadImage("Dialogo tortuga e hipopótamo 2.png"));
  imagenesNodo0.add(loadImage("Texto negro en el enigma 1 - 1.png"));
  imagenesNodo0.add(loadImage("Texto negro en el enigma 1 - 2.png"));
  imagenesNodo0.add(loadImage("Texto negro en el enigma 1 - 3.png"));
  imagenesNodo0.add(loadImage("Dialogo tortuga e hipopótamo 3.png"));
  imagenesNodo0.add(loadImage("Dialogo tortuga e hipopótamo 4.png"));
  imagenesNodo0.add(loadImage("Texto negro en el enigma 1 - 4.png"));
  imagenesNodo0.add(loadImage("Texto negro en el enigma 1 - 5.png"));
  imagenesNodo0.add(loadImage("Dialogo tortuga e hipopótamo 5.png"));
  imagenesNodo0.add(loadImage("Opciones de respuesta - enigma 1.png"));
  
  ArrayList<PImage> imagenesNodo1 = new ArrayList<PImage>();
  imagenesNodo1.add(loadImage("Enigma 1 - ESCOGISTE EL SÍMBOLO DEL AGUA (Vas al bosque).png"));
  imagenesNodo1.add(loadImage("Texto negro antes de Bosque 1.png"));
  imagenesNodo1.add(loadImage("Texto negro antes de Bosque 2.png"));
  imagenesNodo1.add(loadImage("Dialogo delfin con hipopotamo 1.png"));
  imagenesNodo1.add(loadImage("Dialogo delfin con hipopotamo 2.png"));
  imagenesNodo1.add(loadImage("Dialogo delfin con hipopotamo 3.png"));
  imagenesNodo1.add(loadImage("Enigma 5 - Bosque.png"));
  imagenesNodo1.add(loadImage("Enigma 5 - Bosque - Opción correcta.png"));
  imagenesNodo1.add(loadImage("Enigma 5 - Bosque - Opción incorrecta.png"));
  imagenesNodo1.add(loadImage("Enigma 5.1 - Bosque.png"));
  imagenesNodo1.add(loadImage("Enigma 5.2 - Bosque.png"));
  imagenesNodo1.add(loadImage("Enigma 5.3 - Bosque.png"));
  imagenesNodo1.add(loadImage("Enigma 5.4 - Bosque.png"));
  imagenesNodo1.add(loadImage("Enigma 5 (Bosque).png"));
  
  
  ArrayList<PImage> imagenesNodo2 = new ArrayList<PImage>();
  imagenesNodo2.add(loadImage("Texto negro antes de cueva oscura 1.png"));
  imagenesNodo2.add(loadImage("Texto negro antes de cueva oscura 2.png"));
  imagenesNodo2.add(loadImage("Texto negro antes de cueva oscura 3.png"));
  imagenesNodo2.add(loadImage("Texto negro antes de cueva oscura 4.png"));
  imagenesNodo2.add(loadImage("Dialogo murciélago e hipopotamo 1.png"));
  imagenesNodo2.add(loadImage("Dialogo murciélago e hipopotamo 2.png"));
  imagenesNodo2.add(loadImage("Enigma 6 (Cueva oscura).png"));
  imagenesNodo2.add(loadImage("Enigma 6 (Cueva oscura) - Opciones de respuesta.png"));
  imagenesNodo2.add(loadImage("Enigma 6 (Cueva oscura) - Opción correcta.png"));
  imagenesNodo2.add(loadImage("Enigma 6 (Cueva oscura) (2).png"));
  imagenesNodo2.add(loadImage("Enigma 6 (Cueva oscura) - Opción incorrecta.png"));
  imagenesNodo2.add(loadImage("Enigma 6.1 (Cueva oscura).png"));
  imagenesNodo2.add(loadImage("Enigma 6.2 (Cueva oscura).png"));
  imagenesNodo2.add(loadImage("Enigma 6.3 (Cueva oscura).png"));
  imagenesNodo2.add(loadImage("Enigma 6.4 (Cueva oscura).png"));
  imagenesNodo2.add(loadImage("Texto negro después de cueva oscura (Izquierda o derecha) 1.png"));
  imagenesNodo2.add(loadImage("FINAL MALO (Te quedaste atrapado en la cueva oscura).png"));
  
  
  ArrayList<PImage> imagenesNodo3 = new ArrayList<PImage>();
  imagenesNodo3.add(loadImage("Texto negro antes de mundo de nieve 1.png"));
  imagenesNodo3.add(loadImage("Texto negro antes de mundo de nieve 2.png"));
  imagenesNodo3.add(loadImage("Texto negro antes de mundo de nieve 3.png"));
  imagenesNodo3.add(loadImage("Dialogo pingüino e hipopotamo 1.png"));
  imagenesNodo3.add(loadImage("Dialogo pingüino e hipopotamo 2.png"));
  imagenesNodo3.add(loadImage("Enigma 7 (Mundo de nieve).png"));
  imagenesNodo3.add(loadImage("Enigma 7 (Mundo de nieve) - Opciones de respuesta.png"));
  imagenesNodo3.add(loadImage("Enigma 7 (Mundo de nieve) - Opción correcta.png"));
  imagenesNodo3.add(loadImage("Enigma 7 (Mundo de nieve) - Opción incorrecta.png"));
  imagenesNodo3.add(loadImage("Enigma 7.1 (Mundo de nieve).png"));
  imagenesNodo3.add(loadImage("Enigma 7.2 (Mundo de nieve).png"));
  imagenesNodo3.add(loadImage("Enigma 7.3 (Mundo de nieve).png"));
  imagenesNodo3.add(loadImage("Enigma 7.4 (Mundo de nieve).png"));
  imagenesNodo3.add(loadImage("Texto negro después de mundo de nieve 1.png"));
  imagenesNodo3.add(loadImage("Mapa club penguin.png"));
  imagenesNodo3.add(loadImage("Texto negro después de mundo de nieve 2.png"));
  imagenesNodo3.add(loadImage("Texto negro después de mundo de nieve 3.png"));
  imagenesNodo3.add(loadImage("FINAL MALO (El mapa no te ayuda).png"));
  
  
  ArrayList<PImage> imagenesNodo4 = new ArrayList<PImage>();
  imagenesNodo4.add(loadImage("Enigma 1 - ESCOGISTE EL SÍMBOLO DEL AGUA (Vas al arroyo).png"));
  imagenesNodo4.add(loadImage("Texto negro antes de enigma arroyo 1.png"));
  imagenesNodo4.add(loadImage("Texto negro antes de enigma arroyo 2.png"));
  imagenesNodo4.add(loadImage("Enigma 2 (Arroyo).png"));
  imagenesNodo4.add(loadImage("Enigma 2 (Arroyo) (2).png"));
  imagenesNodo4.add(loadImage("Enigma 2 (Arroyo) (3).png"));
  imagenesNodo4.add(loadImage("Enigma 2 (Arroyo) (4).png"));
  imagenesNodo4.add(loadImage("Enigma 2 (Arroyo) - ESCOGISTE LA OPCIÓN CORRECTA.png"));
  imagenesNodo4.add(loadImage("Enigma 2.1 (Arroyo) - ESCOGISTE LA OPCIÓN INCORRECTA.png"));
  imagenesNodo4.add(loadImage("Enigma 2.1 (Arroyo).png"));
  imagenesNodo4.add(loadImage("Enigma 2.2 (Arroyo).png"));
  imagenesNodo4.add(loadImage("Enigma 2.3 (Arroyo).png"));
  imagenesNodo4.add(loadImage("Enigma 2 (Arroyo) (5).png"));
  
  
  ArrayList<PImage> imagenesNodo5 = new ArrayList<PImage>();
  imagenesNodo5.add(loadImage("Texto negro antes de llegar a catarata  1.png"));
  imagenesNodo5.add(loadImage("Texto negro antes de llegar a catarata  2.png"));
  imagenesNodo5.add(loadImage("Dialogo salmon e hipopótamo 1.png"));
  imagenesNodo5.add(loadImage("Dialogo salmon e hipopótamo 2.png"));
  imagenesNodo5.add(loadImage("Dialogo salmon e hipopótamo 3.png"));
  imagenesNodo5.add(loadImage("Dialogo salmon e hipopótamo 4.png"));
  imagenesNodo5.add(loadImage("Enigma 3 (Catarata).png"));
  imagenesNodo5.add(loadImage("Enigma 3 (Catarata) (2).png"));
  imagenesNodo5.add(loadImage("Enigma 3 (Catarata) - Opción correcta.png"));
  imagenesNodo5.add(loadImage("Enigma 3 (Catarata) - Opción incorrecta.png"));
  imagenesNodo5.add(loadImage("Enigma 3.1 (Catarata).png"));
  imagenesNodo5.add(loadImage("Enigma 3.2 (Catarata).png"));
  imagenesNodo5.add(loadImage("Enigma 3.3 (Catarata).png"));
  imagenesNodo5.add(loadImage("Enigma 3.4 (Catarata).png"));
  imagenesNodo5.add(loadImage("Enigma 3 (Carata).png"));
  
  
  ArrayList<PImage> imagenesNodo6 = new ArrayList<PImage>();
  imagenesNodo6.add(loadImage("Texto negro antes de Bosque profundo 1.png"));
  imagenesNodo6.add(loadImage("Texto negro antes de Bosque profundo 12.png"));
  imagenesNodo6.add(loadImage("Texto negro antes de Bosque profundo 3.png"));
  imagenesNodo6.add(loadImage("Dialogo cuervo e hipopotamo 1.png"));
  imagenesNodo6.add(loadImage("Dialogo cuervo e hipopotamo 2.png"));
  imagenesNodo6.add(loadImage("Dialogo cuervo e hipopotamo 3.png"));
  imagenesNodo6.add(loadImage("Enigma 4 (Bosque profundo).png"));
  imagenesNodo6.add(loadImage("Enigma 4 (Bosque profundo) (2).png"));
  imagenesNodo6.add(loadImage("Opción correcta - Enigma 4.png"));
  imagenesNodo6.add(loadImage("Opción incorrecta - Enigma 4.png"));
  imagenesNodo6.add(loadImage("Enigma 4.1 (Bosque profundo).png"));
  imagenesNodo6.add(loadImage("Enigma 4.2 (Bosque profundo).png"));
  imagenesNodo6.add(loadImage("Enigma 4.3 (Bosque profundo).png"));
  imagenesNodo6.add(loadImage("Enigma 4.4 (Bosque profundo).png"));
  imagenesNodo6.add(loadImage("Enigma 4 (Bosque profundo) (3).png"));
  imagenesNodo6.add(loadImage("Texto negro - Ir a la izquierda o derecha (Final malo).png"));
  imagenesNodo6.add(loadImage("Texto negro - Ir a la izquierda o derecha (Final malo) (2).png"));
  imagenesNodo6.add(loadImage("FINAL MALO (Te fuiste por el bosque oscuro).png"));
  
  
  ArrayList<PImage> imagenesNodo7 = new ArrayList<PImage>();
  imagenesNodo7.add(loadImage("Texto negro - antes de hogar de hipopotamos 1.png"));
  imagenesNodo7.add(loadImage("Texto negro - antes de hogar de hipopotamos 2.png"));
  imagenesNodo7.add(loadImage("Encuentro con hipopotamos 1.png"));
  imagenesNodo7.add(loadImage("Encuentro con hipopotamos 2.png"));
  imagenesNodo7.add(loadImage("Encuentro con hipopotamos 3.png"));
  imagenesNodo7.add(loadImage("Encuentro con hipopotamos 4.png"));
  imagenesNodo7.add(loadImage("FINAL BUENO (Te encontraste con tú especie).png"));
  imagenesNodo7.add(loadImage("Creditos y autores.png"));
  
  
  ArrayList<PImage> imagenesNodo8 = new ArrayList<PImage>();
  imagenesNodo8.add(loadImage("Texto negro - antes de hogar de cerdos 1.png"));
  imagenesNodo8.add(loadImage("Texto negro - antes de hogar de cerdos 2.png"));
  imagenesNodo8.add(loadImage("Encuentro con cerdos 1.png"));
  imagenesNodo8.add(loadImage("Encuentro con cerdos 2.png"));
  imagenesNodo8.add(loadImage("Encuentro con cerdos 3.png"));
  imagenesNodo8.add(loadImage("Encuentro con cerdos 4.png"));
  imagenesNodo8.add(loadImage("FINAL MALO (No eres un cerdo).png"));
  // Agregar nodos al árbol
  arbol.agregar(200, imagenesNodo0);  // Nodo raíz
  arbol.agregar(250, imagenesNodo1);
  arbol.agregar(225, imagenesNodo2);
  arbol.agregar(275, imagenesNodo3);
  arbol.agregar(150, imagenesNodo4);
  arbol.agregar(100, imagenesNodo5);
  arbol.agregar(170, imagenesNodo6);
  arbol.agregar(120, imagenesNodo7);
  arbol.agregar(90, imagenesNodo8);

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

void menu() {

  botonAncho = 200;
  botonAlto = 50;
  botonX = width / 2 - botonAncho / 2;
  botonY = height / 2 - botonAlto / 2;

  botonSalirX= width/2 - botonAncho/2;
  botonSalirY= width/2 - botonAlto/2-350;
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

  // Verificar si se presionó el botón "Iniciar"
  if ((mouseX > botonX) && (mouseX < botonX +botonAncho)) {
    if ((mouseY > botonY) && (mouseY < botonY + botonAlto)) {
      if (mousePressed==true)
      {
        enMenu=false;

        initGame();
      }
    }
  }
  if ((mouseX>botonSalirX)&&(mouseX < botonSalirX+ botonAncho)) {
    if ((mouseY > botonSalirY) && (mouseY < botonSalirY+botonAlto) ) {
      if (mousePressed==true) {
        exit();
      }
    }
  }
}
void initGame() {
  inGame=true;
  botonAncho = 100;
  botonAlto = 50;
  botonVolverY=height-1070;
  botonVolverX=width-120;

  // Mostrar la imagen actual del nodo en el juego
  background(0);

  if (imagenIndex < nodoActual.imagenes.size()) {
    image(nodoActual.imagenes.get(imagenIndex), 0, 0, width, height);
    //Boton de volver al menú
    fill(255, 0, 0);
    rect(botonVolverX, botonVolverY, botonAncho, botonAlto);
    fill(255);
    textAlign(CENTER, CENTER);
    textSize(32);
    text("Volver", botonVolverX + botonAncho / 2, botonVolverY + botonAlto / 2);

    if ((mouseX > botonVolverX) && (mouseX < botonVolverX +botonAncho)) {
      if ((mouseY > botonVolverY) && (mouseY < botonVolverY + botonAlto)) {
        if (mousePressed==true)
        {
          inGame=false;
          enMenu=true;
        }
      }
    }
  }
}
void draw() {
  if (enMenu) {
    menu();
  } else if (inGame) {
    initGame();
  }
}

void mousePressed() {
  if (inGame) {
    if (imagenIndex < nodoActual.imagenes.size()) {
      imagenIndex++;  // Avanzar a la siguiente imagen en el nodo
    }
    if (imagenIndex >= nodoActual.imagenes.size()) {
      
    }
  }
}
