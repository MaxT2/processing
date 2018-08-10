float x = 100; //global variable at random starting point
float xSp = 3; // speed variable

float y = 100;
float ySp = 2.5; //everyone have their new variables in? nothing happens 
//because we have not used them

void setup() {
  size(500, 500);
}

void draw() {
  fill(255);
  rect(0, 0, width, height);


  // now we want the x value to slowly change to make it move
  x = x + xSp;
  y = y + ySp; //nothing happens yet! we need to use it, what number in ellipse do we change to use y instead

  if (x > width-25)
    xSp = xSp * -1;
  if (x < 25)
    xSp = xSp * -1;

  if (y > height)  // its gotten so big that it has gone off the botom
    ySp = ySp * -1;  // turn it around in the y direction

  if (y < 0)  // its gotten so big that it has gone off the botom
    ySp = ySp * -1;  // turn it around in the y direction
  //draw ball
  fill(255);
  ellipse(x, y, 50, 50);

fill(0,0,255);
rect(0,mouseY,30,100);

}