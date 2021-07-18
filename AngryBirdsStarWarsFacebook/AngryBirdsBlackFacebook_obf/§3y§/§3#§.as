package §3y§
{
   public class §3#§
   {
       
      
      public function §3#§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      public static function §%"K§(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(param3);
         if(_loc5_ || §3#§)
         {
            §§push(param1);
            if(_loc5_)
            {
               §§push(§§pop() * §§pop());
               if(_loc5_ || param1)
               {
                  §§push(param4);
                  if(!(_loc6_ && param1))
                  {
                     §§push(§§pop() / §§pop());
                     if(_loc5_)
                     {
                        addr67:
                        §§push(§§pop() + param2);
                     }
                  }
                  §§goto(addr67);
               }
               return §§pop();
            }
         }
         §§goto(addr67);
      }
      
      public static function easeIn(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(param3);
         if(!(_loc6_ && param1))
         {
            §§push(param1);
            if(!_loc6_)
            {
               §§push(§§pop() * §§pop());
               if(_loc5_)
               {
                  §§push(param4);
                  if(!_loc6_)
                  {
                     §§goto(addr43);
                  }
               }
               §§goto(addr62);
            }
            addr43:
            §§push(§§pop() / §§pop());
            if(!(_loc6_ && param1))
            {
               addr62:
               return §§pop() + param2;
            }
         }
         §§goto(addr62);
      }
      
      public static function easeOut(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(param3);
         if(_loc5_)
         {
            §§push(param1);
            if(_loc5_)
            {
               §§push(§§pop() * §§pop());
               if(_loc5_ || param2)
               {
                  addr40:
                  §§push(param4);
                  if(!(_loc6_ && param3))
                  {
                     §§goto(addr48);
                  }
               }
               §§goto(addr67);
            }
            addr48:
            §§push(§§pop() / §§pop());
            if(!(_loc6_ && param2))
            {
               addr67:
               return §§pop() + param2;
            }
         }
         §§goto(addr40);
      }
      
      public static function easeInOut(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(param3);
         if(!(_loc5_ && param1))
         {
            §§push(param1);
            if(!(_loc5_ && param3))
            {
               §§push(§§pop() * §§pop());
               if(!(_loc5_ && param2))
               {
                  §§push(param4);
                  if(_loc6_)
                  {
                     §§push(§§pop() / §§pop());
                     if(_loc5_)
                     {
                     }
                     §§goto(addr69);
                  }
                  addr68:
                  addr69:
                  return §§pop();
                  §§push(§§pop() + §§pop());
               }
               §§push(param2);
            }
            §§goto(addr68);
         }
         §§goto(addr69);
      }
   }
}
