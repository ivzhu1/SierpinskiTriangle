int i = 0;
public void setup()
{
  noStroke();
  background(40, 40, 40);
  size(700, 700);
}
public void draw()
{
  background(40, 40, 40);
  sierpinski2(0, 0, 700);
  sierpinski(mouseX, mouseY, 100+i);
  i = mouseX/4 + mouseY/4;
}
public void sierpinski(int x, int y, int len) 
{
  if (len <= 25) {
    triangle(x, y, x+len, y, x+(len/2), y+len);
  } else {
    fill(x, y, 100);
    sierpinski(x, y, len/2);
    fill(x/2, y/2, 100);
    sierpinski(x+len/2, y, len/2);
    fill(x/2, y/2, 200);
    sierpinski(x+len/4, y+len/2, len/2);
  }
}
public void sierpinski2(int x, int y, int len) 
{
  if (len <= 10)
    rect(x, y, len, len);
  else {
    fill(107, 193, 255);
    sierpinski2(x, y, len/3);
    sierpinski2(x+2*len/3, y+2*len/3, len/3);
    fill(230, 0, 0);
    sierpinski2(x, y+2*len/3, len/3);
    sierpinski2(x+2*len/3, y, len/3);
    fill(255, 184, 102);
    sierpinski2(x+len/3, y, len/3);
    sierpinski2(x, y+len/3, len/3);
    sierpinski2(x+2*len/3, y+len/3, len/3);
    sierpinski2(x+len/3, y+2*len/3, len/3);
  }
}
