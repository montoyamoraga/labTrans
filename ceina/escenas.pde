int escenaActual = 0;

void keyPressed() {
  if (key == ' ') {
    i = 0;
    escenaActual++;
    escenaActual = escenaActual % textos.length;
    println("escenaActual: " + escenaActual);
    background(255);
  }
}
