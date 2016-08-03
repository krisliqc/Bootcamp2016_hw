PFont f;

void setup(){
  size(500,500);
  background(255);
  f = createFont("Arial",36,true);
}

void draw(){
  fill(255,255,0);
  textFont(f);
  textAlign(CENTER);
  text("Hello World", width/2,height/2);
}