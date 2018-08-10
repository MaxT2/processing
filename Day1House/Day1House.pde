//house challange
// draw a house with two windows, a door and door knob, and roof
// the door should be 1/2 the height of the house
// the window should be 1/4 the height of the house
// when the kids finish, they should color their drawing and add a background
// and anything else they can think of!

size(1000,1000);

rect(100,400,700,400); //main rectangle

triangle(100,400,800,400,450,150); //roof

rect(400,600,100,200); //door
ellipse(475,700,20,20); //door knob

rect(200,525,100,100); // left window
rect(600,525,100,100); // right window