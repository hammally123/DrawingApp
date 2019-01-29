PImage heart;
PImage cupid;

float xPos;
float yPos;

float xSpeed;
float ySpeed;

boolean cupidBrush = false;
boolean paint = false;

void setup() {
  size(displayWidth, displayHeight);

  heart = loadImage("heart.png");
  cupid = loadImage("cupid.png");

  background(182, 66, 244);
  imageMode(CENTER);

  xPos = random(width);
  yPos = random(height);

  for (int i = 0; i <50; i++) {
    //image(cupid, random(width), random(height), 50, 50);
  }
}

void draw() {
  text("press q for cupid", 0, 20);
  
 
  image(heart, width/2, height/2, mouseX, mouseY);
}

void keyPressed() {
  if (key == 's' || key == 'S') {
    saveFrame("heartAnimation-######.png");
  }  


  if (key == 'q') {
    tint(0, 1, 255, 120); 
    image(cupid, random(width), random(height), 50, 50);
  } else{
    tint(100,200,225,255);
  }
}
