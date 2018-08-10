// dropping box avoiding game
// goal is to make a game where the player controls the paddle and has to avoid falling objects
// the paddle is controlled by the mouse
// it uses variables, and includes collision detection
// setup all the variables we need


// set variables for the paddle size in x and y direction
int paddleSizeX = 150;
int paddleSizeY = 30;
// create variable for paddleY position
int paddleY;
// we need a starting Y position for the boxes
int boxStartingY = -200;
// we need to set the box falling speed
int boxSpeed = 5;
// make variables for box x and y position
float box1X;
float box1Y;
// make variable for box size
float box1Size = 100;
// make a variable that represents the distance from
// the center of the box to one of the edges.
float box1Radius = box1Size/2;
// make a variable for keeping track of the score and set
// it to 0!
int score = 0;
// create a game over flag which will be used to stop our game
// set it to false to start with
boolean gameOver = false;


void setup() {
  size(850, 850);
  background(255);
  // we will use rectMode center to draw rectantles from their centers
  rectMode(CENTER);
  // set the paddle position to width of the screen - height of the paddle
  paddleY = width - paddleSizeY;
  // set the box1Y position to the boxStartingY variable 
  box1Y = boxStartingY;
  // lets make our box randomly spawn between 0 + the radius
  // of the box AND width - the radius of the box
  box1X = random( 0 + box1Radius, width - box1Radius);
}

void draw() {
  
  // if gameOver is false, then we want to draw our paddle 
  // and our paddle and our box and run most of our code
  // so lets check to see if it is false and put all our
  // code inside the if statement

if(gameOver == false){
  
  background(255); // draw a background to whipe the screen
  // draw the player paddle using the variables we created
  // will use mouseX for the x position
  // will put it toward the bottom of the screen
  // will use paddle size variables
  fill(255); // set box color
  rect(mouseX, height - paddleSizeY, paddleSizeX, paddleSizeY);

  // now we can also draw our box
  fill(255); // set paddle color
  rect(box1X, box1Y, box1Size, box1Size);


  // now we have to program our updates section
  // first we will have to make the box drop
  // we will use the box1Speed and add that to our 
  // box1Y position each time we draw the box
  box1Y = box1Y + boxSpeed;

  // we can now program the code that will check to see
  // if the box has fallen off the screen, if it has we
  // will spawn it back up at the top of the screen
  // with a random x position
  // we will know the box has fallen off the screen if the
  // box1Y position is greater than height + the radius of the box

  if (box1Y > height + box1Radius) {
    box1Y = boxStartingY; // place above screen
    // set box1X to random position on screen
    box1X = random( 0 + box1Radius, width - box1Radius);
    // now our boxes will respawn at the top after they
    // fall off the screen
    // if the box falls off the screen then the player
    // has sucsessfully avoided it so we should increase their score
    // we can do this by adding 1 to the score inside the if
    // statement we just created... 
    score++;    
  }

  // now lets draw the score on the screen
  // we need background behind the score and then 
  // we need to draw a text message and the score value
  
  // set fill to white
  fill(255); 
  // create a rectangle we can put score in
  rect(0,0,400,100); 
  fill(0);
  // make the text size larger
  textSize(25);
  // draw our message which is both text inside double quotes
  // and the value that is stored in the score variable
  text("Score = " + score, 30,30);
  






  // now we have to add collisions. This is hard and may be
  // confusing. We basically have to check and see if the 
  // edge of one of our paddles have passed the edge of the other
  // which means they would be overlapping

  // first let's check if the right side of the paddle is
  // touching the left side of the box
  if (mouseX + paddleSizeX/2 > box1X - box1Size/2) {
    // one down 3 to go. We are going to make a bunch of
    // if statements inside eachother. These are called 
    // nested if statements. If the first if statement is not
    // ture then none of the nested if statements will run

    // now after checking if the right side of the paddle is
    // touching the left side of our box
    if (mouseX - paddleSizeX/2 < box1X + box1Size/2) {

      // check if the botom of the box is below the top of our paddle
      if (box1Y + box1Size/2 > paddleY - paddleSizeY/2) {

        // check to see if the top of the box is above the botom of the paddle
        if (box1Y - box1Size/2 < paddleY + paddleSizeY/2) {
          // then we have collided and the game should be over!
          // set game over = true to stop our game
          gameOver = true;
        }
      }
    }
  }
  
} // end of if(gameOver == false) check
// we can now check to see if gameOver is true and run some
// code that will stop our game
if(gameOver == true){
  // we need to stop our box moving by setting its speed to 0
  boxSpeed = 0;
  // we can also display a game over message
  fill(0); // set game over text color
  textSize(40); // set text size
  textAlign(CENTER,CENTER); // make text draw from the middle
  
  text("GAME OVER", width/2,height/2);
}
  
  // that is the basic game! But of course we want to make it
  // harder the more you play! we can increase the speed of the
  // blocks every 5 score by using a modulo operation that checks
  // the score and will see if you divde the score by a number 
  // if there is a remainder. If there is no remainder and the number
  // can be evenly devided by our base number then we can run some code
  // to increase the speed of the boxes
  // the code looks like this..
  //if(score%5 == 0){
  //  boxSpeed = boxSpeed + 1; 
  //}
  // we only want to increase the speed if a box has fallen off the screen 
  // and we are going to spawn a new one so find the code where we check 
  // if the box has fallen off the screen
  // it should go right under score++;
  // we can also make the boxes bigger if we want by adding to boxSize
  // put..
  // boxSize = boxSize + 1;
  // right after our boxSpeed = boxSpeed +1; in if(score%5==0) if you want
  // to make the box size change when the box speed changes.
  // of course you don't have to make your boxes bigger if you don't want to
  // You can also add another modulo check to make your boxes get bigger at
  // a different time than when you increase speed.
  // put this code right after score++;
  // if(score%10 == 0){
  //   boxSize = boxSize + 5;
  // }
  // this would mean every time the player scores 10 in a row, the boxes get bigger.
  

  
  // and we are done! Play with your game. Change some of the variables we made
  // you can change...
  // how much score you get for avoiding boxes
  // the color of the background, box, paddle & text.
  // score%5 means that every 5 score your game will get harder
  // make the 5 larger or smaller to make your game get harder after a certain amount of times the player scores
  // change how much you add to boxSpeed when we increased the difficulty
  // change how much you add to boxSize when we increased teh difficulty
  
  
} // end of file