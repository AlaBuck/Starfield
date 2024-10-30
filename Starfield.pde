class OddballParticle //inherits from Particle
{
	//your code here
}

class Particle {
  double myX, myY, mySpeed;
  double myAngle;
  Particle(){
    myX=myY=200;
    myAngle=Math.random()*2*Math.PI;
    mySpeed=(int)(Math.random()*10);
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
  Particle[] sue = new Particle[100];
  
  void setup(){
    size(800,600);
    noStroke();
    for(int i = 0; i<sue.length; i++){
      sue[i]= new Particle();
    }
  }
  
  void draw(){
    background (0,0,0);
    for(int i=0;i<sue.length; i++){
    sue[i].show();
    sue[i].move();
    }
  }
