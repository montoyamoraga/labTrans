// colores

color negro = color(0, 0, 0);
color azul = color(0, 0, 255);
color blanco = color(255, 255, 255);

// linea
class Linea {

  PVector posInicial;
  PVector posFinal;
  PVector posActual;

  float largo;

  color lineaStroke;
  float porcentaje;
  float paso;

  int numeroColor;

  // constructor
  Linea(int nuevoColor, PVector comienzo, PVector fin) {

    if (nuevoColor == 0) {
      lineaStroke = blanco;
    } else if (nuevoColor == 1) {
      lineaStroke = azul;
    }

    posInicial = comienzo;

    posActual = new PVector(
      posInicial.x,
      posInicial.y
      );

    posFinal = fin;

    largo = PVector.dist(posFinal, posFinal);

    porcentaje = 0.0;
    paso = random(0.001, 0.005);
  }

  void actualizar() {
    porcentaje = porcentaje + paso;
    porcentaje = constrain(porcentaje, 0.0, 1.0);
    posActual = PVector.lerp(posInicial, posFinal, porcentaje);
  }

  void dibujar() {
    pushStyle();

    // dibujar linea
    float x0 = posInicial.x;
    float y0 = posInicial.y;
    float x1 = posActual.x;
    float y1 = posActual.y;
    
    strokeWeight(0.5);
    stroke(lineaStroke);
    line(x0, y0, x1, y1);

    popStyle();
  }
}
