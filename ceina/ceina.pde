// consideraciones tecnicas

boolean prueba = false;

void setup() {
  size(500, 500);
  background(255);

  textAlign(CENTER);
  textSize(32);
  frameRate(1);
  noStroke();
}

void draw() {

  fill(255, 255/2);
  rect(0, 0, width, height);

  fill(0);
  // text(textos[int(random(textos.length))], random(width), random(height));
}
