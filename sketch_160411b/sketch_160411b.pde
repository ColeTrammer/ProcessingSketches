void setup(){
  size(500,500);
  background(random(255),random(255),random(255));
  
  
  
}
void draw(){
 
  fill(mouseY,mouseX,mouseX);
  triangle(mouseX,mouseY,mouseX+200,mouseY+200,100,104);
  if (mousePressed){
    fill(random(255),random(255),random(255));
  }
    else{
    fill(mouseY,mouseX,mouseX);
    }  
  arc(mouseX, mouseY, 180, 180, 0, PI+QUARTER_PI, PIE);
  println(mouseX);
  text("Cole",450,450);
}
