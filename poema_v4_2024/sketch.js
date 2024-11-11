let textito;

function preload() {
  cargarFuentes();
}

function setup() {
  createCanvas(windowWidth, windowHeight);
  
  
  smooth();
  
  noCursor();
  
  configurarFuentes();
  
  
  textito = new Texto();
  
  background(0, 255, 0);
}

function draw() {
  ellipse(mouseX, mouseY, 10, 10);
}