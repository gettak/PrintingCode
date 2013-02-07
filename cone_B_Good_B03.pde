import processing.pdf.*;

float print_width = 8.5; //Change this to customize art boarder width.
float print_height = 11; //Change this to customize art boarder height.
float make_bigger = 75;

int divWidth = 6;
int divHeight = 3;


int hPoint, v1Point, v2Point;
int w, h, a;

void setup()
{
  size(round(print_width * make_bigger), round(print_height * make_bigger));
  background(255);
  beginRecord(PDF, "cone.pdf");


  int triPointW = round((print_width* make_bigger) / divWidth);
  int triPointH = round((print_height* make_bigger) / divHeight);
  int degreeCount = 0;

  fill(0);
  //noStroke();
  strokeJoin(ROUND);
  ellipseMode(CORNER);
  ellipse(triPointW*2, triPointH - triPointW, triPointW*2, triPointW*2.2);
  rect(0, triPointH, width, height);

  fill(255);
  stroke(255);
  strokeWeight(3);
  triangle(triPointW*2, triPointH*1, triPointW*4, triPointH*1, triPointW*3, triPointH*2);
  
  endRecord();
}

