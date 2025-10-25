// v0

int diapoActual = 0;
int diapoTotal = 20;

void setup() {

  size(1280, 720);

  noCursor();

  cargarImagenes();
  cargarFuentes();
  cargarVideos();

  inicializarImagenes();
  inicializarDiapos();

  frameRate(30);
}

void draw() {

  pushStyle();
  rectMode(CORNER);
  noStroke();
  fill(0, 40 * 255/100);
  rect(0, 0, width, height);
  popStyle();

  //background(negro);
  //mostrarMetadata();
  mostrarDiapo(diapoActual);
}

void mousePressed() {
  diapoActual = diapoActual + 1;
  diapoActual = diapoActual % diapoTotal;
}

void keyPressed() {
  if (keyCode == LEFT || keyCode == UP) {
    diapoActual = diapoActual - 1;
  } else if (keyCode == RIGHT || keyCode == DOWN) {
    diapoActual = diapoActual + 1;
  }
}
