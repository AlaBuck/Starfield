class OddballParticle //inherits from Particle
{
	//your code here
}

class Particle {
  double myX, myY, mySpeed;
  int myAngle;
  Particle(){
    myX=320;
    myY=240;
    myAngle=2;
    mySpeed=2.5;
  }
  
  void show(){
    fill(
      (int)(Math.random()*256),
      (int)(Math.random()*256),
      (int)(Math.random()*256)
    );
    ellipse((float)myX,(float)myY,20.f,20.f);
  }
  
  void move(){
    myX=myX+(Math.cos(myAngle))*mySpeed;
    myY=myY+(Math.sin(myAngle))*mySpeed;
  }
}
  Particle sue = new Particle();
  
  void setup(){
    size(800,600);
    noStroke();
  }
  
  void draw(){
    background (0,0,0);
    sue.show();
    sue.move();
  }



