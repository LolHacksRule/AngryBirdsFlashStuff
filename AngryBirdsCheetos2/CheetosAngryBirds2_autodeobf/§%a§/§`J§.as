package §%a§
{
   public class §`J§
   {
       
      
      public function §`J§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
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
            if(_loc6_)
            {
               §§push(§§pop() * Math.cos(param1 / param4 * (Math.PI / 2)));
               if(_loc6_)
               {
                  §§push(param3);
                  if(_loc6_ || param1)
                  {
                     §§goto(addr69);
                  }
                  §§push(§§pop() + §§pop());
               }
               addr69:
               §§push(§§pop() + §§pop());
               if(!_loc5_)
               {
                  addr67:
                  return param2;
               }
            }
         }
         §§goto(addr67);
      }
      
      public static function easeOut(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(param3);
         if(_loc5_)
         {
            §§push(§§pop() * Math.sin(param1 / param4 * (Math.PI / 2)));
            if(!_loc6_)
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
         if(_loc5_ || param1)
         {
            §§push(-§§pop());
            if(!_loc6_)
            {
               §§push(§§pop() / 2);
               if(_loc6_)
               {
               }
               addr67:
               return §§pop() + param2;
               addr65:
            }
            §§push(Math.cos(Math.PI * param1 / param4) - 1);
            if(_loc5_)
            {
               §§push(§§pop() * §§pop());
               if(!_loc6_)
               {
                  §§goto(addr65);
               }
            }
         }
         §§goto(addr67);
      }
   }
}
