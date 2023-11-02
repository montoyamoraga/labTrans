class Diapo {

  int numero;
  
  ArrayList<Imagen> imagenes = new ArrayList<Imagen>();
  
  StringList texto = new StringList();
  IntList textoLineas = new IntList();
  FloatList textoX = new FloatList();
  FloatList textoY = new FloatList();
  IntList direccionX = new IntList();
  IntList direccionY = new IntList();
  float deltaX;
  float deltaY;
  IntList textoTamano = new IntList();
  FloatList transparencia = new FloatList();
  float deltaTransparencia;

  int textoActual;
  long tiempoRefresco;
  long tiempoActualizacion;

  Diapo(int nuevoNumero) {
    numero = nuevoNumero;
    textoActual = 0;
    tiempoRefresco = 3000;
    tiempoActualizacion = millis();
    deltaX = 0.5;
    deltaY = 0.5;
    deltaTransparencia = 0.5;
  }

  void inicializar() {
    textoActual = 0;
    tiempoRefresco = 3000;
    tiempoActualizacion = millis();
    deltaX = 0.5;
    deltaY = 0.5;
    deltaTransparencia = 0.5;
    for (int i = 0; i < transparencia.size(); i++) {
      transparencia.set(i, 0);
    }
  }

  void agregarTexto(String nuevoTexto) {
    texto.append(nuevoTexto);
    int contadorLineas = 1 + nuevoTexto.split("\n").length;
    textoLineas.append(contadorLineas);
    transparencia.append(0);
    int nuevoTamano = int(random(16, 32));
    textoTamano.append(nuevoTamano);
    textSize(nuevoTamano);
    textoX.append(
      random(0,
      width - textWidth(nuevoTexto)));
    textoY.append(
      random((textAscent() + textDescent())/2,
      height - (textAscent() + textDescent())/2));
    direccionX.append(2 * int(random(0, 2)) - 1);
    direccionY.append(2 * int(random(0, 2)) - 1);
  }

  void mostrarTextos() {

    for (int i = 0; i <= textoActual; i++) {
      fill(0, transparencia.get(i));
      textSize(textoTamano.get(i));
      text(texto.get(i),
        textoX.get(i),
        textoY.get(i));
    }
  }

  void actualizar() {
    if (millis() - tiempoActualizacion > 3000) {
      textoActual++;
      textoActual = constrain(textoActual, 0, texto.size() - 1);
      tiempoActualizacion = millis();
    }

    for (int i = 0; i <= textoActual; i++) {

      textSize(textoTamano.get(i));

      if (textoX.get(i) < 0 ||
        textoX.get(i) > (width - textWidth(texto.get(i)))) {
        direccionX.set(i, - direccionX.get(i));
      }
      if (textoY.get(i) < textoLineas.get(i)*(textAscent() + textDescent())/2 ||
        textoY.get(i) > (height - textoLineas.get(i)*(textAscent() + textDescent())/2)) {
        direccionY.set(i, - direccionY.get(i));
      }

      textoX.set(i, textoX.get(i) + direccionX.get(i) * deltaX);
      textoY.set(i, textoY.get(i) + direccionY.get(i) * deltaY);

      transparencia.set(i, transparencia.get(i) + deltaTransparencia);

      if (transparencia.get(i) > 255) {
        transparencia.set(i, 255);
      }
    }
  }

  void agregarImagen(Imagen imagen) {
    imagenes.add(imagen);
  }

  void mostrarImagenes() {
    for (int i = 0; i < imagenes.size(); i++) {
      imagenes.get(i).mostrar();
    }
  }
}
