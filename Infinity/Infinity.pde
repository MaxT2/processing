// ball position
float x = 0;
float y = 0;
//ball speed (x + spX)
int spX = 10;
int spY = 10;
// cordinates for center of circle
float centerX = 500;
float centerY = 500;
// radius of roatation circle
float radius = 50;
float radiusSPD = 0.0416;
//ratation variables
float angle = 0;
float radians = 0;
boolean clockWise = true;
// loop counter
int count = 0;

void setup() {
  size(1000, 1000);
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
    
  if (clockWise == true) {
    x = centerX + cos(radians) * radius;
    y = centerY + sin(radians) * radius;

    angle = angle + 1;  
    if (angle > 360) {
      angle = 180;
      centerX = centerX + (2 * radius);
      clockWise = false;

  }

    //  radius = radius + radiusSPD;
  }
  else{
    
    x = centerX + cos(radians) * radius;
    y = centerY + sin(radians) * radius;

    angle = angle - 1;  
    if (angle < -180) {
      angle = 0;
      centerX = centerX - (2 * radius);
      clockWise = true;
    }

    //  radius = radius + radiusSPD;
  }


radians = degToRad(angle);
ellipse(x, y, 30, 30);



count++;

}




//count = 359
//x = 549.9924
//y = 499.12738
//radius = 50.0

//count = 360
//x = 650.0
//y = 500.0
//radius = 50.0

//count = 361
//x = 550.0076
//y = 500.87262
//radius = 50.0



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