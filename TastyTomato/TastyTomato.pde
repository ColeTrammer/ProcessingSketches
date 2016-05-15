void setup() {
  size(500,500);
}
void draw() {
  background(200, 200, 200);
  noStroke();
  fill(229,53,36);
  ellipse(150, 200, 150, 150);
  ellipse(212, 200, 150, 150);
  fill(38,108,20);
  rect(176, 103, 12, 32);
  if (mousePressed == true){
    fill(200);
    ellipse(mouseX,mouseY,50,50);
   }
}
