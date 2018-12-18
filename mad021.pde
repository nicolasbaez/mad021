float radio=height*0.75;
float qPuntos=5;
float j=0;
float kEasing=64;
void setup() {
  size(512, 256, P3D);
}
void draw() {
  background(255, 255, 255, 2);
  translate(width/2, height/2, -width/2);
  rotateY(radians(j));
  noFill();
  for (int k=0; k<=kEasing; k++) {
    beginShape();
    for (int i=0; i<=360; i+=360/qPuntos) {
      float xx=radio*cos(radians(i+j))+width/2;
      float yy=radio*sin(radians(i+j));
      stroke(random(256), random(256), random(256), map(k, 0, kEasing, 0, 255));
      vertex(xx, yy, -k);
    }
    endShape();
  }
  j++;
  if (j>360&&j<=720) {
    saveFrame("gif/mad021-######.png");
  }
}
