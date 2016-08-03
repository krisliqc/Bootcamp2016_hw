//boolean b = true;
//b=!b;

//println(b);

int w,h;

void setup(){
  size(500,500);
  //frameRate();
  w = width/2;
  h = height/2;
  
}

void draw(){
  background(255);
  fill(0);
  line(w,0,w,height);
  line(0,h,width,h);
  
  if (mouseX>0 && mouseX<w && mouseY>0 && mouseY<h){
     rect(0,0,w,h); 
  }
  
  if (mouseX>w && mouseX<width && mouseY>0 && mouseY<h){
     rect(250,0,w,h); 
  }
  
  if (mouseX>0 && mouseX<w && mouseY>h && mouseY<height){
     rect(0,250,w,h); 
  }
  
  if (mouseX>w && mouseX<width && mouseY>h && mouseY<height){
     rect(250,250,w,h); 
  }
  
}