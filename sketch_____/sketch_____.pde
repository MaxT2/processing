int speed;

void setup(){
  size(600,600);
}

void draw(){
  fill(255,8);
  rect(0,0,width,height);
  
  speed = abs(mouseX-pmouseX);
  ellipse(mouseX,mouseY,speed,speed);
  
}