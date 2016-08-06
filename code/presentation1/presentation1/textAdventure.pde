//int state;

//void setup(){
//  size(100, 100);
//  background(255);
//  state = 0;
//}

//void draw() {
//  if (state == 0) {
//    println("Hi! Let’s go on an adventure on this bike.");
//    println("A. Go north.");
//    println("B. Go south.");
//    state = 1;
//  }
//}

//void keyPressed() {
//  if (key == 'A' || key == 'a') {
//    if (state == 1) {
//      println("");
//      println("Your bike chain is broken");
//      println("A. Wait for a car and try to hitch hike.");
//      println("B. Fix the bike chain.");
//      state = 2;
//    }
//    else if (state == 2) {
//      println("");
//      println("No one stopped...");
//      println("A.Fix the bike chain.");
//      state = 3;
//    }
//    else if (state == 3) {
//      println("");
//      println("It worked! But then it started raining.");
//      println("A.Look for a place to stay.");
//      println("B.Continue riding");
//      state = 4;
//    }
//    else if (state == 4) {
//      println("");
//      println("You found a lodge!");
//      println("A.Go in!");
//      println("B.Continue travelling.");
//      state = 5;
//    }
//    else if (state == 5) {
//      println("");
//      println("You found a lodge!");
//      println("A.Go in!");
//      println("B.Continue travelling.");
//      state = 6;
//    }
//    else if (state == 6) {
//      println("");
//      println("This seems like a great place to rest for the night.");
//      println("end line");
//    }
//  }
  
//  if (key == 'B' || key == 'b') {
//    if (state == 1) {
//      println("");
//      println("You’re riding against the wind, the wind is too strong.");
//      println("A. Turn around!");
//      state = 1;
//    }
//    else if (state == 3) {
//      println("");
//      println("It worked! But it started raining...");
//      println("A. Look for a place to stay.");
//      println("B. Continue riding.");
//      state = 4;
//    }
//    else if (state == 4) {
//      println("");
//      println("You found a lodge!");
//      println("A. Go in!");
//      println("B. Continue travelling.");
//      state = 5;
//    }
//    else if (state == 5) {
//      println("");
//      println("It's getting dark! Let's turn around.");
//      println("A. Go in!");
//      state = 4;
//    }
//  }
//}