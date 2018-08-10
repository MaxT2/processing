void setup() {
  size(500, 500);
}
int rectSize = 250;
void draw() {
  background(255);
  line(0, height/2, width, height/2);
  line(width/2, 0, width/2, height);
  fill(0);
  // square top left
  if (mouseX < width/2 && mouseY < height/2) {
    rect(0, 0, width/2, height/2);
  }
  // square top right
  if (mouseX > width/2 && mouseY < height/2) {
    rect(width/2, 0, width/2, height/2);
  }
  // square bottom left
  if (mouseX < width/2 && mouseY > height/2) {
    rect(0, height/2, width/2, height/2);
  }
  // square bottom right
  if (mouseX > width/2 && mouseY > height/2) {
    rect(width/2, height/2, width/2, height/2);
  }
}