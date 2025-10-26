int tamanoMetadata = 20;

void mostrarMetadata() {
  configurarMetadata();
  text("diapo " + nf(diapoActual, 2) + "/" + str(diapoTotal - 1),
    porcentajeX(90.0),
    porcentajeY(90.0)
    );
}


void mostrarDiapo(int diapo) {
  if (diapo == 0) {
  } else if (diapo == 1) {
    mostrarImagen(0);
  } else if (diapo == 2) {
    // grandes exitos
    mostrarImagen(20);
    //mostrarImagen(0);
  } else if (diapo == 3) {
    mostrarImagen(21);
    //Diapo diapoActual = diapos.get(0);
    //diapoActual.mostrarLineas();
    //diapoActual.mostrarTextos();
    //diapoActual.mostrarImagenes();
    //text(" ",
    //  porcentajeX(50),
    //  porcentajeY(50)
    //  );
  } else if (diapo == 4) {
    mostrarImagen(22);
  } else if (diapo == 5) {
    // 2 verticales de estrellas
  } else if (diapo == 6) {
    // bnp
    mostrarImagen(25);
  } else if (diapo == 7) {
    mostrarImagen(15);
  } else if (diapo == 8) {
    mostrarImagen(7);
  } else if (diapo == 9) {
    mostrarImagen(9);
    //mostrarVideoDangello();
  } else if (diapo == 10) {
    // LENGUA SENAS
    mostrarImagen(23);
  } else if (diapo == 11) {
    // LENGUA SENAS
    mostrarImagen(24);
  } else if (diapo == 12) {
    // dangello
    mostrarVideoDangello();
  } else if (diapo == 13) {
    // diagrama completo
    mostrarVideoBucle();
  } else if (diapo == 14) {
    // APURAR
    Diapo diapoActual = diapos.get(0);
    diapoActual.mostrarLineas();
    diapoActual.mostrarTextos();
    diapoActual.mostrarImagenes();
    diapoActual.actualizar();
    // CONTUY
  } else if (diapo == 15) {
    // mimPaseo
    mostrarImagen(26);
  } else if (diapo == 16) {
    // mimArbusto
    mostrarImagen(27);
  } else if (diapo == 17) {
    //mostrarImagen(3);
  } else if (diapo == 18) {
    //mostrarImagen(4);
  } else if (diapo == 19) {
    for (int i = 0; i < equipoLabTrans.length; i++) {
      text(equipoLabTrans[i],
        porcentajeX(50),
        porcentajeY(25 + 5*i)
        );
    }
  }
}
