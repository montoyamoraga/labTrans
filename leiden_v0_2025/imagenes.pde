String[] nombresImagenes = {
  // 0
  "estrellas.jpg",
  // 1
  "carolinaBosque.jpg",
  // 2
  "carolinaCamino.jpg",
  // 3
  "carolinaLaguna.jpg",
  // 4
  "carolinaPataGuanaco.jpg",
  // 5
  "ceina1.jpg",
  // 6
  "ceina1.jpg",
  // 7
  "bnpErika.jpg",
  // 8
  "bnp1.jpg",
  // 9
  "bnpPublico.jpg",
  // 10
  "bnp3.jpg",
  // 11
  "bnp4.jpg",
  // 12
  "bnp5.jpg",
  // 13
  "bnp6.jpg",
  // 14
  "bnp6.jpg",
  // 15
  "bnpAndrea.jpg",
  // 16
  "bnp9.jpg",
  // 17
  "nucleo0.jpg",
  // 18
  "nucleo1.jpg",
  // 19
  "nucleo2.jpg",
  // 20
  "ceinaEstrellas.jpg",
  // 21
  "ceinaAaronFrancisco.jpg",
  // 22
  "ceinaDiagramas.jpg",
  // 23
  "lenguaSenas0.jpg",
  // 24
  "lenguaSenas1.jpg",
  // 25
  "bnpDangello.jpg",
  // 26
  "mimCaminata.jpg",
  // 27
  "mimArbusto.jpg",
};

String[] nombresImagenesVerticales = {

};


PImage[] imagenes = new PImage[nombresImagenes.length];

void cargarImagenes() {
  imageMode(CENTER);

  for (int i = 0; i < nombresImagenes.length; i++) {
    imagenes[i] = loadImage(nombresImagenes[i]);
  }


  for (int i = 0; i < imagenes.length; i++) {
    if (imagenes[i].width > imagenes[i].height) {
      imagenes[i].resize(floor(porcentajeX(100)), 0);
    } else {
      imagenes[i].resize(0, floor(porcentajeY(100)));
    }
  }
}

void mostrarImagen(int numeroImagen) {

  image(
    imagenes[numeroImagen],
    porcentajeX(50),
    porcentajeY(50)
    );
}
