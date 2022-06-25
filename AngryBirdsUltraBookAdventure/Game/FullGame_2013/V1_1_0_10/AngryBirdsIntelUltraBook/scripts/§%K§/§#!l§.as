package §%K§
{
   public class §#!l§
   {
       
      
      public function §#!l§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super();
         }
      }
      
      public static function easeIn(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(param3);
         if(!(_loc5_ && §#!l§))
         {
            §§push(-§§pop());
            if(_loc6_ || param3)
            {
               §§push(§§pop() * Math.cos(param1 / param4 * (Math.PI / 2)));
               if(_loc6_)
               {
                  §§push(param3);
                  if(!_loc5_)
                  {
                     §§push(§§pop() + §§pop());
                     if(_loc6_ || param3)
                     {
                        addr78:
                        return §§pop() + param2;
                     }
                  }
                  §§goto(addr78);
               }
            }
         }
         §§goto(addr78);
      }
      
      public static function easeOut(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(param3);
         if(_loc6_)
         {
            §§push(§§pop() * Math.sin(param1 / param4 * (Math.PI / 2)));
            if(_loc6_)
            {
               addr43:
               return §§pop() + param2;
            }
         }
         §§goto(addr43);
      }
      
      public static function easeInOut(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(param3);
         if(_loc6_)
         {
            §§push(-§§pop());
            if(_loc6_)
            {
               §§push(§§pop() / 2);
               if(!_loc5_)
               {
                  addr37:
                  §§push(Math.cos(Math.PI * param1 / param4) - 1);
                  if(_loc6_)
                  {
                     §§push(§§pop() * §§pop());
                     if(!_loc5_)
                     {
                        addr52:
                        return §§pop() + param2;
                     }
                  }
                  §§goto(addr52);
               }
            }
            §§goto(addr52);
         }
         §§goto(addr37);
      }
   }
}
