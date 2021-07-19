package § !t§
{
   public class §7h§
   {
       
      
      public function §7h§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      public static function §"=§(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(param3);
         if(!_loc6_)
         {
            §§push(param1);
            if(!(_loc6_ && §7h§))
            {
               §§push(§§pop() * §§pop());
               if(!(_loc6_ && param3))
               {
                  §§push(param4);
                  if(_loc5_)
                  {
                     §§goto(addr58);
                  }
                  §§push(§§pop() + §§pop());
               }
               §§goto(addr58);
            }
            addr58:
            §§push(§§pop() / §§pop());
            if(!(_loc6_ && param3))
            {
               addr56:
               return param2;
            }
         }
         §§goto(addr56);
      }
      
      public static function easeIn(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(param3);
         if(_loc6_ || param2)
         {
            §§push(param1);
            if(_loc6_ || §7h§)
            {
               §§push(§§pop() * §§pop());
               if(!_loc5_)
               {
                  §§push(param4);
                  if(!_loc5_)
                  {
                     §§push(§§pop() / §§pop());
                     if(_loc6_ || param1)
                     {
                        addr67:
                        return §§pop() + param2;
                     }
                  }
               }
            }
         }
         §§goto(addr67);
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
               if(_loc5_)
               {
                  §§push(param4);
                  if(_loc5_)
                  {
                     §§goto(addr33);
                  }
               }
               §§goto(addr33);
            }
            §§push(§§pop() + §§pop());
         }
         addr33:
         §§push(§§pop() / §§pop());
         if(!_loc6_)
         {
            return param2;
         }
      }
      
      public static function easeInOut(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(param3);
         if(_loc6_)
         {
            §§push(param1);
            if(!(_loc5_ && param2))
            {
               §§push(§§pop() * §§pop());
               if(_loc6_)
               {
                  addr51:
                  §§push(param4);
                  if(_loc6_ || param2)
                  {
                     §§push(§§pop() / §§pop());
                     if(_loc6_ || param2)
                     {
                        addr68:
                        return §§pop() + param2;
                     }
                  }
               }
            }
            §§goto(addr68);
         }
         §§goto(addr51);
      }
   }
}
