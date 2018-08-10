// this code will not run! But use it as a guide through the drawing activity

// introduce the kids to void setup and void draw methods.
// these methods take no imput, and they are called at different times when you run your program
// void setup is run once at the beginning of your program
// void draw is called over and over agian

// after explaining void draw you can have them put their size command into void setup
// show them the background() method if you haven't already

// ask them what are some of the things you can do with a drawing program
// make sure they have, draw, change colors, erase, clear screen.
// you can add after the basics, changing size of the drawing tool and an indicator of what color is chosen and how big the tool is


// teach using variables for the color


// this file is the order I would show them things. Refernce the finished program to see where everything should go.



//color drawColor = color(0); // create variable for draw c

void setup(){
 size(1000,1000);
 background(255); //white background
}

void draw(){
}

// first I would show them that we can controll stuff by using mouseX and mouseY variables that get the mouses current possition
// as the x an y position of a shape. Draw an ellipse that tracks the mouse..
ellipse(mouseX,mouseY,50,50); // put inside draw() let them play with it

//when they are ready are ready tell them we can use the line() method to draw lines. 
//If we use mouseX and mouseY as one point what should we use as the second position. 
//See if they can spot it on the reference sheet.
// use pmouseX and pmouseY as the other point
// replace ellipse with...
line(mouseX,mouseY,pmouseX,pmouseY); // wooo we can draw! see how easy that was!

// now we only want to draw when we left click
// we need to use an if statement to check to see what is happening in our 
// program and run code when something specific is going on

// if statments look like this... ( we will go over this in more detail later)
if(something = true){
 run the code inside the brackets! 
  
}

if something = false then the code does not run!

// we want to test if the mouse button is being pressed.. sooooo we check to see...

if(mousePressed){
  
}

//if the mouse is being pressed then mousePressed will == true
// if the mouse is not being pressed then mousePressed will == false

// what do we want to do when the mouse button is pressed? we want to draw a line so put our line method inside of the if statement
// should look like this....
if(mousePressed){
  line(mouseX,mouseY,pmouseX,pmouseY);
}

// now we can test our code.. what do you notice? (It doesn't matter what mouse button you click, they both draw)
// Yes! we can change this though by checking for more than just if a mouse button is being pressed.
// we are going to use two && andpersand signs  (shift 7) which when used inside of an if statment will make it so the
// code only runs if BOTH the thing on the left && right are true.

//we can add... 
&& mouseButton == LEFT
//inside the if statment to check to see which one is being pressed.
// we use two equals signs inside if statments to check if two things are equal

// this will mean a mouse button needs to be pressed && the mouseButton needs to == LEFT

// our if statment should look like...
if(mousePressed && mouseButton == left){
  line(mouseX,mouseY,pmouseX,pmouseY);
}

// test it out! we should only be able to draw now if we are pressing the left mouse button.
// great, play around with it for a bit!

// I would segway this into changing the color of the line using the stroke() method
// stroke needs an rgb color input
// what we will do is we will make a global variable to store what color we want to draw with and then 
//use it to set the stroke before we draw our line.


// talk about variables breifly.. they are a container we can use in our program.
// the container can only hold one type of thing.
// once we have made the container we can..
// see what is inside it
// take stuff out of it
// put stuff in it
// we can even us what is inside it in another method
// in programming you will create containers, which is called declairing a variable
// you will do this by typing a viarable type then a variable name.
// variable types include
 int // (intager or positive or negative whole number) ex. 46
 float // (positive or negative decimal number) ex. 18.5
 char // (single character either a letter or number usually surrounded by ') ex. 'S'
 String // (group of more than one character which can include spaces usually surrounded by ") ex. "Coding is fun!"
 boolean // (booleans either have the value true or false) ex. true
 color // (stores a color using the color(R,G,B) method) ex. color(0,100,255)
 
// the variable name which comes after the variable name must start with a letter may include uppercase and lower case letters along with numbers.

// make a global variable up at the top of the project before void setup().
// we call it a global variable becuase any part of your code can use it.
// if you make a variable inside of a method like setup(), the variable only lives untill setup has finished running and then it goes away

// add the global variable and set it to back all in one line.

color drawColor = color(0);

// but how do we use it! Well as mentioned we want to use it to set the color of our line just before we draw it.
// put a stroke() method right before our line and for the color input just use our variable name drawColor
// we can test it out, hopfully our program will still function normally.
// now we want to change the color. The easiest way to do that is by running code when a keyboard key is pressed. 
// we can use another if statement to check if a key is being pressed by using another if statment
// HAND OUT KEYPRESSED REFERENCE GUIDE IF POSSIBLE. A copy should be on my clipboard to photocopy or Neil can find it in the class proccessing drive

if(keyPressed && key == '1'){ // type the key you want to use inside the ''

}
 
 // this if statement checks to see if a keyboard key is being pressed and if it is a specific key.
 // when we press the key we want to update the drawColor variable with a new value
 // to do this type the variable name, then set it = to something new, like another color(R,G,B)
 // you should have something like this inside the if statement...
 drawColor = color(0,0,255);
 
 // this will set the draw color to blue!
 // the whole if statement should look like this..
 if(keyPressed && key == '1'){ // type the key you want to use inside the ''
 drawColor - color(0,0,255); 

 }
 
 
 // go ahead and test it out. If you press the 1 key your line should turn blue!
 // make more! Everyone should have at least 5 colors to chose from! Use the color tool to find some cool colors 
 // you can add more colors by adding more if(keyPressed statements) ! 
 // give them pleanty of time to add colors to their project and trouble shoot anyones code
 
 
 // add clear the background functionallity. You can ask the kids how they think you could clear the screen.
 // the easiest way to clear the screen is just to draw a new background over everything.
 
 // add the code....
 
 if(keyPressed && key == 'c'){ 
   background(255); // draw a white background 
 }
 
 
 // ask how we could make an eraser... best way is to draw ellispe that is the same color as your background.
 
 if(keyPressed && key == 'c'){ 
   fill(255); // set fill to background color (white)
   noStroke(); // clear the stroke
   ellipse(mouseX,mouseY, 20,20); // draw a white ellipse with no border 
 }
 
 // add size global variable and set the strokeWeight to the size variable before you draw your line
 
 int drawSize = 5;
 
 strokeWeight(drawSize);
 stroke(drawColor);
 line()....
 
 // change the size using the + and - keys
 
  // make it bigger
 if(keyPressed && key == '+'){
   
  drawSize = drawSize + 1;
  //or
  drawSize++;
   
 }
 // make it smaller
 if(keyPressed && key == '-'){
   
  drawSize = drawSize - 1;
  //or
  drawSize--;
   
 }
 
 
 // your program will crash though if drawSize is a negative number. We have to check and make sure it does not go below 5
 // or the smallest youw want the draw tool to go...
 
 // add the if right after drawSize = drawSize -1; before the }
 
 if(drawSize < 5){ // check if drawSize becomes less than 5
   drawSize = 5; // if so set it equal to 5
 }
 
 
 
 // add a tool to show us what color is currently selected and how big the tool is...
 // we will draw an elipse using the variables for its color and size.
 // put this at the top of void draw
 
 fill(drawColor);
 noStroke();
 ellipse(0,0,drawSize,drawSize);
 
 
 // when you press the - key to make it smaller it does some weird stuff with the ellipse at the top of the screen.
 // we can add this to our key == - code when we shrink our drawing tool and make it smaller.
 // essientially we will erase the last ellipse at the top right before we draw the new smaller one.
 
 // at the top of if(keyPressed && key == '-') statement add...
 fill(255); // set fill to background color
 stroke(255); // set stroke to background color
 ellipse(0,0,drawSize+3,drawSize+3); // we can do math inside a line of code to draw a circle 3 bigger than drawSize
 
 // finished! make a drawing!
 
 
 
 
 
 
 
 
 
 