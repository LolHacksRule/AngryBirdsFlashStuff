package §'!W§
{
   public class §5!q§
   {
       
      
      public function §5!q§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      public static function easeIn(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(param3);
         if(_loc6_ || param2)
         {
            §§push(-§§pop());
            if(_loc6_)
            {
               §§push(§§pop() * Math.cos(param1 / param4 * (Math.PI / 2)));
               if(!_loc5_)
               {
                  §§push(param3);
                  if(_loc6_ || param3)
                  {
                     §§goto(addr79);
                  }
                  §§push(§§pop() + §§pop());
               }
            }
         }
         addr79:
         §§push(§§pop() + §§pop());
         if(_loc6_ || param2)
         {
            return param2;
         }
      }
      
      public static function easeOut(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(param3);
         if(!(_loc6_ && §5!q§))
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
         if(_loc5_ || param2)
         {
            §§push(-§§pop());
            if(_loc5_)
            {
               §§push(§§pop() / 2);
               if(!_loc6_)
               {
                  §§push(Math.cos(Math.PI * param1 / param4) - 1);
                  if(!_loc6_)
                  {
                     §§goto(addr72);
                  }
                  addr72:
                  §§push(§§pop() * §§pop());
                  if(_loc5_ || param1)
                  {
                     addr70:
                     §§push(param2);
                  }
                  return §§pop();
                  §§push(§§pop() + §§pop());
               }
               §§goto(addr70);
            }
         }
         §§goto(addr72);
      }
   }
}
