package §%a§
{
   public class §0h§
   {
       
      
      public function §0h§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      public static function §"!R§(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(param3);
         if(!(_loc6_ && param3))
         {
            §§push(param1);
            if(!(_loc6_ && §0h§))
            {
               §§push(§§pop() * §§pop());
               if(_loc5_)
               {
                  addr55:
                  §§push(param4);
                  if(!_loc6_)
                  {
                     §§goto(addr58);
                  }
               }
               §§goto(addr62);
            }
            addr58:
            §§push(§§pop() / §§pop());
            if(!_loc6_)
            {
               addr62:
               return §§pop() + param2;
            }
         }
         §§goto(addr55);
      }
      
      public static function easeIn(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(param3);
         if(!_loc6_)
         {
            §§push(param1);
            if(_loc5_ || param1)
            {
               §§push(§§pop() * §§pop());
               if(!(_loc6_ && param2))
               {
                  §§push(param4);
                  if(_loc5_)
                  {
                     §§push(§§pop() / §§pop());
                     if(_loc6_)
                     {
                     }
                     §§goto(addr63);
                  }
                  addr62:
                  addr63:
                  return §§pop();
                  §§push(§§pop() + §§pop());
               }
               §§push(param2);
            }
            §§goto(addr62);
         }
         §§goto(addr63);
      }
      
      public static function easeOut(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(param3);
         if(!(_loc5_ && §0h§))
         {
            §§push(param1);
            if(_loc6_)
            {
               §§push(§§pop() * §§pop());
               if(!_loc5_)
               {
                  §§push(param4);
                  if(_loc6_ || param1)
                  {
                     §§goto(addr64);
                  }
                  addr64:
                  §§push(§§pop() / §§pop());
                  if(!_loc5_)
                  {
                     §§push(param2);
                  }
                  return §§pop();
                  §§push(§§pop() + §§pop());
               }
            }
         }
         §§goto(addr64);
      }
      
      public static function easeInOut(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(param3);
         if(!(_loc5_ && §0h§))
         {
            §§push(param1);
            if(!(_loc5_ && param1))
            {
               §§push(§§pop() * §§pop());
               if(_loc6_)
               {
                  §§push(param4);
                  if(_loc6_ || param2)
                  {
                     §§goto(addr74);
                  }
                  addr74:
                  §§push(§§pop() / §§pop());
                  if(!(_loc5_ && param2))
                  {
                     §§push(param2);
                  }
                  return §§pop();
                  §§push(§§pop() + §§pop());
               }
            }
         }
         §§goto(addr74);
      }
   }
}
