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
    if (Math.random() < 0.3) {
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

    let nuevoTamanoFuente = (float(width) * this.tamano) / float(960);
    textSize(32);

    fill(relleno);
    stroke(relleno);

    translate((this.posX * width), (this.posY * height));
    rotate(radians(this.angulo));
    // text(this.preguntaPrincipalTexto.substring(0, this.caracterActual),
    text(this.preguntaPrincipalTexto, 0, 0);
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
