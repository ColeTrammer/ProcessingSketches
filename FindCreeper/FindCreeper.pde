PImage creeper;
PImage minecraft;

int creeperX;
int creeperY;

void setup() {
  size(583,500);
  
  minecraft = loadImage("minecraft.jpg");
  background(minecraft);
  creeper = loadImage("creeper.png");
  creeper.resize(10,10);
  
  creeperX = int(random(10,573));
  creeperY = int(random(10,490));
}

void draw() {
  if(isNear(creeperX,mouseX,5) == true && isNear(creeperY,mouseY,5) == true){
    //image(creeper,creeperX - 5,creeperY - 5);
    setup();
    image(creeper,creeperX - 5,creeperY - 5);
  }  
  if(mousePressed == true){
    noStroke();
    if(isNear(creeperX,mouseX,30) == true && isNear(creeperY,mouseY,30) == true){
      fill(0,255,0);
      ellipse(mouseX,mouseY,10,10);
    } else{ 
      fill(255,0,0);
      ellipse(mouseX,mouseY,10,10);
    }
  } else{
    clear();
    background(minecraft);
    image(creeper,creeperX - 5,creeperY - 5);
  } 
}  
boolean isNear(int a, int b, int range) {
  if (abs(a - b) < range)
    return true;
  else
    return false;
}
