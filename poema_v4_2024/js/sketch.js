let textito;

function setup() {
  createCanvas(windowWidth, windowHeight);
  background(0);
  textito = new Texto();
  console.log(textito.texto);
}

function draw() {
  ellipse(mouseX, mouseY, 50, 50);
}
