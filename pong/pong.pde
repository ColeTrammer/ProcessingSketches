import ddf.minim.*;

PImage backgroundImage;
PImage youLose;
PImage youWin;

Minim minim;
AudioSample sound;

int x = 50;
int y = 50;
int xSpeed= 5;
int ySpeed= 5;
int paddleX=0;
int random=0;
int randomSpeed=0;
  
void setup(){
  size(1280,720);
  
  minim= new Minim(this);
  sound = minim.loadSample("BD.wav", 128);
  
  backgroundImage = loadImage("pong.png");
  youLose = loadImage("youlose.png");
  youWin = loadImage("youwin.jpeg");
  
  random=(int)random(7,15);
  randomSpeed=(int)random(1,2);
}

void draw(){

  background(64,70,66);
  //image(backgroundImage,0,0);
  ellipse(x,y,30,30);
  stroke(0,0,0);
  
  rect(mouseX-65,694,130,25);
  rect(paddleX,1,130,25);
  
  x=x+xSpeed;
  y=y+ySpeed;
  if(x>width){
    xSpeed=-xSpeed;
  }
  if(x<0){
    xSpeed=-xSpeed;
  }
  if(y>height){
    ySpeed=-ySpeed; 
    sound.trigger();
    
    clear();
    image(youLose,0,0);
    noLoop();
  }
  if(y<0){
    ySpeed=-ySpeed;
    sound.trigger(); 
    clear();
    image(youWin,0,0);
    noLoop();
  }
  if(intersects(x,y,mouseX-65,694,130,25) == true){
    ySpeed=-ySpeed; 
    ySpeed= ySpeed-randomSpeed;
    if(xSpeed>0){
      xSpeed=xSpeed+randomSpeed;
    }else{
      xSpeed=xSpeed-randomSpeed;
    }
 
  }
 if(intersects(x,y,paddleX,1,130,25) == true){
    ySpeed=-ySpeed; 
    ySpeed= ySpeed+randomSpeed;
    if(xSpeed>0){
      xSpeed=xSpeed+randomSpeed;
    }else{
      xSpeed=xSpeed-randomSpeed;
    } 
  }
if(x>paddleX+65){
 paddleX=paddleX+random; 
}
if(x<paddleX+65){
  paddleX=paddleX-random;
}

  
  
}
boolean intersects(int ballX, int ballY, int paddleX, int paddleY, int paddleLength, int paddleHeight) {
  if (ballY > paddleY && ballX > paddleX && ballX < paddleX + paddleLength && ballY<paddleY+paddleHeight)
    return true;
  else 
    return false;
}

