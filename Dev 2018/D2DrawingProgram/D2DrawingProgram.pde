color drawColor = color(0);
int drawSize = 5;

void setup() {
  size(1000, 1000);
  background(255); //white background
}

void draw() {
  fill(drawColor);
  noStroke();
  ellipse(0, 0, drawSize, drawSize);

  if (mousePressed && mouseButton == LEFT) {
    strokeWeight(drawSize);
    stroke(drawColor); // set the line color to drawColor
    line(mouseX, mouseY, pmouseX, pmouseY); // draw our line
  }
  if (keyPressed && key == '1') { // type the key you want to use inside the ''
    drawColor = color(0, 0, 255); //blue
  }
  if (keyPressed && key == '2') { 
    drawColor = color(0, 255, 0); // green
  }
  if (keyPressed && key == '3') { // type the key you want to use inside the ''
    drawColor = color(255, 0, 0); // red
  }
  if (keyPressed && key == 'e') {
    background(255); // draw a white background
  }

  if (mousePressed && mouseButton == LEFT) {
    stroke(drawColor); // set the line color to drawColor
    line(mouseX, mouseY, pmouseX, pmouseY); // draw our line
  }

  if (keyPressed && key == 'e') { 
    fill(255); // set fill to background color (white)
    noStroke(); // clear the stroke
    ellipse(mouseX, mouseY, 20, 20); // draw a white ellipse with no border
  }

  if (keyPressed && key == 'c') { 
    background(255); // draw a white background
  }

  if (keyPressed && key == '+') {
    drawSize = drawSize + 1;
  }

  if (keyPressed && key == '-') {
    drawSize = drawSize - 1;

    fill(255); // set fill to background color
    stroke(255); // set stroke to background color
    ellipse(0, 0, drawSize+3, drawSize+3); // we can do math inside a line of code to draw a circle 2 bigger than drawSize


    if (drawSize < 5) { // if drawSize ever becomes less than 5
      drawSize = 5; // set draw size equal to 5
    }
  }
}