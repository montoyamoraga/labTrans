let fuentes = [];

let misPreguntasIniciales;

class PreguntaInicial {
  constructor(angulo, posX, posY, tamano, coloreado) {
    this.datos =
      misPreguntasIniciales.preguntasPrincipales[
        Math.floor(
          Math.random() *
            misPreguntasIniciales.preguntasPrincipales.length,
        )
      ];

    this.preguntaPrincipalTexto = this.datos.preguntaPrincipal;
    this.preguntasRelacionadas = this.datos.preguntasRelacionadas;

    this.angulo = angulo;
    this.posX = posX;
    this.posY = posY;
    this.tamano = tamano;
    this.coloreado = coloreado;
    this.caracterActual = 0;
  }

  aumentarCaracter() {
    if (Math.random() < 0.1) {
      this.caracterActual = this.caracterActual + 1;
      this.caracterActual = constrain(
        this.caracterActual,
        0,
        this.preguntaPrincipalTexto.length,
      );
    }
  }

  mostrarPregunta() {
    push();

    textFont(fuentes[0]);
    let nuevoTamanoFuente = (float(width) * this.tamano) / float(20);
    textSize(nuevoTamanoFuente);

    fill(relleno);
    stroke(relleno);

    translate(this.posX * width, this.posY * height);
    rotate(radians(this.angulo));
    text(
      this.preguntaPrincipalTexto.substring(0, this.caracterActual),
      0,
      0,
    );
    // text(this.preguntaPrincipalTexto, 0, 0);
    pop();
  }
}

class PreguntaSecundaria {
  constructor(angulo, posX, posY, tamano, coloreado) {
    this.datos =
      misPreguntasIniciales.preguntasPrincipales[
        Math.floor(
          Math.random() *
            misPreguntasIniciales.preguntasPrincipales.length,
        )
      ];

    this.preguntaPrincipalTexto = this.datos.preguntaPrincipal;
    this.preguntasRelacionadas = this.datos.preguntasRelacionadas;

    this.preguntaSecundariaTexto =
      this.datos.preguntasRelacionadas[
        Math.random * this.datos.preguntasRelacionadas.length
      ];

    this.angulo = angulo;
    this.posX = posX;
    this.posY = posY;
    this.tamano = tamano;
    this.coloreado = coloreado;
    this.caracterActual = 0;
  }

  aumentarCaracter() {
    if (Math.random() < 0.1) {
      this.caracterActual = this.caracterActual + 1;
      this.caracterActual = constrain(
        this.caracterActual,
        0,
        this.preguntaSecundariaTexto.length,
      );
    }
  }

  mostrarPregunta() {
    push();

    textFont(fuentes[1]);
    let nuevoTamanoFuente = (float(width) * this.tamano) / float(30);
    textSize(nuevoTamanoFuente);

    fill(rellenoSecundario);
    stroke(rellenoSecundario);

    translate(this.posX * width, this.posY * height);
    rotate(radians(this.angulo));
    console.log(this.preguntaSecundariaTexto);
    // text(this.preguntaSecundariaTexto.substring(0, this.caracterActual), 0, 0);
    pop();
  }
}

class PreguntaFormulario {
  constructor(angulo, posX, posY, tamano, coloreado) {
    this.texto =
      formularioPreguntas[
        Math.floor(Math.random() * formularioPreguntas.length)
      ];
    this.angulo = angulo;
    this.posX = posX;
    this.posY = posY;
    this.tamano = tamano;
    this.coloreado = coloreado;
    this.caracterActual = 0;
  }

  aumentarCaracter() {
    if (Math.random() < 0.1) {
      this.caracterActual = this.caracterActual + 1;
      this.caracterActual = constrain(
        this.caracterActual,
        0,
        this.texto.length,
      );
    }
  }

  mostrarPregunta() {
    push();

    textFont(fuentes[2]);
    let nuevoTamanoFuente = (float(width) * this.tamano) / float(20);
    textSize(nuevoTamanoFuente);

    fill(relleno);
    stroke(rellenoFormulario);

    translate(this.posX * width, this.posY * height);
    rotate(radians(this.angulo));
    text(this.texto.substring(0, this.caracterActual), 0, 0);
    pop();
  }
}

function cargarPreguntas() {
  misPreguntasIniciales = loadJSON('./regenerar.json');
}

function cargarFuentes() {
  fuentes.push(loadFont('./fonts/DM_Mono/DMMono-Regular.ttf'));

  fuentes.push(loadFont('./fonts/Mulish/Mulish-Regular.ttf'));

  fuentes.push(loadFont('./fonts/PT_Serif/PTSerif-Regular.ttf'));
}

function configurarFuentes() {
  textAlign(CENTER, CENTER);
}
