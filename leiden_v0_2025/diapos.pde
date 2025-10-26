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
    // fondo negro
  } else if (diapo == 1) {
    mostrarImagen(0);
  } else if (diapo == 2) {
    // grandes exitos
    mostrarImagen(1);
  } else if (diapo == 3) {
    mostrarImagen(2);
  } else if (diapo == 4) {
    mostrarImagen(3);
  } else if (diapo == 5) {
    // 2 verticales de estrellas
    mostrarImagen(4);
  } else if (diapo == 6) {
    // bnp
    mostrarImagen(5);
  } else if (diapo == 7) {
    mostrarImagen(6);
  } else if (diapo == 8) {
    mostrarImagen(7);
  } else if (diapo == 9) {
    mostrarImagen(8);
  } else if (diapo == 10) {
    // LENGUA SENAS
    mostrarImagen(9);
  } else if (diapo == 11) {
    mostrarVideoDangello();
  } else if (diapo == 12) {
   // diagrama completo
    mostrarVideoBucle();
  } else if (diapo == 13) {
   // APURAR
    Diapo diapoActual = diapos.get(0);
    diapoActual.mostrarLineas();
    diapoActual.mostrarTextos();
    diapoActual.mostrarImagenes();
    diapoActual.actualizar();
  } else if (diapo == 14) {
    // contuy
  mostrarImagen(10);
  } else if (diapo == 15) {
    mostrarImagen(11);
  } else if (diapo == 16) {
    mostrarImagen(12);
  } else if (diapo == 17) {
    mostrarImagen(13);
  } else if (diapo == 18) {
    mostrarImagen(14);
  } else if (diapo == 19) {
    // mimPaseo
    mostrarImagen(15);
  } else if (diapo == 20) {
    // mimArbusto
    mostrarImagen(16);
  } else if (diapo == 21) {
    // inicio mim carolina
    mostrarImagen(17);
  } else if (diapo == 22) {
    mostrarImagen(18);
  } else if (diapo == 23) {
    mostrarImagen(19);    
  } else if (diapo == 24) {
    mostrarImagen(20);
  } else if (diapo == 25) {
    mostrarImagen(21);
  } else if (diapo == 26 ) {
    mostrarImagen(22);
  } else if (diapo == 27) {
    mostrarImagen(23);
  } else if (diapo == 28) {
    mostrarImagen(24);
  } else if (diapo == 29) {
    mostrarImagen(25);
  } else if (diapo == 30) {
    mostrarImagen(26);
  } else if (diapo == 31) {
     mostrarImagen(27);
  } else if (diapo == 32) {
    mostrarImagen(28);
  } else if (diapo == 33) {
    mostrarImagen(29);
  } else if (diapo == 34) {
    mostrarImagen(30);
  }
  else if (diapo == 35) {
  mostrarImagen(31);
  }
  else if (diapo == 36) {

  }
  else if (diapo == 37) {

  }
  else if (diapo == 38) {
  }
  else if (diapo == 39) {
    //for (int i = 0; i < equipoLabTrans.length; i++) {
    //  text(equipoLabTrans[i],
    //    porcentajeX(50),
    //    porcentajeY(25 + 5*i)
    //    );
    //}
  }
}
