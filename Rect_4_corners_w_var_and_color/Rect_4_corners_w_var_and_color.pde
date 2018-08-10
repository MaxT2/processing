void setup() {
  size(500, 500);
  frameRate(2);
}
int rectSize = 250;
void draw() {
  fill(random(0, 255), random(0, 255), random(0, 255));
  rect(0, 0, rectSize, rectSize);
  fill(random(0, 255), random(0, 255), random(0, 255));
  rect(0, height-rectSize, rectSize, rectSize);
  fill(random(0, 255), random(0, 255), random(0, 255));
  rect(width-rectSize, height-rectSize, rectSize, rectSize);
  fill(random(0, 255), random(0, 255), random(0, 255));
  rect(width-rectSize, 0, rectSize, rectSize);
}