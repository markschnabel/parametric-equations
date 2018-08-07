float t;
float k = 255;
boolean increment = true;
static final int NUM_LINES = 15;

void setup() {
  size(displayWidth, displayHeight);
  background(0);
}

//creates draw loop
void draw() {
  background(0);

  
  stroke(k);
  strokeWeight(2);
  
  translate(width/2, height/2);
  
  for(int i = 0; i < NUM_LINES; i++) {
    //adding the i value varies the values of t 
    line(x1(t - i), y1(t - i), x2(t - i), y2(t - i));
    line(y1(t - i), x1(t - i), y2(t - i), x2(t - i));
    point(x2(t + i), y2(t + i));
    point(y2(t + i), x2(t + i));
    
  }
  
  t += 0.65;
}

float x1(float t) {
  return sin(t / 10) * 100 + sin(t / 5) * 20;
}

float y1(float t) {
  return cos(t / 10) * 100;
}

float x2(float t) {
  return cos(t / 10) * 200 + sin(t) * 2;
}

float y2(float t) {
  return sin(t / 90) * 200 + cos(t / 12) * 20;
}
