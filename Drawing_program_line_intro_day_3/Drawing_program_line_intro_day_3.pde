void setup(){
  size(400,400);
  background(255);
}

// a line is made up of line(x,y,x2,y2); two points or 4 numbers
// x1, y1, x2, y2
// line(0, 0, 150, 180);

//second ellipse(mouseX,mouseY,mouseX,mouseY);
// whats going on? its drawing from mxy to mxy!
// what we really want is the previouse mouse location
// which is a built in variable


// try drawing a background (in the draw fucntion)
// how do you make it so your background is white?
// background? rect?
// put the draw fuction int he setup fuction instead to have it run just once

// how do we make this a better drawing program?
// I would like to clear the screen

// to do this we need to learn the if statement. yes or no based on condition


void draw(){
  line(pmouseX,pmouseY,mouseX,mouseY);
 // if the user hits the space bar
 //clear the window
 
// if(expression is true) - change to (user hits spacebar)
//   do something;  -       change to (clear the window;)
//   clear the window;
// sometimes you want to do mulitple things ^^^
// don't put a ; at the end of the if line or the program will get confused

  //if(keyPressed) {             // if any key is pressed
  //  fill(255);
  //  rect(0, 0, width, height);

// now if the line is in the top half of the screen it will draw red and if it
// is in the bottom it will draw in blue

  if(keyPressed) {             // if any key is pressed
    fill(255);
    rect(0, 0, width, height);
}

if (mouseY < height/2)
stroke(255, 0, 0);

// the problem it is red all the time, I want you to write another statement that changes the color to blue

if (mouseY > height/2)
  stroke(0,0,255); // (blue)


}

// mention currly brace management - how they work and which they 
// match up with (nested in function)