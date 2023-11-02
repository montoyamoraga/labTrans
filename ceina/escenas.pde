int escenaActual = 0;
String escenaSiguiente = "";

void keyPressed() {
  if (key == ' ') {
    i = 0;
    escenaActual++;
    escenaActual = escenaActual % textos.length;
    background(255);
  } else if (
    key == '0' ||
    key == '1' ||
    key == '2' ||
    key == '3' ||
    key == '4' ||
    key == '5' ||
    key == '6' ||
    key == '7' ||
    key == '8' ||
    key == '9') {
    escenaSiguiente = escenaSiguiente + key;
  }
  else if (key == RETURN || key == ENTER) {
    if (int(escenaSiguiente) < textos.length) {
      escenaActual = int(escenaSiguiente);
      diapos.get(escenaActual).inicializar();
    }
    escenaSiguiente = "";
  }
}
