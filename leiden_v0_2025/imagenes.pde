String[] nombresImagenes = {
  // 0
  "estrellas.jpg",
  // 1
  "bosque.jpg",
  // 2
  "camino.jpg",
  // 3
  "laguna.jpg",
  // 4
  "pataGuanaco.jpg",
  // 5
  "ceina1.jpg",
  // 6
  "ceina1.jpg",
  // 7
  "bnpErika.png",
  // 8
  "bnp1.png",
  // 9
  "bnpPublico.png",
  // 10
  "bnp3.png",
  // 11
  "bnp4.png",
  // 12
  "bnp5.png",
  // 13
  "bnp6.png",
  // 14
  "bnp6.png",
  // 15
  "bnpAndrea.png",
  // 16
  "bnp9.png",
  // 17
  "nucleo0.png",
  // 18
  "nucleo1.png",
  // 19
  "nucleo2.png",
  // 20
  "ceinaEstrellas.jpg",
  // 21
  "ceinaAaronFrancisco.jpg",
  // 22
  "ceinaDiagramas.jpg",
  // 23
  "lenguaSenas0.png",
  // 24
  "lenguaSenas1.png",
  // 25
  "bnpDangello.png",
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
