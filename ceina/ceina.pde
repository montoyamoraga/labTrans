// consideraciones tecnicas

boolean prueba = false;

Flechita[] flechitas = new Flechita[10];

void setup() {
  size(800, 600);
  //fullScreen();
  background(255);

  textAlign(CENTER);
  textSize(32);

  for (int i = 0; i < flechitas.length; i++) {
    flechitas[i] = new Flechita();
  }
}

void draw() {

  //fill(255, 255/2);
  //rect(0, 0, width, height);

  fill(0);

  for (int i = 0; i < flechitas.length; i++) {
    flechitas[i].actualizarFlechita();
    flechitas[i].dibujarFlechita();
  }
}
