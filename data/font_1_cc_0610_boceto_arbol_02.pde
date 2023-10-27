import processing.pdf.*;

PFont myfont;
String grill="cric";

void setup() {
  beginRecord(PDF, "proyecto_-arbol_pdf_6.pdf");
  frameRate(2);
  size(500, 700);
  myfont=createFont("IBMPlexSans-ExtraLight.ttf", 19);
}

void draw() {
  background(255);
  fill(0);
  textAlign(CENTER);
  herba(20, 700, 10, 10);
  herba(30, 700, 20, 10);
  herba(-20, height -10, 5, 20);
  for (int i=0; i<60; i=i+1) {
    grill(random (100, 300), random(300, 500));
  }
  for (int i=0; i<40; i=i+1) {
    insecto(random(400), random(100, 300));
  }
  for (int i=0; i<15; i=i+1) {
    tronc(random (80, 90), random(250, 400));
  }

  endRecord();
  text(grill.charAt(2), 10, 10);
  // noLoop();


  push();
  translate(width/4, height/4);
  rotate(radians(-180));
  text("φ", 0, 0);
  pop();
}
