//Do the x = what example on the board.
// Create projector slides for the class.... for coordinates
// up  down left right chart with how x or y changed depending on which direction you want to move. 
//                (Y-)
//                UP
// (X-) Left   Point(x,y)    Right (X+)
//               Down
//               (Y+)
// Falling Blocks Game

// Teacher Toggles
boolean play = true;
boolean coordinates = false;
boolean boxCoordinates = false;
boolean paddleCoordinats = false;
boolean boxMarkers = false;
boolean paddleMarkers = false;



// Global Variables
boolean gameOver = false; // toggle for end of game

int boxStartingY =  0;//0 - 50; // Starting Position for the boxes. We want this to be above the screen. Remember that top left is 0,0 and as you move down the screen you aproach 1000. If we move down the screen and the numbers are increasing, how can we place something above the screen? (set x position to a negative number)
int boxDropSpeed = 5; // set your speed in the x direction (left to right). The ball ------------ (see slide)
int paddleSizeX = 150; // set the size of your player paddle in the X direction (left to right)
int paddleSizeY = 30;  // set the Y size of your paddle in the y direction (Up, Down) 
int paddleHeight = 50;

float box1X; // x position of our first box
float box1Y;// y position of our first box
float box1Size = 100; // size of our box. This is both the width and the height of our box ----------------- ( make slide)


void setup() {
  size(850, 850); // set the size of your window. Our monitors are .... Dell Desktops (1900 x 1200)(dell laptops) (toshibas) (Asus) ;
  background(255); // white background
  rectMode(CENTER); // set the draw point to the center of the rectangle
  frameRate(60);

  box1Y = boxStartingY; // set our first box's starting point to the same coordinate we stored in the variable boxStartingY
  box1X = random(0 + (box1Size/2), width - (box1Size/2)); // we need to set the x starting position of our box. We will set this to be a random number between the edges of the screen.             -------------(make slides)



  println("ballStartingY = " + boxStartingY);
  println("boxDropSpeed = " + boxDropSpeed);
  println("paddleSizeX = " + paddleSizeX);
  println("paddleSizeY = " + paddleSizeY);
  println("box1X = " + box1X);
  println("box1Y = " + box1Y);
  println("box1Size = " + box1Size);
}

void draw() {
  if (play) {

    if (gameOver == false) {
      background(255); // background to wipe the screen

      // draw your paddle 
      rect(mouseX, height - paddleHeight, paddleSizeX, paddleSizeY);

      // draw your box1
      rect(box1X, box1Y, box1Size, box1Size);
    }
    else{
      
    }

      // Updates
      // update box1Y position to make it fall down the screen

      box1Y = box1Y + boxDropSpeed;


      if (box1Y > height + box1Size/2) {

        box1Y = boxStartingY;
        box1X = random(0 + box1Size/2, width - box1Size/2);
      }

      // if the left side of the paddle hits the right side of the box
      if ((mouseX - (paddleSizeX/2) < box1X + (box1Size/2) && mouseX + (paddleSizeX/2) > box1X - (box1Size/2)) ) {

        if (box1Y + (box1Size/2) > height - paddleHeight - (paddleSizeY/2) && box1Y - (box1Size/2) < height - paddleHeight + (paddleSizeY/2)) {

          gameOver = true;
          //boxDropSpeed = 0;
           fill(0);
      stroke(0);
      strokeWeight(400);
      text("GAME OVER", width/2, height/2);
          
        }
      }
    }// end of if(gameOver)

  } //end of if(play) if statement   -- toggle game on and off using the boolean play










  /// ----------- keyboard keystroke checks --------------

  //if(keyPressed){
  // if(key == ' '){
  //  if(play){ 
  //    play = false;
  //  }
  //  else{ play = true;}
  //  println("play = " + play);

  // }





  // if(key == ' ') play = true;
  // if(key == ' ') play = true;
  // if(key == ' ') play = true;
  // if(key == ' ') play = true;

  // coordinates = false;
  //oolean boxCoordinates = false;
  //oolean paddleCoordinats = false;
  //oolean boxMarkers = false;
  //oolean paddleMarkers = false;



  // } // end of if(keyPressed)
}// end of file