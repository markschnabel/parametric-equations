/*
 * Name: Parametric Equations
 * Author: Mark Schnabel
 * Version: 1.0
 * 
 * Reference Video: https://www.youtube.com/watch?v=LaarVR1AOvs
*/

float t = 0; 
static final int NUM_TRAILS = 15;

void setup() {
  size(600, 600);
  background(0);
}

void draw() {
  background(0);
  
  stroke(255);
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
