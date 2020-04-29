/*color[] c= {color (200, 144, 0), color (200, 180, 0), color (200, 108, 0), color (200, 36, 0), color (164, 0, 0), color(200, 72, 0), color(200, 216, 0)}; // color
 color ce; //color mutable
 int[] angulo = {45, -90, 180, 90, 0, 45, 0};
 int mycolor;//color sobre el que esta el mouse
 boolean[] click = {false, false, false, false, false, false, false};//se da click sobre la figura
 int[][] xy = {{125, 275}, {175, 200}, {250, 275}, {250, 200}, {200, 150}, {200, 250}, {125, 175}}; //pocicion de la figura
 boolean[] ATime={true, true, true, true, true, true, true};*/


void setup() {
  surface.setResizable(true);
  size(600, 600);
  shapeMode(CENTER);
}
int angulo = 0;
boolean click = false;
color c = color (164, 0, 0);
color ce;
int x=200, y=150;
int escala =2;
float[][] puntos = {{-50*escala, -25*escala}, {50*escala, -25*escala}, {0, 25*escala}};

int angulo2 = 90;
boolean click2 = false;
color c2 = color (200, 36, 0);
color ce2;
int x2=250, y2=200;
float[][] puntos2 = {{-50*escala, -25*escala}, {50*escala, -25*escala}, {0, 25*escala}};

int angulo3 = 180;
boolean click3 = false;
color c3 = color (200, 108, 0);
color ce3;
int x3=250, y3=275;
float[][] puntos3 = {{-25*escala, -12.5*escala}, {25*escala, -12.5*escala}, {0, 12.5*escala}};

int angulo4 = -90;
boolean click4 = false;
color c4 = color (200, 180, 0);
color ce4;
int x4=175, y4=200;
float[][] puntos4 = {{-25*escala, -12.5*escala}, {25*escala, -12.5*escala}, {0, 12.5*escala}};

int angulo5 = 45;
boolean click5 = false;
color c5 = color (200, 144, 0);
color ce5;
int x5=125, y5=275;
float[][] puntos5 = {{-35.34*escala, -17.67*escala}, {35.34*escala, -17.67*escala}, {0, 17.67*escala}};

int anguloC = 45;
boolean clickC = false;
color cC = color(200, 72, 0);
color ceC;
int xC=200, yC=250;
float[][] puntosC = {{17.67*escala, 17.67*escala}, {-17.67*escala, 17.67*escala}, {-17.67*escala, -17.67*escala}, {17.67*escala, -17.67*escala}};

int anguloP = 0;
boolean clickP = false;
color cP = color(200, 216, 0);
color ceP;
int xP=125, yP=175;
float[][] puntosP = {{-12.5*escala, 12.5*escala}, {12.5*escala, 37.5*escala}, {12.5*escala, -12.5*escala}, {-12.5*escala, -37.5*escala}};
boolean ATime=true;



void draw() {
  int mycolor=get(mouseX, mouseY);
  background(1);
  stroke(255);
  line(width/2, 0, width/2, height);
  line(0, height/2, width, height/2);
  beginShape();
  pushMatrix();//añade un noevo sistema de cordenadas
  translate(x, y);
  if (green(mycolor)==green(c)) {
    if (mousePressed && mouseButton == LEFT && click) {
      x= mouseX;
      y = mouseY;
      println(x, y);
    }
  }
  noStroke();
  fill(ce);
  for (int i = 0; i <= puntos.length-1; i++) {
    vertex(puntos[i][0], puntos[i][1]);
  }
  if (keyPressed && key=='+' && click) {
    angulo ++;
  } else if (keyPressed && key=='-' && click) {
    angulo --;
  }
  rotate(radians(angulo));
  endShape();
  popMatrix();
  //int mycolor=get(mouseX, mouseY);
  if (green(mycolor)!=green(c) && mousePressed && mouseButton == LEFT) {
    click = false;
  }
  if (green(mycolor)==green(c)) {
    ce= color(red(c), green(c), 255);
    if (mousePressed && mouseButton == LEFT) {
      click = true;
    }
  } else if (click == false) {
    ce=c;
  }
  //line(width/2, 0, width/2, height);
  beginShape();
  pushMatrix();//añade un noevo sistema de cordenadas
  translate(x2, y2);
  if (green(mycolor)==green(c2 )) {
    if (mousePressed && mouseButton == LEFT && click2) {
      x2= mouseX;
      y2 = mouseY;
      println(x2, y2);
    }
  }
  noStroke();
  fill(ce2);
  for (int i = 0; i <= puntos2.length-1; i++) {
    vertex(puntos2[i][0], puntos2[i][1]);
  }
  if (keyPressed && key=='+' && click2) {
    angulo2 ++;
  } else if (keyPressed && key=='-' && click2) {
    angulo2 --;
  }
  rotate(radians(angulo2));
  endShape();
  popMatrix();
  //int mycolor=get(mouseX, mouseY);
  if (green(mycolor)!=green(c2 ) && mousePressed && mouseButton == LEFT) {
    click2 = false;
  }
  if (green(mycolor)==green(c2 )) {
    ce2= color(red(c2 ), green(c2 ), 255);
    if (mousePressed && mouseButton == LEFT) {
      click2 = true;
    }
  } else if (click2 == false) {
    ce2=c2 ;
  }
  beginShape();
  pushMatrix();//añade un noevo sistema de cordenadas
  translate(x3, y3);
  if (green(mycolor)==green(c3 )) {
    if (mousePressed && mouseButton == LEFT && click3) {
      x3= mouseX;
      y3 = mouseY;
      println(x3, y3);
    }
  }
  noStroke();
  fill(ce3);
  for (int i = 0; i <= puntos3.length-1; i++) {
    vertex(puntos3[i][0], puntos3[i][1]);
  }
  if (keyPressed && key=='+' && click3) {
    angulo3 ++;
  } else if (keyPressed && key=='-' && click3) {
    angulo3 --;
  }
  rotate(radians(angulo3));
  endShape();
  popMatrix();
  //int mycolor=get(mouseX, mouseY);
  if (green(mycolor)!=green(c3 ) && mousePressed && mouseButton == LEFT) {
    click3 = false;
  }
  if (green(mycolor)==green(c3 )) {
    ce3= color(red(c3 ), green(c3 ), 255);
    if (mousePressed && mouseButton == LEFT) {
      click3 = true;
    }
  } else if (click3 == false) {
    ce3=c3 ;
  }
  beginShape();
  pushMatrix();//añade un noevo sistema de cordenadas
  translate(x4, y4);
  if (green(mycolor)==green(c4 )) {
    if (mousePressed && mouseButton == LEFT && click4) {
      x4= mouseX;
      y4 = mouseY;
      println(x4, y4);
    }
  }
  noStroke();
  fill(ce4);
  for (int i = 0; i <= puntos4.length-1; i++) {
    vertex(puntos4[i][0], puntos4[i][1]);
  }
  if (keyPressed && key=='+' && click4) {
    angulo4 ++;
  } else if (keyPressed && key=='-' && click4) {
    angulo4 --;
  }
  rotate(radians(angulo4));
  endShape();
  popMatrix();
  //int mycolor=get(mouseX, mouseY);
  if (green(mycolor)!=green(c4 ) && mousePressed && mouseButton == LEFT) {
    click4 = false;
  }
  if (green(mycolor)==green(c4 )) {
    ce4= color(red(c4 ), green(c4 ), 255);
    if (mousePressed && mouseButton == LEFT) {
      click4 = true;
    }
  } else if (click4 == false) {
    ce4=c4 ;
  }
  beginShape();
  pushMatrix();//añade un noevo sistema de cordenadas
  translate(x5, y5);
  if (green(mycolor)==green(c5 )) {
    if (mousePressed && mouseButton == LEFT && click5) {
      x5= mouseX;
      y5 = mouseY;
      println(x5, y5);
    }
  }
  noStroke();
  fill(ce5);
  for (int i = 0; i <= puntos5.length-1; i++) {
    vertex(puntos5[i][0], puntos5[i][1]);
  }
  if (keyPressed && key=='+' && click5) {
    angulo5 ++;
  } else if (keyPressed && key=='-' && click5) {
    angulo5 --;
  }
  rotate(radians(angulo5));
  endShape();
  popMatrix();
  //int mycolor=get(mouseX, mouseY);
  if (green(mycolor)!=green(c5 ) && mousePressed && mouseButton == LEFT) {
    click5 = false;
  }
  if (green(mycolor)==green(c5 )) {
    ce5= color(red(c5 ), green(c5 ), 255);
    if (mousePressed && mouseButton == LEFT) {
      click5 = true;
    }
  } else if (click5 == false) {
    ce5=c5 ;
  }
  beginShape();
  pushMatrix();//añade un noevo sistema de cordenadas
  translate(xC, yC);
  if (green(mycolor)==green(cC )) {
    if (mousePressed && mouseButton == LEFT && clickC) {
      xC= mouseX;
      yC = mouseY;
      println(xC, yC);
    }
  }
  noStroke();
  fill(ceC);
  for (int i = 0; i <= puntosC.length-1; i++) {
    vertex(puntosC[i][0], puntosC[i][1]);
  }
  if (keyPressed && key=='+' && clickC) {
    anguloC ++;
  } else if (keyPressed && key=='-' && clickC) {
    anguloC --;
  }
  rotate(radians(anguloC));
  endShape();
  popMatrix();
  //int mycolor=get(mouseX, mouseY);
  if (green(mycolor)!=green(cC ) && mousePressed && mouseButton == LEFT) {
    clickC = false;
  }
  if (green(mycolor)==green(cC )) {
    ceC= color(red(cC ), green(cC ), 255);
    if (mousePressed && mouseButton == LEFT) {
      clickC = true;
    }
  } else if (clickC == false) {
    ceC=cC ;
  }
  beginShape();
  if (mousePressed && mouseButton == RIGHT && clickP && ATime) {
      for (int i=0; i< puntosP.length; i++) {
        puntosP[i][0] *=-1;
        ATime=false;
      }
    } else if (ATime==false && !mousePressed) {
      ATime=true;
    }
  pushMatrix();//añade un noevo sistema de cordenadas
  translate(xP, yP);
  if (green(mycolor)==green(cP )) {
    if (mousePressed && mouseButton == LEFT && clickP) {
      xP= mouseX;
      yP = mouseY;
      println(xP, yP);
    }
  }
  noStroke();
  fill(ceP);
  for (int i = 0; i <= puntosP.length-1; i++) {
    vertex(puntosP[i][0], puntosP[i][1]);
  }
  if (keyPressed && key=='+' && clickP) {
    anguloP ++;
  } else if (keyPressed && key=='-' && clickP) {
    anguloP --;
  }
  rotate(radians(anguloP));
  endShape();
  popMatrix();
  //int myPolor=get(mouseX, mouseY);
  if (green(mycolor)!=green(cP ) && mousePressed && mouseButton == LEFT) {
    clickP = false;
  }
  if (green(mycolor)==green(cP )) {
    ceP= color(red(cP ), green(cP ), 255);
    if (mousePressed && mouseButton == LEFT) {
      clickP = true;
    }
  } else if (clickP == false) {
    ceP=cP ;
  }
}
