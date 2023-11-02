// consideraciones tecnicas

boolean prueba = false;
int i = 0;

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
  fill(0);
  text(escenaActual, 90*width/100, 10*height/100);

  Diapo diapoActual = diapos.get(escenaActual);

  diapoActual.mostrarImagenes();
  diapoActual.actualizar();
  diapoActual.mostrarTextos();
  
}
