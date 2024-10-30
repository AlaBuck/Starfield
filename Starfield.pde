class OddballParticle //inherits from Particle
{
	//your code here
}

class Particle {
  double myX, myY, mySpeed;
  double myAngle;
  int myC;
  Particle(){
    myX=myY=500;
    myAngle=Math.random()*2*Math.PI;
    mySpeed=(Math.random()*10);
    myC=color(255);
  }
  
  void show(){
    fill (myC);
    ellipse((float)myX,(float)myY,10,10);
  }
  
  void move(){
    myX=myX+(Math.cos(myAngle))*mySpeed;
    myY=myY+(Math.sin(myAngle))*mySpeed;
  }
}
  Particle[] sue = new Particle[1000];
  
  void setup(){
    size(1000,1000);
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
