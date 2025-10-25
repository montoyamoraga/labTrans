import processing.video.*;

Movie videoBucle;

void cargarVideos() {
  videoBucle = new Movie(this, "rapido.mp4");
  videoBucle.loop();
  videoBucle.pause();
}

void mostrarVideoBucle() {
  pushStyle();
  videoBucle.play();
  imageMode(CENTER);
  image(videoBucle, width/2, height/2, width, height);
  popStyle();
}

void movieEvent(Movie m) {
  m.read();
}
