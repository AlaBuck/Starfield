class OddballParticle extends Particle //inherits from Particle
{
    OddballParticle(){
      myX=myY=500;
      myAngle=((int)(Math.random()*2*Math.PI));
      mySpeed=(Math.random()*0)+1;
      myC=color(255,0,0);
    }
    
    void show(){
      fill (myC);
      ellipse((float)myX,(float)myY,100,100);
    }
}


class Particle {
  double myX, myY, mySpeed;
  int myAngle;
  int myC;
  Particle() {
    myX=myY=500;
    myAngle=((int)(Math.random()*2*Math.PI));
    mySpeed=(Math.random()*50)+30;
    myC=color(255);
  }
  
  void show() {
    fill (myC);
    ellipse((float)myX,(float)myY,10,10);
    if((myY>1000||myY<0||myX>1000||myX<0)&&((int)(Math.random()*2)>=1)){
      myX=myY=(Math.random()*1000);
    } else if((Math.random()*2<1)){
      myX=myY=500;
    }
  }
  
  void move() {
    myX=myX+(Math.cos(myAngle))*mySpeed;
    myY=myY+(Math.sin(myAngle))*mySpeed;
  }
}


Particle[] sue = new Particle[1000];
  
void setup() {
    size(1000,1000);
    noStroke();
    sue[0] = new OddballParticle(); 
    for(int i = 1; i<sue.length; i++) {
      sue[i]=new Particle();
    }
}
  
void draw() {
    background (0,0,0);
    for(int i=0;i<sue.length; i++){
      sue[i].show();
      sue[i].move();
    }
}
