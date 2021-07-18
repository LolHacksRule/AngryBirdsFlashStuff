package §2"Y§
{
   import §4!$§.b2PolygonShape;
   import §4!$§.b2Shape;
   
   public class §<"+§ extends §?#^§
   {
       
      
      public function §<"+§(param1:Number, param2:Number, param3:String = null)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            super(param1,param2,param3);
         }
      }
      
      override public function getB2Shape(param1:Number = 1.0) : b2Shape
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(b2PolygonShape);
         §§push(getWidth() / 2);
         if(!_loc3_)
         {
            §§push(param1);
            if(!_loc3_)
            {
               §§goto(addr37);
            }
            §§goto(addr58);
         }
         addr37:
         §§push(§§pop() * §§pop());
         §§push(getHeight() / 2);
         if(_loc2_ || this)
         {
            addr58:
            §§push(§§pop() * param1);
         }
         return §§pop().§-&§(§§pop(),§§pop());
      }
   }
}
