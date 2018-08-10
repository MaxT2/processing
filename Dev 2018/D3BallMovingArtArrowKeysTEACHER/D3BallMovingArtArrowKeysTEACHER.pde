// after challange 2, teach the kids how we can use variables
// to store the x and y position of something we want to move around the screen
// and how we can control it using the arrow keys
// then we can change the x and y position variables to move things around the screen
// we will need to add variables for ballSize
// you will use the variable ballSpeed for the second part of this activity
// declare variables.

int ballX;
int ballY;
int ballDiameter;
int ballRadius;
int ballSpeed;


void setup(){
  
  size(800,800);
  background(255);
  ballX = width/2;  // set ball x to the width/2 (middle of the screen in the x direction)
  ballY = height/2; // set ball y to the width/2 (middle of the screen in the x direction)
  ballDiameter = 50; // set ball size to what ever they would like
  ballRadius = ballDiameter/2;
}


//now we need to draw stuff using our variables. First draw the ball using the variables


void draw(){
  ellipse(ballX,ballY,ballDiameter,ballDiameter); // draw ball using variables
  
// you should have a ball on the screen
// you can show them how to add a text box at the top of the screen to display our x and y positions
// use text("sometext" + variableName, positionX, positionY);


fill(255); // set fill to white for text box
rect(0,0,200,50); // draw the text box
fill(0);
textSize(20);
text("X = " + ballX + " Y = " + ballY,20,30);

// now you need to be able to control the ball
// like the drawing program we want to use keyboard input
// to use the arrow keys you need to use the structure below and do 3 checks when you are detecting a keyPressed
// have to check if the key is CODED and if the keyCode matches UP, DOWN, LEFT or RIGHT
  
  
  // if you press the UP key we want to move the ball up towards the top of the screen in the Y direction
  // if you move your ball UP the y would get smaller so we need to make the ball's Y position smaller.
  // we can make it smaller by 1 using ballY--; inside the if statement
  // do the same for all directions
  
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
   
   
   
   // now the kids can play with it a bit.
   // there are limitations, we cannot really move in two directions at once :(
   // save this program.
   // after saving the program, click save as and make a copy of this program called BallBounce
   // we will teach them how they can make a ball bounce around the screen  
  
  
}