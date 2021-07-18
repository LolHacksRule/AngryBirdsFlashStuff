package §]!K§
{
   public class §@!1§
   {
       
      
      public function §@!1§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      public static function §4!B§(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(param3);
         if(!(_loc5_ && §@!1§))
         {
            §§push(param1);
            if(_loc6_ || param2)
            {
               §§push(§§pop() * §§pop());
               if(!_loc5_)
               {
                  §§push(param4);
                  if(!_loc5_)
                  {
                     §§push(§§pop() / §§pop());
                     if(_loc5_)
                     {
                     }
                     §§goto(addr64);
                  }
                  addr63:
                  addr64:
                  return §§pop();
                  §§push(§§pop() + §§pop());
               }
               §§push(param2);
            }
            §§goto(addr63);
         }
         §§goto(addr64);
      }
      
      public static function easeIn(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(param3);
         if(_loc5_)
         {
            §§push(param1);
            if(!(_loc6_ && param3))
            {
               §§push(§§pop() * §§pop());
               if(!_loc6_)
               {
                  §§push(param4);
                  if(_loc5_ || param2)
                  {
                     §§goto(addr63);
                  }
                  §§push(§§pop() + §§pop());
               }
               §§goto(addr63);
            }
            addr63:
            §§push(§§pop() / §§pop());
            if(!_loc6_)
            {
               addr61:
               return param2;
            }
         }
         §§goto(addr61);
      }
      
      public static function easeOut(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(param3);
         if(!_loc5_)
         {
            §§push(param1);
            if(_loc6_)
            {
               §§push(§§pop() * §§pop());
               if(!(_loc5_ && param2))
               {
                  §§push(param4);
                  if(!_loc5_)
                  {
                     §§goto(addr59);
                  }
               }
               §§goto(addr59);
            }
            §§push(§§pop() + §§pop());
         }
         addr59:
         §§push(§§pop() / §§pop());
         if(!_loc5_)
         {
            return param2;
         }
      }
      
      public static function easeInOut(param1:Number, param2:Number, param3:Number, param4:Number) : Number
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
               if(!_loc6_)
               {
                  addr40:
                  §§push(param4);
                  if(_loc5_ || param2)
                  {
                     §§push(§§pop() / §§pop());
                     if(_loc5_)
                     {
                        addr62:
                        return §§pop() + param2;
                     }
                  }
               }
            }
            §§goto(addr62);
         }
         §§goto(addr40);
      }
   }
}
