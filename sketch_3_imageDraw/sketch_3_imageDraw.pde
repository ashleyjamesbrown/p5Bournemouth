// intro to processing
// sketch 3.
// AUB
// p5Bournemouth
// Ashley James Brown for Not Yet Invented
//-----------------------------------------------------------------------------------

PImage img;

void setup() {
  size(800, 600);
  background(90, 123, 50);
  
  // drag the image into our code
  // load image from our computer into the global variable
  img = loadImage("pop.png");
}

//-----------------------------------------------------------------------------------

void draw() {
  
  // draw the image at mouse position x,y and scale the size to a 4th
  image(img,mouseX,mouseY,img.width/4,img.height/4);
}

//-----------------------------------------------------------------------------------


// our own function to enable something to happen when we press a key
void keyPressed(){
 saveFrame("myImage-###.jpg"); 
}