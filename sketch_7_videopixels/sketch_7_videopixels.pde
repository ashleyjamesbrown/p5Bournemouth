import processing.video.*;

// intro to processing
// sketch 7
// AUB
// p5Bournemouth
// Ashley James Brown for Not Yet Invented
//-----------------------------------------------------------------------------------


// with this sketch we use our camera code
// and we swap every instance in teh draw loop of cat for cam

Capture cam;

void setup(){
  size(1200,600);
  background(0);

  imageMode(CENTER);
  
  // create a new instance of the camera at 640,480 resolution
  cam = new Capture(this,640,480);
  // start the camera
  cam.start();
}


void draw(){
  image(cam,width/2,height/2);
  blendMode(BLEND);
  tint(255,255,255, 15);
  
  float x1 = random(0,cam.width*2); 
  float y1 = random(0,cam.height);
  
  float x2 = random(0,width); 
  float y2 = random(0,cam.height);
  
  float offX = random(-50,50);
  float offY = random(-50,50);
  
  cam.loadPixels();
  copy(int(x1), int(y1),100,100, int(x1+offX),int(y1+offY),100,100); 
  cam.updatePixels();
}

//-----------------------------------------------------------------------------------

// our own function we need to pipe camera data from the webcam to the image buffer
void captureEvent(Capture cam){
 cam.read();
}

void keyPressed() {
  saveFrame("myImage-###.jpg");
}