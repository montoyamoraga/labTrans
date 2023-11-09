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
    numeroColor = int(params[5]);
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
  stroke(0);
}

String fecha = "jueves 09 noviembre 2023";

String[] primeraDiapo = {
  "x"
};

float[][] primeraDiapoParams = {
  // angulo, posX, posY, tamano
  {0, -10, -10, 32, 0, 0}
};

int[][] primeraDiapoLineas = {
};

//diapo01
String[] memoria = {
  "Memoria",
  "conocer = reconocer",
  "Laboratorio transdisciplinario",
  "50 años-luz - Imaginación radical"
};

// params
// angulo en grados,
// posX en porcentaje,
// posY en porcentaje
// tamanoFuente
// alineamiento (0 LEFT, 1 CENTER, 2 RIGHT)
// color (0 negro, 1 azul)
float[][] memoriaParams = {
  {0, 35, 20, 42, 1, 0},
  {0, 35, 40, 20, 1, 0},
  {0, 35, 70, 20, 2, 0},
  {0, 35, 80, 20, 2, 0}
};


// params
// texto inicio
// texto fin
// color
int[][] memoriaLineas = {
  {0, 1, 0},
  {1, 2, 0}
};

// diapo02
String[] aproximaciones = {
  "IMÁGENES",
  "NEUROCIENCIA",
  "EXPERIENCIA\nSENSIBLE",
  "ASTRONOMÍA",
  "APROXIMACIONES TRANSDISCIPLINARES",
  "LITERATURA",
  "DISEÑO",
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

float[][] fisicaAstronomiaParams = {
  // 0
  {0, 10, 20, 16, 0, 0},
  // 1
  {0, 20, 25, 12, 1, 0},
  // 2
  {0, 30, 40, 14, 0, 0},
  // 3
  {0, 20, 60, 14, 1, 0},
  // 4
  {0, 80, 20, 16, 0, 0},
  // 5
  {0, 80, 50, 20, 1, 0},
  // 6
  {0, 80, 60, 12, 1, 0},
  // 7
  {0, 80, 80, 14, 1, 0},
  // 8
  {0, 80, 90, 14, 1, 0}
};

int[][] fisicaAstronomiaLineas = {
  {1, 2, 0},
  {1, 3, 0},
  {4, 5, 0}
};

// diapo04
String[] cuerpoModifica = {
  // 0
  "MORFOLOGÍA(S) COMO ESCRITURA(S) DE LA(S) MEMORIA(S)",
  // 1
  "Un cuerpo modifica su forma a partir de los fenómenos\n" +
  "que le acontecen = la forma del cuerpo da cuenta de su\n" +
  "historia y recrea la memoria en el aquí/ahora.",
  // 2
  "ECOLOGÍA DE LA MEMORIA\n" +
  "seres vivos en relación a\n" +
  "su ambiente -\n",
  // 3
  "No hay memoria\n" +
  "sin vida/ sin vivir",
  // 4
  "El cerebro reorganiza y facilita procesos y\n" +
  "funciones de la memoria, pero la\n" +
  "memoria es un fenómeno del organismo.",
  // 5
  "la memoria no se almacena",
  // 6
  "SOLO LOS ORGANISMOS\n" +
  "VIVOS RECUERDAN Y\n" +
  "PUEDEN HACER SENTIDO",
  // 7
  "Morfologías de la luz, el sonido, los cuerpos celestes, humanos, vegetales...",
  // 8
  "árboles genealógicos de las estrellas...\n" +
  "Cómo rastrear químicamente sus orígenes/ancestros (Paula Jofré)",
  // 9
  "HEREDAR EL\n" +
  "CONOCIMIENTO\n" +
  "seres vivos son cyborgs naturales",
  // 10
  "tecnología y memoria - nuevas perspectivas con las AI"
};

float[][] cuerpoModificaParams = {
  // 0
  {0, 30, 10, 16, 1, 0},
  // 1
  {0, 30, 25, 14, 1, 0},
  // 2
  {0, 30, 50, 12, 0, 0},
  // 3
  {0, 60, 50, 12, 1, 0},
  // 4
  {0, 70, 10, 12, 0, 0},
  // 5
  {0, 80, 25, 12, 0, 0},
  // 6
  {0, 80, 50, 12, 0, 0},
  // 7
  {0, 60, 65, 16, 1, 0},
  // 8
  {0, 15, 80, 12, 0, 0},
  // 9
  {0, 70, 80, 12, 0, 0},
  // 10
  {0, 80, 90, 10, 1, 0}
};

int[][] cuerpoModificaLineas = {
  {0, 1, 0},
  {1, 2, 0},
  {2, 3, 0},
  {3, 4, 0},
  {3, 6, 0},
  {3, 7, 0},
  {4, 5, 0},
  {5, 6, 0},
  {6, 7, 0},
  {8, 9, 0},
  {9, 10, 0}
};

// diapo05
String[] transitoComo = {
  // 0
  "TRÁNSITO como\n" +
  "otra forma de\n" +
  "organizar el\n" +
  "conocimiento",
  // 1
  "ESCRITURA DE LA MEMORIA",
  // 2
  "\nEPISTEMOLOGÍAS Sur",
  // 3
  "SABERES SITUADOS",
  // 4
  "\nImaginación Radical",
  // 5
  "GENEALOGÍAS DE FORMAS DE MENSAJES CLANDESTINOS",
  // 6
  "(TRÁNSITO DE LA LUZ\n" +
  "(TEMPORALIDAD de los\n" +
  "ASTROS) Mensajes\n" +
  "que viajaron hace 50\n" +
  "años y aún no llegan\n\n\n",
  // 7
  "Tránsito de mensajes",
  // 8
  "SEÑALES DE HUMO\n" +
  "MENSAJES EN UNA\n" +
  "BOTELLA\n" +
  "PAPELITOS EN\n" +
  "RINCONES OSCUROS\n" +
  "MORSE\n" +
  "LIBROS\n" +
  "MEMORIZADOS\n" +
  "TRENZAS\n" +
  "HACKEAR SISTEMAS\n" +
  "EMOTICONES\n" +
  "CICATRICES\n" +
  " ...",
  // 9
  " "
};

float[][] transitoComoParams = {
  // 0
  {0, 10, 20, 12, 1, 0},
  // 1
  {0, 40, 10, 12, 1, 0},
  // 2
  {0, 10, 80, 14, 1, 0},
  // 3
  {0, 40, 75, 10, 1, 0},
  // 4
  {0, 70, 80, 14, 1, 0},
  // 5
  {0, 30, 50, 14, 0, 0},
  // 6
  {0, 75, 30, 14, 0, 0},
  // 7
  {0, 90, 40, 10, 1, 0},
  // 8
  {0, 95, 70, 14, 2, 0},
  // 9
  {0, 20, 40, 32, 0, 0}
};

int[][] transitoComoLineas = {
  {0, 9, 0},
  {1, 9, 0},
  {2, 4, 0},
  {4, 6, 0},
  {4, 8, 0},
  {5, 6, 0},
  {5, 9, 0},
  {2, 9, 0}
};

// diapo06
String[] autoRecordarnos = {
  // 0
  "AUTO RECORDARNOS",
  // 1
  "¿SE PUEDE APRENDER A OLVIDAR?\n" +
  "¿CÓMO ATRAVESAMOS LAS IMÁGENES Y LOS IMAGINARIOS?",
  // 2
  "\nTRUENO\n",
  // 3
  "acontecimiento que cambia el curso de las cosas",
  // 4
  "¿ENCANDILA?\n\n" +
  "¿ES UNA IMAGEN\n\n" +
  "ES UN QUIEBRE\n\n" +
  "¿ES UN PARÉNTESIS?",
  // 5
  "recordar emerge en el silencio que\n" +
  "queda tras el trueno - el trueno es lo\n" +
  "que nos recuerda lo vivo\n",
  // 6
  "\nLUZ EN EL CEREBRO",
  // 7
  "TRÁNSITO DE LA LUZ\n",
  // 8
  "IMAGEN COMO INSCRIPCIÓN\n" +
  "MORFOLÓGICA DEL TIEMPO",
  // 9
  "Transitar los tiempos de las memorias",
  // 10
  "\nSILENCIO\n",
  // 11
  "El silencio es una\n" +
  "condición del espacio\n" +
  "(astronomía)",
  // 12
  "El proceso de\n" +
  "reconstrucción de la\n" +
  "memoria necesita del\n" +
  "silencio\n" +
  "(neurociencia)",
  // 13
  "No existe el silencio,\n" +
  "solo el ruido\n" +
  "imperceptible",
  // 14
  "Nuestros tiempos",
  // 15
  "Tiempos ancestrales",
  // 16
  "Tiempos astronómicos"
};

float[][] autoRecordarnosParams = {
  // 0
  {0, 50, 5, 20, 1, 0},
  // 1
  {0, 50, 15, 12, 1, 0},
  // 2
  {0, 25, 25, 26, 2, 0},
  // 3
  {0, 25, 40, 12, 1, 0},
  // 4
  {0, 25, 60, 16, 2, 0},
  // 5
  {0, 50, 25, 10, 1, 0},
  // 6
  {0, 40, 60, 12, 0, 0},
  // 7
  {0, 55, 60, 12, 0, 0},
  // 8
  {0, 50, 70, 10, 1, 0},
  // 9
  {0, 50, 80, 16, 1, 0},
  // 10
  {0, 70, 25, 26, 0, 0},
  // 11
  {0, 70, 35, 12, 0, 0},
  // 12
  {0, 70, 50, 12, 0, 0},
  // 13
  {0, 70, 65, 12, 0, 0},
  // 14
  {0, 10, 90, 12, 0, 0},
  // 15
  {0, 40, 90, 12, 0, 0},
  // 16
  {0, 70, 90, 12, 0, 0},
};

int[][] autoRecordarnosLineas = {
  {1, 5, 0},
  {2, 5, 0},
  {2, 3, 0},
  {3, 4, 0},
  {4, 6, 0},
  {5, 8, 0},
  {5, 10, 0},
  {6, 7, 0},
  {8, 9, 0}
};

// diapo07
String[] diaJuliano = {
  // 0
  "CHAKANA\n",
  // 1
  "WENUMAPU\n",
  // 2
  "SILENCIO DE LA MIRADA",
  // 3
  "TESTIMONIO",
  // 4
  "(testigo sin mirada)",
  // 5
  "MIGUEL LAWNER",
  // 6
  "DÍA JULIANO",
  // 7
  "\nTRUENO",
  // 8
  "\nMAPA DE ESTRELLAS 50 AÑOS-LUZ\nALREDEDOR DE LA TIERRA\n",
  // 9
  " ",
  // 10
  " "
};

float[][] diaJulianoParams = {
  // 0
  {0, 10, 15, 16, 1, 0},
  // 1
  {0, 25, 15, 16, 1, 0},
  // 2
  {0, 20, 80, 10, 2, 0},
  // 3
  {0, 20, 85, 10, 2, 0},
  // 4
  {0, 20, 90, 10, 2, 0},
  // 5
  {0, 20, 96, 12, 2, 0},
  // 6
  {0, 80, 10, 14, 0, 0},
  // 7
  {0, 70, 80, 20, 2, 0},
  // 8
  {0, 40, 90, 14, 1, 0},
  // 9
  {0, 20, 40, 32, 1, 0},
  // 10
  {0, 70, 40, 32, 1, 0}
};

int[][] diaJulianoLineas = {
  {0, 1, 0},
  {0, 9, 0},
  {1, 9, 0},
  {2, 7, 0},
  {6, 10, 0},
  {7, 9, 0},
  {7, 10, 0},
  {9, 10, 0}
};

// diapo08
String[] calendarioAndino = {
  // 0
  "CHAKANA",
  // 1
  "(calendario andino)",
  // 2
  "COORDENADAS TEMPORALES",
  // 3
  "DÍA JULIANO",
  // 4
  "La fecha juliana, día juliano o DJ es el número de días\n" +
  "y fracción transcurridos desde el mediodía del uno de\n" +
  "enero del año 4713 a.C.",
  // 5
  "TIEMPO UNIX",
  // 6
  "Tiempo Unix o tiempo POSIX es un sistema para la descripción\n" +
  "de instantes de tiempo: se define como la cantidad de segundos\n" +
  "transcurridos desde la medianoche UTC del 1 de enero de 1970",
  // 7
  "TIEMPO ASTRONÓMICO V/s TIEMPO COMPUTACIONAL"
};

float[][] calendarioAndinoParams = {
  // 0
  {0, 15, 18, 16, 1, 0},
  // 1
  {0, 15, 25, 18, 1, 0},
  // 2
  {0, 25, 35, 14, 1, 0},
  // 3
  {0, 25, 50, 18, 1, 0},
  // 4
  {0, 20, 80, 14, 0, 0},
  // 5
  {0, 80, 18, 24, 1, 0},
  // 6
  {0, 80, 50, 12, 1, 0},
  // 7
  {0, 80, 80, 12, 1, 0},
};

int[][] calendarioAndinoLineas = {
  {1, 2, 0},
  {2, 3, 0},
  {2, 5, 0},
  {2, 7, 0},
  {3, 4, 0},
  {4, 7, 0},
  {5, 6, 0},
  {6, 7, 0}

};

// diapo09
String[] neuroCiencia = {
  // 0
  "NEUROCIENCIA",
  // 1
  "COSMOGONÍA",
  // 2
  "Interfaz - BCI",
  // 3
  "Brain Computer Intelligence",
  // 4
  "Trabajo con enfermos terminales\n" +
  "DUELO ANTICIPADO\n" +
  "MÚSICA creada a partir de ondas\n" +
  "cerebrales en su lecho de muerte",
  // 5
  "RITUALES MORTUORIOS -\n" +
  "DANZA DE LOS ESPÍRITUS\n" +
  "RELACIÓN INTEGRADA CON LA\n" +
  "MUERTE",
  // 6
  "Modos de lidiar con\nel duelo y la Memoria\nde nuestros muertos\n",
  // 7
  "¿CÓMO SE PRODUCE LA MEMORIA?",
  // 8
  "¿CÓMO NOS RECONOCEMOS EN UNA MEMORIA COMÚN?",
  // 9
  "¿CÓMO CONSTRUIMOS UNA MEMORIA COLECTIVA?",
  // 10
  " "
};

float[][] neuroCienciaParams = {
  // 0
  {0, 15, 20, 22, 1, 0},
  // 1
  {0, 45, 20, 20, 1, 0},
  // 2
  {0, 15, 70, 18, 1, 0},
  // 3
  {0, 15, 73, 16, 1, 0},
  // 4
  {0, 15, 83, 14, 1, 0},
  // 5
  {0, 45, 75, 14, 1, 0},
  // 6
  {0, 65, 50, 16, 1, 1},
  // 7
  {270, 80, 50, 16, 1, 0},
  // 8
  {270, 85, 50, 16, 1, 0},
  // 9
  {270, 90, 50, 16, 1, 0},
  // 10
  {0, 30, 50, 32, 2, 0}
};

int[][] neuroCienciaLineas = {
  {0, 2, 0},
  {1, 5, 0},
  {6, 7, 0},
  {6, 10, 0},
};

// diapo10
String[] memoriaCorporal = {
  // 0
  "¿CÓMO NOS RECONOCEMOS EN UNA MEMORIA COMÚN?\n",
  // 1
  "MEMORIA CORPORAL\n",
  // 2
  "EL ARCHIVO COMO PIEL QUE PERMITE UN PORVENIR",
  // 3
  "(la vida puede tener muchas vidas más)",
  // 4
  "Porosidad de la piel - Porosidad de la memoria",
  // 5
  "\nCuando uno se pone un velo puede contar otras historias\n",
  // 6
  "LA MEMORIA ES MALEABLE\n" +
  "lo maleable de la conmoción",
  // 7
  "RECONSTRUIR RECUERDOS\n",
  // 8
  "Memoria que se revisita...\n" +
  "Cicatriz personal que revive una y otra vez\n" +
  "el acontecimiento...",
  // 9
  "GRAFÍA - TRAUMA - HERIDA",
  // 10
  "\nLectura compleja del post Golpe",
  // 11
  "\n(privatización de la Memoria Política)",
  // 12
  "TRAUMA, MEMORIA Y OLVIDO"
};

float[][] memoriaCorporalParams = {
  // 0
  {0, 30, 20, 16, 1, 0},
  // 1
  {0, 30, 40, 18, 1, 0},
  // 2
  {0, 30, 50, 16, 1, 0},
  // 3
  {0, 30, 53, 12, 1, 0},
  // 4
  {0, 30, 70, 14, 1, 0},
  // 5
  {0, 30, 80, 10, 1, 0},
  // 6
  {0, 80, 10, 16, 1, 0},
  // 7
  {0, 80, 20, 16, 1, 0},
  // 8
  {0, 60, 40, 14, 0, 0},
  // 9
  {0, 60, 50, 18, 0, 0},
  // 10
  {0, 80, 70, 12, 1, 0},
  // 11
  {0, 60, 85, 14, 1, 0},
  // 12
  {0, 60, 90, 18, 1, 0},

};

int[][] memoriaCorporalLineas = {
  {0, 1, 0},
  {0, 7, 0},
  {1, 2, 0},
  {1, 8, 0},
  {3, 4, 0},
  {4, 5, 0},
  {7, 10, 0},
  {9, 11, 0}
};

// diapo11
String[] verdadMemoria = {
  // 0
  "¿CÓMO SE PRODUCE LA MEMORIA?\n",
  // 1
  "¿Qué hace la verdad en la Memoria?\n",
  // 2
  "La Memoria es un relato. El negacionismo se funda en\n" +
  "un hecho mínimo al que se le confiere la representación\n" +
  "del todo",
  // 3
  "HIPER OBJETOS",
  // 4
  "...sesgos cognitivos y por tanto sesgos respecto a la\n" +
  "lectura ideológica de la realidad.",
  // 5
  "¿CÓMO NOS RE-CONOCEMOS EN UNA\n" +
  "MEMORIA COMÚN?",
  // 6
  "Mirar de manera oblicua trans trans trans",
  // 7
  "JAQUEAR EL RELATO OFICIAL / JAQUEAR LA MEMORIA",
  // 8
  "Jaquear un dato: concatenación causal",
  // 9
  " "
};

float[][] verdadMemoriaParams = {
  // 0
  {0, 30, 20, 18, 1, 0},
  // 1
  {0, 30, 30, 14, 1, 0},
  // 2
  {0, 30, 40, 16, 0, 0},
  // 3
  {0, 30, 50, 18, 0, 0},
  // 4
  {0, 30, 60, 14, 1, 0},
  // 5
  {0, 80, 10, 18, 1, 0},
  // 6
  {0, 80, 40, 16, 1, 0},
  // 7
  {0, 85, 75, 12, 1, 0},
  // 8
  {0, 85, 80, 10, 1, 0},
  // 9
  {0, 80, 20, 32, 1, 0}
};

int[][] verdadMemoriaLineas = {
  {0, 9, 1},
  {1, 2, 0},
  {2, 4, 0},
  {4, 7, 1},
  {5, 9, 1},
  {7, 9, 1}
};

// diapo12
String[] silencioEnsordecedor = {
  // 0
  "El silencio no existe - el sonido queda en estado perpetuo y se va amortiguando",
  // 1
  "SILENCIO",
  // 2
  "\nTOQUE DE QUEDA",
  // 3
  "PACTOS DE SILENCIO\n",
  // 4
  "SILENCIO ENSORDECEDOR",
  // 5
  "Ruido blanco: es muy difícil hablar de algo que está en todas partes"
};

float[][] silencioEnsordecedorParams = {
  // 0
  {0, 50, 40, 14, 1, 0},
  // 1
  {0, 50, 45, 32, 1, 0},
  // 2
  {0, 20, 50, 20, 1, 0},
  // 3
  {0, 80, 50, 20, 1, 0},
  // 4
  {0, 50, 55, 22, 1, 0},
  // 5
  {0, 50, 62, 14, 1, 0},
};

int[][] silencioEnsordecedorLineas = {
  {2, 3, 0}
};

// diapo13
String[] silencioEco = {
  // 0
  "SILENCIO\n",
  // 1
  "  DESCIFRAR LA MORFOLOGÍA\n" +
  "  DE LOS MENSAJES\n" +
  "  EN TRÁNSITO\n" +
  "  DENTRO/ENTRE LOS CUERPOS",
  // 2
  "ECO",
  // 3
  "ESCUCHAR de manera oblicua\n",
  // 4
  "MEMORIA DIRECTA E INDIRECTA\n",
  // 5
  "HERENCIAS\n",
  // 6
  "¿Cuándo terminar con las cadenas de\n" +
  "herencias de lo vivido?",
  // 7
  "ÁRBOLES FILOGENÉTICOS DE LOS PLANETAS\n",
  // 8
  "Las emisiones radiales con las noticias del golpe el\n" +
  "11 de septiembre de 1973 aún están viajando",
  // 9
  "El sonido es radioactivo\n",
  // 10
  "El sonido que comenzó hace 50 años-luz\n" +
  "también opera en la herencia familiar"
};

// diapo13
float[][] silencioEcoParams = {
  // 0
  {0, 10, 10, 24, 1, 0},
  // 1
  {0, 10, 50, 12, 0, 0},
  // 2
  {0, 10, 90, 32, 2, 0},
  // 3
  {0, 70, 7, 20, 1, 0},
  // 4
  {0, 70, 15, 16, 1, 0},
  // 5
  {0, 70, 30, 20, 1, 0},
  // 6
  {0, 70, 40, 14, 1, 0},
  // 7
  {0, 70, 55, 16, 1, 0},
  // 8
  {0, 70, 65, 12, 1, 0},
  // 9
  {0, 70, 80, 18, 1, 0},
  // 10
  {0, 70, 90, 12, 1, 0}
};

int[][] silencioEcoLineas = {
  {0, 1, 0},
  {1, 2, 0},
  {2, 3, 0},
  {4, 2, 0},
  {2, 5, 0},
  {6, 2, 0},
  {2, 7, 0},
  {8, 2, 0},
  {2, 9, 0},
  {10, 2, 0}
};

// diapo14
String[] tiempoUnix = {
  // 0
  " ",
  // 1
  "\n\nTRUENO como\n" +
  "otra forma de\n" +
  "organizar el\n" +
  "conocimiento",
  // 2
  "DESCIFRAR LA MORFOLOGÍA\n" +
  "DE LOS MENSAJES\n" +
  "EN TRÁNSITO\n" +
  "DENTRO/ENTRE LOS CUERPOS",
  // 3
  "FENOMENOLOGÍA DEL TRUENO",
  // 4
  "GENEALOGÍA DEL TRUENO PARA ENTRETEJER RELATOS\n" +
  "HACIA RE-CONOCERNOS EN UNA MEMORIA COMÚN",
  // 5
  "TIEMPO UNIX\n",
  // 6
  "\nEscalas Temporales",
  // 7
  "ANALOGÍAS ENTRE LA FISIOLOGÍA Y LA\n" +
  "COGNICIÓN, EL MITO, LA POESÍA, LA ASTRONOMÍA\n" +
  "Y LA COSMOVISIÓN",
  // 8
  "Transitar los tiempos de las memorias",
  // 9
  "Nuestros tiempos\n",
  // 10
  "\nTiempos ancestrales",
  // 11
  "Tiempos astronómicos\n",
  // 12
  " "
};

float[][] tiempoUnixParams = {
  // 0
  {0, 10, - 100, 32, 1, 0},
  // 1
  {0, 10, 20, 16, 1, 0},
  // 2
  {0, 40, 20, 16, 1, 0},
  // 3
  {0, 70, 30, 14, 1, 0},
  // 4
  {0, 70, 50, 16, 1, 0},
  // 5
  {0, 20, 70, 22, 1, 0},
  // 6
  {0, 40, 70, 16, 1, 0},
  // 7
  {0, 75, 70, 16, 1, 0},
  // 8
  {0, 50, 85, 14, 1, 0},
  // 9
  {0, 20, 90, 16, 1, 0},
  // 10
  {0, 50, 90, 16, 1, 0},
  // 11
  {0, 80, 90, 16, 1, 0},
  // 12
  {0, 20, 50, 32, 1, 0},
};

int[][] tiempoUnixLineas = {
  {0, 1, 0},
  {2, 6, 0},
  {3, 4, 0},
  {4, 7, 0},
  {4, 12, 0},
  {5, 6, 0},
  {6, 7, 0},
  {9, 10, 0},
  {10, 11, 0}

};

// diapo15
String[] microEvento = {
  // 0
  " ",
  // 1
  "DEL\n" +
  "MICRO EVENTO\n" +
  "AL HIPER    OBJETO\n" +
  "-idea y vuelta - entrelazados-",
  // 2
  "micropartículas: polvo en suspensión / polvo de estrellas",
  // 3
  " "
};

float[][] microEventoParams = {
  // 0
  {0, 50, 0 - 100, 32, 1, 0},
  // 1
  {0, 50, 40, 32, 1, 0},
  // 2
  {0, 50, 80, 22, 1, 0},
  // 3
  {0, 50, height + 100, 32, 1, 0}
};

int[][] microEventoLineas = {
  {0, 1, 0},
  {1, 2, 0},
  {2, 3, 0}
};

// diapo16
String[] polvoCallado = {
  // 0
  " ",
  // 1
  "\n\nPOLVO CALLADO",
  // 2
  "(partículas en suspensión: materia fina)",
  // 3
  "Volé en POLVO FINO de la sepultura y fui espesando sobre tu campo, todo para mirarte\n",
  // 4
  "finas partículas atraviesan la atmósfera",
  // 5
  " "
};

float[][] polvoCalladoParams = {
  // 0
  {degrees(atan2(float(height), 2*float(height))), -100, -100, 32, 1, 0},
  // 1
  {0, 70, 20, 32, 1, 0},
  // 2
  {degrees(atan2(float(height), 2*float(height))), 30, 20, 16, 0, 0},
  // 3
  {0, 50, 60, 18, 1, 0},
  // 4
  {degrees(atan2(float(height), 2*float(height))), 30, 70, 16, 0, 0},
  // 5
  {degrees(atan2(float(height), 2*float(height))), 100, 100, 32, 1, 0},
};

int[][] polvoCalladoLineas = {
  {1, 0, 0},
  {3, 5, 0}
};

// diapo17
String[] objetoCuantico = {
  // 0
  "El polvo es un objeto cuántico.\n" +
  "Un día entra por la rotura de tu ventana,\n" +
  "por la cerradura de la puerta,\n" +
  "o por un tragaluz,\n" +
  "al mismo tiempo que se escurre por una rendija\n" +
  "o por una chimenea entre los árboles\n" +
  "o por cualquier otro sitio del universo.\n" +
  "Como un electrón\n" +
  "o una pajarilla\n" +
  "o una mariposa naranja en la catedral de la noche.\n" +
  "siempre está viva y\n" +
  "siempre está muerta.",
  // 1
  "",
  // 2
  ""
};

float[][] objetoCuanticoParams = {
  // 0
  {0, 20, 30, 26, 0, 0},
  // 1
  {0, -10, -11, 32, 1, 0},
  // 2
  {0, 150, 30, 32, 1, 0},
};

int[][] objetoCuanticoLineas = {
  {2, 1, 0},
};

// diapo18
String[] vientoLevanta = {
  // 0
  "el viento levanta la tierra  \n" +
  "que removimos con las uñas  \n" +
  "el polvo difumina todas las caras  \n" +
  "en la pampa cómo reconocerse  \n" +
  "si no hay pluma que aguatne un tirón  \n" +
  "la sangre brota tiñendo las manos  ",
  // 1
  "  ¿dolor?\n",
  // 2
  "\n  ¿memoria?"
};

float[][] vientoLevantaParams = {
  // 0
  {0, 50, 50, 20, 2, 0},
  // 1
  {0, 80, 35, 32, 1, 0},
  // 2
  {0, 80, 65, 32, 1, 0}
};

int[][] vientoLevantaLineas = {
  {2, 0, 0},
  {2, 1, 0}
};

// diapo19
String[] elLenguaje = {
  "El lenguaje hace más de lo que sabe",
};

float[][] elLenguajeParams = {
  {-30, 70, 40, 32, 2, 0}
};

int[][] elLenguajeLineas = {
};

// diapo20
String[] tiempoDolor = {
  // 0
  "¿Cuál es el tiempo del dolor?",
  // 1
  "El quiebre del lenguaje\n" +
  "El evento cero",
  // 2
  "El tiempo del dolor comienza\n" +
  "con su propio vocabulario.",
};

float[][] tiempoDolorParams = {
  // 0
  {15, 80, 30, 20, 2, 0},
  // 1
  {0, 80, 50, 20, 2, 0},
  // 2
  {-15, 80, 70, 20, 2, 0},
};


int[][] tiempoDolorLineas = {
};

// diapo21
String[] lenguajeHace = {
  "E l    l e n g u a j e    h a c e    m á s    d e    l o    q u e   s a b e ",
};

float[][] lenguajeHaceParams = {
  {15, 80, 80, 25, 2, 0}
};

int[][] lenguajeHaceLineas = {
};

// diapo22
String[] eventoCero = {
  // 0
  "  EL EVENTO CERO\n" +
  "  ES EL QUIEBRE DEL LENGUAJE",
  // 1
  "    EL TIEMPO DEL DOLOR COMIENZA\n" +
  "    CON SU PROPIO VOCABULARIO",
  // 2
  "  Miro el sol ponerse contra este mapa roto,  \n" +
  "  mientras abajo se fraguan espalda y lenguaje en los  \n" +
  "  podridos escalones de historia. Estoy en marcha, dije,  \n" +
  "  y atrás queda el gran espejismo de la Tierra.  ",
  // 3
  " "
};

float[][] eventoCeroParams = {
  // 0
  {0, 60, 10, 18, 0, 0},
  // 1
  {0, 40, 40, 20, 0, 0},
  // 2
  {0, 35, 70, 12, 2, 0},
  // 3
  {0, 40, 110, 32, 1, 0}
};

int[][] eventoCeroLineas = {
  {1, 0, 0},
  {1, 2, 0},
  {1, 3, 0}
};

// diapo23
String[] laAntropologa = {
  // 0
  "La antropóloga Mary Douglas\n" +
  "define al polvo como\n" +
  "matter out of place",
  // 1
  "MATERIA FUERA DE\n" +
  "LUGAR",
  // 2
  "Los calderos a vapor de la pesquera, los que se usan para hacer\n" +
  "harina de pescado, sirvieron para reducir a polvo a los cuerpos de\n" +
  "los detenidos y ejecutados en los primeros años de la dictadura.",
  // 3
  "Quien fuera inventor de la cámara de gases móvil durante la\n" +
  "Segunda Guerra Mundial, es designado en 1973 director de la\n" +
  "Pesquera Arauco en San Antonio.",
  // 4
  "Se trata del comandante Walter Rauff  "
};

float[][] laAntropologaParams = {
  // 0
  {0, 15, 40, 14, 0, 0},
  // 1
  {0, 50, 40, 16, 0, 1},
  // 2
  {0, 10, 70, 10, 0, 0},
  // 3
  {0, 10, 80, 10, 0, 0},
  // 4
  {0, 30, 90, 10, 2, 0},
};

int[][] laAntropologaLineas = {
};

// diapo24
String[] materiaFuera = {
  // 0
  "Materia fuera de lugar",
  // 1
  "Partículas finas",
  // 2
  "Tiempo del dolor",
  // 3
  "Cenizas al Río Sola",
  // 4
  "cenizas al Río Vistula",
  // 5
  "Polvo callado"
};

float[][] materiaFueraParams = {
  // 0
  {0, 50, 10, 26, 2, 0},
  // 1
  {45 + random(-10, 10), 20, 47, 24, 2, 0},
  // 2
  {-45 + random(-10, 10), 40, 40, 24, 0, 0},
  // 3
  {-45 + random(-10, 10), 50, 75, 24, 0, 0},
  // 4
  {45 + random(-10, 10), 25, 80, 24, 2, 0},
  // 5
  {0, 25, 90, 26, 0, 0}
};

int[][] materiaFueraLineas = {
};

// diapo25
String[] depositadoEn = {
  "depositado en el el Río Sola y desde ahí al Río Vístula (Polonia 1944/45)",
  "depositado en el mar frente a San Antonio (Chile 1973/74)"
};

// diapo25
float[][] depositadoEnParams = {
  {270, 30, 50, 16, 0, 0},
  {0, 30, 80, 16, 0, 0}
};

int[][] depositadoEnLineas = {
};

// diapo26
String[] vivianaLlora = {
  // 0
  "Viviana llora. Viviana oyó torbellines de peces el aire\n" +
  "disputándose bocados de una despedida trunca, de un rezo no oído,\n" +
  "de un amor no dicho. Viviana está en la playa. Viviana es Chile\n",
  // 1
  "El mar carnívoro de Chile es el anverso de las\n" +
  "aguas tranquilas donde llegan las cenizas de los\n" +
  "cuerpos transformados en harina de pescado\n",
};

float[][] vivianaLloraParams = {
  // 0
  {0, 10, 60, 14, 0, 0},
  // 1
  {0, 60, 40, 14, 0, 0}
};

int[][] vivianaLloraLineas = {
};

// diapo27
String[] materiaSolida = {
  "Materia sólida en partículas",
  "La harina de pescado puede tener un\n" +
  "tamaño que varía entre 2,5 y 5 mm.",
  "Cuando caen micro meteoritos a la\n" +
  "tierra pueden ser cuerpos con una\n" +
  "edad de miles de millones\n" +
  "de años y un diámetro de 2 mm.",
  "POLVO CALLADO\n" +
  "UN SILENCIO FUERA DE LUGAR",
  "En la cremación los restos óseos\n" +
  "se reducen a cenizas, pero en realidad no\n" +
  "es ceniza, sino una arena gruesa y gris\n" +
  "pálida."
};

float[][] materiaSolidaParams = {
  {0, 50, 30, 14, 0, 0},
  {0, 15, 50, 14, 0, 0},
  {0, 50, 50, 14, 0, 0},
  {0, 50, 70, 14, 0, 0},
  {0, 80, 50, 14, 0, 0}
};

int[][] materiaSolidaLineas = {
  {0, 1, 0},
  {0, 2, 0},
  {0, 4, 0},
  {1, 3, 0},
  {2, 3, 0},
  {3, 4, 0}
};

// diapo28
String[] observandoOrionis = {
  "Observando a ORIONIS\n" +
  "científicos han propuesto que\n" +
  "como elemento el agua es más\n" +
  "antigua incluso que el sol.",
  "¿CUÁL ES EL TIEMPO DEL DOLOR?",
  "V883 ORIONIS\n" +
  "nube interestelar a 1300 años\n" +
  "luz de la tierra. Contiene más\n" +
  "agua que todos los océanos de\n" +
  "nuestro planeta juntos.",
};

float[][] observandoOrionisParams = {
  {0, 15, 40, 14, 0, 0},
  {0, 50, 50, 14, 0, 0},
  {0, 85, 60, 14, 0, 0}
};

int[][] observandoOrionisLineas = {
};

// diapo29
String[] excluirAlgo = {
  // 0
  "Excluir algo de la\n" +
  "memoria es erradicarlo\n" +
  "del tiempo",
  // 1
  "El mar agitado fue escogido para esconder\n" +
  "los cuerpos. Su vastedad, sus olas\n" +
  "poderosas prometían mantener el silencio y\n" +
  "excluir de la memoria colectiva a esos cuerpos.",
  // 2
  "¿CUÁL ES EL TIEMPO DEL DOLOR?"
};

float[][] excluirAlgoParams = {
  // 0
  {0, 10, 60, 14, 0, 0},
  // 1
  {0, 34, 60, 14, 0, 0},
  // 2
  {0, 70, 60, 14, 0, 0}
};

int[][] excluirAlgoLineas = {
};

// diapo30
String[] cenizasArrojadas = {
  "Las cenizas fueron arrojadas al agua que fluye por\n" +
  "el río Sola, que a su vez desemboca al río Vístula y\n" +
  "luego desemboca en el Golfo de Gdansk.\n1944 - 45",
  "Las cenizas fueron arrojadas al Océano\n" +
  "Pacífico, a las olas que golpean la costa de\n" +
  "San Antonio y a la Pesquera Arauco.\n1973 - 74"
};

float[][] cenizasArrojadasParams = {
  {0, 15, 35, 14, 0, 0},
  {0, 70, 35, 14, 0, 0}
};

int[][] cenizasArrojadasLineas = {
};

// diapo31
String[] aguaElemento = {
  "EL AGUA ES UN ELEMENTO MÁS ANTIGUO QUE EL SOL",
  "¿CUÁL ES EL TIEMPO DEL DOLOR?",
  "¿CUÁL ES EL TIEMPO DE LA MEMORIA?",
  "(materia fuera\nde lugar)",
  "(polvo\ncallado)",
  "(silencio)"
};

float[][] aguaElementoParams = {
  {0, 50, 50, 16, 0, 0},
  {0, 70, 25, 12, 0, 0},
  {0, 80, 75, 12, 0, 0},
  {60, 5, 15, 12, 0, 0},
  {60, 15, 50, 12, 0, 0},
  {60, 25, 85, 12, 0, 0}
};

int[][] aguaElementoLineas = {
  {1, 2, 0},
  {3, 5, 0}
};

// diapo32
String[] ultimaDiapo = {
  "x"
};

float[][] ultimaDiapoParams = {
  {0, -100, -100, 32, 0, 0}
};

int[][] ultimaDiapoLineas = {
};

String[][] textosTodos = {
  primeraDiapo,
  memoria,
  aproximaciones,
  fisicaAstronomia,
  cuerpoModifica,
  transitoComo,
  autoRecordarnos,
  diaJuliano,
  calendarioAndino,
  neuroCiencia,
  memoriaCorporal,
  verdadMemoria,
  silencioEnsordecedor,
  silencioEco,
  tiempoUnix,
  microEvento,
  polvoCallado,
  objetoCuantico,
  vientoLevanta,
  elLenguaje,
  tiempoDolor,
  lenguajeHace,
  eventoCero,
  laAntropologa,
  materiaFuera,
  depositadoEn,
  vivianaLlora,
  materiaSolida,
  observandoOrionis,
  excluirAlgo,
  cenizasArrojadas,
  aguaElemento,
  ultimaDiapo
};

float[][][] textosParams = {
  primeraDiapoParams,
  memoriaParams,
  aproximacionesParams,
  fisicaAstronomiaParams,
  cuerpoModificaParams,
  transitoComoParams,
  autoRecordarnosParams,
  diaJulianoParams,
  calendarioAndinoParams,
  neuroCienciaParams,
  memoriaCorporalParams,
  verdadMemoriaParams,
  silencioEnsordecedorParams,
  silencioEcoParams,
  tiempoUnixParams,
  microEventoParams,
  polvoCalladoParams,
  objetoCuanticoParams,
  vientoLevantaParams,
  elLenguajeParams,
  tiempoDolorParams,
  lenguajeHaceParams,
  eventoCeroParams,
  laAntropologaParams,
  materiaFueraParams,
  depositadoEnParams,
  vivianaLloraParams,
  materiaSolidaParams,
  observandoOrionisParams,
  excluirAlgoParams,
  cenizasArrojadasParams,
  aguaElementoParams,
  ultimaDiapoParams
};

int[][][] textosLineas = {
  primeraDiapoLineas,
  memoriaLineas,
  aproximacionesLineas,
  fisicaAstronomiaLineas,
  cuerpoModificaLineas,
  transitoComoLineas,
  autoRecordarnosLineas,
  diaJulianoLineas,
  calendarioAndinoLineas,
  neuroCienciaLineas,
  memoriaCorporalLineas,
  verdadMemoriaLineas,
  silencioEnsordecedorLineas,
  silencioEcoLineas,
  tiempoUnixLineas,
  microEventoLineas,
  polvoCalladoLineas,
  objetoCuanticoLineas,
  vientoLevantaLineas,
  elLenguajeLineas,
  tiempoDolorLineas,
  lenguajeHaceLineas,
  eventoCeroLineas,
  laAntropologaLineas,
  materiaFueraLineas,
  depositadoEnLineas,
  vivianaLloraLineas,
  materiaSolidaLineas,
  observandoOrionisLineas,
  excluirAlgoLineas,
  cenizasArrojadasLineas,
  aguaElementoLineas,
  ultimaDiapoLineas
};

String[] textosSplash = {
  "SOLO LOS ORGANISMOS VIVOS RECUERDAN. SOLO LOS ORGANISMOS PUEDEN HACER SENTIDO",
  "TEMPORALIDAD de los ASTROS Mensajes que viajan hace cincuenta años y se volvieron cien mil",
  "Transitar los tiempos de las memorias",
  "Recordar emerge en el silencio que queda tras el trueno",
  "MEMORIA CORPORAL = La Piel como archivo",
  "¿CÓMO SE PRODUCE LA MEMORIA ?",
  "El silencio no existe - el sonido queda en estado perpetuo y se va amortiguando",
  "Las emisiones radiales con las noticias del golpe del 11 de septiembre de 1973 aún están viajando",
  "¿CUÁL ES EL TIEMPO DEL DOLOR?",
  "EL EVENTO CERO ES EL QUIEBRE DEL LENGUAJE",
  "Excluir algo de la memoria es erradicarlo del tiempo"
};
