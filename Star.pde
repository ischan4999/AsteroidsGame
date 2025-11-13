class Star //note that this class does NOT extend Floater
{
  private double myX, myY, myS, myA;
  private int myC, temp;
  public Star(){
    myX = Math.random()*500;
    myY = Math.random()*500;
  }
  public void show(){
    noStroke();
    fill(255, 255, 255);
    ellipse((float)myX, (float)myY, 5, 5);
  }
}
