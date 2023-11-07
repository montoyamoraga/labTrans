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

ArrayList<Imagen> estrellas = new ArrayList<Imagen>();

void inicializarImagenes() {
  imageMode(CORNER);

  for (int i = 0; i < 6; i++) {
    estrellas.add(new Imagen("numeradas/" + str(i) + ".jpg"));
    estrellas.get(i).escalar(width/2);
    estrellas.get(i).posicionar((i%2)*width/2, 0);
  }
}
