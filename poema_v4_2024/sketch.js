let negro;
let azul;
let blanco;

let fondo;
let borde;
let relleno;
let rellenoSecundario;

let formularioURL =
  'https://docs.google.com/spreadsheets/d/e/2PACX-1vSwisbThAk3YX_yj0UfKmtFkl031yWPFTkc06nnR3EpAZk_lJydbvxncsTNVg0Ob2_jnCgHEQ_W50r1/pub?output=csv';
let formulario = null;
let formularioPreguntas = null;

let preguntasIniciales = new Array();
let preguntasInicialesSecundarias = new Array();
let preguntasFormulario = new Array();


function cargarFormulario() {
  formulario = loadTable(
    formularioURL,
    'csv',
    'header',
    procesarFormulario,
  );
}

function procesarFormulario() {
  formularioPreguntas = [...formulario.getColumn('Tu pregunta')];
}

function preload() {
  cargarFuentes();
  cargarPreguntas();
  cargarFormulario();
}

function setup() {
  // crear lienzo
  createCanvas(windowWidth, windowHeight);

  // definir colores
  negro = color(0, 0, 0);
  azul = color(0, 0, 255);
  blanco = color(255, 255, 255);

  // definir colores usados
  borde = negro;
  fondo = negro;
  relleno = blanco;
  rellenoSecundario = azul;

  // definir condiciones iniciales
  smooth();
  noCursor();
  frameRate(30);

  // configurar fuentes tipograficas
  configurarFuentes();

  // pintar fondo
  background(fondo);
}

function draw() {
  // fondo con transparencia
  push();
  rectMode(CORNER);
  noStroke();
  fill(0, (40 * 255) / 100);
  rect(0, 0, windowWidth, windowHeight);
  pop();

  for (let i = 0; i < preguntasIniciales.length; i++) {
  
    preguntasIniciales[i].aumentarCaracter();
    preguntasIniciales[i].mostrarPregunta();
  }

  for (let i = 0; i < preguntasInicialesSecundarias.length; i++) {
  
    preguntasInicialesSecundarias[i].aumentarCaracter();
    preguntasInicialesSecundarias[i].mostrarPregunta();
  }

  for (let i = 0; i < preguntasFormulario.length; i++) {}


}

function windowResized() {
  resizeCanvas(windowWidth, windowHeight);
}

function keyPressed() {
  if (key == 'p') {
    // constructor PreguntaInicial(angulo, posX, posY, tamano, coloreado)
    preguntasIniciales.push(
      new PreguntaInicial(
        Math.random() * TWO_PI,
        Math.random(),
        Math.random(),
        Math.random(),
        relleno,
      ),
    );
  } else if (key == "P") {
    preguntasIniciales = preguntasIniciales.slice(0, -1);
  } else if (key == 's') {
    preguntasInicialesSecundarias.push(
      new PreguntaSecundaria(
        Math.random() * TWO_PI,
        Math.random(),
        Math.random(),
        Math.random(),
        relleno,
      ),
    );
  }
  else if (key == 'S') {
    preguntasInicialesSecundarias = preguntasInicialesSecundarias.slice(0, -1);
  }
  else if (key == 'n') {
    cargarFormulario();
  }
}
