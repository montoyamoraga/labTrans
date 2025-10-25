// v0

int diapoActual = 0;
int diapoTotal = 20;

void setup() {
  size(800, 600);
  noCursor();
}

void draw() {
  background(negro);
  mostrarMetadata();
  mostrarDiapo(diapoActual);
}

void mousePressed() {
  diapoActual = diapoActual + 1;
  diapoActual = diapoActual % diapoTotal;
}
