lijn grote;
lijn kleine;
float endacr; 
float sec; 
float jj = 90;
float jjr;
void setup() {
 grote = new lijn();
 kleine = new lijn();
  fullScreen();  
 background(0);

 }


void draw() {
  endacr = map(minute(),0, 60 ,0,360);
  sec = radians(endacr);
  background(0);
  fill(255,255,255); 
 ellipseMode(RADIUS);
 //ellipse(width/2,height/2,545,545);
 jjr = radians(jj);
 
 arc( width/2,height/2,545,545,0,sec);
  //<>//
 
}
