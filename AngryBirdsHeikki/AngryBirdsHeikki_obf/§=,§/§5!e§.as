package §=,§
{
   public class §5!e§
   {
       
      
      public function §5!e§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      public static function easeIn(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(param3);
         if(!(_loc5_ && param1))
         {
            §§push(-§§pop());
            if(_loc6_)
            {
               §§push(§§pop() * Math.cos(param1 / param4 * (Math.PI / 2)));
               if(_loc6_)
               {
                  addr51:
                  §§push(param3);
                  if(_loc6_ || §5!e§)
                  {
                     §§goto(addr74);
                  }
                  addr74:
                  §§push(§§pop() + §§pop());
                  if(_loc6_)
                  {
                     addr72:
                     §§push(param2);
                  }
                  return §§pop();
                  §§push(§§pop() + §§pop());
               }
               §§goto(addr72);
            }
            §§goto(addr74);
         }
         §§goto(addr51);
      }
      
      public static function easeOut(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(param3);
         if(!(_loc6_ && §5!e§))
         {
            §§push(§§pop() * Math.sin(param1 / param4 * (Math.PI / 2)));
            if(!(_loc6_ && param3))
            {
               addr62:
               return §§pop() + param2;
            }
         }
         §§goto(addr62);
      }
      
      public static function easeInOut(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(param3);
         if(_loc5_)
         {
            §§push(-§§pop());
            if(_loc5_ || param2)
            {
               §§push(§§pop() / 2);
               if(!(_loc6_ && §5!e§))
               {
                  addr46:
                  §§push(Math.cos(Math.PI * param1 / param4) - 1);
                  if(!_loc6_)
                  {
                     §§push(§§pop() * §§pop());
                     if(!_loc6_)
                     {
                        addr71:
                        return §§pop() + param2;
                     }
                  }
               }
               §§goto(addr71);
            }
         }
         §§goto(addr46);
      }
   }
}
