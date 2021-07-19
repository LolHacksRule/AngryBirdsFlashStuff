package §8!O§
{
   public class §^P§
   {
       
      
      public function §^P§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            super();
         }
      }
      
      public static function easeIn(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(param3);
         if(!_loc5_)
         {
            §§push(-§§pop());
            if(!(_loc5_ && param1))
            {
               §§push(§§pop() * Math.cos(param1 / param4 * (Math.PI / 2)));
               if(_loc6_ || param2)
               {
                  §§push(param3);
                  if(_loc6_ || §^P§)
                  {
                     §§push(§§pop() + §§pop());
                     if(!(_loc5_ && param2))
                     {
                        addr83:
                        return §§pop() + param2;
                     }
                  }
                  §§goto(addr83);
               }
            }
         }
         §§goto(addr83);
      }
      
      public static function easeOut(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(param3);
         if(!(_loc6_ && param3))
         {
            §§push(§§pop() * Math.sin(param1 / param4 * (Math.PI / 2)));
            if(!(_loc6_ && param3))
            {
               return §§pop() + param2;
            }
         }
      }
      
      public static function easeInOut(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(param3);
         if(_loc5_ || param3)
         {
            §§push(-§§pop());
            if(!_loc6_)
            {
               §§push(§§pop() / 2);
               if(!_loc6_)
               {
                  §§push(Math.cos(Math.PI * param1 / param4) - 1);
                  if(_loc5_ || param3)
                  {
                     §§goto(addr72);
                  }
                  addr72:
                  §§push(§§pop() * §§pop());
                  if(!_loc6_)
                  {
                     addr70:
                     §§push(param2);
                  }
                  return §§pop();
                  §§push(§§pop() + §§pop());
               }
            }
            §§goto(addr70);
         }
         §§goto(addr72);
      }
   }
}
