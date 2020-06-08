Figura triangulo;
Figura triangulo2;
Figura triangulo3;
Figura triangulo4;
Figura triangulo5;
Figura cuadrado;
Figura Rtorcido;

int escala =2;
float[][] datos = {{-50*escala, -25*escala}, {50*escala, -25*escala}, {0, 25*escala}};
float[][] cuadra = {{17.67*escala, 17.67*escala}, {-17.67*escala, 17.67*escala}, {-17.67*escala, -17.67*escala}, {17.67*escala, -17.67*escala}};
float[][] datos2 = {{-25*escala, -12.5*escala}, {25*escala, -12.5*escala}, {0, 12.5*escala}};
float[][] datos3 = {{-35.34*escala, -17.67*escala}, {35.34*escala, -17.67*escala}, {0, 17.67*escala}};
float[][] Rtor = {{-12.5*escala, 12.5*escala}, {12.5*escala, 37.5*escala}, {12.5*escala, -12.5*escala}, {-12.5*escala, -37.5*escala}};
PImage nivel; // el nivel en el que se esta
int maxLvl = 1; // el numero de niveles que hay
boolean move; //se esta moviendo alguna ficha?
int LvLnum = 0; //numero del nivel
boolean creador = false; //estas en modo creador?
boolean pausa = false; //esperar a que se deje de precionar


void setup() {
  //surface.setResizable(true);
  size(600, 600);
  shapeMode(CENTER);
  triangulo5 = new Figura(color (200, 144, 0), 45, datos3, 125, 275);// 215 290
  triangulo4 = new Figura(color (200, 180, 0), 270, datos2, 175, 200);//240  250
  triangulo3 = new Figura(color (200, 108, 0), 180, datos2, 250, 275);//275 290
  triangulo2 = new Figura(color (200, 36, 0), 90, datos, 250, 200); //275 250
  triangulo = new Figura(color (164, 0, 0), 0, datos, 200, 150);//250 225
  cuadrado = new Figura(color(200, 72, 0), 45, cuadra, 200, 250);//250 275
  Rtorcido = new Figura(color(200, 216, 0), 0, Rtor, 125, 175);//215 240

  //cargador de imagen
}
void draw() {
  nivel = loadImage("data/nivel"+LvLnum+".png");
  background(1);

  //procesador de imagen
  int blanco =0;
  if (creador == false) {
    loadPixels();
    nivel.loadPixels();
    for (int x = 0; x < width; x++) {
      for (int y = 0; y< height; y++) {
        int loc = x+y*width;
        float r = red (nivel.pixels[loc]);
        if (r <= 1) {
          pixels[loc] = color(1, 255);
        } else {
          pixels[loc] = color(255, 255, 255);
        }
      }
    }
    updatePixels();
  }
  Funcion_iniciadora();
  loadPixels();
  if (move == false && creador == false) {
    for (int i = 0; i < height*width; i++) {
      if (red(pixels[i]) > 200) {
        blanco++;
      }
    }
    if (blanco < 2000) {
      println("win");
      if (LvLnum < maxLvl) {
        LvLnum++;
      } else {
        LvLnum = 0;
      }
    }
  }

  //creador de niveles
  if (keyPressed && key=='c' && pausa == false) {
    pausa = true;
    if (creador == false) {
      creador = true;
    } else if(creador == true){
      creador = false;
    }
  }
  if (!(keyPressed && key=='c')){
    pausa = false;
  }
  if (keyPressed && key=='p') {

    save("data/nivel"+maxLvl+1+".png");
    maxLvl++;
  }
}
