// proyector puede ser 0, 1, 2
int proyector = 2;

// agregar splash screen
// entre cada triada de proyectores
// por ejemplo, palabra silencio
// que atraviesa las tres pantallas
// si len cio

// la primera diapo
// que no tenga creditos
// sino que diga memoria
// me mo ria entre los 3 proyectores

// o linea en vez de palabra
// una linea que viaja y termina
// en una de las preguntas importantes

boolean prueba = false;


Linea[] lineas = new Linea[10];

int diaposPantalla = 3;

void setup() {

  // conexion
  definirLocacionRemota();
  abrirPuertoOSC();
  enviarMensajeOSC();

  // tipografia
  cargarFuente();
  definirFuente();

  smooth();

  // 400px cada una
  size(1200, 600);
  //fullScreen();
  
  imageMode(CORNER);
  inicializarImagenes();

  inicializarDiapos();

  background(255);

  frameRate(40);
}

void draw() {

  background(255);

  textSize(64);
  fill(negro);
  text(escenaActual, 90*width/100, 10*height/100);

  Diapo diapoActual = diapos.get(escenaActual);

  diapoActual.mostrarImagenes();
  diapoActual.actualizar();
  diapoActual.mostrarTextos();
  
}
