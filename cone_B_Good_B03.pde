import processing.pdf.*;

float print_width = 8.5;
float print_height = 11;
float make_bigger = 75;

int divWidth = 6;
int divHeight = 3;


int hPoint, v1Point, v2Point;
int w, h, a;

void setup()
{
  size(round(print_width * make_bigger), round(print_height * make_bigger), OPENGL);
  background(255);
  beginRecord(PDF, "cone.pdf");


  int triPointW = round((print_width* make_bigger) / divWidth);
  int triPointH = round((print_height* make_bigger) / divHeight);
  int degreeCount = 0;

  //stroke(0);
  //strokeWeight(1);
  
  pushMatrix();
  translate (width/2, height/5);
  rotate(PI/4);

  for (int i=30; i>0; i--) {
    for (int j=30; j>0; j--) {
      if (j==1 && i==1) {
        rotate(-PI/4);
        w = 0;
        h = 435;
        a = 650;
        fill(0);
        noStroke();
        ellipse(0, triPointW, triPointW*2, triPointH-50);
        rectMode(CENTER);
      }
      
      else {
        

        w = 10;
        h = 10;
        a = 10;
        rectMode(CENTER);
        stroke(0);
        strokeWeight(1);
        noFill();
      }
      rect(i*w, j*h, a, a);
    }
  }
  popMatrix();

  fill(255);
  triangle(triPointW*2, triPointH*1, triPointW*4, triPointH*1, triPointW*3, triPointH*2);



  endRecord();
}

