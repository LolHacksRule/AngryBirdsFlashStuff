package § !t§
{
   public class §!!P§
   {
       
      
      public function §!!P§()
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
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(param3);
         if(_loc5_ || param2)
         {
            §§push(-§§pop());
            if(_loc5_)
            {
               §§push(§§pop() * Math.cos(param1 / param4 * (Math.PI / 2)));
               if(_loc5_ || param3)
               {
                  addr65:
                  §§push(param3);
                  if(!(_loc6_ && param1))
                  {
                     §§goto(addr83);
                  }
                  §§push(§§pop() + §§pop());
               }
            }
            addr83:
            §§push(§§pop() + §§pop());
            if(!(_loc6_ && param1))
            {
               return param2;
            }
         }
         §§goto(addr65);
      }
      
      public static function easeOut(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(param3);
         if(_loc5_)
         {
            §§push(§§pop() * Math.sin(param1 / param4 * (Math.PI / 2)));
            if(_loc5_)
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
         if(!_loc6_)
         {
            §§push(-§§pop());
            if(!(_loc6_ && param2))
            {
               §§push(§§pop() / 2);
               if(_loc5_ || param1)
               {
                  §§push(Math.cos(Math.PI * param1 / param4) - 1);
                  if(!(_loc6_ && param2))
                  {
                     §§goto(addr77);
                  }
                  §§push(§§pop() + §§pop());
               }
            }
            addr77:
            §§push(§§pop() * §§pop());
            if(!_loc6_)
            {
               addr75:
               return param2;
            }
         }
         §§goto(addr75);
      }
   }
}
