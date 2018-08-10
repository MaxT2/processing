// thursday - if statement practice
// left right if example
// challange: can you make a program that detects when your mouse
// position is on the left side of the screen
// when it is, draw a black rectangle
// give them a few minutes to figure it out and if they can't walk them through it

void setup() {
  size(1000, 1000);
  fill(0);
}

void draw() {
  background(255); // draw a background to clear screen

  if ( mouseX < width/2) { // if the mouse is on the left side of the screen
    // draw a rectangle on that half of the screen
    rect(0, 0, width/2, height);
  } else { 
    // something new! This runs if the first if statement is not true
    // must be placed after an if statement!
    // if the mouse is not on the left of the screen
    //  we need to draw a rectangle on the right side
    rect(width/2, 0, width/2, height);
  }
}