int ballX;
int ballY;
int ballSize;
int ballSpeed;


void setup(){
  
  size(800,800);
  background(255);
  ballX = width/2;
  ballY = height/2;
  ballSize = 50;
}


void draw(){
  
  //draw stuff
  
 ellipse(ballX,ballY,60,60);
  
   if(keyPressed && key == CODED && keyCode == UP){
     
     ballY--;
     
   }
  
  if(keyPressed && key == CODED && keyCode == DOWN){
     
     ballY++;
     
   }
   
   if(keyPressed && key == CODED && keyCode == LEFT){
     
     ballX--;
     
   }
   
   if(keyPressed && key == CODED && keyCode == RIGHT){
     
     ballX++;
     
   }
   
  
  
  
  
  
  
  //collisions
  
  if(ballX < 0 + ballSize/2){
    
    
  }
  
  if(ballX > width - ballSize/2){
    
    
  }
  
  if(ballY < 0 + ballSize/2){
    
    
  }
  
  if(ballX > height + ballSize/2){
    
    
  }
  
  
  
}