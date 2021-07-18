package §"!&§
{
   import §,Z§.b2PolygonShape;
   import §,Z§.b2Shape;
   
   public class §>!0§ extends set
   {
       
      
      public function §>!0§(param1:Number, param2:Number)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            super(param1,param2);
         }
      }
      
      override public function getB2Shape(param1:Number = 1.0) : b2Shape
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(b2PolygonShape);
         §§push(getWidth() / 2);
         if(_loc2_ || _loc2_)
         {
            §§push(param1);
            if(_loc2_ || _loc3_)
            {
               addr47:
               §§push(§§pop() * §§pop());
               §§push(getHeight() / 2);
               if(_loc2_ || this)
               {
                  §§push(§§pop() * param1);
               }
            }
            return §§pop().§-z§(§§pop(),§§pop());
         }
         §§goto(addr47);
      }
   }
}
