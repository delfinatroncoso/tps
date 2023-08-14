

let p=6;
let impantallas = new Array(p);
let estado=0;
let botonjugar, botonmenu, botoncomojugar, botoncreditos, botonvolverajugar, botoninicio;



function preload() {

  for ( let i = 0; i < p; i++ ) {
    impantallas[i] = loadImage( "data/pantalla" + i + ".png" );
  }
}

function setup() {
  createCanvas(600, 600);
}


function draw() {

  print(mouseX);
  print(mouseY);


  botonjugar= (mouseX > 73 && mouseY > 490 && mouseX < 274 && mouseY < 566);
  botonmenu= (mouseX > 320 && mouseY > 494 && mouseX < 522 && mouseY < 575);
  botoncomojugar= (mouseX > 195 && mouseY > 246 && mouseX < 413 && mouseY < 310);
  botoncreditos= (mouseX > 195 && mouseY > 344 && mouseX < 413 && mouseY < 408);
  botoninicio= (mouseX > 224 && mouseY > 447 && mouseX < 404 && mouseY < 517);
  botonvolverajugar= (mouseX > 224 && mouseY > 348 && mouseX < 404 && mouseY < 438);

  switch(estado) {


    //------- pantalla: 0 principal
  case 0:
    image( impantallas[0], 0, 0 );

    break;
    //------- pantalla: 1 menu
  case 1:
    image( impantallas[1], 0, 0 );
    break;
    //------- pantalla: 2 creditos
  case 2:
    image( impantallas[2], 0, 0 );
    break;
    //------- pantalla: 3 como juegar
  case 3:
    image( impantallas[3], 0, 0 );
    break;
    //------- pantalla: 4 juego
  case 4:
    image( impantallas[4], 0, 0 );
    break;
    //------- pantalla:5 ganaste
  case 5:
    image( impantallas[5], 0, 0 );


    break;
    //------- pantalla: 6 perdiste
  case 6:
    image( impantallas[6], 0, 0 );
    break;
  }
}

//EVENTOS (CREACION DE BOTONES)
function mouseClicked() {  //botones

  if ( estado == 0 && botonjugar) {
    estado = 4;
  }
  if ( estado == 0 && botonmenu) {
    estado = 1;
  }
  if ( estado == 5 && botonvolverajugar) {
    estado = 4;
  }
  if ( estado == 5 && botoninicio) {
    estado = 0;
  }
  if ( estado == 6 && botonvolverajugar) {
    estado = 4;
  }
  if ( estado == 6 && botoninicio) {
    estado = 0;
  }
  if ( estado == 1 && botoncomojugar) {
    estado = 3;
  }
  if ( estado == 1 && botoncreditos) {
    estado = 2;
  }
}

function mousePressed() {

  if ( estado == 1 && botonX(559, 559, 35)) {
    estado = 0;
  }
  if ( estado == 2 && botonX(559, 559, 35)) {
    estado = 1;
  }
  if ( estado == 3 && botonX(559, 559,35)) {
    estado = 1;
  }
}


//para botones de X

function botonX(x,y,r) {
  return dist(mouseX, mouseY, x, y) <= r;
}
