

int c = 14;
int estado;
PImage[] impantallas =  new PImage[c];
String[] textos = new String[c];


void setup() {
  size ( 600, 600);
  //agrego imagenes a traves de un for con arreglo 
  for ( int i = 0; i < c; i++ ) {
    impantallas[i] = loadImage( "data/pantalla" + i + ".png" );
    
    //agrego textos con for y arreglos
  textos = loadStrings("textos.txt");
  for( int i = 0 ; i < c ; i++ ){
  }
}
}

void draw() {

  switch(estado) {
    
    //------- pantalla: 0
  case 0:
    image( impantallas[0], 0, 0 );
    
  }
    break;
    
  ////------- pantalla: 1
  case 1:
  image( impantallas[1], 0, 0 );
  break;

  ////------- pantalla: 2
  case 2:
  image( impantallas[2], 0, 0 );
  break;

  ////------- pantalla: 3
  case 3:
  image( impantallas[3], 0, 0 );
  break;
  
  ////------- pantalla: 4
  case 4:
  image( impantallas[4], 0, 0 );
  break;

  ////------- pantalla: 5
  case 5:
  image( impantallas[5], 0, 0 );
  break;
  
  ////------- pantalla: 6
  case 6:
  image( impantallas[6], 0, 0 );
  break;
  
  ////------- pantalla: 7
  case 7:
  image( impantallas[7], 0, 0 );
  break;
  
  ////------- pantalla: 8
  case 8:
  image( impantallas[8], 0, 0 );
  break;
  
  ////------- pantalla: 9
  case 9:
  image( impantallas[9], 0, 0 );
  break;
  
  ////------- pantalla: 10
  case 10:
  image( impantallas[10], 0, 0 );
  break;
  
  ////------- pantalla: 11
  case 11:
  image( impantallas[11], 0, 0 );
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
