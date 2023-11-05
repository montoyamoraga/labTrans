ArrayList<Diapo> diapos = new ArrayList<Diapo>();

void inicializarDiapos() {
  for (int i =0; i < textos.length; i++ ) {
    diapos.add(new Diapo(i));
    for (int texto = 0; texto < textos[i].length; texto++) {
      Diapo temp = diapos.get(i);
      temp.agregarTexto(textos[i][texto]);
    }
  }

  // agregar imagenes a cada diapo

  // agregar imagen correspondiente a ese proyector
  diapos.get(32).agregarImagen(estrellas.get(proyector * 2));
  diapos.get(32).agregarImagen(estrellas.get(proyector * 2 + 1));
}
