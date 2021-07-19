package § A§
{
   public class §&"@§
   {
       
      
      public function §&"@§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super();
         }
      }
      
      public static function §4l§(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(param3);
         if(!_loc5_)
         {
            §§push(param1);
            if(_loc6_ || param3)
            {
               §§push(§§pop() * §§pop());
               if(!_loc5_)
               {
                  §§push(param4);
                  if(!(_loc5_ && param2))
                  {
                     §§push(§§pop() / §§pop());
                     if(_loc6_)
                     {
                        addr63:
                        §§push(§§pop() + param2);
                     }
                  }
                  §§goto(addr63);
               }
               return §§pop();
            }
         }
         §§goto(addr63);
      }
      
      public static function easeIn(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(param3);
         if(_loc5_ || param2)
         {
            §§push(param1);
            if(!(_loc6_ && param1))
            {
               §§push(§§pop() * §§pop());
               if(_loc5_)
               {
                  §§push(param4);
                  if(_loc5_ || param3)
                  {
                     §§goto(addr53);
                  }
               }
               §§goto(addr72);
            }
            addr53:
            §§push(§§pop() / §§pop());
            if(!(_loc6_ && param2))
            {
               addr72:
               return §§pop() + param2;
            }
         }
         §§goto(addr72);
      }
      
      public static function easeOut(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(param3);
         if(_loc5_ || param3)
         {
            §§push(param1);
            if(_loc5_ || param2)
            {
               §§push(§§pop() * §§pop());
               if(_loc5_ || §&"@§)
               {
                  §§push(param4);
                  if(!(_loc6_ && param1))
                  {
                     §§push(§§pop() / §§pop());
                     if(_loc6_ && §&"@§)
                     {
                     }
                     §§goto(addr78);
                  }
                  addr77:
                  addr78:
                  return §§pop();
                  §§push(§§pop() + §§pop());
               }
               §§push(param2);
            }
            §§goto(addr77);
         }
         §§goto(addr78);
      }
      
      public static function easeInOut(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(param3);
         if(!_loc6_)
         {
            §§push(param1);
            if(_loc5_ || §&"@§)
            {
               §§push(§§pop() * §§pop());
               if(!_loc6_)
               {
                  addr50:
                  §§push(param4);
                  if(_loc5_)
                  {
                     §§push(§§pop() / §§pop());
                     if(_loc5_)
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
   }
}
