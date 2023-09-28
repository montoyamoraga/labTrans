
class Palabra {
  Palabra() {
  }
}


class Flechita {

  PVector posInicial;
  PVector posFinal;
  PVector posActual;

  float angulo;
  float largo;

  color flechitaStroke;
  float porcentaje;
  float paso;

  // constructor
  Flechita() {
    flechitaStroke = color(0);

    posInicial = new PVector(
      int(random(width)),
      int(random(height))
      );

    posActual = new PVector(
      posInicial.x,
      posInicial.y
      );

    posFinal = new PVector(
      int(random(width)),
      int(random(height))
      );

    //angulo = PVector.angleBetween(posInicial, posFinal);

    angulo = atan2(
      //posFinal.y - posFinal.x,
      //posInicial.y - posInicial.x
      posFinal.y - posInicial.y,
      posFinal.x - posInicial.x
      );

    //if (random(1) > 0.5) {
    //  angulo = -angulo;
    //}
    //if (random(1) > 0.5) {
    //  angulo = angulo + HALF_PI;
    //}

    largo = PVector.dist(posFinal, posFinal);

    porcentaje = 0.0;
    paso = random(0.0001, 0.01);
  }

  void actualizarFlechita() {
    porcentaje = porcentaje + paso;
    porcentaje = constrain(porcentaje, 0.0, 1.0);
    posActual = PVector.lerp(posInicial, posFinal, porcentaje);
  }

  void dibujarFlechita() {
    pushStyle();
    // dibujar linea
    if (porcentaje < 1.0) {
      float x0 = posInicial.x;
      float y0 = posInicial.y;
      float x1 = posActual.x;
      float y1 = posActual.y;
      line(x0, y0, x1, y1);
    }
    //dibujar cabeza de flecha
    else {
      pushMatrix();
      translate(posFinal.x, posFinal.y);
      rotate(angulo);
      line(0, 0, porcentaje * largo, 0);
      if (porcentaje > 0.99) {
        line(largo, 0, largo - 8, -8);
        line(largo, 0, largo - 8, 8);
      }

      popMatrix();
    }

    popStyle();
  }
}
