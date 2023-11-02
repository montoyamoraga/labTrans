// font inika de constanza artigas

PFont fuente;

void cargarFuente() {
  fuente = loadFont("Inika-64.vlw");
}

void definirFuente() {
  textFont(fuente);
  textAlign(LEFT, CENTER);
  textSize(64);
  stroke(0);
}
