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
  ArrayList<Texto> textos = new ArrayList<Texto>();
  ArrayList<Linea> lineas = new ArrayList<Linea>();

  IntList textoNumeroLineas = new IntList();

  int textoActual;
  long tiempoRefresco;
  long tiempoActualizacion;
  // nuevos
  long tiempoEntreCaracteres;
  long tiempoCaracterAnterior;

  Diapo(int nuevoNumero) {
    numero = nuevoNumero;
    textoActual = 0;
    tiempoRefresco = 100;
    tiempoActualizacion = millis();
    tiempoEntreCaracteres = 100;
    tiempoCaracterAnterior = millis();
  }

  void inicializar() {
    textoActual = 0;
    tiempoActualizacion = millis();
    inicializarDiapos();
  }

  void agregarTexto(String nuevoTexto, float[] params) {

    Texto temp = new Texto(nuevoTexto, params);

    //print(temp.texto);
    textos.add(temp);

    int contadorLineas = 1 + nuevoTexto.split("\n").length;

    textoNumeroLineas.append(contadorLineas);
  }

  void agregarLineas(
    float[][] nuevosTextosParams,
    int[][] nuevosTextosLineas) {
    for (int i = 0; i < nuevosTextosLineas.length; i++) {

      // nuevosTextosParams[texto][angulo posX posY tamano]
      float inicioX = nuevosTextosParams[nuevosTextosLineas[i][0]][1] * width/100;
      float inicioY = nuevosTextosParams[nuevosTextosLineas[i][0]][2] * height/100;
      float finX = nuevosTextosParams[nuevosTextosLineas[i][1]][1] * width/100;
      float finY = nuevosTextosParams[nuevosTextosLineas[i][1]][2] * height/100;

      PVector inicio = new PVector(inicioX, inicioY);
      PVector fin = new PVector(finX, finY);

      Linea temp = new Linea(color(0), inicio, fin);

      lineas.add(temp);
    }
  }

  void mostrarTextos() {
    for (int i = 0; i < textos.size(); i++) {
      Texto temp = textos.get(i);
      textSize(temp.tamano);

      // cajita blanca abajo del texto
      pushStyle();
      fill(255);
      //stroke(0);
      noStroke();
      rectMode(CENTER);
      rect(
        temp.posX * width/100,
        temp.posY * height/100,
        textWidth(temp.texto),
        0.7 * textoNumeroLineas.get(i) * (textAscent() + textDescent())
        );
      popStyle();

      pushStyle();
      pushMatrix();
      textSize(temp.tamano);
      fill(0);
      stroke(0);
      translate(
        temp.posX * width/100,
        temp.posY * height/100);
      rotate(radians(temp.angulo));
      text(temp.texto.substring(0, temp.caracterActual),
        0,
        0
        );
      popMatrix();
      popStyle();
    }
  }

  void mostrarLineas() {
    for (int i = 0; i < lineas.size(); i ++) {
      Linea temp = lineas.get(i);
      temp.dibujar();
    }
  }

  void actualizar() {

    for (int i = 0; i < lineas.size(); i ++) {
      Linea temp = lineas.get(i);
      fill(0);
      temp.actualizar();
    }

    if (millis() - tiempoCaracterAnterior > tiempoEntreCaracteres) {
      for (int i = 0; i < textos.size(); i++) {
        Texto temp = textos.get(i);
        temp.aumentarCaracter();
      }
      tiempoCaracterAnterior = millis();
    }

    if (millis() - tiempoActualizacion > tiempoRefresco) {
      textoActual++;
      textoActual = constrain(textoActual, 0, textos.size() - 1);
      tiempoActualizacion = millis();
    }

    for (int i = 0; i <= textoActual; i++) {
      Texto temp = textos.get(i);
      textSize(temp.tamano);
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

ArrayList<Diapo> diapos = new ArrayList<Diapo>();

void inicializarDiapos() {
  for (int i = 0; i < textosTodos.length; i++ ) {
    diapos.add(new Diapo(i));
    for (int texto = 0; texto < textosTodos[i].length; texto++) {
      Diapo temp = diapos.get(i);
      temp.agregarTexto(textosTodos[i][texto], textosParams[i][texto]);
      temp.agregarLineas(textosParams[i], textosLineas[i]);
    }
  }

  // agregar imagen correspondiente a ese proyector
  diapos.get(32).agregarImagen(estrellas.get(proyector * 2));
  diapos.get(32).agregarImagen(estrellas.get(proyector * 2 + 1));
}
