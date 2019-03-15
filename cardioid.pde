int n = 200;
float mult = 2;
int dotR = 3;

int maxHue = 150;
int minHue = 100;

void setup(){
  size(1400,800);
  background(0);
  translate(width/2,height/2);
  
  float r = height*0.45;
  
  //Outside circle
  strokeWeight(1);
  stroke(255);
  noFill();
  ellipse(0,0,2*r,2*r);
  
  //Dots
  colorMode(HSB);
  strokeWeight(2);
  for (int i = 0; i < n; i++){
    float angle = map(i,0,n,0,2*PI);
    int hue = round(map(i,0,n,minHue,maxHue));
    fill(hue,255,255);
    stroke(hue+10,255,255);
    ellipse(r*cos(angle),r*sin(angle),2*dotR,2*dotR);
    text(i,r*cos(angle)*1.05-5,r*sin(angle)*1.05);
  }
  
  //Lines
  strokeWeight(2);
  for (int i = 0; i < n; i++){
    int hue = round(map(i,0,n,minHue,maxHue));
    float a1 = map(i,0,n,0,2*PI);
    float a2 = map((i*mult)%n,0,n,0,2*PI);
    stroke(hue,255,255);
    line(r*cos(a1),r*sin(a1),r*cos(a2),r*sin(a2));
  }
}

void draw(){
}