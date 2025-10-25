class Texto {

  String texto;
  float angulo;
  float posX;
  float posY;
  float tamano;
  int caracterActual;
  int alineacion;
  int numeroColor;

  Texto(String nuevoTexto, float[] params) {
    texto = nuevoTexto;
    angulo = params[0];
    posX = params[1];
    posY = params[2];
    tamano = params[3];
    alineacion = int(params[4]);
    numeroColor = 0;
    caracterActual = 0;
  }

  void aumentarCaracter() {
    //if (Math.random() < 0.1) {
    if (Math.random() < 0.3) {
      caracterActual++;
      caracterActual = constrain(caracterActual, 0, texto.length());
    }
  }
}

// font inika de constanza artigas
PFont[] fuentes = new PFont[130];

void cargarFuentes() {
  for (int i = 0; i < fuentes.length; i++) {
    fuentes[i] = loadFont("Inika-" + str(i) + ".vlw");
  }

  textAlign(CENTER, CENTER);
  stroke(blanco);
}


// params
// angulo en grados,
// posX en porcentaje,
// posY en porcentaje
// tamanoFuente
// alineamiento (0 LEFT, 1 CENTER, 2 RIGHT)
// color (0 negro, 1 azul)

// diapo02
String[] aproximaciones = {
  "IMÁGENES",
  "NEUROCIENCIA",
  "EXPERIENCIA\nSENSIBLE",
  "ASTRONOMÍA",
  "PROGRAMA TRANSDISCIPLINAR",
  "LITERATURA",
  "PROGRAMACION",
  "ARTE"
};

float[][] aproximacionesParams = {
  {0, 50, 10, 30, 1, 0},
  {0, 80, 30, 20, 2, 0},
  {0, 80, 50, 30, 2, 0},
  {0, 80, 70, 20, 1, 0},
  {0, 50, 90, 30, 1, 0},
  {0, 30, 60, 20, 1, 0},
  {0, 30, 50, 20, 1, 0},
  {0, 20, 15, 20, 1, 0},
};

int[][] aproximacionesLineas = {
  {0, 4, 0},
  {1, 5, 0},
  {2, 6, 0},
  {3, 7, 0}
};

// diapo03
String[] fisicaAstronomia = {
  // 0
  "FÍSICA - ASTRONOMÍA",
  // 1
  "tiempos humanos versus tiempos astronómicos\n",
  // 2
  "El tránsito de la luz y el sonido\n" +
  "transmiten información en un\n" +
  "desfase temporal",
  // 3
  "la memoria se (re)crea aquí y ahora",
  // 4
  "50 años\n" +
  "versus\n" +
  "50 años-luz\n" +
  "sonido\n" +
  "versus\n" +
  "recepción de un\n" +
  "mensaje de un planeta\n" +
  "a otro.",
  // 5
  "NEUROCIENCIA",
  // 6
  "mecanismos neurobiológicos",
  // 7
  "SINFONÍA FISIOLÓGICA\n" +
  "Estimulación física",
  // 8
  "cerebro sometido a aislamiento"
};


String[][] textosTodos = {
  aproximaciones
};

float[][][] textosParams = {
  aproximacionesParams,
};

int[][][] textosLineas = {
  aproximacionesLineas,
};
