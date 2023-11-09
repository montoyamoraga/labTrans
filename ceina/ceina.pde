// hacer ejemplo de 3 proyectores
// pero con un computador
// en processing

boolean probando = true;

boolean modoDiapos = true;

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

  noCursor();

  // 400px cada una
  //size(1920, 1080);
  // size(960, 540);
  //size(480, 270);
  fullScreen();

  inicializarTiempos();
  inicializarImagenes();
  inicializarDiapos();

  background(255);

  frameRate(40);
}

void draw() {

  //background(255);

  if (modoDiapos) {

    //agregar transparencia encima
    pushStyle();
    rectMode(CORNER);
    noStroke();
    fill(255, 40 * 255/100);
    rect(0, 0, width, height);
    popStyle();
    if (probando) {
      pushStyle();
      textSize(32);
      textFont(fuentes[32]);
      textAlign(CENTER, CENTER);
      fill(negro);
      text(escenaActual, 90*width/100, 10*height/100);
      popStyle();
    }

    actualizarEscenaActual(false);

    Diapo diapoActual = diapos.get(escenaActual);

    diapoActual.mostrarImagenes();
    diapoActual.mostrarLineas();
    diapoActual.mostrarTextos();
    diapoActual.actualizar();

    // figura especial diapo30
    if (escenaActual == 29) {
      pushStyle();
      rectMode(CENTER);
      stroke(negro, 40 * 255/100);
      noFill();
      translate(width/2, height/2);
      rotate(radians(30));
      rect(0,
        0,
        25*width/100,
        70*height/100);
      popStyle();
    }


    // figura especial diapo30
    if (escenaActual == 30) {
      pushStyle();
      rectMode(CENTER);
      stroke(negro, 40 * 255/100);
      noFill();
      translate(width/2, height/2);
      rotate(radians(15));
      rect(0,
        0,
        25*width/100,
        70*height/100);
      popStyle();
    }

    //// agregar transparencia encima
    //pushStyle();
    //rectMode(CORNER);
    //noStroke();
    //fill(255, 40 * 255/100);
    //rect(0, 0, width, height);
    //popStyle();
  }
  // modo estrellas
  else {
    pushStyle();
    rectMode(CORNER);
    noStroke();
    fill(0, 255);
    rect(0, 0, width, height*10/100);
    rect(0, height*90/100, width, height);
    popStyle();

    Imagen estrellaIzquierda = estrellas.get(0);
    Imagen estrellaDerecha = estrellas.get(1);

    estrellaIzquierda.mostrar();
    estrellaDerecha.mostrar();
  }
}
