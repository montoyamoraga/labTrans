// factor para acortar lineas
float factorLineas = 0.05;

class Diapo {

  int numero;

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
    //inicializarDiapos();
  }

  void agregarTexto(String nuevoTexto, float[] params) {
    Texto temp = new Texto(nuevoTexto, params);
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

      PVector inicio;
      PVector fin;

      if (inicioX < finX && inicioY < finY) {
        inicio = new PVector(
          inicioX * (1 + factorLineas),
          inicioY * (1 + factorLineas));
        fin = new PVector(
          finX * (1 - factorLineas),
          finY * (1 - factorLineas));
      } else if (inicioX < finX && inicioY > finY) {
        inicio = new PVector(
          inicioX * (1 + factorLineas),
          inicioY * (1 - factorLineas));
        fin = new PVector(
          finX * (1 - factorLineas),
          finY * (1 + factorLineas));
      } else if (inicioX > finX && inicioY < finY) {
        inicio = new PVector(
          inicioX * (1 - factorLineas),
          inicioY * (1 + factorLineas));
        fin = new PVector(
          finX * (1 + factorLineas),
          finY * (1 - factorLineas));
      } else if (inicioX > finX && inicioY > finY) {
        inicio = new PVector(
          inicioX * (1 - factorLineas),
          inicioY * (1 - factorLineas));
        fin = new PVector(
          finX * (1 + factorLineas),
          finY * (1 + factorLineas));
      }

      inicio = new PVector(inicioX, inicioY);
      fin = new PVector(finX, finY);

      Linea temp = new Linea(nuevosTextosLineas[i][2], inicio, fin);

      lineas.add(temp);
    }
  }

  void mostrarTextos() {
    for (int i = 0; i < textos.size(); i++) {

      pushStyle();

      Texto temp = textos.get(i);
      textFont(fuentes[int(temp.tamano)]);
      // escalar tamano fuente
      float nuevoTamanoFuente = float(width) * temp.tamano / float(960);
      textSize(nuevoTamanoFuente);

      if (temp.alineacion == 0) {
        textAlign(LEFT, CENTER);
      } else if (temp.alineacion == 1) {
        textAlign(CENTER, CENTER);
      } else if (temp.alineacion == 2) {
        textAlign(RIGHT, CENTER);
      }
      if (temp.numeroColor == 0) {
        fill(negro);
        stroke(negro);
      } else if (temp.numeroColor == 1) {
        fill(azul);
        stroke(azul);
      }

      pushMatrix();

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
      pushStyle();
      Linea temp = lineas.get(i);
      temp.dibujar();
      popStyle();
    }
  }

  void actualizar() {

    for (int i = 0; i < lineas.size(); i ++) {
      pushStyle();
      Linea temp = lineas.get(i);
      fill(0);
      temp.actualizar();
      popStyle();
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
  diapos = new ArrayList<Diapo>();
  for (int i = 0; i < textosTodos.length; i++ ) {
    diapos.add(new Diapo(i));
    for (int texto = 0; texto < textosTodos[i].length; texto++) {
      Diapo temp = diapos.get(i);
      temp.agregarTexto(textosTodos[i][texto], textosParams[i][texto]);
      temp.agregarLineas(textosParams[i], textosLineas[i]);
    }

    for (int estrella = 0; estrella < estrellas.size(); estrella ++) {
      Imagen estrel = estrellas.get(estrella);
      if (i == estrel.numero) {
        Diapo temp = diapos.get(i);
        temp.agregarImagen(estrel);
      }
    }

    for (int dibujo = 0; dibujo < dibujos.size(); dibujo++) {
      Imagen dib = dibujos.get(dibujo);
      if (i == dib.numero) {
        Diapo temp = diapos.get(i);
        temp.agregarImagen(dib);
      }
    }
  }
}
