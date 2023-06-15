//Resolución de 800x400 LISTO
//Al menos 1 función propia con parámetros (al menos 1) que NO retorna un valor---------
//Al menos 1 función propia con parámetros (al menos 1) que RETORNA un valor----------
//Condicionales (if - else). LISTO
//Ciclos FOR anidados.LISTO
//Eventos (mouse y/o teclado): modificación de variables. LISTO
//Algunas funciones matemáticas: dist(), map(), random().------------
//Reiniciar el programa: volver variables a estado original.LISTO
//La imagen de referencia debe estar ubicada a la izquierda LISTO

color cf;  //color de fondo
color cc; //color de circulos
int t;  //tamaño circulos
PImage imagentp;

void setup() {
  size( 800, 400 ); 
  noStroke();
 
//DECLARACION DE VARIABLES---------------------
  cf = color( 255 ); //color de fondo
  cc =color( 0 ); // color de los circulos
  t = height / 14;  // tamaño de los circulos 
  imagentp= loadImage("imagentp.png"); //imagen 


}

void draw() {
  background( cf );
  image (imagentp,0,0);
  println(mouseX);
  println(mouseY);
  translate( 400, 0 ); //translado el 0
 
//POSICION DE DIBUJO DE LOS CIRCULOS
  for ( int x = 0; x < 14; x ++ ) {  //();X ES 0, SI X ES MAYOR QUE 10 ENTONCES SUMALE 1
  for ( int y = 0; y < 14; y ++ ) {  //LO MISMO PERO CON Y
      
      
      //calculos: CON FUNCION
      float m = calcularDistMapMouse( x*t, y*t, 5, 40 ); //asignando valores a la funcion propia calcularDistMapMouse
      //dibujo: CON FUNCION
      modulo( x, y, t, m );  //funcion que NO devuelve valor: funcion de dibujo
     }
  }

}
//-------------------------- funciones propias

void modulo( int x, int y, int t, float m ) {
  fill( cc );
  circle( x*t, y*t, m );  
}

float calcularDistMapMouse( int x2, int y2, int escMin, int escMax ){ //llama a la funcion 
float d = dist( mouseX, mouseY, x2, y2 );  //distancia entre dos puntos
float m = map( d, 0, 500, escMin, escMax );  //transformo la escala distancia en escala tamaño modulo
  return m;
}

//--------------------------

void keyPressed() {
  if ( key == 'f' ) {  //CAMBIA COLOR DE FONDO
    cf = color( random(0, 70), random(0, 70), random(0, 70) );  //colores oscuros?????
  }
  if ( key == 'c' ) {  //CAMBIA COLOR DE CIRCULOS
    cc = color( random(70, 255), random(70, 255), random(70, 255) ); 
  }
  
if ( key == 'r' ){ //RESETEA VARIABLES CUANDO APRETO R
    reiniciar();
  }
}


//-----------------------------------------

//reiniciar variables 
void reiniciar(){
cf = color( 255 );
cc= color( 0 );
t = height / 14; 
}
