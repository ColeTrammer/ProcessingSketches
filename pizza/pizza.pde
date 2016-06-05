void setup(){
  size(800,800);
  fill(250,216,162);
  ellipse(400,400,500,500);
  fill(255,0,0);
  ellipse(400,400,450,450);
  fill(255,255,0);
  ellipse(400,400,400,400);
}

void draw(){
  PImage pepperoni = loadImage("pepperoni.gif"); 
  pepperoni.resize(40,40);
  if(mousePressed == true){
    image(pepperoni,mouseX,mouseY);
  }
} 
