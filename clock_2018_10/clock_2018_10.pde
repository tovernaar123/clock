float secd; 
float sec; 
int cx = width / 2;
int cy = height / 2;
int radius = min(width, height) / 2;
float secondsRadius = 300;
float secondsRadiush = 250;
float mind;
float min;
float hourd;
float hour;
void setup() {
 fullScreen();  
 cx = width / 2;
 cy = height / 2;
 background(0);

 }


void draw() {
  //i dont understand radians s this makes them all radians
  secd = map(second(),0, 60 ,0,360);
  sec = radians(secd) - HALF_PI;
  mind = map(minute()+ norm(second(), 0, 60),0, 60 ,0,360);
  min = radians(mind) - HALF_PI;
  hourd = map(hour()+ norm(minute(), 0, 60),0, 12 ,0,360 );
  hour = radians(hourd) - HALF_PI;
  //reset background
  background(0);
  // draws outline
  fill(255,255,255); 
  ellipseMode(RADIUS);
  noFill();
  ellipse(width/2,height/2,350,350);
 
 
  // draws all lines
  stroke(255);
  strokeWeight(1);
  line(cx, cy, cx + cos(sec) * secondsRadius, cy + sin(sec) * secondsRadius);
  line(cx, cy, cx + cos(min) * secondsRadius, cy + sin(min) * secondsRadius);
  line(cx, cy, cx + cos(hour) * secondsRadiush, cy + sin(hour) * secondsRadiush); //<>//
}
