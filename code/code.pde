float x = width*0.9;
Trasfigurabile piuma;
Personaggio hermione;
void setup() {
  fullScreen(P3D);
  hermione = new Personaggio();
  hermione.shape = loadShape("witch.obj");
  hermione.shape.setFill(color(#2C1F1F));
  hermione.shape.rotate(radians(180));
  piuma = new Trasfigurabile();
  piuma.figura = loadShape("quill.obj");
  piuma.figura.setFill(color(#0000FF));
}

void draw() {
  background(#87D6FC);
  lights();
  shape(hermione.shape, width*0.1, height/2);
  shape(piuma.figura, x, height/2);
  if (x >= width*0.1) {
    x = width*0.1;
  } else {
    x -= 2;
  }
}
class Personaggio {
  PShape shape;
  void disegna(float x, float y) {
  }
}
class Trasfigurabile {
  PShape figura;
  void disegna(float x, float y) {
  }
}
