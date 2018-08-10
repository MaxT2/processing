Player p;
Enemy[] enemies;
Collisions collision;
Input i;
boolean gameOver = false;
boolean up = false;
boolean down = false;
boolean left = false;
boolean right = false;


void setup() {
  size(600, 600);
  p = new Player();
  collision = new Collisions();
  i = new Input();
  for(int i = 0; i < 10;i++){
   if(i == 0){
    enemies = new Enemy[10]; 
   }
   enemies[i] = new Enemy();
    
  }
}

void draw() {
  if (gameOver == false) {
    background(255);
    line(0, height-100, width, height-100);
    // update stuff
    //enemies in array
    for(Enemy e: enemies){
      e.update();
      
    }
    //player
    p.update(up,down,left,right);
    
    
    // check for collisions
    boolean collided = collision.check(p, enemies);
    // stop game if collided
    if (collided) {
      gameOver = true;
    }

    // display stuff
    for(Enemy e: enemies){
      e.display();
      
    }
    p.display();
  }
}

void keyPressed() {
  boolean[] keyList = i.keyPressed();
  up = keyList[0];
  down = keyList[1];
  left = keyList[2];
  right = keyList[3];
}

void keyReleased() {
  boolean[] keyList = i.keyReleased();
  up = keyList[0];
  down = keyList[1];
  left = keyList[2];
  right = keyList[3];
}
