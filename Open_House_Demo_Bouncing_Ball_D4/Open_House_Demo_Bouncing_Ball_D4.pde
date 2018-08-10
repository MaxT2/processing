// ball position variables
float x = 100; 
float y = 100;
// ball speed variables
float xSp = 3;
float ySp = 2.5;

void setup() {
  size(500, 500);
}

void draw() {
  // background
  rect(0, 0, width, height);

  // draw the ball at (x,y)
  ellipse(x, y, 50, 50);

  //update x and y with new values to make it more
  x = x + xSp;  
  y = y + ySp;

  // Check if ball has hit a wall, if so reverse direction
  // right wall
  if (x > width - 25)
    xSp = xSp * -1;
  // left wall
  if (x < 25)
    xSp = xSp * -1;
  // bottom wall
  if (y > height - 25) 
    ySp = ySp * -1;
  // top wall
  if (y < 25)  // if ball hits the top
    ySp = ySp * -1;  // turn it around in the y direction
}