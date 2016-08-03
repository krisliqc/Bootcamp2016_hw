// FirstSketch
// Bootcamp 2016 CODE
// Day 01
//
// This sketch assigns a random shade of grey to the background on each frame

float brightness; // a variable to store the current shade, with 0 being black and 255 
           // being white

void setup() {
  frameRate(30);
  size(500, 500); // defines the size of the window or canvas in pixels (x,y)
  background(0);  // makes the background 0 (black)
}

void draw() {
  brightness =  random(255); // assigns shade to a random value between 0 and 256 
                             // (non-inclusive of 256)
                             
  background(brightness); // makes the background whatever the current value of shade
                     // is (defined above)
                     println(brightness);
}