PImage fighterImg;
PImage hpImg;
PImage treasureImg;
PImage enemyImg;
PImage bg1Img;
PImage bg2Img;
PImage start1Img;
PImage start2Img;
PImage end1Img;
PImage end2Img;
int hp,Tx,Ty,Ex,Ey1,Ey2,Ey3,Ey4,Ey5,Ey6,E;
final int GAME_START=1, GAME_RUN=2, GAME_FINISH=3;
int gameState;
boolean upPressed = false;
boolean downPressed = false;
boolean leftPressed = false;
boolean rightPressed = false;
int Fx,Fy;

void setup () {
  size(640,480);
  
  fighterImg=loadImage("img/fighter.png");
  hpImg=loadImage("img/hp.png");
  treasureImg=loadImage("img/treasure.png");
  enemyImg=loadImage("img/enemy.png");
  bg1Img=loadImage("img/bg1.png");
  bg2Img=loadImage("img/bg2.png");
  start1Img=loadImage("img/start1.png");
  start2Img=loadImage("img/start2.png");
  end1Img=loadImage("img/end1.png");
  end2Img=loadImage("img/end2.png");
  
  hp=195;
  Tx=floor(random(40,580));
  Ty=floor(random(40,300));
  Ex=-60;
  Ey1=floor(random(120,300));
  Ey2=floor(random(120,300));
  Ey3=floor(random(120,300));
  Ey4=floor(random(120,300));
  Ey5=floor(random(120,300));
  Ey6=floor(random(120,300));
  E=0;
  Fx=580;
  Fy=240;
  gameState = GAME_START;
}

void draw() {
  switch(gameState){
    
  case GAME_START:
  
    image(start2Img,0,0);
  if(mouseX>202.3 && mouseX<457.1 && mouseY>373 && mouseY<415){
    if(mousePressed){
      gameState = GAME_RUN;
    }
    else{
      image(start1Img,0,0);
    }
  }
  break;
  
  case GAME_RUN:
  
  image(bg1Img,E,0);
  image(bg2Img,E-640,0);//
  image(bg1Img,E-1280,0);
  image(fighterImg,Fx,Fy);
  rect(20,10,hp,20);
  fill(255,0,0);
  image(treasureImg,Tx,Ty);
  image(hpImg,10,10);
  E+=1;
  E%=1280;
  
  image(enemyImg,Ex,Ey1);
  image(enemyImg,Ex-100,Ey1);
  image(enemyImg,Ex-200,Ey1);
  image(enemyImg,Ex-300,Ey1);
  image(enemyImg,Ex-400,Ey1);
  
  image(enemyImg,Ex-1100,Ey2);
  image(enemyImg,Ex-1200,Ey2+30);
  image(enemyImg,Ex-1300,Ey2+60);
  image(enemyImg,Ex-1400,Ey2+90);
  image(enemyImg,Ex-1500,Ey2+120);

  image(enemyImg,Ex-2200,Ey3);
  image(enemyImg,Ex-2260,Ey3-60);
  image(enemyImg,Ex-2320,Ey3-120);
  image(enemyImg,Ex-2380,Ey3-60);
  image(enemyImg,Ex-2440,Ey3);
  image(enemyImg,Ex-2260,Ey3+60); 
  image(enemyImg,Ex-2320,Ey3+120);
  image(enemyImg,Ex-2380,Ey3+60);
  
  image(enemyImg,Ex-3140,Ey4);
  image(enemyImg,Ex-3240,Ey4);
  image(enemyImg,Ex-3340,Ey4);
  image(enemyImg,Ex-3440,Ey4);
  image(enemyImg,Ex-3540,Ey4);
  
  image(enemyImg,Ex-4240,Ey5);
  image(enemyImg,Ex-4340,Ey5+30);
  image(enemyImg,Ex-4440,Ey5+60);
  image(enemyImg,Ex-4540,Ey5+90);
  image(enemyImg,Ex-4640,Ey5+120);

  image(enemyImg,Ex-5240,Ey6);
  image(enemyImg,Ex-5300,Ey6-60);
  image(enemyImg,Ex-5360,Ey6-120);
  image(enemyImg,Ex-5420,Ey6-60);
  image(enemyImg,Ex-5480,Ey6);
  image(enemyImg,Ex-5300,Ey6+60); 
  image(enemyImg,Ex-5360,Ey6+120);
  image(enemyImg,Ex-5420,Ey6+60);
  Ex+=4;
  Ex%=6120;
  
  
  
 
  if (upPressed) {
    Fy -= 5;
    if(Fy<0){
    Fy=0;
    }
  }
  if (downPressed) {
    Fy += 5;
    if(Fy>430){
    Fy=430;
    }
  }
  if (leftPressed) {
    Fx -= 5;
    if(Fx<0){
    Fx=0;
    }
  }
  if (rightPressed) {
    Fx += 5;
    if(Fx>590){
    Fx=590;
    }
  }
  //treasure
  if(Fx<Tx+41 && Fx>=Tx-41 && Fy<=Ty+41 && Fy>=Ty-45){
   Tx=floor(random(20,550));
   Ty=floor(random(30,460));
  }
  //enemy
  
  
  
  }
}
  void keyPressed() {
  if (key == CODED) { // detect special keys 
    switch (keyCode) {
      case UP:
        upPressed = true;
        break;
      case DOWN:
        downPressed = true;
        break;
      case LEFT:
        leftPressed = true;
        break;
      case RIGHT:
        rightPressed = true;
        break;
    }
  }
}
  void keyReleased() {
  if (key == CODED) {
    switch (keyCode) {
      case UP:
        upPressed = false;
        break;
      case DOWN:
        downPressed = false;
        break;
      case LEFT:
        leftPressed = false;
        break;
      case RIGHT:
        rightPressed = false;
        break;
    }
  }
}
