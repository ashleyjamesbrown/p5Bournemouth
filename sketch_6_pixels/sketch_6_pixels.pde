// intro to processing
// sketch 6
// AUB
// p5Bournemouth
// Ashley James Brown for Not Yet Invented
//-----------------------------------------------------------------------------------

// using same image code as from previous workshops
PImage cat;

void setup(){
  size(1200,600);
  background(0);
  cat = loadImage("cat.jpg");
  imageMode(CENTER);
}


void draw(){
  image(cat,width/2,height/2);
  
  //blendmode allows us to alter the way imags are drawn to the canvas
  // by using a tint we apply a white very transparent overlay to the image
  blendMode(BLEND);
  tint(255,255,255, 15);
  
  float x1 = random(0,cat.width*2); 
  float y1 = random(0,cat.height);
  
  float x2 = random(0,width); 
  float y2 = random(0,cat.height);
  
  float offX = random(-10,10);
  float offY = random(-10,10);

  // always loadpixels before we can mess with them
  cat.loadPixels();
  
  //take a square rectangle of pixels from a position and put them in a new position
  copy(int(x1), int(y1),100,100, int(x1+offX),int(y1+offY),100,100); 
  
  //always update to say we are finished messing 
  cat.updatePixels();
}

void keyPressed() {
  saveFrame("myImage-###.jpg");
}