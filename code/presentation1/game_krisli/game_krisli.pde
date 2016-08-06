
import ddf.minim.*;

Minim minim;
AudioPlayer song;


boolean spaceIsPressed;

float a;
float b;
float s;
float d; //direction
int state;

void setup() {
  size(800, 600);
  s = 0;
  d = -0.1;

  state = 100;

  minim = new Minim(this);

  // this loads mysong.mp3 from the data folder
  song = minim.loadFile("Happy Ukulele Background Music for Make Up Tutorials and other videos!.mp3");
  song.play();
  spaceIsPressed = false;
}

void draw() {

  if(!spaceIsPressed){
  addIllustration();
} else {
  addIllustration();
  fill(0,150);
  rect(0,0,width,height);
  
}
 
  if (state == 100) {
    println("Hi! Let’s go on an adventure on this bike.");
    println("A. Go north.");
    println("B. Go south.");
    state = 0;
  }
}

void keyPressed() {
  if (key == 'A' || key == 'a') {
    if (state == 0) {
      println("");
      println("Your bike chain is broken");
      println("A. Wait for a car and try to hitch hike.");
      println("B. Fix the bike chain.");
      state = 1;
    } else if (state == 1) {
      println("");
      println("No one stopped...");
      println("A. Fix the bike chain.");
      state = 3;
    } else if (state == 2) {
      println("");
      println("Your bike chain is broken");
      println("A. Wait for a car and try to hitch hike.");
      println("B. Fix the bike chain.");
      state = 1;
    } else if (state == 3) {
      println("");
      println("It worked! But then it started raining.");
      println("A. Look for a place to stay.");
      println("B. Continue riding");
      //insert rain code
      state = 4;
    } else if (state == 4) {
      println("");
      println("You found a lodge!");
      println("A. Go in!");
      println("B. Continue travelling.");
      state = 5;
    } else if (state == 6) {
      println("");
      println("You found a lodge!");
      println("A. Go in!");
      println("B. Continue travelling.");
      state = 5;
    } else if (state == 5) {
      println("");
      println("This seems like a great place to rest for the night.");
      println("Enjoy the night! Use the space key to turn the lights off");
      println("ESC when you wish to leave.");
      //between
      //if (keyPressed) {
      //if (spaceIsPressed) {
      //  fill(0, 50);
      //  noStroke();
      //  rect(0, 0, width, height);
      //}
      //}
      //this
      state = 7;
    }
  }// end of key A

  if (key == 'B' || key == 'b') {
    if (state == 0) {
      println("");
      println("You’re riding against the wind, the wind is too strong.");
      println("A. Turn around!");
      state = 2;
    } else if (state == 1) {
      println("");
      println("It worked! But then it started raining.");
      println("A. Look for a place to stay.");
      println("B. Continue riding");
      //insert rain code
      state = 4;
    } else if (state == 4) {
      println("");
      println("You found a lodge!");
      println("A. Go in!");
      println("B. Continue travelling.");
      state = 5;
    } else if (state == 5) {
      println("");
      println("It's getting dark! Let's turn around.");
      println("A. Go back to the lodge.");
      state = 6;
    }
  } // end of key B
  
  if(key == ' '){
  spaceIsPressed = true;
  }

  //if (key ==CODED){
  //      if (keyCode == UP){
  //          fillVal + 10
  //         //do something 
  //      }

  //  if (key == ' ') {
  //    fill(0,50);
  //    noStroke();
  //    rect(0,0,width,height);
  //}
}

void addIllustration(){

 a = mouseX*0.1;
  b = mouseX*0.02;


  background(220, 235, 245);
  fill(240, 230, 220);
  noStroke();
  rect(0, 400, width, 200);
  fill(205, 150, 80);
  rect(0, 470, width, 50);

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
  translate(a-40, 15-b/2);

  //moving wheels

  stroke(200);
  line(250, 400, 250+90*cos(d*s), 400-90*sin(d*s));
  line(250, 400, 250+90*cos(d*s+0.5*PI), 400-90*sin(d*s+0.5*PI));
  line(250, 400, 250+90*cos(d*s+PI), 400-90*sin(d*s+PI));
  line(250, 400, 250+90*cos(d*s+1.5*PI), 400-90*sin(d*s+1.5*PI));

  line(550, 400, 550+90*cos(d*s), 400-90*sin(d*s));
  line(550, 400, 550+90*cos(d*s+0.5*PI), 400-90*sin(d*s+0.5*PI));
  line(550, 400, 550+90*cos(d*s+PI), 400-90*sin(d*s+PI));
  line(550, 400, 550+90*cos(d*s+1.5*PI), 400-90*sin(d*s+1.5*PI));



  //pushMatrix();
  if (keyPressed) {
    s++;
  } else {
    s=s+0.1;
  }

  //bicycle
  noFill();
  stroke(200);
  strokeWeight(8);
  ellipse(250, 400, 180, 180);
  ellipse(550, 400, 180, 180);
  line(480, 250, 550, 400);
  line(480, 250, 550, 400);
  line(350, 350, 500, 300);
  line(385, 335, 365, 280);
  line(375, 280, 345, 280);
  arc(250, 400, 220, 220, PI+QUARTER_PI, 1.85*PI);
  arc(550, 400, 220, 220, 1.35*PI, 1.85*PI);

  strokeWeight(3);
  ellipse(250, 400, 20, 20);
  ellipse(550, 400, 20, 20);
  ellipse(400, 410, 40, 40);
  line(250, 390, 400, 390);
  line(250, 410, 400, 430);
  line(480, 250, 450, 270);
  line(480, 250, 460, 240);
  popMatrix();

  //cactus
  noStroke();
  fill(80, 145, 130);
  ellipse(120-a, 550, 80, 380);
  ellipse(720-a, 570, 150, 480);

  fill(100, 160, 145);
  ellipse(170-a, 600, 50, 180);
  ellipse(670-a, 600, 80, 240);

  //rain
  //stroke(blue);
  //strokeWeight(5);
  //line(0,0,5,height);

  //dark
  //fill(0);
  //noStroke();
  //rect(0,0,width,height,50);


}