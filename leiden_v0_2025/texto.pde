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
  "CÓDIGO\n",
  "NEUROCIENCIA\n",
  "EXPERIENCIA\nSENSIBLE",
  "\nASTRONOMÍA",
  "\nPROGRAMA DE PENSAMIENTO TRANSDISCIPLINAR",
  "\nLITERATURA",
  "CONOCIMIENTO\n",
  "ARTE\n",
  " "
};

float[][] aproximacionesParams = {
  {0, 50, 10, 30, 1, 0},
  {0, 90, 30, 15, 2, 0},
  {0, 90, 50, 30, 2, 0},
  {0, 90, 70, 15, 1, 0},
  {0, 50, 90, 25, 1, 0},
  {0, 30, 60, 15, 1, 0},
  {0, 15, 50, 30, 1, 0},
  {0, 20, 15, 20, 1, 0},
  {0, 50, 50, 20, 1, 0}
};

int[][] aproximacionesLineas = {
  {0, 4, 0},
  {2, 6, 0},

  {1, 8, 0},
  {3, 8, 0},
  {5, 8, 0},
  {7, 8, 0},
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
