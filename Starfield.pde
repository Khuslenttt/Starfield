class oddParticle extends Particles{
  oddParticle()
  {
    X= Y = 300;
    mySpeed = (Math.random()*2);
    myAngle = (Math.random()*2)*Math.PI;
   
  }
  void show()
  {
    noStroke();
    fill(255);
    rect((float)X, (float)Y,mySize,mySize);
  }
void move(){
    X = X + (int)(Math.random()*3)-1; // -1, 0, 1
    Y = Y + (int)(Math.random()*3)-1;;
}
}

class Particles{
  double X, Y, mySpeed, myAngle;
  int myColor, myOpacity, mySize;
  Particles()
  {
    X = Y = 300;
    mySize = (int)(Math.random()*100)-50;
    mySpeed = (Math.random()*10);
    myAngle = (Math.random()*2)*Math.PI;
    myOpacity = (int)(Math.random() *150) +60;
    myColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  }
  void show(){
    fill(myColor, myOpacity);
    ellipse((float)X, (float)Y, mySize,mySize);
  }
  void move(){
    X = X + Math.cos(myAngle)*mySpeed;
    Y = Y + Math.sin(myAngle)*mySpeed;
  }
}
Particles [] part = new Particles [1000];
void setup(){
  
  size(600,600);
  for(int i = 0; i < 10; i++){
    part[i] = new oddParticle();
  }
  for(int i = 10; i< part.length; i++){
    part[i] = new Particles();
  }
}
void draw(){
  background(0);
  for(int i =0; i <part.length; i++){
    part[i].show();
    part[i].move();
  }
}

