// D3 Challange 2: create 4 lines that follow the mouse
// one line from each corer. Show them the example so they understand the challange
// use the usefull cordinate sheets! It's really easy!
// start with lines
// then add background
// then try to color the triangles.
// when coloring the triangles you need 2 points from the usefull coordinate sheet and mouseX,mouseY as your third

void setup() {
  size(1000, 1000);
  background(255);
}
void draw() {
  background(255);
  line(0, 0, mouseX, mouseY);
  line(0, height, mouseX, mouseY);
  line(width, 0, mouseX, mouseY);
  line(width, height, mouseX, mouseY);

  fill(0, 0, 255);
  triangle(0, 0, width, 0, mouseX, mouseY);

  fill(0, 255, 0);
  triangle(width, 0, width, height, mouseX, mouseY);

  fill(255, 0, 0);
  triangle(width,height,0,height, mouseX, mouseY);
  
   fill(255,255,0);
 triangle(0,height,0,0,mouseX,mouseY);
}