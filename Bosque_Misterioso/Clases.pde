// Clase Nodo del árbol binario
class Nodo {
  int dato;
  ArrayList<PImage> imagenes;
  Nodo izquierdo, derecho;
  Boton[] opciones;
  
  Nodo(int dato) {
    this.dato = dato;
    this.imagenes = new ArrayList<PImage>();
    this.izquierdo = null;
    this.derecho = null;
    this.opciones = new Boton[3]; // Botones para opciones después de las imágenes
  }
  
  // Agregar imágenes al nodo
  public void agregarImagen(PImage img) {
    imagenes.add(img);
  }
  
}

// Clase Arbol para manejar la estructura de datos del juego
class Arbol {
  Nodo raiz;
  Nodo nodoActual; // Nodo en el que estamos en el juego
  
  public Arbol() {
    this.raiz = null;
  }
  
  // Método para agregar un nodo al árbol
  void agregar(int dato, ArrayList<PImage> imagenes) {
    Nodo nodo = new Nodo(dato);
    nodo.imagenes = imagenes;
    
    if (this.raiz == null) {
      this.raiz = nodo;
      this.nodoActual = nodo; // Empieza desde la raíz
    } else {
      insertarRecursivo(this.raiz, nodo);
    }
  }

  private void insertarRecursivo(Nodo nodo, Nodo nuevo) {
    if (nodo.dato > nuevo.dato) {
      if (nodo.izquierdo == null) {
        nodo.izquierdo = nuevo;
      } else {
        insertarRecursivo(nodo.izquierdo, nuevo);
      }
    } else {
      if (nodo.derecho == null) {
        nodo.derecho = nuevo;
      } else {
        insertarRecursivo(nodo.derecho, nuevo);
      }
    }
  }
  
  // Moverse a un nodo en particular
  void moverIzquierda() {
    if (nodoActual.izquierdo != null) {
      nodoActual = nodoActual.izquierdo;
    }
  }
  
  void moverDerecha() {
    if (nodoActual.derecho != null) {
      nodoActual = nodoActual.derecho;
    }
  }
}

// Clase Botón
class Boton {
  int x, y, w, h;
  String texto;
  
  Boton(int x, int y, int w, int h, String texto) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.texto = texto;
  }
  
  void mostrar() {
    fill(200);
    rect(x, y, w, h);
    fill(0);
    textAlign(CENTER, CENTER);
    text(texto, x + w/2, y + h/2);
  }
  
  boolean esPresionado(float mouseX, float mouseY) {
    return mouseX > x && mouseX < x + w && mouseY > y && mouseY < y + h;
  }
}
