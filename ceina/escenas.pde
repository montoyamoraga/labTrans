int escenaActual = 0;
long tiempoEntreDiapos;
long tiempoAnterior;
String escenaSiguiente = "";

void inicializarTiempos() {
  tiempoEntreDiapos =  1* 1000 * 60;
  tiempoAnterior = millis();
}

void actualizarEscenaActual() {

  if (millis() - tiempoAnterior > tiempoEntreDiapos) {
    escenaActual++;
    escenaActual = escenaActual % textosTodos.length;
    tiempoAnterior = millis();
  }
}

void keyPressed() {
  if (key == ' ') {
    escenaActual++;
    escenaActual = escenaActual % textosTodos.length;
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
  } else if (key == RETURN || key == ENTER) {
    if (int(escenaSiguiente) < textosTodos.length) {
      escenaActual = int(escenaSiguiente);
      diapos.get(escenaActual).inicializar();
    }
    escenaSiguiente = "";
  }
}
