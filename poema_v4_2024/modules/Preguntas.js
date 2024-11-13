let misPreguntas;

class Pregunta {
    constructor() {
        this.datos = misPreguntas.preguntasPrincipales[Math.floor(Math.random() * misPreguntas.preguntasPrincipales.length)];

        this.preguntaPrincipalTexto = this.datos.preguntaPrincipal;

        this.preguntasRelacionadas = this.datos.preguntasRelacionadas;

        this.preguntaPrincipal = new Texto(this.preguntaPrincipalTexto, [0, Math.random(), Math.random(), 10 + 10 * Math.random()], CENTER, blanco);

    }

    mostrarTextos() {
        for (let i = 0; i < textos.length; i++) {
    
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
    
          // cajita blanca abajo del texto
          //pushStyle();
          //fill(255);
          //stroke(0);
          //noStroke();
          //rectMode(CENTER);
          //rect(
          //  temp.posX * width/100,
          //  temp.posY * height/100,
          //  textWidth(temp.texto),
          //  0.7 * textoNumeroLineas.get(i) * (textAscent() + textDescent())
          //  );
          //popStyle();
    
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

}


function cargarPreguntas() {
    misPreguntas = loadJSON("./regenerar.json");
}