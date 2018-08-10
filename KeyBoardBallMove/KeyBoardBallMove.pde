int ballX;
int ballY;
int ballSize;
int ballRadius;
int ballSpeed;


void setup(){
  
  size(800,800);
  background(255);
  ballX = width/2;
  ballY = height/2;
  ballRadius = 25;
  ballSize = ballRadius*2;
  ballSpeed = 5;
}


void draw(){
  
  //draw stuff
  
 ellipse(ballX,ballY,60,60);
  
   if(keyPressed && key == CODED && keyCode == UP){
     
     ballY = ballY - ballSpeed;
     
   }
  
  if(keyPressed && key == CODED && keyCode == DOWN){
     
     ballY = ballY + ballSpeed;
     
   }
   
   if(keyPressed && key == CODED && keyCode == LEFT){
     
     ballX = ballX - ballSpeed;
     
   }
   
   if(keyPressed && key == CODED && keyCode == RIGHT){
     
     ballX = ballX + ballSpeed;
     
   }
   
  
  
  
  
  
  
  //collisions
  
  if(ballX < 0 + ballRadius){
   
    ballX = 0 + ballRadius;
    
  }
  
  if(ballX > width - ballRadius){
    ballX = width - ballRadius;
    
  }
  
  if(ballY < 0 + ballRadius){
    
    ballY = 0 + ballRadius;
    
  }
  
  if(ballX > height + ballRadius){
    
    ballY = ballY + ballRadius;
    
  }
  
  
  
}