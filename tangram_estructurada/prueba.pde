/*int anguloP = 0;
boolean clickP = false;
color cP = color(200, 216, 0);
color ceP;
int xP=125, yP=175;
float[][] puntosP = {{-12.5*escala, 12.5*escala}, {12.5*escala, 37.5*escala}, {12.5*escala, -12.5*escala}, {-12.5*escala, -37.5*escala}};




void draw() {
  int myPolor=get(mouseX, mouseY);
  background(1);
  stroke(255);
  line(width/2, 0, width/2, height);
  line(0, height/2, width, height/2);
  beginShape();
  pushMatrix();//añade un noevo sistema de cordenadas
  translate(xP, yP);
  if (green(myPolor)==green(cP )) {
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
  if (green(myPolor)!=green(cP ) && mousePressed && mouseButton == LEFT) {
    clickP = false;
  }
  if (green(myPolor)==green(cP )) {
    ceP= color(red(cP ), green(cP ), 255);
    if (mousePressed && mouseButton == LEFT) {
      clickP = true;
    }
  } else if (clickP == false) {
    ceP=cP ;
  }
}*/
