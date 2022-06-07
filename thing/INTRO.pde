void intro() {
  background(blue);
  
  //texts
  fill(lightGray);
  textFont(AVA);
  textSize(145);
  text("Bullet Hell",width/8,height/4);
  textSize(24);
  fill(white);
  text("Click to play",width/8,height*2/3);
  
}

void introClick() {
  mode = GAME;
  
}
