int sizeWidth = 800;
int sizeHeight = 800;

// ball position
float x = 0;
float y = 0;
//ball speed (x + spX)
int spX = 10;
int spY = 10;
// cordinates for center of circle
float centerX = sizeWidth/2;
float centerY = sizeHeight/2;
// radius of roatation circle
float radius = 0;
//float radiusSPD = 0.0416;    //spiral speed 15/360
float radiusSPD = 0.083;       //spiral speed 30/360



//ratation variables
float angle = 0;
float radians = 0;
boolean clockwise = true;
// loop counter
int count = 0;

void setup() {
  size(800,800);
  frameRate(60);
}

void draw() {
  fill(0);
  rect(0,0,150,50);
  fill(255);
  text(x, 15,15);
  text(y, 15,30);
  text(angle,15,45);
  print("\nx = " + x);
  print("\ny = " + y);
  print("\nradius = " + radius);
    print("\n\ncount = " + count);
    
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
  else{
    
    x = centerX + cos(radians) * radius;
    y = centerY + sin(radians) * radius;

    angle = angle - 1;  
    if (angle < -180) {
      angle = 0;
      centerX = centerX - (2 * radius);
      clockwise = true;
    }
  }

  // update radians  
  radians = degToRad(angle);
  
  radius = radius + radiusSPD;




  // walls
  x = x + spX;
  y = y + spY;
  // bounce off wall 
  if(x > width){
    x = width;
  }
  if(x < 0){
    x = 0;
  }
  if(y > height){
    y = height;
  }
  if(y < 0){
    y = 0;
  }

// draw ellipse
ellipse(x, y, 30, 30);
count++;

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