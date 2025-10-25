String[] nombresImagenes = {
  "bosque.jpg",
  "camino.jpg",
  "laguna.jpg",
  "pataGuanaco.jpg",
};


PImage[] imagenes = new PImage[nombresImagenes.length];

void cargarImagenes() {
  imageMode(CENTER);

  for (int i = 0; i < nombresImagenes.length; i++) {
    imagenes[i] = loadImage(nombresImagenes[i]);
  }


  for (int i = 0; i < imagenes.length; i++) {
    if (imagenes[i].width > imagenes[i].height) {
      imagenes[i].resize(floor(porcentajeX(90)), 0);
    } else {
      imagenes[i].resize(0, floor(porcentajeY(90)));
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
