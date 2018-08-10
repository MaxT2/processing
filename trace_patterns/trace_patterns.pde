// ball position
float x = 0;
float y = 0;
//ball speed (x + spX)
int spX = 20;
int spY = 20;
// cordinates for center of circle
float centerX = 500;
float centerY = 500;
float radius = 39;

//ratation variables
float angle = 0;
float radians = 0;
boolean clockWise = true;


void setup(){
 size(1000,1000);
 frameRate(60);
  
}
    
void draw(){

  if(clockWise == true){
  
  ellipse(x,y,25,25);
  x = centerX + cos(radians) * radius;
  y = centerY + sin(radians) * radius;
  
  angle = angle + 1;  
  if(angle > 360){
    angle = 0;
 //   centerX = centerX + 200;
  }
  
  }
  
  radians = degToRad(angle);
  
  
  
  
  
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
 
 
  
}

Float degToRad(Float degree){
 Float radians;
 radians = degree * PI/180;
  return (radians);
}