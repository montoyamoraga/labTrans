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
  IntList textoCaracterActual = new IntList();
  IntList textoLineas = new IntList();
  FloatList textoX = new FloatList();
  FloatList textoY = new FloatList();
  IntList textoTamano = new IntList();
  //FloatList transparencia = new FloatList();
  //float deltaTransparencia;

  int textoActual;
  long tiempoRefresco;
  long tiempoActualizacion;
  // nuevos
  long tiempoEntreCaracteres;
  long tiempoCaracterAnterior;

  Diapo(int nuevoNumero) {
    numero = nuevoNumero;
    textoActual = 0;
    tiempoRefresco = 1000;
    tiempoActualizacion = millis();
    tiempoEntreCaracteres = 50;
    tiempoCaracterAnterior = millis();
    //deltaTransparencia = 0.5;
  }

  void inicializar() {
    textoActual = 0;
    tiempoActualizacion = millis();
    //deltaTransparencia = 0.5;
    //for (int i = 0; i < transparencia.size(); i++) {
    //  transparencia.set(i, 0);
    //}
  }

  void agregarTexto(String nuevoTexto) {
    texto.append(nuevoTexto);
    int contadorLineas = 1 + nuevoTexto.split("\n").length;
    textoLineas.append(contadorLineas);
    //transparencia.append(0);
    int nuevoTamano = int(random(16, 32));
    textoCaracterActual.append(0);
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
      fill(0);
      textSize(textoTamano.get(i));
      //text(texto.get(i).substring(0, textoCaracterActual.get(i) + 1),
      //text(texto.get(i),
      text(texto.get(i).substring(0, textoCaracterActual.get(i)),
        textoX.get(i),
        textoY.get(i));
    }
  }

  void actualizar() {

    if (millis() - tiempoCaracterAnterior > tiempoEntreCaracteres) {
      for (int i = 0; i < texto.size(); i++) {
        textoCaracterActual.increment(i);
        textoCaracterActual.set(
          i,
          constrain(
          textoCaracterActual.get(i),
          0,
          texto.get(i).length()
          ));
      }

      //textoActual = constrain(textoActual, 0, texto.size() - 1);
      tiempoCaracterAnterior = millis();
    }



    if (millis() - tiempoActualizacion > tiempoRefresco) {
      textoActual++;
      textoActual = constrain(textoActual, 0, texto.size() - 1);
      tiempoActualizacion = millis();
    }

    for (int i = 0; i <= textoActual; i++) {

      textSize(textoTamano.get(i));

      textoX.set(i, textoX.get(i));
      textoY.set(i, textoY.get(i));

      //transparencia.set(i, transparencia.get(i) + deltaTransparencia);

      //if (transparencia.get(i) > 255) {
      //  transparencia.set(i, 255);
      //}
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
