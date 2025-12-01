class Asteroid extends Floater  
{   
  private int rotationSpeed;
  public Asteroid(){
    corners = 14;  //the number of corners, a triangular floater has 3   
    rotationSpeed = (int)(Math.random()*8)+2;
    xCorners = new int[corners];   
    yCorners = new int[corners];
    
    xCorners[0] = -25;
    yCorners[0] = 0;
    xCorners[1] = -20;
    yCorners[1] = 20;
    xCorners[2] = -10;
    yCorners[2] = 25;
    xCorners[3] = -3;
    yCorners[3] = 25;
  
    xCorners[4] = 3;
    yCorners[4] = 23;
    xCorners[5] = 13;
    yCorners[5] = 18;
    xCorners[6] = 25;
    yCorners[6] = 0;

    xCorners[7] = 20;
    yCorners[7] = -10;
    xCorners[8] = 13;
    yCorners[8] = -13;
    xCorners[9] = 8;
    yCorners[9] = -20;
    xCorners[10] = 0;
    yCorners[10] = -20;
    
    xCorners[11] = -5;
    yCorners[11] = -18;
    xCorners[12] = -13;
    yCorners[12] = -8;
    xCorners[13] = -25;
    yCorners[13] = 0;
    
    myColor = color(100, 100, 100);   
    myCenterX = (int)(Math.random()*500); 
    myCenterY = (int)(Math.random()*500); //holds center coordinates   
    myXspeed = (int)(Math.random()*5); 
    myYspeed = (int)(Math.random()*5); 
    myPointDirection = 0; //holds current direction the ship is pointing in degrees    
  }
  
  public void move(){
    super.move();
    myPointDirection += rotationSpeed; 
  }
  
  public double getX(){
    return myCenterX;
  }
  
  public double getY(){
    return myCenterY;
  }
}
