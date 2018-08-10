int sizeWidth = 800;
int sizeHeight = 800;
// ball color
//color ballColor = color(0,0,random(150,255)); // random color
color ballColor = color(255);

// ball position
float x = 0;
float y = 0;
// ball start position
float bXStart;
float bYStart;
//ball speed (x + spX)
int spX = 10;
int spY = 10;
// cordinates for center of circle
float centerX = sizeWidth/2;
float centerY = sizeHeight/2;
// radius of roatation circle
float radius = 300;
//float radiusSPD = 0.0416;    //spiral speed 15/360
//float radiusSPD = 0.083;       //spiral speed 30/360


//Toggles
boolean star = true; // enables variable radius
boolean walls = true; // enables wall barriers
boolean move = true; // enbale ball movement (spiral)
boolean clockwise = true;

//Star data
int starMaxRadius = 400;
int starMinRadius = 100;
//float radiusSPD = 9;       // cool
float radiusSPD = 4;       // cool
int radiusFlipCount = 1;

// cool stars below
// starMax = 400, StarMin = 100 , radiusSPD = 4
// starMax = 400, StarMin = 100 , radiusSPD = 8
// starMax = 400, StarMin = 100 , radiusSPD = 2.5
// starMax = 400, StarMin = 0 , radiusSPD = 2.5
// starMax = 400, StarMin = 0 , radiusSPD = 5.3
// starMax = 400, StarMin = 200 , radiusSPD = 2.5
// starMax = 300, StarMin = 200 , radiusSPD = 9

//ratation variables
float angle = 0;
float radians = 0;

// loop counter
int count = 0;
// Log setup
PrintWriter output;


void setup() {
  size(800, 800);
  frameRate(60);
  output = createWriter("StarLog.txt"); 
  output.println("-------- SandStar Log --------"); // Write the coordinate to the file

  // record starting pos of ball
  bXStart = centerX + cos(radians) * radius;
  bYStart = centerY + sin(radians) * radius;
}


void draw() {
  fill(0);
  rect(0, 0, 150, 100);
  fill(255);
  // log on screen
  text("x = " + x, 15, 15);
  text("y = " + y, 15, 30);
  text("angle = " + angle, 15, 45);
  text("radius = " + radius, 15, 60);
  //  text("count = " + count,15,75);

  //log in console
  println("x = " + x);
  println("y = " + y);
  println("angle = " + angle);
  println("\nradius = " + radius);
  //  println("\ncount = " + count);

  // log to file  
  output.println("x = " + x);
  output.println("y = " + y);
  output.println("angle = " + angle);
  output.println("\nradius = " + radius);
  //  output.println("\ncount = " + count);

  if (move){    
    //clockwise
    if (clockwise == true) {
      x = centerX + cos(radians) * radius;
      y = centerY + sin(radians) * radius;

      angle = angle + 1;  
      if (angle > 360) {
        angle = 0;
        //      centerX = centerX + (2 * radius);
        //      clockWise = false;
      }
    }
    // else counter clockwise motion code
    else {

      x = centerX + cos(radians) * radius;
      y = centerY + sin(radians) * radius;

      angle = angle - 1;  
      if (angle < -180) {
        angle = 0;
        centerX = centerX - (2 * radius);
        clockwise = true;
      }
    }


    // always update radians  
    radians = degToRad(angle);

    if (star) {

      radius = radius + radiusSPD;
      if (radius > starMaxRadius || radius < starMinRadius) {
        // reverse direction of change

        //    ballColor = color(random(0,255),random(0,255),random(0,255));
        //    ballColor = color(random(150,255),random(150,255),random(150,255));



        radiusSPD = radiusSPD * -1;
        radiusFlipCount = radiusFlipCount + 1;
        if (radiusFlipCount == 3) {
          radiusFlipCount = 1;
          ballColor = color(random(150, 255), random(150, 255), random(150, 255));
        }
      }
    }


    if (walls) {

      // walls
      x = x + spX;
      y = y + spY;
      // bounce off wall 
      if (x > width) {
        x = width;
      }
      if (x < 0) {
        x = 0;
      }
      if (y > height) {
        y = height;
      }
      if (y < 0) {
        y = 0;
      }
    }// end if(walls)

    // draw ellipse
    fill(ballColor);
    ellipse(x, y, 30, 30);
    count++;

    // see if ball 
    if (x == bXStart || y == bYStart) {
      move = false;
    }
  }//end if(move)
}

void keyPressed() {
  if (key == ESC) {
    output.flush(); // Writes the remaining data to the file
    output.close(); // Finishes the file
    exit(); // Stops the program
  }
  if (key == ENTER) {
    move = false;
  }
}

Float degToRad(Float degree) {
  Float radians;
  radians = degree * PI/180;
  return (radians);
}

// walls
//x = x + spX;
//y = y + spY;
//// bounce off wall 
// if(x > width){
//   x = width;
//   spX = spX *-1;
// }
// if(x < 0){
//   x = 0;
//   spX = spX *-1;
// }
// if(y > height){
//   y = height;
//   spY = spY *-1;
// }
// if(y < 0){
//   y = 0;
//   spY = spY * -1;  
// }