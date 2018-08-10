void setup() {
  size(400, 400);
  fill(0);
}
void draw() {
  background(255);

  if (mouseX < width/2)
    rect(0, 0, width/2, height);
  else {
    rect(width/2, 0, width/2, height);
  }
}