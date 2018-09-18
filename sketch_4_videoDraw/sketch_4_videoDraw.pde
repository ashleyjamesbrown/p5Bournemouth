import processing.video.*;
// intro to processing
// sketch 4.
// AUB
// p5Bournemouth
// Ashley James Brown for Not Yet Invented
//-----------------------------------------------------------------------------------

Capture cam;


void setup() {
  size(800, 600);
  background(90, 123, 50);
  
  // create a new instance of the camera at 640,480 resolution
  cam = new Capture(this,640,480);
  // start the camera
  cam.start();
  //enable to draw using the centre point
  imageMode(CENTER);
}

//-----------------------------------------------------------------------------------

void draw() {
  //tint(220,0,200);
  
  //example filter applied just to the camera image and not the entire canvas
  cam.filter(THRESHOLD);
  
  // draw the camera image at x,y and resize by x,y using the mouse
  image(cam,mouseX,mouseY,mouseX,mouseY);

}

//-----------------------------------------------------------------------------------

// our own function we need to pipe camera data from the webcam to the image buffer
void captureEvent(Capture cam){
 cam.read();
}

//-----------------------------------------------------------------------------------

// our own function to enable something to happen when we press a key
void keyPressed(){
 saveFrame("myImage-###.jpg"); 
}