// consideraciones tecnicas


boolean prueba = false;

int i = 0;

Linea[] lineas = new Linea[10];

int diaposPantalla = 3;

void setup() {
  
  definirLocacionRemota();
  abrirPuertoOSC();
  
  enviarMensajeOSC();

  cargarImagenes();

  // para 3 diapos
  // 400px cada una
  size(1200, 600);
  //fullScreen();
  background(255);

  textAlign(CENTER);
  textSize(32);

  pushMatrix();
  translate(width/4, height/4);

  image(diagrama, 0, 0, width/2, height/2);

  popMatrix();

  for (int i = 0; i < lineas.length; i++) {
    lineas[i] = new Linea();
  }

  frameRate(2);

  fill(0);
  stroke(0);

  //for (int i = 0; i < aproximaciones.length; i++) {
  //  text(aproximaciones[i], width, height);
  //}

  for (int i = 0; i < textos[escenaActual].length; i++) {
    text(textos[escenaActual][i], width, height);
  }
}

void draw() {


  for (int diapo = 0; i < diaposPantalla; i++) {
    fill(0);
    stroke(0);

    float posX = random((i)*width/diaposPantalla,
      (i + 1)*width/diaposPantalla);
    float posY = random((i)*width/diaposPantalla,
      (i + 1)*height/diaposPantalla);

    line(width/2, height/2, posX, posY);

    //text(aproximaciones[i], posX, posY);
    textSize(random(16, 32));
    text(textos[escenaActual][i], posX, posY);

    i = i + 1;
    i = i % textos[escenaActual].length;

    fill(255, 255/5);
    rect(0, 0, width, height);

    //fill(0);

    for (int i = 0; i < lineas.length; i++) {
      lineas[i].actualizar();
      lineas[i].dibujar();
    }
  }
}
