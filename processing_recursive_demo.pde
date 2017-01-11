void setup () {
  size(1024, 1024);
  drawTriangle(width / 2, 0, 160, 0);
}

void drawTriangle(float topX, float topY, float length, float depth) {
  triangle(topX, topY, topX - length, topY + length, topX + length, topY + length);
 
  if (depth != 0) {
    drawTriangle (topX - length, topY + length, length / 2, depth - 1);
    drawTriangle (topX + length, topY + length, length / 2, depth - 1);
  }
}