// miercoles
// hacer ejemplo de 3 proyectores
// pero con un computador
// en processing

boolean probando = true;

// proyector puede ser 0, 1, 2
int proyector = 2;

int diaposPorPantalla = 3;

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
  //size(1920, 1080);
  size(960, 540);
  //fullScreen();

  inicializarTiempos();
  inicializarImagenes();
  inicializarDiapos();

  background(255);

  frameRate(40);
}

void draw() {

  background(255);

  if (probando) {
    pushStyle();
    textSize(64);
    textFont(fuentes[64]);
    textAlign(CENTER, CENTER);
    fill(negro);
    text(escenaActual, 90*width/100, 10*height/100);
    popStyle();
  }

  actualizarEscenaActual();

  Diapo diapoActual = diapos.get(escenaActual);

  //diapoActual.actualizar();
  diapoActual.mostrarImagenes();
  diapoActual.mostrarLineas();
  diapoActual.mostrarTextos();
  diapoActual.actualizar();
}
