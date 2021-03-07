float angS, angG, angD, angK, angN, angZ, angA, angH, angM;
PImage bg, sun, bgg, bgd, bgk, bgn, bgz, bgak, bgao, bgh, bgm;
PShape s, g, d, k, n, z, ak, ao, h, m;

void setup()
{
  size(750,500,P3D);
  stroke(0);
  bg = loadImage("bg.png");
  sun = loadImage("sun.jpg");
  bgg = loadImage("bgg.jpg");
  bgd = loadImage("bgd.jpg");
  bgk = loadImage("bgk.jpg");
  bgn = loadImage("bgn.jpg");
  bgz = loadImage("bgz.jpg");
  bgak = loadImage("bgak.jpg");
  bgao = loadImage("bgao.jpg");
  bgh = loadImage("bgh.jpg");
  bgm = loadImage("bgm.jpg");
  initPlanets();
  textAlign(CENTER,CENTER);
  fill(255);
}


void draw()
{
  background(bg);
  textSize(20);
  text("Nanairo",50,10);
  textSize(10);
  
  //Sol
  translate(width/6,3*height/4,0);
  rotateX(radians(-60));
  pushMatrix();
  rotateY(radians(angS));
  shape(s);
  popMatrix();
  angS=(angS+0.25)%360;
    
  //Genshi 
  pushMatrix();
  rotateY(radians(angG));
  translate(width*0.15,0,0);
  shape(g);
  translate(0,-30,0);
  rotateX(radians(45));
  text("Genshi",0,0);
  popMatrix();
  angG=(angG+0.5)%360;
  
  //Daichi
  pushMatrix();
  rotateY(radians(angD));
  translate(width*0.25,0,0);
  shape(d);
  translate(0,-25,0);
  rotateX(radians(45));
  text("Daichi",0,0);
  popMatrix();
  angD=(angD+0.45)%360;
  
  //Kollin 
  pushMatrix();
  rotateY(radians(angK));
  translate(width*0.36,0,0);
  shape(k);
  translate(0,-40,0);
  rotateX(radians(45));
  text("Kollin",0,0);
  popMatrix();
  angK=(angK+0.3)%360;
  
  //Nessa 
  pushMatrix();
  rotateY(radians(angN));
  translate(width*0.47,0,0);
  shape(n);
  translate(0,-42,0);
  rotateX(radians(45));
  text("Nessa",0,0);
  popMatrix();
  angN=(angN+0.35)%360;
  
  //Ziba/Aoboshi/Akaboshi
  pushMatrix();
  rotateY(radians(angZ));
  translate(width*0.60,0,0);
  shape(z);
  translate(0,-25,0);
  rotateX(radians(45));
  text("Ziba",0,0);
  rotateZ(radians(angA));
  rotateX(radians(angA));
  rotateY(radians(angA));
  translate(width*0.04,25,0);
  shape(ak);
  translate(0,-19,0);
  rotateX(radians(45));
  text("Akaboshi",0,0);
  translate(-2*width*0.04,19,0);
  shape(ao);
  translate(0,-19,0);
  rotateX(radians(45));
  text("Aoboshi",0,0);
  popMatrix();
  angZ=(angZ+0.15)%360;
  angA=(angA+0.5)%360;
  
  translate(width*0.47,0,0);
  
  //Meido/Himuro
  pushMatrix();
  rotateY(radians(angM));
  translate(width*0.57,0,0);
  shape(m);
  translate(0,-24,0);
  rotateX(radians(45));
  text("Meido",0,0);
  rotateY(radians(angH));
  rotateX(radians(angH));
  rotateZ(radians(angH));
  translate(width*0.04,24,0);
  shape(h);
  translate(0,-19,0);
  rotateX(radians(45));
  text("Himuro",0,0);
  popMatrix();
  angM=(angM+0.2)%360;
  angH=(angH+0.3)%360;
}

void initPlanets(){
  
  //Sun
  beginShape();
  s = createShape(SPHERE, 50);
  s.setStroke(255);
  s.setTexture(sun);
  endShape(CLOSE);
  
  //Genshi
  beginShape();
  g = createShape(SPHERE, 20);
  g.setStroke(255);
  g.setTexture(bgg);
  endShape(CLOSE);
  
  //Daichi
  beginShape();
  d = createShape(SPHERE, 15);
  d.setStroke(255);
  d.setTexture(bgd);
  endShape(CLOSE);
  
  //Kollin
  beginShape();
  k = createShape(SPHERE, 25);
  k.setStroke(255);
  k.setTexture(bgk);
  endShape(CLOSE);
  
  //Nessa
  beginShape();
  n = createShape(SPHERE, 32);
  n.setStroke(255);
  n.setTexture(bgn);
  endShape(CLOSE);
  
  //Ziba
  beginShape();
  z = createShape(SPHERE, 15);
  z.setStroke(255);
  z.setTexture(bgz);
  endShape(CLOSE);
  
  //Aoboshi
  beginShape();
  ao = createShape(SPHERE, 9);
  ao.setStroke(255);
  ao.setTexture(bgao);
  endShape(CLOSE);
  
  //Akaboshi
  beginShape();
  ak = createShape(SPHERE, 9);
  ak.setStroke(255);
  ak.setTexture(bgak);
  endShape(CLOSE);
  
  //Himuro
  beginShape();
  h = createShape(SPHERE, 9);
  h.setStroke(255);
  h.setTexture(bgh);
  endShape(CLOSE);
  
  //Meido
  beginShape();
  m = createShape(SPHERE, 14);
  m.setStroke(255);
  m.setTexture(bgm);
  endShape(CLOSE);

}
