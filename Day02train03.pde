int xPos;
int yPos;
int xSpeed=3;
int ySpeed=3;
int a;

void setup() {
  size(500, 500);
  background(255);
  xPos=width/2;
  yPos=height/2;
}
void draw() {

  background(255, 255-mouseY/2, 0);
  ellipse(xPos, yPos+50, 50, 50);
  noStroke();
  if (mouseX>=xPos-25&&mouseX<=xPos+25&&mouseY>=yPos-25&&mouseY<=yPos+25) {
    fill(255, 255, 255);
  } else {
    fill(0);
  }

  if (xPos>=width||xPos<=0) {
    xSpeed=xSpeed*(-1);
  }
   if (yPos>=height||yPos<=0) {
    ySpeed=ySpeed*(-1);
  }
  xPos=xPos+xSpeed;
  yPos=yPos+ySpeed;
}