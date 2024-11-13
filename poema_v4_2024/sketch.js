


let negro;
let azul;
let blanco;

let fondo;
let borde;
let relleno;

let preguntaActual;

let formularioURL = "https://docs.google.com/spreadsheets/d/e/2PACX-1vSwisbThAk3YX_yj0UfKmtFkl031yWPFTkc06nnR3EpAZk_lJydbvxncsTNVg0Ob2_jnCgHEQ_W50r1/pub?output=csv";
let formulario = null;
let formularioPreguntas = null;

let preguntasMostradas = new Array();



function cargarFormulario() {
  formulario = loadTable(formularioURL, "csv", "header", procesarFormulario);
}

function procesarFormulario() {
  formularioPreguntas = [...formulario.getColumn("Tu pregunta")];
}


function preload() {
  cargarFuentes();
  cargarPreguntas();
  cargarFormulario();
}

function setup() {
  createCanvas(windowWidth, windowHeight);

  negro = color(0, 0, 0);
  azul = color(0, 0, 255);
  blanco = color(255, 255, 255);

  borde = negro;
  fondo = negro;
  relleno = blanco;

  preguntaActual = null;



  smooth();
  
  noCursor();
  
  configurarFuentes();
  
  background(fondo);

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
    fill(relleno);
    stroke(borde);
    translate(
      //temp.posX * width/100,
      // temp.posY * height/100);
      50 * width/100,
      50 * height/100);
    // rotate(radians(temp.angulo));
    text(preguntaActual.preguntaPrincipal,
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
  else if (key == "n") {
    cargarFormulario();
  }
}