package org.villekoskela
{
   public class IntegerRectangle
   {
       
      
      public var x:int;
      
      public var y:int;
      
      public var width:int;
      
      public var height:int;
      
      public var right:int;
      
      public var bottom:int;
      
      public var id:int;
      
      public function IntegerRectangle(x:int = 0, y:int = 0, width:int = 0, height:int = 0)
      {
         super();
         this.x = x;
         this.y = y;
         this.width = width;
         this.height = height;
         this.right = x + width;
         this.bottom = y + height;
      }
   }
}
