int x = 0;

void setup(){
  size(300,300);
}

void draw(){
  background(100);
  ellipse(x,100,50,50);
  x = x +5;
}