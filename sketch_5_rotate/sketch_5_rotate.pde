// intro to processing
// sketch 5.
// AUB
// p5Bournemouth
// Ashley James Brown for Not Yet Invented
//-----------------------------------------------------------------------------------

void setup() {
  size(800, 600);
  background(90, 123, 50);
  // enable us to draw rectangles by specifying centre point x,y and width,height
  rectMode(CENTER);
}

//-----------------------------------------------------------------------------------

void draw() {

  // push and pop allow us to start and stop the matrix manipulation
  // translate the canvas to a new position
  // rotate the canvas
  // draw something
  
  pushMatrix();
  translate(width/2, height/2);

  rotate(radians(-frameCount));
  
  float r = random(0, 255);
  float g = random(0, 255);
  float b = random(0, 255);
  fill(r, g, b);

  rect(0, 0, frameCount*0.1, frameCount*0.1);
  
  popMatrix();
}

//-----------------------------------------------------------------------------------


// our own function to enable something to happen when we press a key
void keyPressed() {
  saveFrame("myImage-###.jpg");
}