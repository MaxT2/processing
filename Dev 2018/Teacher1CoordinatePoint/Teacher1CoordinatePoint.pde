// coordinate intro and point moving
int x = -100;
int y = -100;
int display = 0;

void setup() {
  size(800, 800);  
  background(255);
}

void draw() {
  background(255);
  //fill(255);
  // setup "canvas"
  strokeWeight(3);
  stroke(0);
  fill(255);
  rect(width/8, height/8, width-(2*width/8), height-(2*width/8));
  // update text position
  x = mouseX;
  y = mouseY;

  // round do the nearest 10
  x = round(x/10) * 10;
  y = round(y/10) * 10;

  if (display == 0) {
    fill(0);
    textSize(20);
    text("("+(x-width/8)+","+(y-height/8)+")", x, y);
  }

  if (display == 1) {
    strokeWeight(15);
    point(width/2, height/2);
  }
  
  if(display == 2){
    
    strokeWeight(15);
    point(width/2, height/2);

    strokeWeight(2);
    stroke(255, 0, 0);
    drawArrow(350, 400, 150, 180);
    stroke(0, 0, 255);
    drawArrow(450, 400, 150, 0);

    strokeWeight(5);
    fill(255, 0, 0);
    text("- X", 250, 375);
    fill(0, 0, 255); 
    text("+ X", 525, 375);
    
    fill(0);
    textSize(20);
    text("X = "+(x-width/8), x, y); 
    
  }
  
  if (display == 3) {
    strokeWeight(15);
    point(width/2, height/2);

    strokeWeight(2);
    stroke(255, 0, 0);
    drawArrow(400, 350, 150, -90);
    stroke(0, 0, 255);
    drawArrow(400, 450, 150, 90);

    strokeWeight(5);
    fill(255, 0, 0);
    text("- Y", 325 , 275);
    fill(0, 0, 255); 
    text("+ Y", 325, 525);
    
    fill(0);
    textSize(20);
    text("Y = "+(y-width/8), x, y);
    
  }
  
  if(display == 4){
    
    strokeWeight(15);
    point(width/2, height/2);

    strokeWeight(2);
    stroke(255, 0, 0);
    drawArrow(350, 400, 150, 180);
    stroke(0, 0, 255);
    drawArrow(450, 400, 150, 0);

    strokeWeight(5);
    fill(255, 0, 0);
    text("- X", 250, 375);
    fill(0, 0, 255); 
    text("+ X", 525, 375);
    

    
    
    
    strokeWeight(15);
    point(width/2, height/2);

    strokeWeight(2);
    stroke(255, 0, 0);
    drawArrow(400, 350, 150, -90);
    stroke(0, 0, 255);
    drawArrow(400, 450, 150, 90);

    strokeWeight(5);
    fill(255, 0, 0);
    text("- Y", 325 , 275);
    fill(0, 0, 255); 
    text("+ Y", 325, 525);
    
    fill(0);
    textSize(20);
    text("("+(x-width/8)+","+(y-height/8)+")", x, y);
    
    
    
  }
  
  
  
}

void mouseReleased() {

  display+= 1;
  if (display>4) {
    display = 0;
  }
}


void drawArrow(int cx, int cy, int len, float angle) {
  pushMatrix();
  translate(cx, cy);
  rotate(radians(angle));
  line(0, 0, len, 0);
  line(len, 0, len - 8, -8);
  line(len, 0, len - 8, 8);
  popMatrix();
}
