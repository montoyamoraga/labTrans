import processing.video.*;

Movie videoBucle;
Movie videoDangello;

void cargarVideos() {
  videoBucle = new Movie(this, "rapido.mp4");
  videoBucle.loop();
  videoBucle.pause();

  videoDangello = new Movie(this, "dangello.mp4");
  videoDangello.loop();
  videoDangello.pause();
}

void mostrarVideoBucle() {
  pushStyle();
  videoBucle.play();
  imageMode(CENTER);
  image(videoBucle, width/2, height/2, width, height);
  popStyle();
}

void mostrarVideoDangello() {
  pushStyle();
  videoDangello.play();
  imageMode(CENTER);
  image(videoDangello, width/2, height/2, width, height);
  popStyle();
}



void movieEvent(Movie m) {
  m.read();
}
