class Player {

  float x; // player x position
  float y; // player y position
  float pWidth;
  float pHeight;
  float yVelocity; // player y veloicty
  float xVelocity; //p player x velocity
  boolean canJump = true; // flag for jumping


  Player() {
    // set starting position
    x = width/2;
    y = height-160;
    // set size
    pWidth = 60;
    pHeight = 60;
    
  }


  void update(boolean upKey, boolean downKey, boolean leftKey, boolean rightKey) {
    // if mouse pressed jump
    
    if (upKey == true){ // up
      yVelocity = -6;
    } else  if (downKey == true){ // down
      
     yVelocity = 6; 
      
    } else {
      
     yVelocity = 0; 
    }
    
    if (leftKey == true){ //left
      xVelocity = -6;
    } else if (rightKey == true){ //right
      
     xVelocity = 6; 
      
    } else {
      
     xVelocity = 0; 
    }
    
    
    
    
    

    


    // if your below the ground stop "falling"
    //if (y > height-160) {
    //  yVelocity = 0;
    //  //y = height - 160;
    //  //canJump = true;
    //}

    //update y position
    y = y + yVelocity;
    x = x + xVelocity;
    //println("yVelocity = " + yVelocity);
  }

  void display() {
    rectMode(CENTER);
    rect(x, y, pWidth, pHeight);
  }
} // end of class
