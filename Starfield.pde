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
      if((myY>1000||myY<0||myX>1000||myX<0)&&((int)(Math.random()*2)>=1)){
      myX=(Math.random()*1000);
      myY=(Math.random()*1000);
    }
}
    void move(){
      if(mousePressed==true && ((int)(Math.random()*2)>=1)){
      mySpeed=40;
      myX=myX+mySpeed+(int)(Math.random()*20);
      myY=myY+mySpeed+(int)(Math.random()*20);
      } else if (mousePressed==true && ((int)(Math.random()*2)<1)){
      myX=myX-mySpeed-(int)(Math.random()*20);
      myY=myY-mySpeed-(int)(Math.random()*20);
      } else{
      myX=(int)(Math.random()*11)-5+myX;
      myY=(int)(Math.random()*11)-5+myY;
      }
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
    } else if((Math.random()*2<1)&&(mousePressed==false)){
      myX=myY=500;
    }
   if(mousePressed==true&&(myY>1000||myY<0||myX>1000||myX<0)&&((int)(Math.random()*2)>=1)){
      myX=myY=(Math.random()*1000);
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
    sue[1] = new OddballParticle();
    for(int i = 2; i<sue.length; i++) {
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
