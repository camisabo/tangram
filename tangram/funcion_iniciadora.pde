
void Funcion_iniciadora() {
  if (triangulo4.click==true) {
    triangulo5.poligono();
    triangulo3.poligono();
    triangulo2.poligono();
    triangulo.poligono();
    cuadrado.poligono();
    Rtorcido.poligono();
    triangulo4.poligono();


    triangulo4.seleccion();
  } else if (triangulo3.click==true) {
    triangulo4.poligono();
    triangulo5.poligono();
    triangulo2.poligono();
    triangulo.poligono();
    cuadrado.poligono();
    Rtorcido.poligono();
    triangulo3.poligono();

    triangulo3.seleccion();
  } else if (triangulo2.click==true) {
    triangulo4.poligono();
    triangulo3.poligono();
    triangulo5.poligono();
    triangulo.poligono();
    cuadrado.poligono();
    Rtorcido.poligono();
    triangulo2.poligono();

    triangulo2.seleccion();
  } else if (triangulo.click==true) {
    triangulo4.poligono();
    triangulo3.poligono();
    triangulo2.poligono();
    triangulo5.poligono();
    cuadrado.poligono();
    Rtorcido.poligono();
    triangulo.poligono();

    triangulo.seleccion();
  } else if (cuadrado.click==true) {
    triangulo4.poligono();
    triangulo3.poligono();
    triangulo2.poligono();
    triangulo.poligono();
    triangulo5.poligono();
    Rtorcido.poligono();
    cuadrado.poligono();

    cuadrado.seleccion();
  } else if (Rtorcido.click==true) {
    triangulo4.poligono();
    triangulo3.poligono();
    triangulo2.poligono();
    triangulo.poligono();
    cuadrado.poligono();
    triangulo5.poligono();
    Rtorcido.poligono();

    Rtorcido.seleccion();
  } else {
    triangulo4.poligono();
    triangulo3.poligono();
    triangulo2.poligono();
    triangulo.poligono();
    cuadrado.poligono();
    Rtorcido.poligono();
    triangulo5.poligono();

    triangulo5.seleccion();
    triangulo4.seleccion();
    triangulo3.seleccion();
    triangulo2.seleccion();
    triangulo.seleccion();
    cuadrado.seleccion();
    Rtorcido.seleccion();
  }
}
