class Texto {


  String texto;
  float angulo;
  float posX;
  float posY;
  float tamano;
  int caracterActual;

  Texto(String nuevoTexto, float[] params) {
    texto = nuevoTexto;
    angulo = params[0];
    posX = params[1];
    posY = params[2];
    tamano = params[3];
    caracterActual = 0;
  }

  void aumentarCaracter() {
    caracterActual++;
    caracterActual = constrain(caracterActual, 0, texto.length());
  }
}

// font inika de constanza artigas
PFont fuente;

void cargarFuente() {
  fuente = loadFont("Inika-64.vlw");
}

void definirFuente() {
  textFont(fuente);
  textAlign(CENTER, CENTER);
  textSize(64);
  stroke(0);
}

String fecha = "jueves 09 noviembre 2023";

String[] primeraDiapo = {
  "x"
};

float[][] primeraDiapoParams = {
  // angulo, posX, posY, tamano
  {0, -10, -10, 32}
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

float[][] memoriaParams = {
  {0, 20, 30, 42},
  {0, 20, 50, 20},
  {0, 20, 80, 20},
  {0, 40, 90, 20}
};

int[][] memoriaLineas = {
  {0, 1},
  {1, 2}
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
  "SABERES",
  "ARTE"
};

float[][] aproximacionesParams = {
  {0, 50, 20, 40},
  {0, 60, 40, 20},
  {0, 70, 50, 40},
  {0, 50, 70, 20},
  {0, 50, 80, 30},
  {0, 40, 60, 20},
  {0, 30, 50, 20},
  {0, 20, 30, 40},
  {0, 20, 15, 20},
};

int[][] aproximacionesLineas = {
  {0, 4},
  {1, 5},
  {2, 6},
  {3, 7},
  {4, 8},
};

// diapo03
String[] fisicaAstronomia = {
  "FÍSICA - ASTRONOMÍA",
  "tiempos humanos versus tiempos astronómicos",
  "El tránsito de la luz y el sonido\n" +
  "transmiten información en un\n" +
  "desfase temporal",
  "la memoria se (re)crea aquí y ahora",
  "50 años\n" +
  "versus\n" +
  "50 años-luz\n" +
  "sonido\n" +
  "versus\n" +
  "recepción de un\n" +
  "mensaje de un planeta\n" +
  "a otro.",
  "NEUROCIENCIA",
  "mecanismos neurobiológicos",
  "SINFONÍA FISIOLÓGICA\n" +
  "Estimulación física",
  "cerebro sometido a aislamiento"
};

float[][] fisicaAstronomiaParams = {
  {0, 30, 20, 32},
  {0, 30, 25, 14},
  {0, 50, 40, 32},
  {0, 25, 60, 32},
  {0, 80, 20, 20},
  {0, 80, 50, 16},
  {0, 80, 60, 32},
  {0, 80, 80, 32},
  {0, 80, 90, 12}
};

int[][] fisicaAstronomiaLineas = {
};

// diapo04
String[] cuerpoModifica = {
  "MORFOLOGÍA(S) COMO ESCRITURA(S) DE LA(S) MEMORIA(S)",
  "Un cuerpo modifica su forma a partir de los fenómenos\n" +
  "que le acontecen = la forma del cuerpo da cuenta de su\n" +
  "historia y recrea la memoria en el aquí/ahora.",
  "ECOLOGÍA DE LA MEMORIA\n" +
  "seres vivos en relación a\n" +
  "su ambiente -",
  "No hay memoria\n" +
  "sin vida/ sin vivir",
  "El cerebro reorganiza y facilita procesos y\n" +
  "funciones de la memoria, pero la\n" +
  "memoria es un fenómeno del organismo.",
  "la memoria no se almacena",
  "SOLO LOS ORGANISMOS\n" +
  "VIVOS RECUERDAN Y\n" +
  "PUEDEN HACER SENTIDO",
  "Morfologías de la luz, el sonido, los cuerpos celestes, humanos, vegetales...",
  "árboles genealógicos de las estrellas...\n" +
  "Cómo rastrear químicamente sus orígenes/ancestros (Paula Jofré)",
  "HEREDAR EL\n" +
  "CONOCIMIENTO\n" +
  "seres vivos son cyborgs naturales",
  "tecnologái y memoria - nuevas perspectivas con las AI"
};

float[][] cuerpoModificaParams = {
  {0, 0, 0, 32},
  {0, 0, 0, 32},
  {0, 0, 0, 32},
  {0, 0, 0, 32},
  {0, 0, 0, 32},
  {0, 0, 0, 32},
  {0, 0, 0, 32},
  {0, 0, 0, 32},
  {0, 0, 0, 32},
  {0, 0, 0, 32},
  {0, 0, 0, 32}
};

int[][] cuerpoModificaLineas = {
};

// diapo05
String[] transitoComo = {
  "TRÁNSITO como\n" +
  "otra forma de\n" +
  "organizar el\n" +
  "conocimiento",
  "ESCRITURA DE LA MEMORIA",
  "EPISTEMOLOGÍAS Sur",
  "SABERES SITUADOS",
  "Imaginación Radical",
  "GENEALOGÍAS DE FORMAS DE MENSAJES CLANDESTINOS",
  "(TEMPORALIDAD de los\n" +
  "ASTROS) Mensajes\n" +
  "que viajaron hace 50\n" +
  "años y aún no llegan",
  "Tránsito de mensajes",
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
  " ..."
};

float[][] transitoComoParams = {
  {0, 0, 0, 32},
  {0, 0, 0, 32},
  {0, 0, 0, 32},
  {0, 0, 0, 32},
  {0, 0, 0, 32},
  {0, 0, 0, 32},
  {0, 0, 0, 32},
  {0, 0, 0, 32},
  {0, 0, 0, 32}
};

int[][] transitoComoLineas = {
};

// diapo06
String[] autoRecordarnos = {
  "AUTO RECORDARNOS",
  "¿SE PUEDE APRENDER A OLVIDAR?",
  "¿CÓMO ATRAVESAMOS LAS IMÁGENES Y LOS IMAGINARIOS?",
  "TRUENO",
  "acontecimiento que cambia el curso de las cosas",
  "¿ENCANDILA?",
  "¿ES UNA IMAGEN?",
  "ES UN QUIEBRE",
  "¿ES UN PARÉNTESIS?",
  "recordar emerge en el silencio que queda tras el trueno - el trueno es lo que nos recuerda lo vivo",
  "LUZ EN EL CEREBRO",
  "TRÁNSITO DE LA LUZ",
  "IMAGEN COMO INSCRIPCIÓN MORFOLÓGICA DEL TIEMPO",
  "Transitar los tiempos de las memorias",
  "SILENCIO",
  "El silencio es una condición del espacio (astronomía)",
  "El proceso de reconstrucción de la memoria necesita del silencio (neurociencia)",
  "No existe el silencio, solo el ruido imperceptible",
  "Nuestros tiempos",
  "Tiempos ancestrales",
  "Tiempos astronómicos"
};

float[][] autoRecordarnosParams = {
  {0, 0, 0, 32},
  {0, 0, 0, 32},
  {0, 0, 0, 32},
  {0, 0, 0, 32},
  {0, 0, 0, 32},
  {0, 0, 0, 32},
  {0, 0, 0, 32},
  {0, 0, 0, 32},
  {0, 0, 0, 32},
  {0, 0, 0, 32},
  {0, 0, 0, 32},
  {0, 0, 0, 32},
  {0, 0, 0, 32},
  {0, 0, 0, 32},
  {0, 0, 0, 32},
  {0, 0, 0, 32},
  {0, 0, 0, 32},
  {0, 0, 0, 32},
  {0, 0, 0, 32},
  {0, 0, 0, 32},
  {0, 0, 0, 32}
};

int[][] autoRecordarnosLineas = {
};

// diapo07
String[] diaJuliano = {
  "CHAKANA",
  "WENUMAPU",
  "SILENCIO DE LA MIRADA",
  "TESTIMONIO",
  "(testigo sin mirada)",
  "MIGUEL LAWNER",
  "DÍA JULIANO",
  "TRUENO",
  "MAPA DE ESTRELLAS 50 AÑOS-LUZ ALREDEDOR DE LA TIERRA",
  "y de los bordes confines de la luz"
};

float[][] diaJulianoParams = {
  {0, 0, 0, 32},
  {0, 0, 0, 32},
  {0, 0, 0, 32},
  {0, 0, 0, 32},
  {0, 0, 0, 32},
  {0, 0, 0, 32},
  {0, 0, 0, 32},
  {0, 0, 0, 32},
  {0, 0, 0, 32},
  {0, 0, 0, 32}
};

int[][] diaJulianoLineas = {
};

// diapo08
String[] calendarioAndino = {
  "CHAKANA",
  "(calendario andino)",
  "COORDENADAS TEMPORALES",
  "DÍA JULIANO",
  "La fecha juliana, día juliano o DJ es el número de días y fracción transcurridos desde el mediodía del uno de enero del año 4713 a.C.",
  "TIEMPO UNIX",
  "Tiempo Unix o tiempo POSIX es un sistema para la descripción de instantes de tiempo: se define como la cantidad de segundos transcurridos desde la medianoche UTC del 1 de enero de 1970",
  "TIEMPO ASTRONÓMICO",
  "TIEMPO COMPUTACIONAL"
};

float[][] calendarioAndinoParams = {
  {0, 0, 0, 32},
  {0, 0, 0, 32},
  {0, 0, 0, 32},
  {0, 0, 0, 32},
  {0, 0, 0, 32},
  {0, 0, 0, 32},
  {0, 0, 0, 32},
  {0, 0, 0, 32},
  {0, 0, 0, 32}
};

int[][] calendarioAndinoLineas = {
};

// diapo09
String[] neuroCiencia = {
  "NEUROCIENCIA",
  "COSMOGONÍA",
  "Interfaz - BCI",
  "Brain Computer Intelligence",
  "Trabajo con enfermos terminales",
  "DUELO ANTICIPADO",
  "MÚSICA creada a partir de ondas cerebrales en su lecho de muerte",
  "COSMOGONÍA",
  "RITUALES MORTUORIOS",
  "DANZA DE LOS ESPÍRITUS",
  "RELACIÓN INTEGRADA CON LA MUERTE",
  "Modos de lidiar con el duelo y la Memoria de nuestros muertos",
  "¿CÓMO SE PRODUCE LA MEMORIA?",
  "¿CÓMO NOS RECONOCEMOS EN UNA MEMORIA COMÚN?",
  "¿CÓMO CONSTRUIMOS UNA MEMORIA COLECTIVA?"
};

float[][] neuroCienciaParams = {
  {0, 0, 0, 32},
  {0, 0, 0, 32},
  {0, 0, 0, 32},
  {0, 0, 0, 32},
  {0, 0, 0, 32},
  {0, 0, 0, 32},
  {0, 0, 0, 32},
  {0, 0, 0, 32},
  {0, 0, 0, 32},
  {0, 0, 0, 32},
  {0, 0, 0, 32},
  {0, 0, 0, 32},
  {0, 0, 0, 32},
  {0, 0, 0, 32},
  {0, 0, 0, 32}
};

int[][] neuroCienciaLineas = {
};

// diapo10
String[] memoriaCorporal = {
  "¿CÓMO NOS RECONOCEMOS EN UNA MEMORIA COMÚN?",
  "MEMORIA CORPORAL",
  "EL ARCHIVO COMO PIEL QUE PERMITE UN PORVENIR",
  "(la vida puede tener muchas vidas más)",
  "Porosidad de la piel / Porosidad de la memoria",
  "Cuando uno se pone un velo puede contar otras historias",
  "LA MEMORIA ES MALEABLE",
  "lo maleable de la conmoción",
  "RECONSTRUIR RECUERDOS",
  "Memoria que se revisita",
  "Cicatriz personal que revive una y otra vez en el acontecimiento",
  "GRAFÍA - TRAUMA - HERIDA",
  "Lectura compleja del post Golpe",
  "(privatización de la Memoria Política)",
  "TRAUMA, MEMORIA Y OLVIDO"
};

float[][] memoriaCorporalParams = {
  {0, 0, 0, 32},
  {0, 0, 0, 32},
  {0, 0, 0, 32},
  {0, 0, 0, 32},
  {0, 0, 0, 32},
  {0, 0, 0, 32},
  {0, 0, 0, 32},
  {0, 0, 0, 32},
  {0, 0, 0, 32},
  {0, 0, 0, 32},
  {0, 0, 0, 32},
  {0, 0, 0, 32},
  {0, 0, 0, 32},
  {0, 0, 0, 32},
  {0, 0, 0, 32}
};

int[][] memoriaCorporalLineas = {
};

// diapo11
String[] verdadMemoria = {
  "¿CÓMO SE PRODUCE LA MEMORIA?",
  "¿Qué hace la verdad en la Memoria?",
  "La Memoria es un relato. El negacionismo se funda en\n" +
  "un hecho mínimo al que se le confiere la representación\n" +
  "del todo",
  "HIPER OBJETOS",
  "sesgos cognitivos y por tanto sesgos respecto a la\n" +
  "lectura ideológica de la realidad",
  "¿CÓMO NOS RE-CONOCEMOS EN UNA\n" +
  "MEMORIA COMÚN?",
  "Mirar de manera oblicua trans trans trans",
  "JAQUEAR EL RELATO OFICIAL / JAQUEAR LA MEMORIA",
  "Jaquear un dato: concatenación causal",
};

float[][] verdadMemoriaParams = {
  {0, 0, 0, 32},
  {0, 0, 0, 32},
  {0, 0, 0, 32},
  {0, 0, 0, 32},
  {0, 0, 0, 32},
  {0, 0, 0, 32},
  {0, 0, 0, 32},
  {0, 0, 0, 32},
  {0, 0, 0, 32}
};

int[][] verdadMemoriaLineas = {
};

// diapo12
String[] silencioEnsordecedor = {
  "El silencio no eixste - el sonido queda en estado perpetuo y se va amortiguando",
  "TOQUE DE QUEDA",
  "SILENCIO",
  "SILENCIO ENSORDECEDOR",
  "PACTOS DE SILENCIO",
  "Ruido blanco: es muy difícil hablar de algo que está en todas partes"
};

float[][] silencioEnsordecedorParams = {
  {0, 0, 0, 32},
  {0, 0, 0, 32},
  {0, 0, 0, 32},
  {0, 0, 0, 32},
  {0, 0, 0, 32},
  {0, 0, 0, 32}
};

int[][] silencioEnsordecedorLineas = {
};

// diapo13
String[] silencioEco = {
  "SILENCIO",
  "DESCIFRAR LA MORFOLOGÍA\n" +
  "DE LOS MENSAJES\n" +
  "EN TRÁNSITO\n" +
  "DENTRO/ENTRE LOS CUERPOS",
  "ECO",
  "ESCUCHAR de manera oblicua",
  "MEMORIA DIRECTA E INDIRECTA",
  "HERENCIAS",
  "¿Cuándo terminar con las cadenas de\n" +
  "herencias de lo vivido?",
  "ÁRBOLES FILOGENÉTICOS DE LOS PLANETAS",
  "Las emisiones radiales con las noticias del golpe el\n" +
  "11 de septiembre de 1973 aún están viajando",
  "El sonido es radioactivo",
  "El sonido que comenzó hace x años-luz\n" +
  "también opera en la herencia familiar"
};

// diapo13
float[][] silencioEcoParams = {
  {0, 0, 0, 32},
  {0, 0, 0, 32},
  {0, 0, 0, 32},
  {0, 0, 0, 32},
  {0, 0, 0, 32},
  {0, 0, 0, 32},
  {0, 0, 0, 32},
  {0, 0, 0, 32},
  {0, 0, 0, 32},
  {0, 0, 0, 32},
  {0, 0, 0, 32}
};

int[][] silencioEcoLineas = {
};

// diapo14
String[] tiempoUnix = {
  "TRUENO como\n" +
  "otra forma de\n" +
  "organizar el\n" +
  "conocimiento",
  "DESCIFRAR LA MORFOLOGÍA\n" +
  "DE LOS MENSAJES\n" +
  "EN TRÁNSITO\n" +
  "DENTRO/ENTRE LOS CUERPOS",
  "FENOMENOLOGÍA DEL TRUENO",
  "GENEALOGÍA DEL TRUENO PARA ENTRETEJER RELATOS\n" +
  "HACIA RE-CONOCERNOS EN UNA MEMORIA COMÚN",
  "TIEMPO UNIX",
  "Escalas Temporales",
  "ANALOGÍAS ENTRE LA FISIOLOGÍA Y LA\n" +
  "COGNICIÓN, EL MITO, LA POESÍA, LA ASTRONOMÍA\n" +
  "Y LA COSMOVISIÓN",
  "Transitar los tiempos de las memorias",
  "Nuestros tiempos",
  "Tiempos ancestrales",
  "Tiempos astronómicos"
};

float[][] tiempoUnixParams = {
  {0, 0, 0, 32},
  {0, 0, 0, 32},
  {0, 0, 0, 32},
  {0, 0, 0, 32},
  {0, 0, 0, 32},
  {0, 0, 0, 32},
  {0, 0, 0, 32},
  {0, 0, 0, 32},
  {0, 0, 0, 32},
  {0, 0, 0, 32},
  {0, 0, 0, 32}
};

int[][] tiempoUnixLineas = {
};

// diapo15
String[] microEvento = {
  "DEL\n" +
  "MICRO EVENTO\n" +
  "AL HIPER OBJETO\n" +
  "-idea y vuelta - entrelazados-",
  "micropartículas: polvo en suspensión / polvo de estrellas"
};

float[][] microEventoParams = {
  {0, 0, 0, 32},
  {0, 0, 0, 32}
};

int[][] microEventoLineas = {
};

// diapo16
String[] polvoCallado = {
  "POLVO CALLADO",
  "(partículas en suspensión: materia fina)",
  "Volé en POLVO FINO de la sepultura y fui espesando sobre tu campo, todo para mirarte",
  "Gabriela Mistral",
  "finas partículas atraviesan la atmósfera"
};

float[][] polvoCalladoParams = {
  {0, 0, 0, 32},
  {0, 0, 0, 32},
  {0, 0, 0, 32},
  {0, 0, 0, 32},
  {0, 0, 0, 32}
};

int[][] polvoCalladoLineas = {
};

// diapo17
String[] objetoCuantico = {
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
  "Juan Pablo Riveros"
};

float[][] objetoCuanticoParams = {
  {0, 0, 0, 32},
  {0, 0, 0, 32}
};

int[][] objetoCuanticoLineas = {
};

// diapo18
String[] vientoLevanta = {
  "el viento levanta la tierra\n" +
  "que removimos con las uñas\n" +
  "el polvo difumina todas las caras\n" +
  "en la pampa cómo reconocerse\n" +
  "si no hay pluma que aguatne un tirón\n" +
  "la sangre brota tiñendo las manos",
  "Mariana Camelio",
  "¿dolor?",
  "¿memoria?"
};

float[][] vientoLevantaParams = {
  {0, 0, 0, 32},
  {0, 0, 0, 32},
  {0, 0, 0, 32},
  {0, 0, 0, 32}
};

int[][] vientoLevantaLineas = {
};

// diapo19
String[] elLenguaje = {
  "El lenguaje hace más de lo que sabe",
  "Paul de Man"
};

float[][] elLenguajeParams = {
  {0, 0, 0, 32},
  {0, 0, 0, 32}
};

int[][] elLenguajeLineas = {
};

// diapo20
String[] tiempoDolor = {
  "¿Cuál es el tiempo del dolor?",
  "El quiebre del lenguaje\n" +
  "El evento cero",
  "El tiempo del dolor comienza\n" +
  "con su propio vocabulario."
};

float[][] tiempoDolorParams = {
  {0, 0, 0, 32},
  {0, 0, 0, 32},
  {0, 0, 0, 32},
};


int[][] tiempoDolorLineas = {
};

// diapo21
String[] lenguajeHace = {
  "El lenguaje hace más de lo que sabe",
  "Paul de Man"
};

float[][] lenguajeHaceParams = {
  {0, 0, 0, 32},
  {0, 0, 0, 32}
};

int[][] lenguajeHaceLineas = {
};

// diapo22
String[] eventoCero = {
  "EL EVENTO CERO\n" +
  "ES EL QUIEBRE DEL LENGUAJE",
  "EL TIEMPO DEL DOLOR COMIENZA\n" +
  "CON SU PROPIO VOCABULARIO",
  "Miro el sol ponerse contra este mapa roto,\n" +
  "mientras abajo se fraguan espalda y lenguaje en los\n" +
  "podridos escalones de historia. Estoy en marcha, dije,\n" +
  "y atrás queda el gran espejismo de la Tierra.",
  "Juan Wenuan Escalona"
};

float[][] eventoCeroParams = {
  {0, 0, 0, 32},
  {0, 0, 0, 32},
  {0, 0, 0, 32},
  {0, 0, 0, 32}
};

int[][] eventoCeroLineas = {
};

// diapo23
String[] laAntropologa = {
  "La antropóloga Mary Douglas\n" +
  "define al polvo como\n" +
  "matter our of place",
  "MATERIA FUERA DE\n" +
  "LUGAR",
  "Los calderos a vapor de la pesquera, los que se usan para hacer\n" +
  "harina de pescado, sirvieron para reducir a polvo a los cuerpos de\n" +
  "los detenidos y ejecutados en los primeros años de la dictadura.",
  "Quien fuera inventor de la cámara de gases móvil durante la\n" +
  "Segunda Guerra Mundial, es designado en 1973 director de la\n" +
  "Pesquera Arauco en San Antonio.",
  "Se trata del comandante Walter Rauff"
};

float[][] laAntropologaParams = {
  {0, 0, 0, 32},
  {0, 0, 0, 32},
  {0, 0, 0, 32},
  {0, 0, 0, 32},
  {0, 0, 0, 32}
};

int[][] laAntropologaLineas = {
};

// diapo24
String[] materiaFuera = {
  "Materia fuera de lugar",
  "Partículas finas",
  "Tiempo del dolor",
  "Cenizas al Río Sola",
  "cenizas al Río Vistula",
  "Polvo callado"
};

float[][] materiaFueraParams = {
  {0, 0, 0, 32},
  {0, 0, 0, 32},
  {0, 0, 0, 32},
  {0, 0, 0, 32},
  {0, 0, 0, 32},
  {0, 0, 0, 32}
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
  {0, 0, 0, 32},
  {0, 0, 0, 32}
};

int[][] depositadoEnLineas = {
};

// diapo26
String[] vivianaLlora = {
  "Viviana llora. Viviana oyó torbellines de peces el aire\n" +
  "disputándose bocados de una despedida trunca, de un rezo no oído,\n" +
  "de un amor no dicho. Viviana está en la playa. Vivina es Chile",
  "El mar carnívoro de Chile es el anverso de las\n" +
  "aguas tranquilas donde llegan las cenizas de los\n" +
  "cuerpos transformados en harina de pescado",
  "Raúl Zurita"
};

float[][] vivianaLloraParams = {
  {0, 0, 0, 32},
  {0, 0, 0, 32},
  {0, 0, 0, 32}
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
  {0, 50, 30, 14},
  {0, 15, 50, 14},
  {0, 50, 50, 14},
  {0, 50, 70, 14},
  {0, 80, 50, 14}
};

int[][] materiaSolidaLineas = {
  {0, 1},
  {0, 2},
  {0, 4},
  {1, 3},
  {2, 3},
  {3, 4}
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
  {0, 15, 40, 14},
  {0, 50, 50, 14},
  {0, 85, 60, 14}
};

int[][] observandoOrionisLineas = {
};

// diapo29
String[] excluirAlgo = {
  "Excluir algo de la\n" +
  "memoria es erradicarlo\n" +
  "del tiempo",
  "El mar agitado fue escogido para esconder\n" +
  "los cuerpos. Su vastedad, sus olas\n" +
  "poderosas prometían mantener el silencio y\n" +
  "excluir de la memoria colectiva a esos cuerpos.",
  "¿CUÁL ES EL TIEMPO DEL DOLOR?"
};

float[][] excluirAlgoParams = {
  {0, 15, 60, 14},
  {0, 50, 60, 14},
  {0, 80, 60, 14}
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
  {0, 20, 35, 14},
  {0, 80, 35, 14}
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
  {0, 50, 50, 16},
  {0, 70, 25, 12},
  {0, 80, 75, 12},
  {60, 5, 15, 12},
  {60, 15, 50, 12},
  {60, 25, 85, 12}
};

int[][] aguaElementoLineas = {
  {1, 2},
  {3, 5}
};

// diapo32
String[] ultimaDiapo = {
  "x"
};

float[][] ultimaDiapoParams = {
  {0, 0, 0, 32}
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
