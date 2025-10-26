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
    // mim carolina
    mostrarImagen(28);
  } else if (diapo == 18) {
    mostrarImagen(29);
  } else if (diapo == 19) {
    mostrarImagen(30);
    //for (int i = 0; i < equipoLabTrans.length; i++) {
    //  text(equipoLabTrans[i],
    //    porcentajeX(50),
    //    porcentajeY(25 + 5*i)
    //    );
    //}
  } else if (diapo == 20) {
    mostrarImagen(31);
  } else if (diapo == 21) {
    mostrarImagen(32);
  } else if (diapo == 22) {
    mostrarImagen(33);
  } else if (diapo == 23) {
    mostrarImagen(34);
  } else if (diapo == 24) {
    mostrarImagen(35);
  } else if (diapo == 25) {
    mostrarImagen(36);
  } else if (diapo == 26 ) {
    mostrarImagen(37);
  } else if (diapo == 27) {
    mostrarImagen(38);
  } else if (diapo == 28) {
    mostrarImagen(39);
  } else if (diapo == 29) {
    mostrarImagen(40);
  } else if (diapo == 30) {
    mostrarImagen(17);
  } else if (diapo == 31) {
    mostrarImagen(18);
  } else if (diapo == 32) {
  } else if (diapo == 33) {
  } else if (diapo == 34) {
  }
}
