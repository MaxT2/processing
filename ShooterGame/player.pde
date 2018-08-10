class player{

int py,px;
int pWidth;
int pHeight;

void player(){
  pWidth = 30;
  pHeight = 20;
  py = 800 - pHeight;
  px = 400;
    
}

public int getX(){
  return px;
}

public int getY(){
  return py;
}

public void setX(int x){
  px = x;
}

public void setY(int y){
  py = y;
}

public void pupdate(){
 px = mouseX;
}

public void Draw(){
 fill(255);
 rect(mouseX, py, pWidth, pHeight);
}

}