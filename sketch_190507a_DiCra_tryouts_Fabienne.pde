/*
 *  https://thecodingtrain.com/CodingChallenges/055-roses.html
 *  https://en.wikipedia.org/wiki/Rose_(mathematics)
 */

import processing.pdf.*;

float n = 7;
float d = 8;
float k = n / d;

float dx = 0;
float dy = 0;

int XSIZE = int (3.6 * 297);
int YSIZE = int (3.6 * 210);
int NR = 1;

void setup() {
  smooth();
  stroke(255);
  size(1400, 1000);
  background(51);
  beginRecord(PDF, "ROSE_" + str(NR) + ".pdf");
}

void rose(float xc, float yc) {
  //translate();
  beginShape();
  noFill();
  strokeWeight(1);
  for (float a = 0; a < TWO_PI * d; a += 0.02) {
    float r = 200 * cos(k * a);
    float x = xc + r * cos(a);
    float y = yc + r * sin(a);
    vertex(x, y);
  }
  endShape(CLOSE);
}

void draw() {
  float x = 200;
  float y = height/2;
  dx += 100;
  //dy = 50*sin(radians(dx));
  rose(x + dx, y + dy); 
  delay(300);
}

void keypressed() {
  endRecord();
  exit();
} 
