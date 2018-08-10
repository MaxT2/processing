color drawColor = color(0);

void setup(){
 size(1000,1000);
 background(255); //white background
  
}

void draw(){
  
  if(mousePressed && mouseButton == LEFT){
   stroke(drawColor); // set the line color to drawColor
   line(mouseX,mouseY,pmouseX,pmouseY); // draw our line
  }
  
  
  
  
  
  
}