class Diapo {

  int numero;

  // hacer que el texto aparezca de a poquito
  // caracter a caracter
  // mover una, la mas significativa de la diapo
  // o mover ninguna
  // mejor respetar la logica x,y del diagrama
  // hacer un rectangulo blanco abajo de cada palabra
  // para esconder donde termina cada linea

  ArrayList<Imagen> imagenes = new ArrayList<Imagen>();

  StringList texto = new StringList();
  IntList textoLineas = new IntList();
  FloatList textoX = new FloatList();
  FloatList textoY = new FloatList();
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
    deltaTransparencia = 0.5;
  }

  void inicializar() {
    textoActual = 0;
    tiempoRefresco = 3000;
    tiempoActualizacion = millis();
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

      textoX.set(i, textoX.get(i));
      textoY.set(i, textoY.get(i));

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
