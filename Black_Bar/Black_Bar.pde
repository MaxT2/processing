void setup() {
  size(500, 500);
}

void draw() {
  background(255);
  
  if(mouseY > height/3 && mouseY <= 2*height/3){
    fill(0);
    rect(0,height/3,width,height/3);
  }
  
}