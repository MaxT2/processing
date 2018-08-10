// the code in the setup() function runs once.
void setup() {
  size(400, 400);
}

// the code in the draw fuction
// runs forever, over and over.
void draw() {
  // draw an ellipse in the center o fthe screen
  // the size (width and height) of the ellipse
  // should change based on the posiiton of the mouse

  // use the built in variables:
  // width, height, mouseX, mouseY

  //first
  //ellipse(200,200,50,50);

  // second
  // we used mouseX and mouseY to change the position
  //ellipse(mouseX,mouseY,50,50); 

  //third
  // ellipse(200,200,mouseX,mouseY);

  // if I change the screen the shape is not in the center so you can use
  // width/2 which gives you half of the width of your screen which is the center
  // how you do finish it, height/2
  //  width/2 will always give you the center of the screen and height/2 center of the height

  //ellipse(width/2,height/2,mouseX,mouseY); 
  //figure out how to put a background color behind it
  // could use background but you cannot make it transparent
  // use rect(0,0,width, height);  -- will always fill the screen
  //with a rectangle startinga at 0,0

  //play with the color and the background

  fill(255, 10);
  rect(0, 0, width, height);
  fill(255, 0, 0);
  ellipse(width/2, height/2, mouseX, mouseY);
}

// go ahead and save and we will start something new