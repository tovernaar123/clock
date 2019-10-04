lijn grote;
lijn kleine;
float endacr; 
float sec; 
float jj = 90;
float jjr;
int cx = width / 2;
int cy = height / 2;
int radius = min(width, height) / 2;
  float secondsRadius = radius * 2;
void setup() {
 fullScreen();  
 cx = width / 2;
 cy = height / 2;
 background(0);

 }


void draw() {
  endacr = map(second(),0, 60 ,0,360);
  sec = radians(endacr);
  background(0);
  fill(255,255,255); 
 ellipseMode(RADIUS);
 //ellipse(width/2,height/2,545,545);
 jjr = radians(jj);
 
 //arc( width/2,height/2,545,545,0,sec);
 stroke(255);
  strokeWeight(1);
  line(cx, cy, cx + cos(sec) * secondsRadius, cy + sin(sec) * secondsRadius); //<>//
}
