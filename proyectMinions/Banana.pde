
public class Banana {
  PImage banana = loadImage("banana2000x.png");
  float yBanana = 0;
  float xBanana = random(width);
  float g = 0.5;
  float vy = 0;
  float vx = -2;
  float ancho;
  float alto;

  public Banana(String path, int ancho, int alto){
    banana = loadImage(path);
    banana.resize(ancho,alto);
    this.ancho = ancho;
    this.alto = alto;
  }

  public void dibujar() {
    image(banana, xBanana, yBanana);
    
    
    if (yBanana >= height-150) {
      xBanana = xBanana+vx;
      vy = 0;
    }else{
      yBanana += vy;
      vy = vy+g;
    }
    
    if (xBanana < 0) {
      yBanana = 0;
      xBanana = random(width);
    }
  }
}