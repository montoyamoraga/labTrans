// hacer ejemplo de 3 proyectores
// pero con un computador
// en processing

boolean probando = true;

// TODO
// encontrar la diapo con mas texto
// para saber cuanto se demora
// en torno a un minuto por diapo

// hacer que la primera vez que recorren
// sea muy fijo y ordenado
// que la aleatoreidad ocurra en las siguientes pasadas

// proyector puede ser 0, 1, 2
int proyector = 0;

int diaposPorPantalla = 3;

void setup() {

  // conexion
  definirLocacionRemota();
  abrirPuertoOSC();
  enviarMensajeOSC();

  // tipografia
  cargarFuentes();

  smooth();

  // 400px cada una
  //size(1920, 1080);
  //size(960, 540);
  //size(480, 270);
  fullScreen();

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

  diapoActual.mostrarImagenes();
  diapoActual.mostrarLineas();
  diapoActual.mostrarTextos();
  diapoActual.actualizar();
}
