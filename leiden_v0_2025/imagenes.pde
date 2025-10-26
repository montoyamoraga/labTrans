String[] nombresImagenes = {
  // 0
  "estrellas.jpg",
  // 1
  "ceina1.jpg",
  // 2
  "ceina1.jpg",
  // 3
  "ceina1.jpg",
  // 4
  "ceina1.jpg",
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
  "nucleo1.jpg",
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
  // 28
  "mim0.jpg",
  // 29
  "mim1.jpg",
  // 30
  "mim2.jpg",
  // 31
  "mim3.jpg",
  // 32
  "mim4.jpg",
  // 33
  "mim5.jpg",
  // 34
  "mim6.jpg",
  // 35
  "mim7.jpg",
  // 36
  "mim8.jpg",
  // 37
  "mim9.jpg",
  // 38
  "mim10.jpg",
  // 39
  "diagramaMim1.jpg",
  // 40
  "diagramaMim2.jpg",
};

String[] nombresImagenesVerticales = {

};


PImage[] imagenes = new PImage[nombresImagenes.length];

void cargarImagenes() {
  imageMode(CENTER);

  for (int i = 0; i < nombresImagenes.length; i++) {
    if (nombresImagenes[i] != " ") {
      imagenes[i] = loadImage(nombresImagenes[i]);
    }
  }


  for (int i = 0; i < imagenes.length; i++) {
    if (imagenes[i].width > imagenes[i].height) {
      imagenes[i].resize(150 + ceil(porcentajeX(100)), 0);
      // imagenes[i].resize(0, ceil(porcentajeY(100)));
    } else {
      imagenes[i].resize(0, 150 + ceil(porcentajeY(100)));
      // imagenes[i].resize(ceil(porcentajeX(100)), 0);
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
