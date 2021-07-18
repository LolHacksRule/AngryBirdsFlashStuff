package §=,§
{
   public class §2!D§
   {
       
      
      public function §2!D§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super();
         }
      }
      
      public static function §,!@§(param1:Number, param2:Number, param3:Number, param4:Number) : Number
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
               if(_loc6_)
               {
                  addr41:
                  §§push(param4);
                  if(_loc6_ || param2)
                  {
                     §§goto(addr49);
                  }
               }
               §§goto(addr68);
            }
            addr49:
            §§push(§§pop() / §§pop());
            if(!(_loc5_ && param3))
            {
               addr68:
               return §§pop() + param2;
            }
         }
         §§goto(addr41);
      }
      
      public static function easeIn(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(param3);
         if(!(_loc5_ && param3))
         {
            §§push(param1);
            if(!_loc5_)
            {
               §§push(§§pop() * §§pop());
               if(_loc6_)
               {
                  addr51:
                  §§push(param4);
                  if(!_loc5_)
                  {
                     §§push(§§pop() / §§pop());
                     if(!_loc5_)
                     {
                        addr58:
                        §§push(§§pop() + param2);
                     }
                  }
                  §§goto(addr58);
               }
               return §§pop();
            }
            §§goto(addr58);
         }
         §§goto(addr51);
      }
      
      public static function easeOut(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(param3);
         if(!(_loc5_ && §2!D§))
         {
            §§push(param1);
            if(!_loc5_)
            {
               §§push(§§pop() * §§pop());
               if(_loc6_ || param3)
               {
                  §§push(param4);
                  if(_loc6_ || param1)
                  {
                     §§push(§§pop() / §§pop());
                     if(_loc6_ || param1)
                     {
                        addr73:
                        §§push(§§pop() + param2);
                     }
                  }
                  §§goto(addr73);
               }
               return §§pop();
            }
         }
         §§goto(addr73);
      }
      
      public static function easeInOut(param1:Number, param2:Number, param3:Number, param4:Number) : Number
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
                  addr40:
                  §§push(param4);
                  if(!(_loc6_ && §2!D§))
                  {
                     §§goto(addr68);
                  }
                  §§push(§§pop() + §§pop());
               }
               §§goto(addr68);
            }
            addr68:
            §§push(§§pop() / §§pop());
            if(!(_loc6_ && param2))
            {
               return param2;
            }
         }
         §§goto(addr40);
      }
   }
}
