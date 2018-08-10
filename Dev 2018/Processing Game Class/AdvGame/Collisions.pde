class Collisions {


  boolean check(Player p, Enemy e[]) {

    //float pX = p.x; 
    //float pY = p.y;

    //float eX = e.x;
    //float eY = e.y;

    for(int i = 0; i < e.length;i++){

    if (abs(p.x - e[i].x) < (p.pWidth/2 + e[i].eWidth/2)) {

      if (abs(p.y - e[i].y) < (p.pHeight/2 + e[i].eHeight/2)) {

        return true;
      }
    }
    }
    
    return false;
  }
}
