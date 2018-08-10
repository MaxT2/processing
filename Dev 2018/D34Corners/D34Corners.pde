//D3 4 corner variable exersize
// challange: draw 4 rectanlges that fill the 4 corners of the screen
// then have them change the size of the window and the squares will not stay in the corners
// teach them how to use variables to make the squares stay in the corners

// ----------- without variables ---------------

void setup(){
  size(1000,1000);
  background(255);
}

void draw(){
 rect(0,0,500,500); // top left
 rect(0,500,500,500); // botom left
 rect(500,0,500,500); // top right
 rect(500,500,500,500); // bottom right
    
}

/// ---------- with variables ----------
// use a variable for the size of the squares
// use the width and height veriables which return how wide and how tall the screen is


int rectSize;
void setup(){
  size(1000,1000);
  background(255);
  rectSize = width/2;
}

void draw(){
 rect(0,0,rectSize,rectSize); // top left
 rect(0,height-rectSize,rectSize,rectSize); // botom left
 rect(width-rectSize,0,rectSize,rectSize); // top right
 rect(width-rectSize,height-rectSize,rectSize,rectSize); // bottom right
    
}