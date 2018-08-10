void setup(){
  size(400,400);

}
// we're going to use the
// built-in variables
// mouseX and mouseY
void draw() {
fill(255,5);
rect(0,0,width,height);
fill(255,0,0);
ellipse(mouseX, mouseY, 50, 50);

}