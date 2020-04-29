Figura triangulo;
Figura triangulo2;
Figura triangulo3;
Figura triangulo4;
Figura triangulo5;
Figura cuadrado;
Figura Rtorcido;

int escala =3;
float[][] datos = {{-50*escala, -25*escala}, {50*escala, -25*escala}, {0, 25*escala}};
float[][] cuadra = {{17.67*escala, 17.67*escala}, {-17.67*escala, 17.67*escala}, {-17.67*escala, -17.67*escala}, {17.67*escala, -17.67*escala}};
float[][] datos2 = {{-25*escala, -12.5*escala}, {25*escala, -12.5*escala}, {0, 12.5*escala}};
float[][] datos3 = {{-35.34*escala, -17.67*escala}, {35.34*escala, -17.67*escala}, {0, 17.67*escala}};
float[][] Rtor = {{-12.5*escala, 12.5*escala}, {12.5*escala, 37.5*escala}, {12.5*escala, -12.5*escala}, {-12.5*escala, -37.5*escala}};


void setup() {
  surface.setResizable(true);
  size(600, 600);
  shapeMode(CENTER);
  triangulo5 = new Figura(color (200, 144, 0), 45, datos3, 125, 275);// 215 290
  triangulo4 = new Figura(color (200, 180, 0), -90, datos2, 175, 200);//240  250
  triangulo3 = new Figura(color (200, 108, 0), 180, datos2, 250, 275);//275 290
  triangulo2 = new Figura(color (200, 36, 0), 90, datos, 250, 200); //275 250
  triangulo = new Figura(color (164, 0, 0), 0, datos, 200, 150);//250 225
  cuadrado = new Figura(color(200, 72, 0), 45, cuadra, 200, 250);//250 275
  Rtorcido = new Figura(color(200, 216, 0), 0, Rtor, 125, 175);//215 240
}

void draw() {
  background(1);
  stroke(255);
  line(width/2, 0, width/2, height);
  line(0, height/2, width, height/2);
  Funcion_iniciadora();
}
