


let negro;
let azul;
let blanco;

let fondo;
let borde;
let relleno;


let formularioURL = "https://docs.google.com/spreadsheets/d/e/2PACX-1vSwisbThAk3YX_yj0UfKmtFkl031yWPFTkc06nnR3EpAZk_lJydbvxncsTNVg0Ob2_jnCgHEQ_W50r1/pub?output=csv";
let formulario = null;
let formularioPreguntas = null;

let preguntasIniciales = new Array();
let preguntasFormulario = new Array();

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
  // push();
  // rectMode(CORNER);
  // noStroke();
  // fill(0, 40 * 255/100);
  // rect(0, 0, windowWidth, windowHeight);
  // pop();

  for (let i = 0; i < preguntasIniciales.length; i++) {
    
    // push();
    // textSize(preguntasIniciales[i].tamano);
    // float nuevoTamanoFuente = float(width) * temp.tamano / float(960);
    // textSize(nuevoTamanoFuente);
    // fill(relleno);
    // stroke(relleno);
    // translate(
    //  width/2,
    //  height/2);
    // // translate(
    // //   preguntasIniciales[i].posX,
    // //   preguntasIniciales[i].posY);
    // rotate(radians(preguntasIniciales[i].angulo));
    // text(preguntasIniciales[i].preguntaPrincipalTexto,
    //   0,
    //   0
    // );
    // // text(preguntasIniciales[i].preguntaPrincipal.substring(0, preguntasIniciales[i].principalCaracterActual),
    // // text(preguntasIniciales[i].preguntaPrincipal,
    // //    0,
    // //    0
    // //    );
    // pop();

    preguntasIniciales[i].aumentarCaracter();
    preguntasIniciales[i].mostrarPregunta();

  }

  for (let i = 0; i < preguntasFormulario.length; i++) {

  }



  // if (preguntaActual) {

    // push();
    // textSize(32);
    // fill(relleno);
    // stroke(borde);
    // translate(
    //   //temp.posX * width/100,
    //   // temp.posY * height/100);
    //   50 * width/100,
    //   50 * height/100);
    // // rotate(radians(temp.angulo));
    // text(preguntaActual.preguntaPrincipal.substring(0, preguntaActual.principalCaracterActual),
    //    0,
    //    0
    //    );
    // pop();

  // }
}

function windowResized() {
  resizeCanvas(windowWidth, windowHeight);
}

function keyPressed() {
  if (key == "p") {
    // constructor PreguntaInicial(angulo, posX, posY, tamano, coloreado)
    preguntasIniciales.push(new PreguntaInicial(Math.random()*TWO_PI, Math.random(), Math.random(),Math.random(), borde));


  } else if (key == "o") {

  }
  else if (key == "n") {
    cargarFormulario();
  }
}