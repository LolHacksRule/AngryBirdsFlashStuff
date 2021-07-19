package §%8§
{
   import §=!!§.b2PolygonShape;
   import §=!!§.b2Shape;
   
   public class §]!o§ extends §[_§
   {
       
      
      public function §]!o§(param1:Number, param2:Number, param3:String = null)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param3))
         {
            super(param1,param2,param3);
         }
      }
      
      override public function getB2Shape(param1:Number = 1.0) : b2Shape
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(b2PolygonShape);
         §§push(§=!q§() / 2);
         if(!(_loc2_ && _loc2_))
         {
            §§push(param1);
            if(!(_loc2_ && _loc3_))
            {
               §§goto(addr48);
            }
            §§goto(addr69);
         }
         addr48:
         §§push(§§pop() * §§pop());
         §§push(§%!r§() / 2);
         if(!(_loc2_ && this))
         {
            addr69:
            §§push(§§pop() * param1);
         }
         return §§pop().§33§(§§pop(),§§pop());
      }
   }
}
