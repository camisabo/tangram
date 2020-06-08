class Figura { //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>//
  color c; // color
  color ce; //color mutable
  float[][] puntos;
  int angulo;
  int mycolor;//color sobre el que esta el mouse
  boolean click;//se da click sobre la figura
  int x, y; //pocicion de la figura
  boolean ATime=true;

  //constructor con el color de la figura y los puntos de la figura
  Figura (color tempC, int tempAngulo, float[][] tempPuntos) { 
    c = tempC;
    puntos = tempPuntos;
    angulo = tempAngulo;
    click = false;
    x = y = 300;
  }
  Figura (color tempC, int tempAngulo, float[][] tempPuntos, int tempX, int tempY) { 
    c = tempC;
    puntos = tempPuntos;
    angulo = tempAngulo;
    click = false;
    x = tempX;
    y = tempY;
  }

  //creador de la figura
  void poligono() {
    pushMatrix();//añade un noevo sistema de cordenadas
    translate(x, y);
    move();
    noStroke();
    fill(ce);
    beginShape();
    espejo();
    for (int i = 0; i <= puntos.length-1; i++) {
      vertex(puntos[i][0], puntos[i][1]);
    }
    Rotacion();
    endShape();
    popMatrix();
  }
  //rotacion de la figura
  void Rotacion() {
    if (keyPressed && key=='+' && click) {
      angulo ++;
      move = true;
    } else if (keyPressed && key=='-' && click) {
      angulo --;
      move = true;
    } else {
      for (int i = 0; i <= 8; i++) {
        if (((i*45)-10 <= angulo) && (angulo <=(i*45)+10)) {
          angulo = i*45;
        }
      }
    }
    if (angulo < 0) {
      angulo = 359;
    } else if (angulo >= 360) {
      angulo = 0;
    } 
    rotate(radians(angulo));
  }

  //reconocedor del color como selector
  void seleccion() {
    mycolor=get(mouseX, mouseY);
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
  }


  void move() {
    x = constrain(x, 0, width);
    y = constrain(y, 0, height);
    if (green(mycolor)==green(c)) {
      if (mousePressed && mouseButton == LEFT && click) {
        x= mouseX;
        y = mouseY;
        move = true;
      }
    } else {
      move = false;
    }
  }
  //cambiar la orientacion de la figura
  void espejo() {
    if (mousePressed && mouseButton == RIGHT && click && ATime) {
      for (int i=0; i< puntos.length; i++) {
        puntos[i][0] *=-1;
        ATime=false;
      }
    } else if (ATime==false && !mousePressed) {
      ATime=true;
    }
  }
}
