PImage donkey;
PImage tail;

void setup(){
  size(1000,668);
  donkey = loadImage("donkey.jpeg");    
  background(donkey);
  tail = loadImage("tail.png");
}

void draw(){
  if(mousePressed == true){
       image(tail, mouseX, mouseY - 5);
  }
}
