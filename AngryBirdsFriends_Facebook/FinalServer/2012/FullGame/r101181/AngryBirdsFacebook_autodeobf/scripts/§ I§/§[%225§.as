package § I§
{
   public class §["5§
   {
       
      
      public function §["5§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
      }
      
      public static function easeIn(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(param3);
         if(_loc6_ || param1)
         {
            §§push(-§§pop());
            if(!(_loc5_ && param2))
            {
               §§push(§§pop() * Math.cos(param1 / param4 * (Math.PI / 2)));
               if(!(_loc5_ && param2))
               {
                  addr71:
                  §§push(param3);
                  if(_loc6_ || param2)
                  {
                     §§push(§§pop() + §§pop());
                     if(!_loc5_)
                     {
                        addr83:
                        return §§pop() + param2;
                     }
                  }
                  §§goto(addr83);
               }
            }
            §§goto(addr83);
         }
         §§goto(addr71);
      }
      
      public static function easeOut(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(param3);
         if(_loc5_ || param3)
         {
            §§push(§§pop() * Math.sin(param1 / param4 * (Math.PI / 2)));
            if(!(_loc6_ && param1))
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
            if(_loc6_ || param2)
            {
               §§push(§§pop() / 2);
               if(!(_loc5_ && param1))
               {
                  §§push(Math.cos(Math.PI * param1 / param4) - 1);
                  if(!_loc5_)
                  {
                     §§goto(addr83);
                  }
                  §§push(§§pop() + §§pop());
               }
               addr83:
               §§push(§§pop() * §§pop());
               if(!(_loc5_ && param3))
               {
                  addr81:
                  return param2;
               }
            }
         }
         §§goto(addr81);
      }
   }
}
