void setup() {
  size(800, 800);
}

void draw() {
  
   //2. make it a nice color
   fill(255,0,0);
   //3. if the mouse is pressed, fill the circle with a different color          
   if (mousePressed){
     fill(255,255,0);
   }
   //1. draw an ellipse
   ellipse(400,400,250,175);
}
// Copyright Wintriss Technical Schools 2013



