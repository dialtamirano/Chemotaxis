Car sue;
Star[] shoot;

void setup(){
  background(50,50,150);
  size(700,600);
  sue = new Car();
  shoot = new Star[5];
  for(int i = 0; i < shoot.length; i++){
    shoot[i] = new Star();
  }
}
void draw(){
  sue.drive();
  sue.display();
  for(int i = 0; i < shoot.length; i++){
    shoot[i].show();
    shoot[i].move();
  }
}
class Car{
  color myC;
  float myX, myY, myXspeed;
  Car(){
    myC = color(225,50,50);
    //myX = width/2;
    //myY = height/2;
    myX = 0;
    myY = 505;
    myXspeed = 1;
  }
  void display(){
   noStroke();
  // fill(50,50,150); //blue
   //rect(0,0,700,495); //sky
   fill(0,225,75); //green
   rect(0,345,700,150); //grass
   fill(225); //white
   ellipse(110,50,50,40); //clouds
   ellipse(150,50,70,60);
   ellipse(250,150,80,60);
   ellipse(280,140,60,50);
   ellipse(450,120,90,60);
   ellipse(490,100,110,80);
   fill(100,100,100); //gray
   rect(0,500,700,100); //road
   fill(200,200,0); //yellow
   rect(0,570,700,5); //yelow lines
   rect(0, 560, 700, 5); ///yelow lines
   fill(255); //white
   rect(0,495,700,5); //white line
   //mountains
  //triangle(
   noStroke();
   fill(myC);
   rect(myX, myY, 100, 50); //car
   fill(100,100,100);
  }
  void drive(){
   myX += myXspeed;
   if(myX > 720)
     myX = 0;
  }
}//end Car class

class Star{
  color myCC;
  float theX, theY, theSpeed;
  Star(){
    myCC = color(255, 255, 145);
    theX = -60;
    theY = -80;
    theSpeed = 1;
  }
  void show(){
    //moon
    fill(255);
    ellipse(625,75,100,100);
    //stars
    fill(225,225,175);
    ellipse(100,10,10,10);
    ellipse(40,100,10,10);
    ellipse(300,80,10,10);
    ellipse(570,30,10,10);
    ellipse(450,50,10,10);
    ellipse(650,150,10,10);
    ellipse(200,125,10,10);
    //shooting star
    stroke(255);
    fill(myCC);        
    ellipse(theX,theY,40,40);   //////RANDOM WALKING ELLIPSE!!!
    noStroke();
    //buildings
    fill(100,100,100);//b1
    rect(50,245,50,100);
    fill(255,255,160);
    rect(70,260,10,10);
    rect(70,280,10,10);
    rect(70,300,10,10);
    rect(70,320,10,10);
    fill(100,100,100);
    rect(150,220,75,125);//b2
    fill(255,255,145);
    rect(160,230,10,10);
    rect(160,260,10,10);
    rect(160,290,10,10);
    rect(160,320,10,10);
    rect(182.5,230,10,10);
    rect(182.5,260,10,10);
    rect(182.5,290,10,10);
    rect(182.5,320,10,10);
    rect(205,230,10,10);
    rect(205,260,10,10);
    rect(205,290,10,10);
    rect(205,320,10,10);
    }
  void move(){
    theY = theY + (int)(Math.random()*4)-1;  /////RANDOM WALK!!!
    theX += theSpeed;
    if(theX > 610){
      theX = -60;
      theY = -80;
      fill(50,50,150); //blue
      rect(0,0,700,495); //sky
   }
  }
}
