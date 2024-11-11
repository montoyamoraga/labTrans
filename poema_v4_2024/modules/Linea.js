class Linea {
  constructor(nuevoColor, comienzo, fin) {
    this.posInicial = comienzo;
    this.posFinal = fin;
    
    this.porcentaje = 0.0;
    
    this.paso = random(0.001, 0.005);
  }
  
  actualizar() {
    porcentaje = porcentaje + paso;
    porcentaje = constrain(porcentaje, 0.0, 1.0);
    posActual = p5.Vector.lerp(posInicial, posFinal, porcentaje);
  }
  
  dibujar() {
    push();
    let x0 = posInicial.x;
    let y0 = posInicial.y;
    let x1 = posActual.x;
    let y1 = posActual.y;
    
    strokeWeight(0.5);
    stroke(lineaStroke);
    line(x0, y0, x1, y1);
    pop();
  }
  
  
}