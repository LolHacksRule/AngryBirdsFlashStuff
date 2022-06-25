package §%K§
{
   public class §1e§
   {
       
      
      public function §1e§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            super();
         }
      }
      
      public static function §8!8§(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(param3);
         if(_loc5_ || param3)
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
                     §§push(§§pop() / §§pop());
                     if(!(_loc6_ && param1))
                     {
                        addr51:
                        return §§pop() + param2;
                     }
                  }
               }
            }
         }
         §§goto(addr51);
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
               if(_loc6_)
               {
                  addr36:
                  §§push(param4);
                  if(!_loc5_)
                  {
                     §§goto(addr44);
                  }
                  §§push(§§pop() + §§pop());
               }
               §§goto(addr44);
            }
            addr44:
            §§push(§§pop() / §§pop());
            if(!_loc5_)
            {
               return param2;
            }
         }
         §§goto(addr36);
      }
      
      public static function easeOut(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(param3);
         if(_loc6_ || §1e§)
         {
            §§push(param1);
            if(_loc6_ || §1e§)
            {
               §§push(§§pop() * §§pop());
               if(!_loc5_)
               {
                  §§push(param4);
                  if(!_loc5_)
                  {
                     §§goto(addr54);
                  }
                  §§push(§§pop() + §§pop());
               }
               §§goto(addr54);
            }
            addr54:
            §§push(§§pop() / §§pop());
            if(!_loc5_)
            {
               addr52:
               return param2;
            }
         }
         §§goto(addr52);
      }
      
      public static function easeInOut(param1:Number, param2:Number, param3:Number, param4:Number) : Number
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
               if(_loc5_ || §1e§)
               {
                  §§push(param4);
                  if(_loc5_)
                  {
                     §§push(§§pop() / §§pop());
                     if(!_loc6_)
                     {
                        addr47:
                        §§push(§§pop() + param2);
                     }
                  }
                  §§goto(addr47);
               }
               return §§pop();
            }
         }
         §§goto(addr47);
      }
   }
}
