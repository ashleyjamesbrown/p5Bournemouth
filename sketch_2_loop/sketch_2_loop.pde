// intro to processing
// sketch 3.
// AUB
// p5Bournemouth
// Ashley James Brown for Not Yet Invented
//-----------------------------------------------------------------------------------

void setup() {
  size(800, 600);
  background(90, 123, 50);
}

//-----------------------------------------------------------------------------------


void draw() {
  
  // a loop of 100 times
  
  for (int i=0; i < 100; i++) {
    
    // random numbers assigned to a variable
    float x = random(1, width);
    float y = random(1, height);
    
    float r = random(0,255);
    float g = random(0,255);
    float b = random(0,255);
    
    // use  
    fill(r,g,b);
    rect(x, y, mouseX, mouseY);
  }
  
}