void game() {
  background(black);
  
  //adding the star into the stars list
  objects.add(0, new Star());
  
  //adding enemies
  if (frameCount % 69 == 0) objects.add(new Enemy1());
  
  //get the stars to drop and die
  int i = 0;
  while (i < objects.size()) {
    GameObject s = objects.get(i);
    s.act();
    s.show();
    if (s.lives == 0) objects.remove(i);
    else i++;
  }
  
  //stat
  if (statCounter > 0) {
    fill(255);
    textSize(15);
    text("Framerate: " + frameRate,40,20);
    text("Star amount: " + objects.size(),40,40);
    text("X Coordinate: " + player1.x,40,60);
    text("Y Coordinate: " + player1.y,40,80);
    text("Lives: " + player1.lives,40,100);
    text("Time: " + hour() + ":" + minute() + ":" + second(), 40, 120);
    text("Score: " + frameCount/10, 40, 140);
  }
}

void gameClick() {
  mode = OVER;
  
}
