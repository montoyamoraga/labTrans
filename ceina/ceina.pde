// hacer ejemplo de 3 proyectores
// pero con un computador
// en processing

boolean probando = true;

// TODO
// tratar de hacer que las imagenes
// aparezcan, o giren, o tengan cierto fadeIn fadeOut

// TODO
// encontrar la diapo con mas texto
// para saber cuanto se demora
// en torno a un minuto por diapo

// hacer que la primera vez que recorren
// sea muy fijo y ordenado
// que la aleatoreidad ocurra en las siguientes pasadas

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
  //size(480, 270);
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
    textSize(32);
    textFont(fuentes[32]);
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
