float hue, r, g, b;

//float hue;
//float r;
//float g;
//float b;

void setup(){
  size(500,500);
  background(0,0,220);
  frameRate(10);
}

void draw(){
  
  hue = random(256);
  r = random(256);
  g = random(256);
  b = random(256);
  //fill(hue);
  fill(r, g, b);
  //noStroke();
  stroke(255,0,0);
  ellipse(250,250,200,150);
  
}