// Global Variables
int playerX;
int playerY;
int playerHeight;
int playerWidth;
int playerXSpeed;
int playerYSpeed;
boolean jump = false;
boolean jumping = false;

void setup() {
  size(800, 800);
  background(255);
  smooth();
  frameRate(60);

  playerX = width/2;
  playerY = height/2;
  playerWidth = (width/10)/2;
  playerHeight = height/10;
  playerXSpeed = 5;
  playerYSpeed = 5;
}

void draw() {
  background(255);
  // Player
  rect(playerX, playerY, playerWidth, playerHeight);
  
  // moving player
  if (keyPressed && key == CODED && keyCode == LEFT) {
    playerX = playerX - playerXSpeed;
  }
  if (keyPressed && key == CODED && keyCode == RIGHT) {
    playerX = playerX + playerXSpeed;
  }
  if (keyPressed && key == CODED && keyCode == UP) {
    playerY = playerY - playerYSpeed;
  }
  if (keyPressed && key == CODED && keyCode == DOWN) {
    playerY = playerY + playerYSpeed;
  }
  
  if(keyPressed && key == ' '){
    
    if(jump == false && jumping == false){
      jump = true;
      jumping = true;
    }
    
    
  }
  
  
  
  if(playerY > height - playerHeight){
    playerY = height - playerHeight;
    playerYSpeed = 0;
    jumping = false;
    
  }
  
  
  
  if(jump == true){
    
   playerYSpeed = -20;
   if(playerYSpeed < 20){
    playerYSpeed = playerYSpeed + 1; 
     
   }
    
  }
  
  
  
  

  
  
  
  
  
  
  
  
}