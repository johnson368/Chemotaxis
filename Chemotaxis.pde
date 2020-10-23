  Zombie[] z;
 void setup()   
 {     
   size (1000,1000);
   frameRate(40);
       z = new Zombie[300];
       for (int i = 0; i < z.length; i++) 
       {
         z[i] = new Zombie();
       }
 }   
 void draw()   
 {    
   clear();
 background (55, 60, 68);
   for ( int i = 0; i < z.length; i++)
    {
   z[i].move();
   z[i].show();
   }
  }
  
 class Zombie    
 {     
  int myX, myY, zhead, zeye, zbody;
   Zombie()
   {
     myX = 400;
     myY = 400;
     zhead = color(120, 193, 101);
     zeye = color(255, 255, 255);
     zbody = color(102, 0, 0);
   }
   void move()
   {
     myX = myX + (int) (Math.random()*31)-15;
     myY = myY + (int) (Math.random()*31)-15;
   }
   void show()
   {
        fill(zhead);
     ellipse (myX, myY, 100, 100);
        fill(zeye);
        ellipse (myX-25, myY-5, 45, 50);
        ellipse (myX+25, myY-5, 45, 50);
        fill(zbody);
        rect (myX-38, myY+32, 75,30);
   }
 }    
 
