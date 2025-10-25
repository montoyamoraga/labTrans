class Imagen {
  PImage imagen;
  int numero;
  float posX;
  float posY;
  int tinte;

  Imagen(int numeroDiapo, String path) {
    imagen = loadImage(path);
    numero = numeroDiapo;
    tinte = 0;
  }

  void escalar(int ancho) {
    imagen.resize(ancho, 0);
  }

  void posicionar(float x, float y) {
    posX = x;
    posY = y;
  }

  void mostrar() {
    if (tinte < 255 && Math.random() < 0.5) {
      tinte = tinte + 1;
    }

    pushStyle();
    imageMode(CENTER);
    tint(255, tinte);
    image(imagen, posX, posY);
    popStyle();
  }
}

ArrayList<Imagen> estrellas = new ArrayList<Imagen>();
ArrayList<Imagen> dibujos = new ArrayList<Imagen>();

// parametros son
// numeroDiapo
// nombreArchivo
// tamanoEscalaX en porcentaje de width
// posX
// posY
String[][] listaDibujos = {
  {"0", "dibujos/diapo-01.png", "30", "50", "50"},
  {"14", "dibujos/diapo-14.png", "10", "20", "50"}
};



void inicializarImagenes() {
  imageMode(CENTER);

  for (int i = 0; i < listaDibujos.length; i++) {
    dibujos.add(new Imagen(int(listaDibujos[i][0]), listaDibujos[i][1]));
    dibujos.get(i).escalar(int(listaDibujos[i][2]) * width/100);
    dibujos.get(i).posicionar(
      int(listaDibujos[i][3]) * width/100,
      int(listaDibujos[i][4]) * height/100
      );
  }
}
