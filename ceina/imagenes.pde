ArrayList<Imagen> estrellas = new ArrayList<Imagen>();

void inicializarImagenes() {

  for (int i = 0; i < 6; i++) {
    estrellas.add(new Imagen("numeradas/" + str(i) + ".jpg"));
    estrellas.get(i).escalar(width/2);
    estrellas.get(i).posicionar((i%2)*width/2, 0);
  }

}
