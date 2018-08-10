class bullet{

int bx, by;
int bSpeed, bWidth, bHeight;
//boolean drawBullet = false;


void bullet(){
  bx = getPX();
  by = getPY();
  bWidth = 20;
  bHeight = 60;
  bSpeed = -20;

}

public int getX(){
  return by;
}

public void setX(int x){
 bx = x; 
}

public int getY(){
  return bx;
}

public void setY(int y){
 by = y; 
}

public void update(){ 
  by = by + bSpeed;
}

public void display(){
 fill(255);
 rect(bx,by,bWidth,bHeight);  
}


}