//Resolución de 600x600 LISTO
//Al menos 1 función propia con parámetros (al menos 1) que NO retorna un valor LISTO
//Al menos 1 función propia con parámetros (al menos 1) que RETORNA un valor
//Condicionales (if - else).
//Ciclos FOR LISTO
//Manejo de arreglos LISTO 
//Eventos (mouse y/o teclado): modificación de variables.
//Algunas funciones matemáticas: dist(), map(), random();

int p = 14;
int ach= 147;
int alt= 62;
int estado;
PImage[] impantallas =  new PImage[p];
String[] textos = new String[p];
boolean botoncomenzar, botonA, botonB;



void setup() {
  size ( 600, 600);
  estado=0;
  //agrego imagenes a traves de un for con arreglo 
  for ( int i = 0; i < p; i++ ) {
    impantallas[i] = loadImage( "data/pantalla" + i + ".png" );
  }

  //agrego textos con for y arreglos
  textos = loadStrings("textos.txt");
  //println( textos );
  for ( int a = 0; a < p; a++ ) {
  }
}
void draw() {
  println(mouseX);
  println(mouseY);
  botoncomenzar= (mouseX > 190 && mouseY > 500 && mouseX < 410 && mouseY < 573);
  botonA= (mouseX > 43 && mouseY > 522 && mouseX < 190 && mouseY < 584);
  botonB=(mouseX > 420 && mouseY > 523 && mouseX < 567 && mouseY < 585);

  switch(estado) {


    //------- pantalla: 0
  case 0:
    circle(192, 503, 10);
    image( impantallas[0], 0, 0 );
    //rect (190, 500, 220, 73);
    break;

    ////------- pantalla: 1
  case 1:
    ajustesdetextos(estado, 300);
    image( impantallas[1], 0, 0 );
    text(textos[1], 25, 28, 560, 160);
    //rect (420, 523, 147, 62);
    break;

    ////------- pantalla: 2
  case 2:
    image( impantallas[2], 0, 0 );
    ajustesdetextos(estado, 300);
    text(textos[2], 25, 28, 560, 160);
    break;

    ////------- pantalla: 3
  case 3:
    image( impantallas[3], 0, 0 );
    ajustesdetextos(estado, 300);
    text(textos[3], 25, 28, 560, 160);
    break;

    ////------- pantalla: 4
  case 4:
    image( impantallas[4], 0, 0 );
    ajustesdetextos(estado, 300);
    text(textos[4], 25, 28, 560, 160);
    break;

    ////------- pantalla: 5
  case 5:
    image( impantallas[5], 0, 0 );
    ajustesdetextos(estado, 300);
    text(textos[5], 25, 28, 560, 160);
    break;

    ////------- pantalla: 6
  case 6:
    image( impantallas[6], 0, 0 );
    ajustesdetextos(estado, 300);
    text(textos[6], 25, 28, 560, 160);
    break;

    ////------- pantalla: 7
  case 7:
    image( impantallas[7], 0, 0 );
    ajustesdetextos(estado, 300);
    text(textos[7], 25, 28, 560, 160);
    break;

    ////------- pantalla: 8
  case 8:
    image( impantallas[8], 0, 0 );
    ajustesdetextos(estado, 300);
    text(textos[8], 25, 28, 560, 160);
    break;

    ////------- pantalla: 9
  case 9:
    image( impantallas[9], 0, 0 );
    ajustesdetextos(estado, 300);
    text(textos[9], 25, 28, 560, 160);
    break;

    ////------- pantalla: 10
  case 10:
    image( impantallas[10], 0, 0 );
    ajustesdetextos(estado, 300);
    text(textos[10], 25, 28, 560, 160);
    break;

    ////------- pantalla: 11
  case 11:
    image( impantallas[11], 0, 0 );
    ajustesdetextos(estado, 300);
    text(textos[11], 25, 28, 560, 160);
    break;

    ////------- pantalla: 12
  case 12:
    image( impantallas[12], 0, 0 );

    break;

    ////------- pantalla: 13 FIN
  case 13:
    image( impantallas[13], 0, 0 );

    break;
  }
}
void mousePressed() {  //botones

  if ( estado == 0 && botoncomenzar) {
    estado = 1;
  }
  //-------------- pantalla1
  if ( estado == 1) {
    if (botonA) {
      estado = 3;
    }
    if (botonB) {
      estado = 2;
    }
  }
  //-------------- pantalla2
  if ( estado == 2) {
    if (botonA) {
      estado = 6;
    }
    if (botonB) {
      estado = 7;
    }
  }
}
// funcion propia para ajustes de texto
void ajustesdetextos(int e, int t) {  //con parametros sin return
  textSize(17);
  textAlign(LEFT);
  fill( 0 );
}
