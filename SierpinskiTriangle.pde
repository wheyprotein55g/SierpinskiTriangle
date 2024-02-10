void setup() {
  size(500, 500);
}

void draw() {
  background(0);
  sierpinski(50, 50, 400);    
  text("MOUSE X: " + mouseX, 75, 400);
  text("MOUSE Y: " + mouseY, 75, 425);
}

public void sierpinski(int x, int y, int len) {
  int limit = mouseX-400;
  int limit2 = mouseY;
  if (len<=limit || len<=limit2) {
    triangle(x, y, x+len, y, x+len/2, y+len);
    text("I LOVE JACOB", 350, 450);
    text("I LOVE JACOB", 350, 425);
    text("I LOVE JACOB", 350, 400);
    text("I LOVE JACOB", 350, 375);
    text("I LOVE JACOB", 350, 350);
  } else {
    fill(255);
    sierpinski(x, y, len/2);
    sierpinski(x + len/2, y, len/2);
    sierpinski(x + len/4, y + len/2, len/2);
  }
}
