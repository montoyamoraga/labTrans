// probando = true con numeros en pantalla
// false sin numeros

boolean modoProgramar = true;

boolean probando = false;

// proyector puede ser 0, 1, 2
int proyector = 0;

boolean modoDiapos = true;

int diaposPorPantalla = 3;

void setup() {
  
  // ratios 16:9
  size(1280, 720);
  //size(1920, 1080);
  
  // ratios 4:3
  // size(800, 600);

  // conexion
  definirLocacionRemota();
  abrirPuertoOSC();
  enviarMensajeOSC();

  // tipografia
  cargarFuentes();
 
  smooth();

  // esconder cursor
  noCursor();

  inicializarTiempos();
  inicializarImagenes();
  inicializarDiapos();

  // fondo blanco
  background(blanco);

  frameRate(40);
}

void draw() {

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
    rect(0, 0, width, height * 75/100);
    rect(0, height * 75/100, width, height);
    popStyle();


    Imagen estrellaIzquierda = estrellas.get(proyector * 2);
    Imagen estrellaDerecha = estrellas.get(proyector * 2 + 1);

    estrellaIzquierda.mostrar();
    estrellaDerecha.mostrar();
  }
}
