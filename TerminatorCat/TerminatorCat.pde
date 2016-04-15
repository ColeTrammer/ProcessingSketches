PImage catPic;

int x1=320;
int y1=335;

void setup(){
  size(800,602);
  catPic= loadImage("cat.jpg");
  background(catPic);
}
void draw(){
  fill(255,0,0);
  noStroke();
  ellipse(x1,y1,73,73);
  ellipse(x1+200,y1,73,73);
}
void keyPressed() {
   x1+=5;
   y1+=5;
}

