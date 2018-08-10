bullet b1 = new bullet();
player p1 = new player();



/* Moved to bullet class
//int bx, by;
//int bSpeed, bWidth, bHeight;
//boolean drawBullet = false;
*/

bullet bList[];

void setup() {
  size(800, 800);
  background(255);
  rectMode(CENTER);
  

  //pHeight = height/20;
  //pWidth = width/40;
  //py = height-(pHeight/2*3);
  //bWidth=10;
  //bHeight = 30;
  //bSpeed = 0;
}

void draw() {

  // draw background
  // Draw Screen
  background(0); // background
  // Border
  noFill(); // no fill
  stroke(255); // white
  strokeWeight(2); // thin
  rect(width/2, height/2, width, height); // rectangle around screen edge

b1.getX();
















  // UPDATE
  // check for imput
  if (keyPressed) {

    if (key == CODED && keyCode == UP) {
      //bx = mouseX;
      //by = height/2;
      //bSpeed = -2;
      //fill(255);
      //rect(bx, by, 200, 200);
    }
  }
  if (mousePressed) {
    //bx = mouseX;
    //by = py;
    //bSpeed = -20;
    //drawBullet = true; 
    //print("drawBullet = " + drawBullet);
  }
  // Update Stuff
  // Update p










  //if (drawBullet) {
  //  //update
  //  by = by + bSpeed;
  //  // draw bullet
  //  fill(255);
  //  rect(bx, by, bWidth, bHeight);
  //  //if(by < 0 - bHeight){
  //  //bSpeed = 0;

  //  //}

  //}






  //stroke(0); // black stroke
  //fill(255); // white fill
  ////Draw p
  //rect(mouseX, py, pWidth, pHeight);
}