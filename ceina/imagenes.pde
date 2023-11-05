//Imagen dibujo24a;
//Imagen dibujo24b;
//Imagen dibujo25;

// pedir imagenes a erika
// 6 imagenes en total
// 2 por proyector
// cada imagen es cuadrada

ArrayList<Imagen> estrellas = new ArrayList<Imagen>();

void inicializarImagenes() {

  for (int i = 0; i < 6; i++) {
    estrellas.add(new Imagen("numeradas/" + str(i) + ".jpg"));
    estrellas.get(i).escalar(width/2);
    estrellas.get(i).posicionar((i%2)*width/2, 0);
  }

  //  dibujo24a = new Imagen("dibujo24a.jpg");
  //  dibujo24a.escalar(width/3);
  //  dibujo24a.posicionar(50*width/100, 20*height/100);

  //  dibujo24b = new Imagen("dibujo24b.jpg");
  //  dibujo24b.escalar(width/6);
  //  dibujo24b.posicionar(80*width/100, 30*height/100);

  //  dibujo25 = new Imagen("dibujo25.jpg");
  //  dibujo25.escalar(width/2);
  //  dibujo25.posicionar(25*width/100, 10*height/100);
}
