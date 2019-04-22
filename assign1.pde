float knightX=-80;
float knightY=int(random(2,6))*80;
//or float knightDistance=int(random(2,6));

//float robotX=random(160,560);
float robotX=floor(random(2,8))*80;
float robotY=floor(random(2,6))*80;
//or float robotY=floor(random(2,6)*80);

float lazerX=robotX+25;
float lazerY=robotY+32;
float lazerWeight=0;
float lazerSpeed=2;
float lazerMax=40;

PImage sky;
PImage hog;
PImage heart;
PImage robot;
PImage soil;
PImage knight;

void setup() {
	size(640, 480, P2D);
	// Enter Your Setup Code Here
  sky=loadImage("bg.jpg");
  soil=loadImage("soil.png");
  hog=loadImage("groundhog.png");
  heart=loadImage("life.png");
  robot=loadImage("robot.png");
  knight=loadImage("soldier.png");
}

void draw() {
	// Enter Your Code Here
  background(sky);
  
  //draw sun 
  colorMode(RGB);
  strokeWeight(5);
  stroke(255,255,0);  
  fill(253,184,19);
  ellipse(590,50,120,120);
 
  //draw grass
  noStroke();
  fill(124,204,25);
  rect(0,145,640,15);

  //play hog
  imageMode(CENTER);
  image(hog,320,120);
  
  //play heart
  image(heart,35,35);
  image(heart,105,35);
  image(heart,175,35);

  //play soil
  image(soil,320,320);
  
  //knight animation
  imageMode(CORNERS);
  image(knight,knightX,knightY);
  //or knightY=knightDistance*80;
  knightX+=5;
  if(knightX>width){
    knightX=-80;
  }
  
  //play robot
  image(robot,robotX,robotY);
  
  //robot lazer
  fill(255,0,0);
  //width change
  rect(lazerX,lazerY,lazerWeight,10,5);
  if(lazerWeight<40)lazerWeight+=2;
   //lazer move
  lazerX-=lazerSpeed;
  //lazer restart
  if(lazerX<=robotX-80*2){
  lazerX=robotX+25;
  lazerWeight=0;
  }
}
