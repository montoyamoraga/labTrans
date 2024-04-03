
// iniciar escenaActual, saltarse la 0
int escenaActual = proyector + 1;
long tiempoEntreDiapos;
long tiempoAnterior;
String escenaSiguiente = "";

void inicializarTiempos() {
  tiempoEntreDiapos =  int(1.2 * 1000 * 60);
  tiempoAnterior = millis();
}

void actualizarEscenaActual(boolean forzar) {

  if (forzar) {
    escenaActual = escenaActual + diaposPorPantalla;
    tiempoAnterior = millis();
  } else {
    if (millis() - tiempoAnterior > tiempoEntreDiapos) {
      escenaActual = escenaActual + diaposPorPantalla;
      tiempoAnterior = millis();
    }
  }

  // iniciar escenaActual, saltarse la 0
  if (escenaActual >= textosTodos.length - 1) {
    escenaActual = proyector + 1;
    inicializarDiapos();
  }
}

void keyPressed() {
  if (key == ' ') {
    actualizarEscenaActual(true);
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
