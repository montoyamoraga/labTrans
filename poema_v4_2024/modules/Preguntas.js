let misPreguntas;

class Pregunta {
    constructor() {
        this.datos = misPreguntas.preguntasPrincipales[Math.floor(Math.random() * misPreguntas.preguntasPrincipales.length)];

        this.preguntaPrincipal = this.datos.preguntaPrincipal;

        this.caracterACtual 

        this.preguntasRelacionadas = this.datos.preguntasRelacionadas;

    }
}


function cargarPreguntas() {
    misPreguntas = loadJSON("./regenerar.json");
}