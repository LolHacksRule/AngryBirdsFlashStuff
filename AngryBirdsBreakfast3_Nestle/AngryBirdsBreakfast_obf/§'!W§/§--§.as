package §'!W§
{
   public class §--§
   {
       
      
      public function §--§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      public static function §1!=§(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(param3);
         if(!_loc6_)
         {
            §§push(param1);
            if(_loc5_)
            {
               §§push(§§pop() * §§pop());
               if(!(_loc6_ && §--§))
               {
                  §§push(param4);
                  if(!(_loc6_ && §--§))
                  {
                     §§push(§§pop() / §§pop());
                     if(!_loc6_)
                     {
                        addr62:
                        §§push(§§pop() + param2);
                     }
                  }
                  §§goto(addr62);
               }
               return §§pop();
            }
         }
         §§goto(addr62);
      }
      
      public static function easeIn(param1:Number, param2:Number, param3:Number, param4:Number) : Number
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
               if(_loc6_)
               {
                  §§push(param4);
                  if(_loc6_ || param2)
                  {
                     §§goto(addr69);
                  }
               }
               §§goto(addr69);
            }
            §§push(§§pop() + §§pop());
         }
         addr69:
         §§push(§§pop() / §§pop());
         if(!(_loc5_ && param3))
         {
            return param2;
         }
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
               if(!_loc6_)
               {
                  addr35:
                  §§push(param4);
                  if(!(_loc6_ && §--§))
                  {
                     §§goto(addr43);
                  }
               }
               §§goto(addr62);
            }
            addr43:
            §§push(§§pop() / §§pop());
            if(!(_loc6_ && param2))
            {
               addr62:
               return §§pop() + param2;
            }
         }
         §§goto(addr35);
      }
      
      public static function easeInOut(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(param3);
         if(_loc6_)
         {
            §§push(param1);
            if(_loc6_)
            {
               §§push(§§pop() * §§pop());
               if(!_loc5_)
               {
                  §§push(param4);
                  if(!(_loc5_ && §--§))
                  {
                     §§goto(addr44);
                  }
               }
               §§goto(addr63);
            }
            addr44:
            §§push(§§pop() / §§pop());
            if(!(_loc5_ && param2))
            {
               addr63:
               return §§pop() + param2;
            }
         }
         §§goto(addr63);
      }
   }
}
