class Imagen {
  PImage imagen;
  float posX;
  float posY;
  
  Imagen(String path) {
    imagen = loadImage(path);
  }
  
  void escalar(int ancho) {
    imagen.resize(ancho, 0);
  }
  
  void posicionar(float x, float y) {
    posX = x;
    posY = y;
  }
  
  void mostrar() {
    image(imagen, posX, posY);
  }
}