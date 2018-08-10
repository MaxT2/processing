PImage img;
boolean showPoints = false;
boolean showAdvPoints = false;
boolean grid = false;


void setup() {
  size(1000,1000);
  img = loadImage("ProcessingCanvas.png");
  imageMode(CENTER);
  rectMode(CENTER);
  textSize(20);
  frameRate(60);
  
}

void draw() {
  int mx = mouseX;
  int my = mouseY;
  background(255);
  
  image(img, width/2, height/2, 800,800);
  noFill();
  rect(width/2, height/2, 800,800);

  
  if(mx>100 && mx < 900 && my > 100 && my < 900){
  fill(0);
  ellipse(mouseX,mouseY,15,15);
 

 
  // draw coordinates
  fill(0);
  textAlign(LEFT,TOP);
  text("( " + (mouseX-100) + " , " + (mouseY-100) + " )",mouseX+10,mouseY+10);

  textAlign(CENTER,TOP);
  

  }


if(keyPressed  && key=='u'){
  showPoints=true;
  
}

if(keyPressed  && key=='g'){
  grid=true;
  
}

if(keyPressed  && key=='a'){
  showAdvPoints = true;
  
}

if(keyPressed  && key=='h'){
  showPoints=false;
  grid = false;
  showAdvPoints = false;
}



if(showPoints){
  // 0,0
  fill(0);
  textAlign(CENTER,BOTTOM);
  ellipse(100,100,15,15);
  text("( 0 , 0 )",100,90);
  
  // 800,0
  fill(0);
  textAlign(CENTER,BOTTOM);
  ellipse(900,100,15,15);
  text("( 800 , 0 )",900,90);

  // 0,800
  fill(0);
  textAlign(CENTER,TOP);
  ellipse(100,900,15,15);
  text("( 0 , 800 )",100,910);
  
  // 800,800
  fill(0);
  textAlign(CENTER,TOP);
  ellipse(900,900,15,15);
  text("( 800 , 800 )",900,910);
  
  
  // 800,800
  fill(0);
  textAlign(CENTER,BOTTOM);
  ellipse(width/2,height/2,15,15);
  text("( 800 , 800 )",width/2,(height/2)-10);
  }
  
  if(showAdvPoints){
    
  // 0,0
  fill(0);
  textAlign(CENTER,BOTTOM);
  ellipse(100,100,15,15);
  text("( 0 , 0 )",100,90);
  
  // 800,0
  fill(0);
  textAlign(CENTER,BOTTOM);
  ellipse(900,100,15,15);
  text("( width , 0 )",900,90);

  // 0,800
  fill(0);
  textAlign(CENTER,TOP);
  ellipse(100,900,15,15);
  text("( 0 , height )",100,910);
  
  // 800,800
  fill(0);
  textAlign(CENTER,TOP);
  ellipse(900,900,15,15);
  text("( width , height )",900,910);
  
  
  // 800,800
  fill(0);
  textAlign(CENTER,BOTTOM);
  ellipse(width/2,height/2,15,15);
  text("( width/2 , height/2in )",width/2,(height/2)-10);
  }
  
  if(grid){
    int x = 0;
    while(x<width-200){
     line(100 + x, 100, 100+x,width-100);
     x = x + 20;
    }
      
    int y = 0;
    while(y<height-200){
    line(100, 100 + y, height-100,100+y);
    y = y + 20;
    }
  
  
  
  

}


}
