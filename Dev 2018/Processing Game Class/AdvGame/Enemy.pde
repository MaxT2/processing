class Enemy {

  float x; // player x position
  float y; // player y position
  float xVelocity; // player jump veloicty
  float eWidth;
  float eHeight;


  Enemy() {
    
    //set size
    eWidth = 10;
    eHeight = 10;
    // set starting position
    x = random(width,width + 600);
    y = random(eHeight/2,height-eHeight/2);
    // set velocity
    
    xVelocity = random(-8,-4);
    
  }


  void update() {
      
    // if your fall off the left side go to right
    if (x < -100) {
      // goto right of screen
      x = width + 200;
      y = random(0,height);
    }

    //update x position
    x = x + xVelocity;
  }

  void display() {
    rectMode(CENTER);
    fill(0);
    rect(x, y, eWidth, eHeight);
  }
} // end of class
