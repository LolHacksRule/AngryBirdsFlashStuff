package §'B§
{
   public class §5!z§
   {
       
      
      public function §5!z§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
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
            if(_loc6_ || param2)
            {
               addr38:
               §§push(§§pop() * Math.cos(param1 / param4 * (Math.PI / 2)));
               if(_loc6_ || §5!z§)
               {
                  §§push(param3);
                  if(!_loc5_)
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
         §§goto(addr38);
      }
      
      public static function easeOut(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(param3);
         if(!_loc6_)
         {
            §§push(§§pop() * Math.sin(param1 / param4 * (Math.PI / 2)));
            if(!(_loc6_ && param2))
            {
               return §§pop() + param2;
            }
         }
      }
      
      public static function easeInOut(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(param3);
         if(_loc6_ || param3)
         {
            §§push(-§§pop());
            if(!(_loc5_ && §5!z§))
            {
               §§push(§§pop() / 2);
               if(_loc6_ || param2)
               {
                  §§push(Math.cos(Math.PI * param1 / param4) - 1);
                  if(!_loc5_)
                  {
                     §§goto(addr83);
                  }
                  §§push(§§pop() + §§pop());
               }
            }
            addr83:
            §§push(§§pop() * §§pop());
            if(_loc6_ || param1)
            {
               addr81:
               return param2;
            }
         }
         §§goto(addr81);
      }
   }
}
