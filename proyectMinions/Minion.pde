
public class Minion {
  PImage image = loadImage("minion.png");
  float x = 0;
  float y = 0;
  float g = 0.4;
  float vy = 0;
  boolean saltoActivado;
  boolean jump;
  boolean forward;
  boolean backwards;

  public void dibujar() {
    if (jump && saltoActivado) {
      vy=-10;
      saltoActivado=false;
    }
    y = y + vy;
    vy = vy + gravedad;
    if (y>height-300) {
      y=height-300;
      vy=0;
      saltoActivado=true;
    }
    image(image, width /2-50, y+50);
  }
  public void jump(boolean jump) {
    this.jump = jump;
  }
    public void forward(boolean jump) {
    this.forward = forward;
  }
    public void backwards(boolean jump) {
    this.backwards = backwards;
  }
}