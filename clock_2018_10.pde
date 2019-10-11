float secd;  //<>//
float sec; 
int cx = width / 2;
int cy = height / 2;
int radius = min(width, height) / 2;
float secondsRadius = 450;
float rmin = 350;
float rhour =290;
float mind;
float min;
float hourd;
float hour;
int r = 350;
int r2 = r+75;
int r3 = r+ 200;
int h = hour();
int m = minute();
int s = second();
public int numbscount;
numbers [] num = new numbers[12];
void setup() {
  fullScreen();  
  cx = width / 2;
  cy = height / 2;
  background(0);
  // making numbers
  for( int i =0; i < num.length; i++) {
  num[i] = new numbers();
  numbscount++;

  }
 
}


void draw() {
  //i dont understand radians s this makes them all radians
  secd = map(second(), 0, 60, 0, 360);
  sec = radians(secd) - HALF_PI;
  mind = map(minute()+ norm(second(), 0, 60), 0, 60, 0, 360);
  min = radians(mind) - HALF_PI;
  hourd = map(hour()+ norm(minute(), 0, 60), 0, 12, 0, 360 );
  hour = radians(hourd) - HALF_PI;
  
  //reset background
  
  h = hour();
  m = minute();
  s = second();
  background(0);
   
  fill(255, 255, 255); 
  stroke(255,255,255);
  ellipseMode(RADIUS);
  fill(45);
  ellipse(width/2, height/2, r3, r3);
  
  for( int i =0; i < num.length; i++) {
     num[i].stuf();
     num[i].display();
   }
   noFill();
  // draws all lines
  stroke(255);
  strokeWeight(1);
  stroke(255,0,0);
  line(cx, cy, cx + cos(sec) * secondsRadius, cy + sin(sec) * secondsRadius);
  strokeWeight(10);
  stroke(255);
  line(cx, cy, cx + cos(min) * rmin, cy + sin(min) * rmin);
  line(cx, cy, cx + cos(hour) * rhour, cy + sin(hour) * rhour);
   fill(45);
   
  strokeWeight(30);
  stroke(0);
  point(cx,cy);
  fill(255);
  stroke(255);
  strokeWeight(35);
  fill(225);
  textSize(150/2);
  text( ":",1600,70 + 48);
  textSize(150/2);
  text(h,1600 - textWidth(str(h))-30,70 + 48);
  text(m,1600 + textWidth(str(h)+":")/2,70 + 48);
  text( ":",100 + 1600 + textWidth(str(h)+":")/2,70 + 48);
  text( s,150 + 1600 + textWidth(str(h)+":")/2,70 + 48);
}
