float a;
float b;

void setup(){
  size(800,600);
}
void draw(){
  
  a = mouseX*0.1;

  b = mouseX*0.02;
  
  background(220,235,245);
  fill(240,230,220);
  noStroke();
  rect(0,400,width,200);
  fill(205,150,80);
  rect(0,470,width,50);

  //cloud left
  fill(245);
  arc(200-a/2, 170, 130+b, 130+b, -PI, 0);
  fill(255);
  arc(120-a/2, 170, 80+b, 80+b, -PI, 0);
  
  //cloud right
  fill(245);
  arc(580+a, 200, 160+b, 160+b, -PI, 0);
  fill(255);
  arc(650+a, 200, 100+b, 100+b, -PI, 0);

  
  pushMatrix();
  translate(a-40,15-b/2);
  
  
  //wheels
  
  
  //pushMatrix();
  //if(mousePressed){
    
    //line(250,400,250+90*cos(a),400-90*sin(a));
  //rotate(b/10);
  stroke(220);
  line(250,315,250,485);
  line(165,400,335,400);
  line(315,340,185,465);
  line(185,340,315,465);
  
  line(550,315,550,485);
  line(465,400,635,400);
  line(615,340,485,465);
  line(485,340,615,465);
  //}
  //popMatrix();
  
  
  //bicycle
  noFill();
  stroke(200);
  strokeWeight(8);
  ellipse(250,400,180,180);
  ellipse(550,400,180,180);
  line(480,250,550,400);
  line(480,250,550,400);
  line(350,350,500,300);
  line(385,335,365,280);
  line(375,280,345,280);
  arc(250, 400, 220, 220, PI+QUARTER_PI, 1.85*PI);
  arc(550, 400, 220, 220, 1.35*PI, 1.85*PI);
  
  strokeWeight(3);
  ellipse(250,400,20,20);
  ellipse(550,400,20,20);
  ellipse(400,410,40,40);
  line(250,390,400,390);
  line(250,410,400,430);
  line(480,250,450,270);
  line(480,250,460,240);
  popMatrix();
  
  //cactus
  noStroke();
  fill(80,145,130);
  ellipse(120-a, 550, 80, 380);
  ellipse(690-a, 570, 120, 480);
  
  fill(100,160,145);
  ellipse(170-a, 600, 50, 180);
  ellipse(640-a, 600, 80, 240);
  
  //fill(255,0,0);
  //arc(mouseX, mouseY, 80, 380, 1.5, 0.4, CHORD);
  //ellipse(100,100,50,50);
  //println("i'm here!");
   
}