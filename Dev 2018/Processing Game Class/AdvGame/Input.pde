class Input {

  boolean up = false;
  boolean down = false;  
  boolean left = false;
  boolean right = false;

  public Input() {
  }


  public boolean[] getInputs() {




    boolean[] test = {true, false};


    return test;
  }



  boolean[] keyPressed() {
    if (key == CODED) {
      if (keyCode == UP) {
        up = true;
      }
      if (keyCode == DOWN) {
        down = true;
      }
      if (keyCode == LEFT) {
        left = true;
      }
      if (keyCode == RIGHT) {
        right = true;
      }
    }
    println("keyPressed");
    return new boolean[]{up, down, left, right};
  }

  boolean[] keyReleased() {
    if (key == CODED) {
      if (keyCode == UP) {
        up = false;
      }
      if (keyCode == DOWN) {
        down = false;
      }
      if (keyCode == LEFT) {
        left = false;
      }
      if (keyCode == RIGHT) {
        right = false;
      }
    }
    println("keyReleased");
    return new boolean[]{up, down, left, right};
  }
}
