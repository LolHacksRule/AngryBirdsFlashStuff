package §,!@§
{
   public class §!!2§
   {
       
      
      public function §!!2§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      public static function §[6§(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(param3);
         if(_loc6_ || param2)
         {
            §§push(param1);
            if(_loc6_)
            {
               §§push(§§pop() * §§pop());
               if(!_loc5_)
               {
                  §§push(param4);
                  if(!(_loc5_ && §!!2§))
                  {
                     §§push(§§pop() / §§pop());
                     if(_loc6_ || param1)
                     {
                        addr58:
                        §§push(§§pop() + param2);
                     }
                  }
                  §§goto(addr58);
               }
               return §§pop();
            }
         }
         §§goto(addr58);
      }
      
      public static function easeIn(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(param3);
         if(!(_loc6_ && param2))
         {
            §§push(param1);
            if(_loc5_)
            {
               §§push(§§pop() * §§pop());
               if(!(_loc6_ && param1))
               {
                  addr45:
                  §§push(param4);
                  if(_loc5_)
                  {
                     §§push(§§pop() / §§pop());
                     if(_loc5_ || param1)
                     {
                        addr57:
                        §§push(§§pop() + param2);
                     }
                     return §§pop();
                  }
               }
            }
            §§goto(addr57);
         }
         §§goto(addr45);
      }
      
      public static function easeOut(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(param3);
         if(!(_loc6_ && param3))
         {
            §§push(param1);
            if(_loc5_ || param1)
            {
               §§push(§§pop() * §§pop());
               if(!(_loc6_ && param3))
               {
                  addr60:
                  §§push(param4);
                  if(_loc5_ || param3)
                  {
                     §§goto(addr78);
                  }
                  §§push(§§pop() + §§pop());
               }
               §§goto(addr78);
            }
            addr78:
            §§push(§§pop() / §§pop());
            if(!(_loc6_ && param2))
            {
               §§push(param2);
            }
            return §§pop();
         }
         §§goto(addr60);
      }
      
      public static function easeInOut(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(param3);
         if(_loc6_ || param3)
         {
            §§push(param1);
            if(_loc6_)
            {
               §§push(§§pop() * §§pop());
               if(!(_loc5_ && param2))
               {
                  §§push(param4);
                  if(_loc6_ || param1)
                  {
                     §§goto(addr74);
                  }
                  addr74:
                  §§push(§§pop() / §§pop());
                  if(_loc6_ || param1)
                  {
                     addr72:
                     §§push(param2);
                  }
                  return §§pop();
                  §§push(§§pop() + §§pop());
               }
               §§goto(addr72);
            }
         }
         §§goto(addr74);
      }
   }
}
