let misPreguntas;

class Pregunta {
    constructor() {
        this.datos = misPreguntas.preguntasPrincipales[Math.floor(Math.random() * misPreguntas.preguntasPrincipales.length)];
    }
}


function cargarPreguntas() {
    misPreguntas = loadJSON("./regenerar.json");
}

