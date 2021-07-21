package §'B§
{
   public class §-"&§
   {
       
      
      public function §-"&§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
      }
      
      public static function §?!6§(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(param3);
         if(_loc6_)
         {
            §§push(param1);
            if(!(_loc5_ && param1))
            {
               §§push(§§pop() * §§pop());
               if(_loc6_)
               {
                  §§push(param4);
                  if(_loc6_)
                  {
                     §§goto(addr59);
                  }
                  §§push(§§pop() + §§pop());
               }
               §§goto(addr59);
            }
            addr59:
            §§push(§§pop() / §§pop());
            if(_loc6_)
            {
               addr57:
               return param2;
            }
         }
         §§goto(addr57);
      }
      
      public static function easeIn(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(param3);
         if(!(_loc5_ && param2))
         {
            §§push(param1);
            if(_loc6_ || param1)
            {
               §§push(§§pop() * §§pop());
               if(!_loc5_)
               {
                  addr46:
                  §§push(param4);
                  if(!_loc5_)
                  {
                     §§push(§§pop() / §§pop());
                     if(_loc6_ || §-"&§)
                     {
                        addr68:
                        §§push(§§pop() + param2);
                     }
                  }
                  §§goto(addr68);
               }
               return §§pop();
            }
            §§goto(addr68);
         }
         §§goto(addr46);
      }
      
      public static function easeOut(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(param3);
         if(!_loc6_)
         {
            §§push(param1);
            if(!_loc6_)
            {
               §§push(§§pop() * §§pop());
               if(!(_loc6_ && param2))
               {
                  addr50:
                  §§push(param4);
                  if(!_loc6_)
                  {
                     §§push(§§pop() / §§pop());
                     if(!_loc6_)
                     {
                        addr57:
                        §§push(§§pop() + param2);
                     }
                  }
                  §§goto(addr57);
               }
               return §§pop();
            }
            §§goto(addr57);
         }
         §§goto(addr50);
      }
      
      public static function easeInOut(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(param3);
         if(!(_loc5_ && param2))
         {
            §§push(param1);
            if(!_loc5_)
            {
               §§push(§§pop() * §§pop());
               if(!_loc5_)
               {
                  §§push(param4);
                  if(_loc6_)
                  {
                     §§goto(addr59);
                  }
                  addr59:
                  §§push(§§pop() / §§pop());
                  if(!_loc5_)
                  {
                     addr57:
                     §§push(param2);
                  }
                  return §§pop();
                  §§push(§§pop() + §§pop());
               }
               §§goto(addr57);
            }
         }
         §§goto(addr59);
      }
   }
}
