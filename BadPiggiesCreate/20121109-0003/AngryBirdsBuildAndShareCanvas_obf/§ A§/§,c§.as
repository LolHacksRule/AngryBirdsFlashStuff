package § A§
{
   public class §,c§
   {
       
      
      public function §,c§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super();
         }
      }
      
      public static function easeIn(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(param3);
         if(_loc5_)
         {
            §§push(-§§pop());
            if(_loc5_)
            {
               §§push(§§pop() * Math.cos(param1 / param4 * (Math.PI / 2)));
               if(_loc5_ || param2)
               {
                  §§push(param3);
                  if(_loc5_ || §,c§)
                  {
                     §§goto(addr73);
                  }
                  §§push(§§pop() + §§pop());
               }
               §§goto(addr71);
            }
            addr73:
            §§push(§§pop() + §§pop());
            if(!_loc6_)
            {
               addr71:
               return param2;
            }
         }
         §§goto(addr71);
      }
      
      public static function easeOut(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(param3);
         if(!(_loc6_ && param1))
         {
            §§push(§§pop() * Math.sin(param1 / param4 * (Math.PI / 2)));
            if(_loc5_ || param1)
            {
               addr62:
               return §§pop() + param2;
            }
         }
         §§goto(addr62);
      }
      
      public static function easeInOut(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(param3);
         if(!(_loc5_ && param3))
         {
            §§push(-§§pop());
            if(!_loc5_)
            {
               §§push(§§pop() / 2);
               if(_loc6_)
               {
                  §§push(Math.cos(Math.PI * param1 / param4) - 1);
                  if(!_loc5_)
                  {
                     §§goto(addr73);
                  }
                  addr73:
                  §§push(§§pop() * §§pop());
                  if(!(_loc5_ && param3))
                  {
                     addr71:
                     §§push(param2);
                  }
                  return §§pop();
                  §§push(§§pop() + §§pop());
               }
               §§goto(addr73);
            }
            §§goto(addr71);
         }
         §§goto(addr73);
      }
   }
}
