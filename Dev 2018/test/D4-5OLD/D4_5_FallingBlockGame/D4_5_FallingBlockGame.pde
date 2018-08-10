// dropping box avoiding game
// goal is to make a game where the player controls the paddle and has to avoid falling objects
// the paddle is controlled by the mouse
// it uses variables, and includes collision detection
// setup all the variables we need


int paddleSizeX = 150;
int paddleSizeY = 30;
int paddleY;
int boxStartingY = -200;
int boxSpeed = 5;
float box1X;
float box1Y;
float box1Size = 100;
float box1Radius = box1Size/2;
int score = 0;
boolean gameOver = false;


void setup() {
  size(850, 850);
  background(255);
  rectMode(CENTER);
  paddleY = width - paddleSizeY;
  box1Y = boxStartingY;
  box1X = random( 0 + box1Radius, width - box1Radius);
}

void draw() {
  
if(gameOver == false){ // if the game is not over
  
  background(255); // draw a background to whipe the screen
  fill(255); // set box color
  rect(mouseX, height - paddleSizeY, paddleSizeX, paddleSizeY); // draw paddle
  fill(255); // set paddle color
  rect(box1X, box1Y, box1Size, box1Size); // draw box

  box1Y = box1Y + boxSpeed; // update box position to make it drop

  if (box1Y > height + box1Radius) { // if box falls off screen
    box1Y = boxStartingY; // place above screen
    box1X = random( 0 + box1Radius, width - box1Radius); // place random x pos
    score++; // add one to score
    // increasing game difficulty
    if(score%5 == 0){ // every 5 score......
      boxSpeed = boxSpeed + 2;  // make boxes faster
    }
    if(score%10 == 0){ // every 10 score....
     box1Size = box1Size + 5;  // make boxes bigger
    }
  }// end of box fall off screen code

  // SCORE STUFF
  fill(255);  // set fill to white
  rect(0,0,400,100);   // create a rectangle we can put score in
  fill(0); // set fill to black
  textSize(25);   // make the text size larger
  text("Score = " + score, 30,30); // draw score message
  
  // test for collisions
  if (mouseX + paddleSizeX/2 > box1X - box1Size/2) {
    if (mouseX - paddleSizeX/2 < box1X + box1Size/2) {
      if (box1Y + box1Size/2 > paddleY - paddleSizeY/2) {
        if (box1Y - box1Size/2 < paddleY + paddleSizeY/2) {
          gameOver = true; // if you collide with box stop the game!
        }
      }
    }
  }// end of box collision check
  
} // end of if(gameOver == false) check
if(gameOver == true){ // if the game is over..
  boxSpeed = 0; // stop moving the boxes
  // GAME OVER MESSAGE STUFF
  fill(0); // set game over text color
  textSize(40); // set text size
  textAlign(CENTER,CENTER); // make text draw from the middle  
  text("GAME OVER", width/2,height/2); // game over message
}
  
  // and we are done! Play with your game. Change some of the variables we made
  // you can change...
  // how much score you get for avoiding boxes
  // the color of the background, box, paddle & text.
  // score%5 means that every 5 score your game will get harder
  // make the 5 larger or smaller to make your game get harder after a certain amount of times the player scores
  // change how much you add to boxSpeed when we increased the difficulty
  // change how much you add to boxSize when we increased teh difficulty
  
  
} // end of file