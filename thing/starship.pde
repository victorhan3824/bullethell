class Starship extends GameObject{
 
  int cooldown, threshold;
  
  Starship() {
    super(width/2, height*0.75, 0, 0, 40, 3, spaceship);
    //x,y,vx,vy,size,lives,display
    threshold = 20;
    cooldown = threshold;
  }
  
  void act() {
    super.act();
    //managing the gun ===================
    cooldown++;
    if (space && cooldown >= threshold) {
      objects.add(new Bullet());
      cooldown = 0;
    }
    
    //controlling the starship ===========
    if (up)    vy = -1;
    if (down)  vy = 1;
    if (left)  vx = -5;
    if (right) vx = 5;
    if (!up && !down)    vy = vy*0.9;
    if (!left && !right) vx = vx*0.9;
    
    //resetting  location  ===============
    if (x < -size) x = width+size/2;
    if (x > width+size) x = -size/2;
    if (y < height/10) y = y + 2;
    if (y > height) y = height-2*size;
  }

  
}
