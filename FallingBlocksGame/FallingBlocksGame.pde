// Falling Blocks Game

// Global Variables
int boxStartingY = 0 - 50;
int boxSpeed = 5;
int paddleSizeX = 150;
int paddleSizeY = 30;



float box1X;
float box1Y;
float box1Size = 100;


void setup(){
  size(850,850); // set the size of your window
  background(255); // white background
  rectMode(CENTER);
  
  box1Y = boxStartingY;
  box1X = random(0 + box1Size/2, width - box1Size/2);
    
  
  
  
  
  
}

void draw(){
  
  background(255); // background to wipe the screen
  
  // draw your paddle 
  rect(mouseX,height - paddleSizeY,paddleSizeX,paddleSizeY);
  
  // draw your box1
  rect(box1X, box1Y, box1Size, box1Size);
  
  // Updates
  // update box1Y position to make it fall down the screen
  
  box1Y = box1Y + boxSpeed;
  
  
  if(box1Y > height + box1Size/2){
   
    box1Y = boxStartingY;
    box1X = random(0 + box1Size/2, width - box1Size/2);
    
    
  }
  
  
  
  
  
  
  
  
}