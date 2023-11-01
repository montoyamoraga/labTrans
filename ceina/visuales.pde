
class Palabra {
  
  String texto;
  String tipografia;
  int tamano;
  Palabra() {
    texto = "";
    tamano = int(random(16, 32));
    tipografia = "Arial";
  }
}

// linea
class Linea {

  PVector posInicial;
  PVector posFinal;
  PVector posActual;

  float largo;

  color lineaStroke;
  float porcentaje;
  float paso;

  // constructor
  Linea() {
    lineaStroke = color(0);

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

    largo = PVector.dist(posFinal, posFinal);

    porcentaje = 0.0;
    paso = random(0.0001, 0.01);
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

    line(x0, y0, x1, y1);

    popStyle();
  }
}
