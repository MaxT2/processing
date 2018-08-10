// after challange making the ball arrow key program it should look like this
// see section after arrow key if statements for notes on this activity

int ballX;
int ballY;
int ballDiameter;
int ballRadius;
int ballSpeedX = 5;
int ballSpeedY = 7;


void setup(){
  
  size(800,800);
//  background(255);
  fill(255);
  rect(0,0,width,height);
  ballX = width/2;  // set ball x to the width/2 (middle of the screen in the x direction)
  ballY = height/2; // set ball y to the width/2 (middle of the screen in the x direction)
  ballDiameter = 50; // set ball diameter to what ever they would like
  ballRadius = ballDiameter/2;  // set ballRadius to 1/2 the diamtere
}


void draw(){
  background(255);
  // draw ball
  ellipse(ballX,ballY,ballDiameter,ballDiameter); // draw ball using variables
// text box
fill(255); // set fill to white for text box
rect(0,0,200,50); // draw the text box
fill(0);
textSize(20);
text("X = " + ballX + " Y = " + ballY,20,30);

// control ball with arrow keys
  
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
   
   
   // We can leave the arrow keys but ultimatelly we want to make a ball bounce around the screen
   // we will start by making it move by itself in the X direction
   // then detect when it goes off the screen and reset its position and reverse what direction it is traveling in
   // to make the ball move we need to move left and right we need to change its X position that is stored in ballX
   // to make it move by itself we can add ballSpeed to the current ballX position 
   
   ballX = ballX + ballSpeedX; // if speed is positive the ball with move to the right and if we make ballSpeed negative the ball will move to the left
   
   // we then need to check if the ball has moved off the screen by looking at its current position
   // if the ball travels off the screen to the right it means that its X position has become larger than the width of our screen so..
   
   if(ballX > width - ballRadius){
    // reset its position
    ballX = width - ballRadius;
    // make sure to set ballSpeedX and ballSpeedY values up top^^^^^^^^^^^
    // reverse travel direction by flipping the sign for ballSpeedX
    ballSpeedX = ballSpeedX * -1;
   }
   
   // do the same for the other direction
   
   if(ballX < 0 + ballRadius){
    // reset its position
    ballX = 0 + ballRadius;
    // make sure to set ballSpeedX and ballSpeedY values up top^^^^^^^^^^^
    // reverse travel direction by flipping the sign for ballSpeedX
    ballSpeedX = ballSpeedX * -1;
   }
   
   // now repeate the process for the Y direction
   // make the ball move in the y direction by adding ballSpeedY to ballY position variable
   
   ballY = ballY + ballSpeedY;
   
   if(ballY > height - ballRadius){
    ballY = height - ballRadius;
    ballSpeedY = ballSpeedY * -1; // flip the direction the ball is traveling in the Y axis
     
   }
   
   if(ballY < 0 + ballRadius){
     
    ballY = 0 + ballRadius;
    ballSpeedY = ballSpeedY *-1; // flip the direction the ball is traveling in the Y axis
     
   }
   
  // play with it.
  // draw a background at the beginning of draw() method to get rid of trails
  // teach them the other way to make a background
  // set the fill for the background rectangle and
  // draw a rectangle that fills the entire screen
  
  // teach using alphas to make cool effects. Just add another number to your fill or color method.
  // example: fill(R,G,B,ALPHA); an alpha of 20 looks cool
  // challanges if needed:
  // can you make the ball change color when it bounces? 
  // you will need a color variables, and we already have code that runs when your ball bounces!
  
  
  
  
}