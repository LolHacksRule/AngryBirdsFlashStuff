package §8!O§
{
   public class §+!T§
   {
       
      
      public function §+!T§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      public static function §]!K§(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(param3);
         if(_loc6_ || param1)
         {
            §§push(param1);
            if(!_loc5_)
            {
               §§push(§§pop() * §§pop());
               if(!(_loc5_ && §+!T§))
               {
                  §§push(param4);
                  if(_loc6_ || param3)
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
      
      public static function easeIn(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(param3);
         if(_loc6_)
         {
            §§push(param1);
            if(!_loc5_)
            {
               §§push(§§pop() * §§pop());
               if(_loc6_ || param2)
               {
                  §§push(param4);
                  if(!(_loc5_ && param2))
                  {
                     §§goto(addr69);
                  }
                  addr69:
                  §§push(§§pop() / §§pop());
                  if(!(_loc5_ && param3))
                  {
                     addr67:
                     §§push(param2);
                  }
                  return §§pop();
                  §§push(§§pop() + §§pop());
               }
               §§goto(addr67);
            }
         }
         §§goto(addr69);
      }
      
      public static function easeOut(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(param3);
         if(_loc6_)
         {
            §§push(param1);
            if(!_loc5_)
            {
               §§push(§§pop() * §§pop());
               if(!_loc5_)
               {
                  §§push(param4);
                  if(!_loc5_)
                  {
                     §§goto(addr39);
                  }
               }
               §§goto(addr58);
            }
            addr39:
            §§push(§§pop() / §§pop());
            if(_loc6_ || §+!T§)
            {
               addr58:
               return §§pop() + param2;
            }
         }
         §§goto(addr58);
      }
      
      public static function easeInOut(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(param3);
         if(_loc6_ || param2)
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
                     §§goto(addr64);
                  }
                  §§push(§§pop() + §§pop());
               }
               §§goto(addr64);
            }
            addr64:
            §§push(§§pop() / §§pop());
            if(_loc6_ || param1)
            {
               addr62:
               return param2;
            }
         }
         §§goto(addr62);
      }
   }
}
