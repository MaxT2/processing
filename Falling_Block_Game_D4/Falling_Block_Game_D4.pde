float dropPosX1 = 0;
float dropPosY1 = -100;
int dropSpeed1 = 6;

float dropPosX2 = width/2;
float dropPosY2 = -100;
int dropSpeed2 = 4;

float dropPosX3 = 0;
float dropPosY3 = -100;
int dropSpeed3 = 6;

void setup() {
  size(800, 800);
}

void draw () {   
  //black background
  fill(0);
  rect(0, 0, width, height);

  
  //player code
  fill(255);
  rect(mouseX, 500, 150, 25);

  //reset fill to white
  fill(255);

  //fist falling object code
  //draw the rectangle
  rect(dropPosX1, dropPosY1, 100, 100);
  // make the Y pos bigger to fall down screen
  dropPosY1 = dropPosY1 + dropSpeed1;

  // if the Y pos goes off the bottom of the screen
  // reset X and Y pos and fall again
  if (dropPosY1 > height) {
    dropPosY1 = -100;
    dropPosX1 = random(0, width - 100);
  }

  //second falling object code
  rect(dropPosX2, dropPosY2, 100, 100);
  dropPosY2 = dropPosY2 + dropSpeed2;

  if (dropPosY2 > height) {
    dropPosY2 = -100;
    dropPosX2 = random(0, width - 100);
  }


  //third falling object code
  rect(dropPosX3, dropPosY3, 100, 100);
  dropPosY3 = dropPosY3 + dropSpeed3;

  if (dropPosY3 > height) {
    dropPosY3 = -100;
    dropPosX3 = random(0, width - 100);
  }
  
  if(dropPosY1 + 80 >= 550 && dropPosX1 + 80 >= mouseX && dropPosX1 < mouseX + 80){
    
    dropSpeed1 = 0;
    
  }
  else{
   dropSpeed1 = 6; 
  }
  
  
  
  
}