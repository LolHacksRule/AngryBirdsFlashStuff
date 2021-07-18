package §&v§
{
   import §"y§.b2PolygonShape;
   import §"y§.b2Shape;
   
   public class §4!a§ extends §each §
   {
       
      
      public function §4!a§(param1:Number, param2:Number)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super(param1,param2);
         }
      }
      
      override public function getB2Shape(param1:Number = 1.0) : b2Shape
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(b2PolygonShape);
         §§push(§"!j§() / 2);
         if(!_loc3_)
         {
            §§push(param1);
            if(!(_loc3_ && param1))
            {
               addr42:
               §§push(§§pop() * §§pop());
               §§push(§?!L§() / 2);
               if(_loc2_)
               {
                  §§push(§§pop() * param1);
               }
            }
            return §§pop().§^C§(§§pop(),§§pop());
         }
         §§goto(addr42);
      }
   }
}
