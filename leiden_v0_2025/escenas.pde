
// iniciar escenaActual, saltarse la 0
int escenaActual = 0 + 2;
long tiempoEntreDiapos;
long tiempoAnterior;
String escenaSiguiente = "";

void inicializarTiempos() {
  // tiempoEntreDiapos =  int(1.2 * 1000 * 60);
  tiempoEntreDiapos =  int(0.9 * 1000 * 60);
  tiempoAnterior = millis();
}

void actualizarEscenaActual() {

  if (millis() - tiempoAnterior > tiempoEntreDiapos) {
    escenaActual = escenaActual + 1;
    tiempoAnterior = millis();
  }

  // iniciar escenaActual, saltarse la 0
  if (escenaActual >= textosTodos.length - 1) {
    escenaActual = 0 + 1;
    inicializarDiapos();
  }
}

void keyPressed() {
  if (key == ' ') {
    actualizarEscenaActual();
    //background(255);
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
