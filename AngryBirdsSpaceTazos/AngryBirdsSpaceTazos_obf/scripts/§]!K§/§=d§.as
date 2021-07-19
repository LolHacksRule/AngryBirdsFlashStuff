package §]!K§
{
   public class §=d§
   {
       
      
      public function §=d§()
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
         if(!_loc5_)
         {
            §§push(-§§pop());
            if(!(_loc5_ && param1))
            {
               §§push(§§pop() * Math.cos(param1 / param4 * (Math.PI / 2)));
               if(!(_loc5_ && §=d§))
               {
                  addr56:
                  §§push(param3);
                  if(!(_loc5_ && param1))
                  {
                     §§goto(addr84);
                  }
                  §§push(§§pop() + §§pop());
               }
               addr84:
               §§push(§§pop() + §§pop());
               if(!(_loc5_ && §=d§))
               {
                  addr82:
                  return param2;
               }
            }
            §§goto(addr82);
         }
         §§goto(addr56);
      }
      
      public static function easeOut(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(param3);
         if(_loc6_)
         {
            §§push(§§pop() * Math.sin(param1 / param4 * (Math.PI / 2)));
            if(_loc6_ || param3)
            {
               addr58:
               return §§pop() + param2;
            }
         }
         §§goto(addr58);
      }
      
      public static function easeInOut(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(param3);
         if(!(_loc6_ && param1))
         {
            §§push(-§§pop());
            if(!(_loc6_ && param3))
            {
               §§goto(addr42);
            }
            §§goto(addr46);
         }
         addr42:
         §§push(§§pop() / 2);
         if(!_loc6_)
         {
            addr46:
            §§push(Math.cos(Math.PI * param1 / param4) - 1);
            if(_loc5_)
            {
               §§goto(addr77);
            }
            §§push(§§pop() + §§pop());
         }
         addr77:
         §§push(§§pop() * §§pop());
         if(_loc5_ || param3)
         {
            return param2;
         }
      }
   }
}
