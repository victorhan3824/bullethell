
//enemy1 ==========================
class Enemy1 extends GameObject {
  
  Enemy1() {
    super(random(30,width-30), -30, 0, 3, 60, 1, enemy1);
  }
  
  void act() {
    super.act();
    
    //collision ======================================================================
    int i = 0;
    while(i < objects.size()) {
      GameObject obj = objects.get(i); //takeout the "i"th object in the objects list
      if (obj instanceof Bullet) { //if obj that we took out is of Bullet class
        if (collidingWith(obj)) {
          lives--;
        } 
      }
      i++;
    }
    //remove if goes off screen
    if (offScreen()) lives = 0;
    
  }
  
}
