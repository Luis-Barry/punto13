PVector pos;
PVector vel;
float rad = 20;

void setup() {
  size(800, 600);
  pos = new PVector(width / 2, height / 2);
  vel = new PVector(3, 2);
}

void draw() {
  background(255);
  
  fill(0);
  ellipse(pos.x, pos.y, rad * 2, rad * 2);
  pos.add(vel);
}
