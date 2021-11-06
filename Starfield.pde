class Particle{
  int myColor;
  double mySpeed, myAngle;
  float myX, myY;
  Particle(){
  myX = 250;
  myY = 250;
  mySpeed = (Math.random()*20)+5;
  myAngle = (Math.random()*2*Math.PI); 
  myColor = color(255, (int)(Math.random()*57)+100, (int)(Math.random()*57)+100); //must add color! *(small-big)+small
  } //255, 231, 231 | 255, 147, 147
  void move(){
    myX+=Math.cos(myAngle)*mySpeed;
    myY+=Math.sin(myAngle)*mySpeed;
  }
  void show(){
    fill(myColor);
    stroke(myColor);
    ellipse(myX+5, myY, 10.0, 10.0);
    ellipse(myX-5, myY, 10.0, 10.0);
    triangle(myX-10.5, myY, myX+10.5, myY, myX, myY+13);
    
  }
}

Particle[] arr = new Particle[500];
void setup(){
  size(500,500);
  arr[0] = new Oddball();
  for (int i = 1; i < arr.length; i++) {
  arr[i] = new Particle();
}
}

void draw(){
  background(160, 120, 153);
  for(int i = 0; i<arr.length; i++){
    arr[i].move();
    arr[i].show();
  }
}

class Oddball extends Particle{
  Oddball(){
  }
  void show(){
    noFill();
    stroke(0);
    ellipse(250, 250, 25, 25);
    line(250, 250+12, 250, 250+40);
    line(250, 250+40, 250-10, 250+60);
    line(250, 250+40, 250+10, 250+60);
    line(250+10, 250+20, 250, 250+30);
    line(250-10, 250+20, 250, 250+30);
    fill(0);
    ellipse(250,250,2,2);
    ellipse(245,250,2,2);
    arc(248, 255, 8, 8, 0, PI);
  }
}


