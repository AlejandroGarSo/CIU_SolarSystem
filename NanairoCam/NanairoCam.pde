float angS, angG, angD, angK, angN, angZ, angA, angH, angM;
float sx, sy, sz;
int vx, vz, px, pz;
PImage bg, sun, bgg, bgd, bgk, bgn, bgz, bgak, bgao, bgh, bgm;
PShape s, g, d, k, n, z, ak, ao, h, m, ppn;
boolean fps;
boolean [] keysPressed = new boolean[8];
void setup()
{
  size(750,500,P3D);
  fps = false;
  stroke(0);
  vx = 0;
  px = 0;
  pz = 0;
  vz = 0;
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
  sx= width/2.;
  sy=height/2.;
  sz=0.;
  ppn = loadShape("GalagaShip.obj");
  ppn.setTexture(loadImage("Galaga.png"));
}


void draw()
{
  background(bg);
  drawPlanets();
  if(!fps){
  drawShip();
  }
  movePosNave();
    
  if(!fps){
  textSize(20);
  camera(width/2, height/2, 800, width/2.0, height/2.0, 0, 0.0, 1.0, 0.0); 
  text("Nanairo",50,10);
  
  }else{
    //println("NaveX: " + ppn.x + " NaveY: " + ppn.y + " NaveZ: "+ ppn.z);
      camera(-sx, sy, sz,  width ,sy, sz, 0.0, 1.0, 0.0);
  }
}

void drawShip(){
    pushMatrix();
    translate(sx, sy, sz);
    scale(.4);
    rotateX(PI);
    rotateY(PI/2);
    shape(ppn);
    popMatrix();
}

void drawPlanets(){
  textSize(10);
  pushMatrix();
  //Sol
  translate(width/6,3*height/4,0);
  //rotateX(radians(-45));
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
  translate(0,-35,0);
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
  translate(0,-45,0);
  rotateX(radians(45));
  text("Ziba",0,0);
  rotateZ(radians(angA));
  rotateX(radians(angA));
  rotateY(radians(angA));
  translate(width*0.04,25,0);
  shape(ak);
  translate(0,-19,0);
  //rotateX(radians(45));
  text("Akaboshi",0,0);
  translate(-2*width*0.04,19,0);
  shape(ao);
  translate(0,-19,0);
  //rotateX(radians(45));
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
  translate(0,-25,0);
  rotateX(radians(45));
  text("Meido",0,0);
  rotateY(radians(angH));
  rotateX(radians(angH));
  rotateZ(radians(angH));
  translate(width*0.04,24,0);
  shape(h);
  translate(0,-19,0);
  //rotateX(radians(45));
  text("Himuro",0,0);
  popMatrix();
  angM=(angM+0.2)%360;
  angH=(angH+0.3)%360;
  
 popMatrix();
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

void mouseClicked() {
  /*if (mode == 0) {
      mode=1;
      perspective();
    } else {
      mode = 0;
      ortho();
    }*/
}

void keyPressed(){
   setDireccion(key,true);
   if(key == ENTER){
     fps = !fps;
   }
}

void keyReleased(){
  setDireccion(key,false);
}

void setDireccion(int tecla, boolean change){
  switch(tecla){
    case 'W':
    case 'w':
      keysPressed[0] = change;
      break;
    case 'S':
    case 's':
      keysPressed[1] = change;
      break;
    case 'A':
    case 'a':
      keysPressed[2] = change;
      break;
    case 'D':
    case 'd':
      keysPressed[3] = change;
      break;
    case 'Q':
    case 'q':
      keysPressed[4] = change;
      break;
    case 'E':
    case 'e':
      keysPressed[5] = change;
      break;
  }
}

void movePosNave(){
  if(keysPressed[0]){ //Tecla w
    setShipPos(sx, sy-5,sz );
   }
  if(keysPressed[1]){ //Tecla s
    setShipPos(sx, sy+5,sz );
  }
  if(keysPressed[2]){ //Tecla a
    if(fps){
      setShipPos(sx, sy,sz-5);
    }else{
      setShipPos(sx-5, sy,sz );
    }
  }
  if(keysPressed[3]){ //Tecla d
    if(fps){
      setShipPos(sx, sy,sz+5 );
    }else{
      setShipPos(sx+5, sy,sz );
    }
  }
  if(keysPressed[4]){ //Tecla r
    setShipPos(sx+5, sy,sz);
  }
  if(keysPressed[5]){ //Tecla z
    setShipPos(sx-5, sy,sz);
  }
}

void setShipPos(float posX, float posY, float posZ){
    sx = posX;
    sy = posY;
    sz = posZ;
  }
