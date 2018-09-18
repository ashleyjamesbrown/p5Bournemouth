// intro to processing
// sketch 3.
// AUB
// p5Bournemouth
// Ashley James Brown for Not Yet Invented
//-----------------------------------------------------------------------------------


void setup() {
  // define the width and height of your canvas in pixels
  size(800, 600);
  //define the background colour with red,green,blue values
  background(90, 123, 50);
}


//-----------------------------------------------------------------------------------

void draw() {
  //background(90, 123, 50);
  
  // fill a shape with a colour using red,green,blue values
  fill (mouseX, 100, mouseY,90);
  
  // draw a circle at x,y position with a width and height in pixels.
  ellipse(mouseX,mouseY,100,100);

}