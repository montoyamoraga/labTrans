


let negro;
let azul;
let blanco;

let preguntaActual;


function preload() {
  cargarFuentes();
  cargarPreguntas();
}

function setup() {
  createCanvas(windowWidth, windowHeight);

  negro = color(0, 0, 0);
  azul = color(0, 0, 255);
  blanco = color(255, 255, 255);

  preguntaActual = null;

  smooth();
  
  noCursor();
  
  configurarFuentes();
  
  background(negro);

  frameRate(30);
}

function draw() {
  
  push();
  rectMode(CORNER);
  noStroke();
  fill(0, 40 * 255/100);
  rect(0, 0, windowWidth, windowHeight);
  pop();

  if (preguntaActual) {

    push();
    textSize(32);
    fill(blanco);
    stroke(negro);
    translate(
      //temp.posX * width/100,
      // temp.posY * height/100);
      50 * width/100,
      50 * height/100);
    // rotate(radians(temp.angulo));
    text(preguntaActual.datos.preguntaPrincipal,
       0,
       0
       );
    pop();

  }
}

function windowResized() {
  resizeCanvas(windowWidth, windowHeight);
}

function keyPressed() {
  if (key == "p") {
    preguntaActual = new Pregunta();
  }
}