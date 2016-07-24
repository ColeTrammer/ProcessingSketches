float numCirclesRight;
float numCirclesLeft;

void setup() {
  size(800, 800);
  clearScreen();
}

void draw() {

}

void keyPressed() {
  clearScreen();
  setupScreen();
  if(keyCode==LEFT){
  if(numCirclesLeft>=numCirclesRight){
    println("You Won The Round");
  }else{
    System.exit(0);
}
  }
  }
void clearScreen() {
  clear();
  background(160, 160, 160);
  rect(400, 0, 1, 800); 
}

void setupScreen() {
  
  
  numCirclesRight = random(7, 20);
  for (int i = 0; i< numCirclesRight; i++) {
     drawCircle(true);
  }
  numCirclesLeft = random(7, 20);
  for (int i = 0; i< numCirclesLeft; i++) {
     drawCircle(false);
  }
}

void drawCircle(boolean side) {
  if (side == true) {
  float x = random(0, 400);
  float y = random(0, 800);
  float size = random(10, 50);
  fill(255, 0, 0, 50);
  ellipse(x, y, size, size);
  } else {
      float x = random(400, 800);
  float y = random(0, 800);
  float size = random(10, 50);
  fill(0, 0, 255, 50);
  ellipse(x, y, size, size);
  }
}
