String[] nombresImagenes = {
  // 00
  "estrellas.jpg",
  // 01
  "ceinaEstrellas.jpg",
  // 02
  "ceinaAaronFrancisco.jpg",
  // 03
  "ceinaDiagramas.jpg",
  // 04
  "ceinaVerticales.jpg",
  // 05
  "bnpDangello.jpg",
  // 06
  "bnpAndrea.jpg",
  // 07
  "bnpErika.jpg",
  // 08
  "bnpPublico.jpg",
  // 09
  "lenguaSenas.jpg",
  // 10
  "contuyFungi.jpg",
  // 11
  "contuyHuerta.jpg",
  // 12
  "contuyMesa.jpg",
  // 13
  "contuyPaisaje.jpg",
  // 14
  "contuySenora.jpg",
   // 15
  "mimCaminata.jpg",
  // 16
  "mimArbusto.jpg",
  // 17
  "mim0.jpg",
  // 18
  "mim1.jpg",
  // 19
  "mim2.jpg",
  // 20
  "mim3.jpg",
  // 21
  "mim4.jpg",
  // 22
  "mim5.jpg",
  // 23
  "mim6.jpg",
  // 24
  "mim7.jpg",
  // 25
  "mim8.jpg",
  // 26
  "mim9.jpg",
  // 27
  "mim10.jpg",
  // 28
  "diagramaMim1.jpg",
  // 29
  "diagramaMim2.jpg",
  // 30
  "nucleo0.jpg",
  // 31
  "nucleo1.jpg",
  // 32
  "ceinaEstrellas.jpg",
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
