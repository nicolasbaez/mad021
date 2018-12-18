# mad021
3d easing loop

![mad021](https://github.com/nicolasbaez/mad021/blob/master/mad021.gif)

```processing
float radio=height*0.75;
float qPuntos=90;
float j=0;
float frames=0;
void setup() {
  size(512, 256, P3D);
  background(255);
}
void draw() {
  translate(width/2, height/2, -width/2);
  rotateY(radians(j));
  //stroke(255);
  noStroke();
  for (int i=0; i<=360; i+=360/qPuntos) {
    float xx=radio*cos(radians(i+j))+width/2;
    float yy=radio*sin(radians(i+j));
    if (j<=360) {
      fill(random(256), random(128), random(64));
    } else {
      fill(255);
    };
    ellipse(xx, yy, 4, 4);
  }
  j++;
  frames++;
  if (j>=720) {
    j=0;
  }
  if (frames>=720&&frames<720*2) {
    saveFrame("gif/mad021-######.png");
  }
}
```
