//score -- score variable - itterate on object reset
//random drop speeds on object reset
//game stopping
//images at the end

float rainDrop1X;
float rainDrop1Y = -50;
float rainDrop1Speed = random(4,30);

float rainDrop2X;
float rainDrop2Y = -50;
float rainDrop2Speed = random(4,30);

float rainDrop3X;
float rainDrop3Y = -50;
float rainDrop3Speed = random(4,30);

int score = 0;
PImage image1;

void setup() {
  size(900, 800);
  textSize(34);
  //place rain drop randomly
  rainDrop1X = random(0, width-50);  
  rainDrop2X = random(0, width-50);  
  rainDrop3X = random(0, width-50);
  image1 = loadImage("rainDrop.png");
}

void draw() {
  //give it a background
  background(0);
  //draw our rainDrops
  
  
//  rect(rainDrop1X, rainDrop1Y, 50, 50);
//  rect(rainDrop2X, rainDrop2Y, 50, 50);
//  rect(rainDrop3X, rainDrop3Y, 50, 50);

//image(name of Image, xPOS, yPOS, width, height);
  image(image1,rainDrop1X,rainDrop1Y,50,50);
  image(image1,rainDrop2X,rainDrop2Y,50,50);
  image(image1,rainDrop3X,rainDrop3Y,50,50);
  

  // code to drop raindrops
  rainDrop1Y = rainDrop1Y + rainDrop1Speed;
  rainDrop2Y = rainDrop2Y + rainDrop2Speed;
  rainDrop3Y = rainDrop3Y + rainDrop3Speed;
  // code for mouse paddle
  rect(mouseX, height-50, 50, 25);


  //if your raindrop1 falls off the screen..
  if (rainDrop1Y > height + 50) {
    rainDrop1X = random(0, width-50);  
    rainDrop1Y = -50;
    rainDrop1Speed = random(4,30);
    score = score + 1;
  }
  //if your raindrop2 falls off the screen..
  if (rainDrop2Y > height + 50) {
    rainDrop2X = random(0, width-50);  
    rainDrop2Y = -50;
    rainDrop2Speed = random(4,30);
    score = score + 1;
  }
  //if your raindrop3 falls off the screen..
  if (rainDrop3Y > height + 50) {
    rainDrop3X = random(0, width-50);  
    rainDrop3Y = -50;
    rainDrop3Speed = random(4,30);
    score = score + 1;
  }

  // if the rainDropY is greater than height - size of the drop -size of paddle
  //and rainDrop1X is larger than mouseX - size of the drop
  //nad rainDrop1X is less than mouseX + size of the drop + size of the paddle


  if (rainDrop1Y > height-50-25 && rainDrop1X > mouseX - 50 && rainDrop1X < mouseX + 50) {

    text("game over!", width/2, 200);
    rainDrop1Speed = 0;
    rainDrop2Speed = 0;
    rainDrop3Speed = 0;
  }
  if (rainDrop2Y > height-50-25 && rainDrop2X > mouseX - 50 && rainDrop2X < mouseX + 50) {

    text("game over!", width/2, 200);
    rainDrop1Speed = 0;
    rainDrop2Speed = 0;
    rainDrop3Speed = 0;
  }

  if (rainDrop3Y > height-50-25 && rainDrop3X > mouseX - 50 && rainDrop3X < mouseX + 50) {
    color(255, 0, 0);
    text("game over!", width/2, 200);
    rainDrop1Speed = 0;
    rainDrop2Speed = 0;
    rainDrop3Speed = 0;
  }

  //place rain drop randomly
  //while raindrop < height, rainDrop falls
  // if rainDrop > height redraw rainDrop
  
  textSize(24);
  text(score,25,25);
  textSize(32);
  
} //ends the draw() method