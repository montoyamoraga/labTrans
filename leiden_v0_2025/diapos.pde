int tamanoMetadata = 20;

void mostrarMetadata() {
  configurarMetadata();
  text("diapo " + nf(diapoActual, 2) + "/" + str(diapoTotal - 1),
    porcentajeX(70.0),
    porcentajeY(90.0)
    );
}


void mostrarDiapo(int diapo) {
  if (diapo == 0) {

    text("diapo0", 50 * width/100, 50 * height/100);
    configurarFecha();

    text(dia + "/" + mes + "/" + agno,
      porcentajeX(70),
      porcentajeY(70)
      );
  } else if (diapo == 1) {
    text(escuelaArte,
      porcentajeX(50),
      porcentajeY(50)
      );
  } else if (diapo == 2) {
    text(labca,
      porcentajeX(50),
      porcentajeY(50)
      );
  } else if (diapo == 3) {
    text(labTrans,
      porcentajeX(50),
      porcentajeY(50)
      );
  } else if (diapo == 4) {
  } else if (diapo == 5) {
  } else if (diapo == 6) {
  } else if (diapo == 7) {
  } else if (diapo == 8) {
  } else if (diapo == 9) {
  } else if (diapo == 10) {
  } else if (diapo == 11) {
  } else if (diapo == 12) {
  } else if (diapo == 13) {
  } else if (diapo == 14) {
  } else if (diapo == 15) {
  } else if (diapo == 16) {
  } else if (diapo == 17) {
  } else if (diapo == 18) {
  } else if (diapo == 19) {
    for (int i = 0; i < equipoLabTrans.length; i++) {
      text(equipoLabTrans[i],
        porcentajeX(50),
        porcentajeY(25 + 5*i)
        );
    }
  }
}
