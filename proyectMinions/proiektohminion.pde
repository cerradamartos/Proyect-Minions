float t = 0; //<>//
float vx = -3;
float x = 0;
float y = 0;
float gravedad = 0.4;

PImage Fondo;
Minion minion;
Banana banana;
Banana banana2;

void setup() {
  noStroke();
  Fondo = loadImage("HOT LIQUID METAL.jpg");
  minion = new Minion();
  banana = new Banana("banana2000x.png", 50, 50);
  banana2 = new Banana("EVILMINION1.png", 50, 50);
  fullScreen();
}

void draw() {
  background(0);
  dibujarCinta();
  minion.dibujar();
  banana.dibujar();
  banana2.dibujar();
}

void dibujarCinta() {
  image(Fondo, 0, 0);
  fill(50, 50, 50);
  rect(0, height-200, 3000, 200);
  rect(0, height-200, 00, 200);
  fill(0, 20, 20);
  rect(0, height-50, 3000, 200);
  fill(50, 50, 50);
  int numElipses = 21;
  float x = 0;

  for (int i=0; i<numElipses; i++) {

    rueda(i, numElipses);
  }
  fill(255);
  for (int i=0; i<numElipses; i++) {
    x = ((50+i*width/numElipses)+t*2)%width;

    rect(width-x, height-50-145, 20, 140, 10);
  }
  t++;
}
void keyPressed() {

  if (key == ' ') {
    minion.jump(true);
  }
  if (key == 'd') {
    minion.forward(true);
  }
  if (key == 'a') {
    minion.backwards(true);
  }
}
void keyReleased() {
  if (key == ' ') {
    minion.jump(false);
  }
    if (key == 'd') {
       minion.forward(false);
    }
    if (key == 'a') {
      minion.backwards(false);
    }
  }
  void rueda(int i, int numElipses) {
    float r = 50; 
    fill(50);
    ellipse(r+i*width/numElipses, height-r/2, r, r);
    fill(250, 200, 200);
    for (int j=0; j<8; j++) {
      arc(r+i*width/numElipses, height-r/2, r, r, j*(2*PI)/8-t/20, j*(2*PI)/8+PI/16-t/20, PIE);
    }
  }