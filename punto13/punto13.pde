PVector pos;
PVector vel;
float rad = 20;
PVector normal;

void setup() {
  size(800, 600);
  pos = new PVector(width / 2, height / 2);
  vel = new PVector(3, 3);
}

void draw() {
  background(255);
  
  fill(0);
  ellipse(pos.x, pos.y, rad * 2, rad * 2);
  pos.add(vel);
  rebotar();
}

public void rebotar(){
  if(pos.x < rad || pos.x >width -rad){
    normal = new PVector(1, 0);
    if(pos.x < rad){
      normal.mult(-1);
    }
    reflejar(normal);
  }
  if(pos.y < rad || pos.y > height -rad){
    normal = new PVector(0,1);
    if(pos.y < rad){
      normal.mult(-1);
    }
    reflejar(normal);
  }
}

public void reflejar(PVector vec){
  PVector v = vel.copy();
  float dotP = v.dot(vec);
  PVector ref = PVector.sub(v, PVector.mult(vec, 2 * dotP));
  vel = ref;
}
